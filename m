Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKGUMDEN+mkRIwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 17:30:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA214D0394
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 17:30:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B68540AAF;
	Tue,  5 May 2026 15:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s2B6eZC_PQA9; Tue,  5 May 2026 15:30:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA00840AAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777995051;
	bh=Qr4fEgi8scw0dZMi+vnT6gPGKKIdTlkNT9Vyt1JUMU4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOKwUzYPftvKs7wezGkJ6dJgOsTSEyPm03UPOagqAwcdYTpGVO2Qkdy4ZNmcNvDV9
	 RC3WmHOSPK+ILioHq+aMvVt38NWI5LP5+Xx2wW7S9nPODUBrkA+kNkGmHovfcg6PlU
	 HY+6XcixJ1UwJKIy7QSMP4CL6n8VEwlTQ2DyrV47hWQBf3rX8wOKEEdWMSrSjJAVxm
	 Tu5Hr4lS0K/hAdkzbFCWqKRyUByL8hL/D5iHm5jBcQK7S26h5eczfEMmavfSYtQzT3
	 lszXxUBto2UfhBM1xu3HZO4DedGIEXAM9pz0NMinaHR0/9VVNhnLmdnq8aQTIlwhz0
	 bOPQ1nH0h/XFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA00840AAC;
	Tue,  5 May 2026 15:30:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 210D7280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 15:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 072CC608AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 15:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p8MjA-4S5MhZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 15:30:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6514F608B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6514F608B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6514F608B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 15:30:48 +0000 (UTC)
X-CSE-ConnectionGUID: DnDdB6SsSw64rvppv0buLw==
X-CSE-MsgGUID: 4TBpEB7URoee7XeX0Lq4dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="104317024"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="104317024"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 08:30:48 -0700
X-CSE-ConnectionGUID: VzruFCdqQQCQFPhrqGvw/g==
X-CSE-MsgGUID: MBjy74zXS5ql0zwKKhQsvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="234971597"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa010.jf.intel.com with ESMTP; 05 May 2026 08:30:44 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Kohei Enju <kohei@enjuk.jp>, Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  5 May 2026 17:29:21 +0200
Message-ID: <20260505152923.1040589-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260505152923.1040589-1-aleksander.lobakin@intel.com>
References: <20260505152923.1040589-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777995049; x=1809531049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WIRR0x15eBpzjBFl8qxQLkRXUiNIwBeFswDQFt896Jg=;
 b=gOcmo0yEXoz3a0UpZMC8o7R/wfKWKKbPpRurMABfznA5TBDVMVVWa/M9
 Ie2w72Wr9k5FV6sc3H6LPp2yrlnDLix0PdilqjftlH1xcmx9zaXgd18ZB
 tUNVdHzrtJa0Cx0HhBd7WDUveI68HsJ43T79SwtEodYqFMi0LHiEUZ5uA
 A17RLuptUKJxU3TfAsBhvZ4+BkBrIdi5x/PkQNekNfHt46TWUUm9/rxko
 IcEHkDHFejwKM3eV4OSTTG8Ul1aONpfprSB0q270ZOguGbK1jaFPhfVxn
 Ex7Z2e17tjqBn9VT7aINXPwNvJRnARJpbdVdTEY6oaoNK270n5zUDExVs
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gOcmo0yE
Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/5] ice: migrate to netdev
 ops lock
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
X-Rspamd-Queue-Id: 0CA214D0394
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Queue management ops unconditionally enable netdev locking. The same
lock is taken by default by several NAPI configuration functions,
such as napi_enable() and netif_napi_set_irq().
Request ops locking in advance and make sure we use the _locked
counterparts of those functions to avoid deadlocks, taking the lock
manually where needed (suspend/resume, queue rebuild and resets).

Co-developed-by: Kohei Enju <kohei@enjuk.jp> # ice_xdp_setup_prog(), safe mode
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_lib.h     |  13 +-
 drivers/net/ethernet/intel/ice/ice_base.c    |  63 ++++-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  15 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  26 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 227 +++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_main.c    |  78 ++++---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c  |   3 +
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   4 +-
 9 files changed, 324 insertions(+), 107 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index d28294247599..99b2c7232829 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -12,8 +12,10 @@ int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
 int
 ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx, bool wait);
 int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx);
+int ice_vsi_alloc_q_vectors_locked(struct ice_vsi *vsi);
 int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);
 void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
