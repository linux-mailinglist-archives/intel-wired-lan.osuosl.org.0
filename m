Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F447D1659
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 21:38:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B8984CCE;
	Fri, 20 Oct 2023 19:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3B8984CCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697830698;
	bh=oR8idaM65rlndrc0v/s6+NB31iaxpmV/chvoME4BHkw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xC5HHYMvIsbYEN3Are/WiybmTNz3bxp2URYgIYM79D5cVzJBy0xVxsjusY7s/3Oq+
	 VTuDvtih6C598ngJ5GHJlDvGp7YDyjFoAIry6SrTX8Z/m8nEESFq4qx9KZoMTbTiGk
	 BxBvS2kCmAOrtL0/PT7BfHz4860IqVWWkW3Wesa3hrTarKmSORiC5emCUMbSPmy+i+
	 9aezT4uT4o6jh89l2C+nTgCimHB0I3MQ5xu97vZrG61KR69nE04m8aQ5O7tq+t5OHb
	 UmIymPeu7K0QCmVJuD3a0VZ87qXwjAoCfxhnFIXwzYZcl6gntDquZduf9CMcJlstNH
	 VxqV4x/pnpXSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyZUJ8tPLHdg; Fri, 20 Oct 2023 19:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29B1884C07;
	Fri, 20 Oct 2023 19:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29B1884C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 891171BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60E3284CC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60E3284CC5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VS5pJ-TQWCFE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 19:38:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 079FB84C7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 079FB84C7E
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-642-H2ZbNBc6MOSK7I9wx7Juxg-1; Fri, 20 Oct 2023 15:38:01 -0400
X-MC-Unique: H2ZbNBc6MOSK7I9wx7Juxg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9118987A9FF;
 Fri, 20 Oct 2023 19:38:00 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 97155C15BB8;
 Fri, 20 Oct 2023 19:37:58 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Oct 2023 21:37:41 +0200
Message-ID: <20231020193746.2274379-5-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-1-ivecera@redhat.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697830685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VjNmZFk0ICMBGJMXKHOziFHWDraJi74JuX6LfBmzaUQ=;
 b=H0SQehr3tnc2asbTHLaUfcGWwX7oZThdTy5jezLARKdtoxOAl41QyM9IZMgCOUzIT86oiC
 bu8aV4YfLcONkUIcmc0z/x10JetjCisT8zuPYdGrPp+sp62CyB47/7u/HvBslPwo+Op0H9
 VoCX79Hh7HHAZnOw6xcx6gOl/iDgLN4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=H0SQehr3
Subject: [Intel-wired-lan] [PATCH iwl-next 5/6] i40e: Consolidate hardware
 capabilities
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
Cc: Eric Dumazet <edumazet@google.com>, dacampbe@redhat.com,
 Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fields .caps in i40e_hw and .hw_features in i40e_pf both indicate
capabilities provided by hardware. Move and merge i40e_pf.hw_features
into i40e_hw.caps as this is more appropriate place for them and
adjust their names to I40E_HW_CAP_... convention.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        | 27 +------
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 36 ++++-----
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 78 +++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  6 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 18 +++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  8 +-
 7 files changed, 85 insertions(+), 90 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 8088e566123d..c9d77e50c286 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -33,11 +33,11 @@
 #define I40E_MIN_VSI_ALLOC		83 /* LAN, ATR, FCOE, 64 VF */
 /* max 16 qps */
 #define i40e_default_queues_per_vmdq(pf) \
-	(test_bit(I40E_HW_RSS_AQ_CAPABLE, (pf)->hw_features) ? 4 : 1)
+	(test_bit(I40E_HW_CAP_RSS_AQ, (pf)->hw.caps) ? 4 : 1)
 #define I40E_DEFAULT_QUEUES_PER_VF	4
 #define I40E_MAX_VF_QUEUES		16
 #define i40e_pf_get_max_q_per_tc(pf) \
