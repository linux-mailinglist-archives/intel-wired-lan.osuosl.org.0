Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAFF694C94
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 17:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8741B409AA;
	Mon, 13 Feb 2023 16:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8741B409AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676305466;
	bh=2duir8Xf6X9HOoPoihjnHDj0OGMMscZFsp6+sYev0Vc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nwFf0jzy7yi2EBn6Jhn7eOn68WordFCONzqshqa6/Y1HwAHNCwXZMvHiL9Gnahqc7
	 xYW9aQzwelh3eD6bbWYjaivQpkf+EZJRGfUa9P6FVJg5m4Ow7BcHk6/FIj8w/KhCAx
	 Pt5qqc4PSPk4xbm/kJY8fdZ1dBdBxJkFNq2MXb9ki6oPHHyHT8LvmCWZ9J92bIuLJ6
	 o0pEE4bxE6i1NQ4Mb36I7FtusB4qnSTQzj2WcpNc0cBp8wd3Eu3sPOwLnmtS6NVf1v
	 02PIQQ+FD8fU665Em6fZef2dQlJC48jNoSiT0DDi5NIpc2pi7UTUu2rK/kABXczjDe
	 gcFDsBuFKZGrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laPCm0w2a1l3; Mon, 13 Feb 2023 16:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D86F402ED;
	Mon, 13 Feb 2023 16:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D86F402ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 103761BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 05:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3B8F813C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 05:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3B8F813C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9y34UtGX35Xi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 05:54:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87894813BD
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 87894813BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 05:54:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="395426234"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="395426234"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2023 21:54:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="737390573"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="737390573"
Received: from dpdk-liulingy-1.sh.intel.com ([10.67.119.29])
 by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2023 21:54:41 -0800
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Feb 2023 05:54:15 +0000
Message-Id: <20230213055415.399081-1-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Feb 2023 16:23:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676267684; x=1707803684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nvBOaa5V3dqqChR3g8/nThTYeFKbTL60HZX2N2cDejc=;
 b=DNi7IwXvQnzRntIjrD2H5bFefq/xofQKOxBYdCPFd2wXm0WZg8hxZgNN
 a5H7vThehZIZFKbjUuqS7x+d3oSNWbvRp2M2fdohgb3nwBifxDUh5t7e1
 fyzk89n5yGMgYWmJKnJ/VAWRJTdyJGYFOnBxIpbK4JkFVf0Vx4u7csm+k
 y9K44moDTCT1kv/jpVUX11wD/qibGxeJV5QKrd0KR+GmsX211aGoOqElh
 sRQMZd+mRUh8slEiJRuH7WZeNBkybgoD6VbamT2+BIIaaoAndURulkh7d
 LtHY5emhhM36zq0YydcSRTz4I1odiHRRIlalMx1sm0deYnJNTyaqklo9j
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DNi7IwXv
Subject: [Intel-wired-lan] [PATCH net v1] ice: add FDIR counter reset in
 FDIR init stage
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
Cc: Junfeng Guo <junfeng.guo@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

When FDIR exited under abnormal circumstances (e.g., kill -9), all
the FDIR counters will not be cleaned, which will cause unexpected
behaviors for future FDIR rule create (e.g., rule conflict). This
patch fixed the issue via resetting all the FDIR counters in FDIR
init stage.

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index e6ef6b303222..60c9da4aac1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -541,6 +541,20 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_vc_fdir_reset_cnt_all - reset all FDIR counters for this VF FDIR
+ * @fdir: pointer to the VF FDIR structure
+ */
+static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
+{
+	enum ice_fltr_ptype flow = ICE_FLTR_PTYPE_NONF_NONE;
+
+	for (; flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		fdir->fdir_fltr_cnt[flow][0] = 0;
+		fdir->fdir_fltr_cnt[flow][1] = 0;
+	}
+}
+
 /**
  * ice_vc_fdir_write_flow_prof
  * @vf: pointer to the VF structure
@@ -1924,6 +1938,7 @@ void ice_vf_fdir_init(struct ice_vf *vf)
 	spin_lock_init(&fdir->ctx_lock);
 	fdir->ctx_irq.flags = 0;
 	fdir->ctx_done.flags = 0;
+	ice_vc_fdir_reset_cnt_all(fdir);
 }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
