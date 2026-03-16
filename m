Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MB73NxeSuGkUgAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB812A1F4B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C395360F0E;
	Mon, 16 Mar 2026 23:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3bsF6CrMFmdZ; Mon, 16 Mar 2026 23:28:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34994612D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773703699;
	bh=sADuEsjbaG6cZkCpGtj1VkmlzuDV5LBXJkEli3KNifw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jZrR472/TgJrYqzJ1ou1w7n+9fSbMyhO9HePiBpQKKogNJFb0zQ/357YyonJUYyF/
	 U5ToNd0SWkrl/9Qsrzb3jE8Ey8R/Afi/fCl7XBnqwHiDWc6BQCLgKpbykb+9NCDhIq
	 mdawY09MCHAcIVtDRZifISQsAPf15hOXkqXGbbJ3RDeUzuLaVVNFvsTa4vmkhcWjI+
	 cT0ZLkfUrSyGGvc+pFjBMSJFYoCLQoXjJ8k4h6DOHp9/AjFy97ggPB1tsKdpKGQLmn
	 pv9XXfGJR65HwuXZ2mNzNtfE+CmVN4l9pUuzDNi/zlRFHoarnMZhP71dLPRsMvpWD+
	 olhciwQoUgyEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34994612D3;
	Mon, 16 Mar 2026 23:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B6CE13BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A929E83984
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sgb_Q7h7tXiX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9AAB68398E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AAB68398E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AAB68398E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
X-CSE-ConnectionGUID: SdExjMVPSRm2dxvbMunVWQ==
X-CSE-MsgGUID: 2CaHRLWjRX2W+vvxj6NLEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74912827"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74912827"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:28:12 -0700
X-CSE-ConnectionGUID: dmis1Qs0TlyGH7f2PDwXmw==
X-CSE-MsgGUID: 7wMGXJ5KRYWjAoT2z5Wbjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="246842475"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa001.fm.intel.com with ESMTP; 16 Mar 2026 16:28:12 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, linux-rt-devel@lists.linux.dev,
 sgzhang@google.com, boolli@google.com
Date: Mon, 16 Mar 2026 16:28:19 -0700
Message-Id: <20260316232819.6872-4-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260316232819.6872-1-emil.s.tantilov@intel.com>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773703695; x=1805239695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=nJt5cqUTWvKZ5Rt96Sel33VW4JvIuW+Q0gz9SxemFJw=;
 b=d+781E3479JzEFbpHQvRjSBiIdAaSeOCL0PSTlD/jnPuE8WbBlG2SCFM
 hp0ThhpMYhQFSKKaxuuixy1ZmIlH+pivx5k0k3nyB701+omRhjOaLOS+n
 MPmafdRrZ4pJ15Rv1s8KEXXsl+x8t5Dpfd8IzTiIpJMwgrluURkdG3CAN
 ogMtTDuVsRHEumMEjwCPR/km3YnyQCU9WknhY4qtI7yOKXcN+9UhsKSx7
 wGLbr0fhQC022zHJUoydW6/v83R9o+G2TkOQQiXuZpNinBFqTQA3VuO+O
 GOcArGa5faWRAxvPqkpeIQFQ5M9gH/KqHRyU4u8w+jaHK9+cxWyftuXN7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d+781E34
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] idpf: fix PREEMPT_RT raw/bh
 spinlock nesting for async VC handling
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5CB812A1F4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Restructure the ASYNC case to allow calling idpf_vc_xn_forward_reply()
outside of idpf_vc_xn_lock(). This avoids invalid wait context reported by
the kernel due to the async handler taking BH spinlock:

