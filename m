Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B847894EAAF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 12:22:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2678580D01;
	Mon, 12 Aug 2024 10:22:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g5pbVH1nhxFH; Mon, 12 Aug 2024 10:22:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8A258117C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723458174;
	bh=3ttg4DFDve4yIDqcZ9WnOeznh6YcPJ/VDPc0qjo24IM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RfaYIulwFuvrD/Zz6YBI9un7BzLRkZhXXbKgShnpg0uOZkYf+xg1xGKvvhN4yLRGn
	 ExkaY4i36P/MtvSurvt82QqZceEbOLGETFDLImXlfGmmKHCxP2B+UQRV+ITwkWGdwU
	 B04eZNGEtbSXgsDUqImq15a19MFF1Ir4ckJx8s62/q0VJY7p3b8qkkhds4e2xlj76a
	 +nO8xG+6+yD74Apo+t6yuz+L4WO9IuKUAxkpZLAnuiQzhaeUikOJaN6WQA6EFqg9Gf
	 DZxFLdiCOQdCCNDuSVo/ov6mM2XUZaoiamOgCKqVuWc16scJXgPv90aDNxCa1pspJ6
	 7J8QtgsfKeJhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8A258117C;
	Mon, 12 Aug 2024 10:22:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDC001BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA3D560607
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HBImV07U7PVV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 10:22:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A9D8060685
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9D8060685
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9D8060685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:22:50 +0000 (UTC)
X-CSE-ConnectionGUID: c1VOuq/iR3+Qk2z6DLgWLw==
X-CSE-MsgGUID: UBrnORi0SMuayc1EJa3Iaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="32136005"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="32136005"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:22:46 -0700
X-CSE-ConnectionGUID: AJAwE+A4SI6iu6TITU8eXw==
X-CSE-MsgGUID: VElN2wIJQzuTEX2VSd5yuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="62613083"
Received: from pae-dbg-x10sri-f_n1_f.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.91.240.220])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:22:45 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Aug 2024 12:22:10 +0200
Message-ID: <20240812102210.61548-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723458171; x=1754994171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tYhLxclXaKVXswK+4W1XffGX3be84NWSNSrdlVKsJ1s=;
 b=hAy64I9tLOfS6taJBonv83yBX+PnmmYevM9AA6ZTRLNizk2tgsmIj6bf
 6CKFhQI27ivq0Ra8azK1lWJHt+SRzl6HFUqXQwoZiwbX5bPqcyPLFJOSH
 mOoLtY+ztPTDU/Q7kGk/+bRE/mMMHANoEiw8pnrskJFzlGzEJlhIieRa8
 zCt+M7lBXOUd78tiQH/cq62TCswymLIWi7pbLGxToQS+4HdVTbpDJT/ZU
 YadIHqcvvgJWwIhpMSODTEo9ur0b/GK3ldDH7CnHboOJVJou/yBfRQK6b
 SkwxJrM6t6zJHfSUWAZ4oF219jh78rt1lnPchiN9i/h+XosuEmQuBQMDB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hAy64I9t
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Add
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
Cc: netdev@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool callbacks can be executed while reset is in progress and try to
access deleted resources, e.g. getting coalesce settings can result in a
NULL pointer dereference seen below.

Once the driver is fully initialized, trigger reset:
	# echo 1 > /sys/class/net/<interface>/device/reset
when reset is in progress try to get coalesce settings using ethtool:
        # ethtool -c <interface>

Calling netif_device_detach() before reset makes the net core not call
the driver when ethtool command is issued, the attempt to execute an
ethtool command during reset will result in the following message:

    netlink error: No such device

instead of NULL pointer dereference. Once reset is done and
ice_rebuild() is executing, the netif_device_attach() is called to allow
for ethtool operations to occur again in a safe manner.

