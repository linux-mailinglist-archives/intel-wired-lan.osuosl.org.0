Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4741827D99C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4D8F87166;
	Tue, 29 Sep 2020 21:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id idSAMQVLuvxl; Tue, 29 Sep 2020 21:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F190870A6;
	Tue, 29 Sep 2020 21:03:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7081BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 557BD20454
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R5g3sd-NwcPj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 47C7C20462
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:59 +0000 (UTC)
Message-Id: <20200929203500.979315007@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=p8noynpUYoUVoCA3AcE8IXexBkfCyLsxGEPrAE+AsI4=;
 b=GxWZdTIIqHgC4sHF/8+MlpMTpyE+Ys7tQM9ClxFYteeOzpdW9CUV+RfZQVpPshQ3Jab8uF
 VwiNSF1l+v37TyOEY0oLQ1Mg3WesnhOVDP4eOsDsAcBRO1CSdyL+HeQVl2qEEE0ZPmurlk
 mKSrHiTvvwoUUrs5H3BmGYzLfYENz7JzMWcY7ns6CZKAkEtFM1xIL8z67wRo57YMJHSeEL
 9foUpmZNYtmQKmUriWGskXls5938ymTN43trd/XooNNNzixOQUY9vxDqYaInxzFmlXyrKF
 /IpsVlVqLnsucsRLF4dHfWjutANDXz4i/LF4lPR/sjWVffc1CNwwAam73IGyRg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=p8noynpUYoUVoCA3AcE8IXexBkfCyLsxGEPrAE+AsI4=;
 b=CyXJ7UyYA/JETWPHQnDFpdz/d1SjcViFnqKn1ddsxKPw2C0BkbX2Q7Dvp3KSrmhyLaB6Qq
 amDNkvL368OqZVAA==
Date: Tue, 29 Sep 2020 22:25:24 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 15/36] net: sfc: Replace in_interrupt()
 usage
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

From: Edward Cree <ecree@solarflare.com>

efx_ef10_try_update_nic_stats_vf() used in_interrupt() to figure out
whether it is safe to sleep (for MCDI) or not.

The only caller from which it was not is efx_net_stats(), which can be
invoked under dev_base_lock from net-sysfs::netstat_show().

