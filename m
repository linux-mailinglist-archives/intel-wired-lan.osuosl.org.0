Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA047F11E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 12:23:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E409F60BAE;
	Mon, 20 Nov 2023 11:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E409F60BAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700479410;
	bh=6F4V6zQgWhFAAf3q2KsPDE/fo6hsLGW/+2FOCDmvuMk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T2hMQIcMmZmzXgUMUYmtxVD7uvvEgpPx96e3KGMcAGDifEeIQITAuxRS2J4zQBEYP
	 IuvWqec5o8Dis7jIvQMhzmiU9cki8zdsGPgEbgfxuKltRXxuNgLzIJ4t5e4/21MV4e
	 dlOUJXfMYlJpuxeRDABBR9nUmlExKyPZSN7MzBn2SPOtbfaUuA9NK2yR8gTDuFOkuF
	 zBAiQioKjrQJI5d/dGHte4jlqy6SpMtlCmZLdWsMgfWAes6v6PSzmTIT9z3JZwdmb/
	 B17ISF3wBiDeJ1tLVj7bhZyaid6q1FM2fcUMohDCstBrKnILevmXiPtdAPpHLxtJjq
	 bQ+cANTVPwdfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9xcl5B7Wk7i; Mon, 20 Nov 2023 11:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4A62608A5;
	Mon, 20 Nov 2023 11:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A62608A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD76A1BF380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C291D608A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C291D608A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1AdvfpO-F-H2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 11:23:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74B9A6073F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74B9A6073F
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="394448373"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="394448373"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 03:23:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="1013560275"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="1013560275"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2023 03:23:19 -0800
Received: from DevelopmentVM.nql.local (s240.igk.intel.com [10.102.18.202])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 38E1A3741B;
 Mon, 20 Nov 2023 11:23:19 +0000 (GMT)
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Nov 2023 12:27:26 +0100
Message-Id: <20231120112726.149409-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700479403; x=1732015403;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7vtqokKwxJJbWKFfT8pyxE0rTuSw9x7wJNXTLZU2trk=;
 b=O9XpDniROuvdn+2XMsyyQAfIc0uIhIxruyxIzzdQk//VlYqpGszJCC/W
 0sy4ZjMhHjEyaO2MNrRhPSx/HO0LpOz64lF2SUM67yuXwrKGC8Z2CJBCT
 P2R9oKKj/kg915NFBB0/saaczwo6bYIKh00wezu2/1ekfdbmqc0F3gHXz
 jxNUdaiambx1Upc2aNlxkEsvqA8I7C3ut6s9VPdKkFRvsWoHjUHEX7LFW
 fs6L/84s8QdeuVOMNNYewkYrQlHYu7LE2NzqEWUFSQEg6ayQv04kb0k2r
 6Xn4uFokPr/P7ogO7Ws/ycNFyXmDOg7RN6MHNj6Ou827N9kYss7o85mSo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O9XpDniR
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was found that this statistic is incorrectly reported
by HW and thus, useless.

Remove it.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 -
 drivers/net/ethernet/intel/ice/ice_main.c    | 5 -----
 drivers/net/ethernet/intel/ice/ice_type.h    | 1 -
 3 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a34083567e6f..cda98e185254 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -129,7 +129,6 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("rx_oversize.nic", stats.rx_oversize),
 	ICE_PF_STAT("rx_jabber.nic", stats.rx_jabber),
 	ICE_PF_STAT("rx_csum_bad.nic", hw_csum_rx_error),
-	ICE_PF_STAT("rx_length_errors.nic", stats.rx_len_errors),
 	ICE_PF_STAT("rx_dropped.nic", stats.eth.rx_discards),
 	ICE_PF_STAT("rx_crc_errors.nic", stats.crc_errors),
 	ICE_PF_STAT("illegal_bytes.nic", stats.illegal_bytes),
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 81044cc10931..ddeb43059126 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6732,13 +6732,11 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 		cur_ns->rx_crc_errors = pf->stats.crc_errors;
 		cur_ns->rx_errors = pf->stats.crc_errors +
 				    pf->stats.illegal_bytes +
-				    pf->stats.rx_len_errors +
 				    pf->stats.rx_undersize +
 				    pf->hw_csum_rx_error +
 				    pf->stats.rx_jabber +
 				    pf->stats.rx_fragments +
 				    pf->stats.rx_oversize;
-		cur_ns->rx_length_errors = pf->stats.rx_len_errors;
 		/* record drops from the port level */
 		cur_ns->rx_missed_errors = pf->stats.eth.rx_discards;
 	}
@@ -6878,9 +6876,6 @@ void ice_update_pf_stats(struct ice_pf *pf)
 			  &prev_ps->mac_remote_faults,
 			  &cur_ps->mac_remote_faults);
 
-	ice_stat_update32(hw, GLPRT_RLEC(port), pf->stat_prev_loaded,
-			  &prev_ps->rx_len_errors, &cur_ps->rx_len_errors);
-
 	ice_stat_update32(hw, GLPRT_RUC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_undersize, &cur_ps->rx_undersize);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 16615e322382..306d0141ea8e 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1001,7 +1001,6 @@ struct ice_hw_port_stats {
 	u64 error_bytes;		/* errbc */
 	u64 mac_local_faults;		/* mlfc */
 	u64 mac_remote_faults;		/* mrfc */
-	u64 rx_len_errors;		/* rlec */
 	u64 link_xon_rx;		/* lxonrxc */
 	u64 link_xoff_rx;		/* lxoffrxc */
 	u64 link_xon_tx;		/* lxontxc */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