+void ice_vsi_free_q_vectors_locked(struct ice_vsi *vsi);
 void ice_vsi_free_q_vectors(struct ice_vsi *vsi);
 int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings,
 			   u16 q_idx);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 49454d98dcfe..476fa54ec4e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -53,19 +53,24 @@ struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params);
 
 void ice_vsi_set_napi_queues(struct ice_vsi *vsi);
-void ice_napi_add(struct ice_vsi *vsi);
-
+void ice_vsi_set_napi_queues_locked(struct ice_vsi *vsi);
 void ice_vsi_clear_napi_queues(struct ice_vsi *vsi);
+void ice_vsi_clear_napi_queues_locked(struct ice_vsi *vsi);
+
+void ice_napi_add(struct ice_vsi *vsi);
 
 int ice_vsi_release(struct ice_vsi *vsi);
 
 void ice_vsi_close(struct ice_vsi *vsi);
 
-int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
+int ice_ena_vsi_locked(struct ice_vsi *vsi);
+int ice_ena_vsi(struct ice_vsi *vsi);
 
 void ice_vsi_decfg(struct ice_vsi *vsi);
-void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
+void ice_dis_vsi_locked(struct ice_vsi *vsi);
+void ice_dis_vsi(struct ice_vsi *vsi);
 
+int ice_vsi_rebuild_locked(struct ice_vsi *vsi, u32 vsi_flags);
 int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
 int ice_vsi_cfg(struct ice_vsi *vsi);
 struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index f162cdfc62a7..1add82d894bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -155,8 +155,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	 * handler here (i.e. resume, reset/rebuild, etc.)
 	 */
 	if (vsi->netdev)
-		netif_napi_add_config(vsi->netdev, &q_vector->napi,
-				      ice_napi_poll, v_idx);
+		netif_napi_add_config_locked(vsi->netdev, &q_vector->napi,
+					     ice_napi_poll, v_idx);
 
 out:
 	/* tie q_vector and VSI together */
@@ -198,7 +198,7 @@ static void ice_free_q_vector(struct ice_vsi *vsi, int v_idx)
 
 	/* only VSI with an associated netdev is set up with NAPI */
 	if (vsi->netdev)
-		netif_napi_del(&q_vector->napi);
+		netif_napi_del_locked(&q_vector->napi);
 
 	/* release MSIX interrupt if q_vector had interrupt allocated */
 	if (q_vector->irq.index < 0)
@@ -886,13 +886,15 @@ int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
 }
 
 /**
- * ice_vsi_alloc_q_vectors - Allocate memory for interrupt vectors
+ * ice_vsi_alloc_q_vectors_locked - Allocate memory for interrupt vectors
  * @vsi: the VSI being configured
  *
- * We allocate one q_vector per queue interrupt. If allocation fails we
- * return -ENOMEM.
+ * Should be called only under the netdev lock.
+ * We allocate one q_vector per queue interrupt.
+ *
+ * Return: 0 on success, -ENOMEM if allocation fails.
  */
-int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
+int ice_vsi_alloc_q_vectors_locked(struct ice_vsi *vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	u16 v_idx;
@@ -919,6 +921,30 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
 	return v_idx ? 0 : err;
 }
 
+/**
+ * ice_vsi_alloc_q_vectors - Allocate memory for interrupt vectors
+ * @vsi: the VSI being configured
+ *
+ * We allocate one q_vector per queue interrupt.
+ *
+ * Return: 0 on success, -ENOMEM if allocation fails.
+ */
+int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
+{
+	struct net_device *dev = vsi->netdev;
+	int ret;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ret = ice_vsi_alloc_q_vectors_locked(vsi);
+
+	if (dev)
+		netdev_unlock(dev);
+
+	return ret;
+}
+
 /**
  * ice_vsi_map_rings_to_vectors - Map VSI rings to interrupt vectors
  * @vsi: the VSI being configured
@@ -982,10 +1008,12 @@ void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_free_q_vectors - Free memory allocated for interrupt vectors
+ * ice_vsi_free_q_vectors_locked - Free memory allocated for interrupt vectors
  * @vsi: the VSI having memory freed
+ *
+ * Should be called only under the netdev lock.
  */
-void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
+void ice_vsi_free_q_vectors_locked(struct ice_vsi *vsi)
 {
 	int v_idx;
 
@@ -995,6 +1023,23 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
 	vsi->num_q_vectors = 0;
 }
 
