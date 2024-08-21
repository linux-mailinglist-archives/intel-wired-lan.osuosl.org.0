Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA803959E39
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DEF540224;
	Wed, 21 Aug 2024 13:11:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gGD01FXyVNyw; Wed, 21 Aug 2024 13:11:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E03BE401DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724245912;
	bh=vEtM6vXg02sfC2cndaW88YCbPHqtFK2ZSdIL1cGZv4I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JjmTRlqW2C7yz2U0dy/1p5y6qh68ZvB5B29Wb1zqdHLLAOst9/Ay1eddME5t2gSz4
	 +wFbkrV4X1jM/1a7Ew0bzMnLwMyUNwVHaoCCGICezL/W8OG+AiLMFox6olCCTnXjkK
	 BaMrz4DaTIXTVLSK9ue/r64vlvYl+xZn0x9on05zo2gdEYOga4r652knDxvONCby2G
	 6KD1ARXZFH3IlJpTbgGGUXH5lM/3mZhktR5xPjS+K0c61JAH2r1yNSOzLA8MCogaAk
	 1Mr4sYki2RMrjxg1V0SQ+ttBjuV7G4cC+5k7+NpNrtBwKFJjEMKDMuVEOlf1TB9QqI
	 aaSSxj3XjPrJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E03BE401DF;
	Wed, 21 Aug 2024 13:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67B781BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61EAF8118A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fwJoopqGY7UF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:11:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2EB0381186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EB0381186
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2EB0381186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:47 +0000 (UTC)
X-CSE-ConnectionGUID: zMEUupSzS+GkLfUZt/iD7g==
X-CSE-MsgGUID: 22vxFsAiQJyqwi70Ypw/4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26356917"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26356917"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:11:47 -0700
X-CSE-ConnectionGUID: crgoxB1mSXGeAjoTh7b9Gw==
X-CSE-MsgGUID: tSzqEzsySaKNc3lUQeclPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65432359"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa005.fm.intel.com with ESMTP; 21 Aug 2024 06:11:46 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Aug 2024 15:09:52 +0200
Message-ID: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724245908; x=1755781908;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3nO8mVl8Okwbqvile2/ShvLyJ0BVQQbqzRLYurYDto4=;
 b=NbFcbd45h0+x8IA3nnTi08kEFmnvbYWrW2eaB0sb+gJxZGJXsCGPQrRs
 lYedbmHESNjt2AnQe9xkFUTw1nF4MGNscNboIXPS377KCbDA++FPon3vd
 KHpksu4759mNEZ/gLPjpsvheVYWzCvYRhYo9PJ/SETu5+Dcg3xKxFLWNP
 oquaR2ybAm1zlNYVTCn9CZzPeRE3JoTmsLJh18ZZk05QMIbdgm+341CAC
 ipg06kAIS284VDw45h2uAOpgOb2brGw+Us0Zm0mM1uAKyznNl/7367hg/
 +4il8ly+7imJ252Xyf79Xl/CRMcZg0/qgtrO6gwgyOtnV42Sakm98xvpB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NbFcbd45
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/5] Replace auxbus with
 ice_adapter in the PTP support code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series replaces multiple aux buses and devices used in the PTP support
code with struct ice_adapter holding the necessary shared data

Patches 1,2 add convenience wrappers
Patch 3 does the main refactoring
Patch 4 finalizes the refactoring

Previous discussion: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240812/043278.html

v1->v2: Code rearrangement between patches
v2->v3: Patch cleanup
v3->v4: E825C support in ice_adapter
v4->v5: Rebased on top of the latest changes
v5->v6: Minor formatting fixes

Sergey Temerkhanov (5):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Initial support for E825C hardware in ice_adapter
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |  22 +-
 drivers/net/ethernet/intel/ice/ice_adapter.h |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 340 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 129 insertions(+), 311 deletions(-)

-- 
2.43.0

