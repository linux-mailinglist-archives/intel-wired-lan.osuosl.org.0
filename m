Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52669AA6684
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6817661342;
	Thu,  1 May 2025 22:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QdC_4W2Ekv-N; Thu,  1 May 2025 22:54:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0C3D612E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140094;
	bh=Op0As7XByX8TFXdLFRMjud6uf3VFwA05REDHRQmC1Vg=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b4SDlN1Ge1HngAoYMrhqipApgaAhPqzD6QbxXthQ1PZy5zRRceODUY59AmVCN7xNQ
	 Mva6tr75Hj5bvFVPIbpfu7O1mNVCBzbvshlqr+wM8HPItTkXUH4PVtL1iYPCw6sSu1
	 0pJ0oufec+4ticiSSt7Hk8id/eB9AVtnkDqLXWlbJ6F8JJp/ihyK5tpYue40rls8XC
	 RSDTYHkQ59+2sEkVEoaXOgJdd79sNSztHiJqRYoJGkMUh4X0UWco7uFKyy9Uc0LjeQ
	 eyigSdhXjfwRXeJW8j3G/+QTdgH93HQITSxicvEAoZqGUvxAsW5t9c7Xc0TPepTOBn
	 avCb6x+RWsvXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0C3D612E7;
	Thu,  1 May 2025 22:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C5B3E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53F7341A4B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id no-7DrS58-8l for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B9A88417B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9A88417B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9A88417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-CSE-ConnectionGUID: AOQA53MwRK2jyKKkDXpxrw==
X-CSE-MsgGUID: EwveD/FCQxSfoigVOEKTNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811757"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811757"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:39 -0700
X-CSE-ConnectionGUID: cBYpQQXmTSGot7qpTG7+ag==
X-CSE-MsgGUID: Bdr2BZkqS1yV+LRB5tFusA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514325"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:26 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-15-24c83d0ce7a8@intel.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140079; x=1777676079;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=tSu33t7AVifIwGn39pcyFKvKLahj6dGlHDegt9DYEHg=;
 b=K4g0zbotTNbYTUoC/zQ/uM0e3uoY+RiRU5gvizbYn/iscYl39DgwhJWh
 C8AYS21yLx+K3do/DM2ZhwI45wiK3dy0XgPFJNKtmsP6vFg7xj7ouk+TH
 MvkTtuydfk4DhGrpfk6rM7A37O3kidDh4AoK4QtfSiehQM7KIbMbHWNPA
 B96jRZBbZuVo+tjczg71xZfR/hPlOpaTfw+iv2iASRnFZaTOTSNQO+JQH
 3KFC2MZx0iW0UfKBQwpmUrRl7KG6ogGE5ITEYTfEdGiCsc97M4JMxy4GB
 8RydHNQzMi6zyAdyJIMRLwcQOQL9woxCuCqe6bEZHAV+xTz3xc52sgmYI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K4g0zbot
Subject: [Intel-wired-lan] [PATCH v4 15/15] ice: default to TIME_REF instead
 of TXCO on E825-C
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

The driver currently defaults to the internal oscillator as the clock
source for E825-C hardware. While this clock source is labeled TCXO,
indicating a temperature compensated oscillator, this is only true for some
board designs. Many board designs have a less capable oscillator. The
E825-C hardware may also have its clock source set to the TIME_REF pin.
This pin is connected to the DPLL and is often a more stable clock source.
The choice of the internal oscillator is not suitable for all systems,
especially those which want to enable SyncE support.

There is currently no interface available for users to configure the clock
source. Other variants of the E82x board have the clock source configured
in the NVM, but E825-C lacks this capability, so different board designs
cannot select a different default clock via firmware.

In most setups, the TIME_REF is a suitable default clock source.
Additionally, we now fall back to the internal oscillator automatically if
the TIME_REF clock source cannot be locked.

Change the default clock source for E825-C to TIME_REF. Note that the
driver logs a dev_dbg message upon configuring the TSPLL which includes the
clock source and frequency. This can be enabled to confirm which clock
source is in use.

Longterm a proper interface to dynamically introspect and change the clock
source will be designed (perhaps some extension of the DPLL subsystem?)

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7d731d1be862311358943c6922354504ba4721ba..742ffbfba73ca3279cec311ae359ebc6a4e6a584 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2344,7 +2344,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 	} else {
 		info->clk_freq = ICE_TSPLL_FREQ_156_250;
-		info->clk_src = ICE_CLK_SRC_TCXO;
+		info->clk_src = ICE_CLK_SRC_TIME_REF;
 	}
 
 	if (info->clk_freq < NUM_ICE_TSPLL_FREQ) {

-- 
2.48.1.397.gec9d649cc640