+/**
+ * ice_vsi_free_q_vectors - Free memory allocated for interrupt vectors
+ * @vsi: the VSI having memory freed
+ */
+void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
+{
+	struct net_device *dev = vsi->netdev;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ice_vsi_free_q_vectors_locked(vsi);
+
+	if (dev)
+		netdev_unlock(dev);
+}
+
 /**
  * ice_cfg_tstamp - Configure Tx time stamp queue
  * @tx_ring: Tx ring to be configured with timestamping
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 16aa25535152..7d89c0acc5d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -273,14 +273,13 @@ void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi)
  * ice_dcb_ena_dis_vsi - disable certain VSIs for DCB config/reconfig
  * @pf: pointer to the PF instance
  * @ena: true to enable VSIs, false to disable
- * @locked: true if caller holds RTNL lock, false otherwise
  *
  * Before a new DCB configuration can be applied, VSIs of type PF, SWITCHDEV
  * and CHNL need to be brought down. Following completion of DCB configuration
  * the VSIs that were downed need to be brought up again. This helper function
  * does both.
  */
-static void ice_dcb_ena_dis_vsi(struct ice_pf *pf, bool ena, bool locked)
+static void ice_dcb_ena_dis_vsi(struct ice_pf *pf, bool ena)
 {
 	int i;
 
@@ -294,9 +293,9 @@ static void ice_dcb_ena_dis_vsi(struct ice_pf *pf, bool ena, bool locked)
 		case ICE_VSI_CHNL:
 		case ICE_VSI_PF:
 			if (ena)
-				ice_ena_vsi(vsi, locked);
+				ice_ena_vsi(vsi);
 			else
-				ice_dis_vsi(vsi, locked);
+				ice_dis_vsi(vsi);
 			break;
 		default:
 			continue;
@@ -416,7 +415,7 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 		rtnl_lock();
 
 	/* disable VSIs affected by DCB changes */
-	ice_dcb_ena_dis_vsi(pf, false, true);
+	ice_dcb_ena_dis_vsi(pf, false);
 
 	memcpy(curr_cfg, new_cfg, sizeof(*curr_cfg));
 	memcpy(&curr_cfg->etsrec, &curr_cfg->etscfg, sizeof(curr_cfg->etsrec));
@@ -445,7 +444,7 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 
 out:
 	/* enable previously downed VSIs */
-	ice_dcb_ena_dis_vsi(pf, true, true);
+	ice_dcb_ena_dis_vsi(pf, true);
 	if (!locked)
 		rtnl_unlock();
 free_cfg:
@@ -1107,7 +1106,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 
 	rtnl_lock();
 	/* disable VSIs affected by DCB changes */
-	ice_dcb_ena_dis_vsi(pf, false, true);
+	ice_dcb_ena_dis_vsi(pf, false);
 
 	ret = ice_query_port_ets(pi, &buf, sizeof(buf), NULL);
 	if (ret) {
@@ -1119,7 +1118,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	ice_pf_dcb_recfg(pf, false);
 
 	/* enable previously downed VSIs */
-	ice_dcb_ena_dis_vsi(pf, true, true);
+	ice_dcb_ena_dis_vsi(pf, true);
 unlock_rtnl:
 	rtnl_unlock();
 out:
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 2e4f0969035f..af0cc77fbf71 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -23,10 +23,16 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	struct net_device *netdev = uplink_vsi->netdev;
 	bool if_running = netif_running(netdev);
 	struct ice_vsi_vlan_ops *vlan_ops;
+	int ret;
+
+	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, uplink_vsi->state)) {
+		netdev_lock(netdev);
+		ret = ice_down(uplink_vsi);
+		netdev_unlock(netdev);
 
-	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, uplink_vsi->state))
-		if (ice_down(uplink_vsi))
+		if (ret)
 			return -ENODEV;
+	}
 
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
 	ice_vsi_cfg_sw_lldp(uplink_vsi, true, false);
@@ -53,8 +59,14 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (ice_vsi_update_local_lb(uplink_vsi, true))
 		goto err_override_local_lb;
 
-	if (if_running && ice_up(uplink_vsi))
-		goto err_up;
+	if (if_running) {
+		netdev_lock(netdev);
+		ret = ice_up(uplink_vsi);
+		netdev_unlock(netdev);
+
+		if (ret)
+			goto err_up;
+	}
 
 	return 0;
 
@@ -74,8 +86,12 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
 				       ICE_FWD_TO_VSI);
