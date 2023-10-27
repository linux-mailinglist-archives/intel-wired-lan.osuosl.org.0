Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 758317DBCC5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:36:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F109A7096E;
	Mon, 30 Oct 2023 15:36:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F109A7096E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680182;
	bh=gaJf+Fev4P8+op6Fns6iyX/WcSaPiucOSNqgefNKk8A=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q/Zi/d1bHHYTkcQ15fzOglca+PTiB94zw678jcWAdfbhRElbETJAi2iy+pQa5z1Lt
	 /RQYnq4xOVghFTgRnjsOrx91xoiYL6IxA2BuiyockRncv91zu5mVvYAzTlweCS38LU
	 mkHO7xjnq+t7+PExoEJdk6MVCa1DTNVYm6zXpguCsqeZ6nChoob1jiK3lwSwvZM9YO
	 2f8KXMUczpKOSLx3/my9ggyoQmuKK9FyjBdWdI+rJJr8h1n/9KJVlU/W8TkYNW5eJs
	 2ulMyM8Mribu6mAV39iBG/fCdNoKi+E61zw20bk0yswDpV2dSUbd7CqI3aUhTW6K5E
	 4uPk3eDkgDDhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vy0ohJnU6s5L; Mon, 30 Oct 2023 15:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29C1E7097E;
	Mon, 30 Oct 2023 15:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29C1E7097E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1921E1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 22:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FF9E709E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 22:05:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FF9E709E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqMOTPltlgpv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 22:05:38 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F02B709D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 22:05:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F02B709D0
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-59b5a586da6so24233237b3.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 15:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698444337; x=1699049137;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LDqGU1lZbnWOljJhjK5QPctoYCimsNeknFpCayVMkH0=;
 b=Vwxicqz1MvxT6ZZhJQeGiydJ4C8/48z6Dh6wmxOEYGRvF7P6LqL7a64mVgQjNyOJcb
 AWKxsCtO7kGv8jPuRYyWC9hIt3/onMp1OUlpbW9nivKFrvPznaEO/Zznf633UV0j2oMU
 g3nDKoGlzRPEzabKJtK8TL1vGMxo6+W4emozKlVd9XnpEocKt6DtLQIyU4z5TNWWZUwC
 efF8kVqiAyj3q/zKR4VxVxHCogLzcvjkG+BO/rL6vmSvCSqGPSR/heNcpfUFN8PQS0Ts
 zp+HXcuMAE5vWJU40wYx1ghZW5m7fPpoAruPHsgxPFEkuUng4fyvgsMv62uLQpOZgIoN
 aW6Q==
X-Gm-Message-State: AOJu0Yy1blvKwml/ahZ3KCXs1uhw+xXDarcoAAAw7YfXbYDvdsQKLGSz
 mz/w9GVGlxHwzZ+1/laCcBd5Z1BKhzgUc0xQDA==
X-Google-Smtp-Source: AGHT+IFN1c9i2r/wiCSD+X1LWX0h6lZjdnfsn+e69/pEBxll1JXsLesAjuKUQaQpc97rldVXqAyKuuT7TJBMZPGrZw==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:690c:84f:b0:5a8:207a:143a with
 SMTP id bz15-20020a05690c084f00b005a8207a143amr169382ywb.0.1698444337337;
 Fri, 27 Oct 2023 15:05:37 -0700 (PDT)
Date: Fri, 27 Oct 2023 22:05:33 +0000
In-Reply-To: <20231027-ethtool_puts_impl-v3-0-3466ac679304@google.com>
Mime-Version: 1.0
References: <20231027-ethtool_puts_impl-v3-0-3466ac679304@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698444334; l=1790;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=C2aJLhld7+He/NhanUu+TBSh3mm30JdYcWWvhqdYpEE=;
 b=AfZV04Dc5Hq5NuvZos0GZLUC7hu4efQeSkMnA+v2WXw4qwaSx8UWMdEANSs/8b+Z8OxORp/XA
 9gfZVq7L8M7B0xzZJ8a2FS7J1UTFxSmVPXAm+Z47MMNan57YnyOAbE3
