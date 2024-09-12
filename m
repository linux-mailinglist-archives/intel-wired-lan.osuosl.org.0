Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA8E9765F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 11:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03B058130A;
	Thu, 12 Sep 2024 09:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k8vtZNVuBP9q; Thu, 12 Sep 2024 09:47:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23C7881315
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726134449;
	bh=5ecyB7Z7gUvq+yDKmer97dCWOewdmX0IXQDUJFIRgyE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kwevY5w6yWcDvOfzxPWaPm9ikmjPCKUj8KvjrnygwCXvS2n/JM0RdYqCKPP74qFzJ
	 xZk+ftoMw3taeup69hEp/WCM8hRAzC9b8WGKgDFTXQbA+UH973Ll06935l9WpxMhCg
	 xAffJR1qy8G1HJyA9q9RKbm426HQv2FqVE+DdaSDdPznM6qxehua71969tOXFp+QlK
	 Fdt8ZlSfurYPEG5E4/Ro4yOLyTc+mYnXO1ykI7DZ1OUIxlvYsNKqTtD6gJuyPC8D7U
	 GCAc/ga5/VJ8zOrFOZjWqRELLzi9Au6sds3M2yCIzaifjkxNJU/CNNjeCoZOhIslEl
	 2jOLAe9p9sEiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23C7881315;
	Thu, 12 Sep 2024 09:47:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 541241BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41FCA8130A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AiMLJnwCm8db for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 09:47:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 75894812E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75894812E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75894812E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:25 +0000 (UTC)
X-CSE-ConnectionGUID: Gzg8ZpSfTFiCNNxqPOykiQ==
X-CSE-MsgGUID: Q+HLW7XwTY6gWlUrd/rYEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36115359"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="36115359"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:47:25 -0700
X-CSE-ConnectionGUID: FMz10dl4RlqUaRHpHNv7Ag==
X-CSE-MsgGUID: 3jguLI5BQk+7wZdpv+YM8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72650626"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa004.jf.intel.com with ESMTP; 12 Sep 2024 02:47:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Sep 2024 11:41:45 +0200
Message-ID: <20240912094720.832348-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134447; x=1757670447;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f9EzcP2QTcdX3X/6TPVQngtbn28a3/SgphO1r2Uj3Wo=;
 b=mAna/YfkYXL/ZMNsmZp1QXkLX3Ca0XDUa9LhsszQtgJlXLplakxha57y
 4KMqCxOyPEnrmiRQwu1Dy1TxofLaVN5bbko3ieRKokickO0f+tUXDYmeo
 rJOIF7/LQYRhiO1e+B/Q50BrBK1RECfKY0vhDTX31q7hCffwQ55rORTU2
 uNTzZ233hcM4KPwlkzpSTq6Q7rLMYTyVttJk8QaBMWSdkHb0OcYzCRUfp
 XC4GoEMZpY5tkl6JsbEp25qgv4x+Z1CMf99QryGfFn0ay5BKQ0XvvQq0X
 IsbzmDKFbxzgUmrBNmNHCfK5UL932DWujwGXrJN/G09+aPaiBRPTOXfYv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mAna/Yfk
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 0/7] ice: Implement PTP
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

Refactor processing of timestamping interrupt, cross timestamping, and
remove usage of ice_is_e8xx() functions to avoid code redundancy.

Refactor GNSS presence check to be able to remove ice_is_e8xx()
functions.

Jacob Keller (1):
  ice: Add unified ice_capture_crosststamp

Karol Kolacinski (5):
  ice: Don't check device type when checking GNSS presence
  ice: Remove unncecessary ice_is_e8xx() functions
  ice: Use FIELD_PREP for timestamp values
  ice: Process TSYN IRQ in a separate function
  ice: Refactor ice_ptp_init_tx_*

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   5 -
 drivers/net/ethernet/intel/ice/ice_common.c   | 210 ++++----
 drivers/net/ethernet/intel/ice/ice_common.h   |   7 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  29 +-
 drivers/net/ethernet/intel/ice/ice_gnss.h     |   4 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  27 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 509 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 403 ++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  41 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 15 files changed, 730 insertions(+), 543 deletions(-)

V9 -> V10: Fixed E825C MAC condition in caps and and enabled
           ICE_FLAG_PTP_SUPPORTED for E830
V8 -> V9: Fixed compilation issue introduced after rebase in "ice: Remove
          unncecessary ice_is_e8xx()"
V7 -> V8: - reordered patches to have all E830 changes in "ice: Implement PTP
            support for E830 devices"
          - added "ice: Don't check device type when checking GNSS presence",
            which removes GNSS related changes from "ice: Remove unncecessary
            ice_is_e8xx() functions"
          - reworded commit messages
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

base-commit: 6899a44bb1849adc6bf9b0bad085fdf37bc3123e
-- 
2.46.0

