Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F3D27D9B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53172204BD;
	Tue, 29 Sep 2020 21:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0zfsyDQlCJYn; Tue, 29 Sep 2020 21:03:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D3F12079C;
	Tue, 29 Sep 2020 21:03:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FD9F1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6698785F71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pj_AePV6lMT5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 819F585F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:56 +0000 (UTC)
Message-Id: <20200929203500.772444384@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411754;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ZU7NcQAsE/kj7cmUnOD5K9JFij/BoI0exU4lajDmnJ4=;
 b=vRU6BfuHOIAfBrVtu4hT7bOoSqNXK0UJcuUCnpmMR01XxLkNiw61gZAphCtJXKCWE5K1i7
 IJgQN52kyuidE9vQgzXypCAyr/TpToMGyk9vkHe+DlbJNfFGZSYs/NGwJ9D2ONoM2IU5Zw
 e+7S0mXG+Q1pyH7obsScTtFz8BiaioaXHn5oAupcsRCsLuGD/BLOGoblxRQGDEX1Q8ApS0
 CQbP4O88pIhIbkxZySum376e0s3/17XKI+Gu6XgErrMSBBy1fyp3qCjBpD48xFUOUtKKBQ
 W2NNaEKkJgaL98SY7jwux0HGwK9aR2mFw5NIEs+9NYNIBpgTWAtGu7VZYGiZcw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411754;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ZU7NcQAsE/kj7cmUnOD5K9JFij/BoI0exU4lajDmnJ4=;
 b=LEfYKg1xG9lkdKgkKbBAn3aXuZsx2d/HLM7tuC+OD/dzExOSuTCCuQ+uxV82IUN/TWajPk
 Ybp+2Mpr+f/6D4Bg==
Date: Tue, 29 Sep 2020 22:25:22 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 13/36] net: mdiobus: Remove
 WARN_ON_ONCE(in_interrupt())
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

in_interrupt() is ill defined and does not provide what the name
suggests. The usage especially in driver code is deprecated and a tree wide
effort to clean up and consolidate the (ab)usage of in_interrupt() and
related checks is happening.

In this case the check covers only parts of the contexts in which these
functions cannot be called. It fails to detect preemption or interrupt
disabled invocations.

As the functions which contain these warnings invoke mutex_lock() which
contains a broad variety of checks (always enabled or debug option
dependent) and therefore covers all invalid conditions already, there is no
point in having inconsistent warnings in those drivers. The conditional
return is not really valuable in practice either.

Just remove them.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>


---
 drivers/net/phy/mdio_bus.c |   15 ---------------
 1 file changed, 15 deletions(-)

--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -825,9 +825,6 @@ int mdiobus_read_nested(struct mii_bus *
 {
 	int retval;
 
-	if (WARN_ON_ONCE(in_interrupt()))
-		return -EINVAL;
-
 	mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);
 	retval = __mdiobus_read(bus, addr, regnum);
 	mutex_unlock(&bus->mdio_lock);
@@ -850,9 +847,6 @@ int mdiobus_read(struct mii_bus *bus, in
 {
 	int retval;
 
-	if (WARN_ON_ONCE(in_interrupt()))
-		return -EINVAL;
-
 	mutex_lock(&bus->mdio_lock);
 	retval = __mdiobus_read(bus, addr, regnum);
 	mutex_unlock(&bus->mdio_lock);
@@ -879,9 +873,6 @@ int mdiobus_write_nested(struct mii_bus
 {
 	int err;
 
-	if (WARN_ON_ONCE(in_interrupt()))
-		return -EINVAL;
-
 	mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);
 	err = __mdiobus_write(bus, addr, regnum, val);
 	mutex_unlock(&bus->mdio_lock);
@@ -905,9 +896,6 @@ int mdiobus_write(struct mii_bus *bus, i
 {
 	int err;
 
-	if (WARN_ON_ONCE(in_interrupt()))
-		return -EINVAL;
-
 	mutex_lock(&bus->mdio_lock);
 	err = __mdiobus_write(bus, addr, regnum, val);
 	mutex_unlock(&bus->mdio_lock);
@@ -929,9 +917,6 @@ int mdiobus_modify(struct mii_bus *bus,
 {
 	int err;
 
-	if (WARN_ON_ONCE(in_interrupt()))
-		return -EINVAL;
-
 	mutex_lock(&bus->mdio_lock);
 	err = __mdiobus_modify_changed(bus, addr, regnum, mask, set);
 	mutex_unlock(&bus->mdio_lock);


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
