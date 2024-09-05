Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F95A96D2E3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 11:14:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C13A405CC;
	Thu,  5 Sep 2024 09:14:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C5mxMJ1azsbg; Thu,  5 Sep 2024 09:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EE3D405CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725527656;
	bh=jCGLrQnhGQzrtcojyrCWg/5fBEhBuRKw3rbjGENWllM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FFK8m1S1R2xD90h2eNBCgYPxjhptWbjsHlBJZykrstiqXGUiwenZXgzBDQ5Y1gv8J
	 hAatQhGHln7aIxItzRsQWj7OWUTdxq1zo9fNvdguzEQVMSCR+Gg+g61ifbeEJ2IqY4
	 mpMAP/DiDMncnGvsqPay9sJxBWEa8h1xGCyadzOL5A55ZSW9CFoZmnCVGdr99cvLac
	 PDWmMoH6P72QBqbhd10En2PnGuvmmm17QVGqsCGYlOhkMjPismpjBibMbutEkfpwna
	 yrNjSI1O88JxCqDBlgFBoAirC4Iwb4qD8N9pGRdIoSrrvI5wbiONpbg3zEN6aVA/gw
	 OZbxY5v9feYrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EE3D405CD;
	Thu,  5 Sep 2024 09:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB1C51BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 09:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D500760906
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 09:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LIvzQoywHMXh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 09:14:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D69E0608FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D69E0608FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D69E0608FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 09:14:13 +0000 (UTC)
X-CSE-ConnectionGUID: Eup+Vv/BSP+aK90dYSvUfA==
X-CSE-MsgGUID: gLAjfdjqSR6Dzkx8waq77w==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24392681"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24392681"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 02:14:13 -0700
X-CSE-ConnectionGUID: QOzOCvNASQKEJM2Gp4v7Wg==
X-CSE-MsgGUID: JVJcBi6BRJCbDlcH9Kgb3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70351636"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 05 Sep 2024 02:14:11 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Sep 2024 11:14:10 +0200
Message-ID: <20240905091410.26909-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725527654; x=1757063654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=awy5tMWWrj15MgcU70e/RZ7p4BgVYMs1FLyw7E15Tz4=;
 b=YjbvTy3RkICzbaHuvFdFW/NBFfcBxpmB5CkiN9Ja5sG1LSvpCZ8A2s83
 x5V923OwNiqOG+TYEqLllivICUoh+5tAFBEfV6kasFTzEGNMSAINn0d0P
 aA9+dtUs4Qali3hm2LBLRevnTqnU3lDM7h6jY4TIM/AdZ3kwHYQmacu/D
 J+Y9uEEJg6wIEe3Th6EfIg3PxdAHGLOc6mAxXS6usbUjpiQLtBMfQfCXP
 aJLXShFyJ2sDdHLMbAn9cFhFpkbQ860zLgl1btavK87Bgp4L348VOlAPx
 06AXgaiYp8Lo4vZfw4lQ+3ajw5XrSShzLxxdLgl3VOzl1otkLiJpU1lsn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YjbvTy3R
Subject: [Intel-wired-lan] [iwl-net v2] iavf: allow changing VLAN state
 without calling PF
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
Cc: netdev@vger.kernel.org, wojciech.drewek@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

First case:
> ip l a l $VF name vlanx type vlan id 100
> ip l d vlanx
> ip l a l $VF name vlanx type vlan id 100

As workqueue can be execute after sometime, there is a window to have
call trace like that:
- iavf_del_vlan
- iavf_add_vlan
- iavf_del_vlans (wq)

It means that our VLAN 100 will change the state from IAVF_VLAN_ACTIVE
to IAVF_VLAN_REMOVE (iavf_del_vlan). After that in iavf_add_vlan state
won't be changed because VLAN 100 is on the filter list. The final
result is that the VLAN 100 filter isn't added in hardware (no
iavf_add_vlans call).

To fix that change the state if the filter wasn't removed yet directly
to active. It is save as IAVF_VLAN_REMOVE means that virtchnl message
wasn't sent yet.

Second case:
> ip l a l $VF name vlanx type vlan id 100
Any type of VF reset ex. change trust
> ip l s $PF vf $VF_NUM trust on
> ip l d vlanx
> ip l a l $VF name vlanx type vlan id 100

In case of reset iavf driver is responsible for readding all filters
that are being used. To do that all VLAN filters state are changed to
IAVF_VLAN_ADD. Here is even longer window for changing VLAN state from
kernel side, as workqueue isn't called immediately. We can have call
trace like that:

- changing to IAVF_VLAN_ADD (after reset)
- iavf_del_vlan (called from kernel ops)
- iavf_del_vlans (wq)

Not exsisitng VLAN filters will be removed from hardware. It isn't a
bug, ice driver will handle it fine. However, we can have call trace
like that:

- changing to IAVF_VLAN_ADD (after reset)
- iavf_del_vlan (called from kernel ops)
- iavf_add_vlan (called from kernel ops)
- iavf_del_vlans (wq)

With fix for previous case we end up with no VLAN filters in hardware.
We have to remove VLAN filters if the state is IAVF_VLAN_ADD and delete
VLAN was called. It is save as IAVF_VLAN_ADD means that virtchnl message
wasn't sent yet.

Fixes: 0c0da0e95105 ("iavf: refactor VLAN filter states")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v2: https://lore.kernel.org/netdev/20240904120052.24561-1-michal.swiatkowski@linux.intel.com/
 * add missing state in case of delete
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ff11bafb3b4f..3eae0a456e86 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -773,6 +773,11 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 		f->state = IAVF_VLAN_ADD;
 		adapter->num_vlan_filters++;
 		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
+	} else if (f->state == IAVF_VLAN_REMOVE) {
+		/* IAVF_VLAN_REMOVE means that VLAN wasn't yet removed.
+		 * We can safely only change the state here.
+		 */
+		f->state = IAVF_VLAN_ACTIVE;
 	}
 
 clearout:
@@ -793,8 +798,18 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
 
 	f = iavf_find_vlan(adapter, vlan);
 	if (f) {
-		f->state = IAVF_VLAN_REMOVE;
-		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_VLAN_FILTER);
+		/* IAVF_ADD_VLAN means that VLAN wasn't even added yet.
+		 * Remove it from the list.
+		 */
+		if (f->state == IAVF_VLAN_ADD) {
+			list_del(&f->list);
+			kfree(f);
+			adapter->num_vlan_filters--;
+		} else {
+			f->state = IAVF_VLAN_REMOVE;
+			iavf_schedule_aq_request(adapter,
+						 IAVF_FLAG_AQ_DEL_VLAN_FILTER);
+		}
 	}
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
-- 
2.42.0

