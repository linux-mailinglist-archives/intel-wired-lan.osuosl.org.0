Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43B192E370
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 11:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 574F240FFA;
	Thu, 11 Jul 2024 09:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4iy0VC7ekKn; Thu, 11 Jul 2024 09:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7696F4100D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720690210;
	bh=+J5vA3CoIWkTJaFr6IzbgiHzK35oO+GiOqh5FDUQRjE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=F1BPuoBpZK/pYTK3QxOy0Rn+pYupeQxaGOD5a7EZRMuRszYbJe4lhqKfk40KylOxs
	 7pMwNzFbaCW1gHpLjZVAebrHMhUmXpew1LqCgWIu7S50FZoZeRGvyPxlPepTGn7CCg
	 rbn1xnyBGeoIxzj6QlKU/U5rz9b0kT+TSleVQQCmCAQIvoGctLjnSp8o/Aa2HFbeqI
	 kLT2lhKmraZyA448x6D42Cx4n3YO+5XBKapfkdYs1eseH+YLlrJ4a6WpyryG5/SkWG
	 HgMI5T1fRulyJJ6jqq381oc8V1gwxArkGOnP7xZzJE+NHFf3Okl31xKE29wakws3XB
	 ndRJWBDU7e2Hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7696F4100D;
	Thu, 11 Jul 2024 09:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6C01BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 09:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 850F241462
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 09:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DpcwkmYgORHB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 09:30:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9CB8B413DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CB8B413DA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CB8B413DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 09:30:07 +0000 (UTC)
X-CSE-ConnectionGUID: XZ8wZjF2T42O5D0BgtTsCQ==
X-CSE-MsgGUID: lonpI7bKTZyEYNnstvnAmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21821446"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21821446"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:28:15 -0700
X-CSE-ConnectionGUID: 2hYEYgIrTPCGWZQl/uPsxQ==
X-CSE-MsgGUID: TzkX6edTQbStIBSDP7/MSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="48580011"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa010.fm.intel.com with ESMTP; 11 Jul 2024 02:28:14 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Jul 2024 11:24:23 +0200
Message-ID: <20240711092757.890786-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720690208; x=1752226208;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Fo4yrIyLx4oHY0U43D6U62Om4Lto/smBwSovdP0DxU=;
 b=akSMIJAZou32uafAUcPiv8dgpxVrpsyvqEJofvDQ1UTtfncBOBDSt/H2
 T2aRcaYjIpdCsyAypjAONJvK3cKw1vyfBlOlV0flJYIdVCPsQjLxipRr4
 tQ79Akvdmty3F0UJeFw2OEDQx5uu7AiKNftsV9gD79jFZqYRK+Z6OlHa/
 vAFWz9MpDl5HX4W6AWtKAT6cXn3j2k73BIusWV4fUbvhI5CvwQLVnETSI
 Juqv4Lggmyw0ozN/xa3BmXTJ2PupVJK+PEsF7UYwbtICkosLeoCQKn7tP
 WFZnv8XmqHyhD3ex/zSnW6JLuV/qI2H/xHp5AXdl1SNjDZgT7twH8i4em
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=akSMIJAZ
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/4] ice: Implement PTP
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

Karol Kolacinski (2):
  ice: Process TSYN IRQ in a separate function
  ice: Add timestamp ready bitmap for E830 products

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |  10 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  11 +
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 354 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 197 +++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  25 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 11 files changed, 493 insertions(+), 155 deletions(-)

V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
          E830 devices"

base-commit: fcfec1114f48ac1a73f68c3a60c2dddbd3ba3902
-- 
2.45.2

