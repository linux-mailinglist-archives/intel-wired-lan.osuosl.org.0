Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5927D994
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6752185FFC;
	Tue, 29 Sep 2020 21:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9BG5uDjuBRX; Tue, 29 Sep 2020 21:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F45085FD5;
	Tue, 29 Sep 2020 21:03:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A4C51BF989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6267387113
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhCPmKWglrjR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 66C9587118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:42 +0000 (UTC)
Message-Id: <20200929203459.515312515@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ixX5wWeAzYgeqCbxOmX1EtJ/d8bhHMpFSLlTnl3G8oc=;
 b=rLTnlvYVJ44sP81i5crg2IdrMuAcGvR1WnDMWATS/f0fv0RR8XmXxSpbTNVrghfSgyLCB9
 7vY05femAXzcPxxt4YIlOmS0NJE78VJjIq9GFCX/1L6H8JXaur/EmNtEhY8tGE8kBAqwsG
 9ajJnRCuEPM6nBfKtFJNtfUul8IolcgLvlWkXREeiNI4DmCvKoV/DezStYuNOHxEJQcDDo
 U2fEfjifRbL/wigBLP6EfSWnQL0tuqOtz0Z35yDlX2QuMTQWkHyUwjNZvQ6DnJgOliMIOM
 u60HRnW1blplXHXswcA2Ee9vOFV2Jy4eF8wRw77i3z0uJ+KbPzDKG13g78y9Lw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ixX5wWeAzYgeqCbxOmX1EtJ/d8bhHMpFSLlTnl3G8oc=;
 b=wvOjnrRLLr5mL3R/GZv5MV5UXnvPGrg6RJ3yWooCRQWGteFyFBIq2hmIbxbv4SN0ex5MxU
 JFYN02SkZqGUSyCA==
Date: Tue, 29 Sep 2020 22:25:10 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 01/36] net: enic: Cure the enic api
 locking trainwreck
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

enic_dev_wait() has a BUG_ON(in_interrupt()).

Chasing the callers of enic_dev_wait() revealed the gems of enic_reset()
and enic_tx_hang_reset() which are both invoked through work queues in
order to be able to call rtnl_lock(). So far so good.

After locking rtnl both functions acquire enic::enic_api_lock which
serializes against the (ab)use from infiniband. This is where the
trainwreck starts.

enic::enic_api_lock is a spin_lock() which implicitly disables preemption,
but both functions invoke a ton of functions under that lock which can
sleep. The BUG_ON(in_interrupt()) does not trigger in that case because it
can't detect the preempt disabled condition.

This clearly has never been tested with any of the mandatory debug options
for 7+ years, which would have caught that for sure.

Cure it by adding a enic_api_busy member to struct enic, which is modified
and evaluated with enic::enic_api_lock held.

If enic_api_devcmd_proxy_by_index() observes enic::enic_api_busy as true,
it drops enic::enic_api_lock and busy waits for enic::enic_api_busy to
become false.

It would be smarter to wait for a completion of that busy period, but
enic_api_devcmd_proxy_by_index() is called with other spin locks held which
obviously can't sleep.

Remove the BUG_ON(in_interrupt()) check as well because it's incomplete and
with proper debugging enabled the problem would have been caught from the
debug checks in schedule_timeout().

Fixes: 0b038566c0ea ("drivers/net: enic: Add an interface for USNIC to interact with firmware")
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
V2: Cure tglx's last minute rename fail
---
 drivers/net/ethernet/cisco/enic/enic.h      |    1 +
 drivers/net/ethernet/cisco/enic/enic_api.c  |    6 ++++++
 drivers/net/ethernet/cisco/enic/enic_main.c |   27 +++++++++++++++++++++------
 3 files changed, 28 insertions(+), 6 deletions(-)

--- a/drivers/net/ethernet/cisco/enic/enic.h
+++ b/drivers/net/ethernet/cisco/enic/enic.h
@@ -169,6 +169,7 @@ struct enic {
 	u16 num_vfs;
 #endif
 	spinlock_t enic_api_lock;
+	bool enic_api_busy;
 	struct enic_port_profile *pp;
 
 	/* work queue cache line section */
--- a/drivers/net/ethernet/cisco/enic/enic_api.c
+++ b/drivers/net/ethernet/cisco/enic/enic_api.c
@@ -34,6 +34,12 @@ int enic_api_devcmd_proxy_by_index(struc
 	struct vnic_dev *vdev = enic->vdev;
 
 	spin_lock(&enic->enic_api_lock);
+	while (enic->enic_api_busy) {
+		spin_unlock(&enic->enic_api_lock);
+		cpu_relax();
+		spin_lock(&enic->enic_api_lock);
+	}
+
 	spin_lock_bh(&enic->devcmd_lock);
 
 	vnic_dev_cmd_proxy_by_index_start(vdev, vf);
--- a/drivers/net/ethernet/cisco/enic/enic_main.c
+++ b/drivers/net/ethernet/cisco/enic/enic_main.c
@@ -2107,8 +2107,6 @@ static int enic_dev_wait(struct vnic_dev
 	int done;
 	int err;
 
-	BUG_ON(in_interrupt());
-
 	err = start(vdev, arg);
 	if (err)
 		return err;
@@ -2297,6 +2295,13 @@ static int enic_set_rss_nic_cfg(struct e
 		rss_hash_bits, rss_base_cpu, rss_enable);
 }
 
+static void enic_set_api_busy(struct enic *enic, bool busy)
+{
+	spin_lock(&enic->enic_api_lock);
+	enic->enic_api_busy = busy;
+	spin_unlock(&enic->enic_api_lock);
+}
+
 static void enic_reset(struct work_struct *work)
 {
 	struct enic *enic = container_of(work, struct enic, reset);
@@ -2306,7 +2311,9 @@ static void enic_reset(struct work_struc
 
 	rtnl_lock();
 
-	spin_lock(&enic->enic_api_lock);
+	/* Stop any activity from infiniband */
+	enic_set_api_busy(enic, true);
+
 	enic_stop(enic->netdev);
 	enic_dev_soft_reset(enic);
 	enic_reset_addr_lists(enic);
@@ -2314,7 +2321,10 @@ static void enic_reset(struct work_struc
 	enic_set_rss_nic_cfg(enic);
 	enic_dev_set_ig_vlan_rewrite_mode(enic);
 	enic_open(enic->netdev);
-	spin_unlock(&enic->enic_api_lock);
+
+	/* Allow infiniband to fiddle with the device again */
+	enic_set_api_busy(enic, false);
+
 	call_netdevice_notifiers(NETDEV_REBOOT, enic->netdev);
 
 	rtnl_unlock();
@@ -2326,7 +2336,9 @@ static void enic_tx_hang_reset(struct wo
 
 	rtnl_lock();
 
-	spin_lock(&enic->enic_api_lock);
+	/* Stop any activity from infiniband */
+	enic_set_api_busy(enic, true);
+
 	enic_dev_hang_notify(enic);
 	enic_stop(enic->netdev);
 	enic_dev_hang_reset(enic);
@@ -2335,7 +2347,10 @@ static void enic_tx_hang_reset(struct wo
 	enic_set_rss_nic_cfg(enic);
 	enic_dev_set_ig_vlan_rewrite_mode(enic);
 	enic_open(enic->netdev);
-	spin_unlock(&enic->enic_api_lock);
+
+	/* Allow infiniband to fiddle with the device again */
+	enic_set_api_busy(enic, false);
+
 	call_netdevice_notifiers(NETDEV_REBOOT, enic->netdev);
 
 	rtnl_unlock();

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