-	if (if_running)
+
+	if (if_running) {
+		netdev_lock(netdev);
 		ice_up(uplink_vsi);
+		netdev_unlock(netdev);
+	}
 
 	return -ENODEV;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 837b71b7b2b7..6760aac609f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2304,10 +2304,14 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_cfg_def - configure default VSI based on the type
+ * ice_vsi_cfg_def_locked - configure default VSI based on the type
  * @vsi: pointer to VSI
+ *
+ * Should be called only with the netdev lock taken.
+ *
+ * Return: 0 on success, -errno on failure.
  */
-static int ice_vsi_cfg_def(struct ice_vsi *vsi)
+static int ice_vsi_cfg_def_locked(struct ice_vsi *vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_pf *pf = vsi->back;
@@ -2350,7 +2354,7 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 	case ICE_VSI_CTRL:
 	case ICE_VSI_SF:
 	case ICE_VSI_PF:
-		ret = ice_vsi_alloc_q_vectors(vsi);
+		ret = ice_vsi_alloc_q_vectors_locked(vsi);
 		if (ret)
 			goto unroll_vsi_init;
 
@@ -2400,7 +2404,7 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 		 * creates a VSI and corresponding structures for bookkeeping
 		 * purpose
 		 */
-		ret = ice_vsi_alloc_q_vectors(vsi);
+		ret = ice_vsi_alloc_q_vectors_locked(vsi);
 		if (ret)
 			goto unroll_vsi_init;
 
@@ -2424,7 +2428,7 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 		}
 		break;
 	case ICE_VSI_LB:
-		ret = ice_vsi_alloc_q_vectors(vsi);
+		ret = ice_vsi_alloc_q_vectors_locked(vsi);
 		if (ret)
 			goto unroll_vsi_init;
 
@@ -2451,7 +2455,7 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 unroll_vector_base:
 	/* reclaim SW interrupts back to the common pool */
 unroll_alloc_q_vector:
-	ice_vsi_free_q_vectors(vsi);
+	ice_vsi_free_q_vectors_locked(vsi);
 unroll_vsi_init:
 	ice_vsi_delete_from_hw(vsi);
 unroll_get_qs:
@@ -2463,6 +2467,28 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 	return ret;
 }
 
+/**
+ * ice_vsi_cfg_def - configure default VSI based on the type
+ * @vsi: pointer to VSI
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int ice_vsi_cfg_def(struct ice_vsi *vsi)
+{
+	struct net_device *dev = vsi->netdev;
+	int ret;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ret = ice_vsi_cfg_def_locked(vsi);
+
+	if (dev)
+		netdev_unlock(dev);
+
+	return ret;
+}
+
 /**
  * ice_vsi_cfg - configure a previously allocated VSI
  * @vsi: pointer to VSI
@@ -2497,10 +2523,12 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_decfg - remove all VSI configuration
+ * ice_vsi_decfg_locked - remove all VSI configuration
  * @vsi: pointer to VSI
+ *
+ * Should be called only under the netdev lock.
  */
-void ice_vsi_decfg(struct ice_vsi *vsi)
+static void ice_vsi_decfg_locked(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	int err;
@@ -2518,7 +2546,7 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 		ice_destroy_xdp_rings(vsi, ICE_XDP_CFG_PART);
 
 	ice_vsi_clear_rings(vsi);
-	ice_vsi_free_q_vectors(vsi);
+	ice_vsi_free_q_vectors_locked(vsi);
 	ice_vsi_put_qs(vsi);
 	ice_vsi_free_arrays(vsi);
 
@@ -2533,6 +2561,23 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 		vsi->agg_node->num_vsis--;
 }
 
+/**
+ * ice_vsi_decfg - remove all VSI configuration
+ * @vsi: pointer to VSI
+ */
+void ice_vsi_decfg(struct ice_vsi *vsi)
+{
+	struct net_device *dev = vsi->netdev;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ice_vsi_decfg_locked(vsi);
+
+	if (dev)
+		netdev_unlock(dev);
+}
+
 /**
  * ice_vsi_setup - Set up a VSI by a given type
  * @pf: board private structure
@@ -2706,18 +2751,19 @@ void ice_vsi_close(struct ice_vsi *vsi)
 	if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state))
 		ice_down(vsi);
 
-	ice_vsi_clear_napi_queues(vsi);
+	ice_vsi_clear_napi_queues_locked(vsi);
 	ice_vsi_free_irq(vsi);
 	ice_vsi_free_tx_rings(vsi);
 	ice_vsi_free_rx_rings(vsi);
 }
 
 /**
- * ice_ena_vsi - resume a VSI
- * @vsi: the VSI being resume
- * @locked: is the rtnl_lock already held
+ * ice_ena_vsi_locked - resume a VSI (without taking the netdev lock)
+ * @vsi: VSI to resume
+ *
+ * Return: 0 on success, -errno on failure.
  */
