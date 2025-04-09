Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6717EA823AA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 13:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C9A44056B;
	Wed,  9 Apr 2025 11:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wubLp_JdGpVX; Wed,  9 Apr 2025 11:36:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8311B40BD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744198607;
	bh=gStf2RzsV9zu+jmm7qqyAJGgD01nL9xYYi48tipKAcs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qLthdMsiHBLYrn2LdZX5jKSsxhCc7kzSssW7B4KE1+u6vMrCCCM4Rsfw85Jcr9SWH
	 LLlytviZz67ZLsOk6iCZEOQnIu6aD0NKoebGVuH02meFT/G4AZdEjW2QHk9v0icZU0
	 EK2H4gkYQ+BRfcHaRC9XbjU9nUtzGFBxdcrT3xqR60tlaurJz4rCU+WDjRxyBJVnxA
	 g8xJMNpL/tU+UGb7dGWwRfZEWP1Huri8oo64cQUtQ2LmSFoJGSz1dObQ5xmLbyBNSN
	 csQlPSZD3obdkeUz5JWU/DzugY2jzu+6KUzR5KxVRkmO/FlBSA/AjQFCMIlMd/r5sW
	 jRU0gIYDJgJaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8311B40BD3;
	Wed,  9 Apr 2025 11:36:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 03661D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E91F840BD3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHW66ILPZOPh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 11:36:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DBF140625
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DBF140625
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DBF140625
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:45 +0000 (UTC)
X-CSE-ConnectionGUID: zc+M+SLOQwCFIscCN5FWxw==
X-CSE-MsgGUID: 82Id4bfIRAmJy4tYdOynPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45799648"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45799648"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:36:45 -0700
X-CSE-ConnectionGUID: 9//HFy2QTE6DkXx6HOxboA==
X-CSE-MsgGUID: e2ZSjSbOQrufvJdz3yAIpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="159536677"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa001.fm.intel.com with ESMTP; 09 Apr 2025 04:36:42 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Wed,  9 Apr 2025 13:36:23 +0200
Message-ID: <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744198606; x=1775734606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CAy8k0n5r7NmP0cM4NF6+yLjW+YXMQ4/bf2tOLA1Vxc=;
 b=I6Eq/JZoXc7wNWiBU5SsIWUKPKPCYN64reyZYwbQaM9XOCVErxq1AOnJ
 Fay+ChAEJCA6rZMAjb/6kXkgJQvOQRphe18pjtAvokXQ6UWNsLS3WZoM8
 2daf/3405jz87NyZHsigYDUVEKd17rtNXODOsdTv+DJZ/Xy6QRxnBeoDU
 cOJPQlJId/FPejYvGmRyRivXLS5fWwUF5LTdU76i13tXLjiMtCuBGN1jy
 Yn/67QYlrV8Pssn5ambYl4vOQn92Ei0w87TFZOIKiEom0VEOjVb4sRAsz
 cmUdyHqq9r+KdVUj6vAN5SGzIxE4RAOueoB5VH9NXoj/kI6qc+A293/ip
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I6Eq/JZo
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: add link_down_events
 statistic
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

Introduce a new ethtool statistic to ice driver, `link_down_events`,
to track the number of times the link transitions from up to down.
This counter can help diagnose issues related to link stability,
such as port flapping or unexpected link drops.

The counter increments when a link-down event occurs and is exposed
via ethtool stats as `link_down_events.nic`.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 3 +++
 3 files changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7200d6042590..6304104d1900 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -621,6 +621,7 @@ struct ice_pf {
 	u16 globr_count;	/* Global reset count */
 	u16 empr_count;		/* EMP reset count */
 	u16 pfr_count;		/* PF reset count */
+	u32 link_down_events;
 
 	u8 wol_ena : 1;		/* software state of WoL */
 	u32 wakeup_reason;	/* last wakeup reason */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b0805704834d..7bad0113aa88 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -137,6 +137,7 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("mac_remote_faults.nic", stats.mac_remote_faults),
 	ICE_PF_STAT("fdir_sb_match.nic", stats.fd_sb_match),
 	ICE_PF_STAT("fdir_sb_status.nic", stats.fd_sb_status),
+	ICE_PF_STAT("link_down_events.nic", link_down_events),
 	ICE_PF_STAT("tx_hwtstamp_skipped", ptp.tx_hwtstamp_skipped),
 	ICE_PF_STAT("tx_hwtstamp_timeouts", ptp.tx_hwtstamp_timeouts),
 	ICE_PF_STAT("tx_hwtstamp_flushed", ptp.tx_hwtstamp_flushed),
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a03e1819e6d5..d68dd2a3f4a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1144,6 +1144,9 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
+	if (!link_up && old_link)
+		pf->link_down_events++;
+
 	ice_ptp_link_change(pf, link_up);
 
 	if (ice_is_dcb_active(pf)) {
-- 
2.47.0

