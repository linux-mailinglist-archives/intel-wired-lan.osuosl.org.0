Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A40277EE1A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:12:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 327544178C;
	Thu, 17 Aug 2023 00:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 327544178C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692231136;
	bh=VjNX6m0n6JVR35D4lmP4y3AquA5ulVaTHy+MvS2LGXI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3PLqsCrm9Ci5yBUheB+mNcKw1S0B+7Ox+yYG6Y4ea3/HXFj14UkUbpKVh0p/c0IQ6
	 XMa5SeteKfR+C7iM0WN4TJV0FmCV66BV8FGkU4D19DFqKMEu+NxlgbNFC+z0Tac/qf
	 M/lRsukSnztZit4SDzbFZH0XogjcG56sfiwsUNeeoVM1CayODFB8eeIUQFX6PqwSBZ
	 3xWpP+HwNIyxHYn1CToP44vnwumd/UdfgvH9fNfUOqaol7aAkyWiaWMHoAd+pFeb/N
	 itwTNFF2t4DtU0J9LjEl8q/89yqxAWkOfRnAXam+tMR8mlUqnVKyz78D79BgKCTpML
	 m2ba9U46AE6Rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0428kKpb3w1a; Thu, 17 Aug 2023 00:12:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 283C7401C9;
	Thu, 17 Aug 2023 00:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 283C7401C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67C381BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 382B76141F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 382B76141F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXxgPoQjuCcC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:12:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8FC661424
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8FC661424
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371570645"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371570645"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824422118"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824422118"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 17:04:47 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Aug 2023 16:57:12 -0700
Message-Id: <20230816235719.1120726-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692231120; x=1723767120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ByDqMIT5XcDzT3mDs4jnxW/xVImD9X2oNn+YpGBMXQE=;
 b=DMM0gi1FUR1C+VvjTcc3Me4oYpzPVxSYdMlPJJZUNBrVbH6zl1Rr+vA4
 f43Dw40op5rodHYP0Ca4x0wOxuR7uxs9Q8VaXVAC811j8ys7K1hpFSvkO
 swW+Y2rb9hwEENUK6odqxu0WjN5fovwZ2kGoIGbQ3s14tfMUal7ikVar9
 r9uScQMi9BS14MreFkgFWG62Nk0yxUYdcF1FU31NFFSgUPHBXbe9xNyxi
 0J0htIA0HYlVnj0wTcxs+d8ry8m2/zIpabacWDfdcBIZ/DZ/ZA5wvSLia
 u6i4OLji3eYu/4pxcdfda5outq7m2yHkZbAO7pLO+0p34bfrKLxTDwKhf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DMM0gi1F
Subject: [Intel-wired-lan] [PATCH iwl-next 0/7] ice: Add basic E830 support
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an initial patchset adding the basic support for E830. E830 is
the 200G ethernet controller family that is a follow on to the E810
100G family. The series adds new devices IDs, a new MAC type, several
registers and a support for new link speeds. As the new devices use
another version of ice_aqc_get_link_status_data admin command, the
driver should use different buffer length for this AQ command when
loaded on E830.

Alice Michael (1):
  ice: Add 200G speed/phy type use

Dan Nowlin (1):
  ice: Add support for E830 DDP package segment

Paul Greenwalt (2):
  ice: Add E830 device IDs, MAC type and registers
  ice: Add ice_get_link_status_datalen

Pawel Chmielewski (3):
  ice: Refactor finding advertised link speed
  ice: Remove redundant zeroing of the fields.
  ice: Enable support for E830 device IDs

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  48 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  94 ++--
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 426 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  27 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 192 +++++---
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   8 +
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  24 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  52 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  71 +--
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  29 +-
 13 files changed, 753 insertions(+), 235 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
