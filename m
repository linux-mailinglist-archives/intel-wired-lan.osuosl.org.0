Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D8D7CEBF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 01:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3067C4198D;
	Wed, 18 Oct 2023 23:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3067C4198D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697671493;
	bh=wCs+2Ep0EzGm+DgMjJTXlJODQLWb+pbacn6P0/UtV1U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BdPE1Y4equwSlzPWMptTn/19cGQS3LEHvtrzIT/dt3gKOIMgCtrIFPPoHiXSBbHwd
	 lJQw9w30D8yrtbxq++Sr84ChGSJcW09g1wUvqJItE77uxZ1Pw8QJhBju8f6BHOloFb
	 ijm1yMJZvc4S0e7Y/T3x99r+AVZWHmLWJsRw6V3qI2rEkjf//sJZyE8z01qg69vahU
	 2/Xe8t9U6g04jnBKySBG/6PO83BjyugE4BBu2i9d0h0qEFE0X83oqKbhDq3fQTE0Bm
	 fuhzB9D7S7kyXZTNwZ3dtYGTeSzLvdyUvMqB8v9MfuqsHZnc8lGYlhyI2LXflTl3Ml
	 rfF9Iy3ti8dQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id snA0MHR2ZtTF; Wed, 18 Oct 2023 23:24:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6892A400EF;
	Wed, 18 Oct 2023 23:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6892A400EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB111BF42E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36A8C40A21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36A8C40A21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQs8ahQPuH8y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 23:24:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D7F340129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D7F340129
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388996698"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="388996698"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 16:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="4732342"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.144])
 by fmviesa001.fm.intel.com with ESMTP; 18 Oct 2023 16:24:45 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Oct 2023 19:16:37 -0400
Message-ID: <20231018231643.2356-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697671484; x=1729207484;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nxp8lcP4NnN/Lphx2iHe/mlF7d8jRes3FAwEL0NuznA=;
 b=LtIs4BBDkBZ6gXz9PwPVOOgXiwNA0ctbm4hxUnNcYKsLBUXzK3grXmpZ
 798oiiiAqSsSTRRFRfQD7KgVprhRGPluZMvvv4N9oyku1lCqiAEhtJRUw
 YTdbyp4RrrGX96LnGAucDFuDbvyPB1oyTNjzKl16Ee/6dIOfPSzf83ufP
 UnCRXv+i7xDN6OvSDwM3iZbc8Udjj/gh+YXCwUmxUtZuVr/z4hfkb/x8p
 eOrzJ83589xyfE5RGE6DT6mDpqqmJbA0k2veFtrd9BsfLDAB85vsb7b/O
 hcoMwkweCLHSv8oJ6iyoq/4iBxubCMlmeQpAqbjNUNbUjFRl1Ks9sDsyE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LtIs4BBD
Subject: [Intel-wired-lan] [PATCH net-next v5 0/6] ice: Add basic E830
 support
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com> 

This is an initial patchset adding the basic support for E830. E830 is
the 200G ethernet controller family that is a follow on to the E810 100G
family. The series adds new devices IDs, a new MAC type, several registers
and a support for new link speeds. As the new devices use another version
of ice_aqc_get_link_status_data admin command, the driver should use
different buffer length for this AQ command when loaded on E830.

Changelog:
v3->v4:
Resending with dependency commit 982b0192db45
("ice: Refactor finding advertised link speed") applied, and add
reporting ethtool advertised 200G link speed.

v2->v3:
Resending the original series, but with two patches moved to another
set [1], which the following series depends on.

[1] https://lore.kernel.org/netdev/20230915145522.586365-1-pawel.chmielewski@intel.com/
---

Alice Michael (1):
  ice: Add 200G speed/phy type use

Dan Nowlin (1):
  ice: Add support for E830 DDP package segment

Paul Greenwalt (2):
  ice: Add E830 device IDs, MAC type and registers
  ice: Add ice_get_link_status_datalen

Pawel Chmielewski (2):
  ice: Remove redundant zeroing of the fields.
  ice: Hook up 4 E830 devices by adding their IDs

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  48 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  94 ++--
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 426 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  27 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  26 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   8 +
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  24 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  52 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  71 +--
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  29 +-
 12 files changed, 650 insertions(+), 171 deletions(-)


base-commit: 7bd8065b0883b43c14e1eb63d9e5bbf2bb5cb296
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
