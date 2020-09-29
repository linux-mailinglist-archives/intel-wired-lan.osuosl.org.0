Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0222F27D998
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 656FA87150;
	Tue, 29 Sep 2020 21:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iwq92IWXGRcb; Tue, 29 Sep 2020 21:03:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1147870A6;
	Tue, 29 Sep 2020 21:03:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6FD1BF989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9982D85F7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LVSgV5QeqK8v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8B3685F71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:46 +0000 (UTC)
Message-Id: <20200929203459.967800092@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411744;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=yPLMFV0AoKzVfjkZGD1cBol7ZHiDqQNGHcgytaaR7SU=;
 b=DGmRniuwLHzIUi4k/mQQVGbmHmlc5hKx7KI3F+Vt92K4HbV+4/N++j7KAiLrK0Aig5EI27
 OK4nc7WDsMiyTI4/TtPmO0qJWpgf23aOyvOwL6BP3SpKXbLdpDBkbXGes6GmQDAtisSw4+
 NR9MnI2PyeekW2W3WlcAcAqbaORHvTZ0ER5Zet/4TFYBCqr+vGzjXZ5fWdft3D9FxNtAR7
 n3LgKckRM18g7rRH5sLOSYPXk62LNNdGaL9Sze7y155ktki/zLKhk0pjW7usA8ejPxRQyh
 HKGpF2HD9KC7ZuQD0Oc5/IsUAXjLcIZSHxXBZ9Bb8ciVF2E9DukQYKImu4ZOyg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411744;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=yPLMFV0AoKzVfjkZGD1cBol7ZHiDqQNGHcgytaaR7SU=;
 b=STkATloI5Xd/LYwyRA1wjacSEWk8sYNo/Fk8PiYrZnl0nulJcadbqh65bbryKovkMRPRbM
 i9eLFjLBfU9eplDQ==
Date: Tue, 29 Sep 2020 22:25:14 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 05/36] net: atheros: Remove
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
@@ -1086,7 +1086,6 @@ static int atl2_up(struct atl2_adapter *
 
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
