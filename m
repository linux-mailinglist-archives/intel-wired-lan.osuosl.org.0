Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 637AAAD287F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D43861568;
	Mon,  9 Jun 2025 21:11:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a4SdDmWW2seq; Mon,  9 Jun 2025 21:11:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DDD16156A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503477;
	bh=wha6B9oawW0UdTLm+J/cDHOTbrtPPiECGyA2B50N4rY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tuamfKhq6ldgWsyKO6TL/A+tCVe1iC34GFIr4X84HQBEEhdHms9095pEcjvCud6yw
	 0iLuJrzffp7woXwwWTecCnFf5TA/UY3YYOAW6aXSEMqDDkGuTaZ1pZZ8S2DjcvNW2X
	 7hVmMklmRT7m1QEC2dxBpJ362HGDe/gWFsFOHbEdC2J3V/oZB4+p+r/ysUoVJT2/H9
	 dGd4BO3kFK9dvB5ZxuJafrnyQIMOQk9SvzHeapFZnXDq7kZteARJjPdOgtqKDqQeXI
	 PkHzRDtk3q0dsNHqNEN8a3EYBZU8AHichvcEGpCv3CvzOq474YGdUcviBgkJ1CSsdd
	 txDQGHScf5Efw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DDD16156A;
	Mon,  9 Jun 2025 21:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3721D1F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE13241DBC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cssIT1fhsJkl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0164641DBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0164641DBA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0164641DBA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-CSE-ConnectionGUID: SafhUGqeThmCGQGKGbTRxA==
X-CSE-MsgGUID: 2cqgqyVvQgSvCAlvUmndHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703108"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703108"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:09 -0700
X-CSE-ConnectionGUID: 4tgqeiooQvymXAiYoPdRVw==
X-CSE-MsgGUID: gAFmw1K7SPuT2E/eFzWMRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540450"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Mon,  9 Jun 2025 15:11:39 +0200
Message-ID: <20250609131141.758051-8-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609131141.758051-1-david.m.ertman@intel.com>
References: <20250609131141.758051-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503471; x=1781039471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4taB0EzK81CDkRwpBURCckarozB8TORx8eugA2XL0KY=;
 b=XGdWNGCQI36316Y3LyqD/8+Nf/h6peNHrlhaPjl82Fr+ZQVpaLR9D5Oj
 cyNmqJLSD2cikBdpwGQ9GjFwbr6DZvdg0R1+u/5RN5OUDb2kbAatlz2bT
 +FWw82OhUVR9APg3R+SEYvK8FQxRdXlYcMu5VHZ0VPcGRRK7GeXqGb7iB
 CCDEAOAaiHFyrCoPrUIO/TnEftsWOyTCqoSyYS7MblwZZHus20b5oImY8
 Kn5DMt/vt+4r19z9qCJK0ayg/HcviNX07ZLO0gjPuWFfv5zO6MSyqwlof
 PNkNxXrVzp5K7EQh1QItmpwTvC9+VcJHuccwbCee/a0Cjit/lgFUZLSL5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XGdWNGCQ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/8] ice: breakout common LAG
 code into helpers
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

In the VF handling code, parts of the code for lag can be broken out into
helper functions to reduce code duplication.  This is will be especially
helpful once the whole series is applied and A/A is implemented.

Break this code out into helper functions

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c      | 42 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lag.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 19 ++-------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 23 ++--------
 4 files changed, 51 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 40d23ed170ea..686287b56f9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -816,6 +816,48 @@ void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt)
 	ice_lag_destroy_netdev_list(lag, &ndlist);
 }
 
