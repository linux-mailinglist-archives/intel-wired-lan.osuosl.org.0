Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDC17030C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A29E841D62;
	Mon, 15 May 2023 15:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A29E841D62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684162844;
	bh=K5Jc841NivjfBB80APcuFfY4sIVo02lhoePG4m8tHkQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZdD8nBcaT8VpGQaCxxgnnjCEJjM5B66A58IbrhhB4TJ+5ogtwTGlXYxAGDxg+s/02
	 0iERW3S2dDDFbHdDk002jIE943cebVwgnt9e6O+EB+aLKrU9hiZ2jVGL64uarcvlFW
	 FlAJbT6LNgYC5LBnYt5+1QPNsxZJMM3xQoNiz7OJ0Aa9yxT9i4AU/1vJBj5xDO00HG
	 ctCYEqArvmyjWPCAUP/XXkWBjtFyznctotIoqgSA7ICzTy0EHwDMoSHtwipLRF04fM
	 rmJDrd1Ov2zooUW3EL4gickcOGwbXEQjMFqg8GMihXUZbF7KxBSg649eGadS6pqSKk
	 E1wo1XUIQeZfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-zpCt84e_td; Mon, 15 May 2023 15:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84D8541D55;
	Mon, 15 May 2023 15:00:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84D8541D55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F45F1BF575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 426696159F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 426696159F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bN5JryAgzTm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 15:00:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4789461571
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4789461571
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:00:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="335763910"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="335763910"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 08:00:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="1030929683"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="1030929683"
Received: from pgardocx-hp-z6-g4-workstation.igk.intel.com (HELO
 pgardocx-mobl1.igk.intel.com) ([10.237.95.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 08:00:32 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 May 2023 17:00:13 +0200
Message-Id: <20230515150015.239205-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684162837; x=1715698837;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/NYTFGXOZXRNpPe7mMgjROZtbPlZHv/Y2G9kdVJiHK8=;
 b=LnbtfDjATqtFRyi1hVohZxSQsmNAO9YvlMSOEcAURIxFfA1ZgOt9BxA5
 FMqKEe3h9R5iilzVl0cRWqWzLqejqw7NyfAVj5u1mK4ZTfCIQXF055Fj2
 HxFF+IHJPZiHJTMbK/6vxfGpuUWoiPnjDSBPIlD4JFQwEUSXVbyV5MmYR
 8CZv9GPiRV3NVNKqct/56idqiStjeMkkk18lEg2RtYWTIVbtA24tG3wgc
 qGhrC7Ib8dHR6FXPTlpKL3C3N3nQQemJkqEE6Aq93FKCs5AmPyI4SDJq+
 6QLez47axd8TnKa8J8SVfb2J+x3TPZGr/ajn148P88DV+Lfbg85x+g7xo
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LnbtfDjA
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] iavf: cleanup procedure for
 changing interface's MAC address
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
Cc: przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset cleanups .ndo_set_mac_address callback in iavf.

The second patch addresses potential issue with iavf_add_filter function
failing to add a new MAC filter to the list. However, it does make
an assumption that the new MAC address is different than the current one.
The first patch protects from this issue by skipping the entire procedure
if the MAC address doesn't actually change.

Without these two patches iavf is sending two AdminQ commands to PF driver:
VIRTCHNL_OP_ADD_ETH_ADDR to add new MAC filter and VIRTCHNL_OP_DEL_ETH_ADDR
to remove the old one. Even though it does not seem to cause issues, it is
very error prone. Skipping these callbacks is more reliable.

Piotr Gardocki (1):
  iavf: add check for current MAC address in set_mac callback

Przemek Kitszel (1):
  iavf: fix err handling for MAC replace

 drivers/net/ethernet/intel/iavf/iavf_main.c | 48 +++++++++++----------
 1 file changed, 25 insertions(+), 23 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
