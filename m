Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5122DC846CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7114A607D4;
	Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WeaaVz9-vH1E; Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E79DA6112F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065999;
	bh=c+Zhhyc2V4qfWtECl+wYUVLsRnhgxQqkr3SEOLVVqz8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dihp7espKJ2zZVytcx65Xp76++LfbidBdad3ENMlzTpA61s2cT7ExFSQcbls7DQBv
	 xzp5GHZTmqvyOeKSWH9Nko3+D0iem4KDlp5wZKYxdGE76v0skIu4mYwmvAcsOKPlNJ
	 AbRRVqVE5VLXB2ttn0+rvdpM1EgVofuVWATf1w95exeWwPgQH32cUGH8dxsRYob/L1
	 phi5mkKQ4OVHGe4WwtFzrMfmlB6jbdHLEA2ZXTZOgOCm3SVfyqYRxEia+yf8+TIiKx
	 37OLIPvX+grXYeO5UEJgZ1V/SgDr2oErmaKosBAhV4b4TwQ6LkW7vyreKBvK8NAM2O
	 RjCRV9/LewAzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E79DA6112F;
	Tue, 25 Nov 2025 10:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 06DD2359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB41E6078E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8flaqEL7vm9X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:19:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.47;
 helo=mail-ot1-f47.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 245136072F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 245136072F
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 245136072F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:55 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id
 46e09a7af769-7c76d855ddbso973994a34.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:19:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764065995; x=1764670795;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=c+Zhhyc2V4qfWtECl+wYUVLsRnhgxQqkr3SEOLVVqz8=;
 b=QMsawuRBCPSNh6lIuWjTD8EvCUIuJ7+Q6zlyh3+LlTomgisExNqgzgAp+ja96wG3qg
 BUqoXeIAJOcAcId8EI5FRg53i+52tXfHJJ2ogQzXd1Q38Q9fOsCEKTMhg/BWwl2jS6Jz
 D69vfOh8SREKxl+Sky016WxW/djVn2wJlMf2MTgc7z+ZXQtl97b+YnJJ1nRNMq9Ikmbk
 PNKUr9gcIcw4jzOEq5G5DzNCgOX8v2DZx9X7NzVDFwJPyIXpZ0NmvsNZ0aZTyCwmShVS
 XjiXaOvaYZjeQhaKVDYiR44CLdsM5JyrqoCViYHBx80ZtyZJu6IqLhHWZ7YS5Mzhu4dS
 nYgA==
X-Gm-Message-State: AOJu0YyWiZ+dtIIWG5SgBj+uMTUetWEMMmAZvF1wXKsuwmXWXBdHKJBN
 C2/uqhp13v25zsyI80vLUIqCQMjiG1Rk0DIJcwjYHt5NQsPGdOQYTzIk
X-Gm-Gg: ASbGncuoo7N4IuVQYsDh4XqtcsObuClTCOBoS11FpdmaSmPHEd1oU7Q/P5xs4XAKvFk
 m7azmlO1UfN/Jymzd9WsVoL02HdJPg/Axn7pSI6c2FoVqHCILSeFpUbSBMoco9k8TZuwQMpasOy
 9bZlbfMyu2e2OBXNsFnqhZlToRkTPqjf/+fcxWibuN878e3EDIrXClGhYQ5InTW1yeD2O9ckk+8
 KxdP8qUoZQzq9fzamxiF1Gr54CpuoRADea9GR/O4AEbOUEw+VOUB70xwe+GU3/HoS2qit+IwQox
 CAJmoKVJYidKKzMiHVBhNkWyK9NP2vl4g35a1GTVmzBM0CTt/QeNre7gBfx5aMo0pZi6bxPtJwM
 Jtf7k8ut5KGJ17QKRbLxBYOFA9Z282gL4pYu3BwG1JKVXjGqK3ZFt1g4RfavFKpnAxMf3nYvuH6
 8YFhncXyU7FU6Ox/Hqv4EPqxD8
