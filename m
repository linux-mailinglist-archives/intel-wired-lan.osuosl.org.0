Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEB08BE123
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 13:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1300F40675;
	Tue,  7 May 2024 11:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLwTv1ZjikR3; Tue,  7 May 2024 11:40:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F551406C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715082028;
	bh=9bnGNBSeTULXiTZfL1lyDBQr/rW0ys6eF4Iu94L9gKU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZV+k+1QBDJSbBeYsbOSmbMyvEIDy+z4/U7H7Gmo1AOVY2eEkLB35duwIPeD0kHH1q
	 a/56A3pzPMmLnAnbRmsJPBLur1uoOmJ12OCGwKBmoUnaU2VZYddBmSO5TPQqjLvfp7
	 nEqGDmZ/gua+ghej86Y2BlCDH7ZLluPofB6AzuYe9AVEc7+ie8bvhlUj0r7ahb4XvY
	 mYKf8bIWNckQo+VyKAXDbwb7U4q3qI4CGAdWUxojIJCaLt4jxv3p307yc/AxteKhT/
	 VEQyRcSyZtTM7IpXEhuswEyAqM0GoyGPFq+X/PMnRFLWM/vH6zdjISPBuP9HrQ1j5f
	 dKUAhuqsQCmlg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F551406C4;
	Tue,  7 May 2024 11:40:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1335D1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0078740223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ye56MDa35x-c for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 11:40:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3EDA540154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EDA540154
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3EDA540154
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:24 +0000 (UTC)
X-CSE-ConnectionGUID: vEMe9yB/TIyL5VcOqYxrxA==
X-CSE-MsgGUID: Glq9ozMmRmiyVWAMqcHvNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="22029145"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="22029145"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 04:40:24 -0700
X-CSE-ConnectionGUID: XFUWXmy/RjaUWtbupfauJw==
X-CSE-MsgGUID: au/JKmC8TJSJxtJAlWYLlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28576691"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2024 04:40:21 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 May 2024 13:45:05 +0200
Message-ID: <20240507114516.9765-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715082025; x=1746618025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lO8+5IO5HfxSAncX4rBIRh4yy3is0kHO0is7we3eVuo=;
 b=NQt5VFU8Nwl/ynddIaT1Gr2k4IjpOtKnR1ww0Z3P+SkftVU9tlh+WRhC
 nL3wLjjXFw5JbVSeYNi/H3gYwGD4/Pmx7oexDAoca4EuxzNWlI6ch9UKv
 4kVLlh0S1n7+8SqTd6FGhW1zBBzILOU+0JFu1F9yXLSxrdcmJZbP9BgH0
 m6TZD70wW9e5zb68aKQIuzA5Hqq1bhjIo9azrayH08vmnd5NUWdGxVLpC
 KVPsb3nxrEapYgwR/THFLn6ZJUcjcDJNlidXQlJrUMPj07U8uUrChCjQo
 VOQGkTMWJ5bIevu3oML76GaE+6mMSvCp/P/zRO1wgpJWajFhhXvcEmFxW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NQt5VFU8
Subject: [Intel-wired-lan] [iwl-next v1 04/14] ice: treat subfunction VSI
 the same as PF VSI
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When subfunction VSI is open the same code as for PF VSI should be
executed. Also when up is complete. Reflect that in code by adding
subfunction VSI to consideration.

In case of stopping, PF doesn't have additional tasks, so the same
is with subfunction VSI.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7033981666a7..fdfdb27476e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6684,7 +6684,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    ((vsi->netdev && vsi->type == ICE_VSI_PF))) {
+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -7382,7 +7383,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 
 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
 
-	if (vsi->type == ICE_VSI_PF) {
+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
 		if (err)
-- 
2.42.0