-	(test_bit(I40E_HW_128_QP_RSS_CAPABLE, (pf)->hw_features) ? 128 : 64)
+	(test_bit(I40E_HW_CAP_128_QP_RSS, (pf)->hw.caps) ? 128 : 64)
 #define I40E_FDIR_RING_COUNT		32
 #define I40E_MAX_AQ_BUF_SIZE		4096
 #define I40E_AQ_LEN			256
@@ -138,28 +138,6 @@ enum i40e_vsi_state {
 	__I40E_VSI_STATE_SIZE__,
 };
 
-enum i40e_pf_hw_features {
-	I40E_HW_RSS_AQ_CAPABLE,
-	I40E_HW_128_QP_RSS_CAPABLE,
-	I40E_HW_ATR_EVICT_CAPABLE,
-	I40E_HW_WB_ON_ITR_CAPABLE,
-	I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE,
-	I40E_HW_NO_PCI_LINK_CHECK,
-	I40E_HW_100M_SGMII_CAPABLE,
-	I40E_HW_NO_DCB_SUPPORT,
-	I40E_HW_USE_SET_LLDP_MIB,
-	I40E_HW_GENEVE_OFFLOAD_CAPABLE,
-	I40E_HW_PTP_L4_CAPABLE,
-	I40E_HW_WOL_MC_MAGIC_PKT_WAKE,
-	I40E_HW_HAVE_CRT_RETIMER,
-	I40E_HW_OUTER_UDP_CSUM_CAPABLE,
-	I40E_HW_PHY_CONTROLS_LEDS,
-	I40E_HW_STOP_FW_LLDP,
-	I40E_HW_PORT_ID_VALID,
-	I40E_HW_RESTART_AUTONEG,
-	I40E_PF_HW_FEATURES_NBITS,	/* must be last */
-};
-
 enum i40e_pf_flags {
 	I40E_FLAG_MSI_ENA,
 	I40E_FLAG_MSIX_ENA,
@@ -556,7 +534,6 @@ struct i40e_pf {
 	struct timer_list service_timer;
 	struct work_struct service_task;
 
-	DECLARE_BITMAP(hw_features, I40E_PF_HW_FEATURES_NBITS);
 	DECLARE_BITMAP(flags, I40E_PF_FLAGS_NBITS);
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index b0a869a39ed1..b949f3675441 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -504,7 +504,7 @@ static void i40e_phy_type_to_ethtool(struct i40e_pf *pf,
 		if (hw_link_info->requested_speeds & I40E_LINK_SPEED_1GB)
 			ethtool_link_ksettings_add_link_mode(ks, advertising,
 							     1000baseT_Full);
-		if (test_bit(I40E_HW_100M_SGMII_CAPABLE, pf->hw_features)) {
+		if (test_bit(I40E_HW_CAP_100M_SGMII, pf->hw.caps)) {
 			ethtool_link_ksettings_add_link_mode(ks, supported,
 							     100baseT_Full);
 			ethtool_link_ksettings_add_link_mode(ks, advertising,
@@ -603,7 +603,7 @@ static void i40e_phy_type_to_ethtool(struct i40e_pf *pf,
 							     10000baseKX4_Full);
 	}
 	if (phy_types & I40E_CAP_PHY_TYPE_10GBASE_KR &&
-	    !test_bit(I40E_HW_HAVE_CRT_RETIMER, pf->hw_features)) {
+	    !test_bit(I40E_HW_CAP_CRT_RETIMER, pf->hw.caps)) {
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     10000baseKR_Full);
 		if (hw_link_info->requested_speeds & I40E_LINK_SPEED_10GB)
@@ -611,7 +611,7 @@ static void i40e_phy_type_to_ethtool(struct i40e_pf *pf,
 							     10000baseKR_Full);
 	}
 	if (phy_types & I40E_CAP_PHY_TYPE_1000BASE_KX &&
-	    !test_bit(I40E_HW_HAVE_CRT_RETIMER, pf->hw_features)) {
+	    !test_bit(I40E_HW_CAP_CRT_RETIMER, pf->hw.caps)) {
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     1000baseKX_Full);
 		if (hw_link_info->requested_speeds & I40E_LINK_SPEED_1GB)
@@ -919,7 +919,7 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 		if (hw_link_info->requested_speeds & I40E_LINK_SPEED_1GB)
 			ethtool_link_ksettings_add_link_mode(ks, advertising,
 							     1000baseT_Full);
-		if (test_bit(I40E_HW_100M_SGMII_CAPABLE, pf->hw_features)) {
+		if (test_bit(I40E_HW_CAP_100M_SGMII, pf->hw.caps)) {
 			ethtool_link_ksettings_add_link_mode(ks, supported,
 							     100baseT_Full);
 			if (hw_link_info->requested_speeds &
@@ -2579,7 +2579,7 @@ static int i40e_get_ts_info(struct net_device *dev,
 			   BIT(HWTSTAMP_FILTER_PTP_V2_L2_SYNC) |
 			   BIT(HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ);
 
-	if (test_bit(I40E_HW_PTP_L4_CAPABLE, pf->hw_features))
+	if (test_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps))
 		info->rx_filters |= BIT(HWTSTAMP_FILTER_PTP_V1_L4_SYNC) |
 				    BIT(HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ) |
 				    BIT(HWTSTAMP_FILTER_PTP_V2_EVENT) |
@@ -2828,7 +2828,7 @@ static int i40e_set_phys_id(struct net_device *netdev,
 
 	switch (state) {
 	case ETHTOOL_ID_ACTIVE:
-		if (!test_bit(I40E_HW_PHY_CONTROLS_LEDS, pf->hw_features)) {
+		if (!test_bit(I40E_HW_CAP_PHY_CONTROLS_LEDS, pf->hw.caps)) {
 			pf->led_status = i40e_led_get(hw);
 		} else {
 			if (!test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps))
@@ -2840,19 +2840,19 @@ static int i40e_set_phys_id(struct net_device *netdev,
 		}
 		return blink_freq;
 	case ETHTOOL_ID_ON:
-		if (!test_bit(I40E_HW_PHY_CONTROLS_LEDS, pf->hw_features))
+		if (!test_bit(I40E_HW_CAP_PHY_CONTROLS_LEDS, pf->hw.caps))
 			i40e_led_set(hw, 0xf, false);
 		else
 			ret = i40e_led_set_phy(hw, true, pf->led_status, 0);
 		break;
 	case ETHTOOL_ID_OFF:
-		if (!test_bit(I40E_HW_PHY_CONTROLS_LEDS, pf->hw_features))
+		if (!test_bit(I40E_HW_CAP_PHY_CONTROLS_LEDS, pf->hw.caps))
 			i40e_led_set(hw, 0x0, false);
 		else
 			ret = i40e_led_set_phy(hw, false, pf->led_status, 0);
 		break;
 	case ETHTOOL_ID_INACTIVE:
-		if (!test_bit(I40E_HW_PHY_CONTROLS_LEDS, pf->hw_features)) {
+		if (!test_bit(I40E_HW_CAP_PHY_CONTROLS_LEDS, pf->hw.caps)) {
 			i40e_led_set(hw, pf->led_status, false);
 		} else {
 			ret = i40e_led_set_phy(hw, false, pf->led_status,
@@ -3653,22 +3653,22 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
 	switch (nfc->flow_type) {
 	case TCP_V4_FLOW:
 		set_bit(I40E_FILTER_PCTYPE_NONF_IPV4_TCP, flow_pctypes);
-		if (test_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE,
-			     pf->hw_features))
+		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
+			     pf->hw.caps))
 			set_bit(I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK,
 				flow_pctypes);
 		break;
 	case TCP_V6_FLOW:
 		set_bit(I40E_FILTER_PCTYPE_NONF_IPV6_TCP, flow_pctypes);
-		if (test_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE,
-			     pf->hw_features))
+		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
+			     pf->hw.caps))
 			set_bit(I40E_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK,
 				flow_pctypes);
 		break;
 	case UDP_V4_FLOW:
 		set_bit(I40E_FILTER_PCTYPE_NONF_IPV4_UDP, flow_pctypes);
-		if (test_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE,
-			     pf->hw_features)) {
+		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
+			     pf->hw.caps)) {
 			set_bit(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP,
 				flow_pctypes);
 			set_bit(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP,
@@ -3678,8 +3678,8 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
 		break;
 	case UDP_V6_FLOW:
 		set_bit(I40E_FILTER_PCTYPE_NONF_IPV6_UDP, flow_pctypes);
-		if (test_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE,
-			     pf->hw_features)) {
+		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
+			     pf->hw.caps)) {
 			set_bit(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP,
 				flow_pctypes);
 			set_bit(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP,
@@ -5328,7 +5328,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 
 	/* ATR eviction is not supported on all devices */
 	if (test_bit(I40E_FLAG_HW_ATR_EVICT_ENA, new_flags) &&
-	    !test_bit(I40E_HW_ATR_EVICT_CAPABLE, pf->hw_features))
+	    !test_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps))
 		return -EOPNOTSUPP;
 
 	/* If the driver detected FW LLDP was disabled on init, this flag could
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f5fe50265270..998f9a5f4836 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1890,7 +1890,7 @@ static int i40e_vsi_config_rss(struct i40e_vsi *vsi)
 	u8 *lut;
 	int ret;
 
-	if (!test_bit(I40E_HW_RSS_AQ_CAPABLE, pf->hw_features))
+	if (!test_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps))
 		return 0;
 	if (!vsi->rss_size)
 		vsi->rss_size = min_t(int, pf->alloc_rss_size,
@@ -7092,7 +7092,7 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 			set_bit(__I40E_CLIENT_L2_CHANGE, pf->state);
 		}
 		/* registers are set, lets apply */
-		if (test_bit(I40E_HW_USE_SET_LLDP_MIB, pf->hw_features))
+		if (test_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, pf->hw.caps))
 			ret = i40e_hw_set_dcb_config(pf, new_cfg);
 	}
 
@@ -7113,7 +7113,7 @@ int i40e_dcb_sw_default_config(struct i40e_pf *pf)
 	struct i40e_hw *hw = &pf->hw;
 	int err;
 
-	if (test_bit(I40E_HW_USE_SET_LLDP_MIB, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, pf->hw.caps)) {
 		/* Update the local cached instance with TC0 ETS */
 		memset(&pf->tmp_cfg, 0, sizeof(struct i40e_dcbx_config));
 		pf->tmp_cfg.etscfg.willing = I40E_IEEE_DEFAULT_ETS_WILLING;
@@ -7174,7 +7174,7 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	/* Do not enable DCB for SW1 and SW2 images even if the FW is capable
 	 * Also do not enable DCBx if FW LLDP agent is disabled
 	 */
-	if (test_bit(I40E_HW_NO_DCB_SUPPORT, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_NO_DCB_SUPPORT, pf->hw.caps)) {
 		dev_info(&pf->pdev->dev, "DCB is not supported.\n");
 		err = -EOPNOTSUPP;
 		goto out;
@@ -11084,7 +11084,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 		wr32(hw, I40E_REG_MSS, val);
 	}
 
-	if (test_bit(I40E_HW_RESTART_AUTONEG, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_RESTART_AUTONEG, pf->hw.caps)) {
 		msleep(75);
 		ret = i40e_aq_set_link_restart_an(&pf->hw, true, NULL);
 		if (ret)
@@ -11688,7 +11688,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 		ring->count = vsi->num_tx_desc;
 		ring->size = 0;
 		ring->dcb_tc = 0;
-		if (test_bit(I40E_HW_WB_ON_ITR_CAPABLE, vsi->back->hw_features))
+		if (test_bit(I40E_HW_CAP_WB_ON_ITR, vsi->back->hw.caps))
 			ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
 		ring->itr_setting = pf->tx_itr_default;
 		WRITE_ONCE(vsi->tx_rings[i], ring++);
@@ -11705,7 +11705,7 @@ static int i40e_alloc_rings(struct i40e_vsi *vsi)
 		ring->count = vsi->num_tx_desc;
 		ring->size = 0;
 		ring->dcb_tc = 0;
-		if (test_bit(I40E_HW_WB_ON_ITR_CAPABLE, vsi->back->hw_features))
+		if (test_bit(I40E_HW_CAP_WB_ON_ITR, vsi->back->hw.caps))
 			ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
 		set_ring_xdp(ring);
 		ring->itr_setting = pf->tx_itr_default;
@@ -12383,7 +12383,7 @@ int i40e_config_rss(struct i40e_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 {
 	struct i40e_pf *pf = vsi->back;
 
-	if (test_bit(I40E_HW_RSS_AQ_CAPABLE, pf->hw_features))
+	if (test_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps))
 		return i40e_config_rss_aq(vsi, seed, lut, lut_size);
 	else
 		return i40e_config_rss_reg(vsi, seed, lut, lut_size);
@@ -12402,7 +12402,7 @@ int i40e_get_rss(struct i40e_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 {
 	struct i40e_pf *pf = vsi->back;
 
-	if (test_bit(I40E_HW_RSS_AQ_CAPABLE, pf->hw_features))
+	if (test_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps))
 		return i40e_get_rss_aq(vsi, seed, lut, lut_size);
 	else
 		return i40e_get_rss_reg(vsi, seed, lut, lut_size);
@@ -12799,60 +12799,60 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	}
 
 	if (pf->hw.mac.type == I40E_MAC_X722) {
-		set_bit(I40E_HW_RSS_AQ_CAPABLE, pf->hw_features);
-		set_bit(I40E_HW_128_QP_RSS_CAPABLE, pf->hw_features);
-		set_bit(I40E_HW_ATR_EVICT_CAPABLE, pf->hw_features);
-		set_bit(I40E_HW_WB_ON_ITR_CAPABLE, pf->hw_features);
-		set_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, pf->hw_features);
-		set_bit(I40E_HW_NO_PCI_LINK_CHECK, pf->hw_features);
-		set_bit(I40E_HW_USE_SET_LLDP_MIB, pf->hw_features);
-		set_bit(I40E_HW_GENEVE_OFFLOAD_CAPABLE, pf->hw_features);
-		set_bit(I40E_HW_PTP_L4_CAPABLE, pf->hw_features);
-		set_bit(I40E_HW_WOL_MC_MAGIC_PKT_WAKE, pf->hw_features);
-		set_bit(I40E_HW_OUTER_UDP_CSUM_CAPABLE, pf->hw_features);
+		set_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps);
+		set_bit(I40E_HW_CAP_128_QP_RSS, pf->hw.caps);
+		set_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps);
+		set_bit(I40E_HW_CAP_WB_ON_ITR, pf->hw.caps);
+		set_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, pf->hw.caps);
+		set_bit(I40E_HW_CAP_NO_PCI_LINK_CHECK, pf->hw.caps);
+		set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, pf->hw.caps);
+		set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, pf->hw.caps);
+		set_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps);
+		set_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps);
+		set_bit(I40E_HW_CAP_OUTER_UDP_CSUM, pf->hw.caps);
 
 #define I40E_FDEVICT_PCTYPE_DEFAULT 0xc03
 		if (rd32(&pf->hw, I40E_GLQF_FDEVICTENA(1)) !=
 		    I40E_FDEVICT_PCTYPE_DEFAULT) {
 			dev_warn(&pf->pdev->dev,
 				 "FD EVICT PCTYPES are not right, disable FD HW EVICT\n");
-			clear_bit(I40E_HW_ATR_EVICT_CAPABLE, pf->hw_features);
+			clear_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps);
 		}
 	} else if ((pf->hw.aq.api_maj_ver > 1) ||
 		   ((pf->hw.aq.api_maj_ver == 1) &&
 		    (pf->hw.aq.api_min_ver > 4))) {
 		/* Supported in FW API version higher than 1.4 */
-		set_bit(I40E_HW_GENEVE_OFFLOAD_CAPABLE, pf->hw_features);
+		set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, pf->hw.caps);
 	}
 
 	/* Enable HW ATR eviction if possible */