[  805.726977] =============================
[  805.726991] [ BUG: Invalid wait context ]
[  805.727006] 7.0.0-rc2-net-devq-031026+ #28 Tainted: G S         OE
[  805.727026] -----------------------------
[  805.727038] kworker/u261:0/572 is trying to lock:
[  805.727051] ff190da6a8dbb6a0 (&vport_config->mac_filter_list_lock){+...}-{3:3}, at: idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
[  805.727099] other info that might help us debug this:
[  805.727111] context-{5:5}
[  805.727119] 3 locks held by kworker/u261:0/572:
[  805.727132]  #0: ff190da6db3e6148 ((wq_completion)idpf-0000:83:00.0-mbx){+.+.}-{0:0}, at: process_one_work+0x4b5/0x730
[  805.727163]  #1: ff3c6f0a6131fe50 ((work_completion)(&(&adapter->mbx_task)->work)){+.+.}-{0:0}, at: process_one_work+0x1e5/0x730
[  805.727191]  #2: ff190da765190020 (&x->wait#34){+.+.}-{2:2}, at: idpf_recv_mb_msg+0xc8/0x710 [idpf]
[  805.727218] stack backtrace:
...
[  805.727238] Workqueue: idpf-0000:83:00.0-mbx idpf_mbx_task [idpf]
[  805.727247] Call Trace:
[  805.727249]  <TASK>
[  805.727251]  dump_stack_lvl+0x77/0xb0
[  805.727259]  __lock_acquire+0xb3b/0x2290
[  805.727268]  ? __irq_work_queue_local+0x59/0x130
[  805.727275]  lock_acquire+0xc6/0x2f0
[  805.727277]  ? idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
[  805.727284]  ? _printk+0x5b/0x80
[  805.727290]  _raw_spin_lock_bh+0x38/0x50
[  805.727298]  ? idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
[  805.727303]  idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
[  805.727310]  idpf_recv_mb_msg+0x1c8/0x710 [idpf]
[  805.727317]  process_one_work+0x226/0x730
[  805.727322]  worker_thread+0x19e/0x340
[  805.727325]  ? __pfx_worker_thread+0x10/0x10
[  805.727328]  kthread+0xf4/0x130
[  805.727333]  ? __pfx_kthread+0x10/0x10
[  805.727336]  ret_from_fork+0x32c/0x410
[  805.727345]  ? __pfx_kthread+0x10/0x10
[  805.727347]  ret_from_fork_asm+0x1a/0x30
[  805.727354]  </TASK>

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Reported-by: Ray Zhang <sgzhang@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 6b9692b30040..8ceabd86e172 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -546,32 +546,24 @@ static int
 idpf_vc_xn_forward_async(struct idpf_adapter *adapter, struct idpf_vc_xn *xn,
 			 const struct idpf_ctlq_msg *ctlq_msg)
 {
-	int err = 0;
-
 	if (ctlq_msg->cookie.mbx.chnl_opcode != xn->vc_op) {
 		dev_err_ratelimited(&adapter->pdev->dev, "Async message opcode does not match transaction opcode (msg: %d) (xn: %d)\n",
 				    ctlq_msg->cookie.mbx.chnl_opcode, xn->vc_op);
 		xn->reply_sz = 0;
-		err = -EINVAL;
-		goto release_bufs;
+		return -EINVAL;
 	}
 
-	if (xn->async_handler) {
-		err = xn->async_handler(adapter, xn, ctlq_msg);
-		goto release_bufs;
-	}
+	if (xn->async_handler)
+		return xn->async_handler(adapter, xn, ctlq_msg);
 
 	if (ctlq_msg->cookie.mbx.chnl_retval) {
 		xn->reply_sz = 0;
 		dev_err_ratelimited(&adapter->pdev->dev, "Async message failure (op %d)\n",
 				    ctlq_msg->cookie.mbx.chnl_opcode);
-		err = -EINVAL;
+		return -EINVAL;
 	}
 
-release_bufs:
-	idpf_vc_xn_release_bufs(xn);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -631,7 +623,10 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 		 * can evaluate the response.
 		 */
 		xn->reply_sz = ctlq_msg->data_len;
+		idpf_vc_xn_unlock(xn);
 		err = idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
+		idpf_vc_xn_lock(xn);
+		idpf_vc_xn_release_bufs(xn);
 		idpf_vc_xn_unlock(xn);
 		idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
 		return err;
-- 
2.37.3

