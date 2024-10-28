Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A929B2C46
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 11:04:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54F1B60AE3;
	Mon, 28 Oct 2024 10:04:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DliylJwZUoGx; Mon, 28 Oct 2024 10:04:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B79DF60B29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730109858;
	bh=c8CE3N7ycafm5MEnDutPURBMc7sRESS/RX2mPDpzpbs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HQ5d9j6kzzwRkhAKQ+WCF3YDfMY2/2D08ZhptQtmCc0hUWCrGUmlerQ51WyIRYVUy
	 H8l28YPjqNAphK1s45TtTEH1k8Lc181coiUHpfWkd6XmPI9dAnhF79J0uVaFnJc45U
	 5Upi6L3RAzCsztKh8HNWdrRSIPc9zfJeb5PYvLHC5hEzIzdvexya9cGTbwuaxsEhUX
	 qK+lrTaSLNbNiIC4f9hwwxccmMV5wIxek3TlDfYWnHwcTsoIyMCSuEE6PRX9qzGe7R
	 9mfjWJaD5B5tm2AqpZMkFK7p0v5Z37oSx78/WHBTon0ftUpovwIU7XU7qsqQAk1wrG
	 TaNtuulWUONzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B79DF60B29;
	Mon, 28 Oct 2024 10:04:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 635C6AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4559381A64
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:04:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fyKGgzyaA6I4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 10:04:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8EF5A81A5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EF5A81A5C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EF5A81A5C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:04:15 +0000 (UTC)
X-CSE-ConnectionGUID: tAaT5CEvQtidhUcRyJfwTA==
X-CSE-MsgGUID: eDBzvCL2T7ecliHbmTyn4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29560811"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29560811"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 03:04:16 -0700
X-CSE-ConnectionGUID: Nzw1Den3Q6mH0npFuWkOjg==
X-CSE-MsgGUID: XkaUc/syR2GGSNXuLVtt1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="86182517"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 28 Oct 2024 03:04:12 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Mon, 28 Oct 2024 11:03:41 +0100
Message-ID: <20241028100341.16631-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730109856; x=1761645856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bNMiaOO8wUNylIk9gISuKsnF9jJ0waLC+cK5MBdQs1o=;
 b=b6TNgGP2cZdiB1nOJSqyLsNLk6FyW7HW6rctOGdwGD4fnzj0Vdo69MSX
 H5LsvS7QmFGJ9T5n2QMBHF7i+DEqCHhMcpHJFuxR79jQq3B1biF6O/iSR
 za4yLwbPLwk5RFUpNFHiw6LRh2OjksS5CJmcGNHK7Qmb+xsWPQW2hWRGz
 D2V+M42kL1V6EC2Bvjkuzcs2/sFNsawswWqnZjFX9jeoFxY1nf7TEf35k
 wYUlF/WZ4m8EsDs0KMxj83sE09mZCWI9q1uGK48isnTaQKT3MeEgNWbfb
 hfpQigr2VdbIkHhXygg5hN6kggJgn5d7WSwD+yYGrMaEejlEQD4CJcS15
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b6TNgGP2
Subject: [Intel-wired-lan] [iwl-next v6 9/9] ice: init flow director before
 RDMA
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

Flow director needs only one MSI-X. Load it before RDMA to save MSI-X
for it.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f3dd300a7dad..b819e7f9d97d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5168,11 +5168,12 @@ int ice_load(struct ice_pf *pf)
 
 	ice_napi_add(vsi);
 
+	ice_init_features(pf);
+
 	err = ice_init_rdma(pf);
 	if (err)
 		goto err_init_rdma;
 
-	ice_init_features(pf);
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5180,6 +5181,7 @@ int ice_load(struct ice_pf *pf)
 	return 0;
 
 err_init_rdma:
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 err_tc_indir_block_register:
 	ice_unregister_netdev(vsi);
@@ -5203,8 +5205,8 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
-	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
+	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
 	ice_unregister_netdev(vsi);
 	ice_devlink_destroy_pf_port(pf);
-- 
2.42.0

