Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB5727A5DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C043A86225;
	Mon, 28 Sep 2020 03:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVkrSswOlcBj; Mon, 28 Sep 2020 03:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B4DA86174;
	Mon, 28 Sep 2020 03:42:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3793E1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33B828513B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xawls3eMxYm0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CC6C8508E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:11 +0000 (UTC)
Message-Id: <20200927194920.103181773@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=+Td6yEJdX0u3alrzHn3f95NHXVsu8voDQUxA06qKs/o=;
 b=lvqAAX6akfP4YZ7xFR4LpOwETarHeBRFLM2QGdZc6nT5AgVB/4sW2QV0rl1zrbXxtvs875
 uZ8s+pnZL9IX+9ZQfTf5t6ubPQkkOAQKHI+5xe32z1/so/OlLrIFEAdPXMqAbdUuiLNy5I
 fw7MItHEk107qSjVOj8KnpKG8kTTP08LGiPqAldfmFKC2LrcUAKL6CyyZnYa2MZMx8KS3B
 6g8oqlDFUUUxl3EiGW19U2kDoo63JtxfAx/i53g2+VghRAPyJbTb+QqsHxxgd/RYJaCNl1
 OviMTI9zuVPOfs1dRgwlCiQPoBX9PY1w9BIsFYvtkhosg5mXWaHYXe6j6KmRnA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=+Td6yEJdX0u3alrzHn3f95NHXVsu8voDQUxA06qKs/o=;
 b=M/WUbhe6ErdCayGy1R//fNscpvFnmw4BpbV19BilmIiQfA+0Y1FoXJBx98Nu47G3KEOcgz
 7H3xxIcvoG/sxZDQ==
Date: Sun, 27 Sep 2020 21:48:49 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 03/35] net: Add netif_rx_any_context()
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
 Heiner Kallweit <hkallweit1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
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
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Quite some drivers make conditional decisions based on in_interrupt() to
invoke either netif_rx() or netif_rx_ni().

Conditionals based on in_interrupt() or other variants of preempt count
checks in drivers should not exist for various reasons and Linus clearly
requested to either split the code pathes or pass an argument to the
common functions which provides the context.

This is obviously the correct solution, but for some of the affected
drivers this needs a major rewrite due to their convoluted structure.

As in_interrupt() usage in drivers needs to be phased out, provide
netif_rx_any_context() as a stop gap for these drivers.

This confines the in_interrupt() conditional to core code which in turn
allows to remove the access to this check for driver code and provides one
central place to do further modifications once the driver maze is cleaned
up.

Suggested-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
---
 include/linux/netdevice.h |    1 +
 net/core/dev.c            |   15 +++++++++++++++
 2 files changed, 16 insertions(+)

--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -3764,6 +3764,7 @@ void generic_xdp_tx(struct sk_buff *skb,
 int do_xdp_generic(struct bpf_prog *xdp_prog, struct sk_buff *skb);
 int netif_rx(struct sk_buff *skb);
 int netif_rx_ni(struct sk_buff *skb);
+int netif_rx_any_context(struct sk_buff *skb);
 int netif_receive_skb(struct sk_buff *skb);
 int netif_receive_skb_core(struct sk_buff *skb);
 void netif_receive_skb_list(struct list_head *head);
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -4840,6 +4840,21 @@ int netif_rx_ni(struct sk_buff *skb)
 }
 EXPORT_SYMBOL(netif_rx_ni);
 
+int netif_rx_any_context(struct sk_buff *skb)
+{
+	/*
+	 * If invoked from contexts which do not invoke bottom half
+	 * processing either at return from interrupt or when softrqs are
+	 * reenabled, use netif_rx_ni() which invokes bottomhalf processing
+	 * directly.
+	 */
+	if (in_interrupt())
+		return netif_rx(skb);
+	else
+		return netif_rx_ni(skb);
+}
+EXPORT_SYMBOL(netif_rx_any_context);
+
 static __latent_entropy void net_tx_action(struct softirq_action *h)
 {
 	struct softnet_data *sd = this_cpu_ptr(&softnet_data);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
