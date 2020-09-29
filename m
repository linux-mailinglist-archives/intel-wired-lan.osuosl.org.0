Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B216D27D9A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D729870C8;
	Tue, 29 Sep 2020 21:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9r-SkwNFIi5g; Tue, 29 Sep 2020 21:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93B01870A6;
	Tue, 29 Sep 2020 21:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 308A61BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C02887113
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9nxre9hwvkdA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49C2287118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:14 +0000 (UTC)
Message-Id: <20200929203502.180883992@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=hwdF1V4LMxNUL7q9z/lP9cddjWDJRZagT/G6Cdx9lrk=;
 b=uZt/eUN8OfZhfYu4gZx4bXPXea7lornACIiuoDVJLvHk2H8Q8Zv+kZOUr87g2/UhKiST25
 V+/5V+y0ru/ey1GSt3YtUGGFonFivlElx2HcMOpJum88Qm4oYIvstjSTEDik2AaMV8e5Io
 J+QO3V4F0uKsEyaI4fFydfJrzfeINlStfebs97Ve8vMXpFni+74VYRi+3PTFfSf6dv3JNz
 7+tQKj8T0Nser9o2g7IMsgMJoxIKPBi7cfkxQC2Ymw0kgyaIKQQUdyTFBzUoebRwOyVN2y
 1jAndEXur5WuP/3T0J0e4fP7iBuID+fkll24K9x2fQGJYBZ1bWsjLH3RXZK3bg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=hwdF1V4LMxNUL7q9z/lP9cddjWDJRZagT/G6Cdx9lrk=;
 b=G060K35tQ0idi9JDnp6uPFJ6I678hM/pUygnucHylPIewlMqMLY0K4NAFzL375dZQcwl/H
 fhMzYNClcuz68CDw==
Date: Tue, 29 Sep 2020 22:25:36 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 27/36] net: brcmfmac: Convey allocation
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
---
V2: Adopt to the 'inirq' changes
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c   |   10 ++++++----
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c   |    8 ++------
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h   |    7 ++++---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c |    2 +-
 4 files changed, 13 insertions(+), 14 deletions(-)

--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
@@ -513,10 +513,12 @@ void brcmf_rx_frame(struct device *dev,
 		brcmf_proto_rxreorder(ifp, skb, inirq);
 	} else {
 		/* Process special event packets */
-		if (handle_event)
-			brcmf_fweh_process_skb(ifp->drvr, skb,
-					       BCMILCP_SUBTYPE_VENDOR_LONG);
+		if (handle_event) {
+			gfp_t gfp = inirq ? GFP_ATOMIC : GFP_KERNEL;
 
+			brcmf_fweh_process_skb(ifp->drvr, skb,
+					       BCMILCP_SUBTYPE_VENDOR_LONG, gfp);
+		}
 		brcmf_netif_rx(ifp, skb, inirq);
 	}
 }
@@ -532,7 +534,7 @@ void brcmf_rx_event(struct device *dev,
 	if (brcmf_rx_hdrpull(drvr, skb, &ifp))
 		return;
 
-	brcmf_fweh_process_skb(ifp->drvr, skb, 0);
+	brcmf_fweh_process_skb(ifp->drvr, skb, 0, GFP_KERNEL);
 	brcmu_pkt_buf_free_skb(skb);
 }
 
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c
@@ -388,12 +388,11 @@ int brcmf_fweh_activate_events(struct br
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
 
@@ -412,10 +411,7 @@ void brcmf_fweh_process_event(struct brc
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
@@ -1129,7 +1129,7 @@ static void brcmf_msgbuf_process_event(s
 
 	skb->protocol = eth_type_trans(skb, ifp->ndev);
 
-	brcmf_fweh_process_skb(ifp->drvr, skb, 0);
+	brcmf_fweh_process_skb(ifp->drvr, skb, 0, GFP_KERNEL);
 
 exit:
 	brcmu_pkt_buf_free_skb(skb);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
