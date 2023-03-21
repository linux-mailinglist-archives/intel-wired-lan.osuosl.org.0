Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 871A76C353D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 16:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F04981FCA;
	Tue, 21 Mar 2023 15:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F04981FCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679411538;
	bh=MKsMaXJTv48KnSg0OQDefXEO+JDXdGs3v87PXmMq1Ro=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yhf9ZFezwtOKAMsap9VnerpcJGBXG47qpaPav1mig5z/pPYT1CxpxoxZjjetHNbEL
	 L/Ym6S87j8v78hj9bs1KxHmzdbtpiXGusZVHtsPzzli7V2oILUVDyHT0rl5WP7F9qO
	 tcihV/a0VHJF7od8efHfs3SHVSPaoyGfP0KRtZcEu5qJ1nRAjvTfWO7izrpMqhOz8M
	 3T8u8D/NhfHno+jUiMxkWcAVWmzNOJmrwbTs4r8o23+gCOm5Jgh+xbtlM1OFpJka+7
	 wIArDuZRc+Bjj7eGvut6iKt96tnHc78DAtZ2blbWVslNzTCbNblXz8GC0+2q8p6dlU
	 Fl2ceQXbtuB+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VwgLHg1HXp87; Tue, 21 Mar 2023 15:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1915281FB8;
	Tue, 21 Mar 2023 15:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1915281FB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24DCF1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 06:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B92A81E7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 06:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B92A81E7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9p3m3BCRh03T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 06:57:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 415E081E69
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 415E081E69
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 06:57:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="336368698"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="336368698"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 23:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="658663371"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="658663371"
Received: from dpdk-simei-icelake.sh.intel.com ([10.67.110.159])
 by orsmga006.jf.intel.com with ESMTP; 20 Mar 2023 23:57:24 -0700
From: "Su, Simei" <simei.su@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Mar 2023 14:56:58 +0800
Message-Id: <20230321065658.699675-1-simei.su@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 21 Mar 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679381846; x=1710917846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7M4KbSqLjkqVZgzSR3pOc/SsfM0g08OtagaTxR1gLt8=;
 b=Uiv77h+AnqOeCClsZu1vUol84j8YO0FQZMQTWqZ70noxJmGnbJ96EiN9
 LEtsQpElB8ydpMPvZOZI8k8+Ivnj4O/pbmMQMyrvqw/lruPvsrIXZ4yEV
 lWU91IV7POj+RnD/eZ+Z8oXNm/uv1m8jEUss10u4KB7RkF0iroTrYK69x
 xyhN4w7fE+O8hGw1JnBK4srhHUDGW5uYZAEqPsMsvZiXqq1rWhuWszU5q
 X7488Z2gbJHTEn5Yj1aXwzPuQlFDTG/KSILAtIykePvCHpsalbYHdZBFO
 2MTdulXVzgIp2lr4Wc0cxA2H6FViWQTV2/Orsir80/13/hjLS19HBH9yy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uiv77h+A
Subject: [Intel-wired-lan] [PATCH net] ice: fix wrong fallback logic for FDIR
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
Cc: "Su, Simei" <simei.su@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When adding a FDIR filter, if ice_vc_fdir_set_irq_ctx returns failure,
the inserted fdir entry will not be removed and if ice_vc_fdir_write_fltr
returns failure, the fdir context info for irq handler will not be cleared
which may lead to inconsistent or memory leak issue. This patch refines
failure cases to resolve this issue.

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Simei Su <simei.su@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 60c9da4aac1d..c03e4a7ae80b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1812,7 +1812,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
 		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
 		dev_dbg(dev, "VF %d: set FDIR context failed\n", vf->vf_id);
-		goto err_free_conf;
+		goto err_rem_entry;
 	}
 
 	ret = ice_vc_fdir_write_fltr(vf, conf, true, is_tun);
@@ -1821,15 +1821,16 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
 		dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
 			vf->vf_id, ret);
-		goto err_rem_entry;
+		goto err_clr_irq;
 	}
 
 exit:
 	kfree(stat);
 	return ret;
 
-err_rem_entry:
+err_clr_irq:
 	ice_vc_fdir_clear_irq_ctx(vf);
+err_rem_entry:
 	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
 err_free_conf:
 	devm_kfree(dev, conf);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
