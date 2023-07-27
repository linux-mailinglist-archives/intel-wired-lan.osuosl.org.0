Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88065765555
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:51:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B575441F30;
	Thu, 27 Jul 2023 13:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B575441F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690465885;
	bh=tOoLacs746AXYtowd2GXib75CvPgAS+XE6YpMVSXdJM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XSu8OyLPS5qb4QhD3wlDDFcMXpJcG4Ayb+mAbbE9ty+SkQNnkS7XoqQDjD25nWpBp
	 cPYBztBBEsYUyd5Oigv9ZlT/lQbnq8NBS5uvvnM5wQRH9PRAWXmFMwgEMAG3wl4KuX
	 BFOGtA81G98NhWfnN0LiLaIZ9EkhvABhwsOXrjDfYjYCcUb6S7bSU48HDYNFaRb7cy
	 QwuQVY8j2sQRWx2nSftSE01VlBiBGVGAdzCC+BbD78CnvoyatnfxuUb4Q1swcFfEo/
	 lsqB9+g5po1ZhOI4jGS6CEs6NaFqHzJra/U1SQRwwNV/jlypDrWpSCTAVSfg/x8gte
	 AIWnpglsOsuuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cw_34sIQApid; Thu, 27 Jul 2023 13:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77B0D41C22;
	Thu, 27 Jul 2023 13:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77B0D41C22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD0461BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 793C740217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 793C740217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_nmLRvlQJiC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:51:18 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C0C8400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C0C8400D0
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399249083"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="399249083"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:51:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="730271408"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="730271408"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 06:51:15 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 15:50:33 +0200
Message-Id: <20230727135037.28472-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690465878; x=1722001878;
 h=from:to:cc:subject:date:message-id;
 bh=Ajs7wbk7OK+CpaROsNoEzDYO+/opqhqZNrDqF5DNyu0=;
 b=nze/5E2hy0bLk7Xm9rgtkwoZC6E3gJZ/ThAL/2EYJLmzrEraHRytC4xy
 pvqWEp8bPGZUUoaNrz9AYA1PeCDMZ+vlQMSB611RPbSTLlNHCSPalnS9t
 B+0QYt5y+bUh687gQA6DR2uij4NDhOO+50eA1jsVXcpsx6NDtHVBerKxA
 AKN1NFcr4BlqQ+HS4ybc1OWd8x3BTf6dFVhAaeTroQ04+H9cWV+uunUfs
 DJg+bV5yP/Kjkf6+m3nN5ic2QzMqgwmScOYvf4FrHH7lXOuCyVTKQEvkg
 aYN2n6AroJYikk3z2dVJd84JFAWkfeoJIdQScAMBCZIWUPIJTSrTHsv/9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nze/5E2h
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/4] ice: add PTP auxiliary
 bus support
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Auxiliary bus allow exchanging information between PFs, which allows
both fixing problems and simplifying new features implementation.
The auxiliary bus is enabled for all devices supported by ice driver.

Michal Michalik (4):
  ice: Auxbus devices & driver for E822 TS
  ice: Use PTP auxbus for all PHYs restart in E822
  ice: PTP: add clock domain number to auxiliary interface
  ice: Remove the FW shared parameters

 drivers/net/ethernet/intel/ice/ice.h            |  14 +
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  10 -
 drivers/net/ethernet/intel/ice/ice_common.c     |  75 ---
 drivers/net/ethernet/intel/ice/ice_common.h     |   6 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c        | 578 +++++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h        |  41 +-
 9 files changed, 486 insertions(+), 252 deletions(-)

-- 
v2 -> v3:
* change the target tree
* add one new commit
2.9.5

base-commit: adfc2495f825bd31c514db14fd5b05bd2985fff7
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
