Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 021084A4CA6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:00:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9960C8328E;
	Mon, 31 Jan 2022 17:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKbj6Ei27AAy; Mon, 31 Jan 2022 17:00:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20289830B8;
	Mon, 31 Jan 2022 17:00:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 878211BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 742E84136C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DeGReW2XBLIE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:00:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D13D5410D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643648430; x=1675184430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yF5AAsdP6nS9Xwa4SwPdGX6E6rMGLetxD6OTlvMlByo=;
 b=htG6AKU/oL5CVogV5vw7c5N84kk+odfTuUqI845VriEJsbSDCjumIoht
 mIM+EAKZFJovLU/Xw5NBe7yMmSZQoDxVuIp8QLKZSjDtxIlcLMEf8DAex
 U7HRQ8C846BAScKdF2jNE9tDc3si1mp596Dn2JkZ09/n6GRML3Q0+8QNj
 97ax8ES31VWJqcivKOnrXCIC/qD4ZO31Un8LB4Q6X/1wKWB9EL5BVNkog
 bMx5KibSdyropDv0sHrTeLQCRxJVaGFlv94dZtimh+yMpaUSp9vAdIFCj
 D9PCxSw9pt6XN963yFZI4/3dzx2q+GHPGwPyM0C3Gq0bx4uQJ4wHNQlnm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="234897918"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="234897918"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="537278671"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.33.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:26 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: epg.nat.hpm.dev@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Jan 2022 10:59:18 -0600
Message-Id: <20220131165921.1392-1-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH for-next 0/3] Add DSCP QoS mappings for
 RDMA
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series adds support for using DSCP QoS mappings for RDMA on Intel
Ethernet 800 Series devices.

One the series is reviewed, a shared PR will be created from intel-next
for Patch #1.

Dave Ertman (1):
  net/ice: add support for DSCP QoS for IIDC

Mustafa Ismail (2):
  RDMA/irdma: Refactor DCB bits in prep for DSCP support
  RDMA/irdma: Add support for DSCP

 drivers/infiniband/hw/irdma/cm.c         | 24 +++++++++++++++-----
 drivers/infiniband/hw/irdma/cm.h         |  7 ++++++
 drivers/infiniband/hw/irdma/ctrl.c       | 39 ++++++++++++++++++++++----------
 drivers/infiniband/hw/irdma/i40iw_if.c   |  2 +-
 drivers/infiniband/hw/irdma/main.c       | 10 +++++++-
 drivers/infiniband/hw/irdma/main.h       |  2 +-
 drivers/infiniband/hw/irdma/osdep.h      |  1 +
 drivers/infiniband/hw/irdma/type.h       |  4 ++++
 drivers/infiniband/hw/irdma/verbs.c      |  4 ++--
 drivers/net/ethernet/intel/ice/ice_idc.c |  5 ++++
 include/linux/net/intel/iidc.h           |  6 +++++
 11 files changed, 81 insertions(+), 23 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
