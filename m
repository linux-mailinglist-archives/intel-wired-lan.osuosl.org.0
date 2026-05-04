Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHhGMUas+GnHxgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D1F4BF564
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27E8E819B8;
	Mon,  4 May 2026 14:25:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KPUnJK5PZ2YJ; Mon,  4 May 2026 14:25:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78D5081EC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777904704;
	bh=jNGxF2l+R9CnVMp6l4YalRL/JZPvQonlHrBei6o9HUg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v9qsOx0OdwpI5RcKJvEFt8FS2goC/A5B6qmY7m18xKPI5UFM9vWUOeO8j+QNhPzD+
	 EkqD8qziYuQ1dctPcnF1AZGnsX8BjGoM7jJp6CWrjK6RGpHNodeGwJG5KYLtMZKcDH
	 ieXlxp5jIiFFyVAjz9i2jZxR8RbFDRQddwQxpjORaFIJB/TQHwKwr5aPRHIG4TYmLC
	 +xS7j0XrWUnXgPuIez6Hc8aa10+r86F7AXleAsKcGtrhHI9RbC4If/yqRgTHJC/wIC
	 JlE2IKveglHYWrBCbK9o0YKX2ZRY05z8e4dq9MnmkKy47j9QY7Zq8wYI3roMQc3dWA
	 tTy71dY6W6xnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78D5081EC7;
	Mon,  4 May 2026 14:25:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 56728204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48C9340CFE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yK6gm53CYIYv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:25:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75669408D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75669408D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75669408D7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:01 +0000 (UTC)
X-CSE-ConnectionGUID: Kvzmcnl1TNmDJO9cmjgzXw==
X-CSE-MsgGUID: 6xrZD4qSTciAKkkN3Zw4jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78691617"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78691617"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:25:02 -0700
X-CSE-ConnectionGUID: D9l56hhRQ/254amepnlPYQ==
X-CSE-MsgGUID: YJgxcTBSSxiDAfkMUbKdjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230935411"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 04 May 2026 07:25:00 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon,  4 May 2026 16:24:51 +0200
Message-ID: <20260504142451.4161845-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
References: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777904702; x=1809440702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yPN+lmUC+V9SjMLQPhkRnt+TgdSTwYMAW5C7MIsny0I=;
 b=g/Q3xm3us+yxeP081PcecR52JD4+UI/EWdJRJPyQ5YbHZqMLODKsn8PX
 40mhEuaDUOzq7cl//5bmqpOGIT2YOwrR3KAMyvicefnGl+dzpLsNKoLsp
 JNBAJ76Zy4AbUa9dFTAdrxi1g9AjQpOLC0Z70Nmtplhjp2EoQD/KEPtO3
 CFuznYjJhrc6AuzOm7IjdoWhYEpxfshssRPLWNpt2/RxxuhCx6f5bHhXe
 OTR0USAK1YMhtug/5pyq4KGAVmtSVtiFlo+0GNwoTMOuGHkBG5irQse2C
 bpzst5yFsuSEdEc2fZxhx8Sqmz+4sHum18JO+0qrRLKvQhN6R+eOy/Ibl
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g/Q3xm3u
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: use
 element-by-element comparison for DCB config changes
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
X-Rspamd-Queue-Id: 78D1F4BF564
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

Comparing two ice_dcbx_cfg structs with memcmp() is unreliable on
non-packed structs due to uninitialised padding bytes.  The HW DCB
path already has ice_dcb_need_recfg() that compares fields
individually; export it and use it in the SW DCB netlink setters
(setets, setpfc, setapp, cee_set_all) instead of the unsafe memcmp.

Remove the now-redundant memcmp check from ice_pf_dcb_cfg() so that
function always attempts the HW reconfiguration when called.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 13 ++-------
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  2 ++
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  | 30 ++++++++++++++++++--
 3 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index bd77f1c..2e85fae 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -353,15 +353,11 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	struct ice_dcbx_cfg *old_cfg, *curr_cfg;
 	struct device *dev = ice_pf_to_dev(pf);
 	struct iidc_rdma_event *event;
-	int ret = ICE_DCB_NO_HW_CHG;
 	struct ice_vsi *pf_vsi;
+	int ret;
 
 	curr_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
-	/* FW does not care if change happened */
-	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
-		ret = ICE_DCB_HW_CHG_RST;
-
 	/* Enable DCB tagging only when more than one TC */
 	if (ice_dcb_get_num_tc(new_cfg) > 1) {
 		dev_dbg(dev, "DCB tagging enabled (num TC > 1)\n");
@@ -377,11 +373,6 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	}
 
