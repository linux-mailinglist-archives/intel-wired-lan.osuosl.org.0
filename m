Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58455B5A132
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3234282751;
	Tue, 16 Sep 2025 19:17:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-W5uNRGENRm; Tue, 16 Sep 2025 19:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F5AD822EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050219;
	bh=hNuYY6E4qVCxInhTpXid+hfD/ZI7raJc+cDAl49uCBU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PTXCfQ2id92jS3H5tvrg/rKxAGtJ6CHH2iUv94YqEhoFKikIFIoH2hmqw+eTVpJVk
	 ITwSw89rbrDB11A4x0iyecMib1R1lPgBjLPy/u9JOxadsoYt1Qfo7IKoFmvZ4Y10zw
	 6Y8CK+7/hcNeBApTk02vxNrs0ckhmuavjUcYr5z+drw807kZU7S3WCubQ/oVNeh2FZ
	 MwnFvPIULwXW6JIm6n+nTSinmpVi37mhvR1YNzSCX+lvjaJ2mpddsivzXP/C6bt6dW
	 Q9eWiopb1HS7rraIRDDuK9VpQ5G28pvRGQLf8N7XPXF+SBhFOAGz+NFD6MDxTzTh6i
	 +BEzaJPD6nolw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F5AD822EB;
	Tue, 16 Sep 2025 19:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F3A8512D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E255F4168B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AWPBwt86tQBH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:16:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD7C0404BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD7C0404BB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD7C0404BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
X-CSE-ConnectionGUID: wrn123nRQIeDgwl9uXiDcQ==
X-CSE-MsgGUID: ij4s/qFAQ4+MyGBCRq29ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60037610"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60037610"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:55 -0700
X-CSE-ConnectionGUID: YyawpJIJQFWiFuOnXXwbiQ==
X-CSE-MsgGUID: ruwDdXVqQtiIgQwl+pbp5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174961773"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:55 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 16 Sep 2025 12:14:58 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-resend-jbrandeb-ice-standard-stats-v4-5-ec198614c738@intel.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jbrandeburg@cloudflare.com
X-Mailer: b4 0.15-dev-cbe0e
X-Developer-Signature: v=1; a=openpgp-sha256; l=11409;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=A10gTwzw8UAmR4U3sxzOasO0Vo16YSPxlv82FPThXgc=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoyT25eozfzG7p97ZlVzQe+koElqIraGXcfuWDAc9LPVP
 Xa78ujljlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACbyIoPhnynP0ukdCdvXfVPg
 PbW185Xi/Ovv3Nf9i54hJ5p9XOGQzGFGhp/C/jM8U2c0G955zy0dvSPh8oR1RU5MRUkuqRtWTpp
 wnBkA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758050216; x=1789586216;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UATtTNQzoabKuQM/6vY2vzTps6UhIUpgfFktUIIOqaQ=;
 b=cajaqXqY85eTtcc0ddJOF7esmUY8adizpS1CBXghZgTfCUMC9ZlCQMKa
 G8ltVIS6ohvKLtfXgDqIBzv285vllHphq1YotC+lcmLxhh6QpWaUwsfOY
 ekAikiNh5huvF/soi19lOwu/JH6qh7q9mf0+ASCx+HgE/UAsIit4xmSdO
 ib4uyiZANlOJMtqHeI9V8IwtFJkj3vf2WHMMEtxgnCbBPJ5Mkc2UFDBan
 fLk3K1t2kvzF3pYWtDb6R/3EAxM5YGSna/MpYYl7ykX5zAhcqhxAdEW4G
 lU8BgzkmxrqYofK0u2cOj41fPpgNpEobyCQbUT5GOCZz1/p/yglkr2IQH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cajaqXqY
Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ice: refactor to use
 helpers
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Use the ice_netdev_to_pf() helper in more places and remove a bunch of
boilerplate code. Not every instance could be replaced due to use of the
netdev_priv() output or the vsi variable within a bunch of functions.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c   | 48 ++++++++------------------
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c |  8 ++---
 drivers/net/ethernet/intel/ice/ice_lag.c       |  3 +-
 drivers/net/ethernet/intel/ice/ice_main.c      | 10 ++----
 drivers/net/ethernet/intel/ice/ice_ptp.c       |  6 ++--
 drivers/net/ethernet/intel/ice/ice_sriov.c     |  3 +-
 6 files changed, 24 insertions(+), 54 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f8bb2d55b28c..0b99a7b863d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -794,8 +794,7 @@ static int ice_get_extended_regs(struct net_device *netdev, void *p)
 static void
 ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_hw *hw = &pf->hw;
 	u32 *regs_buf = (u32 *)p;
 	unsigned int i;
@@ -810,8 +809,7 @@ ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 
 static u32 ice_get_msglevel(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 #ifndef CONFIG_DYNAMIC_DEBUG
 	if (pf->hw.debug_mask)
@@ -824,8 +822,7 @@ static u32 ice_get_msglevel(struct net_device *netdev)
 
 static void ice_set_msglevel(struct net_device *netdev, u32 data)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 #ifndef CONFIG_DYNAMIC_DEBUG
 	if (ICE_DBG_USER & data)
@@ -840,16 +837,14 @@ static void ice_set_msglevel(struct net_device *netdev, u32 data)
 static void ice_get_link_ext_stats(struct net_device *netdev,
 				   struct ethtool_link_ext_stats *stats)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	stats->link_down_events = pf->link_down_events;
 }
 
 static int ice_get_eeprom_len(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	return (int)pf->hw.flash.flash_size;
 }
