Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4327327D9B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA1882050B;
	Tue, 29 Sep 2020 21:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5g3cCs9k7Lq; Tue, 29 Sep 2020 21:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A3B6F2150A;
	Tue, 29 Sep 2020 21:03:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C15581BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBD7385F71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDXLpKwetj0f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F68E85F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:17 +0000 (UTC)
Message-Id: <20200929203502.385024523@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=SqK4/L4V4YIpR+Cf9q8Rsc2k2CTTs6ylS8pwAbu3Yj0=;
 b=FAMEZpr0/xz2zWnRMbRiAFXGmbJoLy0tVsOnE09HVffmixLQ0JQERV3PmJGSJml7ArfdtF
 Qrj4k6OEsA07yjNKmIIdtwvO9hNm0lraWr4COJohqbN4VWOgkHjUEs6pXs9yuk53GlEVSJ
 A/auHDldwcEKy6qpNBk4xO1CsdICEla7jdmFRoqpjgOqp3t46Oy0gGGM82FXltWgedYUGD
 iEXh0yEUFNGefrj4qnlvTEprk6mel0ddoIOTS6SVdLObrbPfIdOP9yW8NF7suptKhahjgF
 awen4Yyt3Qp0zQLw3XTX/7EIu0J/QmtczQry1UeLLLnhqNZcaVWiliI1YQW71g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=SqK4/L4V4YIpR+Cf9q8Rsc2k2CTTs6ylS8pwAbu3Yj0=;
 b=XcVhZQenrAHTCOos0UAijJD17iujZX6ZURvEupVGG3ac+zSKjlTEYBCnenYA9RiyRRtEvZ
 A7wdkq3eLocfzSDg==
Date: Tue, 29 Sep 2020 22:25:38 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 29/36] net: iwlwifi: Remove
 in_interrupt() from tracing macro.
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
 Luca Coelho <luca@coelho.fi>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
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

The usage of in_interrupt) in driver code is phased out.

The iwlwifi_dbg tracepoint records in_interrupt() seperately, but that's
superfluous because the trace header already records all kind of state and
context information like hardirq status, softirq status, preemption count
etc.

Aside of that the recording of in_interrupt() as boolean does not allow to
distinguish between the possible contexts (hard interrupt, soft interrupt,
bottom half disabled) while the trace header gives precise information.

Remove the duplicate information from the tracepoint and fixup the caller.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Luca Coelho <luca@coelho.fi>
Acked-by: Kalle Valo <kvalo@codeaurora.org>

---
 drivers/net/wireless/intel/iwlwifi/iwl-debug.c        |    2 +-
 drivers/net/wireless/intel/iwlwifi/iwl-devtrace-msg.h |    6 ++----
 2 files changed, 3 insertions(+), 5 deletions(-)

--- a/drivers/net/wireless/intel/iwlwifi/iwl-debug.c
+++ b/drivers/net/wireless/intel/iwlwifi/iwl-debug.c
@@ -123,7 +123,7 @@ void __iwl_dbg(struct device *dev,
 	    (!limit || net_ratelimit()))
 		dev_printk(KERN_DEBUG, dev, "%s %pV", function, &vaf);
 #endif
-	trace_iwlwifi_dbg(level, in_interrupt(), function, &vaf);
+	trace_iwlwifi_dbg(level, function, &vaf);
 	va_end(args);
 }
 IWL_EXPORT_SYMBOL(__iwl_dbg);
--- a/drivers/net/wireless/intel/iwlwifi/iwl-devtrace-msg.h
+++ b/drivers/net/wireless/intel/iwlwifi/iwl-devtrace-msg.h
@@ -54,18 +54,16 @@ DEFINE_EVENT(iwlwifi_msg_event, iwlwifi_
 );
 
 TRACE_EVENT(iwlwifi_dbg,
-	TP_PROTO(u32 level, bool in_interrupt, const char *function,
+	TP_PROTO(u32 level, const char *function,
 		 struct va_format *vaf),
-	TP_ARGS(level, in_interrupt, function, vaf),
+	TP_ARGS(level, function, vaf),
 	TP_STRUCT__entry(
 		__field(u32, level)
-		__field(u8, in_interrupt)
 		__string(function, function)
 		__dynamic_array(char, msg, MAX_MSG_LEN)
 	),
 	TP_fast_assign(
 		__entry->level = level;
-		__entry->in_interrupt = in_interrupt;
 		__assign_str(function, function);
 		WARN_ON_ONCE(vsnprintf(__get_dynamic_array(msg),
 				       MAX_MSG_LEN, vaf->fmt,


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
