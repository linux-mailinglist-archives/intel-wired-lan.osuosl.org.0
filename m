Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAEB32697E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E702F4342D;
	Fri, 26 Feb 2021 21:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6K1c0802KXMx; Fri, 26 Feb 2021 21:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25B754341A;
	Fri, 26 Feb 2021 21:29:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3ED371BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B27AC6EA49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyWnFHMHZqp2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 993BF6F49A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
IronPort-SDR: gJ0SvrWDZt6VdAHczNCFLmRHd0K/b2lDWLreMNwU+3/HA311WAzUTq2tQaM7OOONZwYpp758RQ
 reA7RvARkBOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173138972"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="173138972"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:57 -0800
IronPort-SDR: 0xKzPComsJTg3OJ/EN5VuWoaM8FnWCI8CsOaAVoFrFddQJfkzCRLHzUNz9wsj7RxrCEExqmpHS
 YJkwXddv7VhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913476"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:56 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:32 -0800
Message-Id: <20210226211932.46683-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 13/13] ice: Cleanup fltr list in case
 of allocation issues
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

From: Robert Malz <robertx.malz@intel.com>

When ice_remove_vsi_lkup_fltr is called, by calling
ice_add_to_vsi_fltr_list local copy of vsi filter list
is created. If any issues during creation of vsi filter
list occurs it up for the caller to free already
allocated memory. This patch ensures proper memory
deallocation in these cases.

Fixes: 80d144c9ac82 ("ice: Refactor switch rule management structures and functions")
Signed-off-by: Robert Malz <robertx.malz@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 387d3f6cd71e..834cbd3f7b31 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2624,7 +2624,7 @@ ice_remove_vsi_lkup_fltr(struct ice_hw *hw, u16 vsi_handle,
 					  &remove_list_head);
 	mutex_unlock(rule_lock);
 	if (status)
-		return;
+		goto free_fltr_list;
 
 	switch (lkup) {
 	case ICE_SW_LKUP_MAC:
@@ -2647,6 +2647,7 @@ ice_remove_vsi_lkup_fltr(struct ice_hw *hw, u16 vsi_handle,
 		break;
 	}
 
+free_fltr_list:
 	list_for_each_entry_safe(fm_entry, tmp, &remove_list_head, list_entry) {
 		list_del(&fm_entry->list_entry);
 		devm_kfree(ice_hw_to_dev(hw), fm_entry);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
