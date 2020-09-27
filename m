Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB28D27A5E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9575E8703D;
	Mon, 28 Sep 2020 03:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nWM-dxbvGYgT; Mon, 28 Sep 2020 03:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E758C87052;
	Mon, 28 Sep 2020 03:42:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 439E21BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E94D8707A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cq4H3v-tgK-D for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2221E87068
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:40 +0000 (UTC)
Message-Id: <20200927194922.444952084@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=rVcs4xyNsZ3B1RNOlCmgCHrKkmEQ7KBjYPLrc7hX0OM=;
 b=P+aP2GF7vFpvtjuxSOhnGOx5VKGfmgDyoWP+aYtjk+E4j5QR85SJbH0RvEO2TEYfSXNZde
 LH8htefcBkwQMMGsPRzvzl0aW2kq0kDu4/dCa0QxKRU+qfJioVR4cbmEutXWugxbCl3GLA
 LM64MD3HlulB0peOdhgWz4jWk8odxkKl6F9/rYCcRh64zgwPY6L5KKa1gWLwFq8OukZVlL
 nFGIQxs6jGOwsN7hDS0U2YTqo0ckaMc7WGyAMElofzlN5vuu/jtGB4hIdzH58Ype7BA1l7
 6OaHTbtTvyAUAuMszdCFi4rbo9hWanEt8I92TGo6Fsr9CaCm4S3BYMXj8+17sA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=rVcs4xyNsZ3B1RNOlCmgCHrKkmEQ7KBjYPLrc7hX0OM=;
 b=9iuCsE2W9cE1a4r2PyxLkUtHyC4zrJ8k7En+qtSH6f0oI2SrDUw6QOJqMyRyM2DiCqigCt
 DTntnxOadEMTUXBw==
Date: Sun, 27 Sep 2020 21:49:12 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 26/35] net: brcmfmac: Convey allocation
 mode as argument
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
 Jay Cliburn <jcliburn@gmail.com>, Govindarajulu Varadarajan <_govind@gmx.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Stanislaw Gruszka <stf_xl@wp.pl>,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, Martin Habets <mhabets@solarflare.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Paul McKenney <paulmck@kernel.org>, Intel Linux Wireless <linuxwifi@intel.com>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

The usage of in_interrupt() in drivers is phased out and Linus clearly
requested that code which changes behaviour depending on context should
either be seperated or the context be conveyed in an argument passed by the
caller, which usually knows the context.

brcmf_fweh_process_event() uses in_interrupt() to select the allocation
mode GFP_KERNEL/GFP_ATOMIC. Aside of the above reasons this check is
incomplete as it cannot detect contexts which just have preemption or
interrupts disabled.

All callchains leading to brcmf_fweh_process_event() can clearly identify
the calling context. Convey a 'gfp' argument through the callchains and let
the callers hand in the appropriate GFP mode.

This has also the advantage that any change of execution context or
preemption/interrupt state in these callchains will be detected by the
memory allocator for all GFP_KERNEL allocations.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h    |    5 +++--
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c   |   11 ++++++-----
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c   |    8 ++------
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h   |    7 ++++---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c |    2 +-
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c   |    8 ++++----
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c    |    2 +-
 7 files changed, 21 insertions(+), 22 deletions(-)

--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
@@ -249,9 +249,10 @@ int brcmf_bus_reset(struct brcmf_bus *bu
  */
 
 /* Receive frame for delivery to OS.  Callee disposes of rxp. */
-void brcmf_rx_frame(struct device *dev, struct sk_buff *rxp, bool handle_event);
+void brcmf_rx_frame(struct device *dev, struct sk_buff *rxp, bool handle_event,
+		    gfp_t gfp);
 /* Receive async event packet from firmware. Callee disposes of rxp. */
-void brcmf_rx_event(struct device *dev, struct sk_buff *rxp);
+void brcmf_rx_event(struct device *dev, struct sk_buff *rxp, gfp_t gfp);
 
 int brcmf_alloc(struct device *dev, struct brcmf_mp_device *settings);
 /* Indication from bus module regarding presence/insertion of dongle. */
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
@@ -489,7 +489,8 @@ static int brcmf_rx_hdrpull(struct brcmf
 	return 0;
 }
 
-void brcmf_rx_frame(struct device *dev, struct sk_buff *skb, bool handle_event)
+void brcmf_rx_frame(struct device *dev, struct sk_buff *skb, bool handle_event,
+		    gfp_t gfp)
 {
 	struct brcmf_if *ifp;
 	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
@@ -506,13 +507,13 @@ void brcmf_rx_frame(struct device *dev,
 		/* Process special event packets */
 		if (handle_event)
 			brcmf_fweh_process_skb(ifp->drvr, skb,
-					       BCMILCP_SUBTYPE_VENDOR_LONG);
-
+					       BCMILCP_SUBTYPE_VENDOR_LONG,
+					       gfp);
 		brcmf_netif_rx(ifp, skb);
 	}
 }
 
