Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C7294BE06
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 14:58:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B7E260AA2;
	Thu,  8 Aug 2024 12:58:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UeX-P4GSgqnD; Thu,  8 Aug 2024 12:58:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C161260AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723121914;
	bh=RtmWu35bYB4RHBkfx/Al3SyAipwMivGFmLSVqlA6EFI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OL12vlDBwUOLUxx4SPfT4DHCf0NudMS4EVxget8KGFWcpaCWtSxZD+pThHHuOGtOB
	 5rv4bwoyOALNipee2F3iNc5dpKrFJ0Fldf9aIsHrRXbtK8GpeRAbyG3gjtdmbydzK0
	 fIPbijBnlSVude3Y0+MbPaDkwqq5+nt9xO/Rc52hN+ASlF0oezz0KV9OkTDrYJwE0v
	 yVq6+YxATihYdYa3W6G6TCaCGOyZpTab6OE6QknWQgTPpYEkvEAuDuWuL3UmAsEwmV
	 spwtpflHvD/U+M//Bqr98MUrvPOwLJmSPxvTUE1XmMS/42dc086Xkn7iJ8VPqSiw2b
	 CTj9UTRj5mxDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C161260AA6;
	Thu,  8 Aug 2024 12:58:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16A051BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0374160A99
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpIEv7BP9HG4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 12:58:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DAE7160593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAE7160593
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DAE7160593
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:31 +0000 (UTC)
X-CSE-ConnectionGUID: 2QnZIzinSjOnK1Iw38GKXg==
X-CSE-MsgGUID: PUUOBpCEQ56RfzZxJkTpXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21404749"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="21404749"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 05:58:31 -0700
X-CSE-ConnectionGUID: jPBah51OSrKOZhXwXI/urA==
X-CSE-MsgGUID: LTYM0w6qT66vnNMAQSHOlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61595064"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 08 Aug 2024 05:58:29 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 14:57:42 +0200
Message-ID: <20240808125825.560093-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723121911; x=1754657911;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o6k55yf1spn/c3CkBKCM6I8CSExYb7qwa4LrVRUuHQI=;
 b=i6kdFBBlSWE7joiejdmrkbpJxqAvZ10CSq+VWpsOQJihE7A3Y6/dpmM4
 5PxOKEkOav8oX7HWC/6Q8YTUCQUw+NjbBSGW32TU3/s8QXNvBdgqAruay
 sAok/asX42c09xIaaeCJ3QyBVULrgkGh4pdoGHfZNbsXWmCZvP2n5HFNg
 lSgRchAxoOJesLx6lOCPejlzBIE8ukVGuqoO7ydfMJK7um36wla0LvTM5
 W7QLEaS5vwXgksX2/fFG2AiI6A2WAmvS56EjFu96Ytk9KUgo9OIkbpcQD
 blUbLCYJEsHs5/EfcHHbWbOHo+eYQ5D/WsBrk4PGxv3DiRtwP+2wbM8mB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i6kdFBBl
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 0/6] ice: Implement PTP
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
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 469 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 289 ++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  41 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 13 files changed, 618 insertions(+), 416 deletions(-)

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

base-commit: 58c0a87ea4b48467b6cc94835cc5d206a589d724
-- 
2.45.2

