Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621A43E3FB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 16:39:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08D2E60B61;
	Thu, 28 Oct 2021 14:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qBdyRaCwlM8; Thu, 28 Oct 2021 14:39:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F09606063B;
	Thu, 28 Oct 2021 14:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F97C1BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D35E824DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CLRMP0HIvI7c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3029824DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id w1so6901437edd.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 07:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CQLc+Bb9g6jSO8h73swFJnMyQM+VpvaPbenLUuNW4bs=;
 b=bIL2iz/w0TGFdEcjDN4SQF/msvOjLF1A6tGqzQZgFUVPO2FEuS0GcZB3tSHfR30oa1
 QN1V22pyd0nRS8bf+zQh8O7bwBYy/mas9mg9sFmDD1Hmw/v9tTIA+t+2uhJ9/+4MT9gz
 sTyH+kQ3+liMzYnkHRp65ftZMJQiYybRsTJyx9a9tcL9SJux5Q7z+RZ9FP5Y6WSyxzqj
 cLQmJ7RRHwFDQqqAF7ZHKsrd1SIvN1ktM4Wkrog6MYK8G44keR/i/5+I64tp09hJIuuu
 PYaxC+sNRnFz1F+XMKGZ1lkPp3Y1xnBTyL7w7TeeUOWTEelBJLoNYDZXiXjFilFJYICX
 eV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CQLc+Bb9g6jSO8h73swFJnMyQM+VpvaPbenLUuNW4bs=;
 b=sqAUodjHEQlzkZ8ykLoTQYlduxa0YmAhIamwvewNwgf+VdQzQ9rhWUjfENQcnhUFRt
 ocD+wy2wo3VTFyjowOD1xCkqhNMtOgQMymLqwGRkTvHMJgPueC3uzEyUSguJCt3xSSJg
 2e6DFpzPFOfSqHMxHU0rY7KPesMUo7RGJZ76eeYEdMU7IHYHVFG3585hU44TIi7214bd
 USg/U2CkoQ+TLmI7eNS1cS91o/6GQd/XxX+QWNu5Q0lwq7374VsYJnpHiFrT25igbeyo
 cUsTVWsHcmaYYDFZgtzu01pIjBz9adm7MGStKIIwu+js3wDO5mO01QmoTrDvpfh7cHRB
 8TOg==
X-Gm-Message-State: AOAM530InA9mcZPNT0hkv54PdOo2H8KEOo1XQKd18kPJuYXT66mscI6T
 RfnPLN78I44bWbM59SydctM=
X-Google-Smtp-Source: ABdhPJwhFBIIf0TSZyBl+J2Ly84sBbg1jXpBYXTyFG31lhjT7BMQVTVrsdFrpVD2sM9wWH2V0+eAVg==
X-Received: by 2002:aa7:cd99:: with SMTP id x25mr6575697edv.266.1635431877754; 
 Thu, 28 Oct 2021 07:37:57 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id di12sm1514501ejc.3.2021.10.28.07.37.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 07:37:57 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Oct 2021 16:34:59 +0200
Message-Id: <20211028143459.903439-5-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211028143459.903439-1-kernel.hbk@gmail.com>
References: <20211028143459.903439-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 28 Oct 2021 14:38:52 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 4/4] igb: support EXTTS on
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

Support for the PTP pin function on 82580/i354/i350 based adapters.
Because the time registers of these adapters do not have the nice split in
second rollovers as the i210 has, the implementation is slightly more
complex compared to the i210 implementation.

Signed-off-by: Ruud Bos <kernel.hbk@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 20 ++++++++++---
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 36 ++++++++++++++++++++++-
 2 files changed, 51 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 715302377b1a..13b0c1bb26f0 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6813,18 +6813,30 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
 {
 	struct e1000_hw *hw = &adapter->hw;
-	u32 sec, nsec;
+	int auxstmpl = (tsintr_tt == 1) ? E1000_AUXSTMPL1 : E1000_AUXSTMPL0;
+	int auxstmph = (tsintr_tt == 1) ? E1000_AUXSTMPH1 : E1000_AUXSTMPH0;
+	struct timespec64 ts;
 	struct ptp_clock_event event;
 	int pin = ptp_find_pin(adapter->ptp_clock, PTP_PF_EXTTS, tsintr_tt);
 
 	if (pin < 0 || pin >= IGB_N_EXTTS)
 		return;
 
-	nsec = rd32((tsintr_tt == 1) ? E1000_AUXSTMPL1 : E1000_AUXSTMPL0);
-	sec  = rd32((tsintr_tt == 1) ? E1000_AUXSTMPH1 : E1000_AUXSTMPH0);
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
 	event.index = tsintr_tt;
-	event.timestamp = sec * 1000000000ULL + nsec;
+	event.timestamp = ts.tv_sec * 1000000000ULL + ts.tv_nsec;
 	ptp_clock_event(adapter->ptp_clock, &event);
 }
 
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 57af8db73be6..6d59847f5097 100644
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
