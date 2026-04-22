Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDgQErbA6Gm9PwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:36:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A14144605F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:36:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C401A617A8;
	Wed, 22 Apr 2026 12:36:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7g1meiHSku8A; Wed, 22 Apr 2026 12:36:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18D9E617AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776861360;
	bh=dnZsxVsFr22d5OmToS2JmCiGmh3eHykezaEML6y2Zz8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bw66N2D5PSncPslolMXJVBoCSEgClzSuaboI+oPU4U11QmFIGdF1fADxyvebNpDi2
	 uhTArNnBTn+tmge+83moKlZa2wh24SqinVFH4B9IOoPjDR06wrTpshOFrc0YQh8BXd
	 VFmSkxyAOAamemmok6QRixw8edERNhiCarHjQFLhq1ejJTrZ85eA4ZQBM3vACHFZom
	 7muSysleyQ3QGRQvr7PYI/bwO0/NFlX04Neff2eBEZQj+vximftcqnnHLPHYfFP47N
	 rObP7bYGz++HzaQBpal3yEDKLzUt4YihsAedCYSvfQITWbk7sTt4OPclQQc56n7Bt0
	 lrm8U8HTpa7bA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18D9E617AE;
	Wed, 22 Apr 2026 12:36:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41CEE24D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33E378423C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:35:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BuIV0lZjDgxS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 12:35:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E3A684222
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E3A684222
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E3A684222
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:35:53 +0000 (UTC)
X-CSE-ConnectionGUID: yft8iJKNR1SpzYBn64IKMg==
X-CSE-MsgGUID: +WFCMoidSVWAEIOU2FO4BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77826166"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="77826166"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:35:54 -0700
X-CSE-ConnectionGUID: jnPp+D69RzWk8HTMMSZLhg==
X-CSE-MsgGUID: SIJp+xLLQbOKFjQTNtXCzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="229167437"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa007.fm.intel.com with ESMTP; 22 Apr 2026 05:35:52 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Apr 2026 14:31:44 +0200
Message-Id: <20260422123144.485930-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260422123144.485930-1-grzegorz.nitka@intel.com>
References: <20260422123144.485930-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776861354; x=1808397354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wDLA3/GJGEO1IbM955Q5FElcfpvCOUEomPnwlKEBe7g=;
 b=XtRsKYsHLMMIOvBawBL7pVE0F3l7lPgw1J3Dd4mnjYZWONW7GkpKKe5Y
 /csQC2k2c2xQ7u1qLX5tshUe24HDkDEjcV/wn0azWzm400gLPEXymVQwY
 9li/0BgpcfDCQn7GQ2VsXQjt7LYDc2ywQ2Gh1nE7xLN3uJ5CgRqFNOica
 C6rrEcQFJ5ChTgCk3XF0GKnO0Nl90dXGU2+9SNgpo6vYDkNUyXCrYCi+T
 lET8sjunlJYCVxK7xd6vdikoRkPvISRABiun18orZ1zkKwuMxnaGm/rZJ
 UJR1S4MZWkEpT6aeO0L+y4MDQLAMGcRzV5pKPROGv60JPqpDar8Iz97lo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XtRsKYsH
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: ptp: use primary NAC
 semaphore on E825
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.893];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A14144605F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For E825 2xNAC configurations, PTP semaphore operations must hit the
primary NAC register block so both sides coordinate on the same lock.

Commit e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825
devices") updated other primary-only PTP register accesses to
use the primary NAC on non-primary functions, but left ice_ptp_lock()
and ice_ptp_unlock() operating on the local NAC. As a result, secondary
NAC PTP paths can take a different semaphore than the primary side.

Select the primary hardware in ice_ptp_lock() and ice_ptp_unlock() when
the current function is not primary, keeping semaphore operations
symmetric and consistent with the rest of the 2xNAC PTP register access
path.

Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 devices")
Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 8bb94e785f2a..2c18e16fe053 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5264,9 +5264,13 @@ static void ice_ptp_init_phy_e830(struct ice_ptp_hw *ptp)
  */
 bool ice_ptp_lock(struct ice_hw *hw)
 {
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 	u32 hw_lock;
 	int i;
 
+	if (!ice_is_primary(hw))
+		hw = ice_get_primary_hw(pf);
+
 #define MAX_TRIES 15
 
 	for (i = 0; i < MAX_TRIES; i++) {
@@ -5293,6 +5297,11 @@ bool ice_ptp_lock(struct ice_hw *hw)
  */
 void ice_ptp_unlock(struct ice_hw *hw)
 {
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
+
+	if (!ice_is_primary(hw))
+		hw = ice_get_primary_hw(pf);
+
 	wr32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), 0);
 }
 
-- 
2.39.3

