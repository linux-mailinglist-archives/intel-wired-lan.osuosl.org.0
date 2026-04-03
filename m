Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBa7AEvez2mn1QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 17:35:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E147F395D0B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 17:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6E4A40A79;
	Fri,  3 Apr 2026 15:35:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JPqD5XbXpO0z; Fri,  3 Apr 2026 15:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D432140A90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775230533;
	bh=BR/s9kGabTQiY7E2H+81P/E9BH3B3A02t9rJ0TdSczY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lt2yKAcWQiY+3T8a13WjkEiiBBhshbH+hLqNk270b2M1ll94XSFv6C5JpNKG27kOC
	 mWSrRz0qyCWje+/tWHn/Aab7iY+YTtJYx20efA0CARo+ndsl9wqydb07Tnvxrx4JEP
	 fy/M7qfWPUNHCRcMypWk3FuFBvJYtWu2kKu0dvqQCUksAzUv9gf/SIBQgTESlYVt7E
	 J8qwpzMVdxTBu/UjaNy6v1K+WPOgMpN4n3YmLvVE7YwhnKx6s9nO+NxDuN8YiYCHp8
	 gK7aSF3hMDgO6JI3i87FNSpd1drnoXsKTyBDWyD/fxukZtglJqqZ458Gbym/oOUcau
	 fhnIC2HRezS+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D432140A90;
	Fri,  3 Apr 2026 15:35:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F6441A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 15:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71552811B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 15:35:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EgvMaGMWcT6T for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 15:35:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 758A18119D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 758A18119D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 758A18119D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 15:35:30 +0000 (UTC)
X-CSE-ConnectionGUID: dDzyIYxHQoGGYO1nKwzxoA==
X-CSE-MsgGUID: B+Gm3zd1R82JHPZjr1m0mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11748"; a="87365586"
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="87365586"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 08:35:30 -0700
X-CSE-ConnectionGUID: ibUhVm37TqKdk7EgYGyaZQ==
X-CSE-MsgGUID: ye/U7QWRRIK2zA/nBZh43Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="228908233"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa004.fm.intel.com with ESMTP; 03 Apr 2026 08:35:29 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 milena.olech@intel.com, jacob.e.keller@intel.com,
 konstantin.ilichev@intel.com
Date: Fri,  3 Apr 2026 08:35:38 -0700
Message-Id: <20260403153538.11516-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775230531; x=1806766531;
 h=from:to:cc:subject:date:message-id;
 bh=m6upnxiH1P+6zCK7Xqx4QkGQ+RwHOvo5Qald/CwjdMk=;
 b=gRmjZZztl/NMfkJoQ5HzVBEOXRhTtoNG64NDfC7HRhgIBfVSwu23ndQk
 KRibPd5oInXQgia7iOuMkFBr8Jj4ELjtrKV2HjM2WtervF1T1yY/25K8O
 OECRA7CTjKJgX1kCmO/A9TDMTOKh13M+HCJ4FVgQEFf66UqcVIoLnXZyy
 6vF42ppzKlkPnXK/5eX0HVgahhRgKchttPaQRgV3dJyJGS5xGSdarFqpf
 8EVYwRdt6pUjfCc87JZeKQqgV0H6wQn7IezDjjsKAAjg9mB0X/SzIC6ay
 D2RZMxwR3XW24FLMddJ3cGt0zb39p0n7EpOZ1hhMN8m8kmPa///DxQz9I
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gRmjZZzt
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix read_dev_clk_lock
 spinlock init in idpf_ptp_init()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E147F395D0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In idpf_ptp_init(), read_dev_clk_lock is initialized after
ptp_schedule_worker() had already been called (and after
idpf_ptp_settime64() could reach the lock). The PTP aux worker
fires immediately upon scheduling and can call into
idpf_ptp_read_src_clk_reg_direct(), which takes
spin_lock(&ptp->read_dev_clk_lock) on an uninitialized lock, triggering
the lockdep "non-static key" warning:

[12973.796587] idpf 0000:83:00.0: Device HW Reset initiated
[12974.094507] INFO: trying to register non-static key.
...
[12974.097208] Call Trace:
[12974.097213]  <TASK>
[12974.097218]  dump_stack_lvl+0x93/0xe0
[12974.097234]  register_lock_class+0x4c4/0x4e0
[12974.097249]  ? __lock_acquire+0x427/0x2290
[12974.097259]  __lock_acquire+0x98/0x2290
[12974.097272]  lock_acquire+0xc6/0x310
[12974.097281]  ? idpf_ptp_read_src_clk_reg+0xb7/0x150 [idpf]
[12974.097311]  ? lockdep_hardirqs_on_prepare+0xde/0x190
[12974.097318]  ? finish_task_switch.isra.0+0xd2/0x350
[12974.097330]  ? __pfx_ptp_aux_kworker+0x10/0x10 [ptp]
[12974.097343]  _raw_spin_lock+0x30/0x40
[12974.097353]  ? idpf_ptp_read_src_clk_reg+0xb7/0x150 [idpf]
[12974.097373]  idpf_ptp_read_src_clk_reg+0xb7/0x150 [idpf]
[12974.097391]  ? kthread_worker_fn+0x88/0x3d0
[12974.097404]  ? kthread_worker_fn+0x4e/0x3d0
[12974.097411]  idpf_ptp_update_cached_phctime+0x26/0x120 [idpf]
[12974.097428]  ? _raw_spin_unlock_irq+0x28/0x50
[12974.097436]  idpf_ptp_do_aux_work+0x15/0x20 [idpf]
[12974.097454]  ptp_aux_kworker+0x20/0x40 [ptp]
[12974.097464]  kthread_worker_fn+0xd5/0x3d0
[12974.097474]  ? __pfx_kthread_worker_fn+0x10/0x10
[12974.097482]  kthread+0xf4/0x130
[12974.097489]  ? __pfx_kthread+0x10/0x10
[12974.097498]  ret_from_fork+0x32c/0x410
[12974.097512]  ? __pfx_kthread+0x10/0x10
[12974.097519]  ret_from_fork_asm+0x1a/0x30
[12974.097540]  </TASK>

Move the call to spin_lock_init() up a bit to make sure read_dev_clk_lock
is not touched before it's been initialized.

Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP clock")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ptp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index eec91c4f0a75..4a51d2727547 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -952,6 +952,8 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 		goto free_ptp;
 	}
 
+	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
+
 	err = idpf_ptp_create_clock(adapter);
 	if (err)
 		goto free_ptp;
@@ -977,8 +979,6 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
 			goto remove_clock;
 	}
 
-	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
-
 	pci_dbg(adapter->pdev, "PTP init successful\n");
 
 	return 0;
-- 
2.37.3

