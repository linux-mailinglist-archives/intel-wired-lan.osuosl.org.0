Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 217F142C1D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 15:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFD5E407B4;
	Wed, 13 Oct 2021 13:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7R2X7rzMgnS; Wed, 13 Oct 2021 13:57:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6016407E1;
	Wed, 13 Oct 2021 13:57:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67F0B1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C464240753
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2OPvVkRPhrM1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 07:18:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3F6140776
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:06 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id r18so5955721edv.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 00:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xsveLT33mXd68DjALvlgf8dqdcAb75JbYw2goBIVh7E=;
 b=qmtgf9hiszDDupqmSqM6c6hxJawYddjmhjI+igUWx3ROZvmrX7HwF3T3rLrcZr1z5F
 zm4eJ86jKGesfRTF4qPdhvNBwCXWF4mvQVhZIrqYJhaCS1cmxH/fvcdSGET6l6iccSyp
 IDtLe+uGK+aTXoOMegZeaxXiYIP0fdUh22+PjpDKaBgcQbLd1ZsWX0NaSs6jAwyO/PAK
 fsPgdlmrqK4rZs2EoSYgiAL8ASi412Wx96AWLmmmUzmgUsXNRi3M8fHJRKAIO4D+MFOm
 3jL6NK5zuax60Dsiq9szXV/nOBBQPfmm+WvnZlJatc2oeTSuk85Uh9x3qIjtEK4wAIpz
 L+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xsveLT33mXd68DjALvlgf8dqdcAb75JbYw2goBIVh7E=;
 b=JEXqw7DwL9ExAQHcF3wTWwXXFz9BXOWX/TWfdw+B4kuBf08wUYFy8Oyr9jmefKkxEP
 x+zAbG9psw371UuTj9wd6LQnLl6ORM14BIv1OHBBeGdunqjqQDgDSOw+j9dsmxXQqHgg
 rqZ86qOGjpdNxNMHtWC7qZG/T7wSwG771+dHEEi3jaZJ0WLUewYuKK0Vujz3k1EC9ipc
 AP9B4634US4z5n313Yt+hHfhAxOTQbqFWUOae8++IrqldPzTCZxsG25gyu86N/TyeD1U
 b5LNgJm+sUE/JbdqRkOxoJSF9ksFQijaGu2Z6c/mYiBUI9N9x5gKhgyZjTInCEmatZaz
 CVeg==
X-Gm-Message-State: AOAM533/4TDYeKXthgCwEs36AGgGu9Z56tjPUKGoM0x0ASKj6Sgd4b3N
 KWdae9k/vlHOrie75diW10s=
X-Google-Smtp-Source: ABdhPJxGv1N+B2QpzyfVQ9AjD9NZ9S+CTYZW6JlgzhPom7waizuMGu/bPltHbE08yBHKPNw8jLiULQ==
X-Received: by 2002:a50:cf0d:: with SMTP id c13mr6988372edk.269.1634109484987; 
 Wed, 13 Oct 2021 00:18:04 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id f7sm2935886edl.33.2021.10.13.00.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 00:18:04 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 09:15:31 +0200
Message-Id: <20211013071531.1145-5-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013071531.1145-1-kernel.hbk@gmail.com>
References: <20211013071531.1145-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Oct 2021 13:57:02 +0000
Subject: [Intel-wired-lan] [PATCH net-next RESEND 4/4] igb: support EXTTS on
 82580/i354/i350
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

Support for the EXTTS PTP pin function on 82580/i354/i350 based adapters.
Because the time registers of these adapters do not have the nice split in
second rollovers as the i210 has, the implementation is slightly more
complex compared to the i210 implementation.

Signed-off-by: Ruud Bos <kernel.hbk@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 20 ++++++++++---
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 36 ++++++++++++++++++++++-
 2 files changed, 51 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 5f59c5de7033..30f16cacd972 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6807,17 +6807,29 @@ static void igb_perout(struct igb_adapter *adapter, int sdp)
 static void igb_extts(struct igb_adapter *adapter, int sdp)
 {
 	struct e1000_hw *hw = &adapter->hw;
-	u32 sec, nsec;
+	int auxstmpl = (sdp == 1) ? E1000_AUXSTMPL1 : E1000_AUXSTMPL0;
+	int auxstmph = (sdp == 1) ? E1000_AUXSTMPH1 : E1000_AUXSTMPH0;
+	struct timespec64 ts;
 	struct ptp_clock_event event;
 
 	if (sdp < 0 || sdp >= IGB_N_EXTTS)
 		return;
 
-	nsec = rd32((sdp == 1) ? E1000_AUXSTMPL1 : E1000_AUXSTMPL0);
-	sec  = rd32((sdp == 1) ? E1000_AUXSTMPH1 : E1000_AUXSTMPH0);
+	if ((hw->mac.type == e1000_82580) ||
+	    (hw->mac.type == e1000_i354) ||
+	    (hw->mac.type == e1000_i350)) {
+		s64 ns = rd32(auxstmpl);
+
+		ns += ((s64)(rd32(auxstmph) & 0xFF)) << 32;
+		ts = ns_to_timespec64(ns);
+	} else {
+		ts.tv_nsec = rd32(auxstmpl);
+		ts.tv_sec  = rd32(auxstmph);
+	}
+
 	event.type = PTP_CLOCK_EXTTS;
 	event.index = sdp;
-	event.timestamp = sec * 1000000000ULL + nsec;
+	event.timestamp = ts.tv_sec * 1000000000ULL + ts.tv_nsec;
 	ptp_clock_event(adapter->ptp_clock, &event);
 }
 
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 64a949bb5d8a..bc24295b6b52 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -524,7 +524,41 @@ static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
-		return -EOPNOTSUPP;
+		/* Reject requests with unsupported flags */
+		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
+					PTP_RISING_EDGE |
+					PTP_FALLING_EDGE |
+					PTP_STRICT_FLAGS))
+			return -EOPNOTSUPP;
+
+		if (on) {
+			pin = ptp_find_pin(igb->ptp_clock, PTP_PF_EXTTS,
+					   rq->extts.index);
+			if (pin < 0)
+				return -EBUSY;
+		}
+		if (rq->extts.index == 1) {
+			tsauxc_mask = TSAUXC_EN_TS1;
+			tsim_mask = TSINTR_AUTT1;
+		} else {
+			tsauxc_mask = TSAUXC_EN_TS0;
+			tsim_mask = TSINTR_AUTT0;
+		}
+		spin_lock_irqsave(&igb->tmreg_lock, flags);
+		tsauxc = rd32(E1000_TSAUXC);
+		tsim = rd32(E1000_TSIM);
+		if (on) {
+			igb_pin_extts(igb, rq->extts.index, pin);
+			tsauxc |= tsauxc_mask;
+			tsim |= tsim_mask;
+		} else {
+			tsauxc &= ~tsauxc_mask;
+			tsim &= ~tsim_mask;
+		}
+		wr32(E1000_TSAUXC, tsauxc);
+		wr32(E1000_TSIM, tsim);
+		spin_unlock_irqrestore(&igb->tmreg_lock, flags);
+		return 0;
 
 	case PTP_CLK_REQ_PEROUT:
 		/* Reject requests with unsupported flags */
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
