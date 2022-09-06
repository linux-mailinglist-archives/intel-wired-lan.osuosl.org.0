Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB64B5AE429
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 11:28:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA3B681361;
	Tue,  6 Sep 2022 09:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA3B681361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662456532;
	bh=WAMzUJIwnMsgCRtM62v4VCIhwt9vV+2RYUQkjXFVUdk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oQl9CRvco981h1YNNHnUKWWEY+fpDZKPdy709BHp4QaYbSRjL5tt+aPWZTtnfwzo7
	 txyB26ReXHC/CMP5tdmz3fUdiz5oKl0YpNw6svlsK6Y6kHAIezagiavYnqw4Z9pz6D
	 s6NSvySXOWF0gtEwiyxydlEdovyfAjXQmDERHYEM/OPfvysoz/GxLC8DB1eUIdHRZm
	 maKlEOPD3+WCIgsEMNT6Vj0tM+36oga0O7+kCLuV1e+rfrGErOawkozbB5CLlxZOHS
	 L06ZcNxvJYBnP07J5MxdDckrh/OwTjbPoAb+QFjq0GsoBxxoIvJ+fxlNJIRDrEAe1q
	 dtF8bxmkR4eCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuK_z6oXRjfq; Tue,  6 Sep 2022 09:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3EFB81343;
	Tue,  6 Sep 2022 09:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3EFB81343
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50B6C1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31CE761086
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31CE761086
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TxsM4gj8d-o6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Sep 2022 09:28:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64CF760AAE
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64CF760AAE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:28:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297332917"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="297332917"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 02:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="859199011"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2022 02:28:43 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Sep 2022 11:27:25 +0200
Message-Id: <20220906092725.915437-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662456525; x=1693992525;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lGxNIvHkZ+esXy+291erQjrDjEDf5lZZH/WtHMpU+ZE=;
 b=i67FEAsuatVvseAOCzBJtq20DHWBHtd39Gba55NIpzBLbr12Yp7ZdWRr
 m62EgdBm2uaXZoGxN9F4VXEIQUIk9sIwh+75yEFMCM1wAQs7SGGJm+/16
 x7Oq2rYIKWyIcNmL6pX+6jrZdXNdzkufiqKyJXVl68luwIwImDe96lBkD
 kk5SKngxjT8oPkVx45wVY9BTQdyBQYw1AmW0Yej0y2PWm/8zR3v6OaT+s
 q7tseUPK5cU8krKy7P8QCTvqUH1VlmTydhKJ7R3s4x7oIQYtaY0BFzduj
 7xmlIC9MObIFm3i85FjVTyZXuvBXoziPZVxs5wNrLk/l67cpnGAisD411
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i67FEAsu
Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix ethtool rx-flow-hash
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
Cc: Michal Jaron <michalx.jaron@intel.com>
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

Apply a different mask on the register when setting the
RSS hash for the X722 device.

When displaying the flow types enabled via ethtool:

ethtool -n $pf rx-flow-hash tcp4|tcp6|udp4|udp6

the driver would print wrong values for X722 device.

Fix this issue by testing masks for X722 device in
i40e_get_rss_hash_opts function.

Fixes: eb0dd6e4a3b3 ("i40e: Allow RSS Hash set with less than four parameters")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v4: Add missing fixes tag and updated kdoc  
 v3: Split the patch series and send only this to net and refactor
 to next
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 31 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  4 +++
 2 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e9cd0fa6a0d2..e518aaa2c0ca 100644
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
@@ -3549,12 +3556,15 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 
 /**
  * i40e_get_rss_hash_bits - Read RSS Hash bits from register
+ * @hw: hw structure
  * @nfc: pointer to user request
  * @i_setc: bits currently set
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
@@ -3573,8 +3583,13 @@ static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
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
@@ -3689,7 +3704,7 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
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