-int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
+int ice_ena_vsi_locked(struct ice_vsi *vsi)
 {
 	int err = 0;
 
@@ -2728,15 +2774,8 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
 
 	if (vsi->netdev && (vsi->type == ICE_VSI_PF ||
 			    vsi->type == ICE_VSI_SF)) {
-		if (netif_running(vsi->netdev)) {
-			if (!locked)
-				rtnl_lock();
-
+		if (netif_running(vsi->netdev))
 			err = ice_open_internal(vsi->netdev);
-
-			if (!locked)
-				rtnl_unlock();
-		}
 	} else if (vsi->type == ICE_VSI_CTRL) {
 		err = ice_vsi_open_ctrl(vsi);
 	}
@@ -2745,11 +2784,34 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
 }
 
 /**
- * ice_dis_vsi - pause a VSI
+ * ice_ena_vsi - resume a VSI
+ * @vsi: VSI to resume
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int ice_ena_vsi(struct ice_vsi *vsi)
+{
+	struct net_device *dev = vsi->netdev;
+	int ret;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ret = ice_ena_vsi_locked(vsi);
+
+	if (dev)
+		netdev_unlock(dev);
+
+	return ret;
+}
+
+/**
+ * ice_dis_vsi_locked - pause a VSI
  * @vsi: the VSI being paused
- * @locked: is the rtnl_lock already held
+ *
+ * The caller must always hold the netdev lock.
  */
-void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
+void ice_dis_vsi_locked(struct ice_vsi *vsi)
 {
 	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
 
@@ -2758,14 +2820,9 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 	if (vsi->netdev && (vsi->type == ICE_VSI_PF ||
 			    vsi->type == ICE_VSI_SF)) {
 		if (netif_running(vsi->netdev)) {
-			if (!locked)
-				rtnl_lock();
 			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
 			if (!already_down)
 				ice_vsi_close(vsi);
-
-			if (!locked)
-				rtnl_unlock();
 		} else if (!already_down) {
 			ice_vsi_close(vsi);
 		}
@@ -2775,12 +2832,30 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 }
 
 /**
- * ice_vsi_set_napi_queues - associate netdev queues with napi
+ * ice_dis_vsi - pause a VSI
+ * @vsi: the VSI being paused
+ */
+void ice_dis_vsi(struct ice_vsi *vsi)
+{
+	struct net_device *dev = vsi->netdev;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ice_dis_vsi_locked(vsi);
+
+	if (dev)
+		netdev_unlock(dev);
+}
+
+/**
+ * ice_vsi_set_napi_queues_locked - associate netdev queues with napi
  * @vsi: VSI pointer
  *
  * Associate queue[s] with napi for all vectors.
+ * Must be called only with the netdev_lock taken.
  */
-void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
+void ice_vsi_set_napi_queues_locked(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
 	int q_idx, v_idx;
@@ -2788,7 +2863,6 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 	if (!netdev)
 		return;
 
-	ASSERT_RTNL();
 	ice_for_each_rxq(vsi, q_idx)
 		if (vsi->rx_rings[q_idx] && vsi->rx_rings[q_idx]->q_vector)
 			netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
@@ -2802,17 +2876,37 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
 
-		netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq);
+		netif_napi_set_irq_locked(&q_vector->napi, q_vector->irq.virq);
 	}
 }
 
 /**
- * ice_vsi_clear_napi_queues - dissociate netdev queues from napi
+ * ice_vsi_set_napi_queues - associate VSI queues with NAPIs
  * @vsi: VSI pointer
  *
+ * Version of ice_vsi_set_napi_queues_locked() that takes the netdev_lock,
+ * to use it outside of the net_device_ops context.
+ */
+void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
+{
+	struct net_device *netdev = vsi->netdev;
+
+	if (!netdev)
+		return;
+
+	netdev_lock(netdev);
+	ice_vsi_set_napi_queues_locked(vsi);
+	netdev_unlock(netdev);
+}
+
+/**
+ * ice_vsi_clear_napi_queues_locked - dissociate netdev queues from napi
+ * @vsi: VSI to process
+ *
  * Clear the association between all VSI queues queue[s] and napi.
+ * Must be called only with the netdev_lock taken.
  */
