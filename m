Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C4B27D9B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94EEA204D1;
	Tue, 29 Sep 2020 21:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hw1Fxl6veXaF; Tue, 29 Sep 2020 21:03:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 936A0204F1;
	Tue, 29 Sep 2020 21:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D6951BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 042AA8682B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id te6PLj56JuKI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E287B8683C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:49 +0000 (UTC)
Message-Id: <20200929203500.277654701@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411748;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=DoiuWbaGrJj5/c3USazAYMMXEWWUqbiKOatMAut30pk=;
 b=HzxVHlMdgb94UaYPHpwz+MEPemrrTkEw8Ef4XL7EiZHIAb2tMW2TemaDbJp2BUr2sGrd05
 wqajwjp0PXXFRFQl9mFaR2Ta9ECE7zorLELEL/kBveROZMbIMATjc79T3UZsHknCXcW43N
 IhGeQDJv1lDfJLMfb48AjLj1sxrwZbBI7a7atGV+qcIG1sAZScO7Qmgp9unPNo+5Mq8gJz
 AwCQH+bPeH3Xk9MwFnH+yJwaSRNoy4F1d0OdwV2kqjocbyvThGqfSghThoH2MNUftLcoVQ
 Sf5JEMttEADrKXPJrIKAD4PxiNJm5kvdcJBtumzYBD8r9QJm24fbOl8hs27g/g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411748;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=DoiuWbaGrJj5/c3USazAYMMXEWWUqbiKOatMAut30pk=;
 b=AP696r0wjZ7zq0tAyrsYrx9ijlb4aNHTGIz/9+R0U2SBJsEIt4rHBNRgTYGW3lea8k1yrS
 hlCuDdq0PZynrFDA==
Date: Tue, 29 Sep 2020 22:25:17 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 08/36] net: e100: Remove in_interrupt()
 usage and pointless GFP_ATOMIC allocation
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

e100_hw_init() invokes e100_self_test() only if in_interrupt() returns
false as e100_self_test() uses msleep() which requires sleepable task
context. The in_interrupt() check is incomplete because in_interrupt()
cannot catch callers from contexts which have just preemption or interrupts
disabled.

e100_hw_init() is invoked from:

  - e100_loopback_test() which clearly is sleepable task context as the
    function uses msleep() itself.

  - e100_up() which clearly is sleepable task context as well because it
    invokes e100_alloc_cbs() abd request_irq() which both require sleepable
    task context due to GFP_KERNEL allocations and mutex_lock() operations.

Remove the pointless in_interrupt() check.

As a side effect of this analysis it turned out that e100_rx_alloc_list()
which is only invoked from e100_loopback_test() and e100_up() pointlessly
uses a GFP_ATOMIC allocation. The next invoked function e100_alloc_cbs() is
using GFP_KERNEL already.

Change the allocation mode in e100_rx_alloc_list() to GFP_KERNEL as well.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>


---
 drivers/net/ethernet/intel/e100.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -1531,7 +1531,7 @@ static int e100_hw_init(struct nic *nic)
 	e100_hw_reset(nic);
 
 	netif_err(nic, hw, nic->netdev, "e100_hw_init\n");
-	if (!in_interrupt() && (err = e100_self_test(nic)))
+	if ((err = e100_self_test(nic)))
 		return err;
 
 	if ((err = e100_phy_init(nic)))
@@ -2155,7 +2155,7 @@ static int e100_rx_alloc_list(struct nic
 	nic->rx_to_use = nic->rx_to_clean = NULL;
 	nic->ru_running = RU_UNINITIALIZED;
 
-	if (!(nic->rxs = kcalloc(count, sizeof(struct rx), GFP_ATOMIC)))
+	if (!(nic->rxs = kcalloc(count, sizeof(struct rx), GFP_KERNEL)))
 		return -ENOMEM;
 
 	for (rx = nic->rxs, i = 0; i < count; rx++, i++) {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
