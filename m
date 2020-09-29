Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE7327D99D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71DF7847E6;
	Tue, 29 Sep 2020 21:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U0M2wMQUb35F; Tue, 29 Sep 2020 21:03:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4982C848F4;
	Tue, 29 Sep 2020 21:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 814181BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7BEBA8683A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xt8NzKU3Ai95 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BCE7186806
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:52 +0000 (UTC)
Message-Id: <20200929203500.481750554@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=VICDOx2EIISDwW+YF3QvD5vk142qLSDR+atrWMc+BeY=;
 b=SEJTx3juGKHf45RfWATRlgMaL0/Xuc0u6i/a7Ih6vrUx11xTvYfFDchUCAVKoSSJK9Y7wd
 gapRnXXuCQkDyIrpHGKGBMwPR23Ei3pyXi4ZbiwpilW0axVivTsCnQ2Dm1hRhUkC7MYwBE
 Jpwq+6nW8uLRQ3OVvvgf74LC1S41xzCVkmdWdBvs4gq8q6I/fwX2lJNq+fA2COHNzjcVj5
 XHr6Mp6gAlSo23zXw0hRhC/uvvqBQQa0AX8HM9Nh2BxCbWFlvYh0pJ06fFjJlFjpTDD4JR
 GF6prEkLvcAgRX+ajlhawyze68L8K0F1qM8g0WPol4Aoq7C8EqDCtshichIxmw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=VICDOx2EIISDwW+YF3QvD5vk142qLSDR+atrWMc+BeY=;
 b=BTy/4a8HncmpoDwnXDEurZSKOP5mWdJwALMMKLG/chU7a6Y2N0g2DffQlMJcSEODI7DDYP
 CD/HFFakt7GQE8AQ==
Date: Tue, 29 Sep 2020 22:25:19 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 10/36] net: intel: Remove
 in_interrupt() warnings
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
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
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

In this case the checks cover only parts of the contexts in which these
functions cannot be called. They fail to detect preemption or interrupt
disabled invocations.

As the functions which are invoked from the various places contain already
a broad variety of checks (always enabled or debug option dependent) cover
all invalid conditions already, there is no point in having inconsistent
warnings in those drivers.

Just remove them.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

---
 drivers/net/ethernet/intel/e1000/e1000_main.c     |    1 -
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c      |    2 --
 drivers/net/ethernet/intel/i40e/i40e_main.c       |    4 ----
 drivers/net/ethernet/intel/ice/ice_main.c         |    1 -
 drivers/net/ethernet/intel/igb/igb_main.c         |    1 -
 drivers/net/ethernet/intel/igc/igc_main.c         |    1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |    1 -
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |    2 --
 8 files changed, 13 deletions(-)

--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -534,7 +534,6 @@ void e1000_down(struct e1000_adapter *ad
 
 void e1000_reinit_locked(struct e1000_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
 		msleep(1);
 
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -221,8 +221,6 @@ static bool fm10k_prepare_for_reset(stru
 {
 	struct net_device *netdev = interface->netdev;
 
-	WARN_ON(in_interrupt());
-
 	/* put off any impending NetWatchDogTimeout */
 	netif_trans_update(netdev);
 
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6689,7 +6689,6 @@ static void i40e_vsi_reinit_locked(struc
 {
 	struct i40e_pf *pf = vsi->back;
 
-	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__I40E_CONFIG_BUSY, pf->state))
 		usleep_range(1000, 2000);
 	i40e_down(vsi);
@@ -8462,9 +8461,6 @@ void i40e_do_reset(struct i40e_pf *pf, u
 {
 	u32 val;
 
-	WARN_ON(in_interrupt());
-
-
 	/* do the biggest reset indicated */
 	if (reset_flags & BIT_ULL(__I40E_GLOBAL_RESET_REQUESTED)) {
 
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -486,7 +486,6 @@ static void ice_do_reset(struct ice_pf *
 	struct ice_hw *hw = &pf->hw;
 
 	dev_dbg(dev, "reset_type 0x%x requested\n", reset_type);
-	WARN_ON(in_interrupt());
 
 	ice_prepare_for_reset(pf);
 
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2220,7 +2220,6 @@ void igb_down(struct igb_adapter *adapte
 
 void igb_reinit_locked(struct igb_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__IGB_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 	igb_down(adapter);
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3831,7 +3831,6 @@ void igc_down(struct igc_adapter *adapte
 
 void igc_reinit_locked(struct igc_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
 	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 	igc_down(adapter);
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5677,7 +5677,6 @@ static void ixgbe_up_complete(struct ixg
 
 void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
 	/* put off any impending NetWatchDogTimeout */
 	netif_trans_update(adapter->netdev);
 
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2526,8 +2526,6 @@ void ixgbevf_down(struct ixgbevf_adapter
 
 void ixgbevf_reinit_locked(struct ixgbevf_adapter *adapter)
 {
-	WARN_ON(in_interrupt());
-
 	while (test_and_set_bit(__IXGBEVF_RESETTING, &adapter->state))
 		msleep(1);
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
