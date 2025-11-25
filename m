Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EFAC846D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5EF961164;
	Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id II3ImkNGyM9h; Tue, 25 Nov 2025 10:20:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EFD961018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764066002;
	bh=3ul0k1GgM/c5rCraOnK8Dvxg0D7FDaM0Ol4h54SDXmY=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cw9RQvGsnyGdsD2wHU/leqqvnHRK3n1zre5pNwVJMNOUy8nz8MfuP9GXRB7FfladM
	 weqEBKvjUpa4ZG1baj4Eyl4l2CZBVr3HNvLn/HOwjVXsLmwJZFZKjZzkNvym8pS+C8
	 MbFtqexSQY8lNGLZTO0DXtwoYM3ehlliQ5ORvdMq5jcVLIYcf6cvX1GAdWD2qVGodL
	 4ICJbJ9482ZLTILljTGf5PCg+faTI2q80BvD+Z/Wayw1S7kckxQBIOOSZVRwKeXT5b
	 UQxT7tZ6TT4Xaktb9RmdYxGnfiGTCsmVL1w99orBMFrou9lk/CCA/cftzak24/jOAB
	 s6dwarH2KNNuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EFD961018;
	Tue, 25 Nov 2025 10:20:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 11512E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECAC3810C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TNnCe4XpUS_N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.51;
 helo=mail-oa1-f51.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C927F81090
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C927F81090
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com
 [209.85.160.51])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C927F81090
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:58 +0000 (UTC)
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-3ec3cdcda4eso3494702fac.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:19:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764065998; x=1764670798;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3ul0k1GgM/c5rCraOnK8Dvxg0D7FDaM0Ol4h54SDXmY=;
 b=STA8UKsOamQJt6dV1WVNPdXVikRz8B9iuVSCIpsLUx6NEh4WSQiV1NnsfO4K6pqQTR
 c8zvnqfe3e07DNz71mR9JmKrqi8MrDLT8JDAMJ8KYIBlfcin44eKZCdBOpquiWxBJ8d2
 0PJAeacD4HKc/V7ByrLj6tzeztPHk5aK1YI3t/DzzCyEWHCzhUadvdp5dI8LTbxUMjEw
 NgBSm80yBL54cbIDbUQD0zuzIkyHrShTH+oTAwKPIegC4Oe7dC0KhhvHMWNt7hSqNObU
 09A8IE+rR0b5iA3Dn0se6XCBW37rItiUYeroKnnBOWgApvImFvIQ/wwvP0tC8WPdW1Rs
 BEdg==
X-Gm-Message-State: AOJu0YzuUfKp7O/zYU8xygUnu/DG0xuLe+vUooR7YsfRxkOYz3Y5DoSu
 zR8gdISVoN7Sntjs9n5WyMj7UhowK7Nxy+bEOwkv16EO9fmzQb17Zfu0
X-Gm-Gg: ASbGncszeo9YpZmr6eTiabbMgtLKjGn16mXNTcreKT6Ot4M0VjT+tkR6IWjf1DrXweQ
 3Kusx8AxuZmQC5VFiJBzfj6Le8ENKCc1Sqy8Ga79AsI7Lm4uQYxDhCFkQPC4CvJ9tkDDvuIbsY7
 hOq3z+9JN8jhZWnzpE82PvzMIjx1zDr4XngWX99jyDNm2DR8JQsKzX+fpAhv9xzJjug/cgtM071
 SHyfNDbMBfq+pMSENt2beIWzF30dHQOp3CvGQ5Kik84tg65S6GD/Ls9/q6J1kV6ikYM9OwEMA33
 OKWKXf1y9O5BV3qEd4LjSDcowS+FlYNsPYCwJx5GIBmZAFVp5NvfW9DvGy0zEbOGFAXsQFA20Rb
 kTRjy+fQE/QEDQib8WTegUKI7YZXF3K54RXqpyymqAPR2N1tc3CpBSt4uOgdEjSavHVcMRDzdDP
 3bBt1GXOmPLegYvxlaK6WU5B4=
