Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 441F0A5E71E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0561883312;
	Wed, 12 Mar 2025 22:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4F9-qfIcEJpR; Wed, 12 Mar 2025 22:16:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AFCD83332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741817778;
	bh=+TOAZKX+mn2K+DevbvpEGiqatK01ewHd5r1yyopzenQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=17VfbRs0caVtZuMoBUEox5XkOl8+QSDKhF6f/v7f3nwz3MaJSk66HYDnj7hhEhqWC
	 K4kbGsviUN0h6gfRMkFMFjce+nHV3NkTSk279OH7aXDZoJprC6bnHAfk5vdGNvgXZ0
	 x9gghy6SAjdQqHelk1B+FyozAyT3EoqgZNHGOAAVl1XLV+clH+g9GC94037qerBonI
	 3Pp135qXwCEwarOAUPnPZpPcZsiwkNGu9TcVkDTkYAAlW62b9F4zxZL9/KImXMTTx9
	 aG68qbUWEAUYQa4JnRItY5rBIcrwHO4bTt2oWEkUoeTU+f2vNWZhvaq/LMBvhCAm3i
	 Y6cMzSlGS9hVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AFCD83332;
	Wed, 12 Mar 2025 22:16:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 155DD128
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 646DB60E1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GHri0Q9cCpuG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05E6560E35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05E6560E35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05E6560E35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:08 +0000 (UTC)
X-CSE-ConnectionGUID: eGPCXLLvRZyJGmJUwpJQ4g==
X-CSE-MsgGUID: MC0bwsyUT9aav0Nv2AQXyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="54288373"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="54288373"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
X-CSE-ConnectionGUID: 4HPccVGcS1W1/YOMvq4TvA==
X-CSE-MsgGUID: zuJTnNl9QyOwsEw3Pr9dyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125950239"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 12 Mar 2025 15:15:50 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-jk-net-fixes-supported-extts-flags-v2-1-ea930ba82459@intel.com>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741817769; x=1773353769;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=NdeYUySIiYtPzYwBwD5+tXrplkOPuaQwtpJ5FgKG8a4=;
 b=GcPfHATlHTgupq0fy/5WBJYQS1iFk7SdDhkUwQyR2ydnNkYVm3ob0A/3
 bUUzK6X++XQvjGJqdoY0gy0DWH2LQwjF1pQoFm+ThNi6yELelXdT9QOCI
 xqCfRppJxBm/hwn/1m0ojUZPJQj/oXcTjniLeJV6hfo4AdI6ICUrtklPq
 Dp40IJFBYL4KhSECGuQxwHaJP0zkToXp0UtUSyuHeJkyqHMWGDnw19QDp
 DjdDkgI4G8bGqUOGZRWZzATrVpW6F+ad0duyhV4kA5R58jCmcXKvYnXF7
 NZljCa5/+rSqjW/QTgNPwLegdZxhQhtukE91BKV3J3jeLDFrYyOOn/lgC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GcPfHATl
Subject: [Intel-wired-lan] [PATCH net v2 1/5] igb: reject invalid external
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
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v2:
- Fix the 82580 check to allow disabling the pin without flags set.
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index f9457055612004c10f74379122063e8136fe7d76..f323e1c1989f1bfbbf1f04043c2c0f14ae8c716f 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -509,6 +509,12 @@ static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
 					PTP_STRICT_FLAGS))
 			return -EOPNOTSUPP;
 
+		/* Both the rising and falling edge are timestamped */
+		if (rq->extts.flags & PTP_STRICT_FLAGS &&
+		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
+		    (rq->extts.flags & PTP_EXTTS_EDGES) != PTP_EXTTS_EDGES)
+			return -EOPNOTSUPP;
+
 		if (on) {
 			pin = ptp_find_pin(igb->ptp_clock, PTP_PF_EXTTS,
 					   rq->extts.index);

-- 
2.48.1.397.gec9d649cc640

