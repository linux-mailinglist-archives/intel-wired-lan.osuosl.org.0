Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B057A859F5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 10:14:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B39DE402FE;
	Mon, 19 Feb 2024 09:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZrF4djE7wLb; Mon, 19 Feb 2024 09:14:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE29740109
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708334078;
	bh=CyuTyEUacN3pepSBJWL72y/0RunhnYpq37IXOd+sUdI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gNebKLp3m270RLZl5mZABo2A9gxwLot3T4Ml9QePMSpTuSVA8aVV1jncZt4o0R8xk
	 Oa7eFeNyOZKGoxyrk8cMaUZASSd34mSnb72sBRNdpOIc9Aa4rwibwtnmlsTOnr84UF
	 4kPpuy1ar70xSYdIlTIDsjnCp7OcxRruOL2hYXwMNzXm/YyaQ5NBSTepj2cLLAlLek
	 MsHVGBodsV6x2j49jSJeaEevxWngtbCRLWbtmt6fVSjWmLrtF3oe8a7868iF5ATunk
	 fAiAzp7Gr0nMEcvuZYL9MQ/9qEpEAXMdTHzOhSTXxyjmcLJyAjaeKREV7EQ1Kuq7/p
	 kxdtsEnTpYWHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE29740109;
	Mon, 19 Feb 2024 09:14:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40FFE1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C89C80C0C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMD-jiPnv5ju for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 09:14:35 +0000 (UTC)
X-Greylist: delayed 336 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 19 Feb 2024 09:14:35 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1917F80BE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1917F80BE5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=florian.kauer@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1917F80BE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:14:34 +0000 (UTC)
From: Florian Kauer <florian.kauer@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>,
 Andre Guedes <andre.guedes@intel.com>,
 Vedang Patel <vedang.patel@intel.com>
Date: Mon, 19 Feb 2024 10:08:43 +0100
Message-Id: <20240219090843.9307-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1708333733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=CyuTyEUacN3pepSBJWL72y/0RunhnYpq37IXOd+sUdI=;
 b=DZBiokTQDlOdztrlEBO0BdhvIfliISfFM5K/4igbF+EX0M5Mp/S53BDNd5VvTXiEMasiC+
 1pefmKJK+6CZMS6Y0jjI5fLAfoPYLIdlKbqc239RxTpshpEr3JiGjXvtxKnO1gdNNuiFeN
 /4rHIuIH/vToEnRmlN1KCZI94VpP8qeqK5W3rUcSGMFzlPiVDcl8XGqY6UyLuX8Rq/Vd6Y
 NOSzYyxXxP2QooXTb1qGagaeOP6WCtrKISM/skhN1DwZudviNR5dtMOavYKqUZCbHLWGNf
 4qUaTzsJOhkEJqTTtlCweMo+zOQAJRxQ/mR6D4FaFyyY3FobjVLEQdIRRcp1dg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1708333733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=CyuTyEUacN3pepSBJWL72y/0RunhnYpq37IXOd+sUdI=;
 b=cEu3F6wKVZE3xIS+G90z7VEP0pbOGI6Cah5j92ZjIX8P7r+WNCPCb+EsBK0mtFje58an/p
 G0lCqcsKHNsJqlDA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=DZBiokTQ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=cEu3F6wK
Subject: [Intel-wired-lan] [PATCH net 1/1] igc: avoid returning frame twice
 in XDP_REDIRECT
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When a frame can not be transmitted in XDP_REDIRECT
(e.g. due to a full queue), it is necessary to free
it by calling xdp_return_frame_rx_napi.

However, this is the reponsibility of the caller of
the ndo_xdp_xmit (see for example bq_xmit_all in
kernel/bpf/devmap.c) and thus calling it inside
igc_xdp_xmit (which is the ndo_xdp_xmit of the igc
driver) as well will lead to memory corruption.

In fact, bq_xmit_all expects that it can return all
frames after the last successfully transmitted one.
Therefore, break for the first not transmitted frame,
but do not call xdp_return_frame_rx_napi in igc_xdp_xmit.
This is equally implemented in other Intel drivers
such as the igb.