-void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
+void ice_vsi_clear_napi_queues_locked(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
 	int q_idx, v_idx;
@@ -2820,12 +2914,11 @@ void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 	if (!netdev)
 		return;
 
-	ASSERT_RTNL();
 	/* Clear the NAPI's interrupt number */
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
 
-		netif_napi_set_irq(&q_vector->napi, -1);
+		netif_napi_set_irq_locked(&q_vector->napi, -1);
 	}
 
 	ice_for_each_txq(vsi, q_idx)
@@ -2835,6 +2928,25 @@ void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX, NULL);
 }
 
+/**
+ * ice_vsi_clear_napi_queues - dissociate VSI queues from NAPIs
+ * @vsi: VSI to process
+ *
+ * Version of ice_vsi_clear_napi_queues_locked() that takes the netdev lock,
+ * to use it outside of the net_device_ops context.
+ */
+void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
+{
+	struct net_device *netdev = vsi->netdev;
+
+	if (!netdev)
+		return;
+
+	netdev_lock(netdev);
+	ice_vsi_clear_napi_queues_locked(vsi);
+	netdev_unlock(netdev);
+}
+
 /**
  * ice_napi_add - register NAPI handler for the VSI
  * @vsi: VSI for which NAPI handler is to be registered
@@ -3072,16 +3184,17 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_rebuild - Rebuild VSI after reset
+ * ice_vsi_rebuild_locked - Rebuild VSI after reset
  * @vsi: VSI to be rebuild
  * @vsi_flags: flags used for VSI rebuild flow
  *
  * Set vsi_flags to ICE_VSI_FLAG_INIT to initialize a new VSI, or
  * ICE_VSI_FLAG_NO_INIT to rebuild an existing VSI in hardware.
+ * Should be called only under the netdev lock.
  *
- * Returns 0 on success and negative value on failure
+ * Return: 0 on success, -errno on failure.
  */
-int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
+int ice_vsi_rebuild_locked(struct ice_vsi *vsi, u32 vsi_flags)
 {
 	struct ice_coalesce_stored *coalesce;
 	int prev_num_q_vectors;
@@ -3102,8 +3215,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	if (ret)
 		goto unlock;
 
-	ice_vsi_decfg(vsi);
-	ret = ice_vsi_cfg_def(vsi);
+	ice_vsi_decfg_locked(vsi);
+	ret = ice_vsi_cfg_def_locked(vsi);
 	if (ret)
 		goto unlock;
 
@@ -3133,12 +3246,38 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	kfree(coalesce);
 decfg:
 	if (ret)
-		ice_vsi_decfg(vsi);
+		ice_vsi_decfg_locked(vsi);
 unlock:
 	mutex_unlock(&vsi->xdp_state_lock);
 	return ret;
 }
 
+/**
+ * ice_vsi_rebuild - Rebuild VSI after reset
+ * @vsi: VSI to be rebuild
+ * @vsi_flags: flags used for VSI rebuild flow
+ *
+ * Set vsi_flags to ICE_VSI_FLAG_INIT to initialize a new VSI, or
+ * ICE_VSI_FLAG_NO_INIT to rebuild an existing VSI in hardware.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
+{
+	struct net_device *dev = vsi->netdev;
+	int ret;
+
+	if (dev)
+		netdev_lock(dev);
+
+	ret = ice_vsi_rebuild_locked(vsi, vsi_flags);
+
+	if (dev)
+		netdev_unlock(dev);
+
+	return ret;
+}
+
 /**
  * ice_is_reset_in_progress - check for a reset in progress
  * @state: PF state field
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1d1947a7fe11..50975fe7cab7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -507,16 +507,15 @@ static void ice_sync_fltr_subtask(struct ice_pf *pf)
 /**
  * ice_pf_dis_all_vsi - Pause all VSIs on a PF
  * @pf: the PF
- * @locked: is the rtnl_lock already held
  */
-static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
+static void ice_pf_dis_all_vsi(struct ice_pf *pf)
 {
 	int node;
 	int v;
 
 	ice_for_each_vsi(pf, v)
 		if (pf->vsi[v])
-			ice_dis_vsi(pf->vsi[v], locked);
+			ice_dis_vsi(pf->vsi[v]);
 
 	for (node = 0; node < ICE_MAX_PF_AGG_NODES; node++)
 		pf->pf_agg_node[node].num_vsis = 0;
@@ -605,7 +604,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_clear_hw_tbls(hw);
 	/* disable the VSIs and their queues that are not already DOWN */
 	set_bit(ICE_VSI_REBUILD_PENDING, ice_get_main_vsi(pf)->state);
-	ice_pf_dis_all_vsi(pf, false);
+	ice_pf_dis_all_vsi(pf);
 
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_prepare_for_reset(pf, reset_type);
@@ -2943,9 +2942,9 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 				goto resume_if;
 			}
 		}