-	if (test_bit(I40E_HW_ATR_EVICT_CAPABLE, pf->hw_features))
+	if (test_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps))
 		set_bit(I40E_FLAG_HW_ATR_EVICT_ENA, pf->flags);
 
 	if ((pf->hw.mac.type == I40E_MAC_XL710) &&
 	    (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver < 33)) ||
 	    (pf->hw.aq.fw_maj_ver < 4))) {
-		set_bit(I40E_HW_RESTART_AUTONEG, pf->hw_features);
+		set_bit(I40E_HW_CAP_RESTART_AUTONEG, pf->hw.caps);
 		/* No DCB support  for FW < v4.33 */
-		set_bit(I40E_HW_NO_DCB_SUPPORT, pf->hw_features);
+		set_bit(I40E_HW_CAP_NO_DCB_SUPPORT, pf->hw.caps);
 	}
 
 	/* Disable FW LLDP if FW < v4.3 */
 	if ((pf->hw.mac.type == I40E_MAC_XL710) &&
 	    (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver < 3)) ||
 	    (pf->hw.aq.fw_maj_ver < 4)))
-		set_bit(I40E_HW_STOP_FW_LLDP, pf->hw_features);
+		set_bit(I40E_HW_CAP_STOP_FW_LLDP, pf->hw.caps);
 
 	/* Use the FW Set LLDP MIB API if FW > v4.40 */
 	if ((pf->hw.mac.type == I40E_MAC_XL710) &&
 	    (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver >= 40)) ||
 	    (pf->hw.aq.fw_maj_ver >= 5)))
