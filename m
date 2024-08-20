Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7F8958448
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 12:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94ED3403D8;
	Tue, 20 Aug 2024 10:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JWUzofmNwR3w; Tue, 20 Aug 2024 10:24:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE3D6403DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724149472;
	bh=5Wi0bgl2OdX61n5+VOKhgx9hEq+zZN7kx9bPic02Ysw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g95lvsTg280kB3/8/jDNEF2oaHuXjX34jNsl3+KEOFRp/z4p7QV0L1lekMQLMMsFf
	 rUe3pgCzZTyVXiM6CZsTTOdVWBZQU8Fxi+Tc9aernvd41DtDqgd9+ysuCUEvWvPrnj
	 vz7o8pNldxSihSGIXoreDonYv1CG+5rAxN0FW/oPKYcgQRSR5RIJ62ICeBlM6HSLE3
	 EIHyUm5f9cWdVWkgaoCbZy3sg5DdXOdUta+CX3s2dFNhhiHXrzGGztrs8hm6UEHbzy
	 EPT/D1PV1JQv4BiRp63PrDiSKfigfIUZPl4OQMkVfCLpFnRiOglizvsCns8/SpiPXA
	 3Gb0AQ/0V2iIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE3D6403DF;
	Tue, 20 Aug 2024 10:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1CE31BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 995F781114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:24:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5fbdW12jkTRA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 10:24:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E54B881110
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E54B881110
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E54B881110
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:24:28 +0000 (UTC)
X-CSE-ConnectionGUID: WXq5sMctSb6T777JzLSRIA==
X-CSE-MsgGUID: 2H/HITnPSyuQCY7q0MMIPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="44962816"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="44962816"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 03:24:29 -0700
X-CSE-ConnectionGUID: qo9MhO8SRyagRIyPzhlBRw==
X-CSE-MsgGUID: DIypUAjISnCM623UZidfAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="98152795"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by orviesa001.jf.intel.com with ESMTP; 20 Aug 2024 03:24:26 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Aug 2024 12:21:47 +0200
Message-ID: <20240820102402.576985-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724149470; x=1755685470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BrRtTluh0XeupPUpqsnwkQNqKN683wr3zvwkT/TA8bo=;
 b=YLJLXbky21dQkiGqeh1HF7ww7R90ypBZWmTYoz7Cxob3rWGuzgtOc/XS
 R7d7QQXu8T87NTeSDegqH1NLRnOUh3LYzk4WS+j51PVdCYA/uB+HV5gDk
 0Ir2OI8YI5/Q6L6sYq15A3SA0kEidVMrHc9S87wjdiSSU5lSNjAnxruj6
 3WbERD2bQ/tUnh3S48XnOMqlz5pZ2D8IPP2veHHUeBzO6UKNhPxw2MNKm
 H8gsaJyi3oRH0fr5z+mLUerHsyCFVRaphE47eBwz2soK52i9ODEo2z2LL
 ONWAYgDMMZU7jylAtmI3PZ4NvYYwGsV033g+INga2mjmSvQXLdAEeYAyN
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YLJLXbky
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 0/6] ice: Implement PTP
 support for E830 devices
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add specific functions and definitions for E830 devices to enable
PTP support.
Refactor processing of timestamping interrupt and cross timestamp
to avoid code redundancy.

Jacob Keller (1):
  ice: combine cross timestamp functions for E82x and E830

Karol Kolacinski (4):
  ice: Remove unncecessary ice_is_e8xx() functions
  ice: Use FIELD_PREP for timestamp values
  ice: Process TSYN IRQ in a separate function
  ice: Add timestamp ready bitmap for E830 products

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 128 +----
 drivers/net/ethernet/intel/ice/ice_common.h   |  19 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  23 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 469 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 288 ++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  36 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 12 files changed, 608 insertions(+), 416 deletions(-)

V6 -> V7: Fixed timestamp acquisition in "ice: Implement PTP support for
          E830 devices"
V5 -> V6: Fixed minor compilation issue in "ice: Use FIELD_PREP for timestamp
          values"
V4 -> V5: Added 2 patches: "ice: Remove unncecessary ice_is_e8xx()
          functions" and "ice: Use FIELD_PREP for timestamp values".
          Edited return values "ice: Implement PTP support for E830
          devices".
V3 -> V4: Further kdoc fixes in "ice: Implement PTP support for
          E830 devices"
V2 -> V3: Rebased and fixed kdoc in "ice: Implement PTP support for
          E830 devices"
V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
          E830 devices"

base-commit: a2048a2cb937396757fee14263302191b3c0f0da
-- 
2.46.0

