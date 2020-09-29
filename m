Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46727D9A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB08B84E8F;
	Tue, 29 Sep 2020 21:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wmTHEwCHX9+d; Tue, 29 Sep 2020 21:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9BEF805D5;
	Tue, 29 Sep 2020 21:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 901471BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B50285F71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tu0urzJqTwpF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3487585F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:13 +0000 (UTC)
Message-Id: <20200929203502.084703195@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=LrldQJQw6qypyNQybdI02NG+9/ckddJHjYgk5hlEHHQ=;
 b=W50wQ+GaNd8R4tSNqTICBdQk/2YIRsw/r76XqikWEnHF2rKl0QKsifKzK/4rpV3JddmiKx
 5X9q0gc1DwFsx2n5C1lF6JO6j7qwcsl6yNq7fwB7V/6Q3n4KpRPYmTGSv4n00HudhtSxvI
 fjbk1EPV24IDWvSw+12gnFlG6RBnY4uxWmnrJKPSZdd09LynExhub++x0V0wIKoQTOdcTv
 vVCFtXASKKnFemHFsTagTjSzQsahMlM34laJrI1RDyJofrTl+M2kz5U+WEWJu5Fu9EURdU
 9bxJK/Fruu0QWmbEeCkavOHYNgBbhfl4d0nmx0aubAlDJFkABGcbkXcnjeIWqA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=LrldQJQw6qypyNQybdI02NG+9/ckddJHjYgk5hlEHHQ=;
 b=aYCDVQdMR8R7kgHsLF+gsqoZURiRjoLdvdDdOUWZI6x+sX8Je6Xb+rKLwd0K1HqRODWQKz
 pZYqigkaNJN28jAA==
Date: Tue, 29 Sep 2020 22:25:35 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 26/36] net: brcmfmac: Convey execution
 context via argument to brcmf_netif_rx()
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christian Benvenuti <benve@cisco.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>, Amitkumar Karwar <amitkarwar@gmail.com>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

bcrmgf_netif_rx() uses in_interrupt to chose between netif_rx() and
netif_rx_ni(). in_interrupt() usage in drivers is phased out.

Convey the execution mode via an 'inirq' argument through the various
callchains leading to brcmf_netif_rx():

brcmf_pcie_isr_thread()		    <- Task context
  brcmf_proto_msgbuf_rx_trigger()
    brcmf_msgbuf_process_rx()
      brcmf_msgbuf_process_msgtype()
        brcmf_msgbuf_process_rx_complete()
	  brcmf_netif_mon_rx()
	     brcmf_netif_rx(isirq = false)
	  brcmf_netif_rx(isirq = false)

brcmf_sdio_readframes()  <- Task context sdio_claim_host() might sleep
  brcmf_rx_frame(isirq = false)

brcmf_sdio_rxglom()      <- Task context sdio_claim_host() might sleep
  brcmf_rx_frame(isirq = false)

brcmf_usb_rx_complete()  <- Interrupt context
  brcmf_rx_frame(isirq = true)

brcmf_rx_frame()
  brcmf_proto_rxreorder()
    brcmf_proto_bcdc_rxreorder()
      brcmf_fws_rxreorder()
        brcmf_netif_rx()
      brcmf_netif_rx()

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
---
V2: New patch. Using an argument instead of switching to netif_rx_any_context()
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c     |    4 +--
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h      |    3 +-
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c     |   16 ++++++------
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.h     |    2 -
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c |   10 +++----
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.h |    2 -
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c   |    5 ++-
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.h    |    6 ++--
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c     |    4 +--
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c      |    2 -
 10 files changed, 29 insertions(+), 25 deletions(-)

