Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JfXKf2i12kUQQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 15:00:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D04B73CAB5E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 15:00:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC59A6100C;
	Thu,  9 Apr 2026 13:00:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FmcURAOGYwlR; Thu,  9 Apr 2026 13:00:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2720F6100B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775739631;
	bh=U+AvPkcwmGpLWoOxWjOz4hJK93FfVtCD11FMzz4v4Pk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QUKVu3KlIAcn1RydO84gu5Pk3wGzpBrzfmd9oom1emwIeYQ+ye2wcpQ0v7Iaehkwb
	 NgXIZ6x+5l7Wg2uNZmE7a3Lfs0PT0/3zk9o/YM4eVQR/4MiRbyc04JlYenD6j2ibix
	 BolQsTYundfZI2caNa5e/8FQ6n5/OKWxkq0K9XbOfr+cJ+6dZS3ud5Z7ZhGbA2+yAr
	 9zOxWfB1IKnuB31HzkmsCK/pzTC0utp3b6NgD59fDaNkgouOm5WbHqUVC1IHFd92sT
	 blqTc2ov4X4V5uYiagxzi55FkrEP38RWJ3Hurc+vTyZxdTmsLvJdleju2Hbo6mkszs
	 i0ybAPTePkAEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2720F6100B;
	Thu,  9 Apr 2026 13:00:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 44E981F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36E8181E5C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oBNoedT2AJ-6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 13:00:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C53581B14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C53581B14
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C53581B14
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:00:28 +0000 (UTC)
X-CSE-ConnectionGUID: +mYhIqwRTauEWILTVEtxOw==
X-CSE-MsgGUID: 1hQg5O8rRxqzIOq96vh64Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75777543"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="75777543"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 06:00:22 -0700
X-CSE-ConnectionGUID: OPdIi8ZhTM+KRWyRyxHrtw==
X-CSE-MsgGUID: JnYADzj5TticgxMhHSKKEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="259208144"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 09 Apr 2026 06:00:19 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AF41E2FC57;
 Thu,  9 Apr 2026 14:00:18 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  9 Apr 2026 14:00:03 +0200
