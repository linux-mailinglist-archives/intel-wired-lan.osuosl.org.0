Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QXPpB2ks5WkEfAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Apr 2026 21:26:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F84253F4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Apr 2026 21:26:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 608AF40EA2;
	Sun, 19 Apr 2026 19:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6tftvAQPffgw; Sun, 19 Apr 2026 19:26:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6CE940D7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776626789;
	bh=YmTe5QrSAhWmElkBtUPNEfvUQd8uWx+pL52ZTzPTjRg=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=n4KlIroKklzPXa9B/PdhgAsULRZ9cLuJR1ctKkG1EkBhEtePfYCGgiDRhoBnW6nHo
	 RgJjsN7yCRnhzJKh+va/lMRVZct3b1aJNkUspaH6gH/kwARSTieeflnFlqvd2i5IXx
	 ZF8IlNwl0yNWe8UIQ7mFXHQkKcPipb4yAQBXwLqTxnaVhMl7MsKYLHn1CCBnQYhKbS
	 a1V2sjptgJkILaHD4NdLhX3K00+LFwVC6hqQrK9/nPBcMddtBFCe45iSJQ1eSB3xHV
	 eh3nKC0EiUqTJVP2w/i4ix2rV/wch6+x+Dtf5DttlqpN3hv/lAt3WksNVYzyR0uMiq
	 6eM/8FgcTKe8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6CE940D7A;
	Sun, 19 Apr 2026 19:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 293CD24D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 19:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F20140448
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 19:26:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMk9URfkJlGp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Apr 2026 19:26:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::134a; helo=mail-dy1-x134a.google.com;
 envelope-from=3yszlaqykd6qfssppmksskpi.gsqmrxip-amvih-perpmwxw.swyswp.svk@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 46023403DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46023403DC
