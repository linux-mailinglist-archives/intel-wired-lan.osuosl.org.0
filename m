Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CE599DF0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 09:05:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79F694058F;
	Tue, 15 Oct 2024 07:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wj3MDDWZ12qz; Tue, 15 Oct 2024 07:04:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B32D40590
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728975897;
	bh=2ULF34JKpF6NgfBCQ5rKp0+rGmDUG/5mS1vC+fi+7tE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gsJDMmPc6Q8o/QdYIENp7PhXkzuxtcYOuZhU6Wg/OtgpAFDgFw+vBCzthvmHMfY/x
	 imdrF45Gam3t+90IUWksQlkeU+oCMB6X9byMfiWkdvWbn0lrDBIrJBakhvB5tAsmXZ
	 uzQwKw1BjQyooRqvBq6LE7d2emNzcqJl1OJmB7c+w+iu4D/VlIAK7hundKDrv6XaSn
	 Eg04GF1J0MSQKIr1Aw81LaOt3MbW99JRvRPFgaXSYrfFYsbHG0rs42Z1fi/uTeIB0O
	 V4ZgHLFhpHyVp+CwVdZ3mksuDa3OCHisirGABv7N7RjwHuzjMt8MZ6jI1KtIbK9WpW
	 0EMBvr4UpAFZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B32D40590;
	Tue, 15 Oct 2024 07:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BA321BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 07:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06FA560883
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 07:04:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hdlyAmDwx3QV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 07:04:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B4C4D60885
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4C4D60885
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4C4D60885
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 07:04:53 +0000 (UTC)
X-CSE-ConnectionGUID: RZL+r8wdScaSftc8+n85JQ==
X-CSE-MsgGUID: QRli3J9qSeOatjwdVII6yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28498102"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28498102"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 00:04:53 -0700
X-CSE-ConnectionGUID: tf+QslF5Tlm7Sv6vxu7fEw==
X-CSE-MsgGUID: rXQUJhzxQVawwOkvwp6jbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="82359972"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2024 00:04:51 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 15 Oct 2024 09:04:50 +0200
Message-Id: <20241015070450.1572415-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728975894; x=1760511894;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cz11GqT1s0dYjRgJDclwQVHjfJ2iYQmi2QY4EJAmd24=;
 b=PTJM600ITNNFdQdYpmnXDVhzifk1V5r6/MqohkqrxkJOiePyvxBHs4Hv
 6T1JmgCXa/Uq0TvIophnjSOGMAv3BbOEiTHBkhrpLn3rsQCD0YM3NXu5z
 wsMkox7om+GYfEUMJ5dWNvnFXTkIixvKgj5wq/CCB7MPmzTex4mz3uC6X
 OTafohftWypSWaUrBjgd1Cgf7vovK3HZCaGTMOeSF7TUCQIR0wQnR+rIT
 MHIkEz3DZrpUJ8N9qCr62/Mjl3BpVLDHQXSxWwDtMr3RUsWPuiq0U1igb
 zAJQjCUHlhdUG6pFbbOa4IE9WfDRfc5g25RYxGzVTGtNPSEvQPaKKtMvI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PTJM600I
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix a race condition in the i40e driver that leads to MAC/VLAN filters
becoming corrupted and leaking. Address the issue that occurs under
heavy load when multiple threads are concurrently modifying MAC/VLAN
filters by setting mac and port VLAN.

1. Thread T0 allocates a filter in i40e_add_filter() within
        i40e_ndo_set_vf_port_vlan().
2. Thread T1 concurrently frees the filter in __i40e_del_filter() within
        i40e_ndo_set_vf_mac().
3. Subsequently, i40e_service_task() calls i40e_sync_vsi_filters(), which
        refers to the already freed filter memory, causing corruption.

Reproduction steps:
1. Spawn multiple VFs.
2. Apply a concurrent heavy load by running parallel operations to change
        MAC addresses on the VFs and change port VLANs on the host.
3. Observe errors in dmesg:
"Error I40E_AQ_RC_ENOSPC adding RX filters on VF XX,
 please set promiscuous on manually for VF XX".

The fix involves implementing a new intermediate filter state,
I40E_FILTER_NEW_SYNC, for the time when a filter is on a tmp_add_list.
These filters cannot be deleted from the hash list directly but
must be removed using the full process.

Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC Address as key")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 12 ++++++++++--
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 2089a0e..a1842dd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -755,6 +755,8 @@ enum i40e_filter_state {
 	I40E_FILTER_ACTIVE,		/* Added to switch by FW */
 	I40E_FILTER_FAILED,		/* Rejected by FW */
 	I40E_FILTER_REMOVE,		/* To be removed */
+	/* RESERVED */
+	I40E_FILTER_NEW_SYNC = 6,	/* New, not sent, in sync task */
 /* There is no 'removed' state; the filter struct is freed */
 };
 struct i40e_mac_filter {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index abf624d..1c439b1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -89,6 +89,8 @@ static char *i40e_filter_state_string[] = {
 	"ACTIVE",
 	"FAILED",
 	"REMOVE",
+	"<RESERVED>",
+	"NEW_SYNC",
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 25295ae..55fb362 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1255,6 +1255,7 @@ int i40e_count_filters(struct i40e_vsi *vsi)
 
 	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
 		if (f->state == I40E_FILTER_NEW ||
+		    f->state == I40E_FILTER_NEW_SYNC ||
 		    f->state == I40E_FILTER_ACTIVE)
 			++cnt;
 	}
@@ -1441,6 +1442,8 @@ static int i40e_correct_mac_vlan_filters(struct i40e_vsi *vsi,
 
 			new->f = add_head;
 			new->state = add_head->state;
+			if (add_head->state == I40E_FILTER_NEW)
+				add_head->state = I40E_FILTER_NEW_SYNC;
 
 			/* Add the new filter to the tmp list */
 			hlist_add_head(&new->hlist, tmp_add_list);
@@ -1550,6 +1553,8 @@ static int i40e_correct_vf_mac_vlan_filters(struct i40e_vsi *vsi,
 				return -ENOMEM;
 			new_mac->f = add_head;
 			new_mac->state = add_head->state;
+			if (add_head->state == I40E_FILTER_NEW)
+				add_head->state = I40E_FILTER_NEW_SYNC;
 
 			/* Add the new filter to the tmp list */
 			hlist_add_head(&new_mac->hlist, tmp_add_list);
@@ -2437,7 +2442,8 @@ static int
 i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
 			  struct i40e_mac_filter *f)
 {
-	bool enable = f->state == I40E_FILTER_NEW;
+	bool enable = f->state == I40E_FILTER_NEW ||
+		      f->state == I40E_FILTER_NEW_SYNC;
 	struct i40e_hw *hw = &vsi->back->hw;
 	int aq_ret;
 
@@ -2611,6 +2617,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 
 				/* Add it to the hash list */
 				hlist_add_head(&new->hlist, &tmp_add_list);
+				f->state = I40E_FILTER_NEW_SYNC;
 			}
 
 			/* Count the number of active (current and new) VLAN
@@ -2762,7 +2769,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 		spin_lock_bh(&vsi->mac_filter_hash_lock);
 		hlist_for_each_entry_safe(new, h, &tmp_add_list, hlist) {
 			/* Only update the state if we're still NEW */
-			if (new->f->state == I40E_FILTER_NEW)
+			if (new->f->state == I40E_FILTER_NEW ||
+			    new->f->state == I40E_FILTER_NEW_SYNC)
 				new->f->state = new->state;
 			hlist_del(&new->hlist);
 			netdev_hw_addr_refcnt(new->f, vsi->netdev, -1);
-- 
2.25.1

