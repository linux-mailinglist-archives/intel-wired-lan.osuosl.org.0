Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6DFB54F1E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60A4661129;
	Fri, 12 Sep 2025 13:17:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vW1Nhd7ylMLa; Fri, 12 Sep 2025 13:17:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD4061127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683042;
	bh=pO/TGV3+uG85vT8Cxtkg50Hk0gZs6SOxp+zdA40V5jY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uryLUkFnFPFTaVwNNoK2aCUJS+Qw7XSbYh0WsP1/xbqvFIe7xjtNNHHQHMP4WDTRf
	 K5QST/3agb+yZgJ4lAv1Bo0E3AQVsB2FpdVtop0Fp4XkhCXLGNPU33+CWglctiWNBs
	 xRBQgITu9tJNLKG+tSvo85moRj7VgQPFizL9v9lKkuUBhaQ2B7a/EsSD+CcUidHyqV
	 H0jH4XTNHWaNjJZmcsRGJUmX/zQocGslsfIL8gyY6JpKy9dCB9eNkGjcmtqjWeRyaw
	 Tz8mR1ZGRwilLGGSwUOrAZ2UbM2QSk1Snioo3PuhEhqFkPG6tHhAM7Wv/2J9TtSN4q
	 /2dFbj/2OzhFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFD4061127;
	Fri, 12 Sep 2025 13:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 13A5825B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDA65824D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hk-Wh3j1J1JX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 032558230A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 032558230A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 032558230A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:17 +0000 (UTC)
X-CSE-ConnectionGUID: 7Yf4kjR5TUSs5SW7n4OXXw==
X-CSE-MsgGUID: JMclDbHgTOWstf6lBGo1Nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461442"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461442"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:17 -0700
X-CSE-ConnectionGUID: 7gL5fEF5QfOV5NaS4mBvBQ==
X-CSE-MsgGUID: +C0ZCqivRRSH66jl+svNTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131238"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:15 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id ECFBB2FC70;
 Fri, 12 Sep 2025 14:17:13 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:26 +0200
Message-Id: <20250912130627.5015-9-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683038; x=1789219038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R/eC2fW3pIqyDG+5lHEXdyt0lzGW//Pji/GQewD3KV0=;
 b=DWN5Xj14uEsnut/M4yCSNLpQqmqHU//OhJFWp/6sJHgdFwjhnrRc0Wc1
 k+T7+2PIqC1tFSqoYh13goUgyNxqv2EMC+W8b39l36Z5ygy9HebXuu9RF
 5BNqVcDa1kZkIkgsZcIN1zXYJ+ubwAtE9cI0DRWlwxApjkLCH1N7SmSUc
 G4i6rdwyy7+Q6Kv0qAzenCJiLGgYVb+2BnqU3y6CBFlYzrTzdfdQ4rlNw
 qI+bq8DyG70pv10RBhU+CBSYiDUl8YM3iqNwlRPEPRebrGZDWwY3GpXjF
 UYzzhZp6eyZVcx36me264IXGM172vFJee0qrRDeF9zK02nxEIFf8tbF+l
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DWN5Xj14
Subject: [Intel-wired-lan] [PATCH iwl-next 8/9] ice: move ice_deinit_dev()
 to the end of deinit paths
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

ice_deinit_dev() takes care of turning off adminq processing, which is
much needed during driver teardown (remove, reset, error path). Move it
to the very end where applicable.
For example, ice_deinit_hw() called after adminq deinit slows rmmod on
my two-card setup by about 60 seconds.

ice_init_dev() and ice_deinit_dev() scopes were reduced by previous
commits of the series, with a final touch of extracting ice_init_dev_hw()
out now (there is no deinit counterpart).

Note that removed ice_service_task_stop() call from ice_remove() is placed
in the ice_deinit_dev() (and stopping twice makes no sense).

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/devlink/devlink.c  |  5 +++-
 drivers/net/ethernet/intel/ice/ice_common.c   |  3 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 23 ++++++++++++-------
 4 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 38e34246c803..34b9d67e94de 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1006,6 +1006,7 @@ void ice_start_service_task(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
+void ice_init_dev_hw(struct ice_pf *pf);
 int ice_init_dev(struct ice_pf *pf);
 void ice_deinit_dev(struct ice_pf *pf);
 int ice_init_pf(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index c354a03c950c..938914abbe06 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1233,6 +1233,7 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	struct device *dev = ice_pf_to_dev(pf);
+	bool need_dev_deinit = false;
 	int err;
 
 	err = ice_init_hw(&pf->hw);
@@ -1276,9 +1277,11 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 unroll_pf_init:
 	ice_deinit_pf(pf);
 unroll_dev_init:
-	ice_deinit_dev(pf);
+	need_dev_deinit = true;
 unroll_hw_init:
 	ice_deinit_hw(&pf->hw);
+	if (need_dev_deinit)
+		ice_deinit_dev(pf);
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 808870539667..2272b0bd2add 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1130,6 +1130,9 @@ int ice_init_hw(struct ice_hw *hw)
 	status = ice_init_hw_tbls(hw);
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
+
+	ice_init_dev_hw(hw->back);
+
 	mutex_init(&hw->tnl_lock);
 	ice_init_chk_recipe_reuse_support(hw);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index faee44ad5928..c169134beb04 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4773,9 +4773,8 @@ static void ice_decfg_netdev(struct ice_vsi *vsi)
 	vsi->netdev = NULL;
 }
 
-int ice_init_dev(struct ice_pf *pf)
+void ice_init_dev_hw(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
@@ -4795,6 +4794,12 @@ int ice_init_dev(struct ice_pf *pf)
 		 */
 		ice_set_safe_mode_caps(hw);
 	}
+}
+
+int ice_init_dev(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
 
 	ice_set_pf_caps(pf);
 	err = ice_init_interrupt_scheme(pf);
@@ -5251,6 +5256,7 @@ static int
 ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 {
 	struct device *dev = &pdev->dev;
+	bool need_dev_deinit = false;
 	struct ice_adapter *adapter;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
@@ -5373,11 +5379,13 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
 unroll_dev_init:
-	ice_deinit_dev(pf);
+	need_dev_deinit = true;
 unroll_adapter:
 	ice_adapter_put(pdev);
 unroll_hw_init:
 	ice_deinit_hw(hw);
+	if (need_dev_deinit)
+		ice_deinit_dev(pf);
 	return err;
 }
 
@@ -5472,10 +5480,6 @@ static void ice_remove(struct pci_dev *pdev)
 
 	ice_hwmon_exit(pf);
 
-	ice_service_task_stop(pf);
-	ice_aq_cancel_waiting_tasks(pf);
-	set_bit(ICE_DOWN, pf->state);
-
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 
@@ -5487,13 +5491,16 @@ static void ice_remove(struct pci_dev *pdev)
 	devl_unlock(priv_to_devlink(pf));
 
 	ice_deinit(pf);
-	ice_deinit_dev(pf);
 	ice_vsi_release_all(pf);
 
 	ice_setup_mc_magic_wake(pf);
 	ice_set_wake(pf);
 
 	ice_adapter_put(pdev);
+
+	ice_deinit_dev(pf);
+	ice_aq_cancel_waiting_tasks(pf);
+	set_bit(ICE_DOWN, pf->state);
 }
 
 /**
-- 
2.39.3

