Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6108AC820FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D213610CF;
	Mon, 24 Nov 2025 18:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UT9DOgVicHZc; Mon, 24 Nov 2025 18:19:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5267610E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008360;
	bh=gjNV26TJAFnOjL0zQpnAU5UQK41rA5W+DqVt0zsSBLA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pi/t6/+FdFKBzl+msB8bD+DIfTKQ9kKZbpjgjd7KHHwbNyWFUz7X/hY2Q3esVgZ2D
	 Ff/pwh3Qu1YwGlqKanBcjdqjuiIsT12GquZS8mU5nBF8qIH0qHuH7qjkKdGn9ATRBT
	 7UggNUu2mU87b1JxIx0ku44wmYcv9WPYsS9zEZU8hbYsLNWmOQI1M9dlwZiKg1Nr6O
	 7SHu/ZUnUmHMav9Ey4gcsbhZ0gRIQZ9s5C28zAr3C9yOM0e4PaPFYEymrhjCukQEmO
	 lrwc4uapiYmKxN7dP/ZbOQASMLrDHio3ES3HcUELUlS6gO8c/ZIYJK1cqNFIUd1ij/
	 /VaTDpQmL4MUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5267610E6;
	Mon, 24 Nov 2025 18:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4519E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B69EE40401
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vjm4Bg5G0BB8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.42;
 helo=mail-oa1-f42.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E1391403D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1391403D5
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E1391403D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:17 +0000 (UTC)
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-3d1bc63d5f0so2756479fac.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008357; x=1764613157;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gjNV26TJAFnOjL0zQpnAU5UQK41rA5W+DqVt0zsSBLA=;
 b=p7ZxnEQABeP0avtFwMGiXxWiDX8PU97+NF0BgMBuZSMf3jCsRehhk1/1J+XAi2+kF0
 MdigOIb+5Px9OjAJbOfKURfWtUPq8h/m2fulFirlMXc5ydUGwyS6yrr61fp2FByAMIPR
 hDIr5NmCK6NZL91B2Dj4KKmGTIJCAz8yLGXkhh/2qeXPwzwq7LT+kgqtqzF+JAZXjUvW
 LbDTN14inQWDkf/45OuBTxyolmTwxfsbU2mi1Fi6tRA6cD6E35bkRfvHmjzMmHCMv/L0
 veM9R5iwikXWc/r7Tofvd9uplOeCARksKMT+UdhbBE4q1Z4uMIerLHGekTuXBAGVLUEp
 rogA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2hOoVGeaKz3ttJ0xQ62HYjgzzzQo8filFr/TGOVn0kpiS0cnM8NHaQWYLcTF62Lu69eoNX7DfQmyTseE6XYo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzK+3V0W0d5B4EqoOBWXvbYAGgzZghRbgj8gdUwfYA9MIkbMo9Y
 5dPSQzqCeuAx805dKmE/MAdc/zfGny7i0wW/8jBv3UgDJxYJU72+FQma
X-Gm-Gg: ASbGncvm64CehZAg/vJ1VhJmk6GVVyBqTzL7FtgcClavlFMIGArk8/nvptAZ6RNDRCk
 FdDjnPO3Z3oUyKjd5TFBIbN5aLLiModUGntrhQdPAw1gk+rhgZpz+X//TphOoPGh10LRnzwaAhz
 RVNX2VR/op/8ZtM/92oRzIx6+Jdu2eoAsMfsDhbCKKPZXEXgkwNyPE9bTyx1u7/Yy7cDMabYAUX
 6YdJqkZqSa5KhRgw5MS3kxtHwb9vWOZ7S4ptuf1dfAa4sQg6P6PLT7ZLVyFbhCX9k9B4YHtQE2Y
 zOh8xgzWYkHgI/QyLjndDHJpMny5SlsUeKKwWWZ3zX+Bc4GAOPSorlFnQWiAXOGI0w/clvh8e4Y
 rA2sGyDiXR3FRYtH7NH5XQUQ/X6elMpOAtU7giOmbOQ0ejXgKJg+OuR4V6XdTfxTqgeDMVYd0ZU
 BypEN2V0fJgecQ
