Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D84AEA824B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:28:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96E7641229;
	Wed,  9 Apr 2025 12:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AoFiEuWYF_9z; Wed,  9 Apr 2025 12:28:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06E314125B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201722;
	bh=NcFQHNewM82NWKLX4L37Zz9mGB6x6chw+V4NG1a3r8U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=O37tUk90D/VMxYOMwhGL9Z8yMdPbE1M6ryefYwigH3mxxt/TzerPVK0t1hrB/gMLA
	 aKF4f1ZOLbniKuowJRzv4/zXMViDOFSrd0hrvSkpgP8XpzM5xJavrev1Zhb6vDs2kO
	 hMF1rZX8gx3ywkZcmhTHuTVJB0IOj1UJo6+y0+GMNVtHT2OWegRoBkZzihViedYyjW
	 v0y4Gg/0OxkP3sMcj/Mc/hrVYsdU5MFv+P++BYyCkiPZvtCtY9h59rGBQcDQM7TeWr
	 HwT89htkVZ9WsMmh7qEEvoADamvW7bWlzWvmnWrR3g7G3faUVPtT6p0jJruRmPXxlh
	 PjR2H9xy3f0mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06E314125B;
	Wed,  9 Apr 2025 12:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F15ED6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90AC2608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eydFLqnGSNjQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:28:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F17C960B97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F17C960B97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F17C960B97
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:39 +0000 (UTC)
X-CSE-ConnectionGUID: Tz16QR73Qc2ShWBWGAsG1g==
X-CSE-MsgGUID: 1r/XUgSGTOiisMjQ5w1pnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56655654"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56655654"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:28:39 -0700
X-CSE-ConnectionGUID: lZMKLIZLQhSecKc1ugG5Qg==
X-CSE-MsgGUID: NElIpxJARreKXuglKzeRrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133557165"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa004.jf.intel.com with ESMTP; 09 Apr 2025 05:28:38 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Karol Kolacinski <karol.kolacinski@intel.com>
Date: Wed,  9 Apr 2025 14:24:57 +0200
Message-ID: <20250409122830.1977644-12-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744201720; x=1775737720;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mu+p15Hp5drZzvf5UskI2pfOzBCFUjQ49A9lPK2GyYE=;
 b=J+q69qwo/4954tcL9XOPCc7mz/kBlXA97xakCb3aoCHtmxCGSLg1WjEI
 wBke/8T0gmOGhlIVkMF77JM6lrDCNPcnom4fYRIuNRr2Nv9nWP9GeiaAE
 Yfj00x1haBWyAxGI8NXB89N5BW15MDCtSHUthySssZYu+H3RtRbU1cLQS
 xu2BY87j5/DHRYSXirN1bK7A8wN1GbXEIYdFcG+zzxBw6MsEUr4VAiV91
 /o8JPXCF/Zt0Yfmx4+yjnRCi6lLphuo5MstcbcMAKnmx1xb/bk/YfekBx
 lRS46gkbR1/B8wzc9g6qD6kqZAsxYzO/1mvkxDkhW0FzPBCDT/Xs3GonC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J+q69qwo
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 00/10] ice: Separate TSPLL
 from PTP and clean up
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

Karol Kolacinski (10):
  ice: move TSPLL functions to a separate file
  ice: rename TSPLL and CGU functions and definitions
  ice: use designated initializers for TSPLL consts
  ice: add TSPLL log config helper
  ice: add ICE_READ/WRITE_CGU_REG_OR_DIE helpers
  ice: use bitfields instead of unions for CGU regs
  ice: add multiple TSPLL helpers
  ice: wait before enabling TSPLL
  ice: fall back to TCXO on TSPLL lock fail
  ice: move TSPLL init calls to ice_ptp.c

 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 181 ------
 drivers/net/ethernet/intel/ice/ice_common.c   |  69 ++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  58 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  14 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 177 +-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 564 +-----------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  54 +-
 drivers/net/ethernet/intel/ice/ice_tspll.c    | 511 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tspll.h    |  28 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  20 +-
 12 files changed, 701 insertions(+), 978 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.h

V1 -> V2: fix compilation issues for patches 02-04 and add missing
          return values for patch 07

base-commit: edf956e8bd7d4c7ac8a7643ed74a36227db1fa27
-- 
2.49.0

