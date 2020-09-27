Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F41D27A5D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C74BD855DF;
	Mon, 28 Sep 2020 03:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyY6Yux5Zdwx; Mon, 28 Sep 2020 03:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3A28855C6;
	Mon, 28 Sep 2020 03:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5721BF95E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8BCB2203FA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7d8d6RpQ5GH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id C42BA20130
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:13 +0000 (UTC)
Message-Id: <20200927194920.327665456@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236631;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=LDyMI8Hz49Jgdl18F8Ta9e6p+YRh1dkfwAZ1XTos3j8=;
 b=0tG2QVs6g8rkE0bRdQ8JdMu4aP/Q7FauXbgPsjH7E62PT9jMd3rMuTE30ia2tqheyomNZj
 f0Q53jlOjvftWeF1ykrxl/rSGqHc13tFUPFffEF+5XM9/IVCCNoMxbdjdjuUJDQeSqrooh
 Nkd5o4E5Gn17JuQgU6qoel3O9qQzfxkH3FvzJ9KTrb21Zjxj/M4A1vwhx/j+lhhqhcgFOd
 rJghApRHbvV4oCVU8TIQ6d02sDpEeOE0t2g8CPE2Bu8OP0f+I/nVC9XKjaNAkzU2PU4xs2
 b7gFIz/eHI7D40fN5R2Rba+BPLJq5DLsKbKtsq8wjrzZ62cKnbc+pPpd/EEj4w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236631;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=LDyMI8Hz49Jgdl18F8Ta9e6p+YRh1dkfwAZ1XTos3j8=;
 b=NeihXZuinmBVQYVnFomZAN0HcKRGTntP3I3XGFPCfYihWAR3yZ30mG99h+HiZaZcvFyruj
 L+GdfMd29fk8eJDQ==
Date: Sun, 27 Sep 2020 21:48:51 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 05/35] net: atheros: Remove
 WARN_ON(in_interrupt())
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

From: Thomas Gleixner <tglx@linutronix.de>

in_interrupt() is ill defined and does not provide what the name
suggests. The usage especially in driver code is deprecated and a tree wide
effort to clean up and consolidate the (ab)usage of in_interrupt() and
related checks is happening.

In this case the check covers only parts of the contexts in which these
functions cannot be called. It fails to detect preemption or interrupt
disabled invocations.

As the functions which are invoked from at*_reinit_locked() contain a broad
variety of checks (always enabled or debug option dependent) which cover
all invalid conditions already, there is no point in having inconsistent
warnings in those drivers.

Just remove them.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jay Cliburn <jcliburn@gmail.com>
Cc: Chris Snook <chris.snook@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org

---
 drivers/net/ethernet/atheros/atl1c/atl1c_main.c |    1 -
 drivers/net/ethernet/atheros/atl1e/atl1e_main.c |    2 --
 drivers/net/ethernet/atheros/atlx/atl2.c        |    1 -
 3 files changed, 4 deletions(-)

--- a/drivers/net/ethernet/atheros/atl1c/atl1c_main.c
+++ b/drivers/net/ethernet/atheros/atl1c/atl1c_main.c
@@ -220,7 +220,6 @@ static void atl1c_phy_config(struct time
 
 void atl1c_reinit_locked(struct atl1c_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
 	atl1c_down(adapter);
 	atl1c_up(adapter);
 	clear_bit(__AT_RESETTING, &adapter->flags);
--- a/drivers/net/ethernet/atheros/atl1e/atl1e_main.c
+++ b/drivers/net/ethernet/atheros/atl1e/atl1e_main.c
@@ -127,8 +127,6 @@ static void atl1e_phy_config(struct time
 
 void atl1e_reinit_locked(struct atl1e_adapter *adapter)
 {
-
-	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__AT_RESETTING, &adapter->flags))
 		msleep(1);
 	atl1e_down(adapter);
--- a/drivers/net/ethernet/atheros/atlx/atl2.c
+++ b/drivers/net/ethernet/atheros/atlx/atl2.c
@@ -1085,7 +1085,6 @@ static int atl2_up(struct atl2_adapter *
 
 static void atl2_reinit_locked(struct atl2_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__ATL2_RESETTING, &adapter->flags))
 		msleep(1);
 	atl2_down(adapter);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