Message-ID: <20260409120003.2719-11-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775739628; x=1807275628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RMRl9YrSm+l/Tb6MM0krI2qwrH8y6HxojXkgpB/gqE8=;
 b=U6PfVPWI4fy1d2vq4aLc1uCx9mBoNAQQfaobcg8KFzGrCzohc9Da0wHh
 saMgsL7TQs1Ec3RlpyP07osBkY3bqtHPZByxZukoMPZG0rPYCQ3rPALXW
 mQoS+oayl12alpQczVt1wDB+wVRDUdxJeRZA7FdXN8KZyDqIqVoRuM1tx
 4BwY6UTLhiXlb2LU0BIGrK1jE5y1I3QVyNClYLviFW/YPWUvMcmJ+jSdV
 7/E4eBB6p6Q0C9q2xbwbmVXkWvIfBri/N4UqR5NgOSDTd0aAAYGc1x+e2
 TiHkSQjd7iJNluUlSei096tO0DJH8k0oeAM7/ZGyb+Sp7lsbYxdbAg5Rt
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U6PfVPWI
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/10] ice: use ACL for ntuple
 rules that conflict with FDir
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN_FAIL(0.00)[136.166.211.140.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: D04B73CAB5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

Flow Director can keep only one input set per flow type. After ACL
support was added for ethtool ntuple rules, the driver still only
selected ACL for rules with partial masks.

That leaves a gap for rules with full masks that still require a
different input set than the one already programmed for Flow Director.
Such rules go through the FDir path, build a different extraction
sequence and then fail because the existing FDir profile cannot be
reused.

Detect this case before programming the rule. Build the candidate IP
flow segment, compare it with the active non-tunneled FDir profile and,
when the input sets differ, offload the rule through ACL if ACL is
available.

Refactor the IP flow segment setup into a helper so the same logic can
be used both by the extraction-sequence configuration path and by the
conflict check.

Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2:
* Add this patch
---
 .../ethernet/intel/ice/ice_ethtool_ntuple.c   | 154 ++++++++++++------
 1 file changed, 107 insertions(+), 47 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index 21d4f4e3a1d0..13073387376e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -1425,6 +1425,102 @@ ice_set_fdir_vlan_seg(struct ice_flow_seg_info *seg,
 	return 0;
 }
 
+/**
+ * ice_set_fdir_ip_flow_seg - set IP flow segment based on ethtool flow type
+ * @fsp: pointer to ethtool Rx flow specification
+ * @seg: flow segment for programming
+ * @perfect_fltr: valid on success; returns true if perfect fltr, false if not
+ *
+ * Return: 0 on success and errno in case of error.
+ */
+static int ice_set_fdir_ip_flow_seg(struct ethtool_rx_flow_spec *fsp,
+				    struct ice_flow_seg_info *seg,
+				    bool *perfect_fltr)
+{
+	switch (fsp->flow_type & ~FLOW_EXT) {
+	case TCP_V4_FLOW:
+		return ice_set_fdir_ip4_seg(seg, &fsp->m_u.tcp_ip4_spec,
+					    ICE_FLOW_SEG_HDR_TCP, perfect_fltr);
+	case UDP_V4_FLOW:
+		return ice_set_fdir_ip4_seg(seg, &fsp->m_u.tcp_ip4_spec,
+					    ICE_FLOW_SEG_HDR_UDP, perfect_fltr);
+	case SCTP_V4_FLOW:
+		return ice_set_fdir_ip4_seg(seg, &fsp->m_u.tcp_ip4_spec,
+					    ICE_FLOW_SEG_HDR_SCTP,
+					    perfect_fltr);
+	case IPV4_USER_FLOW:
+		return ice_set_fdir_ip4_usr_seg(seg, &fsp->m_u.usr_ip4_spec,
+						perfect_fltr);
+	case TCP_V6_FLOW:
+		return ice_set_fdir_ip6_seg(seg, &fsp->m_u.tcp_ip6_spec,
+					    ICE_FLOW_SEG_HDR_TCP, perfect_fltr);
+	case UDP_V6_FLOW:
+		return ice_set_fdir_ip6_seg(seg, &fsp->m_u.tcp_ip6_spec,
+					    ICE_FLOW_SEG_HDR_UDP, perfect_fltr);
+	case SCTP_V6_FLOW:
+		return ice_set_fdir_ip6_seg(seg, &fsp->m_u.tcp_ip6_spec,
+					    ICE_FLOW_SEG_HDR_SCTP,
+					    perfect_fltr);
+	case IPV6_USER_FLOW:
+		return ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
+						perfect_fltr);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+/**
+ * ice_fdir_has_input_set_conflict - Check conflict with existing FD filters
+ * @pf: PF structure
+ * @fsp: pointer to ethtool Rx flow specification
+ *
+ * Checks if adding this filter to Flow Director would cause an input set
+ * mismatch with existing filters for the same flow type by building
+ * the segment and comparing with existing profiles.
+ *
+ * Return: true if there's a conflict (use ACL), false otherwise (can use FD)
+ */
+static bool ice_fdir_has_input_set_conflict(struct ice_pf *pf,
+					    struct ethtool_rx_flow_spec *fsp)
+{
+	struct ice_flow_seg_info *test_seg, *old_seg;
+	bool perfect_fltr, conflict = false;
+	struct ice_fd_hw_prof *hw_prof;
+	struct ice_hw *hw = &pf->hw;
+	enum ice_fltr_ptype flow;
+	int err;
+
+	flow = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
+	if (flow >= ICE_FLTR_PTYPE_MAX || !hw->fdir_prof ||
+	    !hw->fdir_prof[flow]) {
+		return false;
+	}
+
+	hw_prof = hw->fdir_prof[flow];
+	old_seg = hw_prof->fdir_seg[ICE_FD_HW_SEG_NON_TUN];
+
+	if (!old_seg || hw->fdir_fltr_cnt[flow] == 0)
+		return false;
+
+	test_seg = kzalloc_obj(*test_seg);
+	if (!test_seg)
+		return false;
+
+	err = ice_set_fdir_ip_flow_seg(fsp, test_seg, &perfect_fltr);
+	if (err) {
+		kfree(test_seg);
+		return false;
+	}
+
+	/* Compare the test segment with the existing segment */
+	if (memcmp(old_seg, test_seg, sizeof(*test_seg)) != 0)
+		conflict = true;
+
+	kfree(test_seg);
+
+	return conflict;
+}
+
 /**
  * ice_cfg_fdir_xtrct_seq - Configure extraction sequence for the given filter
  * @pf: PF structure
@@ -1455,57 +1551,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 		return -ENOMEM;
 	}
 
-	switch (fsp->flow_type & ~FLOW_EXT) {
-	case TCP_V4_FLOW:
-		ret = ice_set_fdir_ip4_seg(seg, &fsp->m_u.tcp_ip4_spec,
-					   ICE_FLOW_SEG_HDR_TCP,
-					   &perfect_filter);
-		break;
-	case UDP_V4_FLOW:
-		ret = ice_set_fdir_ip4_seg(seg, &fsp->m_u.tcp_ip4_spec,
-					   ICE_FLOW_SEG_HDR_UDP,
-					   &perfect_filter);
-		break;
-	case SCTP_V4_FLOW:
-		ret = ice_set_fdir_ip4_seg(seg, &fsp->m_u.tcp_ip4_spec,
-					   ICE_FLOW_SEG_HDR_SCTP,
-					   &perfect_filter);
-		break;
-	case IPV4_USER_FLOW:
-		ret = ice_set_fdir_ip4_usr_seg(seg, &fsp->m_u.usr_ip4_spec,
-					       &perfect_filter);
-		break;
-	case TCP_V6_FLOW:
-		ret = ice_set_fdir_ip6_seg(seg, &fsp->m_u.tcp_ip6_spec,
-					   ICE_FLOW_SEG_HDR_TCP,
-					   &perfect_filter);
-		break;
-	case UDP_V6_FLOW:
-		ret = ice_set_fdir_ip6_seg(seg, &fsp->m_u.tcp_ip6_spec,
-					   ICE_FLOW_SEG_HDR_UDP,
-					   &perfect_filter);
-		break;
-	case SCTP_V6_FLOW:
-		ret = ice_set_fdir_ip6_seg(seg, &fsp->m_u.tcp_ip6_spec,
-					   ICE_FLOW_SEG_HDR_SCTP,
-					   &perfect_filter);
-		break;
-	case IPV6_USER_FLOW:
-		ret = ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
-					       &perfect_filter);
-		break;
-	case ETHER_FLOW:
+	if ((fsp->flow_type & ~FLOW_EXT) == ETHER_FLOW) {
 		ret = ice_set_ether_flow_seg(dev, seg, &fsp->m_u.ether_spec);
 		if (!ret && (fsp->m_ext.vlan_etype || fsp->m_ext.vlan_tci)) {
-			if (!ice_fdir_vlan_valid(dev, fsp)) {
+			if (!ice_fdir_vlan_valid(dev, fsp))
 				ret = -EINVAL;
-				break;
-			}
-			ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
+			else
+				ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
 		}
-		break;
-	default:
-		ret = -EINVAL;
+	} else {
+		ret = ice_set_fdir_ip_flow_seg(fsp, seg, &perfect_filter);
 	}
 	if (ret)
 		goto err_exit;
@@ -2241,6 +2296,11 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	if (pf->hw.acl_tbl && ice_is_acl_filter(fsp))
 		return ice_acl_add_rule_ethtool(vsi, cmd);
 
+	/* Check if this would cause input set conflict with existing FD filters
+	 */
+	if (pf->hw.acl_tbl && ice_fdir_has_input_set_conflict(pf, fsp))
+		return ice_acl_add_rule_ethtool(vsi, cmd);
+
 	ret = ice_cfg_fdir_xtrct_seq(pf, fsp, &userdata);
 	if (ret)
 		return ret;
-- 
2.49.0

