Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9810E307D96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 19:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E65B2E106;
	Thu, 28 Jan 2021 18:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWa6Qs1j97xl; Thu, 28 Jan 2021 18:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2AEE82E0FE;
	Thu, 28 Jan 2021 18:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6B751BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 18:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B202287428
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 18:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p5PFGSHvmqlV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 18:16:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 06CA287406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 18:16:31 +0000 (UTC)
IronPort-SDR: yXG9hbTwydz/P6dZxY8rm3lh8sWhJ44uuSooJUvGtD9kTJ2DgPEtS19Tg/AZAxaYf64z5JKJZU
 hhHfZE4et2Yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="241811823"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="241811823"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 10:16:31 -0800
IronPort-SDR: oTh7LG4DQ3jdN0TYiMSEnW4XNdA6vdHtmjGD2FigRt+RVcLti7vVm8iPYYFeBTdJvW6EKUo3fn
 XoJ9+D7WrOYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="473938670"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2021 10:16:30 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Jan 2021 10:17:02 -0800
Message-Id: <20210128181702.1941534-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-queue v3] virtchnl: Fix layout of RSS
 structures
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
Cc: Norbert Ciosek <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Ciosek <norbertx.ciosek@intel.com>

Remove padding from RSS structures. Previous layout
could lead to unwanted compiler optimizations
in loops when iterating over key and lut arrays.

Fixes: 65ece6de0114 ("virtchnl: Add missing explicit padding to structures")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
---
v3: Removed footer
v2: Removed padding instead of moving "key" and "lut" fields
at the end of RSS structures.

 include/linux/avf/virtchnl.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 40bad71865ea..532bcbfc4716 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -476,7 +476,6 @@ struct virtchnl_rss_key {
 	u16 vsi_id;
 	u16 key_len;
 	u8 key[1];         /* RSS hash key, packed bytes */
-	u8 pad[1];
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
@@ -485,7 +484,6 @@ struct virtchnl_rss_lut {
 	u16 vsi_id;
 	u16 lut_entries;
 	u8 lut[1];        /* RSS lookup table */
-	u8 pad[1];
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