+/**
+ * ice_lag_prepare_vf_reset - helper to adjust vf lag for reset
+ * @lag: lag struct for interface that owns VF
+ *
+ * Context: must be called with the lag_mutex lock held.
+ *
+ * Return: active lport value or ICE_LAG_INVALID_PORT if nothing moved.
+ */
+u8 ice_lag_prepare_vf_reset(struct ice_lag *lag)
+{
+	u8 pri_prt, act_prt = ICE_LAG_INVALID_PORT;
+
+	if (lag && lag->bonded && lag->primary && lag->upper_netdev) {
+		pri_prt = lag->pf->hw.port_info->lport;
+		act_prt = lag->active_port;
+		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT)
+			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
+		else
+			act_prt = ICE_LAG_INVALID_PORT;
+	}
+
+	return act_prt;
+}
+
+/**
+ * ice_lag_complete_vf_reset - helper for lag after reset
+ * @lag: lag struct for primary interface
+ * @act_prt: which port should be active for lag
+ *
+ * Context: must be called while holding the lag_mutex.
+ */
+void ice_lag_complete_vf_reset(struct ice_lag *lag, u8 act_prt)
+{
+	u8 pri_prt;
+
+	if (lag && lag->bonded && lag->primary &&
+	    act_prt != ICE_LAG_INVALID_PORT) {
+		pri_prt = lag->pf->hw.port_info->lport;
+		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	}
+}
+
 /**
  * ice_lag_info_event - handle NETDEV_BONDING_INFO event
  * @lag: LAG info struct
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index bab2c83142a1..69347d9f986b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -70,4 +70,6 @@ void ice_deinit_lag(struct ice_pf *pf);
 void ice_lag_rebuild(struct ice_pf *pf);
 bool ice_lag_is_switchdev_running(struct ice_pf *pf);
 void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt);
+u8 ice_lag_prepare_vf_reset(struct ice_lag *lag);
+void ice_lag_complete_vf_reset(struct ice_lag *lag, u8 act_prt);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 48cd533e93b7..dac7a04d73e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -859,16 +859,13 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
 int ice_reset_vf(struct ice_vf *vf, u32 flags)
 {
 	struct ice_pf *pf = vf->pf;
-	struct ice_lag *lag;
 	struct ice_vsi *vsi;
-	u8 act_prt, pri_prt;
 	struct device *dev;
 	int err = 0;
+	u8 act_prt;
 	bool rsd;
 
 	dev = ice_pf_to_dev(pf);
-	act_prt = ICE_LAG_INVALID_PORT;
-	pri_prt = pf->hw.port_info->lport;
 
 	if (flags & ICE_VF_RESET_NOTIFY)
 		ice_notify_vf_reset(vf);
@@ -884,16 +881,8 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	else
 		lockdep_assert_held(&vf->cfg_lock);
 
-	lag = pf->lag;
 	mutex_lock(&pf->lag_mutex);
-	if (lag && lag->bonded && lag->primary) {
-		act_prt = lag->active_port;
-		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT &&
-		    lag->upper_netdev)
-			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
-		else
-			act_prt = ICE_LAG_INVALID_PORT;
-	}
+	act_prt = ice_lag_prepare_vf_reset(pf->lag);
 
 	if (ice_is_vf_disabled(vf)) {
 		vsi = ice_get_vf_vsi(vf);
@@ -979,9 +968,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	ice_reset_vf_mbx_cnt(vf);
 
 out_unlock:
-	if (lag && lag->bonded && lag->primary &&
-	    act_prt != ICE_LAG_INVALID_PORT)
-		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	ice_lag_complete_vf_reset(pf->lag, act_prt);
 	mutex_unlock(&pf->lag_mutex);
 
 	if (flags & ICE_VF_RESET_LOCK)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 0a08692e976e..5020101d7403 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1997,24 +1997,13 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	    (struct virtchnl_vsi_queue_config_info *)msg;
 	struct virtchnl_queue_pair_info *qpi;
 	struct ice_pf *pf = vf->pf;
-	struct ice_lag *lag;
 	struct ice_vsi *vsi;
-	u8 act_prt, pri_prt;
 	int i = -1, q_idx;
 	bool ena_ts;
+	u8 act_prt;
 
-	lag = pf->lag;
 	mutex_lock(&pf->lag_mutex);
-	act_prt = ICE_LAG_INVALID_PORT;
-	pri_prt = pf->hw.port_info->lport;
-	if (lag && lag->bonded && lag->primary) {
-		act_prt = lag->active_port;
-		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT &&
-		    lag->upper_netdev)
-			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
-		else
-			act_prt = ICE_LAG_INVALID_PORT;
-	}
+	act_prt = ice_lag_prepare_vf_reset(pf->lag);
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
 		goto error_param;
@@ -2142,9 +2131,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		}
 	}
 
-	if (lag && lag->bonded && lag->primary &&
-	    act_prt != ICE_LAG_INVALID_PORT)
-		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	ice_lag_complete_vf_reset(pf->lag, act_prt);
 	mutex_unlock(&pf->lag_mutex);
 
 	/* send the response to the VF */
@@ -2161,9 +2148,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				vf->vf_id, i);
 	}
 
-	if (lag && lag->bonded && lag->primary &&
-	    act_prt != ICE_LAG_INVALID_PORT)
-		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	ice_lag_complete_vf_reset(pf->lag, act_prt);
 	mutex_unlock(&pf->lag_mutex);
 
 	ice_lag_move_new_vf_nodes(vf);
-- 
2.49.0

