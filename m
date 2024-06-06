Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9685D8FF7CC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 00:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9068541A1C;
	Thu,  6 Jun 2024 22:47:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_dp1pvFKhKW; Thu,  6 Jun 2024 22:47:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9C0A41985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717714042;
	bh=05AgwmspICETQrAVQS7hhOQgESGI55RymPG83Z0cMSs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pf4TiY/F+zFWEUTFcepn/xOaqeTPybUI5v/23dvQb+TUhNLj9Ihz7e5LUPqeFx+AP
	 UTgrMti/M2kBGmoEtLoubSDRTzCJ/ED7BUsy75YdV/haOF+DWyKgkLHA5t+no0IHr6
	 xlzhHLzpWC8+xroj4pAOp6SPDuGMwwBcUFbkLaS5JG/tebrNNESvOvXEI3YudEXj21
	 LcVaEW6bbHRMPp2vFnHE0L8kQOFjAZ9y+ETEWzoDoUm09uQl4fdtmOo7as8ifPBGKe
	 GNX9LFQKXL4AIMGb5iGz27rndZQY7qvQXJYIoVFKO8G/la88NcHVBre5ESWUQHjVpE
	 bjHMcF2shsHlg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9C0A41985;
	Thu,  6 Jun 2024 22:47:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 912E11BF94D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6609184987
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iLrCtiWR8uR5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67191849CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67191849CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67191849CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
X-CSE-ConnectionGUID: PfLqUPqhQhSTP0JtsPGBQA==
X-CSE-MsgGUID: eXvfvuP1QHmTUmHJ8u3QpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14224025"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14224025"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:12 -0700
X-CSE-ConnectionGUID: W0oErCYOTGmUGRXmPz73Fg==
X-CSE-MsgGUID: UHpe3H35QQSOucNSDb8eyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38243847"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:12 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 15:46:59 -0700
Message-ID: <20240606224701.359706-6-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240606224701.359706-1-jesse.brandeburg@intel.com>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717714033; x=1749250033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bJs0A7U00c7oKj2hmhzU3KoY/dE5B1Se23w5Fft/kQk=;
 b=UTA+a9em7DOdSCsOBjMlq8pa2lyWHtyVXBfeMMxYMJJ9Hdx8sZlmqi6B
 ZLfh+GdFMhfdGmkOHp2K9wPPtkJcC/vqmLLqZJNfS0z7IxHLVVbWxEG2V
 0NkLylTq1CZjFuuFebhbULKeBvq1R7r1/1DIw0sfkn2lHnrBJppIEH0vM
 oNOwQyDQ2GohqDDxdT2XSslFxrJfJyDJAqDLF4aDTsZ+8A5q3T/vOq4oU
 uG8NrmtTp5va9E2tC5nQ0q7hZkePhTIr1etUsC01uo3uCgIbR+CNVBZhA
 E+jS+J9u/2ov9egZ41f2wh8WrrfaRHZfwj7Qt866fs3WNZMqvs3ELPego
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UTA+a9em
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: refactor to use
 helpers
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
Cc: linux-doc@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 corbet@lwn.net, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use the ice_netdev_to_pf() helper in more places and remove a bunch of
boilerplate code. Not every instance could be replaced due to use of the
netdev_priv() output or the vsi variable within a bunch of functions.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 42 ++++++-------------
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  8 +---
 drivers/net/ethernet/intel/ice/ice_lag.c      |  5 +--
 drivers/net/ethernet/intel/ice/ice_main.c     |  7 +---
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  3 +-
 5 files changed, 19 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 97a7a0632a1d..2d307e7d9863 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -469,8 +469,7 @@ static int ice_get_regs_len(struct net_device __always_unused *netdev)
 static void
 ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_hw *hw = &pf->hw;
 	u32 *regs_buf = (u32 *)p;
 	unsigned int i;
@@ -483,8 +482,7 @@ ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 
 static u32 ice_get_msglevel(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 #ifndef CONFIG_DYNAMIC_DEBUG
 	if (pf->hw.debug_mask)
@@ -497,8 +495,7 @@ static u32 ice_get_msglevel(struct net_device *netdev)
 
 static void ice_set_msglevel(struct net_device *netdev, u32 data)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 #ifndef CONFIG_DYNAMIC_DEBUG
 	if (ICE_DBG_USER & data)
@@ -512,8 +509,7 @@ static void ice_set_msglevel(struct net_device *netdev, u32 data)
 
 static int ice_get_eeprom_len(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	return (int)pf->hw.flash.flash_size;
 }
@@ -522,9 +518,7 @@ static int
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
@@ -623,8 +617,7 @@ static u64 ice_link_test(struct net_device *netdev)
  */
 static u64 ice_eeprom_test(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	netdev_info(netdev, "EEPROM test\n");
 	return !!(ice_nvm_validate_checksum(&pf->hw));
@@ -938,9 +931,8 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
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
@@ -1029,8 +1021,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
  */
 static u64 ice_intr_test(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	u16 swic_old = pf->sw_int_count;
 
 	netdev_info(netdev, "interrupt test\n");
@@ -1058,9 +1049,8 @@ static void
 ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 	      u64 *data)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	bool if_running = netif_running(netdev);
-	struct ice_pf *pf = np->vsi->back;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
@@ -1384,9 +1374,7 @@ static int ice_nway_reset(struct net_device *netdev)
  */
 static u32 ice_get_priv_flags(struct net_device *netdev)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	u32 i, ret_flags = 0;
 
 	for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++) {
@@ -4128,9 +4116,7 @@ static int
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
@@ -4202,12 +4188,10 @@ static int
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
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 20d5db88c99f..4c322bed716c 100644
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
index 1ccb572ce285..cdb0e59aeb26 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1640,11 +1640,8 @@ static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 {
-	struct ice_netdev_priv *np;
-	struct ice_pf *pf;
+	struct ice_pf *pf = ice_netdev_to_pf(lag->netdev);
 
-	np = netdev_priv(lag->netdev);
-	pf = np->vsi->back;
 	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4db3a6056f41..9d852b169ead 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7798,8 +7798,7 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
  */
 static int ice_eth_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	switch (cmd) {
 	case SIOCGHWTSTAMP:
@@ -8027,9 +8026,7 @@ static int
 ice_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 		   struct net_device *dev, u32 filter_mask, int nlflags)
 {
-	struct ice_netdev_priv *np = netdev_priv(dev);
-	struct ice_vsi *vsi = np->vsi;
-	struct ice_pf *pf = vsi->back;
+	struct ice_pf *pf = ice_netdev_to_pf(dev);
 	u16 bmode;
 
 	bmode = pf->first_sw->bridge_mode;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 067712f4923f..adcc2f967bab 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1317,8 +1317,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
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
2.43.0