--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c
@@ -397,9 +397,9 @@ brcmf_proto_bcdc_add_tdls_peer(struct br
 }
 
 static void brcmf_proto_bcdc_rxreorder(struct brcmf_if *ifp,
-				       struct sk_buff *skb)
+				       struct sk_buff *skb, bool inirq)
 {
-	brcmf_fws_rxreorder(ifp, skb);
+	brcmf_fws_rxreorder(ifp, skb, inirq);
 }
 
 static void
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
@@ -249,7 +249,8 @@ int brcmf_bus_reset(struct brcmf_bus *bu
  */
 
 /* Receive frame for delivery to OS.  Callee disposes of rxp. */
-void brcmf_rx_frame(struct device *dev, struct sk_buff *rxp, bool handle_event);
+void brcmf_rx_frame(struct device *dev, struct sk_buff *rxp, bool handle_event,
+		    bool inirq);
 /* Receive async event packet from firmware. Callee disposes of rxp. */
 void brcmf_rx_event(struct device *dev, struct sk_buff *rxp);
 
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
@@ -395,7 +395,7 @@ void brcmf_txflowblock_if(struct brcmf_i
 	spin_unlock_irqrestore(&ifp->netif_stop_lock, flags);
 }
 
-void brcmf_netif_rx(struct brcmf_if *ifp, struct sk_buff *skb)
+void brcmf_netif_rx(struct brcmf_if *ifp, struct sk_buff *skb, bool inirq)
 {
 	/* Most of Broadcom's firmwares send 802.11f ADD frame every time a new
 	 * STA connects to the AP interface. This is an obsoleted standard most
@@ -418,14 +418,15 @@ void brcmf_netif_rx(struct brcmf_if *ifp
 	ifp->ndev->stats.rx_packets++;
 
 	brcmf_dbg(DATA, "rx proto=0x%X\n", ntohs(skb->protocol));
-	if (in_interrupt())
+	if (inirq) {
 		netif_rx(skb);
-	else
+	} else {
 		/* If the receive is not processed inside an ISR,
 		 * the softirqd must be woken explicitly to service
 		 * the NET_RX_SOFTIRQ.  This is handled by netif_rx_ni().
 		 */
 		netif_rx_ni(skb);
+	}
 }
 
 void brcmf_netif_mon_rx(struct brcmf_if *ifp, struct sk_buff *skb)
