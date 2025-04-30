Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E5CAA5828
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8B8F60B10;
	Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6T-qK9-WSSDa; Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E679606F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053504;
	bh=AuarM4pOEcronx61oEOEf6WT6jYDOPap7Y8CKrrX0Io=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fWQ+C2LgyZwWGo/+sMT01H9F/qpMC3gEriLSi02vdi2onXtTJeJTmZh3vd6IjUcTr
	 5LAEH+LxHj8SZdtM9Mj8SorEVpsuQ+DD6vFOMN7oBJ1zv13c/P6wA/0GaJpKNcf6Lk
	 glXQSGOYKdUpifGOgvG9cX6elr0k/PWGn1kZzh+BXoK3XEIsCQV9tN1dFSPYv3tqLK
	 rVvvtpuWFSP/JrrnDgeWetOihHsxrYo4NR6lNUpDpHqY/enB1vR4+UaAQAujdersL1
	 htZhmsgrls/ovWbEvPvwKvng6d91+O5U4bXplUz0uYZgFr25/AnV1M9p+j6FVFRDoU
	 +caORuZzyY9Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E679606F1;
	Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AB41B236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9147B60E76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bbbuAGUMntHy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B344360662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B344360662
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B344360662
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:40 +0000 (UTC)
X-CSE-ConnectionGUID: 4VGyFIceRtmarqKJ/44n6w==
X-CSE-MsgGUID: 33REgOYjTfSyFOvobXHdbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120882"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120882"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
X-CSE-ConnectionGUID: Jumn1DZUQPipNouzckLrQQ==
X-CSE-MsgGUID: aOggiD2ATSGiAlPZ9hp06A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145065"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:31 -0700
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHOpEmgC/x2NywqEMAwAf0VyNlDr+vwV8dDVqMFaSyMiiP++X
 W8zl5kbhAKTQJvcEOhk4d1FydMEhsW4mZDH6KCVLtQnq3Bd8RBvLfLmw37SRu4QNJZn90fUw1d
 VtRmnpswgVnygia/30PXP8wM1doexcQAAAA==
X-Change-ID: 20250417-kk-tspll-improvements-alignment-2cb078adf961
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Milena Olech <milena.olech@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746053500; x=1777589500;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=KK3dNEhgw/GTE+XcYq3o2kJsiK5m4hTbVIgJsntdH1E=;
 b=NUg/EMa3TAcUbMBoITx/fo5J4jtjB34vkeaiBHqkxUpXmOuNP3Orfpg7
 EGK1cZvzP3re6kzSJGWomxzHcADjQWJuuvke5zxUO5BXse2j/n5bl9FSG
 auj4pGTKzfPGXG8cDj3Oq3s1VNB1uDlJRf9sZZ4MrQW684kuSFLX659TN
 Jy6C59getf8GZNA5Hfp2VvEtEpSDo7drf0vYCck4mu05EcX+oIA5VwQd9
 rrg1ihADdfivoiUb7gkEuhokzssuFMqDaqdSjkGnh2aryiRV+ohRpsC9R
 OODy3fliuUJ4aOWXgwcU0kB4sMeZfoIK3J248Y6DBLoh/W32krBG3VTcF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NUg/EMa3
Subject: [Intel-wired-lan] [PATCH v3 00/15] ice: Separate TSPLL from PTP and
 clean up
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

Separate TSPLL related functions and definitions from all PTP-related
files and clean up the code by implementing multiple helpers.

Adjust TSPLL wait times and fall back to TCXO on lock failure to ensure
proper init flow of TSPLL.

Change default clock source for E825-C from TCXO to TIME_REF if its
available.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v3:
- Add SPDX headers to new files
- Fix .dest_dev assignments in patch #1
- Drop accidental re-sizing of e82x misc15 field in v2 #2
- Split v2 patch #6, with behavioral changes in new patch #3 and #8
- Split v2 patch #3, with removal of E825-C array to its own patch #4
- Fix kernel doc warnings
- Add a patch to also update the default E825-C clock source to TIME_REF
- Link to v2: https://lore.kernel.org/intel-wired-lan/20250409122830.1977644-12-karol.kolacinski@intel.com/

---
Jacob Keller (4):
      ice: fix E825-C TSPLL register definitions
      ice: clear time_sync_en field for E825-C during reprogramming
      ice: read TSPLL registers again before reporting status
      ice: change default clock source for E825-C

Karol Kolacinski (11):
      ice: move TSPLL functions to a separate file
      ice: rename TSPLL and CGU functions and definitions
      ice: remove ice_tspll_params_e825 definitions
      ice: use designated initializers for TSPLL consts
      ice: add TSPLL log config helper
      ice: add ICE_READ/WRITE_CGU_REG_OR_DIE helpers
      ice: use bitfields instead of unions for CGU regs
      ice: add multiple TSPLL helpers
      ice: wait before enabling TSPLL
      ice: fall back to TCXO on TSPLL lock fail
      ice: move TSPLL init calls to ice_ptp.c

 drivers/net/ethernet/intel/ice/ice.h            |   1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h   | 181 --------
 drivers/net/ethernet/intel/ice/ice_common.h     |  58 +++
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 177 +-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h     |  54 +--
 drivers/net/ethernet/intel/ice/ice_tspll.h      |  31 ++
 drivers/net/ethernet/intel/ice/ice_type.h       |  20 +-
 drivers/net/ethernet/intel/ice/ice_common.c     |  71 ++-
 drivers/net/ethernet/intel/ice/ice_ptp.c        |  14 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c     | 564 +-----------------------
 drivers/net/ethernet/intel/ice/ice_tspll.c      | 518 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/Makefile         |   2 +-
 12 files changed, 712 insertions(+), 979 deletions(-)
---
base-commit: deeed351e982ac4d521598375b34b071304533b0
change-id: 20250417-kk-tspll-improvements-alignment-2cb078adf961

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

