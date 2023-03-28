Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7DB6CBCDC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 12:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86E10417D3;
	Tue, 28 Mar 2023 10:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86E10417D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680000586;
	bh=PD+LdWlsq1ld6F6dA4CarzbtKQSRy6HykjVf63ZRuIw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f+ra4PoKAHTPWU6foSeM/wDVKbz0Cbq3YSk4qhGgcngBYsFmoNN+H5udT6/u04tcu
	 1qd2WusSM6QryW+1d8aviNY4kcs2PfOUww+iPESluRIyTX3mJY87sRRGTnEgEsHFwc
	 JzgUyw2SZ+B67CsKWj/UwzlBxSz1NzoIi5hoQH8TMvvQGerk11bpUGO+R0tvNc+xTi
	 nm2+j/aRPJVyl0KeL1FKVdxxJx3LnWQ7NrTDu7q8onXW9qhiVGm+kWPbUWrt3Vf/BC
	 EbkY9A/B2hig8lgs50ML+NDNmV6qyakhyDrqRY2y9CL8Z15qQnroa5n5vLV0MXVZhn
	 BzWwdMSQTps+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGmjXUXQZ_Cq; Tue, 28 Mar 2023 10:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4173C417BB;
	Tue, 28 Mar 2023 10:49:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4173C417BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03AB21BF388
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 10:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDB7540BAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 10:49:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDB7540BAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMnWMy5V01tb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 10:49:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BED9D400FE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BED9D400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 10:49:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="338034763"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="338034763"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 03:49:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="858028251"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="858028251"
Received: from dpdk-liulingy-1.sh.intel.com ([10.67.118.207])
 by orsmga005.jf.intel.com with ESMTP; 28 Mar 2023 03:49:14 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Mar 2023 10:49:11 +0000
Message-Id: <20230328104911.687508-1-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680000580; x=1711536580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4cGhws5r8cXdVcWpq6sMLaxGeQF20NLWvV3+NuYHdkw=;
 b=EPWZB/dau1VrA32sMBlnckAWrK80CFTDfHa+ITh3R80IFxaWoAauSk3r
 2gc9YdQlVc4L+DTN58Mv78TITviNWvFSdIAELqT1IUrBig+WiNLbfeCYM
 Vf71zP8MB7NsBQZH6wWco4R8kxbSHLpakfzTYW4t+SgxQYINw/6f+p4Rd
 Hw++cdJpOELRuAkiwqw6Xy5tXrA6RuOUYDG1gYumpfGyCUNeNf9NZeNDr
 bm2BVpcCId+cR3NiujUbLpotjTo0KffLtk3Ul8m/g0DhWfUFVuU74G6xX
 BSXCnKIPQxXAL3krtl2zPBp3jf/5mZe9ysPVXFi1Kv5Lz3W+hA2ITASma
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EPWZB/da
Subject: [Intel-wired-lan] [PATCH net V3] ice: Reset FDIR counter in FDIR
 init stage
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reset the FDIR counters when FDIR inits. Without this patch,
when VF initializes or resets, all the FDIR counters are not
cleaned, which may cause unexpected behaviors for future FDIR
rule create (e.g., rule conflict).

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
v2: change commit message to apply more to a kernel use
v3: simplify commit message
---
 .../net/ethernet/intel/ice/ice_virtchnl_fdir.c   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 4d007d8c2540..daa6a1e894cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -541,6 +541,21 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_vc_fdir_reset_cnt_all - reset all FDIR counters for this VF FDIR
+ * @fdir: pointer to the VF FDIR structure
+ */
+static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
+{
+	enum ice_fltr_ptype flow;
+
+	for (flow = ICE_FLTR_PTYPE_NONF_NONE;
+	     flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		fdir->fdir_fltr_cnt[flow][0] = 0;
+		fdir->fdir_fltr_cnt[flow][1] = 0;
+	}
+}
+
 /**
  * ice_vc_fdir_has_prof_conflict
  * @vf: pointer to the VF structure
@@ -1998,6 +2013,7 @@ void ice_vf_fdir_init(struct ice_vf *vf)
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
