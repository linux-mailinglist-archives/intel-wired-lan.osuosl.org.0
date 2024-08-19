Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B00956574
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 10:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47284606ED;
	Mon, 19 Aug 2024 08:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id swFrSpEAarQI; Mon, 19 Aug 2024 08:22:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 259C1607DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724055745;
	bh=wU9YY/OHXanC+OpGzWKW8Q6qIFL3l6dg7c7JGVOoUGU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rVONnSO7nnTib1ixB+KAnmLWdmJMwlFsrEsNtGVvSKffmwhkOO88E8LYO7t2OEufb
	 oy8EvDc2XjanNIM18K/mXhvAUsO0caR/7MvtRtrM0PZ15vPsFDk/v7Heod1BfTqXhs
	 3HKZ9e0dYejoVueuoSLmpyo2lY0cnqvsjZFjFaKVnalVwURZAkBQQJgK0WNLMhVqSR
	 ODETzEIdJt9ol8q9ujm0tdOIcfgaX6lZ982At8Z7VjKXgKiFRVApuHY/BCbhgOl2xp
	 y3hnWfFXn3tiRIez6xGqEtxQKY+rKPc0L9asLKI6nSmOfPpeSyhUNp2SU+AjASN7Tj
	 uREWJPgb6WDrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 259C1607DC;
	Mon, 19 Aug 2024 08:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 84C6A1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F22E4039B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tOHFRJk4s-tp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 08:22:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19B71401F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19B71401F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19B71401F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:22:21 +0000 (UTC)
X-CSE-ConnectionGUID: hwPclFLXTKm8PSe+NyP+xw==
X-CSE-MsgGUID: Dgp+iGegTk641I9mVAJ0dQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="22448802"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="22448802"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 01:22:21 -0700
X-CSE-ConnectionGUID: Txa8hZkSS6inXhBloUEXGA==
X-CSE-MsgGUID: fRBEIrreSQKXDxwRCSc0FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="60869202"
Received: from pae-dbg-x10sri-f_n1_f.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.91.240.220])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 01:22:19 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Aug 2024 10:21:45 +0200
Message-ID: <20240819082146.101755-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724055742; x=1755591742;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DWICka1MZHfqXft4Aee6aor0uqM4lk/I1OVqidyjSH8=;
 b=N/atTtRWsyMrrSasiVgrvdob1dka2rsYB+djfHOVK6pX5ZGiTXZziOa/
 8EX3ie2bhc3lw6ColgsKT4BErNd/o34Gr2F94YDRQ6nv2hTyTKX4wjwRr
 v8bEu+BdJOa1H4pPh7VoKeBMfAWdIyWpuDDuolNz3C9j7m4C+VOTC1xYP
 zRZ6FSglmyiIcWmjqUrZIKEsSyl/yCNxImBaorwevjOkuplrF38w2XvFt
 OHSJisPaYsqSt1pw7+KEBekLgjzauu7NAiQ9tySOHlOqYotKNlDmJRWFC
 8im+L4sl7/7nGq4kit5y+uTLmKBV4XLcrqoW+WATYAFwf6H5ekmkswDdl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N/atTtRW
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: maciej.fijalkowski@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, kalesh-anakkur.purayil@broadcom.com,
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool callbacks can be executed while reset is in progress and try to
access deleted resources, e.g. getting coalesce settings can result in a
NULL pointer dereference seen below.

Reproduction steps:
Once the driver is fully initialized, trigger reset:
	# echo 1 > /sys/class/net/<interface>/device/reset
when reset is in progress try to get coalesce settings using ethtool:
	# ethtool -c <interface>

BUG: kernel NULL pointer dereference, address: 0000000000000020
PGD 0 P4D 0
Oops: Oops: 0000 [#1] PREEMPT SMP PTI
CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
Call Trace:
<TASK>
ice_get_coalesce+0x17/0x30 [ice]
coalesce_prepare_data+0x61/0x80
ethnl_default_doit+0xde/0x340
genl_family_rcv_msg_doit+0xf2/0x150
genl_rcv_msg+0x1b3/0x2c0
netlink_rcv_skb+0x5b/0x110
genl_rcv+0x28/0x40
netlink_unicast+0x19c/0x290
netlink_sendmsg+0x222/0x490
__sys_sendto+0x1df/0x1f0
__x64_sys_sendto+0x24/0x30
do_syscall_64+0x82/0x160
entry_SYSCALL_64_after_hwframe+0x76/0x7e
RIP: 0033:0x7faee60d8e27

Calling netif_device_detach() before reset makes the net core not call
the driver when ethtool command is issued, the attempt to execute an
ethtool command during reset will result in the following message:

    netlink error: No such device

instead of NULL pointer dereference. Once reset is done and
ice_rebuild() is executing, the netif_device_attach() is called to allow
for ethtool operations to occur again in a safe manner.

Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
Changes since v1:
* Changed Fixes tag to point to another commit
* Minified the stacktrace

Changes since v2:
* Moved netif_device_attach() directly into ice_rebuild() and perform it
  only on main vsi

Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5be90@kernel.org/
Previous attempt (dropped because it introduced regression with link up): https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@linux.intel.com/
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index eaa73cc200f4..27ec5d8d5810 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -608,6 +608,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 			memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_qopt));
 		}
 	}
+	if (vsi->netdev)
+		netif_device_detach(vsi->netdev);
 skip:
 
 	/* clear SW filtering DB */
@@ -7731,6 +7733,10 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		ice_rebuild_arfs(pf);
 	}
 
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	if (vsi && vsi->netdev)
+		netif_device_attach(vsi->netdev);
+
 	ice_update_pf_netdev_link(pf);
 
 	/* tell the firmware we are up */
-- 
2.44.0

