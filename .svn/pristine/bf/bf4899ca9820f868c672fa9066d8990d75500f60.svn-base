package com.huashidai.weihuotong.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Hashtable;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;

/**
 * 二维码生成
 * 
 * @author ozil
 *
 */
public class MatrixToImageWriter {
	private static final int BLACK = 0xFF000000;
	private static final int WHITE = 0xFFFFFFFF;

	// private MatrixToImageWriter() {}

	public static BufferedImage toBufferedImage(BitMatrix matrix) {
		int width = matrix.getWidth();
		int height = matrix.getHeight();
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		for (int x = 0; x < width; x++) {
			for (int y = 0; y < height; y++) {
				image.setRGB(x, y, matrix.get(x, y) ? BLACK : WHITE);
			}
		}
		return image;
	}

	public static void writeToFile(BitMatrix matrix, String format, File file)
			throws IOException {
		BufferedImage image = toBufferedImage(matrix);
		if (!ImageIO.write(image, format, file)) {
			throw new IOException("Could not write an image of format "
					+ format + " to " + file);
		}
	}

	public static void writeToStream(BitMatrix matrix, String format,
			OutputStream stream) throws IOException {
		BufferedImage image = toBufferedImage(matrix);
		if (!ImageIO.write(image, format, stream)) {
			throw new IOException("Could not write an image of format "
					+ format);
		}
	}

	/**
	 * 生成二维码方法
	 * 
	 * @param content
	 *            内容
	 * @param path
	 *            保存路径
	 * @param width
	 *            宽度
	 * @param height
	 *            高度
	 * @param format
	 *            格式
	 * @param name
	 *            图片名字
	 */
	public static void create(String content, String path, int width,
			int height, String format, String name) {
		Hashtable<EncodeHintType, String> hints = new Hashtable<EncodeHintType, String>();
		// 当前工程绝对路径
		String realPath = UserContext.getRealPath();
		// 保存的路径
				String uploadPath = realPath + "/" + path + "/";
		// 内容所使用编码
		hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
		BitMatrix bitMatrix = null;
		try {
			bitMatrix = new MultiFormatWriter().encode(content,
					BarcodeFormat.QR_CODE, width, height, hints);
		} catch (WriterException e) {
			e.printStackTrace();
		}
		// 生成二维码
		File outputFile = new File(uploadPath + File.separator + name + "." + format);
		try {
			MatrixToImageWriter.writeToFile(bitMatrix, format, outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
