Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG/ZHU1PjGmukgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 10:43:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1E8122DB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 10:43:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06DB860EB3;
	Wed, 11 Feb 2026 09:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lAbafakOce8b; Wed, 11 Feb 2026 09:43:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75B7B60625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770803018;
	bh=f6m/Z0v3sTVc+mnIfQUCOqmdpZxyPTAXi6nT/CAuviE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W5lQkXZ0pkR2LTnUZzgGnStZz61hharyolCTGYEdf2JWGcav480Ywk+Qad/DuGw/d
	 JV0sxANbkBEEKDiuFT30ENlypAV+Cf+leMjyMXyxJ/H0DbtBniB7ioa587FnevzxoO
	 dn0dAk4uzLJikm3y75lXsHHlouFG1Oj/raUP6TBjtVWI0wY2Grs99sP402WV6Mo6fe
	 KJPznLDneb5///vvbp0B6jyHzSlACFwG11cx4dv/wSt4BEP11KdH34ZG3RQKVumGbY
	 TZQEBAXFQAaC4MFUH2vQew7g7EB3oyJq4HHnnjCyWvGKv3DE939mRyHsjYSSXaWVNv
	 GYWyaOq8n6lEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75B7B60625;
	Wed, 11 Feb 2026 09:43:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9219A23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8043E40C35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDrp7PYnDgtu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 09:43:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB21740AFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB21740AFD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB21740AFD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:43:35 +0000 (UTC)
X-CSE-ConnectionGUID: ybvmOiM3QMWIPRiPmi0edw==
X-CSE-MsgGUID: KGy+MrEXT3OfbXZXs+K4gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71844143"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71844143"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 01:43:35 -0800
X-CSE-ConnectionGUID: 1Feq19IFQUuQkHJ/wzguJA==
X-CSE-MsgGUID: 8D3a+89OQ1SWV7f1wzmaQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211599160"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa010.fm.intel.com with ESMTP; 11 Feb 2026 01:43:34 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 11 Feb 2026 10:11:40 +0100
Message-ID: <20260211091140.236389-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770803016; x=1802339016;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3R2gvJlYg2fkGJs2L5r+sIWjeFpGyp7Xsc71mVtw76k=;
 b=IhKZWvQIYn8Wgi0aKYtdwmsf5eAmzNl4mIelhLYcDNH2Mo08hLoMyWK/
 G2ocY8dlgtZY96/nEMY58jcap6lPUJJug2uB04FGnqPzAXXH4fZI5roBw
 2vrCrtEDum8Wqu5TrdAy8MpLX1Vtvp+Xjzl1NrZs3CENtG0gGeWSSm62X
 dbgNdjD7IxtWKmWSSZ5iZ7dPvPHVC2mFXhjSXo1THA5UWaOq9TOVCHvbt
 Ke7tSSd5C07Y8pREXpd79Kx/pA2CUUVHbH2voTOdKE/xi/nh3gIT9x6Sn
 oBdiZwGsFsmIKpFvDpHvJ5CnqjIU3fBPdwQHAPgczi+rdhcNHadlXBBsD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IhKZWvQI
Subject: [Intel-wired-lan] [PATCH iwl-net v1] libie: don't unroll if fwlog
 isn't supported
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB1E8122DB2
X-Rspamd-Action: no action

The libie_fwlog_deinit() function can be called during driver unload
even when firmware logging was never properly initialized. This led to call
trace:

[  148.576156] Oops: Oops: 0000 [#1] SMP NOPTI
[  148.576167] CPU: 80 UID: 0 PID: 12843 Comm: rmmod Kdump: loaded Not tainted 6.17.0-rc7next-queue-3oct-01915-g06d79d51cf51 #1 PREEMPT(full)
[  148.576177] Hardware name: HPE ProLiant DL385 Gen10 Plus/ProLiant DL385 Gen10 Plus, BIOS A42 07/18/2020
[  148.576182] RIP: 0010:__dev_printk+0x16/0x70
[  148.576196] Code: 1f 44 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 41 55 41 54 49 89 d4 55 48 89 fd 53 48 85 f6 74 3c <4c> 8b 6e 50 48 89 f3 4d 85 ed 75 03 4c 8b 2e 48 89 df e8 f3 27 98
[  148.576204] RSP: 0018:ffffd2fd7ea17a48 EFLAGS: 00010202
[  148.576211] RAX: ffffd2fd7ea17aa0 RBX: ffff8eb288ae2000 RCX: 0000000000000000
[  148.576217] RDX: ffffd2fd7ea17a70 RSI: 00000000000000c8 RDI: ffffffffb68d3d88
[  148.576222] RBP: ffffffffb68d3d88 R08: 0000000000000000 R09: 0000000000000000
[  148.576227] R10: 00000000000000c8 R11: ffff8eb2b1a49400 R12: ffffd2fd7ea17a70
[  148.576231] R13: ffff8eb3141fb000 R14: ffffffffc1215b48 R15: ffffffffc1215bd8
[  148.576236] FS:  00007f5666ba6740(0000) GS:ffff8eb2472b9000(0000) knlGS:0000000000000000
[  148.576242] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  148.576247] CR2: 0000000000000118 CR3: 000000011ad17000 CR4: 0000000000350ef0
[  148.576252] Call Trace:
[  148.576258]  <TASK>
[  148.576269]  _dev_warn+0x7c/0x96
[  148.576290]  libie_fwlog_deinit+0x112/0x117 [libie_fwlog]
[  148.576303]  ixgbe_remove+0x63/0x290 [ixgbe]
[  148.576342]  pci_device_remove+0x42/0xb0
[  148.576354]  device_release_driver_internal+0x19c/0x200
[  148.576365]  driver_detach+0x48/0x90
[  148.576372]  bus_remove_driver+0x6d/0xf0
[  148.576383]  pci_unregister_driver+0x2e/0xb0
[  148.576393]  ixgbe_exit_module+0x1c/0xd50 [ixgbe]
[  148.576430]  __do_sys_delete_module.isra.0+0x1bc/0x2e0
[  148.576446]  do_syscall_64+0x7f/0x980

It can be reproduced by trying to unload ixgbe driver in recovery mode.

Fix that by checking if fwlog is supported before doing unroll.

Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/libie/fwlog.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/libie/fwlog.c b/drivers/net/ethernet/intel/libie/fwlog.c
index f39cc11cb7c5..5d890d9d3c4d 100644
--- a/drivers/net/ethernet/intel/libie/fwlog.c
+++ b/drivers/net/ethernet/intel/libie/fwlog.c
@@ -1051,6 +1051,10 @@ void libie_fwlog_deinit(struct libie_fwlog *fwlog)
 {
 	int status;
 
+	/* if FW logging isn't supported it means no configuration was done */
+	if (!libie_fwlog_supported(fwlog))
+		return;
+
 	/* make sure FW logging is disabled to not put the FW in a weird state
 	 * for the next driver load
 	 */
-- 
2.49.0