X-Google-Smtp-Source: AGHT+IHY2sraLYhAXeIuXGFaHS2dicYqNJk8AZF0BKKSEQfRkb5QPHQDH0CLxRmEirGOyUOizH91eg==
X-Received: by 2002:a05:6830:440c:b0:79f:19f:7f2 with SMTP id
 46e09a7af769-7c798e1b962mr6667023a34.0.1764065994932; 
 Tue, 25 Nov 2025 02:19:54 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:74::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d3e3bc6sm6100636a34.16.2025.11.25.02.19.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:19:54 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:44 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-1-f55cd022d28b@debian.org>
References: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
In-Reply-To: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2154; i=leitao@debian.org;
 h=from:subject:message-id; bh=3RiXWowk55zr2p2eq73rkAXHd/aJ3SITLXEDdD0tOSg=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIAU6lJ+/Blj33Z6a3CA8B1/dBpOFhEJRoL
 qFHON0zu1aJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bSgLEACwtbnfZB0O1PkzazJaBBXouuvxXqVM7xOm2fXUKPsgJT3WrEVMxBermV1OM7rbH4n8CW2
 YAsBC1adOB6X+3buIMPx8AdpoG7lqkair93iAUrkM7RuUUHb1bCRs7I1ZTq0KXCdNO3jiynsu8O
 IX5vkZF73kPvJnPDuhy0ep6cQ4ByZGztrQV5Xtvaq5DQSn3+cfJqig7CF8RS4d/Tr9D0d8tcCEw
 g03QABmoxvNHNnZDoyzKQ5oqVwxccxgKtcrRh5v8FjI6Yg9Ctu1t38NUQC0ulG37KF3mc2ejz8k
 f6SRBHD3Hz5jDYk8qntl7QDuRGs388eX2C8d82p/hWH7Ql3tKSDCS2yqHm/38l+C5RaOlWBTK9J
 wdXlc+fPfFuiEcLFFBgKuXmbN+P1nw6J0A+DOBvCdItlNBdCNkVL1eaxHD8dBnTdaPEDcsCj4FB
 bC7BKbzWkyMrsXvKuRtEh3ICic63p+YwmOlMnAKNOJnFJMcxHaYOdu2Mk4FemV3NesP6bX/gPiN
 drr1m++i7vpo2ndheAvSiI2qkUCg69O96mAYx88d8wNuLh+rZ2+SN7UsjnyXxe3okKKrYibe2/a
 CWagKluxznqFNbVLanMyH+4o8AiWESE7Ejp4bVOUCQMnSrmOUX3OtwlT+YlBxa2QFxx6QiRPdcY
 yykclTksMqRBg/g==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 1/8] i40e: extract GRXRINGS
 from .get_rxnfc
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

This simplifies the RX ring count retrieval and aligns i40e with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 86c72596617a..f2c2646ea298 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3521,6 +3521,20 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 	return 0;
 }
 
+/**
+ * i40e_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Return: number of RX rings.
+ **/
+static u32 i40e_get_rx_ring_count(struct net_device *netdev)
+{
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_vsi *vsi = np->vsi;
+
+	return vsi->rss_size;
+}
+
 /**
  * i40e_get_rxnfc - command to get RX flow classification rules
  * @netdev: network interface device structure
@@ -3538,10 +3552,6 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = vsi->rss_size;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = pf->fdir_pf_active_filters;
 		/* report total rule count */
@@ -5819,6 +5829,7 @@ static const struct ethtool_ops i40e_ethtool_ops = {
 	.set_msglevel		= i40e_set_msglevel,
 	.get_rxnfc		= i40e_get_rxnfc,
 	.set_rxnfc		= i40e_set_rxnfc,
+	.get_rx_ring_count	= i40e_get_rx_ring_count,
 	.self_test		= i40e_diag_test,
 	.get_strings		= i40e_get_strings,
 	.get_eee		= i40e_get_eee,

-- 
2.47.3

