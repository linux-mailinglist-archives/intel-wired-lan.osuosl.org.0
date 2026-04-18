Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH1sF4xI42n9EAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 11:02:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5231E42082F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 11:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B642D8223C;
	Sat, 18 Apr 2026 09:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7CPUPgDDoMX2; Sat, 18 Apr 2026 09:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D782182284
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776502919;
	bh=SxGyo39sLn37ykZ1MyDgzsUgeOOQcYMpbjUuw3Tt9ms=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PwNOtLrsxIInANe6VMr+A0d9gDhIDtZpZYLQq/smSUgLZ2waquAHrepnXOeLOxYjJ
	 EEbGl/2bXKSlCn8vDBTz0+dDyTv98HR/n0+e1OShikcuQuAtxhCuadkydaLeoXMhrP
	 DZGliQTwgPL6vLDDAewF0a5Ld9RXfNEfQkj2J4j7P8g2dICKNht/e4Y+vxWzLh2EbI
	 2+DK1I7dQ4A8+3BCH4HD8Iyrwa8FfZiM2GQoGT17mnoxDSbwVs4IiIW4w8bBzkU7wm
	 b2HMuumZI0O942JYgd89nWM/Ws0b4v5KiHW+aTKlk4SmCtngbjBv1+OYYbDOtmrOUe
	 BNsG7npKISpow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D782182284;
	Sat, 18 Apr 2026 09:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3F19259
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 09:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9B8C60F19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 09:01:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oc_xiCa0CKZK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Apr 2026 09:01:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D79FA60F15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D79FA60F15
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D79FA60F15
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 09:01:56 +0000 (UTC)
Received: from ms-a2 (232.154.13.160.dy.iij4u.or.jp [160.13.154.232])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 63I91csh034081
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 18 Apr 2026 18:01:38 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kohei Enju <kohei@enjuk.jp>
Date: Sat, 18 Apr 2026 09:01:15 +0000
Message-ID: <20260418090137.411506-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=SxGyo39sLn37ykZ1MyDgzsUgeOOQcYMpbjUuw3Tt9ms=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1776502899; v=1;
 b=L7wYo3hpYw9vXC27in1/pj4EJZikMcyWN269KKsoZ7r8ATphDcfbC5d2uUdKDsFN
 NYlbM5ZqBAFotMmCCODVwhYGiRKQ0K8kbKSXOZsK2eJtXkMJLnH0vKw+alVIaaZ0
 nYnOdEhQeCPqbrgBV/33Yt2A+lRDrWfCzVZ6KCGMYTaUyeuljWgvNJ2H9amHMhi4
 00rBms2IksdBHuUK7dIbPvXEsFZJUa6s7r+rlwNW4SGE/ch7Df+iopMJVzJ+P7Pj
 kWSDhKEvIzhyJu/AQ7DlUmfhWRQ78IT1VTLD3VX8KOCAYzEK2oZ/0Q13qDJTMwtC
 nJPf5xqN37c+1EsE4bfH0g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=L7wYo3hp
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix UAF/NULL deref when
 VSI rebuild and XDP attach race
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,enjuk.jp:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5231E42082F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ice_xdp_setup_prog() unconditionally hot-swaps xdp_prog when
ICE_VSI_REBUILD_PENDING is set. In the attach path, this can publish a
new rx_ring->xdp_prog before rx_ring->xdp_ring becomes valid while the
rebuild is pending. As a result, ice_clean_rx_irq() may dereference
rx_ring->xdp_ring too early.

With high-volume RX packets, running these commands in parallel
triggered a KASAN splat [1].
 # ethtool --reset $DEV irq dma filter offload
 # ip link set dev $DEV xdp {obj $OBJ sec xdp,off}

Fix this by rejecting XDP attach while rebuild is pending.
Keep XDP detach allowed in this window. Detach clears rx_ring->xdp_prog,
so the RX path will not attempt to access rx_ring->xdp_ring.

[1]
BUG: KASAN: slab-use-after-free in ice_napi_poll+0x3921/0x41a0
Read of size 2 at addr ffff88812475b880 by task ksoftirqd/1/23
[...]
Call Trace:
 <TASK>
 ice_napi_poll+0x3921/0x41a0
 __napi_poll+0x98/0x520
 net_rx_action+0x8f2/0xfa0
 handle_softirqs+0x1cb/0x7f0
[...]
 </TASK>

Allocated by task 7246:
 ice_prepare_xdp_rings+0x3de/0x12d0
 ice_xdp+0x61c/0xef0
 dev_xdp_install+0x3c4/0x840
 dev_xdp_attach+0x50a/0x10a0
 dev_change_xdp_fd+0x175/0x210
[...]

Freed by task 7251:
 __rcu_free_sheaf_prepare+0x5f/0x230
 rcu_free_sheaf+0x1a/0xf0
 rcu_core+0x567/0x1d80
 handle_softirqs+0x1cb/0x7f0

Fixes: 2504b8405768 ("ice: protect XDP configuration with a mutex")
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d1f628f1c8ac..4681cbe193f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2912,12 +2912,21 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	}
 
 	/* hot swap progs and avoid toggling link */
-	if (ice_is_xdp_ena_vsi(vsi) == !!prog ||
-	    test_bit(ICE_VSI_REBUILD_PENDING, vsi->state)) {
+	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
 		ice_vsi_assign_bpf_prog(vsi, prog);
 		return 0;
 	}
 
+	if (test_bit(ICE_VSI_REBUILD_PENDING, vsi->state)) {
+		if (prog) {
+			NL_SET_ERR_MSG_MOD(extack, "VSI rebuild is pending");
+			return -EAGAIN;
+		}
+
+		ice_vsi_assign_bpf_prog(vsi, NULL);
+		return 0;
+	}
+
 	if_running = netif_running(vsi->netdev) &&
 		     !test_and_set_bit(ICE_VSI_DOWN, vsi->state);
 
-- 
2.51.0