@@ -474,7 +475,7 @@ void brcmf_netif_mon_rx(struct brcmf_if
 	skb->pkt_type = PACKET_OTHERHOST;
 	skb->protocol = htons(ETH_P_802_2);
 
-	brcmf_netif_rx(ifp, skb);
+	brcmf_netif_rx(ifp, skb, false);
 }
 
 static int brcmf_rx_hdrpull(struct brcmf_pub *drvr, struct sk_buff *skb,
@@ -496,7 +497,8 @@ static int brcmf_rx_hdrpull(struct brcmf
 	return 0;
 }
 
-void brcmf_rx_frame(struct device *dev, struct sk_buff *skb, bool handle_event)
+void brcmf_rx_frame(struct device *dev, struct sk_buff *skb, bool handle_event,
+		    bool inirq)
 {
 	struct brcmf_if *ifp;
 	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
@@ -508,14 +510,14 @@ void brcmf_rx_frame(struct device *dev,
 		return;
 
 	if (brcmf_proto_is_reorder_skb(skb)) {
-		brcmf_proto_rxreorder(ifp, skb);
+		brcmf_proto_rxreorder(ifp, skb, inirq);
 	} else {
 		/* Process special event packets */
 		if (handle_event)
 			brcmf_fweh_process_skb(ifp->drvr, skb,
 					       BCMILCP_SUBTYPE_VENDOR_LONG);
 
-		brcmf_netif_rx(ifp, skb);
+		brcmf_netif_rx(ifp, skb, inirq);
 	}
 }
 
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.h
@@ -208,7 +208,7 @@ void brcmf_remove_interface(struct brcmf
 void brcmf_txflowblock_if(struct brcmf_if *ifp,
 			  enum brcmf_netif_stop_reason reason, bool state);
 void brcmf_txfinalize(struct brcmf_if *ifp, struct sk_buff *txp, bool success);
-void brcmf_netif_rx(struct brcmf_if *ifp, struct sk_buff *skb);
+void brcmf_netif_rx(struct brcmf_if *ifp, struct sk_buff *skb, bool inirq);
 void brcmf_netif_mon_rx(struct brcmf_if *ifp, struct sk_buff *skb);
 void brcmf_net_detach(struct net_device *ndev, bool rtnl_locked);
 int brcmf_net_mon_attach(struct brcmf_if *ifp);
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c
@@ -1664,7 +1664,7 @@ static void brcmf_rxreorder_get_skb_list
 	rfi->pend_pkts -= skb_queue_len(skb_list);
 }
 
-void brcmf_fws_rxreorder(struct brcmf_if *ifp, struct sk_buff *pkt)
+void brcmf_fws_rxreorder(struct brcmf_if *ifp, struct sk_buff *pkt, bool inirq)
 {
 	struct brcmf_pub *drvr = ifp->drvr;
 	u8 *reorder_data;
@@ -1682,7 +1682,7 @@ void brcmf_fws_rxreorder(struct brcmf_if
 	/* validate flags and flow id */
 	if (flags == 0xFF) {
 		bphy_err(drvr, "invalid flags...so ignore this packet\n");
-		brcmf_netif_rx(ifp, pkt);
+		brcmf_netif_rx(ifp, pkt, inirq);
 		return;
 	}
 
@@ -1694,7 +1694,7 @@ void brcmf_fws_rxreorder(struct brcmf_if
 		if (rfi == NULL) {
 			brcmf_dbg(INFO, "received flags to cleanup, but no flow (%d) yet\n",
 				  flow_id);
-			brcmf_netif_rx(ifp, pkt);
+			brcmf_netif_rx(ifp, pkt, inirq);
 			return;
 		}
 
@@ -1719,7 +1719,7 @@ void brcmf_fws_rxreorder(struct brcmf_if
 		rfi = kzalloc(buf_size, GFP_ATOMIC);
 		if (rfi == NULL) {
 			bphy_err(drvr, "failed to alloc buffer\n");
-			brcmf_netif_rx(ifp, pkt);
+			brcmf_netif_rx(ifp, pkt, inirq);
 			return;
 		}
 
@@ -1833,7 +1833,7 @@ void brcmf_fws_rxreorder(struct brcmf_if
 netif_rx:
 	skb_queue_walk_safe(&reorder_list, pkt, pnext) {
 		__skb_unlink(pkt, &reorder_list);
-		brcmf_netif_rx(ifp, pkt);
+		brcmf_netif_rx(ifp, pkt, inirq);
 	}
 }
 
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.h
@@ -42,6 +42,6 @@ void brcmf_fws_add_interface(struct brcm
 void brcmf_fws_del_interface(struct brcmf_if *ifp);
 void brcmf_fws_bustxfail(struct brcmf_fws_info *fws, struct sk_buff *skb);
 void brcmf_fws_bus_blocked(struct brcmf_pub *drvr, bool flow_blocked);
-void brcmf_fws_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb);
+void brcmf_fws_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb, bool inirq);
 
 #endif /* FWSIGNAL_H_ */
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c
@@ -536,7 +536,8 @@ static int brcmf_msgbuf_hdrpull(struct b
 	return -ENODEV;
 }
 
-static void brcmf_msgbuf_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb)
+static void brcmf_msgbuf_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb,
+				   bool inirq)
 {
 }
 
@@ -1190,7 +1191,7 @@ brcmf_msgbuf_process_rx_complete(struct
 	}
 
 	skb->protocol = eth_type_trans(skb, ifp->ndev);
-	brcmf_netif_rx(ifp, skb);
+	brcmf_netif_rx(ifp, skb, false);
 }
 
 static void brcmf_msgbuf_process_gen_status(struct brcmf_msgbuf *msgbuf,
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.h
@@ -32,7 +32,7 @@ struct brcmf_proto {
 			    u8 peer[ETH_ALEN]);
 	void (*add_tdls_peer)(struct brcmf_pub *drvr, int ifidx,
 			      u8 peer[ETH_ALEN]);
-	void (*rxreorder)(struct brcmf_if *ifp, struct sk_buff *skb);
+	void (*rxreorder)(struct brcmf_if *ifp, struct sk_buff *skb, bool inirq);
 	void (*add_if)(struct brcmf_if *ifp);
 	void (*del_if)(struct brcmf_if *ifp);
 	void (*reset_if)(struct brcmf_if *ifp);
@@ -109,9 +109,9 @@ static inline bool brcmf_proto_is_reorde
 }
 
 static inline void
-brcmf_proto_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb)
+brcmf_proto_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb, bool inirq)
 {
-	ifp->drvr->proto->rxreorder(ifp, skb);
+	ifp->drvr->proto->rxreorder(ifp, skb, inirq);
 }
 
 static inline void
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -1704,7 +1704,7 @@ static u8 brcmf_sdio_rxglom(struct brcmf
 				brcmf_rx_event(bus->sdiodev->dev, pfirst);
 			else
 				brcmf_rx_frame(bus->sdiodev->dev, pfirst,
-					       false);
+					       false, false);
 			bus->sdcnt.rxglompkts++;
 		}
 
@@ -2038,7 +2038,7 @@ static uint brcmf_sdio_readframes(struct
 			brcmf_rx_event(bus->sdiodev->dev, pkt);
 		else
 			brcmf_rx_frame(bus->sdiodev->dev, pkt,
-				       false);
+				       false, false);
 
 		/* prepare the descriptor for the next read */
 		rd->len = rd->len_nxtfrm << 4;
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
@@ -532,7 +532,7 @@ static void brcmf_usb_rx_complete(struct
 	if (devinfo->bus_pub.state == BRCMFMAC_USB_STATE_UP ||
 	    devinfo->bus_pub.state == BRCMFMAC_USB_STATE_SLEEP) {
 		skb_put(skb, urb->actual_length);
-		brcmf_rx_frame(devinfo->dev, skb, true);
+		brcmf_rx_frame(devinfo->dev, skb, true, true);
 		brcmf_usb_rx_refill(devinfo, req);
 		usb_mark_last_busy(urb->dev);
 	} else {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
