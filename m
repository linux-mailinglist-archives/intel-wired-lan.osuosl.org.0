Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE9A9BBD74
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 19:46:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DF4B404DF;
	Mon,  4 Nov 2024 18:46:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OLPZzB5NxniK; Mon,  4 Nov 2024 18:46:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC5F9404D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730745964;
	bh=BJ26fkSihucgcIL8q9y3qSn+b+CjV+SXDnoV4m2JG/k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qeKYMDi5uAHRhwryx7pGqPO3GPDqZG1U8XzAAyeKqEYuJscoR2GsPfGjQGt401OLa
	 dF09TzmUchDpXXdmV6EyQFwevKhoS+TRKvvdLwPv22yhram+5DSXcKhORll6mi1Uik
	 YaV3BlF0l5JeKqU+Ct+8LLBQGrtpOefZkyNQP2mK/kG5+5pQbSUvKX5AdZ+PMzUG1l
	 qYri2Y9HGJxEgB/RrrAf9ZVgXYlp2fEP/bEZbLfT6FYcV7MG27Syz0iT4TX0ZlGq7a
	 QGdkSiIIGHRUkaN80wU4Gn4UPfs5MzulCe5Vq5JGgc7qszEImNnZp2yhmn4KgO2Zbv
	 2LzwJ2BdXEFBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC5F9404D4;
	Mon,  4 Nov 2024 18:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D3F73B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 18:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DE1D80BA3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 18:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tIY2-ppQJ4Pu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 18:46:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6C7480DBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6C7480DBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6C7480DBD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 18:45:59 +0000 (UTC)
X-CSE-ConnectionGUID: lWigN4pwTyCRbHv0OeGgyw==
X-CSE-MsgGUID: E83wG8nfQMWylKYG6ZCRmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34248723"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="34248723"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:45:59 -0800
X-CSE-ConnectionGUID: r1J37tPaR3+tRmbp17DQ2w==
X-CSE-MsgGUID: e4WPHgxoR++LQSEoLbrzUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="88497487"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 04 Nov 2024 10:45:58 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BB01628781;
 Mon,  4 Nov 2024 18:45:56 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Mon,  4 Nov 2024 19:49:09 +0100
Message-ID: <20241104184908.632863-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730745960; x=1762281960;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r1QhwuPbs8ubNXAmG4ArE39tL4xRdB4Ohl4TH4RUulM=;
 b=Yw0zyxGqvm9bnXN2l5Wj8OPzukVVeTtcuMh56PZRKmr84TmWMKG4e2Gb
 cedbqGeihekM82QogSs5SkVZcWnsMZ/wUHRTh9VNPfnBfrRNv6thuz1gJ
 s56GHOIXc6a9HKTMOoOIjTwvzob7Bf9xZNel/E8sH4+L4OHiEIRnm4aAz
 QJ2ptVjDt3jFG0plSdb8EgLmCUjVCR10PEExacXkPZ80j16EKXJrwJZQo
 fcbnhMRbf2+rmWKQ4CONLYH9CwAxZHdo9xOpC/cAuhCZALeBufJ4wTX8C
 fmj86faqV+SuQFMX9UxcKsze3Cv2uxwb6Zf4qS5eUtH6PqMivySIdRtSN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yw0zyxGq
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VLAN pruning in
 switchdev mode
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

In switchdev mode the uplink VSI should receive all unmatched packets,
including VLANs. Therefore, VLAN pruning should be disabled if uplink is
in switchdev mode. It is already being done in ice_eswitch_setup_env(),
however the addition of ice_up() in commit 44ba608db509 ("ice: do
switchdev slow-path Rx using PF VSI") caused VLAN pruning to be
re-enabled after disabling it.

Add a check to ice_set_vlan_filtering_features() to ensure VLAN
filtering will not be enabled if uplink is in switchdev mode. Note that
ice_is_eswitch_mode_switchdev() is being used instead of
ice_is_switchdev_running(), as the latter would only return true after
the whole switchdev setup completes.

Fixes: 44ba608db509 ("ice: do switchdev slow-path Rx using PF VSI")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b1e7727b8677..8f2e758c3942 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6361,10 +6361,12 @@ ice_set_vlan_filtering_features(struct ice_vsi *vsi, netdev_features_t features)
 	int err = 0;
 
 	/* support Single VLAN Mode (SVM) and Double VLAN Mode (DVM) by checking
-	 * if either bit is set
+	 * if either bit is set. In switchdev mode Rx filtering should never be
+	 * enabled.
 	 */
-	if (features &
-	    (NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_VLAN_STAG_FILTER))
+	if ((features &
+	     (NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_VLAN_STAG_FILTER)) &&
+	     !ice_is_eswitch_mode_switchdev(vsi->back))
 		err = vlan_ops->ena_rx_filtering(vsi);
 	else
 		err = vlan_ops->dis_rx_filtering(vsi);
-- 
2.45.0

