Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B628AE588F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADB7582CCB;
	Tue, 24 Jun 2025 00:30:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oRgJ-EKsjqKn; Tue, 24 Jun 2025 00:30:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BA0082BF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725015;
	bh=cYr5l1HHYtNlCcCk15ZjaO9WpwWI01OmB0MQ/jpG/EM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lPtSxpOoA8a1vC1emqSkZrITjQmOexfsjpNbr0/o2Cc5yq4uJQS3hQJq5ypjb+ZvG
	 HTOzJ8z4Lr1W6zXkV9XU2ZrT48lQA19yDuZEtaYWI/poa7xpZ7z10xOyiaIS0wuE/h
	 x1chRPvR2ZrhvQFss7lfWselE02ynRPlwEuZT6/qyKfMZnllg6QpPQTZe8mA/8+aiJ
	 8cQ8jqP5FtPOyqbM4aIJ3HDpLGNp4ePr9rinzVqGqF85cDU8yIwy6hUCWhEy9obNOy
	 69JV/rR4joo7AXFPjWrXVXD/TMp+PCzTI9vlBpCNpXtzbfT9u+HTWzTgqO1koMn0L1
	 LUdHNxgesTK9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BA0082BF5;
	Tue, 24 Jun 2025 00:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 359EC12C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8EB0610AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcNvAo8bb3cl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4392F610A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4392F610A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4392F610A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-CSE-ConnectionGUID: rU87UKC7SzCMf9ALT0BzrQ==
X-CSE-MsgGUID: Kwr/TgcjRLe/L5SIulbiBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067919"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067919"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:07 -0700
X-CSE-ConnectionGUID: dML8eh9aRd+IHAPTLd7RFg==
X-CSE-MsgGUID: pjHfOmlySHWIDmwXqDBFeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534056"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:30:04 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-8-fe9a50620700@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725008; x=1782261008;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=HCof3ZorrURb/XNOTqNcJBeLxfq4ji8wlBJfgFY5nlI=;
 b=I5YZKFwRuKjJXjtOj7xVxASvFXgJBkqTI6aGUKQ13J+r8V0V8CkQHSzr
 nuObNUYwgzSUuGyd+wz3o2C7rTaTNW0gGGT1zLNa9SSZMD9k8ndX3/bWA
 XGz6PdNLErnRWSLvH/oyfO7DFAo8v/Dg3AuwdN1AR+REQuUhjZOdIJCMc
 CtFUitsGcLxAGmfsoEOdVCWIpsksYsAJK5fNbrd8fgxbP6fbHMvrzjkI6
 BLgDX0wUTjGOE+6LVhJ7GdWRZRCzj7C3YMJw42PreLL9LnSI6wktZXWgX
 rMgX/RZiY1bJ1P6mnGqVNGYuaEQgHU0xUkxjPkQmV3lAaVOMnruNpD4X3
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I5YZKFwR
Subject: [Intel-wired-lan] [PATCH 8/8] ice: default to TIME_REF instead of
 TXCO on E825-C
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
index bc292d61892c3856919c6986f28795e50b0c0748..84cd8c6dcf39bf35c59ad27468d4e63f9b575376 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2302,7 +2302,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 	} else {
 		info->clk_freq = ICE_TSPLL_FREQ_156_250;
-		info->clk_src = ICE_CLK_SRC_TCXO;
+		info->clk_src = ICE_CLK_SRC_TIME_REF;
 	}
 
 	if (info->clk_freq < NUM_ICE_TSPLL_FREQ) {

-- 
2.48.1.397.gec9d649cc640

