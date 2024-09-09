Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCCF972589
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 01:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 155CA6082F;
	Mon,  9 Sep 2024 23:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ugUJB8CsogXx; Mon,  9 Sep 2024 23:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 611386082A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725923156;
	bh=M8lSDojJMqExHeQhvhwBwQgR1kFv1TpC5+XOvo6Efjc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=q3IK6HZfOsAv0VkkoKwc7vFDwvdmPlu/tdyfdmBw37pSXSqJJiEANN4CnJVLXvKE7
	 u5Qc7pZmuXg2k79eV7PYndUQwmPSubvq1pOeSPkIADRu3eQxZz93f8Ql5VV3wEHMbQ
	 zZNpz6q9heNWwLMfAqAZe8m/QLMY4YcM64n3urI+BLwwg2ks7Uts9T6VTEp2wAlv4A
	 Le8BqAqZIgsHZg7NFPVi/K0rwuJjS3bJydx12DKZfgJj/fcN1QE04f/RPrcr1BV773
	 Ta6traK8xyxpq7O3BEaSy5HvBdBQSz8jbA2Ar/XLZyuT+lEDPx4+QdRnTTm/UTU/Oa
	 vU0nTSc1aH0LA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 611386082A;
	Mon,  9 Sep 2024 23:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3248E1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D8BC80ECD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJ2ku_hwFMl6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 23:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59DA180E56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59DA180E56
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59DA180E56
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: DBj95c+CTiWJacH/sYINxA==
X-CSE-MsgGUID: m8O6gUNWRLehAk4X65nD3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35312316"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="35312316"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:05:52 -0700
X-CSE-ConnectionGUID: Tp4BtCPvThSdtAEjBypVng==
X-CSE-MsgGUID: WZANTWN2RxCKFeLNwvEPlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67358474"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:05:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 09 Sep 2024 16:05:42 -0700
Message-Id: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-0-e53a024980fd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEZ/32YC/x2NQQrCMBAAv1L27MI2iLZ+RTyEzaauxliSGgOlf
 2/ocWCYWSFLUslw61ZIUjTrNzboTx3w08ZJUF1jMGTONNKIMvSEQYvgR6dkl+bj643FY6pOHXI
 QG38zEgkPnvli7BVabU7itR6nO+g/YJS6wGPbdmU3wPmDAAAA
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725923153; x=1757459153;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=GopZKCulJ6M80iPwjrkTC6wT4nuvsWJCCIsQXXFLwRY=;
 b=W/TgwwBaG2IaKcFjFUePhYdhvVUHX9PWclYYrBetjq0ZY509EK/MyUQI
 mKkgFn7boKzwObBnG6PdwAyw+6ipTk+rlU9085XzJINR0FJbkn7Ni3H2s
 kQldW3MRDhxCe9+RkBzQef70/uMEB5t0mcY6IkXmNWUuTmGyO31UUnwoV
 hQ5SkpdnOQ4Q3d1QROWajNJhBPB0EdOCPQHUaVQck1HvUnIsMfLnAtmpB
 WfWtzs+51kTi2J8l4QwNx0WmKeufzVxQ+SZ2cBhqBF0fyJWPvCAVAIc/0
 jlLhRJ7jwq9y3Y0PuTYG4hbN2NPf4caMiCLIpOblTHHy1GVwGeoRxbQRJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W/TgwwBa
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: simplify handling of
 supported RXDID descriptor formats
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The set of supported Rx descriptor formats is being read out of the HW
registers every time the ice_vc_query_rxdid() function is called. This
happens whenever a VF requests a non-default descriptor format.

This is unnecessary as these values only change when the DDP is loaded. The
values will also be necessary when enabling live migration, as the
migration logic must check that the Rx descriptor format is supported on
the target VF.

Refactor the logic so that we load the pf->supported_rxdids as soon as the
DDP is loaded.

I also noticed that the ice_vc_query_rxdid() function was unnecessarily
allocating memory for the virtchnl payload. This is an unnecessary waste
since the structure size is already no larger than a pointer.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (2):
      ice: initialize pf->supported_rxdids immediately after loading DDP
      ice: use stack variable for virtchnl_supported_rxdids

 drivers/net/ethernet/intel/ice/ice_main.c     | 31 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 36 +++------------------------
 2 files changed, 35 insertions(+), 32 deletions(-)
---
base-commit: bfba7bc8b7c2c100b76edb3a646fdce256392129
change-id: 20240909-e810-live-migration-jk-vf-rxdid-cleanup-00ec8fcc62a7

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

