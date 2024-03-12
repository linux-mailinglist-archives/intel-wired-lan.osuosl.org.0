Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E138F87926A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 11:48:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7A0B405BC;
	Tue, 12 Mar 2024 10:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVdEFlsMq3qL; Tue, 12 Mar 2024 10:48:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0ABB4057D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710240528;
	bh=31NwbCk2o1cNPCBfk3CfSHDMmQWOox8umQC0yCpmOpk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=55BrZmqxnkOwmGIYcM1omu6sTDYeDYGdIigkfKXq9AY+wvKUgk88Sdlyk0Z/Oy5SQ
	 l82uaqcq8pCiQbd24C6J81REeT9IW4CP+eusVudZGD9Am9CdIqmzDGEVpXxQxZrZ88
	 Ye4zKevqjj/UHs0izbabNS7uksblgokNygfuwPgPs1kohatR4W5bxxH2HUhjaDjoMb
	 TIehwB24cujK0x7pzpTSepptpUpKHMfCNUegREW3ny0AXJv6gJJeEwxio6mhB/85Yc
	 RIRvDI1zEk0+WACmcabGlQDqP0e3b7Rn0WDjMjf2irZbkpqHBCI7nir+uD9QVQrqCs
	 e2kShcwwGZI9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0ABB4057D;
	Tue, 12 Mar 2024 10:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC12B1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:48:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C571760808
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJsOeyh5NN5a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 10:48:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB333607FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB333607FC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB333607FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:48:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8758554"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8758554"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 03:48:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="12095203"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2024 03:48:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Mar 2024 11:52:59 +0100
Message-ID: <20240312105259.2450-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710240526; x=1741776526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XqpuxNww9Li/38WNhwzwGk9ImbAMuDJdMYjPXKQiHXo=;
 b=AMLggJjOSgfRBzP1AYvYEYOOu09mJx8TijZU02J5m2O4OtErvzhySlL1
 rc1zs8T9Z9XnlQcNwPyKJ0DsC4Ms8fwGepDuRnzdz+iSx/X7X/k5UFrY+
 B2r4hJhMr9Iq3cISDzXv7xonfryXPS3+B09DMT1wtWWpO+0t3vcNd/DFM
 a99jnaWaSmvbLhUCo7o1u5d6uJyYFoKZQ7DINvGikBJHGkMkBxT/kKAsW
 peIuveYlm0UFvbX/0oYtGK108AMAdZpNaQznl7yh+h+U8DgXOhT9U+ML+
 IHE/O8YcwRe8Rw8SlKJatpKPzGhJSjHk7+ZJ1sEKKxbJjcIA9kWBhUQMe
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AMLggJjO
Subject: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
 profiles
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A simple non-tunnel rule (e.g. matching only on destination MAC) in
hardware will be hit only if the packet isn't a tunnel. In software
execution of the same command, the rule will match both tunnel and
non-tunnel packets.

Change the hardware behaviour to match tunnel and non-tunnel packets in
this case. Do this by considering all profiles when adding non-tunnel rule
(rule not added on tunnel, or not redirecting to tunnel).

Example command:
tc filter add dev pf0 ingress protocol ip flower skip_sw action mirred \
	egress redirect dev pr0

It should match also tunneled packets, the same as command with skip_hw
will do in software.

Fixes: 9e300987d4a8 ("ice: VXLAN and Geneve TC support")
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v1 --> v2:
 * fix commit message sugested by Marcin
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index b890410a2bc0..47f28cd576c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -158,7 +158,7 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
 	case TNL_GTPC:
 		return ICE_SW_TUN_GTPC;
 	default:
-		return ICE_NON_TUN;
+		return ICE_SW_TUN_AND_NON_TUN;
 	}
 }
 
-- 
2.42.0