-		xdp_features_set_redirect_target(vsi->netdev, true);
+		xdp_features_set_redirect_target_locked(vsi->netdev, true);
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
-		xdp_features_clear_redirect_target(vsi->netdev);
+		xdp_features_clear_redirect_target_locked(vsi->netdev);
 		xdp_ring_err = ice_destroy_xdp_rings(vsi, ICE_XDP_CFG_FULL);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
@@ -3447,11 +3446,13 @@ static void ice_set_ops(struct ice_vsi *vsi)
 
 	if (ice_is_safe_mode(pf)) {
 		netdev->netdev_ops = &ice_netdev_safe_mode_ops;
+		netdev->request_ops_lock = true;
 		ice_set_ethtool_safe_mode_ops(netdev);
 		return;
 	}
 
 	netdev->netdev_ops = &ice_netdev_ops;
+	netdev->request_ops_lock = true;
 	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
 	netdev->xdp_metadata_ops = &ice_xdp_md_ops;
 	ice_set_ethtool_ops(netdev);
@@ -4058,6 +4059,7 @@ bool ice_is_wol_supported(struct ice_hw *hw)
  * @locked: is adev device_lock held
  *
  * Only change the number of queues if new_tx, or new_rx is non-0.
+ * Note that it should be called only with the netdev lock taken.
  *
  * Returns 0 on success.
  */
@@ -4083,7 +4085,7 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 
 	/* set for the next time the netdev is started */
 	if (!netif_running(vsi->netdev)) {
-		err = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+		err = ice_vsi_rebuild_locked(vsi, ICE_VSI_FLAG_NO_INIT);
 		if (err)
 			goto rebuild_err;
 		dev_dbg(ice_pf_to_dev(pf), "Link is down, queue count change happens when link is brought up\n");
@@ -4091,7 +4093,7 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 	}
 
 	ice_vsi_close(vsi);
-	err = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+	err = ice_vsi_rebuild_locked(vsi, ICE_VSI_FLAG_NO_INIT);
 	if (err)
 		goto rebuild_err;
 
@@ -5437,7 +5439,7 @@ static void ice_prepare_for_shutdown(struct ice_pf *pf)
 	dev_dbg(ice_pf_to_dev(pf), "Tearing down internal switch for shutdown\n");
 
 	/* disable the VSIs and their queues that are not already DOWN */
-	ice_pf_dis_all_vsi(pf, false);
+	ice_pf_dis_all_vsi(pf);
 
 	ice_for_each_vsi(pf, v)
 		if (pf->vsi[v])
@@ -5473,16 +5475,17 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
 
 	/* Remap vectors and rings, after successful re-init interrupts */
 	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
+		struct ice_vsi *vsi = pf->vsi[v];
+
+		if (!vsi)
 			continue;
 
-		ret = ice_vsi_alloc_q_vectors(pf->vsi[v]);
+		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
 			goto err_reinit;
-		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
-		rtnl_lock();
-		ice_vsi_set_napi_queues(pf->vsi[v]);
-		rtnl_unlock();
+
+		ice_vsi_map_rings_to_vectors(vsi);
+		ice_vsi_set_napi_queues(vsi);
 	}
 
 	ret = ice_req_irq_msix_misc(pf);
@@ -5495,13 +5498,15 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
 	return 0;
 
 err_reinit:
-	while (v--)
-		if (pf->vsi[v]) {
-			rtnl_lock();
-			ice_vsi_clear_napi_queues(pf->vsi[v]);
-			rtnl_unlock();
-			ice_vsi_free_q_vectors(pf->vsi[v]);
-		}
+	while (v--) {
+		struct ice_vsi *vsi = pf->vsi[v];
+
+		if (!vsi)
+			continue;
+
+		ice_vsi_clear_napi_queues(vsi);
+		ice_vsi_free_q_vectors(vsi);
+	}
 
 	return ret;
 }
@@ -5564,14 +5569,17 @@ static int ice_suspend(struct device *dev)
 	 * to CPU0.
 	 */
 	ice_free_irq_msix_misc(pf);
