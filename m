Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDD8A5A6D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 23:17:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29ED340C9C;
	Mon, 10 Mar 2025 22:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Yaxal6zL6EU; Mon, 10 Mar 2025 22:16:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6479140907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741645015;
	bh=N8lRFA/6aEFclBU0NtTLlAPJrPKccWqP64cN7Eg88Us=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3wRWg4V34nHTrQm7ouNMfL2TfwXhbngESITwuAsli8Hedkm86uW8HEyZ0HFtcArot
	 xqSrp73ojcFCOyS/M+7O0GSOe7s17YzWVPfjQHA4xAiKqyVlQGzA1tpRPdakuTOngN
	 MMc1KfELXVyFT5jaDJMfFFp4lmSwfTpr3Bj9FtM0dBfKTbVvkY4mRc0SYozMSWMbyc
	 AHyG1aysieufXwdLmGjm8IA37XP+fJUWlV/JPjucKYf+amxLItzbUCWX048TSob0P3
	 Ud0z+iTDfmzPt0sCO7XqRCv+6yAfDoz6jtin9Ntdwu3fPyoLhOpis0jhAHbjLYl+I9
	 woLh92mAi3GWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6479140907;
	Mon, 10 Mar 2025 22:16:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E26B94A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D747E81E94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8GQC5W4NM6F for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 173BC81EA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 173BC81EA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 173BC81EA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:51 +0000 (UTC)
X-CSE-ConnectionGUID: aCgnWLaoQNOMEgfrOA3yFQ==
X-CSE-MsgGUID: 4o2Ug5XLQMepcuisDwJ5DA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46443288"
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="46443288"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:50 -0700
X-CSE-ConnectionGUID: 9M7MY91sQ0GFODloV84q9g==
X-CSE-MsgGUID: WnZ+pzQ2RKC4p8tI+T5R2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="143315035"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 10 Mar 2025 15:16:36 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-jk-net-fixes-supported-extts-flags-v1-1-854ffb5f3a96@intel.com>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, Raju Lakkaraju <Raju.Lakkaraju@microchip.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741645012; x=1773181012;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=myoSGgj74XPWSsdzkbKReU54Ix7Ldof7Y/C1MVgScH0=;
 b=n2lLNBl4SO8voCKJhysCR9eLrxAB+mrVbtJvLIsHfGy+mIKtxY3sXmNP
 CcOpDPtiPqI/i60JzEnVXLgm5OBwXoIfsddB7yGhRt3TCUet3c/9wOZvI
 OZUtOVekqhiDp84FeUhjUc8fPcgm2XvjNC4Hvr75XEdwZG4RraancmRZn
 MCYRgfbSjvB+auYBYyi0fwRRQK5ymJfRQ4lRtWlvB2GQOD99sY8h7eo6K
 tUN0FuFY+mP/LVGCkl+YJx1WZpeLGSwbeujSID76/I0yZ6sjd9fyEyU0R
 9BZqlslISUbIwT8Tl/NAQ+QYLrp1MBh4/rNX+UYlUtSl8lx7QAZwwVq3z
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n2lLNBl4
Subject: [Intel-wired-lan] [PATCH net 1/5] igb: reject invalid external
 timestamp requests for 82580-based HW
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The igb_ptp_feature_enable_82580 function correctly checks that unknown
flags are not passed to the function. However, it does not actually check
PTP_RISING_EDGE or PTP_FALLING_EDGE when configuring the external timestamp
function.

The data sheet for the 82580 product says:

  Upon a change in the input level of one of the SDP pins that was
  configured to detect Time stamp events using the TSSDP register, a time
  stamp of the system time is captured into one of the two auxiliary time
  stamp registers (AUXSTMPL/H0 or AUXSTMPL/H1).

  For example to define timestamping of events in the AUXSTMPL0 and
  AUXSTMPH0 registers, Software should:

  1. Set the TSSDP.AUX0_SDP_SEL field to select the SDP pin that detects
     the level change and set the TSSDP.AUX0_TS_SDP_EN bit to 1.

  2. Set the TSAUXC.EN_TS0 bit to 1 to enable timestamping

The same paragraph is in the i350 and i354 data sheets.

The wording implies that the time stamps are captured at any level change.
There does not appear to be any way to only timestamp one edge of the
signal.

Reject requests which do not set both PTP_RISING_EDGE and PTP_FALLING_EDGE
when operating under PTP_STRICT_FLAGS mode via PTP_EXTTS_REQUEST2.

Fixes: 38970eac41db ("igb: support EXTTS on 82580/i354/i350")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index f9457055612004c10f74379122063e8136fe7d76..b89ef4538a18d7ca11325ddc15944a878f4d807e 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -509,6 +509,11 @@ static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
 					PTP_STRICT_FLAGS))
 			return -EOPNOTSUPP;
 
+		/* Both the rising and falling edge are timstamped */
+		if (rq->extts.flags & PTP_STRICT_FLAGS &&
+		    (rq->extts.flags & PTP_EXTTS_EDGES) != PTP_EXTTS_EDGES)
+			return -EOPNOTSUPP;
+
 		if (on) {
 			pin = ptp_find_pin(igb->ptp_clock, PTP_PF_EXTTS,
 					   rq->extts.index);

-- 
2.48.1.397.gec9d649cc640

