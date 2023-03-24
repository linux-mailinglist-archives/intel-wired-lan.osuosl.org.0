Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 703B56C8327
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Mar 2023 18:16:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05A4961657;
	Fri, 24 Mar 2023 17:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05A4961657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679678208;
	bh=0WYXJZeFv0YKvu+Rm5/thJX93hSO3SQ75GwZBdqK9Hg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eBaC5DM5tiTg8DH1fpVOkgS/n86v3JWRIH7RBDaE0tUJx3awW67aqJXlBJeXxdVTr
	 sV4SkFpUiri4eRs/fXNw3hGQ53qftHukve1xjnORXAKj8xEkdCckfesNwkK1q/KMim
	 8/UORBpuYOtZZ0DKtY0smI3y0mky2DrAO7UNeiKea4f7Gcuh7J2saD//oD5Kbpt1xE
	 rErRe6BrYEOChiE/wvGGlwwy0Lk8iraaImucErgCgCtJNRykLqsfjVHritUhOJx7JF
	 0CXcPm6y6kZAwTcxwy0rnN7brQUHBhqxYoLSfN2ehmxAJ/Lug/XLlzSrIzwOPQ0Eew
	 HGpKO7WULKDTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FiBK8ckAJRr0; Fri, 24 Mar 2023 17:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD166164F;
	Fri, 24 Mar 2023 17:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECD166164F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E2801BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 17:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6694E61649
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 17:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6694E61649
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0VM1m9xA3cNR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Mar 2023 17:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B7386104C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B7386104C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 17:16:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="367569030"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="367569030"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 10:16:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="682757615"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="682757615"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga002.jf.intel.com with ESMTP; 24 Mar 2023 10:16:39 -0700
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Mar 2023 18:16:38 +0100
Message-Id: <20230324171638.1212516-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679678201; x=1711214201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M1Qmptj/RwDhA8EnZnBfJWSIfWRT9qvA+VPBJKGRdok=;
 b=Kwp3VKqPYmjM4sVVYhFjTvLt13OQ2ex6vKZpNo8nYk1qtFIUZ4D1OD8t
 0v8TGCWcdkRN4ByGU6jZBTskTCnjAkPlhlqmUhn7bcNsnAJgAaM+qngi2
 aGtFyaF9nq5ARtDQKz1jmpIIg8m6AQFQ1ng1S6LZ3wYQaMN8a5oQM/yML
 aEJMXzLyXtjW7Jee00V4uQ7NbMKsOR8NPIHOwQht+U8IlNtd/6pOd66jj
 xU4bj6z95+1cdA90bjdKXscIkkDmn0Ib2am8cjrJ/NJAXj9MNjIOzed0J
 nbmqDZkFrULo3Qp82XPj5OrwLyOetGBVciRsfaNNVxhvozl1R7LpVXPwv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kwp3VKqP
Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix accessing
 vsi->active_filters without holding lock
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Fix accessing vsi->active_filters without holding the mac_filter_hash_lock.
Move vsi->active_filters = 0 inside critical section and
move clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state) after the critical
section to ensure the new filters from other threads can be added only after
filters cleaning in the critical section is finished.

Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC Address as key")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d59b9a0..b1b781d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13928,15 +13928,15 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 		vsi->id = ctxt.vsi_number;
 	}
 
-	vsi->active_filters = 0;
-	clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
+	vsi->active_filters = 0;
 	/* If macvlan filters already exist, force them to get loaded */
 	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
 		f->state = I40E_FILTER_NEW;
 		f_count++;
 	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
+	clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 
 	if (f_count) {
 		vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
