Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5326E8A85B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 16:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 858BD80EC0;
	Wed, 17 Apr 2024 14:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZOgXEcYJdmh; Wed, 17 Apr 2024 14:15:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B77F580EBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713363353;
	bh=2XCWnOO8chSASxslRMz7FoxWxYeNJrfqpyzLPicEu5Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EzEIifjSgutxMTdMBbO7o0PAm8SHEx1uRmn9qlsFN+TRKePJDpbcaY4IZcsW5IXBs
	 4T6eeimXpwCb87n3ocYofY6V4D1tek/Uq1dEcP7hgqbxqiR/KeK/PXGhWpo5V0/r0B
	 eNdNVqsHBWha3oKWsxRM+7fdYI6OS2GDzGABl4s0m36chEov/c3E4K0fBFdpusBY4c
	 OMq0qU/F6fWqDyFXMqcyzzvo5YiOjRbgqct1f5QOd5mAy2MX60xkDhz5cEIWeuMhwe
	 N+wpmpYkX0VIBXzInc4ng0edOsxaYl26HA8PShmkBM95Nhhhib9kvRLCBDJkPp4X91
	 vm+R+MEzvOtbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B77F580EBB;
	Wed, 17 Apr 2024 14:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FC751BF46D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 345F460884
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8bh6-H0JqqtP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 14:15:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 813CC60833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 813CC60833
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 813CC60833
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 14:15:49 +0000 (UTC)
X-CSE-ConnectionGUID: CD3RDOjpRR2qhJgyP7XfHg==
X-CSE-MsgGUID: Q7xzlfYFSpGfo8Zso8uOUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8737137"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8737137"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 07:15:50 -0700
X-CSE-ConnectionGUID: MM4sNz4iReGDtdlKbdCsxQ==
X-CSE-MsgGUID: eNDdauv2TXmWVG8ZgRHXVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="60050475"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 17 Apr 2024 07:15:46 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 16:20:24 +0200
Message-ID: <20240417142028.2171-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713363350; x=1744899350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1E2uszQfk+zUo+ucnNQQ2WB7gVrzkrOrAWmc+rg1JxU=;
 b=bIE8PaVmkguMeMntiPUamXEbhkIHcZISf7rMDa6cNNMAokUWR8NgugdP
 2QMP/6SaVXZ8Pugx6Jh21Fu9MqdcwdaJSPii8Szuxz3WXpXqsaJZfVeEu
 QRvNS0WX77ZlWJgHF2/8z+GQyLZgYhR/bKXxEsDwLslCwfT6wkLTohQVK
 GATG8wgoCOdbQlGcazOSjpuymtv95P6tZ/IZZVPfRuRhIh1TtrmoWQNhb
 m79J7x/RNQet7Wj4fKhqcjx48UI6YvwqAKz0rR5b3+y4M0+PV0UEjjsUP
 OAPxStGenoa462Ee7YVBiLd71f46gqgGYNfDV2ZJ+X+OB+9JdAmYKvZ+U
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bIE8PaVm
Subject: [Intel-wired-lan] [iwl-next v4 4/8] ice: treat subfunction VSI the
 same as PF VSI
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
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
index 9bbb7b328ae9..29552598ddb6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6677,7 +6677,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    ((vsi->netdev && vsi->type == ICE_VSI_PF))) {
+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -7375,7 +7376,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 
 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
 
-	if (vsi->type == ICE_VSI_PF) {
+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
 		if (err)
-- 
2.42.0

