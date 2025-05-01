Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F90BAA6682
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FCDB61310;
	Thu,  1 May 2025 22:54:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBvLC5mEDjS0; Thu,  1 May 2025 22:54:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B21996117F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140092;
	bh=63KLQqF7FGb3u94y0zUT2mq90SlPKB35LfZ4XZWrQII=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ttE+9IA+ZmwMhloE+Bx23/NYMweQsGgWx+H3ZEKYocnM3oJaLGunfySY9KYvGke0c
	 fWA9K8WdiQA2maQlZX73exRAOKpLEtiUB0IWPKkzMSTETE0HVCpS0RDzPMzGwv/wU5
	 415253htNI8YNvvNakiO/zNogVpIujGhn1jaDH3fx3h51lkI7q8bHeANlUCNrA6a2p
	 zw84z6Jcy65RY4iYScr0ONR7cRscUAnHyq0V0QN4TRe2tsQq86mKk6y8F6zQwWO4/h
	 eWvKfEyY0rBO6Ty9Jb6IMQOrN413lvY8oEM1PhWqbXvgPKfJPUmPJCiB4UnrXuJgFs
	 ErQx5qSwtU7vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B21996117F;
	Thu,  1 May 2025 22:54:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7709422A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B52141A57
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jCSYB9Yzvaho for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6D48417B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6D48417B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6D48417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:37 +0000 (UTC)
X-CSE-ConnectionGUID: Z80UUuzBSf2qGsvQhyrZ8g==
X-CSE-MsgGUID: xUluuYqLSLqYL3MEDg+rrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811750"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811750"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:38 -0700
X-CSE-ConnectionGUID: 9ZA1gwNhSjqM4+lXOqDBIg==
X-CSE-MsgGUID: lWWjBaa1SLKZHoRhXiLe6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514316"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:36 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:24 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-13-24c83d0ce7a8@intel.com>
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
 t=1746140078; x=1777676078;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=jSo8j64JGGR/skDT2WVH5xA6fBUSYY6TUgU39Fs67CQ=;
 b=Gj8DhZ7Q3o+Dgy/u6y06wtKQ34vOU3slX8bwipsHBY86tSL3ElxyZ1jx
 J1Rq/21OP0OvcCFzAhoV3vAKQLIvhv5P8PoaSMhUB9urLp5e1GO3H6Clj
 TmdBFCPuQ2t02cii54+cnEhJPM0lVu44xsWEJJNnMgLVlQhrPXwttd8Vc
 6M53S2NQa32l1KJ53QmSdBb4JgJSfclbL7Z8JTzDewvX1cm8i726ki6Mg
 et58BlZggJ3/YIQ8zO+9M8rgEzVm8fRfZk8BSSfcSdzctbd2yuVCoLK5q
 xNCSxsUBFErJ4JCjfEWxBn9/CwIiBelNVikdKJE96VC5X9+4gimjsBhpP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gj8DhZ7Q
Subject: [Intel-wired-lan] [PATCH v4 13/15] ice: fall back to TCXO on TSPLL
 lock fail
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

TSPLL can fail when trying to lock to TIME_REF as a clock source, e.g.
when the external clock source is not stable or connected to the board.
To continue operation after failure, try to lock again to internal TCXO
and inform user about this.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index a392b39920aeb7c23008a03baf3df9cd14dcbb7e..7b61e1afe8b43a24c77edf0a0590562fbfa0ce3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -497,5 +497,17 @@ int ice_tspll_init(struct ice_hw *hw)
 	/* Configure the TSPLL using the parameters from the function
 	 * capabilities.
 	 */
-	return ice_tspll_cfg(hw, tspll_freq, clk_src);
+	err = ice_tspll_cfg(hw, tspll_freq, clk_src);
+	if (err) {
+		dev_warn(ice_hw_to_dev(hw), "Failed to lock TSPLL to predefined frequency. Retrying with fallback frequency.\n");
+
+		/* Try to lock to internal TCXO as a fallback. */
+		tspll_freq = ice_tspll_default_freq(hw->mac_type);
+		clk_src = ICE_CLK_SRC_TCXO;
+		err = ice_tspll_cfg(hw, tspll_freq, clk_src);
+		if (err)
+			dev_warn(ice_hw_to_dev(hw), "Failed to lock TSPLL to fallback frequency.\n");
+	}
+
+	return err;
 }

-- 
2.48.1.397.gec9d649cc640

