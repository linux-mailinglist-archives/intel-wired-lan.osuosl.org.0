Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4F807C22
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 00:16:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E36E42128;
	Wed,  6 Dec 2023 23:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E36E42128
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701904589;
	bh=JWuWUGJc3HlI8G1Rnpg787Y7DS/hSjkO6YtydsR1GBc=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bmmQ1m825FDPpXPcuAvBYe/q18G52PFP01tYnNnAR+CScqgjip4l8ClmAw6U64Tq6
	 tvQz9soxiDhrC7s3kNgO7UD7cFtKx9O1HOab7uHW6C8TIfK6eOlmy6ceyGXJvqOu5o
	 ij5YM2NgxjwO8Nx9pUdaOZQdUUady2EyEVpL4r1RWmQ7SbUw4r+oxLV3Q1VSrQqtar
	 DJAPOAZw/8KZBFJRIlwHpshl/rOycHa7dQ6eWDYIq2g4bcmuuPp/EAssbRPpl/gJ/m
	 6xkCPt94QZBM6eAXQRLa28TPkOesnafz6KaGtqwl/+S87pkkXy4EsILNiux8sGESKZ
	 XlKczpLe7JIRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YIt5ty-xVOYc; Wed,  6 Dec 2023 23:16:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8382B42111;
	Wed,  6 Dec 2023 23:16:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8382B42111
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4061BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47EB360BE3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47EB360BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K684xpj3XC7S for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 23:16:17 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D585760BE1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D585760BE1
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-db5508d1beeso391712276.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Dec 2023 15:16:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701904575; x=1702509375;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/7eYcPC4ZNNyPcPPs0B5tDplF0arxw3r0vINNNou0rY=;
 b=dM8iGIF6HakOeB0ecG7TWjJlqmOI2DnrBS/C2q4XvkdfRt3GKyS7s3iDS9E9vm/7/V
 xAne8EQNrwFPOOFOh+yjcg6gaFX93KFVXGHpGKPeDTI36aKZ+zNZjJGt4fy3/y7fmC4J
 1LL+noyFW9AyhgTbO3ccU5gny9dRpMhPjfKZoAKuQr5+zEg1f3h8la8KlQ3UzLZgAvkW
 0jAfksvKQSWZRMzHSOFMtOk/S4WucZj/4W1YML4Q1csQfLLccdq6wIVYjUbwKwulFKfw
 y5FCk9YRQy/oxKhxSGpKcQ1H5ZXIyJUB190KBtgJX/ZlhUI4WNjQ+cl04aPX819xsNyA
 O6Vw==
X-Gm-Message-State: AOJu0YxUQQauigGIEgiyHHg3r2qwqdb1/SSrpUxRfLVGXszYCtptvkwv
 J+aj/h9GHhffbs5KyXq+sLnofs7P+p6QACfrPQ==
X-Google-Smtp-Source: AGHT+IFRXxBV6JuX5Cl/k2o1+WKkCwkR8j20MJSkmoGCedPAtqFttH8OVh1/6vdfnq8MPN++A2h89peZQhyG8OsJ8A==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:dac7:0:b0:da0:3117:f35 with SMTP
 id n190-20020a25dac7000000b00da031170f35mr28652ybf.3.1701904575576; Wed, 06
 Dec 2023 15:16:15 -0800 (PST)
Date: Wed, 06 Dec 2023 23:16:10 +0000
In-Reply-To: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
Mime-Version: 1.0
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701904573; l=1840;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=UMdetIL2ZsPIkSodqhw2fM21NHJVjCu0lRImFuNhVoM=;
 b=a8rMnXfVVQ5gsxHWG4WRMwOLxZgflqXZtNuKx26vv4DwYvvCtCiYjl3f1frOjV/Ul2kaxq5g/
 b/UOv678JKCDASVokxG5GJifAnU7/kqRxdhcwfRkrD8RUfcsmiZOfyF
X-Mailer: b4 0.12.3
Message-ID: <20231206-ethtool_puts_impl-v5-1-5a2528e17bf8@google.com>
From: justinstitt@google.com
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
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1701904575; x=1702509375; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=/7eYcPC4ZNNyPcPPs0B5tDplF0arxw3r0vINNNou0rY=;
 b=dDONGgxNiTdI06Y0/K8SYCPq5C8qUHNkQKzAWPraPiJscfHM50p8bpWQ/tleD13A3z
 9VSfUfseU+iGa+xBarnHPJsVOc8E16wY2u8KmJqRQXOFlFSXq/UEL99BbjT6h33B1ZtJ
 l0mPH+L8npvPs96MXz4qJp3OnBTspUXGlcda5li6/ZtsqIQJQ4Y2NcOWHff1kO+hKaMl
 DIyaLiyrh6IwSH9eEA3aiNZFkqPP+wHe2QQPeuCpMCn5D11UpUJaok/cCd9LdTtmtU0L
 dsOhmoXM386wpQv8Uk7Z9hS7v5NBA5BGn/NCGp/Zjl3ZAIzWTauQnLEqnI73Dt+TDnRd
 h4hQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=dDONGgxN
Subject: [Intel-wired-lan] [PATCH net-next v5 1/3] ethtool: Implement
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
index 689028257fcc..2480a4e4a331 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1053,6 +1053,19 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
  */
 extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
 
+/**
+ * ethtool_puts - Write string to ethtool string data
+ * @data: Pointer to a pointer to the start of string to update
+ * @str: String to write
+ *
+ * Write string to *data without a trailing newline. Update *data
+ * to point at start of next string.
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
2.43.0.rc2.451.g8631bc7472-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
