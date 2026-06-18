Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fXPqJa1FNGoRTgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 21:23:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 994CE6A2567
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 21:23:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=4AYjza0+;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00C3E60DC9;
	Thu, 18 Jun 2026 19:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cMnhgNF5MAtO; Thu, 18 Jun 2026 19:23:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72E49611AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781810601;
	bh=l92oz4u/pBNJX0opGI++zchwD6DURiMeih8RSMaajXM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4AYjza0+J6RkePlMa+dajz8bTARSmFxxywM6C4NrpqBpZjrcQ/Og5EXylQbR4YhGO
	 aR4TiNfJ4yaYH0dqYMOhkBM71quz4hbq74RBHeAQc46aTYe/3KjWEUrfuOTd5Sa8NN
	 y/FMRezAD2z/qHWmhegl6BObVQwvlr5TQk6M7rVEzwRWD4AThVzBFC2BWdPSqB28gF
	 Jve3o4UVy3BLGdBRiz0EE/bwmosH2PxZXuFVuhpUgsYOziAAqus9y/thQDHm1HkXdN
	 aWaMKrKlgZz2yTEILj5Inne56bBvewAVcUMpE34yn0nd4/vWd5H1x7wYznG0zxcp6p
	 Rp+s+jLiEWQ8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72E49611AD;
	Thu, 18 Jun 2026 19:23:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 419B7131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 19:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E45C41B5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 19:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qK78Kk0UsgJB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 19:23:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54B6D41B54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54B6D41B54
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54B6D41B54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 19:23:18 +0000 (UTC)
X-CSE-ConnectionGUID: 6oHGaeZJRE2nsoZFPycqqQ==
X-CSE-MsgGUID: DMBzAUptRBWR3lkClUEuTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="86505720"
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="86505720"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 12:23:18 -0700
X-CSE-ConnectionGUID: FVhhM8NcSvGX2HU96GXQ8g==
X-CSE-MsgGUID: XVgSdvjZRHC7GrD+ZJ4K2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="278629701"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa002.jf.intel.com with ESMTP; 18 Jun 2026 12:23:18 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 madhu.chittim@intel.com
Date: Thu, 18 Jun 2026 12:23:25 -0700
Message-Id: <20260618192325.8694-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781810599; x=1813346599;
 h=from:to:cc:subject:date:message-id;
 bh=yapDqlQRJ9ZB+JbdsgpGx4YyzPxiAey0/KwVVRn924g=;
 b=B0HYO1WFYeYlax0A9u9YhAL0Him++HICumFR9yhF/OsUqiD8+eA3f+fU
 GMLtjz6JdU3aITeGnEv4BKyewzoMlqmJSL5aTOflp4N+ShhVtRcvdxnav
 QmS8/VusGovvpOMQlJMr8kfufT32V578kwGcp18B4cHExY8veFNqNnEkh
 82Mr++IhA8YaHJKr70xluvtMRc4JkaItEhtOs/S8Cy2NHyC4WgTu6cmtB
 jVheimdVkL0lP/OfjO+KGhZZSodiWBvpNglwTbjRYt73Ur/G0JMlTTqJq
 wb3er4uJbXjyOEa9MnXQ+2eIOVaYiLiIo2cugRqYz3lwgP956GKi6iyCn
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B0HYO1WF
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport related crash
 on allocation error during init
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 994CE6A2567

Set adapter->max_vports only after successful allocation of vports, netdevs
and  vport_config buffers. This fixes possible crashes on reset or rmmod,
following failed allocation on init

[  305.981402] idpf 0000:83:00.0: enabling device (0100 -> 0102)
[  305.994464] idpf 0000:83:00.0: Device HW Reset initiated
[  320.416872] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  320.416918] #PF: supervisor read access in kernel mode
[  320.416942] #PF: error_code(0x0000) - not-present page
[  320.416963] PGD 2099657067 P4D 0
[  320.416983] Oops: Oops: 0000 [#1] SMP NOPTI
...
[  320.417093] RIP: 0010:idpf_remove+0x118/0x200 [idpf]
[  320.417130] Code: 8b bb 98 09 00 00 e8 17 0f 5b e5 48 8b bb e8 08 00 00 e8 0b 0f 5b e5 66 83 bb 28 06 00 00 00 48 8b bb 20 06 00 00 74 49 31 ed <48> 8b 04 ef 48 85 c0 74 2f 48 8b 78 20 e8 66 58 91 e5 48 8b 83 20
[  320.417183] RSP: 0018:ff7322212903fdb8 EFLAGS: 00010246
[  320.417205] RAX: 0000000000000000 RBX: ff4463de40300000 RCX: ff7322212903fd4c
[  320.417228] RDX: 0000000000000001 RSI: ffffffffa7f7d100 RDI: 0000000000000000
[  320.417250] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000000
[  320.417272] R10: 0000000000000001 R11: ff4463de3a638f58 R12: ff4463be89ac7000
[  320.417294] R13: ff4463be89ac7198 R14: ff4463be94fc7198 R15: ffffffffc0f10f20
[  320.417317] FS:  00007f963c0e6740(0000) GS:ff4463fdd65d8000(0000) knlGS:0000000000000000
[  320.417342] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  320.417362] CR2: 0000000000000000 CR3: 00000020ba674002 CR4: 0000000000773ef0
[  320.417385] PKRU: 55555554
[  320.417398] Call Trace:
[  320.417412]  <TASK>
[  320.417429]  pci_device_remove+0x42/0xb0
[  320.417459]  device_release_driver_internal+0x1a9/0x210
[  320.417492]  driver_detach+0x4b/0x90
[  320.417516]  bus_remove_driver+0x70/0x100
[  320.417539]  pci_unregister_driver+0x2e/0xb0
[  320.417564]  __do_sys_delete_module.constprop.0+0x190/0x2f0
[  320.417592]  ? kmem_cache_free+0x31e/0x550
[  320.417619]  ? lockdep_hardirqs_on_prepare+0xde/0x190
[  320.417644]  ? do_syscall_64+0x38/0x6b0
[  320.417665]  do_syscall_64+0xc8/0x6b0
[  320.417683]  ? clear_bhb_loop+0x30/0x80
[  320.417706]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[  320.417727] RIP: 0033:0x7f963bb30beb

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101..dc5ad784f456 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3555,7 +3555,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 
 	pci_sriov_set_totalvfs(adapter->pdev, idpf_get_max_vfs(adapter));
 	num_max_vports = idpf_get_max_vports(adapter);
-	adapter->max_vports = num_max_vports;
 	adapter->vports = kzalloc_objs(*adapter->vports, num_max_vports);
 	if (!adapter->vports)
 		return -ENOMEM;
@@ -3576,6 +3575,12 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		goto err_netdev_alloc;
 	}
 
+	/* Set max_vports only after vports, netdevs and vport_config buffers
+	 * are allocated to make sure max_vport bound loops don't end up
+	 * crashing, following allocation errors on init.
+	 */
+	adapter->max_vports = num_max_vports;
+
 	/* Start the mailbox task before requesting vectors. This will ensure
 	 * vector information response from mailbox is handled
 	 */
-- 
2.37.3

