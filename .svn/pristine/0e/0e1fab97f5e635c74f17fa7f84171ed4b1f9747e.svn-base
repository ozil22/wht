package com.huashidai.weihuotong.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.domain.UserImage;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.StoreMapper;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.StoreFavoritesQuery;
import com.huashidai.weihuotong.query.StoreQuery;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IGoodsService;
import com.huashidai.weihuotong.service.IMessageService;
import com.huashidai.weihuotong.service.IStoreFavoritesService;
import com.huashidai.weihuotong.service.IStoreService;
import com.huashidai.weihuotong.service.IUserImageService;
import com.huashidai.weihuotong.service.IUserService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.FileUtil;
import com.huashidai.weihuotong.utils.SMSUtil;
import com.huashidai.weihuotong.utils.StateCode;

@Service
public class StoreServiceImpl implements IStoreService {
	@Autowired
	private StoreMapper storeMapper;
	@Autowired
	private IUserService userService;
	@Autowired
	private IUserImageService userImageService;
	@Autowired
	private IGoodsService goodsService;
	@Autowired
	private IStoreFavoritesService storeFavoritesService;
	@Autowired
	private IMessageService messageService;

	@Cacheable
	@Override
	public List<Store> getAll() {
		return storeMapper.getAll();
	}

	@Cacheable
	@Override
	public PageResult<Store> query(StoreQuery qu) {
		// 统计查询
		Long total = storeMapper.queryTotal(qu);
		// 分页查询
		List<Store> rows = storeMapper.query(qu);
		return new PageResult<Store>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Override
	public Map<String, Object> enterStore(GoodsQuery goodsQuery, Long userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		Long storeId = goodsQuery.getStoreId();
		Store store = storeMapper.get(storeId);
		if (store == null) {
			throw new LogicException("店铺不存在！！", StateCode.STRORE_NOTFOUND);
		}
		User user = userService.getByStore(storeId);
		// 店铺用户图片
		ArrayList<Object> images = new ArrayList<Object>();
		List<UserImage> userImages = userImageService.getByUser(user.getId());
		for (UserImage userImage : userImages) {
			Map<String, Object> image = new HashMap<String, Object>();
			image.put("src", userImage.getSrc());
			image.put("id", userImage.getId());
			images.add(image);
		}
		map.put("storeId", storeId);
		map.put("userImages", images);
		// 背景图
		String background = user.getBackground();
		map.put("background", background);
		// 店铺所有商品
		map.putAll(goodsService.searchGoods(goodsQuery));
		// 是否收藏
		if (userId != null) {
			StoreFavoritesQuery qu = new StoreFavoritesQuery();
			qu.setUserId(userId);
			qu.setStoreId(storeId);
			map.putAll(storeFavoritesService.isFavorites(qu));
		} else {
			map.put("isFavorites", 0);
		}
		return map;
	}

	@CacheEvict
	@Override
	public void updateHeadImage(MultipartFile image, Long storeId)
			throws IOException {
		String src = FileUtil.saveFile(image, "headImage");
		Store store = storeMapper.get(storeId);
		String headImage = store.getHeadImage();
		if (StringUtils.isNotBlank(headImage)) {
			FileUtil.deleteFile(headImage);
		}
		store.setHeadImage(src);
		storeMapper.update(store);
		userService.updateHeadImageByStore(storeId, src);
	}

	@Cacheable
	@Override
	public Map<String, Object> searchStore(StoreQuery qu) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Object> stores = new ArrayList<Object>();
		PageResult<Store> result = query(qu);
		map.put("total", result.getTotalPage());
		for (Store store : result.getRows()) {
			Map<String, Object> s = new HashMap<String, Object>();
			s.put("id", store.getId());
			s.put("name", store.getName());
			s.put("state", store.getState());
			s.put("headImage", store.getHeadImage());
			s.put("secured", store.getSecured());
			s.put("margin", store.getMargin());
			stores.add(s);
		}
		map.put("stores", stores);
		return map;
	}

	@CacheEvict
	@Override
	public void save(Store store, Long userId) {
		storeMapper.save(store);
		// 关联店铺和用户
		userService
				.updateStore(userId, store.getId(), ConstUtil.USERTYPE_STORE);
	}

	@CacheEvict
	@Override
	public void update(MultipartFile image, Store store) throws IOException {
		if (image != null && !image.isEmpty()) {
			String src = FileUtil.saveFile(image, "storeImage");
			FileUtil.deleteFile(store.getHeadImage());
			store.setHeadImage(src);
		}
		storeMapper.update(store);
	}

