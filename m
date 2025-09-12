Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 727C0B54F1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F32D660DF8;
	Fri, 12 Sep 2025 13:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhS701STVDpJ; Fri, 12 Sep 2025 13:17:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D4736111E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683041;
	bh=8IQhIO8zJJxXn/TOhM5vjB3g1F/L9il3WI2vS8Ew/pk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z7vhfso2igFuOcKmWBhkJDnItluxsvSWT99PQ62Vmwl5pcQB3r2ENu1kcRsjyfsAQ
	 3y/qQYXKTtQ3V/7XLHydkgBJHc6q/49jC131DxJFeMf8Fnv2Z1K8lpgZhBbd+FN5FB
	 bVKgQJk7qOtHxMG4xdp7sAC0HzPHQEhYmRIJnGOVufATY854042/5SQCGAVBDWrOAz
	 thmlSdEop8GZywiTLtb+g9tbk6JeQVvXeFEl/L8mCyRWEcc1TyAmrv4v5dYF8Z/Gf1
	 DfrIN68wP398EMgZ8v7ajlrzrt0vxIpqKy9dJvX1cRn41ArHkxpTlFzWzpUwTUynWX
	 gZ0z1r9eXW/cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D4736111E;
	Fri, 12 Sep 2025 13:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DB0D25B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEE948230D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYeMb5RW-wa0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B0048230A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B0048230A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B0048230A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
X-CSE-ConnectionGUID: eK7x8USpQkmuA5rQUHrgmQ==
X-CSE-MsgGUID: OPLZCNeERlG4f9ewQms7UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461432"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461432"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:16 -0700
X-CSE-ConnectionGUID: mUtTehwKRDysC7bduifkPA==
X-CSE-MsgGUID: blrpboMxSh+zN6dpGlBBVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131232"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:14 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9ECB02FC6E;
 Fri, 12 Sep 2025 14:17:12 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:24 +0200
Message-Id: <20250912130627.5015-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683036; x=1789219036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oKCUiNYNWYYf2KHg5yOtaekk1S2bAh14IFPmuzYk2xI=;
 b=MZTVoD8TEg+3B7qgHE9VxwKYHcxW1ygdZgcyvbWE4ox97WvvbC3DQZhW
 hUXrBaqwYSTqKmLakzYA7giZfX/DEJlmhYoVq5k3DS82w5831qONzTWd2
 lNDL6LdqqONcA9m6a0evlSUzvd3so8632HtCYIgXwmlZM6iLBfegc4nON
 rr0Kl3hmF9mWfShouxj6NFYbN+jjBe4pGzQSExJKfpb/nGv5myQ4f8V4h
 rNbxgqXSs3Okg9+gmk5i2yIbs5et9Oo7gS2z5iKtUUpqZ038luLfBm2fH
 E7hCtXxRURhCrPO/q4gfP43ekq7gt6p5N+Wud+LHKQfqYthKIoFQ7U2zc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MZTVoD8T
Subject: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move ice_init_pf() out
 of ice_init_dev()
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move ice_init_pf() out of ice_init_dev().
Do the same for deinit counterpart.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  2 ++
 .../net/ethernet/intel/ice/devlink/devlink.c  | 16 ++++++++--
 drivers/net/ethernet/intel/ice/ice_main.c     | 32 +++++++++----------
 3 files changed, 31 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 184aab6221c2..38e34246c803 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1008,6 +1008,8 @@ void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
 int ice_init_dev(struct ice_pf *pf);
 void ice_deinit_dev(struct ice_pf *pf);
+int ice_init_pf(struct ice_pf *pf);
+void ice_deinit_pf(struct ice_pf *pf);
 int ice_change_mtu(struct net_device *netdev, int new_mtu);
 void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue);
 int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp);
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index fb2de521731a..c354a03c950c 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -459,6 +459,7 @@ static void ice_devlink_reinit_down(struct ice_pf *pf)
 	rtnl_lock();
 	ice_vsi_decfg(ice_get_main_vsi(pf));
 	rtnl_unlock();
+	ice_deinit_pf(pf);
 	ice_deinit_dev(pf);
 }
 