So add a new update_stats_atomic() method to struct efx_nic_type, and call
it from efx_net_stats(), removing the need for
efx_ef10_try_update_nic_stats_vf() to behave differently for this case
(which it wasn't doing correctly anyway).

For all nic_types other than EF10 VF, this method is NULL so the the
regular update_stats() methods are invoked , which are happy with being
called from atomic contexts.

Fixes: f00bf2305cab ("sfc: don't update stats on VF when called in atomic context")
Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Edward Cree <ecree@solarflare.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Martin Habets <mhabets@solarflare.com>

---
Only compile-tested so far, because I'm waiting for my kernel to
 finish rebuilding with CONFIG_DEBUG_ATOMIC_SLEEP which I'm hoping
 is the right thing to detect the bug in the existing code.
I also wasn't quite sure how to give credit to the thorough analysis
 in the commit message of Sebastian's patch.  I don't think we have
 a Whatever-by: tag to cover that, do we?
And this doesn't include your GFP_KERNEL change, which should
 probably go in separately if you take this.

 drivers/net/ethernet/sfc/ef10.c       |   22 +++++++++++++---------
 drivers/net/ethernet/sfc/efx_common.c |    2 +-
 drivers/net/ethernet/sfc/net_driver.h |    5 +++++
 drivers/net/ethernet/sfc/nic_common.h |    7 +++++++
 4 files changed, 26 insertions(+), 10 deletions(-)

--- a/drivers/net/ethernet/sfc/ef10.c
+++ b/drivers/net/ethernet/sfc/ef10.c
@@ -1871,15 +1871,6 @@ static int efx_ef10_try_update_nic_stats
 
 	spin_unlock_bh(&efx->stats_lock);
 
-	if (in_interrupt()) {
-		/* If in atomic context, cannot update stats.  Just update the
-		 * software stats and return so the caller can continue.
-		 */
-		spin_lock_bh(&efx->stats_lock);
-		efx_update_sw_stats(efx, stats);
-		return 0;
-	}
-
 	efx_ef10_get_stat_mask(efx, mask);
 
 	rc = efx_nic_alloc_buffer(efx, &stats_buf, dma_len, GFP_ATOMIC);
@@ -1938,6 +1929,18 @@ static size_t efx_ef10_update_stats_vf(s
 	return efx_ef10_update_stats_common(efx, full_stats, core_stats);
 }
 
+static size_t efx_ef10_update_stats_atomic_vf(struct efx_nic *efx, u64 *full_stats,
+					      struct rtnl_link_stats64 *core_stats)
+{
+	struct efx_ef10_nic_data *nic_data = efx->nic_data;
+
+	/* In atomic context, cannot update HW stats.  Just update the
+	 * software stats and return so the caller can continue.
+	 */
+	efx_update_sw_stats(efx, nic_data->stats);
+	return efx_ef10_update_stats_common(efx, full_stats, core_stats);
+}
+
 static void efx_ef10_push_irq_moderation(struct efx_channel *channel)
 {
 	struct efx_nic *efx = channel->efx;
@@ -3998,6 +4001,7 @@ const struct efx_nic_type efx_hunt_a0_vf
 	.finish_flr = efx_port_dummy_op_void,
 	.describe_stats = efx_ef10_describe_stats,
 	.update_stats = efx_ef10_update_stats_vf,
+	.update_stats_atomic = efx_ef10_update_stats_atomic_vf,
 	.start_stats = efx_port_dummy_op_void,
 	.pull_stats = efx_port_dummy_op_void,
 	.stop_stats = efx_port_dummy_op_void,
--- a/drivers/net/ethernet/sfc/efx_common.c
+++ b/drivers/net/ethernet/sfc/efx_common.c
@@ -602,7 +602,7 @@ void efx_net_stats(struct net_device *ne
 	struct efx_nic *efx = netdev_priv(net_dev);
 
 	spin_lock_bh(&efx->stats_lock);
-	efx->type->update_stats(efx, NULL, stats);
+	efx_nic_update_stats_atomic(efx, NULL, stats);
 	spin_unlock_bh(&efx->stats_lock);
 }
 
--- a/drivers/net/ethernet/sfc/net_driver.h
+++ b/drivers/net/ethernet/sfc/net_driver.h
@@ -1172,6 +1172,9 @@ struct efx_udp_tunnel {
  * @describe_stats: Describe statistics for ethtool
  * @update_stats: Update statistics not provided by event handling.
  *	Either argument may be %NULL.
+ * @update_stats_atomic: Update statistics while in atomic context, if that
+ *	is more limiting than @update_stats.  Otherwise, leave %NULL and
+ *	driver core will call @update_stats.
  * @start_stats: Start the regular fetching of statistics
  * @pull_stats: Pull stats from the NIC and wait until they arrive.
  * @stop_stats: Stop the regular fetching of statistics
@@ -1316,6 +1319,8 @@ struct efx_nic_type {
 	size_t (*describe_stats)(struct efx_nic *efx, u8 *names);
 	size_t (*update_stats)(struct efx_nic *efx, u64 *full_stats,
 			       struct rtnl_link_stats64 *core_stats);
+	size_t (*update_stats_atomic)(struct efx_nic *efx, u64 *full_stats,
+				      struct rtnl_link_stats64 *core_stats);
 	void (*start_stats)(struct efx_nic *efx);
 	void (*pull_stats)(struct efx_nic *efx);
 	void (*stop_stats)(struct efx_nic *efx);
--- a/drivers/net/ethernet/sfc/nic_common.h
+++ b/drivers/net/ethernet/sfc/nic_common.h
@@ -244,6 +244,13 @@ void efx_nic_update_stats(const struct e
 			  const unsigned long *mask, u64 *stats,
 			  const void *dma_buf, bool accumulate);
 void efx_nic_fix_nodesc_drop_stat(struct efx_nic *efx, u64 *stat);
+static inline size_t efx_nic_update_stats_atomic(struct efx_nic *efx, u64 *full_stats,
+						 struct rtnl_link_stats64 *core_stats)
+{
+	if (efx->type->update_stats_atomic)
+		return efx->type->update_stats_atomic(efx, full_stats, core_stats);
+	return efx->type->update_stats(efx, full_stats, core_stats);
+}
 
 #define EFX_MAX_FLUSH_TIME 5000
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
