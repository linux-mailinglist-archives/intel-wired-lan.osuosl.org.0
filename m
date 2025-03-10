Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F410A5A6D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 23:17:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C52A40907;
	Mon, 10 Mar 2025 22:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tfrf3YKj_2oz; Mon, 10 Mar 2025 22:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC6AF40905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741645019;
	bh=Jz9NgqinQg8V2wtiA1tndi1bi/Haztdi8U279BSILY0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0m1d6q6QfR+FE6k5lWrTzpCpsxR0n3u+0o+ygF63oh/NtjCvYeO2DLXdnMYljicWq
	 coNVncraMNzhEXpClwKPlFJarL6/B7o8t8g9x6NQlucwLmYBRgTerBrtl0qa2onF4M
	 WfmDfKqUKyDRyhyFJxXyQPGxQKP0atmmNkjyrB9RXPxPzgHMec1nsxAR4EXb1pGobK
	 JMJzro3SQvXBBfyuWR1DJ4weyHNq5wGG6nXkkhYsXm5Tybc+VVy78ega52zj/ON2ns
	 UfVQabyiZmci/O8rhwAV64GNIFpc3g3GpiPxj1uFsx1A25IZDh/ZcAVoI+JtDI6oum
	 Yuj7FZboj0d1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC6AF40905;
	Mon, 10 Mar 2025 22:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FD3694A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8ABD581E94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tunpQHhBOT_3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D1DE581EBF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1DE581EBF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1DE581EBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
X-CSE-ConnectionGUID: Lsh/Nv0KQRKqUgCAbkeI5w==
X-CSE-MsgGUID: eSa7d9U5TsK+SRPctTCKBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46443348"
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="46443348"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:52 -0700
X-CSE-ConnectionGUID: kY5vil/mQL6S7hDXNmQUtg==
X-CSE-MsgGUID: NB6gvf4ST3aeLEoatqrb3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="143315055"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 10 Mar 2025 15:16:40 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-jk-net-fixes-supported-extts-flags-v1-5-854ffb5f3a96@intel.com>
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
 t=1741645013; x=1773181013;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Z8+q2GV/aH550yKDFdVnUikndMt1LzCKO/Ii8P5vA5A=;
 b=ZCOiuVA8hjcljo5rxRI02YG7hlTYV9PRmYZ3R4EVD+A6WVtW24/PE6By
 NOUQRfmicXdAqxlNLElH7BP0T0r/n6zq8YogN/HFjl6OMkc/PjfNbYRDi
 C7VTSodmDDawSfdmdLjmW6mdP7y8qHndWXl+vpuElKOZoQKvR3L+dGQRu
 Gkp6Hg10/eCRYFmdtctOWD7C/2FhTfRxuxwcnyF9LF4W44XzqHq50gf2I
 JiktmZ36y67wcS2HBtrbboVbRN425MzuMSut3gL2y7McKbkYDE84HMQvD
 30BUfkgvQL2QO52foO7SEGcRuqpQtpFrxQmk8HA+xr3yRJEVQCcHhuGbk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZCOiuVA8
Subject: [Intel-wired-lan] [PATCH net 5/5] ptp: ocp: reject unsupported
 periodic output flags
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

The ptp_ocp_signal_from_perout() function supports PTP_PEROUT_DUTY_CYCLE
and PTP_PEROUT_PHASE. It does not support PTP_PEROUT_ONE_SHOT, but does not
reject a request with such an unsupported flag.

Add the appropriate check to ensure that unsupported requests are rejected
both for PTP_PEROUT_ONE_SHOT as well as any future flags.

Fixes: 1aa66a3a135a ("ptp: ocp: Program the signal generators via PTP_CLK_REQ_PEROUT")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/ptp/ptp_ocp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index b651087f426f50a73229ca57634fc5d6912e0a87..4a87af0980d695a9ab1b23e2544f620759ccb892 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -2090,6 +2090,10 @@ ptp_ocp_signal_from_perout(struct ptp_ocp *bp, int gen,
 {
 	struct ptp_ocp_signal s = { };
 
+	if (req->flags & ~(PTP_PEROUT_DUTY_CYCLE |
+			   PTP_PEROUT_PHASE))
+		return -EOPNOTSUPP;
+
 	s.polarity = bp->signal[gen].polarity;
 	s.period = ktime_set(req->period.sec, req->period.nsec);
 	if (!s.period)

-- 
2.48.1.397.gec9d649cc640

