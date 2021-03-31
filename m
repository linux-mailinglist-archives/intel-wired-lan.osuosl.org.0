Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655E635090F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD7A54046E;
	Wed, 31 Mar 2021 21:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7uNrOXwlhwf; Wed, 31 Mar 2021 21:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0DD240283;
	Wed, 31 Mar 2021 21:27:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9B981BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6994C8496A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oLSiu3kPjncU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C919C84958
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
IronPort-SDR: b3/XAt9oZ0ajofbg+75HfNWqQESi3bXGRk2bo22zq/I5NBUHqrM93GPknhEaSHUNA9zcxhgpD2
 iqfXN5C/dS6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117312"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117312"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:52 -0700
IronPort-SDR: MjRxxeAqfqIzgA5YKiwyzKezU2M9MvnUw1uGsRJyUPbGKZTZec6gclEUx7xFnGMkSXePhCBeJ1
 3HZxPsvu6WVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819644"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:05 -0700
Message-Id: <20210331211708.55205-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 10/13] ice: suppress false cppcheck
 issues
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

From: Bruce Allan <bruce.w.allan@intel.com>

Silence false errors, warnings and style issues reported by cppcheck.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 3 +++
 drivers/net/ethernet/intel/ice/ice_nvm.c       | 1 +
 drivers/net/ethernet/intel/ice/ice_sched.c     | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 4b83960876f4..06ac9badee77 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -334,6 +334,7 @@ ice_boost_tcam_handler(u32 sect_type, void *section, u32 index, u32 *offset)
 	if (sect_type != ICE_SID_RXPARSER_BOOST_TCAM)
 		return NULL;
 
+	/* cppcheck-suppress nullPointer */
 	if (index > ICE_MAX_BST_TCAMS_IN_BUF)
 		return NULL;
 
@@ -404,6 +405,7 @@ ice_label_enum_handler(u32 __always_unused sect_type, void *section, u32 index,
 	if (!section)
 		return NULL;
 
+	/* cppcheck-suppress nullPointer */
 	if (index > ICE_MAX_LABELS_IN_BUF)
 		return NULL;
 
@@ -2067,6 +2069,7 @@ ice_match_prop_lst(struct list_head *list1, struct list_head *list2)
 		count++;
 	list_for_each_entry(tmp2, list2, list)
 		chk_count++;
+	/* cppcheck-suppress knownConditionTrueFalse */
 	if (!count || count != chk_count)
 		return false;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 2f7de2d03510..4058d8f4e782 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -740,6 +740,7 @@ ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
 
 		/* Verify that the simple checksum is zero */
 		for (i = 0; i < sizeof(tmp); i++)
+			/* cppcheck-suppress objectIndex */
 			sum += ((u8 *)&tmp)[i];
 
 		if (sum) {
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 97562051fe14..2f097637e405 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -988,6 +988,7 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 	*num_nodes_added = 0;
 	while (*num_nodes_added < num_nodes) {
 		u16 max_child_nodes, num_added = 0;
+		/* cppcheck-suppress unusedVariable */
 		u32 temp;
 
 		status = ice_sched_add_nodes_to_hw_layer(pi, tc_node, parent,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
