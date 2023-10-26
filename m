Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9367DBCB8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F195E70B4F;
	Mon, 30 Oct 2023 15:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F195E70B4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680138;
	bh=/fbo+oapY4a8FR5jo75PKHh2L10/Fq0Qd/y9Q5TXBGY=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GNAWZdgOTqY032NxO1TKvd4tOmKvS1+QS4qeXpFHsp3gveXotFq1eXT6evaiiwK8Q
	 kBapEd1Qo5w4NhFzzh8+zu8HqDK5AEUk1AI2T88AClgQVSyaGlCEsaLVJIjRPANsl/
	 MdhpMFHNQS4iBVp4ALp8E0IJprV6t9nm/N1cpyMA46XcJjRExCzVWNME79l3Hm2t4b
	 YJR/UI5h3Evv3EWBajzxSKdkNQ/pNIzOQWO8a6ZImsW2KK0PvUuG4aolv7sxiqUvSR
	 foVAeS14ln94j4t8Tblhq/ya9Gr9Uz7gRjrzOsmDyiVEiP5o5ySCF3gQSf6lq2G4LZ
	 b/Pwj+2o6qCag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWJy3HzkqBuS; Mon, 30 Oct 2023 15:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC10B7096E;
	Mon, 30 Oct 2023 15:35:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC10B7096E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F1501BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 21:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8EC3823AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 21:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8EC3823AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xA6tzP6C5Jm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 21:56:16 +0000 (UTC)
Received: from mail-oi1-x24a.google.com (mail-oi1-x24a.google.com
 [IPv6:2607:f8b0:4864:20::24a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC135847C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 21:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC135847C4
Received: by mail-oi1-x24a.google.com with SMTP id
 5614622812f47-3b2e44c8664so2092693b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698357375; x=1698962175;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BGnfO5yo1brrl3JG1fuz3XeacVop9nGYIXct/GsCbHA=;
 b=l7aAUoURG4GwGwBT9bduSSYnk2Y0RN2XK51Vy0E31eCdFwqFfw2GpqlPJQlLz/H1Tg
 CJE1y3ilwM/u+o9dPih7182NlGI3yJ+GxYmBRzarXYAdHGo/hurGPCtJU/oxHPQdRe2z
 9CC1jZ/S0fvdGf8aPX15fTgwS0SI/CNYtw4nrLIUdUXBm/ho1V/Vjmb3GMwfzttI3VtX
 3S/SDdxUIYk642mZez9BZ34ZZH/gzDZDoetVGHHZkqQ3pCsZaW/j6R8q7+chSQ/shTuV
 BnatpctH0kCdozEL5hrFSgUg+aBoUnLoVvt31r2EWXxP2GVXJBDLbxGkQSJeY47v4qDh
 5ZVQ==
X-Gm-Message-State: AOJu0YxkW0cx+hfGJ9C4bBsDITj2PssGKBigwFEbrEm0zoLgSsgchKsS
 B9PDaE9Kn54IaK3mkUZyHRMOu28jQ2kvBa8OcA==
X-Google-Smtp-Source: AGHT+IF5gOPekjq4+QDN3pBVLuKGKeKe6H18GFsh2OoUyXeyiM7MMvJg4zKShMICsysc3GRHujvfELlFaE0x7zGmTQ==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6808:f01:b0:3ad:f860:b315 with
 SMTP id m1-20020a0568080f0100b003adf860b315mr220107oiw.2.1698357374848; Thu,
 26 Oct 2023 14:56:14 -0700 (PDT)
Date: Thu, 26 Oct 2023 21:56:07 +0000
In-Reply-To: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
Mime-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698357372; l=2655;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=8djdPmMRDp1kcBXDhs8ygPXLuTfgtvGs7Yo95u6cw0k=;
 b=oxdmPg9KABeZlWyohpoRER6suttzISQsU1pFrM2utjhSx+ViWnRXf8IVNcElP/r+ITJcWQj9E
 seeyc13ojC5BXu0aQZG5KcerhesMEYloY+EmDxWK7pulBdKUNUGMRBN
X-Mailer: b4 0.12.3
Message-ID: <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
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
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:34:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698357375; x=1698962175; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=BGnfO5yo1brrl3JG1fuz3XeacVop9nGYIXct/GsCbHA=;
 b=GfSiz/2EHx2DWO7BQxGkR89RCh2PorH7Ja1PhxfroZj4JUuX3hlfDzrrtA6GccG3m2
 eOu/L9JP8+uY/8m6JiHoA7VbPdSc/jS1jSZFMvGKzNEBN5eW6VlLrSGxd4UFElbwtEJL
 4oDkdyRa3EmWbOyrBZu5QKudzKxPK0onEIMv/VMe4gNHBxwpHL0FdASaslQZjgSDzcZf
 mO1AdguMbVQm7CAwfBdDr61HkXTm6EltxBP5hrIPnuLqL9gp39XUF6TnHFgstp+tjc/g
 0CvO+AmKbTfoIudDm0vCCIeUE1fsOLiAz742JftzFURZlyy/vCMCErrghz7XeM20oJfZ
 utyg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=GfSiz/2E
Subject: [Intel-wired-lan] [PATCH next v2 1/3] ethtool: Implement
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
 include/linux/ethtool.h | 34 +++++++++++++++++++++++-----------
 net/ethtool/ioctl.c     |  7 +++++++
 2 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 226a36ed5aa1..7129dd2e227c 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1053,22 +1053,34 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
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
-	u32		speed;
+	u32 speed;
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
 
-	const u32	*cap_arr;
-	u32		arr_size;
+	const u32 *cap_arr;
+	u32 arr_size;
 };
 
-#define ETHTOOL_FORCED_SPEED_MAP(prefix, value)				\
-{									\
-	.speed		= SPEED_##value,				\
-	.cap_arr	= prefix##_##value,				\
-	.arr_size	= ARRAY_SIZE(prefix##_##value),			\
-}
+#define ETHTOOL_FORCED_SPEED_MAP(prefix, value)                      \
+	{                                                            \
+		.speed = SPEED_##value, .cap_arr = prefix##_##value, \
+		.arr_size = ARRAY_SIZE(prefix##_##value),            \
+	}
 
-void
-ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps, u32 size);
+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
+				    u32 size);
 #endif /* _LINUX_ETHTOOL_H */
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
