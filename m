Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E3783A1A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 06:58:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88FCF6146F;
	Wed, 24 Jan 2024 05:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88FCF6146F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706075911;
	bh=cAOdK34H/NLVB4G7B010oL5Wl2cqO3ZOiOpWvSxI0Ak=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GyiWFzAg82Vhs3M3Eh1G/xd5MBuelRDA+ocu/VMHjqVdFZgrGuU7m81vhAf30ajVt
	 PfBAChAXHlwHrNKixabe98SbcBdKfLlhxOK/fvZv1mikcffxqlk32EoMb14JBOzA9S
	 kvIfedetHWvUQr6YjmyMIimG/d2uvne3Yt+qQ/BkJBnDOChgYyWf7hbm1gS8cuYPaa
	 eEndNGOi7o9j59efGwvEmWK9q5fGoUaYvVNCJ3QvdGbWQNOP7Yw1CEkDPWm8BY5vPS
	 nruNGCIoW7HIOZ3qoV92PhDxqsw/6PN/88OmVWI6UOURd3KwiaMdjXVfeJDwABuiji
	 w9DrabZiM+CXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDjUC2FXM5ze; Wed, 24 Jan 2024 05:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A79A061467;
	Wed, 24 Jan 2024 05:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A79A061467
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55FB01BF25B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 05:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 344E0408BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 05:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 344E0408BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ms3c2mAUJaqm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 05:58:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E4B5408AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 05:58:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E4B5408AF
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8861862"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="8861862"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 21:57:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="856575053"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="856575053"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jan 2024 21:57:04 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jan 2024 07:57:00 +0200
Message-Id: <20240124055700.818996-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706075905; x=1737611905;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yo0Csj7FCAFT3zwYQITzeiO7RHAHEdhTFNnmRPv07C8=;
 b=Iwv4zPtxwwTuzdP0oRVbMVQ90qwAX8wegLkjKvA7Y/meLViw682k2W4m
 hhUo5GuHGJUHB6h5GCZSTLVBR12aFDCQaGfGNgRfbBuoFtaM3mksFZ47f
 d9A7F9LgGEpi26pyHZrw1Kb22Uxh0iQ9gSn3uoO0USUt6PsqDrjC3mc9W
 7esj7A9D5I4GBu6zudO7m9QU0q7Dpy8VOCNr7S9eaKpQxkXOBUHuHCTrB
 CiZJoI6kE/SXpyO7HENiW1daZ4J/rC4xCNk6N/ZHScG6shuK4HAE92Ck7
 XmjAcLw/cZhWDN+TIzcuymlhmjqWnUlxBJv72RuDLx6zWIjMiSoUWafRg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Iwv4zPtx
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Remove temporary
 workaround
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PHY_CONTROL register works as defined in the IEEE 802.3 specification.
(IEEE 802.3-2008 22.2.4.1). Tide up the temporary workaround.

Fixes: 5586838fe9ce ("igc: Add code for PHY support")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 7cd8716d2ffa..861f37076861 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -130,11 +130,7 @@ void igc_power_down_phy_copper(struct igc_hw *hw)
 	/* The PHY will retain its settings across a power down/up cycle */
 	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
 	mii_reg |= MII_CR_POWER_DOWN;
-
-	/* Temporary workaround - should be removed when PHY will implement
-	 * IEEE registers as properly
-	 */
-	/* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);*/
+	hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);
 	usleep_range(1000, 2000);
 }
 
-- 
2.34.1

