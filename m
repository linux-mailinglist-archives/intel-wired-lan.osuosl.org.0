Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OCWHML8uWnZQAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 02:15:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 741982B4DF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 02:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F392161405;
	Wed, 18 Mar 2026 01:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VNnQOIfl3URk; Wed, 18 Mar 2026 01:15:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A64F6145C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773796542;
	bh=RBoeIRNRQ6bnqCg7pUfQwAkqxcJt+FaPOuVdQN1lDEM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zh5kksf0xUjpMtxSdS5/y6+ddHYq5M5FG9sumH4J41AnlWemTLnvWHt0Uh6U/Y8W5
	 gzNnpj6AZWehYB/UGfVW+Uk4YmuLizhYEnXNE5XDVQJSd/0LUEunpFcSJFK1smLglQ
	 8wyoYGRY9QLLgPg+UofbcArdRDdvKGWq9idF+0ymxBIAR0/fLmsqgSr46hqBScWmb8
	 sR/KoFUdKiyiG5uPP9CZGQ07w47xuH0leUk/aHelMWW6RhFrgkpYPrCe5btJchCMJf
	 YBn6Rw0K3hPedydPkhHsG3B/P6VfyME2AhGMfG0TN8wL3A8uF9/DaXw5wvm2zt+GFD
	 iUGCFSmYZoF7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A64F6145C;
	Wed, 18 Mar 2026 01:15:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CF85D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 01:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E631613E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 01:15:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3wQcJ3A5mqR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 01:15:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 541E56134E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 541E56134E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 541E56134E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 01:15:39 +0000 (UTC)
X-CSE-ConnectionGUID: voPmftNPSc2qL0cQ1RwoTA==
X-CSE-MsgGUID: Z/sv9CJZTQ+xXsMBqtRkCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="77454304"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="77454304"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 18:15:38 -0700
X-CSE-ConnectionGUID: R0w3j8ZNTka8JCKtuJP+ow==
X-CSE-MsgGUID: DPDHn4CoT3i6kMZ+2jRzFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="227399796"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa005.jf.intel.com with ESMTP; 17 Mar 2026 18:15:36 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, sdf@fomichev.me,
 bpf@vger.kernel.org, aleksander.lobakin@intel.com, decot@google.com,
 willemb@google.com
Date: Tue, 17 Mar 2026 18:15:45 -0700
Message-Id: <20260318011545.12874-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773796540; x=1805332540;
 h=from:to:cc:subject:date:message-id;
 bh=em6SO/ENzXNvRZ3dWi95voyC+ziv/4ohmr3+F+lO8SI=;
 b=g1erzp2zSjULYSuaJO+Cg7RJzU3i0BbXeN8ZP/BCXHgyhtuL+41AXoFe
 CMIOLTyyHE0yE+/npOS/j9ZURNjv/QLL46aDvkZUbLvtyiLVEUVrkNsoq
 +inJmKpLsHi5UEsr/jxUp/8gWDZTkmdHzaFSue6/yQy/NaDjzAugMXvFm
 XAW6DQwV9lhkevxyXYX8+uNCjAU/3Gblw8S2eVhFs/YlqoUGWRejLotfZ
 Xp0+L3DWiWI8vDPUjo3KqSK+rOF9RBysNT2AhmqBkmHhnXPO79HoZz01p
 fCTzWy/Wk7X2MI7A2RbglsgPesUzwm0OaLk7iKMuaGK/9MTUxPPRsebVw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g1erzp2z
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix xdp crash in soft reset
 error path
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 741982B4DF1
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
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.c | 7 ++++++-
 drivers/net/ethernet/intel/idpf/xsk.c | 4 +++-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index cbccd4546768..b670f0ea20b3 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -488,12 +488,17 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
 				   "Could not reopen the vport after XDP setup");
 
 		cfg->user_config.xdp_prog = old;
-		old = prog;
+		vport->xdp_prog = old;
+		if (prog)
+			bpf_prog_put(prog);
+
+		goto out;
 	}
 
 	if (old)
 		bpf_prog_put(old);
 
+out:
 	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
 
 	return ret;
diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index d95d3efdfd36..b601b6c298c7 100644
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
+	       test_bit(IDPF_VPORT_UP, np->state);
 	if (!restart)
 		goto pool;
 
-- 
2.37.3

