Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B9E5226C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 00:21:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9206B61097;
	Tue, 10 May 2022 22:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oy6se46V3Nbe; Tue, 10 May 2022 22:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FC7E61090;
	Tue, 10 May 2022 22:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABE781BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 01:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FBE340117
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 01:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVhGVVJeo6Wb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 May 2022 01:22:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C34A54002B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 01:22:07 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 cu23-20020a17090afa9700b001d98d8e53b7so999319pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 May 2022 18:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ygtzK7e9W9ELz4R8KpvIk9yvzh0vG09X42Bcx4yGn0Y=;
 b=IvmO07z+xoUCu2tISbr1GxBMSznyWJN0bMaGCaUT/nqvN1iu4m1xWzFSn4pkHDxaz3
 pbsW/x2jH8cfj5AxUDOLv7uma4OmY/Ko9sZtn+QW7W2Az+FPt2t34GtzQLV2K46bnJcl
 XuaEt2pfdYCaU9cHxpdJU1f++PKgdJ6ow0W+PAGvesQIDZVWYq2Jk/DwqWEOk8SNhKc4
 +mvkGtx+0vg50dg4rIuJgegQQ8gGKUHqlgG1qnWB9fFUKOTa7EyU/28x/J59DZYhFqFw
 cP6TEESzzEe1KGtsyZcEvXh+dQPOGPF+f1nDltdA0lnWn/ZTKX/9n+YFOYq8i3qF/dUE
 wshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ygtzK7e9W9ELz4R8KpvIk9yvzh0vG09X42Bcx4yGn0Y=;
 b=EzqiQUvVYLfjHEv0ImF7OoAJr5WKznmnf1kT+7pkeqIFITkWUr9KJqkENDu9Pi4Fc7
 WVkhBVlO8tmXbn4aFpG08oBgzG0CQk8FlEmxXPWtW2/qIbUkiUb6KmKuWwK/dwAeFO//
 h4YCRHr72Mjea8BogCiHJB4w3PT1GfV6IG0KdjJnjTAGxURLy3xQLhMKpdCT6TW+J1uw
 VsiU630vI3MqAWyJHyLpnpm69z151bty3Col2n3xrwbbg/SocO/w6qSs/mS+k2573QO9
 aznICcBpMs5syaA4E5RNioN/JYZL94jmnMrQKAhDvUg8j/Dj85EkBBzAoNhxjlS0obb7
 +Uag==
X-Gm-Message-State: AOAM530x0oK7SvFGgONgtbB6yZkFcpaNc3boWkQ9lNH5BMj6qEzFYfaL
 RAjRwBWKDvoS7a4LUJ1Vmcs=
X-Google-Smtp-Source: ABdhPJxOnmzhERPp5iNGpfqSU581Yt9olMTMKruw9DZnu6/2OAwXaA0OrQCO13C+o8S5f6cTk36P1Q==
X-Received: by 2002:a17:902:ce92:b0:15e:9601:dc02 with SMTP id
 f18-20020a170902ce9200b0015e9601dc02mr17824548plg.79.1652145727195; 
 Mon, 09 May 2022 18:22:07 -0700 (PDT)
Received: from localhost.localdomain ([223.104.68.79])
 by smtp.gmail.com with ESMTPSA id
 y16-20020a17090a6c9000b001cd4989febcsm386485pjj.8.2022.05.09.18.22.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 May 2022 18:22:06 -0700 (PDT)
From: lianglixue <lixue.liang5086@gmail.com>
X-Google-Original-From: lianglixue <lianglixue@greatwall.com.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Tue, 10 May 2022 01:21:59 +0000
Message-Id: <20220510012159.8924-1-lianglixue@greatwall.com.cn>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 10 May 2022 22:21:17 +0000
Subject: [Intel-wired-lan] [PATCH] igb_ethtool: fix efficiency issues in
 igb_set_eeprom
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
Cc: lianglixue <lianglixue@greatwall.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Modify the value of eeprom in igb_set_eeprom. If the mac address
of i210 is changed to illegal, then in igp_probe in the
igb_main file, is_valid_eth_addr (netdev->dev_addr) exits
with an error, causing the igb driver to fail to load,
such as ethtool -E eth0 magic 0x15338086 offset 0 value 0x01.

In this way, the igb driver can no longer be loaded,
and the legal mac address cannot be recovered through ethtool;
add is_valid_eth_addr to igb_set_eeprom to determine
whether it is legal to rewrite, so as to avoid driver
errors due to illegal mac addresses.

Signed-off-by: lianglixue <lianglixue@greatwall.com.cn>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..30554fd684db 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -798,6 +798,13 @@ static int igb_set_eeprom(struct net_device *netdev,
 	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
 		return -EFAULT;
 
+	if (hw->mac.type == e1000_i210 && eeprom->offset == 0) {
+		if (!is_valid_ether_addr(bytes)) {
+			dev_err(&adapter->pdev->dev, "Invalid MAC Address for i210\n");
+			return -EINVAL;
+		}
+	}
+
 	max_len = hw->nvm.word_size * 2;
 
 	first_word = eeprom->offset >> 1;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
