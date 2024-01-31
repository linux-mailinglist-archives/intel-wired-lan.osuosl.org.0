Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FE0844A74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 22:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA3E2845B2;
	Wed, 31 Jan 2024 21:52:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA3E2845B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706737940;
	bh=fj5+KnvCjkCA1VROQAJb+6GvG3Q73hjeaDvJBILdGpQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yNlR5ORuPM4bmGzEK58iiYTJ4KgSJmckHzu0vCBbydvZOWl93N8B6DVd7ZvBvBCQI
	 BTxrKS3IXS5LDAY9ALx9kVSIRplF0sRry4GoOER4TPbg1TaMhYmVFAX8jozJFxS1Nc
	 sprU+II7T6x1bDfTgeKBZsZ8+H16QsXgRaYICKA3d+O1Aw8Cv/+G8lNH9P/k82b6Nv
	 0yAajqE5X9EhdwwhzOu0SKm4xGN48W8s/3RL8PmgxrNJxJFnhDFcfiLnd5Xh6yOW/G
	 TUmDZyyMH++JVenNt6l534NNae2oMPAqYoQS9KRYUR+PTyGEgQAlWLffGRzTOpKR4S
	 D5ZxEOv3WOYZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZsBJB3F-a7PN; Wed, 31 Jan 2024 21:52:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D766C8457A;
	Wed, 31 Jan 2024 21:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D766C8457A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 961C01BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 21:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B00C40580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 21:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B00C40580
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQUgN1L-SUg7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 21:52:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27B2740139
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 21:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27B2740139
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10497117"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="10497117"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 13:52:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="788730047"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="788730047"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 13:52:03 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 31 Jan 2024 13:51:58 -0800
Message-ID: <20240131215158.2173207-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706737932; x=1738273932;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lKkRqeaz2y70e2A0fYlX14vw+bD/RdWNknzwV4+utxQ=;
 b=HP6HzbqLVhdshCrn0AhW2upSXgcIojewGXPZUY51d4wvX/9x989bYsSl
 dcSj1lyj/svUyKzWIz26LC0RYEv3NeZOwdsi+VRiZ526ZzkqzCuSc/GyT
 p1EwSl+rYrs9fsRdCkK0D2dg8/djvK4fC/Zir3E9uqWwXmQOQxL7YIa0t
 QFKDnLIMJnfmEugjwmenEKIpNSOGqYU7sKZbGyvXZSOR9ES3Vhj8kjsz6
 AvPrDILWPih3KZJCDw58CLtXY1Pi5FDcsWs4wdZeq8eb2z77Tjc1f7rUa
 i7j4EbLE2yY5VHkHcnlln0ez4Mg3QGOwvKxbmSz2d2fEuL15CQRxFjF1j
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HP6HzbqL
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: virtchnl: stop pretending to
 support RSS over AQ or registers
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, Alan Brady <alan.brady@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E800 series hardware uses the same iAVF driver as older devices,
including the virtchnl negotiation scheme.

This negotiation scheme includes a mechanism to determine what type of RSS
should be supported, including RSS over PF virtchnl messages, RSS over
firmware AdminQ messages, and RSS via direct register access.

The PF driver will always prefer VIRTCHNL_VF_OFFLOAD_RSS_PF if its
supported by the VF driver. However, if an older VF driver is loaded, it
may request only VIRTCHNL_VF_OFFLOAD_RSS_REG or VIRTCHNL_VF_OFFLOAD_RSS_AQ.

The ice driver happily agrees to support these methods. Unfortunately, the
underlying hardware does not support these mechanisms. The E800 series VFs
don't have the appropriate registers for RSS_REG. The mailbox queue used by
VFs for VF to PF communication blocks messages which do not have the
VF-to-PF opcode.

Stop lying to the VF that it could support RSS over AdminQ or registers, as
these interfaces do not work when the hardware is operating on an E800
series device.

In practice this is unlikely to be hit by any normal user. The iAVF driver
has supported RSS over PF virtchnl commands since 2016, and always defaults
to using RSS_PF if possible.

In principle, nothing actually stops the existing VF from attempting to
access the registers or send an AQ command. However a properly coded VF
will check the capability flags and will report a more useful error if it
detects a case where the driver does not support the RSS offloads that it
does.

Fixes: 1071a8358a28 ("ice: Implement virtchnl commands for AVF support")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c           | 9 +--------
 drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c | 2 --
 2 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index c925813ec9ca..6f2328a049bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -440,7 +440,6 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 		vf->driver_caps = *(u32 *)msg;
 	else
 		vf->driver_caps = VIRTCHNL_VF_OFFLOAD_L2 |
-				  VIRTCHNL_VF_OFFLOAD_RSS_REG |
 				  VIRTCHNL_VF_OFFLOAD_VLAN;
 
 	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
@@ -453,14 +452,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->vf_cap_flags |= ice_vc_get_vlan_caps(hw, vf, vsi,
 						    vf->driver_caps);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
-	} else {
-		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_AQ)
-			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_AQ;
-		else
-			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_REG;
-	}
 
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index 5e19d48a05b4..d796dbd2a440 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -13,8 +13,6 @@
  * - opcodes needed by VF when caps are activated
  *
  * Caps that don't use new opcodes (no opcodes should be allowed):
- * - VIRTCHNL_VF_OFFLOAD_RSS_AQ
- * - VIRTCHNL_VF_OFFLOAD_RSS_REG
  * - VIRTCHNL_VF_OFFLOAD_WB_ON_ITR
  * - VIRTCHNL_VF_OFFLOAD_CRC
  * - VIRTCHNL_VF_OFFLOAD_RX_POLLING

base-commit: d0005e76b73b095138cee9d662831761ffde84a8
-- 
2.41.0

