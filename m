Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6026297E847
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 11:12:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0417360884;
	Mon, 23 Sep 2024 09:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yL5op1BiEd8q; Mon, 23 Sep 2024 09:12:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A59D60881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727082746;
	bh=fa3WbjQFBVFQjRI3oxpRJuy+YJl5/fbIgdV6DIYT4kY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ctF1uarLh6sBZJDvQIUDt/Tk2RlWLaAyOlzlKZ3yKqZF5OGM3SjpCxLuy8OBByQ5k
	 zhxNg4EYu7NbJ0C5RrLIDgtc3tOVFLjnSNs52rRzr+6F1Ayq3tsl7ED2YIT4wXBDiO
	 Rw21CKqVONRHCL58aOHfY7zy7o0U49nAMbPCEWXCHh9AR36mmoYxfz+izSvQcAE0Bw
	 0L8y76t7CA69xZmK5LNDDWSOsR2oLwq1zOt+JHESzV/Fc5sdBB2kA7JA4ZiIV+osCX
	 A+dAf0xLTocSMXADwCeOH5Tjq2w9xr96dNowkU9EYekmUfJmYSzpqqW/+huBo9cOmr
	 AhSTvpcTk4LRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A59D60881;
	Mon, 23 Sep 2024 09:12:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 414091BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 09:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BBC340913
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 09:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ARZ7UMhHdXBp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 09:12:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EFFF0400E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFFF0400E7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFFF0400E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 09:12:22 +0000 (UTC)
X-CSE-ConnectionGUID: Rv+XOvOJQK2EuSIGTTwB/A==
X-CSE-MsgGUID: Hz6cUuoWQm2tjlgfgadUKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="36591249"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="36591249"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:12:22 -0700
X-CSE-ConnectionGUID: jog8e2WsRxGUtwgBIdJiAQ==
X-CSE-MsgGUID: IJQEDUgnSr2iuEN5CT3lMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="101856976"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa001.fm.intel.com with ESMTP; 23 Sep 2024 02:12:20 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Mon, 23 Sep 2024 11:12:19 +0200
Message-Id: <20240923091219.3040651-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727082743; x=1758618743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UatYCZokIAfgyIA3l+1UFywBBqhiRuO04TIbEcM4L7Q=;
 b=Krp4m8mhREIrkxG/fKWNvFf6411R3L/oJ+F1IqNSGaf9weAJeGY7sa3w
 jxrGAHKbaOD5VrmA4gY4R0jac9fAeUtsdb8cHyKfuSwvi7YQxh2NSwds9
 3AarEirWezObsfg2RC4eDoDP3bBev422xMEdJiB9xdbu+q5ekf3K9Khyk
 D98wcsc7qQ2HeIQATR77rFg3hvaVwyEhuAfGAsd0jeNyCKmO5Bmni+fgj
 zhAdriTP+6Cm8+mdkRREmyYmOC6V3V2UaFHmwusiIvlFD1ke+a2r9wMaf
 Q5jm3bGja4Gdu4DtdVImJ9QTP0+1CnoG5CfduQYsYVxwplrIO2vBWywKo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Krp4m8mh
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix macvlan leak by
 synchronizing access to mac_filter_hash
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch addresses a macvlan leak issue in the i40e driver caused by
concurrent access to vsi->mac_filter_hash. The leak occurs when multiple
threads attempt to modify the mac_filter_hash simultaneously, leading to
inconsistent state and potential memory leaks.

To fix this, we now wrap the calls to i40e_del_mac_filter() and zeroing
vf->default_lan_addr.addr with spin_lock/unlock_bh(&vsi->mac_filter_hash_lock),
ensuring atomic operations and preventing concurrent access.

Additionally, we add lockdep_assert_held(&vsi->mac_filter_hash_lock) in
i40e_add_mac_filter() to help catch similar issues in the future.

Reproduction steps:
1. Spawn VFs and configure port vlan on them.
2. Trigger concurrent macvlan operations (e.g., adding and deleting
	portvlan and/or mac filters).
3. Observe the potential memory leak and inconsistent state in the
	mac_filter_hash.

This synchronization ensures the integrity of the mac_filter_hash and prevents
the described leak.

Fixes: fed0d9f13266 ("i40e: Fix VF's MAC Address change on VM")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c        | 1 +
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 03205eb..25295ae 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1734,6 +1734,7 @@ struct i40e_mac_filter *i40e_add_mac_filter(struct i40e_vsi *vsi,
 	struct hlist_node *h;
 	int bkt;
 
+	lockdep_assert_held(&vsi->mac_filter_hash_lock);
 	if (vsi->info.pvid)
 		return i40e_add_filter(vsi, macaddr,
 				       le16_to_cpu(vsi->info.pvid));
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 662622f..dfa785e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2213,8 +2213,10 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 		vfres->vsi_res[0].qset_handle
 					  = le16_to_cpu(vsi->info.qs_handle[0]);
 		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO) && !vf->pf_set_mac) {
+			spin_lock_bh(&vsi->mac_filter_hash_lock);
 			i40e_del_mac_filter(vsi, vf->default_lan_addr.addr);
 			eth_zero_addr(vf->default_lan_addr.addr);
+			spin_unlock_bh(&vsi->mac_filter_hash_lock);
 		}
 		ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
 				vf->default_lan_addr.addr);
-- 
2.25.1