@@ -858,9 +853,7 @@ static int
 ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	       u8 *bytes)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
 	int ret;
@@ -959,8 +952,7 @@ static u64 ice_link_test(struct net_device *netdev)
  */
 static u64 ice_eeprom_test(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	netdev_info(netdev, "EEPROM test\n");
 	return !!(ice_nvm_validate_checksum(&pf->hw));
@@ -1277,9 +1269,8 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
  */
 static u64 ice_loopback_test(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
-	struct ice_pf *pf = orig_vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_vsi *test_vsi;
 	u8 *tx_frame __free(kfree) = NULL;
 	u8 broadcast[ETH_ALEN], ret = 0;
 	int num_frames, valid_frames;
@@ -1368,8 +1359,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
  */
 static u64 ice_intr_test(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	u16 swic_old = pf->sw_int_count;
 
 	netdev_info(netdev, "interrupt test\n");
@@ -1397,9 +1387,8 @@ static void
 ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 	      u64 *data)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	bool if_running = netif_running(netdev);
-	struct ice_pf *pf = np->vsi->back;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
@@ -1723,9 +1712,7 @@ static int ice_nway_reset(struct net_device *netdev)
  */
 static u32 ice_get_priv_flags(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	u32 i, ret_flags = 0;
 
 	for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++) {
@@ -4413,9 +4400,7 @@ static int
 ice_get_module_info(struct net_device *netdev,
 		    struct ethtool_modinfo *modinfo)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_hw *hw = &pf->hw;
 	u8 sff8472_comp = 0;
 	u8 sff8472_swap = 0;
@@ -4487,12 +4472,10 @@ static int
 ice_get_module_eeprom(struct net_device *netdev,
 		      struct ethtool_eeprom *ee, u8 *data)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 #define SFF_READ_BLOCK_SIZE 8
 	u8 value[SFF_READ_BLOCK_SIZE] = { 0 };
 	u8 addr = ICE_I2C_EEPROM_DEV_ADDR;
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	bool is_sfp = false;
 	unsigned int i, j;
@@ -4768,8 +4751,7 @@ static void ice_get_ts_stats(struct net_device *netdev,
  */
 static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
 {
-	struct ice_netdev_priv *np = netdev_priv(dev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	enum ice_reset_req reset;
 
 	switch (*flags) {
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index fc94e189e52e..c2caee083ca7 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -574,9 +574,7 @@ ice_destroy_tunnel(struct ice_hw *hw, u16 index, enum ice_tunnel_type type,
 int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 			    unsigned int idx, struct udp_tunnel_info *ti)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	enum ice_tunnel_type tnl_type;
 	int status;
 	u16 index;
@@ -598,9 +596,7 @@ int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 			      unsigned int idx, struct udp_tunnel_info *ti)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	enum ice_tunnel_type tnl_type;
 	int status;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index aebf8e08a297..d2576d606e10 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2177,8 +2177,7 @@ static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 {
-	struct ice_netdev_priv *np = netdev_priv(lag->netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(lag->netdev);
 
 	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
 	ice_clear_feature_support(pf, ICE_F_SRIOV_AA_LAG);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 249fd3c050eb..9994a9479082 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8043,9 +8043,7 @@ static int
 ice_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 		   struct net_device *dev, u32 filter_mask, int nlflags)
 {
-	struct ice_netdev_priv *np = netdev_priv(dev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	u16 bmode;
 
 	bmode = pf->first_sw->bridge_mode;
@@ -8115,8 +8113,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		   u16 __always_unused flags,
 		   struct netlink_ext_ack __always_unused *extack)
 {
-	struct ice_netdev_priv *np = netdev_priv(dev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	struct nlattr *attr, *br_spec;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_sw *pf_sw;
@@ -9550,8 +9547,7 @@ ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
  */
 int ice_open(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	if (ice_is_reset_in_progress(pf->state)) {
 		netdev_err(netdev, "can't open net device while reset is in progress");
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d2ca9d7bcfc1..9b9b408c0adb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2244,8 +2244,7 @@ static int ice_ptp_getcrosststamp(struct ptp_clock_info *info,
 int ice_ptp_hwtstamp_get(struct net_device *netdev,
 			 struct kernel_hwtstamp_config *config)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	if (pf->ptp.state != ICE_PTP_READY)
 		return -EIO;
@@ -2316,8 +2315,7 @@ int ice_ptp_hwtstamp_set(struct net_device *netdev,
 			 struct kernel_hwtstamp_config *config,
 			 struct netlink_ext_ack *extack)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	int err;
 
 	if (pf->ptp.state != ICE_PTP_READY)
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 843e82fd3bf9..6b1126ddb561 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1190,8 +1190,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
  */
 int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_vsi *vf_vsi;
 	struct device *dev;
 	struct ice_vf *vf;

-- 
2.51.0.rc1.197.g6d975e95c9d7