X-Google-Smtp-Source: AGHT+IGeDs1bSrKcyEMR1LAWNGoD6UADmOpn9FxqxKFcwWK9IsLkIF4vrHt1pJ6fEsXB9A/emNN7Lw==
X-Received: by 2002:a05:6808:6f93:b0:450:c79d:92de with SMTP id
 5614622812f47-45112b450c6mr5811607b6e.41.1764008356831; 
 Mon, 24 Nov 2025 10:19:16 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:3::])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3ec9c2d0e96sm6447817fac.2.2025.11.24.10.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:16 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:09 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-5-89be18d2a744@debian.org>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1841; i=leitao@debian.org;
 h=from:subject:message-id; bh=OgPWRRZOtLlIvXpnH4N2Q5x7CGVehFLkmP7HegABHlM=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdk1P/ro4oqgHCLx8bpaolNi+8AH6vUG7RL
 FiDoNPbbwyJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bTpJD/9vLs9JgKf5MYB4HIFfvDAbTn13yYgo3usgPaeAT6+qx/GEG9fGYnkTEF2fxf8scfvcb7I
 Yp1aBgYZEqtVEs4Z2LoIVVYKSF/5XWgT/NJihnJur2xjdPykcUQWDVYvdgn063U5qfrHkq6Xgpz
 5lHxvoulLpkeYh1dOETlf5NtQrlL+A7qzW7WDIR1NBgI1T263ZRmzPZJ7RH0HyPeQI/1UGA3V+m
 FvU6opgv+GhdM1xfnpxHjDuxVXZ/Zmiipd60NA31Qa+iACTox+6tyqnhRNbKpZz3ushWvQrYE5o
 yvgZOrtm1cGiYibd+nr525ZQQLA6wK47y4vZqIBQbTIyy9IBrlxbwH+o0T0VILcG+uEpv6fhqhH
 qW7EEgG4om+xwn+gJNnYHW3CeGq6HAUe0VTx0xDKitcaj7ogLijxyAE3fOQhKcL93bT2kXQrNcr
 DXZ+qiqoiqRAffug0g1bhh+8R53cBAhZDz7ccdnsOUXA8Z5DlrjXIgp56JsqZntBi5/aVIoMLO4
 tItSuQSDDc5O4S9mUgqaSzZ7vaZVwJj+mmGEC9fxmjaQchRozK9yr+ZbkeDmjp2t3/cgBnI8A3r
 i8M/ZNpE5/a+hNq4BHxPo2ids5v+5SfCq5NHfVRduoU0Xwxq34XifHEaS5teEPlxZx1J3yQ37xN
 zrAM6wxMoEvZThw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 5/8] igb: extract GRXRINGS from
 .get_rxnfc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns igb with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 10e2445e0ded..b507576b28b2 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2541,6 +2541,13 @@ static int igb_get_rxfh_fields(struct net_device *dev,
 	return 0;
 }
 
+static u32 igb_get_rx_ring_count(struct net_device *dev)
+{
+	struct igb_adapter *adapter = netdev_priv(dev);
+
+	return adapter->num_rx_queues;
+}
+
 static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			 u32 *rule_locs)
 {
@@ -2548,10 +2555,6 @@ static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = adapter->num_rx_queues;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = adapter->nfc_filter_count;
 		ret = 0;
@@ -3473,6 +3476,7 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.get_ts_info		= igb_get_ts_info,
 	.get_rxnfc		= igb_get_rxnfc,
 	.set_rxnfc		= igb_set_rxnfc,
+	.get_rx_ring_count	= igb_get_rx_ring_count,
 	.get_eee		= igb_get_eee,
 	.set_eee		= igb_set_eee,
 	.get_module_info	= igb_get_module_info,

-- 
2.47.3