-		set_bit(I40E_HW_USE_SET_LLDP_MIB, pf->hw_features);
+		set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, pf->hw.caps);
 
 	/* Enable PTP L4 if FW > v6.0 */
 	if (pf->hw.mac.type == I40E_MAC_XL710 &&
 	    pf->hw.aq.fw_maj_ver >= 6)
-		set_bit(I40E_HW_PTP_L4_CAPABLE, pf->hw_features);
+		set_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps);
 
 	if (pf->hw.func_caps.vmdq && num_online_cpus() != 1) {
 		pf->num_vmdq_vsis = I40E_DEFAULT_NUM_VMDQ_VSI;
@@ -13108,7 +13108,7 @@ static int i40e_get_phys_port_id(struct net_device *netdev,
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 
-	if (!test_bit(I40E_HW_PORT_ID_VALID, pf->hw_features))
+	if (!test_bit(I40E_HW_CAP_PORT_ID_VALID, pf->hw.caps))
 		return -EOPNOTSUPP;
 
 	ppid->id_len = min_t(int, sizeof(hw->mac.port_addr), sizeof(ppid->id));
@@ -13783,7 +13783,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 			  NETIF_F_RXCSUM		|
 			  0;
 
-	if (!test_bit(I40E_HW_OUTER_UDP_CSUM_CAPABLE, pf->hw_features))
+	if (!test_bit(I40E_HW_CAP_OUTER_UDP_CSUM, pf->hw.caps))
 		netdev->gso_partial_features |= NETIF_F_GSO_UDP_TUNNEL_CSUM;
 
 	netdev->udp_tunnel_nic_info = &pf->udp_tunnel_nic;
@@ -14607,7 +14607,7 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 		break;
 	}
 
-	if (test_bit(I40E_HW_RSS_AQ_CAPABLE, pf->hw_features) &&
+	if (test_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps) &&
 	    vsi->type == I40E_VSI_VMDQ2) {
 		ret = i40e_vsi_config_rss(vsi);
 	}
@@ -15938,7 +15938,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 * Ignore error return codes because if it was already disabled via
 	 * hardware settings this will fail
 	 */
-	if (test_bit(I40E_HW_STOP_FW_LLDP, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_STOP_FW_LLDP, pf->hw.caps)) {
 		dev_info(&pdev->dev, "Stopping firmware LLDP agent.\n");
 		i40e_aq_stop_lldp(hw, true, false, NULL);
 	}
@@ -15955,7 +15955,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	ether_addr_copy(hw->mac.perm_addr, hw->mac.addr);
 	i40e_get_port_mac_addr(hw, hw->mac.port_addr);
 	if (is_valid_ether_addr(hw->mac.port_addr))
-		set_bit(I40E_HW_PORT_ID_VALID, pf->hw_features);
+		set_bit(I40E_HW_CAP_PORT_ID_VALID, pf->hw.caps);
 
 	i40e_ptp_alloc_pins(pf);
 	pci_set_drvdata(pdev, pf);
@@ -16092,7 +16092,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		wr32(hw, I40E_REG_MSS, val);
 	}
 