Received: from mail-dy1-x134a.google.com (mail-dy1-x134a.google.com
 [IPv6:2607:f8b0:4864:20::134a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46023403DC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 19:26:27 +0000 (UTC)
Received: by mail-dy1-x134a.google.com with SMTP id
 5a478bee46e88-2c0ba59a830so3429831eec.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 12:26:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776626786; x=1777231586;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YmTe5QrSAhWmElkBtUPNEfvUQd8uWx+pL52ZTzPTjRg=;
 b=dydwAmqIZBU2OqQl4YxvGbowKSYj1wMNNcSfYfu+BhWv6x5/W3XDXDCr9ZYHkV1IF2
 G0kFl1Npw25NqIKFle2q6ubvhP7gsK4uKU++oaZPegRYCGhq3dc2Rk8ovpiBMlLTFKOM
 rJ/9fWx2g4X+0Ra3KN8ArlawD3A+viw3NRyYYNVGKnyQNFAdbmDURJ7d/opwartY5V77
 8CGmox/XqjwAp2r2R3FEgCwdW4eHylzqE134DjQvwVtH7OoqM8ohil/2v1vwJsFYHl3k
 ip55LCNje7ePqtrX65Kx9RQb+L02bLh4Ri4WezSysQeYOIohATrTuXAiGUJt0OyqjtiP
 +gcg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8ozt/CZOlhM6hYr45fVtl0oneJ4JYrsESXYeQFnm7d+m7xxzLQ4HstFIGKRrRR40Cpwt8pUGiYANA7pydPtpk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyPamVT4BeDjhdM5H1b6oziz7g5LocjK1lQ2D8o76P1KI+2Bx0Q
 FLBhiHkY3e8l/+vcIUo1XjS+PrRLVXcxXLxRpeUNzIVxz9gC950pRoVqdNragLzTqRnSQisjmi7
 3KcRlcA==
X-Received: from dybtv6.prod.google.com ([2002:a05:7300:f486:b0:2d8:5b05:964b])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:6c05:b0:2c7:3a7:c792
 with SMTP id 5a478bee46e88-2e47a1027ecmr5364749eec.20.1776626785796; Sun, 19
 Apr 2026 12:26:25 -0700 (PDT)
Date: Sun, 19 Apr 2026 19:25:55 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.rc1.513.gad8abe7a5a-goog
Message-ID: <20260419192555.3631327-1-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1776626786; x=1777231586; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=YmTe5QrSAhWmElkBtUPNEfvUQd8uWx+pL52ZTzPTjRg=;
 b=WWom+1+QP1L+0a7PV0mcx/AtFvghpDjy2N0zm8MAkQ5327SJy2E48rULWfanXVDDrK
 jw74YY1tKctIrkMAJXPFt93xaT9N0pvFr8wYfdGFTVxvht4G5mOrtRqcX/UKlzHvuZeD
 Q0Ak4A5VMlaCmR3J7IobPXliD7/lmT30u1SA8OGoi+SUGS6fRvtEysvGCZ+U6y/8I/38
 dzfwQ9+UNsZpAEvhPnP3IA7TVfSXIJbKby+BN12B9Isb3ngc3D/Tj0fnO0zg/gqwfL1G
 tVjA9K4e5dwqMSI6CDc+3OsXGh2lsej6Sluk+WebH+Qp9KCri0J2ExZFSYjyV0nzn1rS
 LiPA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=WWom+1+Q
Subject: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when netdev
 is detached
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.71 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1C6F84253F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Even though commit 2e281e1155fc ("idpf: detach and close netdevs while
handling a reset") prevents ethtool -N/-n operations to operate on
detached netdevs, we found that out-of-tree workflows like OpenOnload
can bypass ethtool core locks and call idpf_set_rxnfc directly during
an idpf HW reset. When this happens, we could get kernel crashes like
the following:

[ 4045.787439] BUG: kernel NULL pointer dereference, address: 0000000000000070
[ 4045.794420] #PF: supervisor read access in kernel mode
[ 4045.799580] #PF: error_code(0x0000) - not-present page
[ 4045.804739] PGD 0
[ 4045.806772] Oops: Oops: 0000 [#1] SMP NOPTI
...
[ 4045.836425] Workqueue: onload-wqueue oof_do_deferred_work_fn [onload]
[ 4045.842926] RIP: 0010:idpf_del_flow_steer+0x24/0x170 [idpf]
...
[ 4045.946323] Call Trace:
[ 4045.948796]  <TASK>
[ 4045.950915]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 4045.955293]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 4045.959672]  ? idpf_set_rxnfc+0x6f/0x80 [idpf]
[ 4045.964142]  ? __die_body.cold+0x8/0x12
[ 4045.968000]  ? page_fault_oops+0x148/0x160
[ 4045.972117]  ? exc_page_fault+0x6f/0x160
[ 4045.976060]  ? asm_exc_page_fault+0x22/0x30
[ 4045.980262]  ? idpf_del_flow_steer+0x24/0x170 [idpf]
[ 4045.985245]  idpf_set_rxnfc+0x6f/0x80 [idpf]
[ 4045.989535]  af_xdp_filter_remove+0x7c/0xb0 [sfc_resource]
[ 4045.995069]  oo_hw_filter_clear_hwports+0x6f/0xa0 [onload]
[ 4046.000589]  oo_hw_filter_update+0x65/0x210 [onload]
[ 4046.005587]  oof_hw_filter_update.constprop.0+0xe7/0x140 [onload]
[ 4046.011716]  oof_manager_update_all_filters+0xad/0x270 [onload]
[ 4046.017671]  __oof_do_deferred_work+0x15e/0x190 [onload]
[ 4046.023014]  oof_do_deferred_work+0x2c/0x40 [onload]
[ 4046.028018]  oof_do_deferred_work_fn+0x12/0x30 [onload]
[ 4046.033277]  process_one_work+0x174/0x330
[ 4046.037304]  worker_thread+0x246/0x390
[ 4046.041074]  ? __pfx_worker_thread+0x10/0x10
[ 4046.045364]  kthread+0xf6/0x240
[ 4046.048530]  ? __pfx_kthread+0x10/0x10
[ 4046.052297]  ret_from_fork+0x2d/0x50
[ 4046.055896]  ? __pfx_kthread+0x10/0x10
[ 4046.059664]  ret_from_fork_asm+0x1a/0x30
[ 4046.063613]  </TASK>

To prevent this, we need to add checks in idpf_set_rxnfc and
idpf_get_rxnfc to error out if the netdev is already detached.

Tested: implemented the following patch to synthetically force idpf into
a HW reset:

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 4fc0bb14c5b1..27476d57bcf0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -10,6 +10,9 @@
 #define idpf_tx_buf_next(buf)		(*(u32 *)&(buf)->priv)
 LIBETH_SQE_CHECK_PRIV(u32);

+static bool SIMULATE_TX_TIMEOUT;
+module_param(SIMULATE_TX_TIMEOUT, bool, 0644);
+
 /**
  * idpf_chk_linearize - Check if skb exceeds max descriptors per packet
  * @skb: send buffer
@@ -46,6 +49,8 @@ void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue)

 	adapter->tx_timeout_count++;

+	SIMULATE_TX_TIMEOUT = false;
+
 	netdev_err(netdev, "Detected Tx timeout: Count %d, Queue %d\n",
 		   adapter->tx_timeout_count, txqueue);
 	if (!idpf_is_reset_in_prog(adapter)) {
@@ -2225,6 +2230,8 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 			goto fetch_next_desc;
 		}
 		tx_q = complq->txq_grp->txqs[rel_tx_qid];
+		if (unlikely(SIMULATE_TX_TIMEOUT && (tx_q->idx % 2 == 1)))
+			goto fetch_next_desc;

 		/* Determine completion type */
 		ctype = le16_get_bits(tx_desc->common.qid_comptype_gen,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101..ba5da2a86c15 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -8,6 +8,9 @@
 #include "idpf_virtchnl.h"
 #include "idpf_ptp.h"

+static bool VIRTCHNL_FAILED;
+module_param(VIRTCHNL_FAILED, bool, 0644);
+
 /**
  * struct idpf_vc_xn_manager - Manager for tracking transactions
  * @ring: backing and lookup for transactions
@@ -3496,6 +3499,11 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		switch (adapter->state) {
 		case __IDPF_VER_CHECK:
 			err = idpf_send_ver_msg(adapter);
+
+			if (unlikely(VIRTCHNL_FAILED)) {
+				err = -EIO;
+			}
+
 			switch (err) {
 			case 0:
 				/* success, move state machine forward */

And tested by writing 1 to /sys/module/idpf/parameters/VIRTCHNL_FAILED
and /sys/module/idpf/parameters/SIMULATE_TX_TIMEOUT, and running
idpf_get_rxnfc() right after the HW reset.

Without the patch: encountered NULL pointer and kernel crash.

With the patch: no crashes.

Fixes: 2e281e1155fc ("idpf: detach and close netdevs while handling a reset")
Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index bb99d9e7c65d..8368a7e6a754 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -43,6 +43,9 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	unsigned int cnt = 0;
 	int err = 0;
 
+	if (!netdev || !netif_device_present(netdev))
+		return -ENODEV;
+
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 	vport_config = np->adapter->vport_config[np->vport_idx];
@@ -349,6 +352,9 @@ static int idpf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 {
 	int ret = -EOPNOTSUPP;
 
+	if (!netdev || !netif_device_present(netdev))
+		return -ENODEV;
+
 	idpf_vport_ctrl_lock(netdev);
 	switch (cmd->cmd) {
 	case ETHTOOL_SRXCLSRLINS:
-- 
2.54.0.rc1.513.gad8abe7a5a-goog

