Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 161A96B1995
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 03:50:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A55C61240;
	Thu,  9 Mar 2023 02:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A55C61240
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678330257;
	bh=gbQ5jws5XwPFmw3p49avAB8cMzfs1PJR4PvJeIIfugg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RAx0wDhOM6WQDQ0WuCBO/fpO5SDI+zzDvtszxvyzL38HbrGbEmVCL6F3IuPal4kYZ
	 vfA8Gnactn9mG09KhVz7Cjls8YMfz3j7FRbQJfGPoy0nuLy7iBMyq43XznbbWTDn81
	 YKzC86PPfWKEAPgdaMtGQNOFa7dKT9vMBU151UE2FpCqpmhc4D2Z6uELWQIz99AYFK
	 OEQGWeD7kTIEb639lVLErOep89sX8f7n3AqHwNDV4tzN4EJ21u4ZQwCGgNNYAyljrn
	 IllemXRdAHUbf2JWvPOPoiDlpvaW68+0srv0oTZn4j68v9rtOIy/QG/1kTzhShoFpf
	 wU1/T/PUC8KTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30v5TJ4XzDLi; Thu,  9 Mar 2023 02:50:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6613E6123D;
	Thu,  9 Mar 2023 02:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6613E6123D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB86A1BF405
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 02:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2E2A4187B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 02:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2E2A4187B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQLwpwVUwuaJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 02:50:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05ABC41855
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05ABC41855
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 02:50:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="336354428"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="336354428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 18:50:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="741376446"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="741376446"
Received: from dpdk-liulingy-1.sh.intel.com ([10.67.118.207])
 by fmsmga008.fm.intel.com with ESMTP; 08 Mar 2023 18:50:47 -0800
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Mar 2023 02:49:34 +0000
Message-Id: <20230309024934.151120-1-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678330250; x=1709866250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=crAaLsDWh2QI574hKQDa3QT3bJzPhZmvaVt0Ntv2kX0=;
 b=lI1cfjesBLqYcfozpn/yXNE58zSmKSO9Uy9Ac2z3FL8c4i5aRJS1qRUU
 f/W9vPd7N+N6dATkOb9ol/LrUjHnfsn6t1G53uNV8eVjC+Xwig560ePnG
 NQodVtWiSLgqU1yInYQPZbhtA97HigtcsZmhagHXkjcoAw33acyVPa9RR
 zCyVKZ93/J0EA8iqUhyuLe4Qe4NGHQuJWOPEOE742OXWII1iYdW7mLrYr
 ek6xYxglmLmRDn1Xgq3n4ahzk2DCMBwnoU7lAymzxgn2oXZPnmIGmMVhC
 ah653D2ZCMUb96Rbahr+Wa11CTXDeyzqtQTirn9dlHeP8FgYCTotQxQO2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lI1cfjes
Subject: [Intel-wired-lan] [PATCH net v2] ice: add FDIR counter reset in
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

This patch added the missing FDIR counters reset process when
FDIR inits. Without this patch, when VF initializes or resets,
all the FDIR counters will not be cleaned, which may cause
unexpected behaviors for future FDIR rule create (e.g., rule
conflict).

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
v2: change commit message to apply more to a kernel use
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