@@ -1231,11 +1232,12 @@ static void ice_set_min_max_msix(struct ice_pf *pf)
 static int ice_devlink_reinit_up(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
 	err = ice_init_hw(&pf->hw);
 	if (err) {
-		dev_err(ice_pf_to_dev(pf), "ice_init_hw failed: %d\n", err);
+		dev_err(dev, "ice_init_hw failed: %d\n", err);
 		return err;
 	}
 
@@ -1246,13 +1248,19 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 	if (err)
 		goto unroll_hw_init;
 
+	err = ice_init_pf(pf);
+	if (err) {
+		dev_err(dev, "ice_init_pf failed: %d\n", err);
+		goto unroll_dev_init;
+	}
+
 	vsi->flags = ICE_VSI_FLAG_INIT;
 
 	rtnl_lock();
 	err = ice_vsi_cfg(vsi);
 	rtnl_unlock();
 	if (err)
-		goto err_vsi_cfg;
+		goto unroll_pf_init;
 
 	/* No need to take devl_lock, it's already taken by devlink API */
 	err = ice_load(pf);
@@ -1265,7 +1273,9 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 	rtnl_lock();
 	ice_vsi_decfg(vsi);
 	rtnl_unlock();
-err_vsi_cfg:
+unroll_pf_init:
+	ice_deinit_pf(pf);
+unroll_dev_init:
 	ice_deinit_dev(pf);
 unroll_hw_init:
 	ice_deinit_hw(&pf->hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ae8339f7d2ff..6d9de6e24804 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3973,7 +3973,7 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf)
  * ice_deinit_pf - Unrolls initialziations done by ice_init_pf
  * @pf: board private structure to initialize
  */
-static void ice_deinit_pf(struct ice_pf *pf)
+void ice_deinit_pf(struct ice_pf *pf)
 {
 	/* note that we unroll also on ice_init_pf() failure here */
 
@@ -4064,8 +4064,9 @@ void ice_start_service_task(struct ice_pf *pf)
 /**
  * ice_init_pf - Initialize general software structures (struct ice_pf)
  * @pf: board private structure to initialize
+ * Return: 0 on success, negative errno otherwise.
  */
-static int ice_init_pf(struct ice_pf *pf)
+int ice_init_pf(struct ice_pf *pf)
 {
 	struct udp_tunnel_nic_info *udp_tunnel_nic = &pf->hw.udp_tunnel_nic;
 	struct device *dev = ice_pf_to_dev(pf);
@@ -4803,23 +4804,12 @@ int ice_init_dev(struct ice_pf *pf)
 	}
 
 	ice_start_service_task(pf);
-	err = ice_init_pf(pf);
-	if (err) {
-		dev_err(dev, "ice_init_pf failed: %d\n", err);
-		goto unroll_irq_scheme_init;
-	}
 
 	return 0;
-
-unroll_irq_scheme_init:
-	ice_service_task_stop(pf);
-	ice_clear_interrupt_scheme(pf);
-	return err;
 }
 
 void ice_deinit_dev(struct ice_pf *pf)
 {
-	ice_deinit_pf(pf);
 	ice_deinit_hw(&pf->hw);
 	ice_service_task_stop(pf);
 
@@ -5061,21 +5051,28 @@ static void ice_deinit_devlink(struct ice_pf *pf)
 
 static int ice_init(struct ice_pf *pf)
 {
+	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
 	err = ice_init_dev(pf);
 	if (err)
 		return err;
 
+	err = ice_init_pf(pf);
+	if (err) {
+		dev_err(dev, "ice_init_pf failed: %d\n", err);
+		goto unroll_dev_init;
+	}
+
 	if (pf->hw.mac_type == ICE_MAC_E830) {
 		err = pci_enable_ptm(pf->pdev, NULL);
 		if (err)
-			dev_dbg(ice_pf_to_dev(pf), "PCIe PTM not supported by PCIe bus/controller\n");
+			dev_dbg(dev, "PCIe PTM not supported by PCIe bus/controller\n");
 	}
 
 	err = ice_alloc_vsis(pf);
 	if (err)
-		goto err_alloc_vsis;
+		goto unroll_pf_init;
 
 	err = ice_init_pf_sw(pf);
 	if (err)
@@ -5112,7 +5109,9 @@ static int ice_init(struct ice_pf *pf)
 	ice_deinit_pf_sw(pf);
 err_init_pf_sw:
 	ice_dealloc_vsis(pf);
-err_alloc_vsis:
+unroll_pf_init:
+	ice_deinit_pf(pf);
+unroll_dev_init:
 	ice_deinit_dev(pf);
 	return err;
 }
@@ -5124,6 +5123,7 @@ static void ice_deinit(struct ice_pf *pf)
 
 	ice_deinit_pf_sw(pf);
 	ice_dealloc_vsis(pf);
+	ice_deinit_pf(pf);
 	ice_deinit_dev(pf);
 }
 
-- 
2.39.3

