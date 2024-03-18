Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E82887EDB2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 17:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B4936085B;
	Mon, 18 Mar 2024 16:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAaEf0NLOBJy; Mon, 18 Mar 2024 16:39:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C51A46084B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710779946;
	bh=qb8w6+Wcm33aCtKvrng43+C/dBLwyUC22sE2SSF2bgE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=k83aZ2tsErq8XEftWbpY4nlweuFTQVajJ2uMh8QwXPyEoFDHnv7fEOEuGAq4aKNZ+
	 V7WuVleJVbhj8ZIrEg6EpA2UPxrQWz7tyoW+YB0Sx4cQKFyGbyBuZEfiFmn+lgeid5
	 TnDW8nZDEMblXzAsJ5TFSJnG30EQJrIUl/HRvD8/wnalNdBunpq1fyL0nOsyWvBgwv
	 Hqcca8bPLnTboI3oxxp3L+YTHM8SIJKLbwJiunDDl5Lrq3UdxxvG2drxIP9O4aQAUO
	 okj14cKt7VORBB50gX3lPviChnfXlNS3agNo+hZrhNBQuqXjq1Ck8LIf+hkJu4Aors
	 mmGFQUucCeuOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C51A46084B;
	Mon, 18 Mar 2024 16:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0004E1BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 16:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF7766085B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 16:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZnX_0ipWp5q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 16:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2185860748
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2185860748
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2185860748
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 16:39:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="16244483"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16244483"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 09:39:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="50943567"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa001.jf.intel.com with ESMTP; 18 Mar 2024 09:39:02 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Mar 2024 12:29:57 -0400
Message-ID: <20240318162958.991829-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710779944; x=1742315944;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GwTHKnDlt167ceeXVL3oZcOtqsHNp1no/L0ECCPXQsQ=;
 b=IFo95WSXgrl+mtdOD2CPX3sKOTEHaxhvA/Mr7jpzKV3Rf9Ovp89j6Bcv
 7ykKup1X69StDPLbWh8hwe7KU6yOKf3jiWg3sLCpMEit8KSGKgCPs1KfE
 Na/Xluw/9P2Ss/iupUJgV5p3aVgFFN4erdxqScEZBtnKlPcleknP/BmIw
 wpPlSOYeNFJEJ94z9bEUQWZxxQjd7qVGibSRAHlo3ktK8cxkmilhA98WL
 nxGONT0/WeAf2hraWfq+6nPy1OQvfkyPuWR3d1wexzjQTz85ArTbCix/h
 zRGweymSeHhMGJngriCr+//ZevyaeS6B75gUkliLtdhyAsfF1JyIV1X5p
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IFo95WSX
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix package download
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

Previously, the code would assume that only "Modular Signature Segment"
existed. Given a package with both a "Reference Signature Segment" and a
"Modular Signature Segment" the download would not have been successful
because an incorrect sequence of buffers would be sent to the firmware.

Update download flow to detect a "Reference Signature Segment" and to
only download the buffers in the signature segment in this case, and to
skip downloading any buffers from the configuration segment.

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

