Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A58559AE482
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 14:13:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D3DD608B6;
	Thu, 24 Oct 2024 12:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XGYIbJu1ISon; Thu, 24 Oct 2024 12:13:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1637606BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729771986;
	bh=c8CE3N7ycafm5MEnDutPURBMc7sRESS/RX2mPDpzpbs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NNGg02RZgaAjVNEv6L+po6yLVmnbKESikwoQ94c5krScwXlvHxxb/LZYJPZ8TBmwA
	 B+A0GxkYZM2wDR4GUopd7kEsL4SKnQnKHlX3+H/DVN+mzQL85keBDwP8wWrTO4DFOX
	 hBSbexPERh7evnVgEdLZqiRHyiHeXm4qxLxdGAv3SZdxdqvY+HKW1ZoKDS2NncAFc+
	 PTnjhMBYaCmZHdsW/WHKwjx/PsEMXHh9Sw04fpdbx92KV0yUDl0wPXSFCTrXNKmya/
	 xyj7vsYtHEWJMqhIO7Gr6j+4LrRURpMiuvNuDYmxF3RD0YhFu/Q0gaD4OAqgLkNgtI
	 wB8yeQPQVmPKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1637606BA;
	Thu, 24 Oct 2024 12:13:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 000A55A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D55824026F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:13:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SF0ZE3E-Ob_8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 12:13:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F01AF40AC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F01AF40AC1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F01AF40AC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:13:03 +0000 (UTC)
X-CSE-ConnectionGUID: rVwbGEdvTvqckd6x/mNIhw==
X-CSE-MsgGUID: knSPTrgoTde9q7gdpeY1vA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40008342"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40008342"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:13:04 -0700
X-CSE-ConnectionGUID: Sw7L44ZHQcmrDxWdgfUTGg==
X-CSE-MsgGUID: Z8CvajSmSHeDasj/KKYMaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85184537"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 24 Oct 2024 05:13:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Thu, 24 Oct 2024 14:12:30 +0200
Message-ID: <20241024121230.5861-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
References: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729771984; x=1761307984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bNMiaOO8wUNylIk9gISuKsnF9jJ0waLC+cK5MBdQs1o=;
 b=gnYcg52UbVtsJRbQ8DTkMNRJIPBDpbCjYrvg5ORvYxsWtd45D5YzdT4L
 KRKzpCgbsmCsNu+COePOySS04MhRgcdw9dprskF5fivj4cMBJMQ93+aaG
 fdqE9L0gJuJj01Ok4/etdPyLbU88Yo+OJieHep3Ulp+OrIl2X4gcUD0PR
 bHzv7OQvrNL/HamRxcnhW1w6p+GJ+pWfEKpOQaa+ALM9tELIP4kWGG2mb
 7DT3W+RLmbHM6TgYk5a8blTu/Oz0GdQdQwejF3cSt3+75kHoYohGYLldG
 gxjaplQCpxu5Cr8BmN6BcalEatf7L06aProCaLBKMed64qbdojO4fXYON
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gnYcg52U
Subject: [Intel-wired-lan] [iwl-next v5 9/9] ice: init flow director before
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