+
 	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
+		struct ice_vsi *vsi = pf->vsi[v];
+
+		if (!vsi)
 			continue;
-		rtnl_lock();
-		ice_vsi_clear_napi_queues(pf->vsi[v]);
-		rtnl_unlock();
-		ice_vsi_free_q_vectors(pf->vsi[v]);
+
+		ice_vsi_clear_napi_queues(vsi);
+		ice_vsi_free_q_vectors(vsi);
 	}
+
 	ice_clear_interrupt_scheme(pf);
 
 	pci_save_state(pdev);
@@ -6699,7 +6707,7 @@ static void ice_napi_enable_all(struct ice_vsi *vsi)
 		ice_init_moderation(q_vector);
 
 		if (q_vector->rx.rx_ring || q_vector->tx.tx_ring)
-			napi_enable(&q_vector->napi);
+			napi_enable_locked(&q_vector->napi);
 	}
 }
 
@@ -7198,7 +7206,7 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
 		if (q_vector->rx.rx_ring || q_vector->tx.tx_ring)
-			napi_disable(&q_vector->napi);
+			napi_disable_locked(&q_vector->napi);
 
 		cancel_work_sync(&q_vector->tx.dim.work);
 		cancel_work_sync(&q_vector->rx.dim.work);
@@ -7498,7 +7506,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 		if (err)
 			goto err_set_qs;
 
-		ice_vsi_set_napi_queues(vsi);
+		ice_vsi_set_napi_queues_locked(vsi);
 	}
 
 	err = ice_up_complete(vsi);
@@ -7584,7 +7592,7 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		vsi->vsi_num = ice_get_hw_vsi_num(&pf->hw, vsi->idx);
 
 		/* enable the VSI */
-		err = ice_ena_vsi(vsi, false);
+		err = ice_ena_vsi(vsi);
 		if (err) {
 			dev_err(dev, "enable VSI failed, err %d, VSI index %d, type %s\n",
 				err, vsi->idx, ice_vsi_type_str(type));
@@ -9190,7 +9198,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 		return 0;
 
 	/* Pause VSI queues */
-	ice_dis_vsi(vsi, true);
+	ice_dis_vsi_locked(vsi);
 
 	if (!hw && !test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
 		ice_remove_q_channels(vsi, true);
@@ -9229,14 +9237,14 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 	cur_rxq = vsi->num_rxq;
 
 	/* proceed with rebuild main VSI using correct number of queues */
-	ret = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
+	ret = ice_vsi_rebuild_locked(vsi, ICE_VSI_FLAG_NO_INIT);
 	if (ret) {
 		/* fallback to current number of queues */
 		dev_info(dev, "Rebuild failed with new queues, try with current number of queues\n");
 		vsi->req_txq = cur_txq;
 		vsi->req_rxq = cur_rxq;
 		clear_bit(ICE_RESET_FAILED, pf->state);
-		if (ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT)) {
+		if (ice_vsi_rebuild_locked(vsi, ICE_VSI_FLAG_NO_INIT)) {
 			dev_err(dev, "Rebuild of main VSI failed again\n");
 			return ret;
 		}
@@ -9292,7 +9300,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 		vsi->all_enatc = 0;
 	}
 	/* resume VSI */
-	ice_ena_vsi(vsi, true);
+	ice_ena_vsi_locked(vsi);
 
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index a730aa368c92..cd6ba53a873b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -58,6 +58,7 @@ static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
 	eth_hw_addr_set(netdev, dyn_port->hw_addr);
 	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
 	netdev->netdev_ops = &ice_sf_netdev_ops;
+	netdev->request_ops_lock = true;
 	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
 
 	err = register_netdev(netdev);
@@ -183,7 +184,9 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
 	devlink = priv_to_devlink(sf_dev->priv);
 	devl_lock(devlink);
 
+	netdev_lock(vsi->netdev);
 	ice_vsi_close(vsi);
+	netdev_unlock(vsi->netdev);
 
 	ice_sf_decfg_netdev(vsi);
 	ice_devlink_destroy_sf_dev_port(sf_dev);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 0643017541c3..be0cb548487a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -33,9 +33,9 @@ ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
 		return;
 
 	if (enable)
-		napi_enable(&q_vector->napi);
+		napi_enable_locked(&q_vector->napi);
 	else
-		napi_disable(&q_vector->napi);
+		napi_disable_locked(&q_vector->napi);
 }
 
 /**
-- 
2.54.0

