Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAK2IIgwxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB3B340562
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7587961279;
	Fri, 27 Mar 2026 07:23:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9nW_UkYyawV4; Fri, 27 Mar 2026 07:23:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C051D61289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596229;
	bh=VEZ+UfXawIfpShGFo/Ka+57eKxUShqqY7bHMOG25NIQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zl8aFnPsilbScYCzhAhsRQJ4uQtusbHQYtgFisFjeFDcJuwaFCOrT8iaI6kNu3Lyi
	 pAzAoXdW4BMznPQx1iwJYncA2LyDKkSm5GTlVgEwBMmkKfq7qZUGcQQJf5jOQw9Imc
	 3U55jg9ydcTBoDZ0dxT38A3ustxDEs8YMWmfF5f4kRUN+0MAZ12mYSvLqu+nWtrlno
	 3hHnEHSz3vtFqu/koGemVWoG6B4bMSFAct7kBTec7YINrSaqBZ+OCd5EQcBq/lQtPR
	 CDTnQgHN3Uv9FQKrlY/hg1FIfzr8tXcsaBHbh3xjPVvdzCK4xVPDoxmB4aXWm0oZ5N
	 869pu75HNyCQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C051D61289;
	Fri, 27 Mar 2026 07:23:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 265AD2D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18DAD415FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lPldrhBn16We for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:23:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19C7441574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19C7441574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19C7441574
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:47 +0000 (UTC)
X-CSE-ConnectionGUID: jNEy2zLTRD6Udh1SojGWkQ==
X-CSE-MsgGUID: Urb7CO8pSeieiiu2sj+RMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75733983"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75733983"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:23:46 -0700
X-CSE-ConnectionGUID: v97pXds9RCm8WRrwnK8Jng==
X-CSE-MsgGUID: b0mRNXA+TXm2iIcLWcp5Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255739116"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:23:45 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Dave Ertman <david.m.ertman@intel.com>
Date: Fri, 27 Mar 2026 08:23:31 +0100
Message-ID: <20260327072332.130320-8-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596227; x=1806132227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wNHNslyd6MNc9Q8hzBtoAtv+43HUwDJhNoUcYjJZM1E=;
 b=EpQ+uD2YQJ9VwC0DTwk/revJhOGk2HaY/3z9kWgXJK4HEZ0J9BSWuV3p
 GrpVq5eRMFl11te4IHjFc/1XndJ2l54Gzz1C84WphvQt5VftyIJmJtA/E
 KDE4Eu8t7GjeZq77Y/xUNTfEaDpB6/27n5qNuiO2jrKvtBWtVlxqyjr0S
 IY77tSpoIeHnY+YF5JsbtjR55TcehwdODU/oZ6ZYXVVCHA2Zhp6T7k8tl
 l1O+WfvoOr/tnTZ/QqVkz5o1YKDXKzvDwTm6V+doQFd0SLh1aIUndpVbr
 Ohd5twM5lzcRqUF3GPcCxVGNNYsRYvdfTnJm6vw19PfY6BLHmNlNElLe4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EpQ+uD2Y
Subject: [Intel-wired-lan] [PATCH net] ice: stop DCBNL requests during
 driver unload
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EBB3B340562
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dave Ertman <david.m.ertman@intel.com>

With a chatty lldpad, DCB configuration requests can arrive through
the DCBNL API while the driver is tearing down PF resources, leading
to use-after-free and NULL dereference crashes.

Set ICE_SHUTTING_DOWN in pf->state at the start of ice_remove() and
check this bit at the beginning of every DCBNL callback that accesses
resources freed during the remove path.

