Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C702627A5D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56E3887024;
	Mon, 28 Sep 2020 03:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqI19t9UzXBp; Mon, 28 Sep 2020 03:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4596787028;
	Mon, 28 Sep 2020 03:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A53201BF95F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A0F038513B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfAykaJgIbQN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6ED48508E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:14 +0000 (UTC)
Message-Id: <20200927194920.437625772@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236633;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Nr+HwxG8LNdSmT94mAamQPUuBl65nafz2ip56wkroJ0=;
 b=KbehhohWE2i0RJJ/I4NPEnvmzRPqQAwTJ9c795tOfUYyQoKJ1QT3SZdKrdNNY0yFoQZY5H
 Rriou1lrgdkocgTrlrPnbRpu2IiQc+I5ybI6hf2y7FJRJcxRW5lXQHWE+ZqgBQ4Gx1gEah
 5saPaD1AeNCkcvophqbUNF8e2L8NxLUVk06WFGvAnnSUjwvOcPQF6o5IFK7xzNa2Zpd2CI
 1QxIChyN4I5dHa9UKRW1gAOgIToLg11A14tDhL7jtoBH5ee30muaiSywjrjn9wpIOOFvs3
 EWQvhHRwO8Eh7ZInAnN71OVEM2pAMgf15hno4dnlQd53rMB2TtDg6/qVcLJJDg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236633;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Nr+HwxG8LNdSmT94mAamQPUuBl65nafz2ip56wkroJ0=;
 b=cWc0Cj3hMdO2yBy/o5JKdrFUXDXwIiJqV12pCuzu1xmC2epM8ctXhUBINnzLyDh82L8Iox
 bnLfDgsDy3FKXbDw==
Date: Sun, 27 Sep 2020 21:48:52 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 06/35] net: cxgb3: Cleanup in_interrupt()
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

t3_sge_stop() is called from task context and from error handlers in
interrupt context. It relies on in_interrupt() to differentiate the
contexts.

in_interrupt() is deprecated as it is ill defined and does not provide what
it suggests.

Instead of replacing it with some other construct, simply split the
function into t3_sge_stop_dma(), which can be called from any context, and
t3_sge_stop() which can be only called from task context.

This has the advantage that any bogus invocation of t3_sge_stop() from
wrong contexts can be caught by debug kernels instead of being papered over
by the conditional.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Vishal Kulkarni <vishal@chelsio.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
 drivers/net/ethernet/chelsio/cxgb3/adapter.h    |    1 
 drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c |    2 -
 drivers/net/ethernet/chelsio/cxgb3/sge.c        |   44 ++++++++++++++----------
 3 files changed, 29 insertions(+), 18 deletions(-)

--- a/drivers/net/ethernet/chelsio/cxgb3/adapter.h
+++ b/drivers/net/ethernet/chelsio/cxgb3/adapter.h
@@ -313,6 +313,7 @@ void t3_os_link_fault(struct adapter *ad
 void t3_os_link_fault_handler(struct adapter *adapter, int port_id);
 
 void t3_sge_start(struct adapter *adap);
+void t3_sge_stop_dma(struct adapter *adap);
 void t3_sge_stop(struct adapter *adap);
 void t3_start_sge_timers(struct adapter *adap);
 void t3_stop_sge_timers(struct adapter *adap);
--- a/drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c
+++ b/drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c
@@ -2996,7 +2996,7 @@ void t3_fatal_err(struct adapter *adapte
 	unsigned int fw_status[4];
 
 	if (adapter->flags & FULL_INIT_DONE) {
-		t3_sge_stop(adapter);
+		t3_sge_stop_dma(adapter);
 		t3_write_reg(adapter, A_XGM_TX_CTRL, 0);
 		t3_write_reg(adapter, A_XGM_RX_CTRL, 0);
 		t3_write_reg(adapter, XGM_REG(A_XGM_TX_CTRL, 1), 0);
--- a/drivers/net/ethernet/chelsio/cxgb3/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb3/sge.c
@@ -3271,30 +3271,40 @@ void t3_sge_start(struct adapter *adap)
 }
 
 /**
- *	t3_sge_stop - disable SGE operation
+ *	t3_sge_stop_dma - Disable SGE DMA engine operation
  *	@adap: the adapter
  *
- *	Disables the DMA engine.  This can be called in emeregencies (e.g.,
- *	from error interrupts) or from normal process context.  In the latter
- *	case it also disables any pending queue restart tasklets.  Note that
- *	if it is called in interrupt context it cannot disable the restart
- *	tasklets as it cannot wait, however the tasklets will have no effect
- *	since the doorbells are disabled and the driver will call this again
- *	later from process context, at which time the tasklets will be stopped
- *	if they are still running.
+ *	Can be invoked from interrupt context e.g.  error handler.
+ *
+ *	Note that this function cannot disable the restart of tasklets as
+ *	it cannot wait if called from interrupt context, however the
+ *	tasklets will have no effect since the doorbells are disabled. The
+ *	driver will call tg3_sge_stop() later from process context, at
+ *	which time the tasklets will be stopped if they are still running.
  */
-void t3_sge_stop(struct adapter *adap)
+void t3_sge_stop_dma(struct adapter *adap)
 {
 	t3_set_reg_field(adap, A_SG_CONTROL, F_GLOBALENABLE, 0);
-	if (!in_interrupt()) {
-		int i;
+}
+
+/**
+ *	t3_sge_stop - disable SGE operation completly
+ *	@adap: the adapter
+ *
+ *	Called from process context. Disables the DMA engine and any
+ *	pending queue restart tasklets.
+ */
+void t3_sge_stop(struct adapter *adap)
+{
+	int i;
+
+	t3_sge_stop_dma(adap);
 
-		for (i = 0; i < SGE_QSETS; ++i) {
-			struct sge_qset *qs = &adap->sge.qs[i];
+	for (i = 0; i < SGE_QSETS; ++i) {
+		struct sge_qset *qs = &adap->sge.qs[i];
 
-			tasklet_kill(&qs->txq[TXQ_OFLD].qresume_tsk);
-			tasklet_kill(&qs->txq[TXQ_CTRL].qresume_tsk);
-		}
+		tasklet_kill(&qs->txq[TXQ_OFLD].qresume_tsk);
+		tasklet_kill(&qs->txq[TXQ_CTRL].qresume_tsk);
 	}
 }
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
