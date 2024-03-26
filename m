Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7A788CFA8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 22:09:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70C4040880;
	Tue, 26 Mar 2024 21:09:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmvQqC7Gayew; Tue, 26 Mar 2024 21:09:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACE644061D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711487349;
	bh=gi1iGb3J0Zlsn/PRNaLaEsUXBOAM1fEjaZ3IDecO6+U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dg2+NIXhEls6n/XU/+Jz9n4GzjcK4LjIJZ2M0ruNYO+SGncZNvAyMjI1FDnvUoGw+
	 9DDFSedPU0MNml1xZVbcH50sfAmp1jD30EBjQCQ4Pi6Mb6CHknlwu+HbRqbvVqyo1/
	 eGYLlHjaD4SzalpxZmNNRBbeSbR/IhYfRKhN7Sl9bu8ubBtyPolfIX34Mrrz/kcu4L
	 W6edEl64rfj3hHk50xrMyOCDGFtn7bD/v8Qe7dWRj/006QlUezDSf1TsCB+Iukyf1d
	 rlwrZpNgCIvzs2cnkjbZ/NYFKgJzGKy868tagqbVMZx9A/wpupjF/y2DeJRAa+MYKR
	 vmkxtI5FJhQbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACE644061D;
	Tue, 26 Mar 2024 21:09:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C9F11BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 21:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06DC240659
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 21:09:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GPOqnhwQV7m6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 21:09:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ABD8B4061D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABD8B4061D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ABD8B4061D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 21:09:04 +0000 (UTC)
X-CSE-ConnectionGUID: C6Z4xm1jSPuAoUO2Zli3YA==
X-CSE-MsgGUID: M2z5xv/HTNSLjGAE+VZ4nA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="29041834"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="29041834"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 14:09:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="15929682"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa010.jf.intel.com with ESMTP; 26 Mar 2024 14:09:01 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 16:59:51 -0400
Message-ID: <20240326205951.1596963-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711487346; x=1743023346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3OdQELhaC5ZOaKV04FErr0iCHPZO8iusiYFqdB7eQDs=;
 b=etIJqPSK86kGhuFaDnb/72X5G8aPAYb1pAWHcWkcWg0zgOG3oGGY91R4
 tqTzoTDxiPqUCyyKwSDOXc4Sy/saJF4rg0n9WDpq1tSMZnHFX2CQncSl8
 fucK4d0pchlT1PtG+0TI/EuF60gjv96yLvQt/dpYrowCk0nmDoLQLmSot
 FxoWt9wQEaRvSHdMZYXkr2koupp9pG2ntB6GKk/B7bfjbvLR87Mjov0sR
 i83eaD3YzFPg8jLwqLco4DJCd/8UuhyIEAtWcx5z3PqRGwaNrSiZK00td
 EAaT/yCKtwdbuBp2GQULOxeLVUWjwV+s/GgNNcyWafvUtK5hxImIcIFo4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=etIJqPSK
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix package download
 algorithm
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
Cc: Dan Nowlin <dan.nowlin@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dan Nowlin <dan.nowlin@intel.com>

Previously, the driver assumed that all signature segments would contain
one or more buffers to download. In the future, there will be signature
segments that will contain no buffers to download.

Correct download flow to allow for signature segments that have zero
download buffers and skip the download in this case.

Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 8b7504a9df31..90b9e28ddba9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1424,14 +1424,14 @@ ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
 		goto exit;
 	}
 
-	conf_idx = le32_to_cpu(seg->signed_seg_idx);
-	start = le32_to_cpu(seg->signed_buf_start);
 	count = le32_to_cpu(seg->signed_buf_count);
-
 	state = ice_download_pkg_sig_seg(hw, seg);
-	if (state)
+	if (state || !count)
 		goto exit;
 
+	conf_idx = le32_to_cpu(seg->signed_seg_idx);
+	start = le32_to_cpu(seg->signed_buf_start);
+
 	state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
 					    count);
 
-- 
2.41.0