Fixes: b94b013eb626 ("ice: Implement DCBNL support")
Cc: stable@vger.kernel.org
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice.h        |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 46 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  1 +
 3 files changed, 48 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2b2b22a..052c310 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -283,6 +283,7 @@ enum ice_pf_state {
 	ICE_EMPR_RECV,		/* set by OICR handler */
 	ICE_SUSPENDED,		/* set on module remove path */
 	ICE_RESET_FAILED,		/* set by reset/rebuild */
+	ICE_SHUTTING_DOWN,		/* set on module remove path, before releasing resources */
 	/* When checking for the PF to be in a nominal operating state, the
 	 * bits that are grouped at the beginning of the list need to be
 	 * checked. Bits occurring before ICE_STATE_NOMINAL_CHECK_BITS will
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index a10c1c8d..4a30129 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -15,6 +15,8 @@ static void ice_dcbnl_devreset(struct net_device *netdev)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	while (ice_is_reset_in_progress(pf->state))
 		usleep_range(1000, 2000);
 
@@ -35,6 +37,8 @@ static int ice_dcbnl_getets(struct net_device *netdev, struct ieee_ets *ets)
 	struct ice_pf *pf;
 
 	pf = ice_netdev_to_pf(netdev);
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	dcbxcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	ets->willing = dcbxcfg->etscfg.willing;
@@ -66,6 +70,8 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 	int bwcfg = 0, bwrec = 0;
 	int err, i;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
@@ -135,6 +141,8 @@ ice_dcbnl_getnumtcs(struct net_device *dev, int __always_unused tcid, u8 *num)
 
 	if (!test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags))
 		return -EINVAL;
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 
 	*num = pf->hw.func_caps.common_cap.maxtc;
 	return 0;
@@ -148,6 +156,8 @@ static u8 ice_dcbnl_getdcbx(struct net_device *netdev)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return 0;
 	return pf->dcbx_cap;
 }
 
@@ -161,6 +171,8 @@ static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_qos_cfg *qos_cfg;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return 0;
 	/* if FW LLDP agent is running, DCBNL not allowed to change mode */
 	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
 		return ICE_DCB_NO_HW_CHG;
@@ -208,6 +220,8 @@ static void ice_dcbnl_get_perm_hw_addr(struct net_device *netdev, u8 *perm_addr)
 	struct ice_port_info *pi = pf->hw.port_info;
 	int i, j;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	memset(perm_addr, 0xff, MAX_ADDR_LEN);
 
 	for (i = 0; i < netdev->addr_len; i++)
@@ -242,6 +256,8 @@ static int ice_dcbnl_getpfc(struct net_device *netdev, struct ieee_pfc *pfc)
 	struct ice_dcbx_cfg *dcbxcfg;
 	int i;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	dcbxcfg = &pi->qos_cfg.local_dcbx_cfg;
 	pfc->pfc_cap = dcbxcfg->pfc.pfccap;
 	pfc->pfc_en = dcbxcfg->pfc.pfcena;
@@ -267,6 +283,8 @@ static int ice_dcbnl_setpfc(struct net_device *netdev, struct ieee_pfc *pfc)
 	struct ice_dcbx_cfg *new_cfg;
 	int err;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
@@ -308,6 +326,8 @@ ice_dcbnl_get_pfc_cfg(struct net_device *netdev, int prio, u8 *setting)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_port_info *pi = pf->hw.port_info;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return;
@@ -331,6 +351,8 @@ static void ice_dcbnl_set_pfc_cfg(struct net_device *netdev, int prio, u8 set)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_dcbx_cfg *new_cfg;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return;
@@ -364,6 +386,8 @@ static u8 ice_dcbnl_getpfcstate(struct net_device *netdev)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_port_info *pi = pf->hw.port_info;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return 0;
 	/* Return enabled if any UP enabled for PFC */
 	if (pi->qos_cfg.local_dcbx_cfg.pfc.pfcena)
 		return 1;
@@ -395,6 +419,8 @@ static u8 ice_dcbnl_setstate(struct net_device *netdev, u8 state)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return ICE_DCB_NO_HW_CHG;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return ICE_DCB_NO_HW_CHG;
@@ -469,6 +495,8 @@ ice_dcbnl_set_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 	struct ice_dcbx_cfg *new_cfg;
 	int i;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return;
@@ -504,6 +532,8 @@ ice_dcbnl_get_pg_bwg_cfg_tx(struct net_device *netdev, int pgid, u8 *bw_pct)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_port_info *pi = pf->hw.port_info;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return;
@@ -528,6 +558,8 @@ ice_dcbnl_set_pg_bwg_cfg_tx(struct net_device *netdev, int pgid, u8 bw_pct)
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_dcbx_cfg *new_cfg;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return;
@@ -609,6 +641,8 @@ ice_dcbnl_get_pg_bwg_cfg_rx(struct net_device *netdev, int __always_unused pgid,
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return;
@@ -643,6 +677,8 @@ static u8 ice_dcbnl_get_cap(struct net_device *netdev, int capid, u8 *cap)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return ICE_DCB_NO_HW_CHG;
 	if (!(test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags)))
 		return ICE_DCB_NO_HW_CHG;
 
@@ -695,6 +731,8 @@ static int ice_dcbnl_getapp(struct net_device *netdev, u8 idtype, u16 id)
 				.protocol = id,
 			     };
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return -EINVAL;
@@ -738,6 +776,8 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 	u8 max_tc;
 	int ret;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	/* ONLY DSCP APP TLVs have operational significance */
 	if (app->selector != IEEE_8021QAZ_APP_SEL_DSCP)
 		return -EINVAL;
@@ -871,6 +911,8 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 	unsigned int i, j;
 	int ret = 0;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return -EBUSY;
 	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) {
 		netdev_err(netdev, "can't delete DSCP netlink app when FW DCB agent is active\n");
 		return -EINVAL;
@@ -978,6 +1020,8 @@ static u8 ice_dcbnl_cee_set_all(struct net_device *netdev)
 	struct ice_dcbx_cfg *new_cfg;
 	int err;
 
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return ICE_DCB_NO_HW_CHG;
 	if ((pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return ICE_DCB_NO_HW_CHG;
@@ -1048,6 +1092,8 @@ void ice_dcbnl_set_all(struct ice_vsi *vsi)
 		return;
 
 	pf = ice_netdev_to_pf(netdev);
+	if (test_bit(ICE_SHUTTING_DOWN, pf->state))
+		return;
 	pi = pf->hw.port_info;
 
 	/* SW DCB taken care of by SW Default Config */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 685c9618..eff48bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5424,6 +5424,7 @@ static void ice_remove(struct pci_dev *pdev)
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	int i;
 
+	set_bit(ICE_SHUTTING_DOWN, pf->state);
 	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
 		if (!ice_is_reset_in_progress(pf->state))
 			break;
-- 
2.52.0