-void brcmf_rx_event(struct device *dev, struct sk_buff *skb)
+void brcmf_rx_event(struct device *dev, struct sk_buff *skb, gfp_t gfp)
 {
 	struct brcmf_if *ifp;
 	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
@@ -523,7 +524,7 @@ void brcmf_rx_event(struct device *dev,
 	if (brcmf_rx_hdrpull(drvr, skb, &ifp))
 		return;
 
-	brcmf_fweh_process_skb(ifp->drvr, skb, 0);
+	brcmf_fweh_process_skb(ifp->drvr, skb, 0, gfp);
 	brcmu_pkt_buf_free_skb(skb);
 }
 
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c
@@ -387,12 +387,11 @@ int brcmf_fweh_activate_events(struct br
  */
 void brcmf_fweh_process_event(struct brcmf_pub *drvr,
 			      struct brcmf_event *event_packet,
-			      u32 packet_len)
+			      u32 packet_len, gfp_t gfp)
 {
 	enum brcmf_fweh_event_code code;
 	struct brcmf_fweh_info *fweh = &drvr->fweh;
 	struct brcmf_fweh_queue_item *event;
-	gfp_t alloc_flag = GFP_KERNEL;
 	void *data;
 	u32 datalen;
 
@@ -411,10 +410,7 @@ void brcmf_fweh_process_event(struct brc
 	    datalen + sizeof(*event_packet) > packet_len)
 		return;
 
-	if (in_interrupt())
-		alloc_flag = GFP_ATOMIC;
-
-	event = kzalloc(sizeof(*event) + datalen, alloc_flag);
+	event = kzalloc(sizeof(*event) + datalen, gfp);
 	if (!event)
 		return;
 
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h
@@ -319,11 +319,12 @@ void brcmf_fweh_unregister(struct brcmf_
 int brcmf_fweh_activate_events(struct brcmf_if *ifp);
 void brcmf_fweh_process_event(struct brcmf_pub *drvr,
 			      struct brcmf_event *event_packet,
-			      u32 packet_len);
+			      u32 packet_len, gfp_t gfp);
 void brcmf_fweh_p2pdev_setup(struct brcmf_if *ifp, bool ongoing);
 
 static inline void brcmf_fweh_process_skb(struct brcmf_pub *drvr,
-					  struct sk_buff *skb, u16 stype)
+					  struct sk_buff *skb, u16 stype,
+					  gfp_t gfp)
 {
 	struct brcmf_event *event_packet;
 	u16 subtype, usr_stype;
@@ -354,7 +355,7 @@ static inline void brcmf_fweh_process_sk
 	if (usr_stype != BCMILCP_BCM_SUBTYPE_EVENT)
 		return;
 
-	brcmf_fweh_process_event(drvr, event_packet, skb->len + ETH_HLEN);
+	brcmf_fweh_process_event(drvr, event_packet, skb->len + ETH_HLEN, gfp);
 }
 
 #endif /* FWEH_H_ */
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c
@@ -1128,7 +1128,7 @@ static void brcmf_msgbuf_process_event(s
 
 	skb->protocol = eth_type_trans(skb, ifp->ndev);
 
-	brcmf_fweh_process_skb(ifp->drvr, skb, 0);
+	brcmf_fweh_process_skb(ifp->drvr, skb, 0, GFP_KERNEL);
 
 exit:
 	brcmu_pkt_buf_free_skb(skb);
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -1701,10 +1701,10 @@ static u8 brcmf_sdio_rxglom(struct brcmf
 					   pfirst->prev);
 			skb_unlink(pfirst, &bus->glom);
 			if (brcmf_sdio_fromevntchan(&dptr[SDPCM_HWHDR_LEN]))
-				brcmf_rx_event(bus->sdiodev->dev, pfirst);
+				brcmf_rx_event(bus->sdiodev->dev, pfirst, GFP_KERNEL);
 			else
 				brcmf_rx_frame(bus->sdiodev->dev, pfirst,
-					       false);
+					       false, GFP_KERNEL);
 			bus->sdcnt.rxglompkts++;
 		}
 
@@ -2035,10 +2035,10 @@ static uint brcmf_sdio_readframes(struct
 		if (pkt->len == 0)
 			brcmu_pkt_buf_free_skb(pkt);
 		else if (rd->channel == SDPCM_EVENT_CHANNEL)
-			brcmf_rx_event(bus->sdiodev->dev, pkt);
+			brcmf_rx_event(bus->sdiodev->dev, pkt, GFP_KERNEL);
 		else
 			brcmf_rx_frame(bus->sdiodev->dev, pkt,
-				       false);
+				       false, GFP_KERNEL);
 
 		/* prepare the descriptor for the next read */
 		rd->len = rd->len_nxtfrm << 4;
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
@@ -532,7 +532,7 @@ static void brcmf_usb_rx_complete(struct
 	if (devinfo->bus_pub.state == BRCMFMAC_USB_STATE_UP ||
 	    devinfo->bus_pub.state == BRCMFMAC_USB_STATE_SLEEP) {
 		skb_put(skb, urb->actual_length);
-		brcmf_rx_frame(devinfo->dev, skb, true);
+		brcmf_rx_frame(devinfo->dev, skb, true, GFP_ATOMIC);
 		brcmf_usb_rx_refill(devinfo, req);
 		usb_mark_last_busy(urb->dev);
 	} else {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
