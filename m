Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37694806C49
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 11:39:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43DD441B5E;
	Wed,  6 Dec 2023 10:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43DD441B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701859182;
	bh=cS+VdcYINBnsrtXkF8TL+weqrUwqJtBxy61p1XgzqH0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Lz1rytSLmgYp6AvczAVLNh/uhkkTczfAyQLToROqr9vhD+QtWVvbRQLrgdsa6iIQM
	 45S4u7lwUySa3fff4AedjCfOxlf/dpJOJkL6Cx6w4ZYnAd4gKENObxfsYqonWV1hDh
	 5WmGobeDIHZbuJgLWljIpCzC3SveMpV5niMJnpzlpc21ZT3CNZ//XKqsKV551Ay/PU
	 7OSHRaT/OGn/7JNEiZow9qA4k82TlfmA4QgsXJQQKjztI213eXZLAQqeo0BiHsuOFc
	 YhUzhVnJvAVFx2GxeS+U9CcpLcQip4GoERqSqwQRZEbc8/E7UZ1aQD9kW9tGe63PXj
	 I0y4ON0oHFalg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcuThnTd3PAh; Wed,  6 Dec 2023 10:39:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14B8D41579;
	Wed,  6 Dec 2023 10:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14B8D41579
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70D751BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 10:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 464844028D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 10:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 464844028D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-tE6L6qpDHh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 10:39:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1916A400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 10:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1916A400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="396831058"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="396831058"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 02:39:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="771258314"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="771258314"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 06 Dec 2023 02:39:31 -0800
Received: from DevelopmentVM.nql.local (s240.igk.intel.com [10.102.18.202])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F3256332C7;
 Wed,  6 Dec 2023 10:39:23 +0000 (GMT)
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Dec 2023 11:43:33 +0100
Message-Id: <20231206104333.141792-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701859174; x=1733395174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OSb8jK1aKTmLGdq/yXys0RdhQey8FalM7aYHrKABLdw=;
 b=DJxZj9rpuq3X5XyxFBed1GMAAAIsuFwUcIGJH9gmq4P7eYJGx29wAe7T
 o+jHzkLyN9XAJnfrxbPFDVpIYaMwOeaHYcB1NBbqbdeM9aCWgRBmP123A
 MSaGX/x9V35qbut19Ip/Y6p2E0faYOps5AUpkZM10/QN9TAaYb6+iUmOJ
 4HBzgNzEUTwPRZnavCYUCCOWIHUdVrX8KUupzNwTVhfaGaYE1CUxZOg3I
 CNdpYt2oMxPUOJcc5EbzxjDNE+Kl3NhEdXHmeLW4xCYOgOCXdnx0JyDnH
 On3v1sp1YTJIDSrm60OdtvpG/gWSMGV0j9zdsJZ4DiHCT1EY9O3ZYWoGp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DJxZj9rp
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was found that this statistic is incorrectly
reported by HW and thus, useless.

As RX length error statistics are shown to the
end user when requested, the values reported
are misleading.

Thus, that value is no longer reported and
doesn't count anymore when adding all rx errors.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 -
 drivers/net/ethernet/intel/ice/ice_main.c    | 5 -----
 drivers/net/ethernet/intel/ice/ice_type.h    | 1 -
 3 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index bde9bc74f928..9a62d74f9379 100644
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
index 08691469b489..09d508df3deb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6822,13 +6822,11 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
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
@@ -6968,9 +6966,6 @@ void ice_update_pf_stats(struct ice_pf *pf)
 			  &prev_ps->mac_remote_faults,
 			  &cur_ps->mac_remote_faults);
 
-	ice_stat_update32(hw, GLPRT_RLEC(port), pf->stat_prev_loaded,
-			  &prev_ps->rx_len_errors, &cur_ps->rx_len_errors);
-
 	ice_stat_update32(hw, GLPRT_RUC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_undersize, &cur_ps->rx_undersize);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1fff865d0661..e1ded29ca59f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1002,7 +1002,6 @@ struct ice_hw_port_stats {
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
