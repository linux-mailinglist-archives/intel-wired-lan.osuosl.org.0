Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 087A58A2EF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 15:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62B6F605C3;
	Fri, 12 Apr 2024 13:11:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dE-v4_G5ln-C; Fri, 12 Apr 2024 13:11:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A65B860687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712927477;
	bh=lVlKFSMqAuQn4v5ENaXzykaqaJfGpbh7XN07HIVibYc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=A3jGDDmLdM+ctDE2lhGQszmBWA2+kYVXwTKW2SDEPXRywescRSTotfknmrQBrV9or
	 uZwkOJM6x8QX8D0t2G9zuDDkVvv45h1PmLv6ihmGq2Kykz+vhg/mhXKGo/a6aTEZQZ
	 JQ6U2pwXVzM/LbIg7JbzTUK90SHIdLWejrTmDhpO53f17Qa9mssn9SENdbp1kWySHH
	 00/i7t9oc/vjfuFRN4xLLxgA8ijDRfdY7eZS0teW2lUnopMqGwlb3dTP2RnH1ZJVky
	 NSqzvE9hXZlKePFmx2LfBW1rcBCeHLpM1kLSh7xxUd++Y4bvwT/HmXop9401OrB8LX
	 ifD7KcWSh6HhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A65B860687;
	Fri, 12 Apr 2024 13:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A31121BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CC6841FFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2j_UqPnQdem4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 13:11:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 69AE241FF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69AE241FF9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69AE241FF9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:13 +0000 (UTC)
X-CSE-ConnectionGUID: MKdE+tv5Sp+c0DqjEYoPvQ==
X-CSE-MsgGUID: 50+OScM3SqqoOVzAweqfwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12230955"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="12230955"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 06:11:11 -0700
X-CSE-ConnectionGUID: oB/MuTJbRQKx66ZebZTTzA==
X-CSE-MsgGUID: M8z4ZsS0TdulTJR0eQX1CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="52384837"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 12 Apr 2024 06:11:08 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 15:06:43 +0200
Message-ID: <20240412131104.322851-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712927474; x=1744463474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5uEalmKLGaEC3QKjKv+lpkHjtZVbWIXGtcDrsB4bDkw=;
 b=E62JHUf5JzId4MJxUYdz7OMZNURtnZ11kI/bOo0phy1Du9VlKWbmKJFs
 2iADak5SPRBsvRvakMSqLX7dYZ5u6oDgL7i8yZdWjIfUmmFnTKt7q8hPc
 lcGVqoXdKc1LxRyWd6xKxr0FLU3UT9wWXBPlA3Y6GsnQIzyWXRy4fFn3i
 o1O8Hkzab9iw3NRbH8DX7Vf18yZQORXviD0dbrlhCeKLj5Blpc/zC8Nu7
 KWPCXDHf8KY+SU0XrmdU+U9aRPSp19ZUMeAJ/O8m7whpM4pBNxlYwNg9M
 e4M6ohpJ+FflB/1697VDw0HG3lGakvWXJF97bHgT6fgYs5L5oQVGRoJ5q
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E62JHUf5
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 00/12] Introduce ETH56G PHY
 model for E825C products
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
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825C products have a different PHY model than E822, E823 and E810 products.
This PHY is ETH56G and its support is necessary to have functional PTP stack
for E825C products.

Grzegorz Nitka (2):
  ice: Add NAC Topology device capability parser
  ice: Adjust PTP init for 2x50G E825C devices

Jacob Keller (2):
  ice: Introduce helper to get tmr_cmd_reg values
  ice: Introduce ice_get_base_incval() helper

Karol Kolacinski (4):
  ice: Introduce ice_ptp_hw struct
  ice: Add PHY OFFSET_READY register clearing
  ice: Change CGU regs struct to anonymous
  ice: Support 2XNAC configuration using auxbus

Michal Michalik (1):
  ice: Add support for E825-C TS PLL handling

Sergey Temerkhanov (3):
  ice: Implement Tx interrupt enablement functions
  ice: Move CGU block
  ice: Introduce ETH56G PHY model for E825C products

V5 -> V6: Changes in:
          - ice: Move CGU block
          - ice: Introduce ETH56G PHY model for E825C products

V5 -> V6: Changes in:
          - ice: Move CGU block

V5 -> V6: Changes in:
          - ice: Implement Tx interrupt enablement functions
          - ice: Move CGU block

V4 -> V5: Changes in:
          - ice: Introduce ice_ptp_hw struct
          - ice: Introduce helper to get tmr_cmd_reg values
          - ice: Introduce ice_get_base_incval() helper
          - ice: Introduce ETH56G PHY model for E825C products
          - ice: Add support for E825-C TS PLL handling
          - ice: Adjust PTP init for 2x50G E825C devices

V1 -> V4: Changes in:
          - ice: Introduce ETH56G PHY model for E825C products

 drivers/net/ethernet/intel/ice/ice.h          |   23 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |   77 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   58 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  265 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  402 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3592 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  288 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3871 insertions(+), 912 deletions(-)


base-commit: df238859a090c8e9eae88eb58b4cb267304f7988
-- 
2.43.0

