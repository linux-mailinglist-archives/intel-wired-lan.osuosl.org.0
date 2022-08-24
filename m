Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC31B59F8AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Aug 2022 13:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B60E60F24;
	Wed, 24 Aug 2022 11:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B60E60F24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661341095;
	bh=nBbciwQq4Tb7qFOVMR1IdzO8ZnTwJRAjOmQLh+AAPIw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=upQtVMX+KlZzbj7svfPuwABLrswTvLeQ5/RpJGu/jveUjTthj8rqHu3Xt6dQu4mhZ
	 NynsRIlM9fkeoEdBNKz/2uWF0gNd9takOWa2XJzXBZ/NwBC/Gsm0ynm6nNNzyxMAB9
	 t1rqr+6bdlt/zZJ6/e/lx5+JS/UlvUgRuKEWumQXRRKKl7ybGpEMmBAYDOquEoRhBD
	 emcAriGKFLmqSKNjxibkxvRV0gfoIJs5y+QPkP+Al6dksnKuV87FxWMyQhsISaRoXH
	 xQJQH+zNy1Y4ZJX2VInmUf0Pxc8lkoTmKBUAyiYGVTe8VsTSSBhL+yFF3XsoTgFABB
	 xIRaaNCSTjCtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-iVEnp5qYTi; Wed, 24 Aug 2022 11:38:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0912660E6B;
	Wed, 24 Aug 2022 11:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0912660E6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8FC91BF407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 11:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFF6481A5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 11:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFF6481A5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htImltz9d6Ul for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Aug 2022 11:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4FCB81A50
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4FCB81A50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 11:38:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="319999484"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="319999484"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 04:38:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="606001380"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga007.jf.intel.com with ESMTP; 24 Aug 2022 04:38:05 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Aug 2022 13:37:09 +0200
Message-Id: <20220824113709.3085878-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661341088; x=1692877088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a6Y89l1XZqojSqs7J+Uwn+7t8+Jz+1v8+psB4hVuRsU=;
 b=AS4inoUQqoi5JhB5gd3+PzSg1wzZZmqm2odPuqM9E2+jp3sp4OLCz/C5
 rA6tMfF+y9rbNrI+0Y6sCLDruSkN799XQDUZ1XqiZSIx/sfX9K+EAsBZb
 G4rjIQJuOBonpGfum7aoy8qxpMxxCeXv5qtZxEFKKvLihM/Mv3iqWFd5M
 XjqBXY/n7RyCseUP3m7mrNy0Mhmy4b43psquFpC4Hm4MHJd76KaErrFUX
 VLvSdhagrs1YhC4xP8OP9zBDWorqdmlqwGHDMrwu2MiLC4FfMTdNG7JK+
 JdU8FfMLyHTIdLI33sZaoWoBHsCMPOfVx8e0yOzs3VFmlQuETAPHt2fku
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AS4inoUQ
Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix ethtool rx-flow-hash
 setting for X722
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

When enabling flow type for RSS hash via ethtool:

ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d

the driver would fail to setup this setting on X722
device since it was using the mask on the register
dedicated for X710 devices.

Implement a bitmap to collect the flow pc types that
shall be applied on the inset and hena registers.
Apply a different mask on the register when setting the
RSS hash for the X722 device.

When displaying the flow types enabled via ethtool:

ethtool -n $pf rx-flow-hash tcp4|tcp6|udp4|udp6

the driver would print wrong values for X722 device.

Fix this issue by testing masks for X722 device in
i40e_get_rss_hash_opts function.

Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3: Split the patch series and send only this to net and refactor
 to next
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 30 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  4 +++
 2 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e9cd0fa6a0d2..57577294f39f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3188,10 +3188,17 @@ static int i40e_get_rss_hash_opts(struct i40e_pf *pf, struct ethtool_rxnfc *cmd)
 
 		if (cmd->flow_type == TCP_V4_FLOW ||
 		    cmd->flow_type == UDP_V4_FLOW) {
-			if (i_set & I40E_L3_SRC_MASK)
-				cmd->data |= RXH_IP_SRC;
-			if (i_set & I40E_L3_DST_MASK)
-				cmd->data |= RXH_IP_DST;
+			if (hw->mac.type == I40E_MAC_X722) {
+				if (i_set & I40E_X722_L3_SRC_MASK)
+					cmd->data |= RXH_IP_SRC;
+				if (i_set & I40E_X722_L3_DST_MASK)
+					cmd->data |= RXH_IP_DST;
+			} else {
+				if (i_set & I40E_L3_SRC_MASK)
+					cmd->data |= RXH_IP_SRC;
+				if (i_set & I40E_L3_DST_MASK)
+					cmd->data |= RXH_IP_DST;
+			}
 		} else if (cmd->flow_type == TCP_V6_FLOW ||
 			  cmd->flow_type == UDP_V6_FLOW) {
 			if (i_set & I40E_L3_V6_SRC_MASK)
@@ -3554,7 +3561,9 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
  *
  * Returns value of bits to be set per user request
  **/
-static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
+static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
+				  struct ethtool_rxnfc *nfc,
+				  u64 i_setc)
 {
 	u64 i_set = i_setc;
 	u64 src_l3 = 0, dst_l3 = 0;
@@ -3573,8 +3582,13 @@ static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
 		dst_l3 = I40E_L3_V6_DST_MASK;
 	} else if (nfc->flow_type == TCP_V4_FLOW ||
 		  nfc->flow_type == UDP_V4_FLOW) {
-		src_l3 = I40E_L3_SRC_MASK;
-		dst_l3 = I40E_L3_DST_MASK;
+		if (hw->mac.type == I40E_MAC_X722) {
+			src_l3 = I40E_X722_L3_SRC_MASK;
+			dst_l3 = I40E_X722_L3_DST_MASK;
+		} else {
+			src_l3 = I40E_L3_SRC_MASK;
+			dst_l3 = I40E_L3_DST_MASK;
+		}
 	} else {
 		/* Any other flow type are not supported here */
 		return i_set;
@@ -3689,7 +3703,7 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
 					       flow_pctype)) |
 			((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1,
 					       flow_pctype)) << 32);
-		i_set = i40e_get_rss_hash_bits(nfc, i_setc);
+		i_set = i40e_get_rss_hash_bits(&pf->hw, nfc, i_setc);
 		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_pctype),
 				  (u32)i_set);
 		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_pctype),
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 7b3f30beb757..388c3d36d96a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1404,6 +1404,10 @@ struct i40e_lldp_variables {
 #define I40E_PFQF_CTL_0_HASHLUTSIZE_512	0x00010000
 
 /* INPUT SET MASK for RSS, flow director, and flexible payload */
+#define I40E_X722_L3_SRC_SHIFT		49
+#define I40E_X722_L3_SRC_MASK		(0x3ULL << I40E_X722_L3_SRC_SHIFT)
+#define I40E_X722_L3_DST_SHIFT		41
+#define I40E_X722_L3_DST_MASK		(0x3ULL << I40E_X722_L3_DST_SHIFT)
 #define I40E_L3_SRC_SHIFT		47
 #define I40E_L3_SRC_MASK		(0x3ULL << I40E_L3_SRC_SHIFT)
 #define I40E_L3_V6_SRC_SHIFT		43
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
