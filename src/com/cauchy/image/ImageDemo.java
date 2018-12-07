package com.cauchy.image;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.junit.Test;

/**
 * 动态生成图片
 * @author Cauchy
 *
 */
public class ImageDemo {
	@Test
	public void generateImage() throws IOException{
		// 创建图片缓冲区，设置其大小
		BufferedImage bi = new BufferedImage(70,35,BufferedImage.TYPE_INT_RGB);
		// 得到绘制环境
		Graphics2D graphics = (Graphics2D) bi.getGraphics();
		// 环境设置为白
		graphics.setColor(Color.WHITE);
		// 填充矩形，填充背景色
		graphics.fillRect(0, 0, 70, 35);
		// 环境设置为红色
		graphics.setColor(Color.red);
		//向图片写入字符串
		graphics.drawString("Hello", 2, 2);
		// 保存图片
		ImageIO.write(bi, "JSEG", new FileOutputStream("C:\\Users\\mailc\\Pictures"));
	}
}
