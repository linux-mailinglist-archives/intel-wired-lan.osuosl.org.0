Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AC57AA69B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 03:41:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A361883D36;
	Fri, 22 Sep 2023 01:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A361883D36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695346898;
	bh=y1u9B3Uv4AG4BrOq07FJ2MB1pJ3TB87Oju0DGUb98NY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U9Wp60XJDyPpzNEvWTbRHVy5QEXMP+Tb8+p2uP80wFYgyBnejAO+qjTRpoBa1WI+L
	 Z3zK+s3fPHG+vS5jWcvfjga6Sq4zgUAOFEuY7F6exNMw4RLjT2EiVNwHs17sqtHknP
	 RgkkfyArj1ERvEapAKUS4IOWNlxSsDDONW9nGCzzVl39X96GlutVQYhO2uYqlthVw0
	 Njb2ayt+0WaftWfp7SpG35mKn8hOlGfCUkF54DLkDgD5jizNYrXuGFSOsO/r4UdiYC
	 1o0JcstbgPIC3qfcfXdP05KAxvUhKWe/3Bi/+qhz121cAwvgn2gUxX6ILU2h/0cMuZ
	 Uih+SccY5PLRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rb767iCktRSB; Fri, 22 Sep 2023 01:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9563583D22;
	Fri, 22 Sep 2023 01:41:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9563583D22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 561581BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2288083D2C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2288083D2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcBfzoc8S3Cu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 01:41:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C21383D19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C21383D19
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="360099517"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="360099517"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 18:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776666491"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="776666491"
Received: from kemeng-mobl.amr.corp.intel.com (HELO [192.168.1.14])
 ([10.251.15.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 18:41:24 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 21 Sep 2023 18:40:48 -0700
MIME-Version: 1.0
Message-Id: <20230921-igc-multiple-tstamp-vclock-v2-v1-1-aa0971cb0fe9@intel.com>
References: <20230921-igc-multiple-tstamp-vclock-v2-v1-0-aa0971cb0fe9@intel.com>
In-Reply-To: <20230921-igc-multiple-tstamp-vclock-v2-v1-0-aa0971cb0fe9@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>
X-Mailer: b4 0.13-dev-0438c
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695346891; x=1726882891;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=RvuaENZeIewlfnMni/WzgG84HecyY2hEhxMsdZ9Gfbk=;
 b=Y7x2AdgaQyefko7WeUnbgzgALroOzbRBAHHhdpaD6YDpyvjC74sIlIzy
 PFL5CUmys8ZHHwKykY7xn84K1eFs1gJzg/WEqRyqiuSEcupcOzJBnHBnL
 jedsWFW1b6hQ6lAAVW8gIRbaOSKaBM4oO1768Ri9ZGedKLIb/hjyCkERa
 gD0qYGOEXTD6mZ9qRDJn6H0Em8gWhdASuBQfCGzmvuBR8jZfsak4yCYU4
 KcHWDSdmtGIoIY7PFy/BIpsyCFoLjw7bxwg0TrC5eaMmG7sUJ7kb3g6su
 TAYXgo5W6lHbpdHIptimDapf+G6sK5devRVzJ8k6qWL1se8AQ7ky3h12E
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y7x2Adga
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] igc: Simplify setting flags
 in the TX data descriptor
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We can re-use the IGC_SET_FLAG() macro to simplify setting some values
in the TX data descriptor. With the macro it's easier to get the
meaning of the operations.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 293b45717683..6be8dd536e10 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1299,14 +1299,12 @@ static void igc_tx_olinfo_status(struct igc_ring *tx_ring,
 	u32 olinfo_status = paylen << IGC_ADVTXD_PAYLEN_SHIFT;
 
 	/* insert L4 checksum */
-	olinfo_status |= (tx_flags & IGC_TX_FLAGS_CSUM) *
-			  ((IGC_TXD_POPTS_TXSM << 8) /
-			  IGC_TX_FLAGS_CSUM);
+	olinfo_status |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_CSUM,
+				      (IGC_TXD_POPTS_TXSM << 8));
 
 	/* insert IPv4 checksum */
-	olinfo_status |= (tx_flags & IGC_TX_FLAGS_IPV4) *
-			  (((IGC_TXD_POPTS_IXSM << 8)) /
-			  IGC_TX_FLAGS_IPV4);
+	olinfo_status |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_IPV4,
+				      (IGC_TXD_POPTS_IXSM << 8));
 
 	tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
 }

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
