Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8257A780AA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 13:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F31F84071;
	Fri, 18 Aug 2023 11:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F31F84071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692356559;
	bh=+UY80JTfr/NlyCXmeDJ6tmpwMLr1mxRXbAQ566KrBSQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Mucr+jyMyLM8s4/TNhrTMulmEEOpVjBTx2g3I6vmoNUTnXMMVoCUEachcdbNV+hsz
	 pAZP9bwQ5MTLuR0QccGWhKHuKpCmPZ7mbSCWb+4BHYhU7f5yMmMxwp3o5Nhq4LQKyY
	 XsBjzO/fUl+WW0hF+wifm9EawRLGnSX60kbR5irSTECHTD5e8lpIK2m/C8zYeKuXjA
	 Gyn/NCxQu9YrkU3I3wbiUD68IcHc60GJcq3Xb4lNLv559tZe906lvB3+7LFS9c3FAY
	 NikfpBTyejigE+7+VNTFCleWBJPXx2e+q+of0FZ8tuNj9a1Vjwl+HFu3t51XDjKv2N
	 jtbWUuv8z7mGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Cx_-gogJEuL; Fri, 18 Aug 2023 11:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9CE183F68;
	Fri, 18 Aug 2023 11:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9CE183F68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9660B1BF364
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BFDB60C01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BFDB60C01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7jw5nXLZkPPM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 11:02:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78A5A60BC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:02:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78A5A60BC5
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370535543"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="370535543"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:02:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="825081050"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="825081050"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Aug 2023 04:02:29 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EF677332A6;
 Fri, 18 Aug 2023 12:02:28 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Aug 2023 06:59:29 -0400
Message-Id: <20230818105929.544072-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692356552; x=1723892552;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dHD/2OpQotKC16EyeLGxjmzHd0UMqWyt/RnceI1F81U=;
 b=iE0yaBVJ2ik1JkoyJ/qD8j6qgL3wpoyub/tXV8YQS/RBHG+ZF0hFOYSu
 LIgeZFJmm7hZMZfGXRHGb2CILWYR8Z/0GwP7l1O64dET0BtYzDOM2JXuJ
 i0504s3GB6B7PY9eUH/65fIHBuqc52Ob3jY7y6i7/sXQDJcqEbiXf+f5y
 9JM4AjEfijm/PDU/jgm8ZqqQc2UyDJbcRdcLQErwlxePagCYcsN9Ej5cL
 4J/NQC1kyXkWqjmTZqbNo7+g/qhgQh4XYq5Ehtc+GO1T2aqgkT4+tQVXl
 NR5NTcO6AlzSD4JXhv9pAy7KmIInpfnxA3Sj6ui6vpg2PfzLJ1MKNCF9X
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iE0yaBVJ
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: remove unused
 ice_flow_entry fields
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove ::entry and ::entry_sz fields of &ice_flow_entry,
as they were never set.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 5 +----
 drivers/net/ethernet/intel/ice/ice_flow.h | 3 ---
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 85cca572c22a..fb8b925aaf8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1318,7 +1318,6 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
 
 	list_del(&entry->l_entry);
 
-	devm_kfree(ice_hw_to_dev(hw), entry->entry);
 	devm_kfree(ice_hw_to_dev(hw), entry);
 
 	return 0;
@@ -1645,10 +1644,8 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 	*entry_h = ICE_FLOW_ENTRY_HNDL(e);
 
 out:
-	if (status && e) {
-		devm_kfree(ice_hw_to_dev(hw), e->entry);
+	if (status)
 		devm_kfree(ice_hw_to_dev(hw), e);
-	}
 
 	return status;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index b465d27d9b80..96923ef0a5a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -350,11 +350,8 @@ struct ice_flow_entry {
 
 	u64 id;
 	struct ice_flow_prof *prof;
-	/* Flow entry's content */
-	void *entry;
 	enum ice_flow_priority priority;
 	u16 vsi_handle;
-	u16 entry_sz;
 };
 
 #define ICE_FLOW_ENTRY_HNDL(e)	((u64)(uintptr_t)e)

base-commit: 52d0f297b37b44066ca22abdcc164766ea49ac18
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
