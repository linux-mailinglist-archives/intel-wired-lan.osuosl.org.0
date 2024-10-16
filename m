Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 199269A058D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 11:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8FDF608A1;
	Wed, 16 Oct 2024 09:30:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ypHqsMVJPGxE; Wed, 16 Oct 2024 09:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6A0D608C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729071018;
	bh=/iYy7LHLt5DN3nPf9aOQw7a8JFXKrmWrxKBfEwAhwpY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=C3E8/aq1Lv+0oHmAqQ/OE84YtDXToiCZOOLNkNI5Ob6gGFYGHgcy+cv+rBpSNLV13
	 FplENAjRNzA6XIn4HfG4ZbNXXX9qqgmZdNRz97vzyDn1zd7npUrGDiq8BleaMBBQh1
	 ae+uiEhMPNZxVsA1BatZ6z+6DFm7OodImBrisf9h8viMHxTEjaOtSZVvlWPqnTKkZP
	 h222dHIWqamxox9qkRn7TuxInHFvaUyrBwdrXTSggCmfLP+6MtnwW3/7hn2DzPTAgJ
	 R9kRtmrPqReYk7rZrwnpGF9B+nZ/FBImiuxB6fArH/3PXItvYEYbWjh4cb3wCyBJlt
	 qyZzUkSe4p+pA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6A0D608C6;
	Wed, 16 Oct 2024 09:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3ABBA2072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 09:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14F4F80E14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 09:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qozUtcyxWChm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 09:30:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA26780E11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA26780E11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA26780E11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 09:30:14 +0000 (UTC)
X-CSE-ConnectionGUID: 8clHkut/Sdi1n6A/5LFu6g==
X-CSE-MsgGUID: 7bOKuunDSbqvlD3b5OOgBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="39880034"
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="39880034"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 02:30:14 -0700
X-CSE-ConnectionGUID: VBErF9YKQja8vT0EC0jwEQ==
X-CSE-MsgGUID: PrKK+/z3ToiM7/OdhByqeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="77847885"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 16 Oct 2024 02:30:12 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed, 16 Oct 2024 11:30:11 +0200
Message-Id: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729071015; x=1760607015;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YnnXeh6jcwhPnNEp9hZbToy0o2YfPiF/dNUridaGA/I=;
 b=LOHBzvL4t1FdnpAaSHLWo4/fUZka8P798xUtrzK/6uE1bCYG9zt20j+5
 tALPpwc0EXUttrNhvzswK1+Bmh+rp+O/PzcQgVZrP+sFiCAES95tbaN3D
 szAxdkf4m8y7UBbQ/cvRvX9dK5E0Nc1IQBSopR2reqgZapInXqqKpEIh8
 4c+OeEhN8b+Gy/3lPsIKiSwFxHt3eDK6T/JY7v4eicGo0B8DkuefhtEOf
 5UKlBwTkD1JPtMc4TD5KptJnG4SG8jfqr3B/+SC/2rcReiWNcD2gPVekp
 Oo4tNddRoAHRddpNzOLlKo6Np8WSH4iaJUuhldnocnmOYDh+ykedd1gEj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LOHBzvL4
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition by
 adding filter's intermediate sync state
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

Exact code for stable reproduction Intel can't open-source now.

The fix involves implementing a new intermediate filter state,
I40E_FILTER_NEW_SYNC, for the time when a filter is on a tmp_add_list.
These filters cannot be deleted from the hash list directly but
must be removed using the full process.

Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC Address as key")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2 change commit title, removed RESERVED state byt request in review
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 12 ++++++++++--
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 2089a0e..2e205218 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -755,6 +755,8 @@ enum i40e_filter_state {
 	I40E_FILTER_ACTIVE,		/* Added to switch by FW */
 	I40E_FILTER_FAILED,		/* Rejected by FW */
 	I40E_FILTER_REMOVE,		/* To be removed */
+	I40E_FILTER_NEW_SYNC,		/* New, not sent yet, is in
+					   i40e_sync_vsi_filters() */
 /* There is no 'removed' state; the filter struct is freed */
 };
 struct i40e_mac_filter {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index abf624d..208c2f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -89,6 +89,7 @@ static char *i40e_filter_state_string[] = {
 	"ACTIVE",
 	"FAILED",
 	"REMOVE",
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