X-Mailer: b4 0.12.3
Message-ID: <20231027-ethtool_puts_impl-v3-1-3466ac679304@google.com>
From: Justin Stitt <justinstitt@google.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shay Agroskin <shayagr@amazon.com>, 
 Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon <darinzon@amazon.com>,
 Noam Dagan <ndagan@amazon.com>, 
 Saeed Bishara <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
 Dimitris Michailidis <dmichail@fungible.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, 
 Salil Mehta <salil.mehta@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, 
 Shannon Nelson <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>,
 drivers@pensando.io, 
 "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, 
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, 
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
 Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>, 
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, 
 "=?utf-8?q?Ar=C4=B1n=C3=A7_=C3=9CNAL?=" <arinc.unal@arinc9.com>,
 Daniel Golle <daniel@makrotopia.org>, 
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>, 
 Sean Wang <sean.wang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 "=?utf-8?q?Alvin_=C5=A0ipraga?=" <alsi@bang-olufsen.dk>,
 Wei Fang <wei.fang@nxp.com>, 
 Shenwei Wang <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, 
 UNGLinuxDriver@microchip.com, Jiawen Wu <jiawenwu@trustnetic.com>, 
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698444337; x=1699049137; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=LDqGU1lZbnWOljJhjK5QPctoYCimsNeknFpCayVMkH0=;
 b=GhKkGnEf7rX55e/RuUMh46j8ge6InvYZVPz3QaHdB5YEBHEI3hFwjcIhORmJWQGjCo
 hrvWCirVGfIyfFOjCUoxBzf65yo+EpqZGjieK9Bk1ResPKT4ug/xmwB2cSJdZcUZZ1Ph
 K2gQuxB1eb1QQt7dHc+uQmXTV2vdcVjQ00vN57+qnUSPaF1U8V93qJ5l3u3XqYanEdfw
 LQV+/xj6cn233Fc3uQQ/vEg+PvlVUP+CfhSsWtUwqNjEzgPb9Oi969mub8n4PHx4lb3b
 uU5Hf6OFUqyq5nyy5vuJpAIsrla6ZiMbFJ3fZybjoXK0b2e9t6RZe1G/v6T9zTZ90EbP
 I0HQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=GhKkGnEf
Subject: [Intel-wired-lan] [PATCH net-next v3 1/3] ethtool: Implement
 ethtool_puts()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org,
 Justin Stitt <justinstitt@google.com>, linux-mediatek@lists.infradead.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use strscpy() to implement ethtool_puts().

Functionally the same as ethtool_sprintf() when it's used with two
arguments or with just "%s" format specifier.

Signed-off-by: Justin Stitt <justinstitt@google.com>
---
 include/linux/ethtool.h | 13 +++++++++++++
 net/ethtool/ioctl.c     |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 226a36ed5aa1..e340ed822cc2 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1053,6 +1053,19 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
  */
 extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
 
+/**
+ * ethtool_puts - Write string to ethtool string data
+ * @data: Pointer to start of string to update
+ * @str: String to write
+ *
+ * Write string to data. Update data to point at start of next
+ * string.
+ *
+ * Prefer this function to ethtool_sprintf() when given only
+ * two arguments or if @fmt is just "%s".
+ */
+extern void ethtool_puts(u8 **data, const char *str);
+
 /* Link mode to forced speed capabilities maps */
 struct ethtool_forced_speed_map {
 	u32		speed;
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 0b0ce4f81c01..abdf05edf804 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1991,6 +1991,13 @@ __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...)
 }
 EXPORT_SYMBOL(ethtool_sprintf);
 
+void ethtool_puts(u8 **data, const char *str)
+{
+	strscpy(*data, str, ETH_GSTRING_LEN);
+	*data += ETH_GSTRING_LEN;
+}
+EXPORT_SYMBOL(ethtool_puts);
+
 static int ethtool_phys_id(struct net_device *dev, void __user *useraddr)
 {
 	struct ethtool_value id;

-- 
2.42.0.820.g83a721a137-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