	@Override
	public Map<String, Object> storeInfo(Long storeId) {
		Store store = storeMapper.get(storeId);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", storeId);
		map.put("headImage", store.getHeadImage());
		map.put("name", store.getName());
		map.put("intro", store.getIntro());
		map.put("secured", store.getSecured());
		map.put("margin", store.getMargin());
		map.put("city", store.getCity().getName());
		User user = userService.getByStore(storeId);
		map.put("wechat", user.getWechat());
		return map;
	}

	@CacheEvict
	@Override
	public void updateStoreName(String name, Long storeId) {
		Store store = get(storeId);
		store.setName(name);
		storeMapper.update(store);
	}

	@CacheEvict
	@Override
	public void updateStoreIntro(String intro, Long storeId) {
		Store store = storeMapper.get(storeId);
		store.setIntro(intro);
		storeMapper.update(store);
	}

	@CacheEvict
	@Override
	public void addSaleNum(Integer num, Long storeId) {
		storeMapper.addSaleNum(num, storeId);
	}

	@CacheEvict
	@Override
	public void updateHot(int hot, Long storeId) {
		storeMapper.updateHot(hot, storeId);
	}

	@CacheEvict
	@Override
	public void updateMargin(Integer price, Long storeId) {
		storeMapper.updateMargin(price, storeId);
	}

	@CacheEvict
	@Override
	public void updateStoreCity(Long cityId, Long storeId) {
		storeMapper.updateStoreCity(cityId, storeId);
	}

	@Cacheable
	@Override
	public Store get(Long storeId) {
		return storeMapper.get(storeId);
	}

	@Cacheable
	@Override
	public Store getByPromotion(Long promotionId) {
		return storeMapper.getByPromotion(promotionId);
	}

	@Cacheable
	@Override
	public Store getByAccount(Long accountId) {
		return storeMapper.getByAccount(accountId);
	}

	@Cacheable
	@Override
	public Store getByUser(Long userId) {
		return storeMapper.getByUser(userId);
	}

	@Cacheable
	@Override
	public Store getByGoods(Long goodsId) {
		return storeMapper.getByGoods(goodsId);
	}

	@CacheEvict
	@Override
	public void success(Long id) {
		Store store = storeMapper.get(id);
		if (store == null) {
			throw new LogicException("店铺不存在！！", StateCode.STRORE_NOTFOUND);
		}
		if (store.getState() != 0) {
			throw new LogicException("该店铺不是待审核状态", StateCode.STRORE_NOTAUTH);
		}
		store.setState(ConstUtil.STORE_NORMAL);
		storeMapper.updateState(store);
		// 生成店铺消息
		messageService.createMessage(id, "审核通过", "店铺【" + store.getName()
				+ "】审核已通过！");
		// 发送短信
		SMSUtil.sendSMS("25794", store.getPhone(), store.getName());
	}

	@CacheEvict
	@Override
	public void failure(Long id, String remark) {
		Store store = storeMapper.get(id);
		if (store == null) {
			throw new LogicException("店铺不存在！！", StateCode.STRORE_NOTFOUND);
		}
		if (store.getState() != 0) {
			throw new LogicException("该店铺不是待审核状态", StateCode.STRORE_NOTAUTH);
		}
		store.setState(ConstUtil.STORE_FAILURE);
		storeMapper.updateState(store);
		// 生成店铺消息
		messageService.createMessage(store.getId(), "审核失败",
				"店铺【" + store.getName() + "】审核未通过！原因：" + remark);
		// 发送短信
		SMSUtil.sendSMS("25793", store.getPhone(), store.getName() + ","
				+ remark);
	}

	@CacheEvict
	@Override
	public void leave(Long id, String remark) {
		Store store = storeMapper.get(id);
		if (store == null) {
			throw new LogicException("店铺不存在！！", StateCode.STRORE_NOTFOUND);
		}
		store.setState(ConstUtil.STORE_LEAVE);
		storeMapper.updateState(store);
		// 生成店铺消息
		messageService.createMessage(store.getId(), "店铺停用",
				"店铺【" + store.getName() + "】已停用！原因：" + remark);
		// 发送短信
		SMSUtil.sendSMS("25846", store.getPhone(), store.getName() + ","
				+ remark);
	}

	@CacheEvict
	@Override
	public void up(Long id) {
		Store store = storeMapper.get(id);
		if (store == null) {
			throw new LogicException("店铺不存在！！", StateCode.STRORE_NOTFOUND);
		}
		store.setState(ConstUtil.STORE_NORMAL);
		storeMapper.updateState(store);
		// 生成店铺消息
		messageService.createMessage(store.getId(), "店铺启用",
				"店铺【" + store.getName() + "】已启用用！");
		// 发送短信
		SMSUtil.sendSMS("25847", store.getPhone(), store.getName());
	}

}
