Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E14CA3CC9B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 23:45:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB60D82BC8;
	Wed, 19 Feb 2025 22:45:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4e6uRYnmwJHl; Wed, 19 Feb 2025 22:45:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED0B982BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740005135;
	bh=7xPKZBHCkiVSjV/N1DZFal2nmUy76fNyWUebZAcsC3I=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k+l4BaW1cAj3oODn/A6G7Uuv60vdGQFbZTKag0CtThLurjyiooVc3CS1swpqyUf7B
	 P/IBc0i49Od9fEVCZx17ZNEnyQhMXFyNJy7K6bvTITt4MrGeUzj7RXlmEcJDwTMssJ
	 3Br62K1aAiVVlFrIsgB9nTnSW+k+4hywaTezp9uwvoYG2uV4pCY2NuXJ1SCSOJCSLn
	 vY3XgdvezbbU7EPexNCNLHpk+bv/zBrHVxBeW6x0Or/tHHzMFQ7AAbeZgMfFdOZwYJ
	 y1nhBgGxLmUHJfSQCHpu+P+oFKcowamoBqth+L4uqr2CqJnk2Xx3DGos6GWhFyad7C
	 HS0bz3z+BhBHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED0B982BE5;
	Wed, 19 Feb 2025 22:45:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BDDFEE0C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 22:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD97860900
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 22:45:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5rOOtMHN6onv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 22:45:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3023608E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3023608E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3023608E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 22:45:31 +0000 (UTC)
X-CSE-ConnectionGUID: tn/urqHfS0qVI15WzYTsdA==
X-CSE-MsgGUID: 4/xGxb/OT5KBsX8Zlr7JkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="63241793"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="63241793"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 14:45:31 -0800
X-CSE-ConnectionGUID: hCIkB3pyRFGWcV3Xl0hu4g==
X-CSE-MsgGUID: IPLp/uVDTbysc7Pqctkqsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="119795238"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 14:15:40 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 19 Feb 2025 14:13:27 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250219-jk-gnrd-ptp-pin-patches-v1-1-9cb3efaf9eea@intel.com>
X-B4-Tracking: v=1; b=H4sIAIZXtmcC/x2NywoCMQxFf2XI2sA0TF34K+KitHEalUxoiw+G/
 rvV5eFy7tmhchGucJp2KPyUKpsOcIcJYg66MkoaDDSTn8kR3u64aklozdBE0UKLmSsu5I8uhcV
 zdDBsK3yV9//5DPJ6oHKDyxiy1LaVz6/Ye/8CBNCywYEAAAA=
X-Change-ID: 20250212-jk-gnrd-ptp-pin-patches-42561da45ec1
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740005132; x=1771541132;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=zmbVvXQXALcaFIiXJdEdlIiZUkm9FRxIcycBFuJuzy0=;
 b=IOaeVTeCo2ws7SYhOmrCGekMIKswTkSugk/ObS/iZlw3l1M0rkKczzsR
 p+SYH6pwCdgVmHptbocGCGfzuFpAll5u0StAlnnAhABc9MApO8N72IQPz
 AraORVyS4kYpD0bipLNJ7iv3tR3TGZmw+9n6xETS44Q7C3ntRaz//GgBZ
 YKcGRxnas2/tzjthyGW+M0w5axhYfL9R2uNitOPVxYaGUKlfQnwm1UXBa
 zteuuJ1kBMCHybLfhbgCFzWOcesTrol4Qu8IL97c4cB6c0L6QDg70CAL5
 v1ZuSdSI3Cc6OSAS8NvCHKIfC3rgiGfzC7pxgL75Lj0DjjwlnvnuU+8Re
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IOaeVTeC
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: ensure periodic output start
 time is in the future
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

On E800 series hardware, if the start time for a periodic output signal is
programmed into GLTSYN_TGT_H and GLTSYN_TGT_L registers, the hardware logic
locks up and the periodic output signal never starts. Any future attempt to
reprogram the clock function is futile as the hardware will not reset until
a power on.

The ice_ptp_cfg_perout function has logic to prevent this, as it checks if
the requested start time is in the past. If so, a new start time is
calculated by rounding up.

Since commit d755a7e129a5 ("ice: Cache perout/extts requests and check
flags"), the rounding is done to the nearest multiple of the clock period,
rather than to a full second. This is more accurate, since it ensures the
signal matches the user request precisely.

Unfortunately, there is a race condition with this rounding logic. If the
current time is close to the multiple of the period, we could calculate a
target time that is extremely soon. It takes time for the software to
program the registers, during which time this requested start time could
become a start time in the past. If that happens, the periodic output
signal will lock up.

For large enough periods, or for the logic prior to the mentioned commit,
this is unlikely. However, with the new logic rounding to the period and
with a small enough period, this becomes inevitable.

For example, attempting to enable a 10MHz signal requires a period of 100
nanoseconds. This means in the *best* case, we have 99 nanoseconds to
program the clock output. This is essentially impossible, and thus such a
small period practically guarantees that the clock output function will
lock up.

To fix this, add some slop to the clock time used to check if the start
time is in the past. Because it is not critical that output signals start
immediately, but it *is* critical that we do not brick the function, 0.5
seconds is selected. This does mean that any requested output will be
delayed by at least 0.5 seconds.

This slop is applied before rounding, so that we always round up to the
nearest multiple of the period that is at least 0.5 seconds in the future,
ensuring a minimum of 0.5 seconds to program the clock output registers.

Finally, to ensure that the hardware registers programming the clock output
complete in a timely manner, add a write flush to the end of
ice_ptp_write_perout. This ensures we don't risk any issue with PCIe
transaction batching.

Strictly speaking, this fixes a race condition all the way back at the
initial implementation of periodic output programming, as it is
theoretically possible to trigger this bug even on the old logic when
always rounding to a full second. However, the window is narrow, and the
code has been refactored heavily since then, making a direct backport not
apply cleanly.

Fixes: d755a7e129a5 ("ice: Cache perout/extts requests and check flags")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e26320ce52ca17b30a9538b11b754c7cf57c9af9..a99e0fbd0b8b55ad72a2bc7d13851562a6f2f5bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1783,6 +1783,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 				  8 + chan + (tmr_idx * 4));
 
 	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
+	ice_flush(hw);
 
 	return 0;
 }
@@ -1843,9 +1844,10 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 		div64_u64_rem(start, period, &phase);
 
 	/* If we have only phase or start time is in the past, start the timer
-	 * at the next multiple of period, maintaining phase.
+	 * at the next multiple of period, maintaining phase at least 0.5 second
+	 * from now, so we have time to write it to HW.
 	 */
-	clk = ice_ptp_read_src_clk_reg(pf, NULL);
+	clk = ice_ptp_read_src_clk_reg(pf, NULL) + NSEC_PER_MSEC * 500;
 	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - prop_delay_ns)
 		start = div64_u64(clk + period - 1, period) * period + phase;
 

---
base-commit: a92c3228766429fe175ecc815f895043ea505587
change-id: 20250212-jk-gnrd-ptp-pin-patches-42561da45ec1

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

