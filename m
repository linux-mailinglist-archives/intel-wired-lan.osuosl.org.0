Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1C643E3FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 16:39:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20547404BC;
	Thu, 28 Oct 2021 14:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id syE1Hi-PuHSA; Thu, 28 Oct 2021 14:39:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FB6240249;
	Thu, 28 Oct 2021 14:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1AE1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D9FE6062C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqrjhA_4RGIT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58A5D6060B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id f8so4215803edy.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 07:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dDjGGORSEIsb4zYLztnO4jBFVWgZ2Mb+2hRouijLf5c=;
 b=ZtwyXZyR53xC3Zw72ANqj2wUXkslH10/PD0i3mX0sbHywvTuuqplt+msO2uTzPfKY7
 bWnogZlMxl+iB8ZHzhxPmZ09TIKIXdQ4pl0DWNSOVUekvLbqExEa0DQhd8TNK+QCl3Wd
 jja5jc+Mdhzmm+1+61t0h+C950L/jSjlImGfaPYLOngoZBtO1cNyXIajn3PWV3ijs/XP
 QghggkOs2FKX/CXNNyHjMojb7z0DAVqzMwpfZd7Y+wmyf/DNuiRw+RYBcCYSumZ4bN0r
 SShC6si3TEYkAT0kp/sYVrdacCBnrGN7nhxbRxznJAhn5k/VRGRWEhKCsTbCQcejltZ5
 rBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dDjGGORSEIsb4zYLztnO4jBFVWgZ2Mb+2hRouijLf5c=;
 b=1iwV56bp227l0sdLUmPhQwasX64otikM5N4AXgC9be5EbiOgrU+xF3892+wpWdG9GX
 dK8DBfGd5PsNmcjTaSgBjI2/YFm0N5uTAJStvh2HjTWFxSBS++h0OgYnybLCsByv1WDa
 7XTwze49TT2GW93YQfylQIO4gBQoI2BkZylwmyjyN0g2YB8L2BktnGO7lEw6YmCsJj/t
 6DQ44gomnP1qGUVDvCQLeAnRxYU+ADRL9bW06JSmYKNlxY5KYHZkAmuEgTTQP6TYEeL6
 HUUJMIYvQlWqL8EuvvVJaWxgaA5S/q+6vbjHZmNhstVat3qbXPzj3CNzduG6w3Q1aDpB
 cfSQ==
X-Gm-Message-State: AOAM5327VrQWVkrMyGYkvNyFJ5eKyKdxZG03inC9FfIGr3XhmBf29IhW
 6psniJ5nGhcZiACFwgtc3gs=
X-Google-Smtp-Source: ABdhPJzXAhOTwkCE5pjDu58TABWgIQ19pNWkdEYyQiF/fHT+0g8PnOyGs50wpanhwNLuR/AVXMEPNQ==
X-Received: by 2002:a17:906:4788:: with SMTP id
 cw8mr5794344ejc.97.1635431877074; 
 Thu, 28 Oct 2021 07:37:57 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id di12sm1514501ejc.3.2021.10.28.07.37.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 07:37:56 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Oct 2021 16:34:58 +0200
Message-Id: <20211028143459.903439-4-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211028143459.903439-1-kernel.hbk@gmail.com>
References: <20211028143459.903439-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 28 Oct 2021 14:38:52 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 3/4] igb: support PEROUT on
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

Support for the PEROUT PTP pin function on 82580/i354/i350 based adapters.
Because the time registers of these adapters do not have the nice split in
second rollovers as the i210 has, the implementation is slightly more
complex compared to the i210 implementation.

Signed-off-by: Ruud Bos <kernel.hbk@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c |  59 +++++++++-
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 127 +++++++++++++++++++++-
 2 files changed, 182 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c603f17e50be..715302377b1a 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6743,8 +6743,62 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 		return;
 
 	spin_lock(&adapter->tmreg_lock);
