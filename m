Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553491AAB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 17:11:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7815660E46;
	Thu, 27 Jun 2024 15:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OLpF20y1fsE3; Thu, 27 Jun 2024 15:11:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA9FC60770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719501100;
	bh=5b79BEiO+5W0B2+EVXhSClphWooTeJi7tH7oXjCispQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FcdWHweJ3u114K7myVSNTQFp18hhmskZ98RUTu4FkMtgbfkCbx8Cd5gJq3TTqTWXn
	 apf3yxinYjShjKu8r8zbPnxHUy90DBZHM3uqv/dQNejf58CL9/kujLmbtN1EPXOXLh
	 wgR5F3XI1M+NgeRmrTKl9zTIibvJK9G2B0HAc/XQACnnO8i6fPLYsg4arWltOMfk8k
	 VPfzFP2m1cErsFSYvWhJB5DxlBawlU5Shvoi74h1iOp3F0NFnqO5XaZGwL5rVfvBOJ
	 Hv/4qj+5tWLgdhMSSXYnft/dFmoQ+YxB6zshThe0tyArxMvLHy0FgoitMu3mEGFB3X
	 +K35FIS4Vlhdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA9FC60770;
	Thu, 27 Jun 2024 15:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 905D81BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78C9B8415D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ec4sgU6tWLtt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 15:11:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A05348411E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A05348411E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A05348411E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:11:36 +0000 (UTC)
X-CSE-ConnectionGUID: sFdfBCzuRACiIKaGqMFsrw==
X-CSE-MsgGUID: Ya1r0l4DQm6NRfUDJsbLoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27222459"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="27222459"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 08:11:35 -0700
X-CSE-ConnectionGUID: 1Ya23w1kR/SOJt2lXwBgGA==
X-CSE-MsgGUID: xr6z+K/zSs6+l5QNmR1xsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="48759662"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa003.fm.intel.com with ESMTP; 27 Jun 2024 08:11:32 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 17:09:24 +0200
Message-ID: <20240627151127.284884-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719501098; x=1751037098;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pwCjiIUxO75pO5di4qRhIFHtzN1Bs3/cpB/j/x7S5SE=;
 b=AG6C4d/hfNRJBXotb3SX5GhgnQUMuHIZ9K2k1MsOf8i7lL1Qjjh05Tj3
 AUErn3K0kvo6gATKzsU/AWTk47G+TNmVdeCxZpid9GmdUEqhK45DiA4aP
 fTG9YksB0a7Wy43lggk9pE/LoaNCvm1jCCG36TVVW7mmo0E4wrTghaiAO
 pD7aCJT5KNo3CXZC1cut4K5iFPpzhFhY3RnZ2g07J4TGAJ6aia0Od9Itv
 NSOgCjkgf76zOy/4895bxfWwzEW1dLGn4LtQycQ2SR2mwkemVuZ12kwun
 kIjZvrt/DlZijNj6NlI9rLWVE5pNqYis+qIcsauFUQEIDdAYm2qoONQf4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AG6C4d/h
Subject: [Intel-wired-lan] [PATCH iwl-next 0/7] ice: Cleanup and refactor
 PTP pin handling
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

This series cleans up current PTP GPIO pin handling, fixes minor bugs,
refactors implementation for all products, introduces SDP (Software
Definable Pins) for E825C and implements reading SDP section from NVM
for E810 products.

Karol Kolacinski (5):
  ice: Implement ice_ptp_pin_desc
  ice: Add SDPs support for E825C
  ice: Align E810T GPIO to other products
  ice: Cache perout/extts requests and check flags
  ice: Disable shared pin on E810 on setfunc

Sergey Temerkhanov (1):
  ice: Enable 1PPS out from CGU for E825C products

Yochai Hagvi (1):
  ice: Read SDP section from NVM for pin definitions

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    9 +
 drivers/net/ethernet/intel/ice/ice_gnss.c     |    4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 1129 +++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  119 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |    2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  101 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   72 +-
 7 files changed, 800 insertions(+), 636 deletions(-)


base-commit: 6a788e1f6ddc6750a553314403136b1be9301cf5
-- 
2.45.2

