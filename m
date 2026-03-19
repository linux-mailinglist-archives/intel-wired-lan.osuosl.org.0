Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BJGA7t7vGk1zQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 23:42:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB622D3790
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 23:42:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 044BA40B7A;
	Thu, 19 Mar 2026 22:42:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9nz8mk8sxOi0; Thu, 19 Mar 2026 22:41:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46CB740B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773960119;
	bh=saz8XRSorsaiipg6521Aj2lNXTTo1+lPMfuS0rj39UI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kX1/FOk/HRGfbo06KTwWTm3eD69kojaaR6W8vY/pA0WdHATtQp8mseUC0c4824bUm
	 2yiKsYWEQIykRcopC3TehH5dGflMdWtOD3QDh9gOiflOJIEhB7ADxyN0sJzTQGuJTU
	 hjhW4A4z7zeBZ8rtPmiGBXuEPCx4r6CgfZEN2esWtga0qoKFbxyRuw6tKzpzJNWuTI
	 7aUlKiwcBA/WwV5tH3bqpIYnfpHq7TtsmJ6UnvUj98rFAvL2BEI+uPib20mNJPYTcA
	 8Qey6HxZvUH/r8rQWpl3HEjVsXkzUJom9TkHk+Gn3O8ZDfpj3rlZo30eA2pUE24tTL
	 Ch4SDUvVmQXtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46CB740B94;
	Thu, 19 Mar 2026 22:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D9D825C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 22:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E4F740E0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 22:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ajRBwOmphePV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 22:41:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 730804127C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 730804127C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 730804127C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 22:41:56 +0000 (UTC)
X-CSE-ConnectionGUID: vq3Z8qcuQ+Wymf1b/+/4UQ==
X-CSE-MsgGUID: 9e45JixyT4OThBf/aHujIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74060148"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="74060148"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 15:41:54 -0700
X-CSE-ConnectionGUID: cjgj4rPqS52u0ucCRTXghw==
X-CSE-MsgGUID: 7P+ErQc7SHKpge4J3R2xDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="223326020"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa007.jf.intel.com with ESMTP; 19 Mar 2026 15:41:53 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, sdf@fomichev.me,
 bpf@vger.kernel.org, aleksander.lobakin@intel.com, decot@google.com,
 willemb@google.com, Emil Tantilov <emil.s.tantilov@intel.com>,
 stable@vger.kernel.org
Date: Thu, 19 Mar 2026 15:41:59 -0700
Message-Id: <20260319224159.23885-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773960116; x=1805496116;
 h=from:to:cc:subject:date:message-id;
 bh=w42GVYaBOiENOnZTs/bf+y6P5cN1lu44uYlM0XIDM0A=;
 b=I1JwJQpl7aVXUiWUETz/DQ8gBTrzfMNVvVk9L939LkakZ+T9jC5KR0IL
 Xt9RapGN4mCQBNaGqNMMJYRbT4Q1dhj7ke9BA0X3TRBIMK2LO5WxJqL9m
 ZJNaSj+iF6Cnwi5+ijtWaI916gDBRO3k5+nMU2Wxn+CUii0eVqT03A1uP
 4gOXMVgVkvY3URPgzZ1s+Lm/nji3aWeR9ifzx3cG07yhzgsb1IlRadKSJ
 ks7SXBGwMjxASPQxDdOLnA0rxjzKprH4EPDtN1jbze3v5yU+RMRqdE3da
 ltli5vT7cofA9R3c9rxhPfGn5z2vvB6Va25a9F/Z4u5LCjESbDHzSnZYc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I1JwJQpl
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix xdp crash in soft
 reset error path
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
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.982];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9FB622D3790
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

NULL pointer dereference is reported in cases where idpf_vport_open()
fails during soft reset:

./xdpsock -i <inf> -q -r -N

[ 3179.186687] idpf 0000:83:00.0: Failed to initialize queue ids for vport 0: -12
[ 3179.276739] BUG: kernel NULL pointer dereference, address: 0000000000000010
[ 3179.277636] #PF: supervisor read access in kernel mode
[ 3179.278470] #PF: error_code(0x0000) - not-present page
[ 3179.279285] PGD 0
[ 3179.280083] Oops: Oops: 0000 [#1] SMP NOPTI
...
[ 3179.283997] Workqueue: events xp_release_deferred
[ 3179.284770] RIP: 0010:idpf_find_rxq_vec+0x17/0x30 [idpf]
...
[ 3179.291937] Call Trace:
[ 3179.292392]  <TASK>
[ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf]
[ 3179.293325]  idpf_xsk_pool_setup+0x7c/0x520 [idpf]
[ 3179.293803]  idpf_xdp+0x59/0x240 [idpf]
[ 3179.294275]  xp_disable_drv_zc+0x62/0xb0
[ 3179.294743]  xp_clear_dev+0x40/0xb0
[ 3179.295198]  xp_release_deferred+0x1f/0xa0
[ 3179.295648]  process_one_work+0x226/0x730
[ 3179.296106]  worker_thread+0x19e/0x340
[ 3179.296557]  ? __pfx_worker_thread+0x10/0x10
[ 3179.297009]  kthread+0xf4/0x130
[ 3179.297459]  ? __pfx_kthread+0x10/0x10
[ 3179.297910]  ret_from_fork+0x32c/0x410
[ 3179.298361]  ? __pfx_kthread+0x10/0x10
[ 3179.298702]  ret_from_fork_asm+0x1a/0x30

Fix the error handling of the soft reset in idpf_xdp_setup_prog() by
restoring the vport->xdp_prog to the old value. This avoids referencing
the orphaned prog that was copied to vport->xdp_prog in the soft reset
and prevents subsequent false positive by idpf_xdp_enabled().

Update the restart check in idpf_xsk_pool_setup() to use IDPF_VPORT_UP bit
instead of netif_running(). The idpf_vport_stop/start() calls will not
update the __LINK_STATE_START bit, making this test a false positive
should the soft reset fail.

Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
Cc: stable@vger.kernel.org
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
Changelog:
v1->v2:
- Cleaned up the error handling in idpf_xdp_setup_prog() to avoid extra
  check and bpf_prog_put() call in the error path and fixed indentation
  at the assignment of restart. Caught in review by Alexander Lobakin.

v1:
https://lore.kernel.org/netdev/20260318011545.12874-1-emil.s.tantilov@intel.com/
---
 drivers/net/ethernet/intel/idpf/xdp.c | 1 +
 drivers/net/ethernet/intel/idpf/xsk.c | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index cbccd4546768..18a6e7062863 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -488,6 +488,7 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
 				   "Could not reopen the vport after XDP setup");
 
 		cfg->user_config.xdp_prog = old;
+		vport->xdp_prog = old;
 		old = prog;
 	}
 
diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index d95d3efdfd36..3d8c430efd2b 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.c
+++ b/drivers/net/ethernet/intel/idpf/xsk.c
@@ -553,6 +553,7 @@ int idpf_xskrq_poll(struct idpf_rx_queue *rxq, u32 budget)
 
 int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
 {
+	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct xsk_buff_pool *pool = bpf->xsk.pool;
 	u32 qid = bpf->xsk.queue_id;
 	bool restart;
@@ -568,7 +569,8 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
 		return -EINVAL;
 	}
 
-	restart = idpf_xdp_enabled(vport) && netif_running(vport->netdev);
+	restart = idpf_xdp_enabled(vport) &&
+		  test_bit(IDPF_VPORT_UP, np->state);
 	if (!restart)
 		goto pool;
 
-- 
2.37.3

