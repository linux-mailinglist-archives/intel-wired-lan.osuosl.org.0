Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84797068D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 15:03:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43CE9411A8;
	Wed, 17 May 2023 13:03:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43CE9411A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684328631;
	bh=dLbct2j7Afa6MSVqCezmtca1S+r/vI0OeIBHyEqpcRE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SwFlcVNBY4gDVhFDlrrbbH+/BwMhiMi/MWtwHe5k91EDNvPAO8DLxIM7fIxWTCsXH
	 QYLblhp18l2iDQGmS/SSycxZwXntLs+5X+oa7NfRJzTa1sUl10JssL4eLQXq0N6rdS
	 sntiS01crlEYDWOAXFD7tTzHva3hSSaRZOQAPOhnxQ8xLdEJXj15nCsMDNoGZ0vJnG
	 nmm00+sxHb6rARsr2dB33gwe39ovyqKPNIwfmPAXzMYHIp5rXC8IJpvAYK3HnHzyU/
	 O8Hq2LljS1M55m8zPUehD3pQzbwyIQTGCxIffzQj9avbtnJNjffJglqiaXGK11PS6f
	 O4Cd6eTWA76nQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9yiP8G3FWSc; Wed, 17 May 2023 13:03:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 228A640182;
	Wed, 17 May 2023 13:03:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 228A640182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 830251BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BCF5429E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BCF5429E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqI_aKTncJ4C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 13:03:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD73B4026E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD73B4026E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="332112220"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="332112220"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="732418402"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="732418402"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:03:31 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 15:03:23 +0200
Message-Id: <20230517130323.332462-3-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517130323.332462-1-piotrx.gardocki@intel.com>
References: <20230517130323.332462-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684328617; x=1715864617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HIMpICse2VNHuIzBD341lOC4xDdBwBXXE7eCBN8WofQ=;
 b=O2pj7eU8kgcQUYZ00VbWRsOaHNQVQt/xfs0zUFKVdFeA8rFhC3tGMMjP
 ndGQrlAVP5bQ6u2aA4E90EW67lH+U+mV+q5VOvKREExkJgxQvSi7BcLwo
 Aiqu092iXck5+TQreXVAmqTyxemtApuUQRIG485ADeqJcyhrV7GAJymA2
 MgpS9QlZNgcNXkp9/xuxdeJw5D0t2PrSvnJTRpvaia5avxeK2Mpy1IUJq
 0ADJpzAfxnQCe0V+XYmV8saGm9nkAgYpsvuJ6r9tkKR0j4gRIa7cDHMPa
 f7NRcmS/8VtX4EQAX6hKq0B4Tf8v/zPIMnN85rpt9nmeH0XddpV61KfOU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O2pj7eU8
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] iavf: fix err handling
 for MAC replace
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
Cc: przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Defer removal of current primary MAC until a replacement is successfully added.
Previous implementation would left filter list with no primary MAC.
This was found while reading the code.

The patch takes advantage of the fact that there can only be a single primary
MAC filter at any time.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 42 ++++++++++-----------
 1 file changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 888d063478a1..68aa680f7fec 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1007,40 +1007,36 @@ int iavf_replace_primary_mac(struct iavf_adapter *adapter,
 			     const u8 *new_mac)
 {
 	struct iavf_hw *hw = &adapter->hw;
-	struct iavf_mac_filter *f;
+	struct iavf_mac_filter *new_f;
+	struct iavf_mac_filter *old_f;
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
-	list_for_each_entry(f, &adapter->mac_filter_list, list) {
-		f->is_primary = false;
+	new_f = iavf_add_filter(adapter, new_mac);
+	if (!new_f) {
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+		return -ENOMEM;
 	}
 
-	f = iavf_find_filter(adapter, hw->mac.addr);
-	if (f) {
-		f->remove = true;
+	old_f = iavf_find_filter(adapter, hw->mac.addr);
+	if (old_f) {
+		old_f->is_primary = false;
+		old_f->remove = true;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
 	}
-
-	f = iavf_add_filter(adapter, new_mac);
-
-	if (f) {
-		/* Always send the request to add if changing primary MAC
-		 * even if filter is already present on the list
-		 */
-		f->is_primary = true;
-		f->add = true;
-		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
-		ether_addr_copy(hw->mac.addr, new_mac);
-	}
+	/* Always send the request to add if changing primary MAC,
+	 * even if filter is already present on the list
+	 */
+	new_f->is_primary = true;
+	new_f->add = true;
+	adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
+	ether_addr_copy(hw->mac.addr, new_mac);
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
 	/* schedule the watchdog task to immediately process the request */
-	if (f) {
-		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
-		return 0;
-	}
-	return -ENOMEM;
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
+	return 0;
 }
 
 /**
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