-	ts = timespec64_add(adapter->perout[pin].start,
-			    adapter->perout[pin].period);
+
+	if ((hw->mac.type == e1000_82580) ||
+	    (hw->mac.type == e1000_i354) ||
+	    (hw->mac.type == e1000_i350)) {
+		u32 systiml, systimh, level_mask, level, rem;
+		u64 systim, now;
+		s64 ns = timespec64_to_ns(&adapter->perout[pin].period);
+
+		/* read systim registers in sequence */
+		rd32(E1000_SYSTIMR);
+		systiml = rd32(E1000_SYSTIML);
+		systimh = rd32(E1000_SYSTIMH);
+		systim = (((u64)(systimh & 0xFF)) << 32) | ((u64)systiml);
+		now = timecounter_cyc2time(&adapter->tc, systim);
+
+		if (pin < 2) {
+			level_mask = (tsintr_tt == 1) ? 0x80000 : 0x40000;
+			level = (rd32(E1000_CTRL) & level_mask) ? 1 : 0;
+		} else {
+			level_mask = (tsintr_tt == 1) ? 0x80 : 0x40;
+			level = (rd32(E1000_CTRL_EXT) & level_mask) ? 1 : 0;
+		}
+
+		div_u64_rem(now, ns, &rem);
+		systim = systim + (ns - rem);
+
+		/* synchronize pin level with rising/falling edges */
+		div_u64_rem(now, ns << 1, &rem);
+		if (rem < ns) {
+			/* first half of period */
+			if (level == 0) {
+				/* output is already low, skip this period */
+				systim += ns;
+				pr_notice("igb: periodic output on %s missed falling edge\n",
+					  adapter->sdp_config[pin].name);
+			}
+		} else {
+			/* second half of period */
+			if (level == 1) {
+				/* output is already high, skip this period */
+				systim += ns;
+				pr_notice("igb: periodic output on %s missed rising edge\n",
+					  adapter->sdp_config[pin].name);
+			}
+		}
+
+		/* for this chip family tv_sec is the upper part of the binary value,
+		 * so not seconds
+		 */
+		ts.tv_nsec = (u32)systim;
+		ts.tv_sec  = ((u32)(systim >> 32)) & 0xFF;
+	} else {
+		ts = timespec64_add(adapter->perout[pin].start,
+				    adapter->perout[pin].period);
+	}
+
 	/* u32 conversion of tv_sec is safe until y2106 */
 	wr32((tsintr_tt == 1) ? E1000_TRGTTIML1 : E1000_TRGTTIML0, ts.tv_nsec);
 	wr32((tsintr_tt == 1) ? E1000_TRGTTIMH1 : E1000_TRGTTIMH0, (u32)ts.tv_sec);
@@ -6752,6 +6806,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
 	tsauxc |= TSAUXC_EN_TT0;
 	wr32(E1000_TSAUXC, tsauxc);
 	adapter->perout[pin].start = ts;
+
 	spin_unlock(&adapter->tmreg_lock);
 }
 
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index c78d0c2a5341..57af8db73be6 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -508,6 +508,124 @@ static void igb_pin_perout(struct igb_adapter *igb, int chan, int pin, int freq)
 	wr32(E1000_CTRL_EXT, ctrl_ext);
 }
 