X-Google-Smtp-Source: AGHT+IFtyiOuX8iw1pCACYNN8QG3Yfj2mFNz7FsdX3NPuCOLpPFhjIhc24EJOKd6na0bNrNHM798PA==
X-Received: by 2002:a05:6870:70a4:b0:3e8:973e:e011 with SMTP id
 586e51a60fabf-3ed1ffd81b2mr1082088fac.47.1764065997707; 
 Tue, 25 Nov 2025 02:19:57 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:6::])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3ec9dc8e103sm7393177fac.19.2025.11.25.02.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:19:57 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:46 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-3-f55cd022d28b@debian.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2161; i=leitao@debian.org;
 h=from:subject:message-id; bh=xnhB3QD/pUGnQrTJXaBFG/oDYpB/BeGm+/VZM80nzu4=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIarQOjd6mqF5tJPKnLM4/NSSLPVvrfC+mv
 DN4vMU/f9GJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bV1TD/oDDTNgkychPS/hc0OyTMeB+NP0a4nHhkbxqBQkDc9MC7hz8QGJNE8ZGTmo8wAZFarpJjK
 XGSGxwl6f7QnLSx9FbyvhDanDz8boT5Hqptb0ONXknk5cFIl4lSJ3T8oGNdya40mc5oD8fPWkzh
 aGrSBZFkl1FyBnJkDflgBYfYwzuoC0kiGZ1rfQqLhVAW1V82npC4c7OS2RCDcJ7gvyb5FDBKKyv
 582a6QflL/QwzFjOBgqfFrGzXrkm4tTn0qL2jfkc7/BQX1I7ryUjbbczdk8M1tOCU7Sp7+cbCvg
 HsK4nIp2SVtC91B34qC0eCFF0Pqcp6TYpRAxAVqS58/nzpmka5xWIyrsfzM5t3Xh/nNzOXlyOP+
 Z0ybXcOGTW6fANvuzAO2SkRYgWRzUr7BQI8bbza63e5tiUXJByTp/U7bjOyEtXUk4jSs82c0e2M
 Nktj/eY7KlYtAERe6988DtUeSk+uK+qE+FocpeDTfuwWt8OR6qdCjUXCN0K+wtEa86E/922Pq0O
 iXVqN5XfxyRdAiKKgr8BT2SL99pN6Li1cCa9r+u/ML25RhrNmCtchsE7uul07C+Dt+VDl44VHy1
 zDJVOc5jEROWD2MglOOYxLjY453J0yIQjB/cZ5BHUQdqpdimYaQZ4aZIK9WhCYJxFhHl2c1zvCr
 eUFn/QhPrDrhX3w==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 3/8] ice: extract GRXRINGS
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

This simplifies the RX ring count retrieval and aligns ice with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a1d9abee97e5..969d4f8f9c02 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3083,6 +3083,20 @@ static int ice_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 	return -EOPNOTSUPP;
 }
 
+/**
+ * ice_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Return: number of RX rings.
+ */
+static u32 ice_get_rx_ring_count(struct net_device *netdev)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+
+	return vsi->rss_size;
+}
+
 /**
  * ice_get_rxnfc - command to get Rx flow classification rules
  * @netdev: network interface device structure
@@ -3103,10 +3117,6 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	hw = &vsi->back->hw;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = vsi->rss_size;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = hw->fdir_active_fltr;
 		/* report total rule count */
@@ -4853,6 +4863,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_sset_count		= ice_get_sset_count,
 	.get_rxnfc		= ice_get_rxnfc,
 	.set_rxnfc		= ice_set_rxnfc,
+	.get_rx_ring_count	= ice_get_rx_ring_count,
 	.get_ringparam		= ice_get_ringparam,
 	.set_ringparam		= ice_set_ringparam,
 	.nway_reset		= ice_nway_reset,

-- 
2.47.3

