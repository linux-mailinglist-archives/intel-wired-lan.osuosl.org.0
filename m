Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 938EF96BB69
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:01:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 482B7404CB;
	Wed,  4 Sep 2024 12:00:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42Xr3aK_ubL0; Wed,  4 Sep 2024 12:00:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3904E404BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725451258;
	bh=btdF+hOaM4NJKxMT+Se1ljP27WASPlSy0rXg+U4asao=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NZBjYafvyKIijyuK6yP2WbEbVW3DLDQAYLAVZJyk5ays3UE/tXGXF1JlygTfXwhng
	 fzWBziqHqQzQF/o9uxcMFkCSvL+ViODXP8MiOVpvl76yRWyznocfB6qFcIXRx1KRqE
	 PM7x407FzDFha3OILI++of9LmQ60QjguzJxbflTrn67arH6KoovZrNyDBd+13bZJ60
	 a+uHjWP4zV2mrTgh+jGEsnrLRnZP6QYhI/VqxWTmxr7DCl4VW9z4NuzRF+L8rOknwz
	 eFDGi9GxTPnDkdAnZSFALywvivHDFzdjM/J9jagSL5xuh1yEsVhjLqyKy+KlCSLT83
	 g/K24kXb42NgQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3904E404BF;
	Wed,  4 Sep 2024 12:00:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 319591BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C793811CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:00:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uyUE_OaByNuS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 12:00:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 29CD7811CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29CD7811CF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29CD7811CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:00:54 +0000 (UTC)
X-CSE-ConnectionGUID: GGBXuyo3QfWgCyH6oTI15A==
X-CSE-MsgGUID: EkZuOCWVQ1uqHerujG2IgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41604761"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="41604761"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:00:54 -0700
X-CSE-ConnectionGUID: 2k/PEZ7uRjOkQP9AP5dn6A==
X-CSE-MsgGUID: qm8bJafYR2uIVRHMORfvMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65587654"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa006.jf.intel.com with ESMTP; 04 Sep 2024 05:00:53 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Sep 2024 14:00:52 +0200
Message-ID: <20240904120052.24561-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725451255; x=1756987255;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VcjJN/0JVmbUk8ZLjYz5iPFJ5gdF/EBYzp9ZTry6rwA=;
 b=DQ+pdyPTTv/EAidZZhkMS2hIWrHK2v1mbSyIxPyTP8kSOiuIqiZljvPi
 rwewD5L7+7/xnlTdG2tRntgIvWnDOETQ3eSHeWxpDmcnBsRxxyBV6SDJo
 440rNCKHEAnpqrAm5VUh/NXWd/yRp06Y/VEhKmqpg/sSnncbnihBQLfVh
 QjqfE05VEh+Sj9fpOtJZWH9x9isKqiemiyfnOSj3vv+j0jCEgtVgaklM0
 +wnyp5WeFzDTxz1mnLA3wh0zLVDDEO2wtV379F6JikAI/GIExlU7XV2f+
 fntDfSf9bYnIOO+XU0EN9efjoAgHbTn/vt6dFzrnwInqeaQTklCrNoDOm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DQ+pdyPT
Subject: [Intel-wired-lan] [iwl-net v1] iavf: allow changing VLAN state
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
Cc: netdev@vger.kernel.org, wojciech.drewek@intel.com
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
 drivers/net/ethernet/intel/iavf/iavf_main.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ff11bafb3b4f..ae5e37eac761 100644
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
@@ -793,8 +798,17 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
 
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
+			iavf_schedule_aq_request(adapter,
+						 IAVF_FLAG_AQ_DEL_VLAN_FILTER);
+		}
 	}
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
-- 
2.42.0