-	if (!memcmp(new_cfg, curr_cfg, sizeof(*new_cfg))) {
-		dev_dbg(dev, "No change in DCB config required\n");
-		return ret;
-	}
-
 	if (ice_dcb_bwchk(pf, new_cfg))
 		return -EINVAL;
 
@@ -481,7 +472,7 @@ static void ice_cfg_etsrec_defaults(struct ice_port_info *pi)
  * @old_cfg: current DCB config
  * @new_cfg: new DCB config
  */
-static bool
+bool
 ice_dcb_need_recfg(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
 		   struct ice_dcbx_cfg *new_cfg)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index da9ba81..a7eaa2f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -20,6 +20,8 @@ u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg);
 void ice_vsi_set_dcb_tc_cfg(struct ice_vsi *vsi);
 bool ice_is_pfc_causing_hung_q(struct ice_pf *pf, unsigned int txqueue);
 u8 ice_dcb_get_tc(struct ice_vsi *vsi, int queue_index);
+bool ice_dcb_need_recfg(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
+			struct ice_dcbx_cfg *new_cfg);
 int
 ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked);
 int ice_dcb_bwchk(struct ice_pf *pf, struct ice_dcbx_cfg *dcbcfg);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index a10c1c8d..13a52c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -108,11 +108,17 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 	if (!bwrec)
 		new_cfg->etsrec.tcbwtable[0] = 100;
 
+	if (!ice_dcb_need_recfg(pf, &pf->hw.port_info->qos_cfg.local_dcbx_cfg,
+				new_cfg)) {
+		err = ICE_DCB_NO_HW_CHG;
+		goto ets_out;
+	}
+
 	err = ice_pf_dcb_cfg(pf, new_cfg, true);
 	/* return of zero indicates new cfg applied */
-	if (err == ICE_DCB_HW_CHG_RST)
+	if (!err)
 		ice_dcbnl_devreset(netdev);
-	if (err == ICE_DCB_NO_HW_CHG)
+	else if (err == ICE_DCB_NO_HW_CHG)
 		err = ICE_DCB_HW_CHG_RST;
 
 ets_out:
@@ -287,11 +293,18 @@ static int ice_dcbnl_setpfc(struct net_device *netdev, struct ieee_pfc *pfc)
 
 	new_cfg->pfc.pfcena = pfc->pfc_en;
 
+	if (!ice_dcb_need_recfg(pf, &pf->hw.port_info->qos_cfg.local_dcbx_cfg,
+				new_cfg)) {
+		err = ICE_DCB_NO_HW_CHG;
+		goto pfc_out;
+	}
+
 	err = ice_pf_dcb_cfg(pf, new_cfg, true);
 	if (err == ICE_DCB_HW_CHG_RST)
 		ice_dcbnl_devreset(netdev);
 	if (err == ICE_DCB_NO_HW_CHG)
 		err = ICE_DCB_HW_CHG_RST;
+pfc_out:
 	mutex_unlock(&pf->tc_mutex);
 	return err;
 }
@@ -845,6 +858,12 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 	new_cfg->dscp_map[app->protocol] = app->priority;
 	new_cfg->app[new_cfg->numapps++] = new_app;
 
+	if (!ice_dcb_need_recfg(pf, &pf->hw.port_info->qos_cfg.local_dcbx_cfg,
+				new_cfg)) {
+		ret = ICE_DCB_NO_HW_CHG;
+		goto setapp_out;
+	}
+
 	ret = ice_pf_dcb_cfg(pf, new_cfg, true);
 	/* return of zero indicates new cfg applied */
 	if (ret == ICE_DCB_HW_CHG_RST)
@@ -991,8 +1010,15 @@ static u8 ice_dcbnl_cee_set_all(struct net_device *netdev)
 
 	mutex_lock(&pf->tc_mutex);
 
+	if (!ice_dcb_need_recfg(pf, &pf->hw.port_info->qos_cfg.local_dcbx_cfg,
+				new_cfg)) {
+		err = ICE_DCB_NO_HW_CHG;
+		goto out;
+	}
+
 	err = ice_pf_dcb_cfg(pf, new_cfg, true);
 
+out:
 	mutex_unlock(&pf->tc_mutex);
 	return (err != ICE_DCB_HW_CHG_RST) ? ICE_DCB_NO_HW_CHG : err;
 }
-- 
2.52.0

