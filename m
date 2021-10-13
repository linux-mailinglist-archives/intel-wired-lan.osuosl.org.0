Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3630542C1D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 15:57:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6018608DA;
	Wed, 13 Oct 2021 13:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttRGoMB8zYKz; Wed, 13 Oct 2021 13:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AE5D608BE;
	Wed, 13 Oct 2021 13:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61B531BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C7E54023C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ebcpnKc0uioo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 07:18:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 710954013E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:05 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id p13so6297715edw.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 00:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cwzVputq9+5AheeWqHLhFOowmJ3q3Z3XOBFGNgiwI/k=;
 b=GqdNhRgrZ628omJIyJtKFALsEerCGsECe/hLhdel+ex7qWw+CvcUTRmsVU1FgGORix
 FvbomHtWIBMllx0NGvTV9HNVODsgqdSQkAb2wyKPwFp9w0LWubCdI+0eTeZUy1ozN3pN
 QrcYCGqGb5KAze9bji1Vo8dmud1CYFVy5esnMdGGa1tCz9AOdBcs8QK9GZBCgfNTe4bd
 sRJVULLIG4ODJic6o8Zn09uRCnP341MIpCIFVbIR1YNzVwoJMUt+W3QwMyyIN+GgF+YE
 OK1jYv4QxNxWaWHF0KsUaE//8TIimXVMk8AfSbPaQfEhR9IycNNfleltbrl3ETu2VwL2
 Yexw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cwzVputq9+5AheeWqHLhFOowmJ3q3Z3XOBFGNgiwI/k=;
 b=jRUsHggUsyoXAaie4KLcZu8DGQn4Ka0jA6dYoQJMmUYAFE3IkAEjzt8yELqL+ooePu
 AGMgUUe+qO7c6uphfcqQ5FZYpyMiT+V/nbae7JUKV42/RrxS+SiJNfqA5cHimDX08dIm
 1tQh4PD1j4hdGCRCasLhL5zCWl2rM1++TPNuLQI+Lqa//au/WZJkr61mi7ekP2TT0Y2h
 /XXGjlLVFDFeXVocQLzi+ff1ev+9fUyKPkfeD6Kp81ojyV7IfnH4qlWVT8qSIdF2nIGa
 g/dX3Ezq4SQVzZ7x61rHIylZ1plC9InGAhyXCeFXxZRox2GI181jDXxVNH5aJw2oR6ij
 Iy2g==
X-Gm-Message-State: AOAM532yGad8nWemF785XUngtN4cK2LjzbkpbUm/e4zHLhHjWDqhzEZ8
 DUT1U06vVp+2PPKv+I4uNn4=
X-Google-Smtp-Source: ABdhPJz7m9kEpvJpZmMCKaMlvgAmRYFcwbBO1EyhMvu/aPQnuwmMdIwT9RtYK4S4koACupweAiJecw==
X-Received: by 2002:a17:906:7017:: with SMTP id
 n23mr37751529ejj.446.1634109483530; 
 Wed, 13 Oct 2021 00:18:03 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id f7sm2935886edl.33.2021.10.13.00.18.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 00:18:03 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 09:15:29 +0200
Message-Id: <20211013071531.1145-3-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013071531.1145-1-kernel.hbk@gmail.com>
References: <20211013071531.1145-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Oct 2021 13:57:02 +0000
Subject: [Intel-wired-lan] [PATCH net-next RESEND 2/4] igb: move PEROUT and
 EXTTS isr logic to separate functions
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 Ruud Bos <kernel.hbk@gmail.com>, davem@davemloft.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove code duplication in the tsync interrupt handler function by moving
this logic to separate functions. This keeps the interrupt handler readable
and allows the new functions to be extended for adapter types other than
i210.

Signed-off-by: Ruud Bos <kernel.hbk@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 79 +++++++++++++----------
 1 file changed, 44 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index e67a71c3f141..1ff9bc452fcf 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6732,12 +6732,50 @@ void igb_update_stats(struct igb_adapter *adapter)
 	}
 }
 