There are two alternatives to this that were rejected:
1. Return num_frames as all the frames would have been
   transmitted and release them inside igc_xdp_xmit.
   While it might work technically, it is not what
   the return value is meant to repesent (i.e. the
   number of SUCCESSFULLY transmitted packets).
2. Rework kernel/bpf/devmap.c and all drivers to
   support non-consecutively dropped packets.
   Besides being complex, it likely has a negative
   performance impact without a significant gain
   since it is anyway unlikely that the next frame
   can be transmitted if the previous one was dropped.

The memory corruption can be reproduced with
the following script which leads to a kernel panic
after a few seconds.  It basically generates more
traffic than a i225 NIC can transmit and pushes it
via XDP_REDIRECT from a virtual interface to the
physical interface where frames get dropped.

   #!/bin/bash
   INTERFACE=enp4s0
   INTERFACE_IDX=`cat /sys/class/net/$INTERFACE/ifindex`

   sudo ip link add dev veth1 type veth peer name veth2
   sudo ip link set up $INTERFACE
   sudo ip link set up veth1
   sudo ip link set up veth2

   cat << EOF > redirect.bpf.c

   SEC("prog")
   int redirect(struct xdp_md *ctx)
   {
       return bpf_redirect($INTERFACE_IDX, 0);
   }

   char _license[] SEC("license") = "GPL";
   EOF
   clang -O2 -g -Wall -target bpf -c redirect.bpf.c -o redirect.bpf.o
   sudo ip link set veth2 xdp obj redirect.bpf.o

   cat << EOF > pass.bpf.c

   SEC("prog")
   int pass(struct xdp_md *ctx)
   {
       return XDP_PASS;
   }

   char _license[] SEC("license") = "GPL";
   EOF
   clang -O2 -g -Wall -target bpf -c pass.bpf.c -o pass.bpf.o
   sudo ip link set $INTERFACE xdp obj pass.bpf.o

   cat << EOF > trafgen.cfg

   {
     /* Ethernet Header */
     0xe8, 0x6a, 0x64, 0x41, 0xbf, 0x46,
     0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
     const16(ETH_P_IP),

     /* IPv4 Header */
     0b01000101, 0,   # IPv4 version, IHL, TOS
     const16(1028),   # IPv4 total length (UDP length + 20 bytes (IP header))
     const16(2),      # IPv4 ident
     0b01000000, 0,   # IPv4 flags, fragmentation off
     64,              # IPv4 TTL
     17,              # Protocol UDP
     csumip(14, 33),  # IPv4 checksum

     /* UDP Header */
     10,  0, 1, 1,    # IP Src - adapt as needed
     10,  0, 1, 2,    # IP Dest - adapt as needed
     const16(6666),   # UDP Src Port
     const16(6666),   # UDP Dest Port
     const16(1008),   # UDP length (UDP header 8 bytes + payload length)
     csumudp(14, 34), # UDP checksum

     /* Payload */
     fill('W', 1000),
   }
   EOF

   sudo trafgen -i trafgen.cfg -b3000MB -o veth1 --cpp

Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186ae..81c21a893ede 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6487,7 +6487,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	int cpu = smp_processor_id();
 	struct netdev_queue *nq;
 	struct igc_ring *ring;
-	int i, drops;
+	int i, nxmit;
 
 	if (unlikely(!netif_carrier_ok(dev)))
 		return -ENETDOWN;
@@ -6503,16 +6503,15 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	/* Avoid transmit queue timeout since we share it with the slow path */
 	txq_trans_cond_update(nq);
 
-	drops = 0;
+	nxmit = 0;
 	for (i = 0; i < num_frames; i++) {
 		int err;
 		struct xdp_frame *xdpf = frames[i];
 
 		err = igc_xdp_init_tx_descriptor(ring, xdpf);
-		if (err) {
-			xdp_return_frame_rx_napi(xdpf);
-			drops++;
-		}
+		if (err)
+			break;
+		nxmit++;
 	}
 
 	if (flags & XDP_XMIT_FLUSH)
@@ -6520,7 +6519,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 
 	__netif_tx_unlock(nq);
 
-	return num_frames - drops;
+	return nxmit;
 }
 
 static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
-- 
2.39.2

