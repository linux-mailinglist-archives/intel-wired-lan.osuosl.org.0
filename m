Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BADFB7DFB6C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 21:21:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA80770782;
	Thu,  2 Nov 2023 20:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA80770782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698956485;
	bh=CLi0S75GTaIhlB4v2MXDB1ogsVOYPX22lP/2GL1nQOk=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RlrnQjmfGVrtAVlJaIBfHnb22y/6BjEfpR2OGt1VFCHAs7IAl7fs7PtjXh+sOXKrO
	 KW96nMIwwJaEamDA5vrfcHVkfmgjljrlrC55P1QiQJNcFgMFqMk7SWBxKK4Jb6wRzv
	 O6mIpftL05Tbmzg9Qda/GiiX4czSFnzxfchod5G5opxdFy+wKePS4bRrFVqtG37wft
	 ZvSoVIT2xIZbXNYqS//NlRb2XOEzLjldAdkHszode5ouq5kOI1d6dQ6G6dvRB5rX0B
	 e+HlV7kkvA1wD7JeSlmdxJnK9HJdPJhmZJ9dIGBIBDMp4/5M0xmnzkVwFkBLEA61se
	 Ck9dL+LuNuEkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KZwmzbG0LdW7; Thu,  2 Nov 2023 20:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F8BA70766;
	Thu,  2 Nov 2023 20:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F8BA70766
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFEFE1BF287
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 18:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96B894F239
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 18:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96B894F239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VEH8p7Q36IuZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 18:55:51 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4116C4F033
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 18:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4116C4F033
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d99ec34829aso1516729276.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Nov 2023 11:55:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698951350; x=1699556150;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K1MFejYfcIlhp5L6UBckhhQYL5s7bmRsL3b92h+ON2U=;
 b=IQC58SCJMQ5pVe2C2aK7agG3jjpd5nRa88/oy5K7ANR4+5X0bOrBPzFhKRe5elsOx5
 t5sOyIq/kCPbY+Gg7dP475Roeo1gXwZTLzIzFVm4CYfN8C850g6YVAFDKd/Pk/AugzTq
 Ljp6qWGS0/pcdiLw7hetguNab3C4nt9Nx8GQxf/ggxB0hJjEhA3niBACJDCuUc1MYIv8
 IAeDBHLB8sT9T2oVGxct7peL6Rdj9cz23l7qJyzm4Brbc7HGm5t3QwsaOhD4g++8bohz
 zxQzD/zcYnKHryM5JkslTKtikYvqHY1zb5sxvLGKEKuQ3kuQ17CXILpU6Zps3dU9lRqD
 jMlQ==
X-Gm-Message-State: AOJu0YyUHuwONwrLXzlv6sVwXVX7dRRgwWesce9WLXP/AYyOnTuWhKJW
 nFjWxrDP7Q1SudQqbeIf+JBw4e2ArTffDmKvJw==
X-Google-Smtp-Source: AGHT+IGur+9ubZUYTGwViJK/0T6WuAETQMOPNATCoodiS/vweDFcw/ci9wvenAIu4f9YZlxzEAf34fot3JrUlSjZ+w==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:e7d5:0:b0:da1:aff2:bfbc with SMTP
 id e204-20020a25e7d5000000b00da1aff2bfbcmr316486ybh.2.1698951350112; Thu, 02
 Nov 2023 11:55:50 -0700 (PDT)
Date: Thu, 02 Nov 2023 18:55:42 +0000
In-Reply-To: <20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com>
Mime-Version: 1.0
References: <20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698951347; l=1809;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=CSBVoPDv8bUcjz46YxS9QitvpQ3NGLvmBs8lKX6nt0Y=;
 b=ahqS7od7MuaYQgDwf1xLYrlZa/EPl4vCGCgO9aqOLDD54X4Mk82mLZTadznG6MV4/eOfOwtgq
 gVYFH7WrWL5BPoocw4PUQQAzqFcybf4biUS6+am4p7pCOnSg+h+I6qg
X-Mailer: b4 0.12.3
Message-ID: <20231102-ethtool_puts_impl-v4-1-14e1e9278496@google.com>
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
X-Mailman-Approved-At: Thu, 02 Nov 2023 20:21:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698951350; x=1699556150; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=K1MFejYfcIlhp5L6UBckhhQYL5s7bmRsL3b92h+ON2U=;
 b=pdOx47f373DFZgQZ4A3LM38Wk95YZfs/AxGic/QazisH185aCg+LUgR2o3UL2AcQ1s
 Vq0vN5Hf2CSuIc/pp7UtzeDMmTsrFJm0loU9dbkuN+MDhy49uWWjW+B0Pl21eSQupwds
 NvNzLzG36/BIXeGejzR9Q4VbCAUWqumuiJhYBGznTTeiYCWCGwKESJhOPLCrXnSWxrck
 5RpP8VaotmoBKMI1tgaNOCPibS5otY/l2VL7RUdODuRms817PSBlwwmhRZUi/Ht0gMZV
 5ErmTxdUFbTGiAs/lM/B2F0Zpdy7ZksfINwhUzVS+ironP70L2YT1ECJa4vWWRvW6bdC
 4Uzg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=pdOx47f3
Subject: [Intel-wired-lan] [PATCH net-next v4 1/3] ethtool: Implement
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
index 226a36ed5aa1..7fc0826d443f 100644
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
+ * Write string to *data. Update *data to point at start of
+ * next string.
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
2.42.0.869.gea05f2083d-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