+static void igb_perout(struct igb_adapter *adapter, int sdp)
+{
+	struct e1000_hw *hw = &adapter->hw;
+	struct timespec64 ts;
+	u32 tsauxc;
+
+	if (sdp < 0 || sdp >= IGB_N_PEROUT)
+		return;
+
+	spin_lock(&adapter->tmreg_lock);
+	ts = timespec64_add(adapter->perout[sdp].start,
+			    adapter->perout[sdp].period);
+	/* u32 conversion of tv_sec is safe until y2106 */
+	wr32((sdp == 1) ? E1000_TRGTTIML1 : E1000_TRGTTIML0, ts.tv_nsec);
+	wr32((sdp == 1) ? E1000_TRGTTIMH1 : E1000_TRGTTIMH0, (u32)ts.tv_sec);
+	tsauxc = rd32(E1000_TSAUXC);
+	tsauxc |= TSAUXC_EN_TT0;
+	wr32(E1000_TSAUXC, tsauxc);
+	adapter->perout[sdp].start = ts;
+	spin_unlock(&adapter->tmreg_lock);
+}
+
+static void igb_extts(struct igb_adapter *adapter, int sdp)
+{
+	struct e1000_hw *hw = &adapter->hw;
+	u32 sec, nsec;
+	struct ptp_clock_event event;
+
+	if (sdp < 0 || sdp >= IGB_N_EXTTS)
+		return;
+
+	nsec = rd32((sdp == 1) ? E1000_AUXSTMPL1 : E1000_AUXSTMPL0);
+	sec  = rd32((sdp == 1) ? E1000_AUXSTMPH1 : E1000_AUXSTMPH0);
+	event.type = PTP_CLOCK_EXTTS;
+	event.index = sdp;
+	event.timestamp = sec * 1000000000ULL + nsec;
+	ptp_clock_event(adapter->ptp_clock, &event);
+}
+
 static void igb_tsync_interrupt(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	struct ptp_clock_event event;
-	struct timespec64 ts;
-	u32 ack = 0, tsauxc, sec, nsec, tsicr = rd32(E1000_TSICR);
+	u32 ack = 0, tsicr = rd32(E1000_TSICR);
 
 	if (tsicr & TSINTR_SYS_WRAP) {
 		event.type = PTP_CLOCK_PPS;
@@ -6753,51 +6791,22 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
 	}
 
 	if (tsicr & TSINTR_TT0) {
-		spin_lock(&adapter->tmreg_lock);
-		ts = timespec64_add(adapter->perout[0].start,
-				    adapter->perout[0].period);
-		/* u32 conversion of tv_sec is safe until y2106 */
-		wr32(E1000_TRGTTIML0, ts.tv_nsec);
-		wr32(E1000_TRGTTIMH0, (u32)ts.tv_sec);
-		tsauxc = rd32(E1000_TSAUXC);
-		tsauxc |= TSAUXC_EN_TT0;
-		wr32(E1000_TSAUXC, tsauxc);
-		adapter->perout[0].start = ts;
-		spin_unlock(&adapter->tmreg_lock);
+		igb_perout(adapter, 0);
 		ack |= TSINTR_TT0;
 	}
 
 	if (tsicr & TSINTR_TT1) {
-		spin_lock(&adapter->tmreg_lock);
-		ts = timespec64_add(adapter->perout[1].start,
-				    adapter->perout[1].period);
-		wr32(E1000_TRGTTIML1, ts.tv_nsec);
-		wr32(E1000_TRGTTIMH1, (u32)ts.tv_sec);
-		tsauxc = rd32(E1000_TSAUXC);
-		tsauxc |= TSAUXC_EN_TT1;
-		wr32(E1000_TSAUXC, tsauxc);
-		adapter->perout[1].start = ts;
-		spin_unlock(&adapter->tmreg_lock);
+		igb_perout(adapter, 1);
 		ack |= TSINTR_TT1;
 	}
 
 	if (tsicr & TSINTR_AUTT0) {
-		nsec = rd32(E1000_AUXSTMPL0);
-		sec  = rd32(E1000_AUXSTMPH0);
-		event.type = PTP_CLOCK_EXTTS;
-		event.index = 0;
-		event.timestamp = sec * 1000000000ULL + nsec;
-		ptp_clock_event(adapter->ptp_clock, &event);
+		igb_extts(adapter, 0);
 		ack |= TSINTR_AUTT0;
 	}
 
 	if (tsicr & TSINTR_AUTT1) {
-		nsec = rd32(E1000_AUXSTMPL1);
-		sec  = rd32(E1000_AUXSTMPH1);
-		event.type = PTP_CLOCK_EXTTS;
-		event.index = 1;
-		event.timestamp = sec * 1000000000ULL + nsec;
-		ptp_clock_event(adapter->ptp_clock, &event);
+		igb_extts(adapter, 1);
 		ack |= TSINTR_AUTT1;
 	}
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