+static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
+					struct ptp_clock_request *rq, int on)
+{
+	struct igb_adapter *igb =
+		container_of(ptp, struct igb_adapter, ptp_caps);
+	struct e1000_hw *hw = &igb->hw;
+	u32 tsauxc, tsim, tsauxc_mask, tsim_mask, trgttiml, trgttimh, systiml,
+		systimh, level_mask, level, rem;
+	unsigned long flags;
+	struct timespec64 ts, start;
+	int pin = -1;
+	s64 ns;
+	u64 systim, now;
+
+	switch (rq->type) {
+	case PTP_CLK_REQ_EXTTS:
+		return -EOPNOTSUPP;
+
+	case PTP_CLK_REQ_PEROUT:
+		/* Reject requests with unsupported flags */
+		if (rq->perout.flags)
+			return -EOPNOTSUPP;
+
+		if (on) {
+			pin = ptp_find_pin(igb->ptp_clock, PTP_PF_PEROUT,
+					   rq->perout.index);
+			if (pin < 0)
+				return -EBUSY;
+		}
+		ts.tv_sec = rq->perout.period.sec;
+		ts.tv_nsec = rq->perout.period.nsec;
+		ns = timespec64_to_ns(&ts);
+		ns = ns >> 1;
+		if (on && (ns < 8LL))
+			return -EINVAL;
+		ts = ns_to_timespec64(ns);
+		if (rq->perout.index == 1) {
+			tsauxc_mask = TSAUXC_EN_TT1;
+			tsim_mask = TSINTR_TT1;
+			trgttiml = E1000_TRGTTIML1;
+			trgttimh = E1000_TRGTTIMH1;
+		} else {
+			tsauxc_mask = TSAUXC_EN_TT0;
+			tsim_mask = TSINTR_TT0;
+			trgttiml = E1000_TRGTTIML0;
+			trgttimh = E1000_TRGTTIMH0;
+		}
+		spin_lock_irqsave(&igb->tmreg_lock, flags);
+		tsauxc = rd32(E1000_TSAUXC);
+		tsim = rd32(E1000_TSIM);
+		if (rq->perout.index == 1) {
+			tsauxc &= ~(TSAUXC_EN_TT1 | TSAUXC_EN_CLK1 | TSAUXC_ST1);
+			tsim &= ~TSINTR_TT1;
+		} else {
+			tsauxc &= ~(TSAUXC_EN_TT0 | TSAUXC_EN_CLK0 | TSAUXC_ST0);
+			tsim &= ~TSINTR_TT0;
+		}
+		if (on) {
+			int i = rq->perout.index;
+
+			/* read systim registers in sequence */
+			rd32(E1000_SYSTIMR);
+			systiml = rd32(E1000_SYSTIML);
+			systimh = rd32(E1000_SYSTIMH);
+			systim = (((u64)(systimh & 0xFF)) << 32) | ((u64)systiml);
+			now = timecounter_cyc2time(&igb->tc, systim);
+
+			if (pin < 2) {
+				level_mask = (i == 1) ? 0x80000 : 0x40000;
+				level = (rd32(E1000_CTRL) & level_mask) ? 1 : 0;
+			} else {
+				level_mask = (i == 1) ? 0x80 : 0x40;
+				level = (rd32(E1000_CTRL_EXT) & level_mask) ? 1 : 0;
+			}
+
+			div_u64_rem(now, ns, &rem);
+			systim = systim + (ns - rem);
+
+			/* synchronize pin level with rising/falling edges */
+			div_u64_rem(now, ns << 1, &rem);
+			if (rem < ns) {
+				/* first half of period */
+				if (level == 0) {
+					/* output is already low, skip this period */
+					systim += ns;
+				}
+			} else {
+				/* second half of period */
+				if (level == 1) {
+					/* output is already high, skip this period */
+					systim += ns;
+				}
+			}
+
+			start = ns_to_timespec64(systim + (ns - rem));
+			igb_pin_perout(igb, i, pin, 0);
+			igb->perout[i].start.tv_sec = start.tv_sec;
+			igb->perout[i].start.tv_nsec = start.tv_nsec;
+			igb->perout[i].period.tv_sec = ts.tv_sec;
+			igb->perout[i].period.tv_nsec = ts.tv_nsec;
+
+			wr32(trgttiml, (u32)systim);
+			wr32(trgttimh, ((u32)(systim >> 32)) & 0xFF);
+			tsauxc |= tsauxc_mask;
+			tsim |= tsim_mask;
+		}
+		wr32(E1000_TSAUXC, tsauxc);
+		wr32(E1000_TSIM, tsim);
+		spin_unlock_irqrestore(&igb->tmreg_lock, flags);
+		return 0;
+
+	case PTP_CLK_REQ_PPS:
+		return -EOPNOTSUPP;
+	}
+
+	return -EOPNOTSUPP;
+}
+
 static int igb_ptp_feature_enable_i210(struct ptp_clock_info *ptp,
 				       struct ptp_clock_request *rq, int on)
 {
@@ -1215,16 +1333,21 @@ void igb_ptp_init(struct igb_adapter *adapter)
 	case e1000_82580:
 	case e1000_i354:
 	case e1000_i350:
+		igb_ptp_sdp_init(adapter);
 		snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
 		adapter->ptp_caps.owner = THIS_MODULE;
 		adapter->ptp_caps.max_adj = 62499999;
-		adapter->ptp_caps.n_ext_ts = 0;
+		adapter->ptp_caps.n_ext_ts = IGB_N_EXTTS;
+		adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
+		adapter->ptp_caps.n_pins = IGB_N_SDP;
 		adapter->ptp_caps.pps = 0;
+		adapter->ptp_caps.pin_config = adapter->sdp_config;
 		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
 		adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
 		adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_82580;
 		adapter->ptp_caps.settime64 = igb_ptp_settime_82576;
-		adapter->ptp_caps.enable = igb_ptp_feature_enable;
+		adapter->ptp_caps.enable = igb_ptp_feature_enable_82580;
+		adapter->ptp_caps.verify = igb_ptp_verify_pin;
 		adapter->cc.read = igb_ptp_read_82580;
 		adapter->cc.mask = CYCLECOUNTER_MASK(IGB_NBITS_82580);
 		adapter->cc.mult = 1;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