-	if (test_bit(I40E_HW_RESTART_AUTONEG, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_RESTART_AUTONEG, pf->hw.caps)) {
 		msleep(75);
 		err = i40e_aq_set_link_restart_an(&pf->hw, true, NULL);
 		if (err)
@@ -16181,7 +16181,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 * and will report PCI Gen 1 x 1 by default so don't bother
 	 * checking them.
 	 */
-	if (!test_bit(I40E_HW_NO_PCI_LINK_CHECK, pf->hw_features)) {
+	if (!test_bit(I40E_HW_CAP_NO_PCI_LINK_CHECK, pf->hw.caps)) {
 		char speed[PCI_SPEED_SIZE] = "Unknown";
 		char width[PCI_WIDTH_SIZE] = "Unknown";
 
@@ -16263,9 +16263,9 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	if ((pf->hw.device_id == I40E_DEV_ID_10G_BASE_T) ||
 	    (pf->hw.device_id == I40E_DEV_ID_10G_BASE_T4))
-		set_bit(I40E_HW_PHY_CONTROLS_LEDS, pf->hw_features);
+		set_bit(I40E_HW_CAP_PHY_CONTROLS_LEDS, pf->hw.caps);
 	if (pf->hw.device_id == I40E_DEV_ID_SFP_I_X722)
-		set_bit(I40E_HW_HAVE_CRT_RETIMER, pf->hw_features);
+		set_bit(I40E_HW_CAP_CRT_RETIMER, pf->hw.caps);
 	/* print a string summarizing features */
 	i40e_print_features(pf);
 
@@ -16627,7 +16627,7 @@ static void i40e_shutdown(struct pci_dev *pdev)
 	 */
 	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
 
-	if (test_bit(I40E_HW_WOL_MC_MAGIC_PKT_WAKE, pf->hw_features) &&
+	if (test_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps) &&
 	    pf->wol_en)
 		i40e_enable_mc_magic_wake(pf);
 
@@ -16681,7 +16681,7 @@ static int __maybe_unused i40e_suspend(struct device *dev)
 	 */
 	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
 
-	if (test_bit(I40E_HW_WOL_MC_MAGIC_PKT_WAKE, pf->hw_features) &&
+	if (test_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps) &&
 	    pf->wol_en)
 		i40e_enable_mc_magic_wake(pf);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 10fb83d2ffe1..1cf993a79438 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -1211,7 +1211,7 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
 	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
-		if (!test_bit(I40E_HW_PTP_L4_CAPABLE, pf->hw_features))
+		if (!test_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps))
 			return -ERANGE;
 		pf->ptp_rx = true;
 		tsyntype = I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK |
@@ -1225,7 +1225,7 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
-		if (!test_bit(I40E_HW_PTP_L4_CAPABLE, pf->hw_features))
+		if (!test_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps))
 			return -ERANGE;
 		fallthrough;
 	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
@@ -1234,7 +1234,7 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 		pf->ptp_rx = true;
 		tsyntype = I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK |
 			   I40E_PRTTSYN_CTL1_TSYNTYPE_V2;
-		if (test_bit(I40E_HW_PTP_L4_CAPABLE, pf->hw_features)) {
+		if (test_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps)) {
 			tsyntype |= I40E_PRTTSYN_CTL1_UDP_ENA_MASK;
 			config->rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
 		} else {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index cbc2eda0ddaa..abf15067eb5d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -92,7 +92,7 @@ enum i40e_dyn_idx {
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
 #define i40e_pf_get_default_rss_hena(pf) \
-	(test_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, (pf)->hw_features) ? \
+	(test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, (pf)->hw.caps) ? \
 	 I40E_DEFAULT_RSS_HENA_EXPANDED : I40E_DEFAULT_RSS_HENA)
 
 /* Supported Rx Buffer Sizes (a multiple of 128) */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index bf10acf543a0..22150368ba64 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -491,6 +491,24 @@ enum i40e_hw_flags {
 	I40E_HW_CAP_FW_LLDP_PERSISTENT,
 	I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED,
 	I40E_HW_CAP_X722_FEC_REQUEST,
+	I40E_HW_CAP_RSS_AQ,
+	I40E_HW_CAP_128_QP_RSS,
+	I40E_HW_CAP_ATR_EVICT,
+	I40E_HW_CAP_WB_ON_ITR,
+	I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
+	I40E_HW_CAP_NO_PCI_LINK_CHECK,
+	I40E_HW_CAP_100M_SGMII,
+	I40E_HW_CAP_NO_DCB_SUPPORT,
+	I40E_HW_CAP_USE_SET_LLDP_MIB,
+	I40E_HW_CAP_GENEVE_OFFLOAD,
+	I40E_HW_CAP_PTP_L4,
+	I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE,
+	I40E_HW_CAP_CRT_RETIMER,
+	I40E_HW_CAP_OUTER_UDP_CSUM,
+	I40E_HW_CAP_PHY_CONTROLS_LEDS,
+	I40E_HW_CAP_STOP_FW_LLDP,
+	I40E_HW_CAP_PORT_ID_VALID,
+	I40E_HW_CAP_RESTART_AUTONEG,
 	I40E_HW_CAPS_NBITS,
 };
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8236baedfadd..af47ba51e28a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2137,14 +2137,14 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
 	} else {
-		if (test_bit(I40E_HW_RSS_AQ_CAPABLE, pf->hw_features) &&
+		if (test_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps) &&
 		    (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_AQ))
 			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_AQ;
 		else
 			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_REG;
 	}
 
-	if (test_bit(I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, pf->hw.caps)) {
 		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
 			vfres->vf_cap_flags |=
 				VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2;
@@ -2153,7 +2153,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP;
 
-	if (test_bit(I40E_HW_OUTER_UDP_CSUM_CAPABLE, pf->hw_features) &&
+	if (test_bit(I40E_HW_CAP_OUTER_UDP_CSUM, pf->hw.caps) &&
 	    (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM))
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM;
 
@@ -2168,7 +2168,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_POLLING;
 	}
 
-	if (test_bit(I40E_HW_WB_ON_ITR_CAPABLE, pf->hw_features)) {
+	if (test_bit(I40E_HW_CAP_WB_ON_ITR, pf->hw.caps)) {
 		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
 			vfres->vf_cap_flags |=
 					VIRTCHNL_VF_OFFLOAD_WB_ON_ITR;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