[  +0.000105] BUG: kernel NULL pointer dereference, address: 0000000000000020
[  +0.000027] #PF: supervisor read access in kernel mode
[  +0.000011] #PF: error_code(0x0000) - not-present page
[  +0.000011] PGD 0 P4D 0
[  +0.000008] Oops: Oops: 0000 [#1] PREEMPT SMP PTI
[  +0.000012] CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
[  +0.000015] Hardware name: Supermicro Super Server/X10SRi-F, BIOS 2.0 12/17/2015
[  +0.000013] RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
[  +0.000090] Code: 00 55 53 48 89 fb 48 89 f7 48 83 ec 08 0f b7 8b 86 04 00 00 0f b7 83 82 04 00 00 39 d1 7e 30 48 8b 4b 18 48 63 ea 48 8b 0c e9 <48> 8b 71 20 48 81 c6 a0 01 00 00 39 c2 7c 32 e8 ee fe ff ff 85 c0
[  +0.000029] RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
[  +0.000012] RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
[  +0.000012] RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
[  +0.000012] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[  +0.000013] R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
[  +0.000012] R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
[  +0.000012] FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
[  +0.000014] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000011] CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
[  +0.000012] Call Trace:
[  +0.000009]  <TASK>
[  +0.000007]  ? __die+0x23/0x70
[  +0.000012]  ? page_fault_oops+0x173/0x510
[  +0.000011]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
[  +0.000071]  ? search_module_extables+0x19/0x60
[  +0.000013]  ? search_bpf_extables+0x5f/0x80
[  +0.000012]  ? exc_page_fault+0x7e/0x180
[  +0.000013]  ? asm_exc_page_fault+0x26/0x30
[  +0.000014]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
[  +0.000070]  ice_get_coalesce+0x17/0x30 [ice]
[  +0.000070]  coalesce_prepare_data+0x61/0x80
[  +0.000012]  ethnl_default_doit+0xde/0x340
[  +0.000012]  genl_family_rcv_msg_doit+0xf2/0x150
[  +0.000013]  genl_rcv_msg+0x1b3/0x2c0
[  +0.000009]  ? __pfx_ethnl_default_doit+0x10/0x10
[  +0.000011]  ? __pfx_genl_rcv_msg+0x10/0x10
[  +0.000010]  netlink_rcv_skb+0x5b/0x110
[  +0.000013]  genl_rcv+0x28/0x40
[  +0.000007]  netlink_unicast+0x19c/0x290
[  +0.000012]  netlink_sendmsg+0x222/0x490
[  +0.000011]  __sys_sendto+0x1df/0x1f0
[  +0.000013]  __x64_sys_sendto+0x24/0x30
[  +0.000340]  do_syscall_64+0x82/0x160
[  +0.000309]  ? __mod_memcg_lruvec_state+0xa6/0x150
[  +0.000309]  ? __lruvec_stat_mod_folio+0x68/0xa0
[  +0.000311]  ? folio_add_file_rmap_ptes+0x86/0xb0
[  +0.000309]  ? next_uptodate_folio+0x89/0x290
[  +0.000309]  ? filemap_map_pages+0x521/0x5f0
[  +0.000302]  ? do_fault+0x26e/0x470
[  +0.000293]  ? __handle_mm_fault+0x7dc/0x1060
[  +0.000295]  ? __count_memcg_events+0x58/0xf0
[  +0.000289]  ? count_memcg_events.constprop.0+0x1a/0x30
[  +0.000292]  ? handle_mm_fault+0xae/0x320
[  +0.000284]  ? do_user_addr_fault+0x33a/0x6a0
[  +0.000280]  ? exc_page_fault+0x7e/0x180
[  +0.000289]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[  +0.000271] RIP: 0033:0x7faee60d8e27

Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce")
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index eaa73cc200f4..16b4920741ff 100644
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
@@ -7568,11 +7570,13 @@ static void ice_update_pf_netdev_link(struct ice_pf *pf)
 
 		ice_get_link_status(pf->vsi[i]->port_info, &link_up);
 		if (link_up) {
+			netif_device_attach(pf->vsi[i]->netdev);
 			netif_carrier_on(pf->vsi[i]->netdev);
 			netif_tx_wake_all_queues(pf->vsi[i]->netdev);
 		} else {
 			netif_carrier_off(pf->vsi[i]->netdev);
 			netif_tx_stop_all_queues(pf->vsi[i]->netdev);
+			netif_device_detach(pf->vsi[i]->netdev);
 		}
 	}
 }
-- 
2.44.0

