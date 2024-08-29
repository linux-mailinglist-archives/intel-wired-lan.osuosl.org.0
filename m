Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21D96431A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 13:33:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E58661141;
	Thu, 29 Aug 2024 11:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EMwYkD9zaJTv; Thu, 29 Aug 2024 11:33:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAB8461142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724931189;
	bh=SNCkxEOaBZQ/40syT/YjtBIqpJharfldrzGZ3qC2x1k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T5ViTtS03MHetsw0UKXzYer7Eq81XepXqkH1XkDItrE762+vm/zMNAXJWmbWYw3ZQ
	 XqZK/hot2okOeDtNIHSCJRN9GbzxGEEMS34ka3R5/8p+6FKJx2uv/Y+X6ZqLC8xXmj
	 bd07soqgA+DOEbt3OWnB8HOQ3OOSeKmpUOMCnlUzz1F4f657bCBfeHiW0MYgFv44TQ
	 M3f7V9ccBUrTsdXZQoo79RU5vaIq72f5tuCxXlevJJKTGf6tkuSUZexfK2rcSV5P2o
	 aj2P3rIvIESifkA4XH+TkXiGLcL1HbQN4HI8+TMsNJNmm6UnmQ9/SW09MzIcJKjRTf
	 6ta2Ncqm3SKQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAB8461142;
	Thu, 29 Aug 2024 11:33:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 629191BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C35440FC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HirR6Ake29MF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 11:33:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EF21640FC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF21640FC7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF21640FC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:06 +0000 (UTC)
X-CSE-ConnectionGUID: QFNkqTQARlmb/6vMp3rpuA==
X-CSE-MsgGUID: FlTesXtYQPKX0OwnMMcV2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23677860"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23677860"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:33:06 -0700
X-CSE-ConnectionGUID: AE1KaMHuScueiNefId/jLQ==
X-CSE-MsgGUID: oNBRJMdYTdu7qkIJcHThqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63230573"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa007.fm.intel.com with ESMTP; 29 Aug 2024 04:33:04 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Aug 2024 13:28:07 +0200
Message-ID: <20240829113257.1023835-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724931187; x=1756467187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W7Jm4YLWj2B1MXcE+VA0Tt/Hbb0N6rfbNNtePOFJV48=;
 b=nkpE63PoDueF4bouPoxjVumfA4h+Tf5TvlvvUG4PEsv2DAgKtpgXxBZz
 aSCRA+Tsg3EkZybzu8RsHqIhMihZEhwnHzvx57AP7htExW9GfBuk1kM0j
 cl+zAYrURgat1j6sqWLRyA0m9pX8xjJDEli0Swiq+lJWIgaAXNeUUHYXL
 lu88TUzuM+GyqQvkseviughZ0Nv6456cYXMkqbEtNnaUTbtn37ZNmc08l
 O8jVvcux8lfWTJZxmrnL41FA72PIfIFVlt/6Ce+2U5MCEQ8pYwTJ7ynrR
 zrH1JclR2VkqmJnWLdscMtcmWogo27117o4+RZ7Up/BVZrSe6v26nDpv5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nkpE63Po
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 0/7] ice: Cleanup and refactor
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  103 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   72 +-
 7 files changed, 799 insertions(+), 639 deletions(-)

V2 -> V3: swapped in/out pin numbers in all patches introducing them
V1 -> V2: fixed formatting issues for:
          - ice: Implement ice_ptp_pin_desc
          - ice: Add SDPs support for E825C
          - ice: Align E810T GPIO to other products
          - ice: Cache perout/extts requests and check flags
          - ice: Disable shared pin on E810 on setfunc
          - ice: Enable 1PPS out from CGU for E825C products

base-commit: e3b49a7f2d9eded4f7fa4d4a5c803986d747e192
-- 
2.46.0

