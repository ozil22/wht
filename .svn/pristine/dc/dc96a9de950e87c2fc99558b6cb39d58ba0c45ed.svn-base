package com.huashidai.weihuotong.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huashidai.weihuotong.utils.RandomUtil;

@Controller
@RequestMapping("/randomCode/")
public class RandomCodeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Color getRandColor(int s, int e) {
		Random random = new Random();
		if (s > 255)
			s = 255;
		if (e > 255)
			e = 255;
		int r = s + random.nextInt(e - s);
		int g = s + random.nextInt(e - s);
		int b = s + random.nextInt(e - s);
		return new Color(r, g, b);
	}

	@RequestMapping("service.do")
	public void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 禁止缓存
		resp.setHeader("Pragma", "No-cache");
		resp.setHeader("Cache-Control", "No-cache");
		resp.setDateHeader("Expires", 0);
		// 指定生成的响应是图片
		resp.setContentType("image/jpeg");
		// 生成随机数
		String randomCode = RandomUtil.randomNum(4);

		// 把随机数放进Session中
		req.getSession().setAttribute("randomcode_in_session", randomCode);

		// 创建图片对象
		int width = 55;
		int height = 28;
		int imageType = BufferedImage.TYPE_INT_RGB;
		BufferedImage image = new BufferedImage(width, height, imageType);

		// 画板
		Graphics g = image.getGraphics();
		g.setColor(Color.GRAY);
		// 绘制一个实心的矩形
		g.fillRect(1, 1, width - 2, height - 2);

		// 把随机数画进图片中
		g.setColor(Color.BLACK);// 设置随机数的颜色
		Font font = new Font("宋体", Font.BOLD + Font.ITALIC, 20);
		g.setFont(font);// 设置随机数的字体和大小
		g.drawString(randomCode, 5, 20);
		// 干扰线
		g.setColor(Color.DARK_GRAY);
		Random r = new Random();
		for (int i = 0; i < 20; i++) {
			g.fillRect(r.nextInt(width), r.nextInt(height), 2, 2);
		}

		// 关闭
		g.dispose();
		// 把图片对象以流的方式保存出去
		ImageIO.write(image, "jpg", resp.getOutputStream());
	}

}
