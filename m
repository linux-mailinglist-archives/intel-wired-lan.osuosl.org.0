Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGPcKCRnvGnQyAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:14:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7B2D28F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF74C419D6;
	Thu, 19 Mar 2026 21:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VUTXguDoee1Z; Thu, 19 Mar 2026 21:14:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 091CB419E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773954850;
	bh=lMESfybP3WlxeXQN+ZQdsqkpiXq6FgrleGBPKonrxeo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oue2QFpnImM3xNEt49poRIp0mA6I/niK1cbF3Z+0ztnoCvEwshwzW2SLqzcMNg62F
	 lNJu+M9y3j0yGPWVMoupoYaehSrUi5hY3R+QJvoPYjGKyglhi231Wd/DDf2EIQcwhh
	 ZTUh40aQnaEOVgh14xJWccwZ+wHP0jtXv8hgpJtUrL/xF5KyN37wa0t2r8zRHCxDnZ
	 vi0+JNauauC3vBzuANskqmrfCP9/4JUU1mfMYFyKoiDbvMtmcVYNTiKwum0pgqqy+T
	 uctLvApfS/blRJMCWr8BrZlCIS8oauE5sOS57Y3wXwL+HBr6CkuIEypnK0Za1+REgA
	 III2WYvnUAA3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 091CB419E2;
	Thu, 19 Mar 2026 21:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A536265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FA9084393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pIYAHmym9e12 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 21:14:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3EBB84422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3EBB84422
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3EBB84422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:04 +0000 (UTC)
X-CSE-ConnectionGUID: BZZh2IhzQYenFjvayPoKaw==
X-CSE-MsgGUID: FBIu2RLRRl+dAsuOQoclQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86116372"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="86116372"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 14:14:03 -0700
X-CSE-ConnectionGUID: Wxz5GlsfQkCc7Fz6/QQ1Vw==
X-CSE-MsgGUID: axzZsgLrS6uLUFO4Jvthyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227221172"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa003.jf.intel.com with ESMTP; 19 Mar 2026 14:14:02 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, linux-rt-devel@lists.linux.dev,
 sgzhang@google.com, boolli@google.com,
 Emil Tantilov <emil.s.tantilov@intel.com>, stable@vger.kernel.org
Date: Thu, 19 Mar 2026 14:13:33 -0700
Message-Id: <20260319211335.23236-2-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260319211335.23236-1-emil.s.tantilov@intel.com>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773954844; x=1805490844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=mRP95+w+fhUk8Uwl9cU7Js17s7tnPpW9z6YR7cq7YPA=;
 b=j5eGdJb1VBwkurEalaggI2VXWwigVw6O0eiEt+zXIW28VZ0jxHz5RJmR
 zqMde55A8c9RA8k3UcJ+q11MB/yQWkdogqSXJ/LzK5HOs95Wp5AGECS0O
 j0szxsYNp7zELBdk9IJQXgaLznU5vb8y/e1k+2v33sanQMNHyZLuJmrWd
 +PTHxYgh8xyWQQBqSUZ9UD5BgR+VqTUPTqgZP05Owq7UZBkvO3aoegYG5
 2bDs0ls5TPqEL9wHIKYXXgpAMVdwomX+fnQxOh3JlMqzEnEE3PMz6WBKX
 LYJgTdZFKLR8g6jfqGpVLbZsS/lZibUVJtmRGjSUgsOgGogXXWRDz3JPp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j5eGdJb1
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT
 raw/bh spinlock nesting for async VC handling
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,linutronix.de:email];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1CD7B2D28F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Switch from using the completion's raw spinlock to a local lock in the
idpf_vc_xn struct. The conversion is safe because complete/_all() are
called outside the lock and there is no reason to share the completion
lock in the current logic. This avoids invalid wait context reported by
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
Cc: stable@vger.kernel.org
Suggested-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Reported-by: Ray Zhang <sgzhang@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 14 +++++---------
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h |  5 +++--
 2 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 113ecfc16dd7..582e0c8e9dc0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -287,26 +287,21 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, struct idpf_ctlq_info *asq,
 	return err;
 }
 
-/* API for virtchnl "transaction" support ("xn" for short).
- *
- * We are reusing the completion lock to serialize the accesses to the
- * transaction state for simplicity, but it could be its own separate synchro
- * as well. For now, this API is only used from within a workqueue context;
- * raw_spin_lock() is enough.
- */
+/* API for virtchnl "transaction" support ("xn" for short). */
+
 /**
  * idpf_vc_xn_lock - Request exclusive access to vc transaction
  * @xn: struct idpf_vc_xn* to access
  */
 #define idpf_vc_xn_lock(xn)			\
-	raw_spin_lock(&(xn)->completed.wait.lock)
+	spin_lock(&(xn)->lock)
 
 /**
  * idpf_vc_xn_unlock - Release exclusive access to vc transaction
  * @xn: struct idpf_vc_xn* to access
  */
 #define idpf_vc_xn_unlock(xn)		\
-	raw_spin_unlock(&(xn)->completed.wait.lock)
+	spin_unlock(&(xn)->lock)
 
 /**
  * idpf_vc_xn_release_bufs - Release reference to reply buffer(s) and
@@ -338,6 +333,7 @@ static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
 		xn->state = IDPF_VC_XN_IDLE;
 		xn->idx = i;
 		idpf_vc_xn_release_bufs(xn);
+		spin_lock_init(&xn->lock);
 		init_completion(&xn->completed);
 	}
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index fe065911ad5a..6876e3ed9d1b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -42,8 +42,8 @@ typedef int (*async_vc_cb) (struct idpf_adapter *, struct idpf_vc_xn *,
  * struct idpf_vc_xn - Data structure representing virtchnl transactions
  * @completed: virtchnl event loop uses that to signal when a reply is
  *	       available, uses kernel completion API
- * @state: virtchnl event loop stores the data below, protected by the
- *	   completion's lock.
+ * @lock: protects the transaction state fields below
+ * @state: virtchnl event loop stores the data below, protected by @lock
  * @reply_sz: Original size of reply, may be > reply_buf.iov_len; it will be
  *	      truncated on its way to the receiver thread according to
  *	      reply_buf.iov_len.
@@ -58,6 +58,7 @@ typedef int (*async_vc_cb) (struct idpf_adapter *, struct idpf_vc_xn *,
  */
 struct idpf_vc_xn {
 	struct completion completed;
+	spinlock_t lock;
 	enum idpf_vc_xn_state state;
 	size_t reply_sz;
 	struct kvec reply;
-- 
2.37.3

