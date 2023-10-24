Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 593317D4EF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB55A4ED46;
	Tue, 24 Oct 2023 11:35:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB55A4ED46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147335;
	bh=f06Y6qywQeyGKuCraJAfN0FSwzv86gqSem3ZMMocODo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pLswsa2RNAU47RtTdYxDMhJlX9yXJZwFsp0aME+T5EGHjiM5nHU633YbS21Plq17E
	 ApLO1zc8k8Y7rTbJbVvBFkcDQmX685V/Vyi76NC1oOAL+7k24H2cXQESq5yfjDyZen
	 lorz9YBlvNc3Up1dF8rSN+Yhq3qF9FsTChm5Tk6IbPgdNExBMKzfQkNCRtC7KRqhw1
	 zaKtpOwwb/DaWJ4vcSKBdijrnjAgq4A8paviyLcEU9OoBptLq2cBnu9yeyHbGbp2aP
	 snMzfvSdw1EBpGS7HT9Gl6FVhmfr4r7nltRphewUmNaj4vPhLEozXU3c0kj8aJlTPL
	 2D9dDsTXaLK6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Foykvjf_c2Pw; Tue, 24 Oct 2023 11:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C217F401A0;
	Tue, 24 Oct 2023 11:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C217F401A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0498C1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFE1A43122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFE1A43122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ywmRw-iBA2d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:35:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F9A542ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F9A542ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660555"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660555"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:35:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146177"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:24 +0200
Message-ID: <20231024110929.19423-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147304; x=1729683304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3bhAqaROnfOK6CfL0o9BQvxvGocbUJeZ7jqOkT9I820=;
 b=WJ4DGqZQTnbmHqY00dy+wSN+5luofcfwoINyOcbGB0F0nX6u3cusV2YZ
 aqCDrEyBRibyOCHKDp/S0uy43Y+5pHJPdoTU3iuII3yBQllwMONQCBgm/
 k7ElTsHiGrFpQX+dZ3KdDyFSlgmWSz6eeNkVVSOqASBJlSOMs8wfh82vx
 mL9jjR0UcKng1lCPF0t3Z/ig50jX+Z+SsPjRtCgfSBZVYn1bTeqJCjZ5j
 eYTSoTYpv6DKfDW31Xf9VFKqqp7lOapo6BjrA2La0zGak3PB4draSexQA
 a3G2hzOtPi8i5ARUQh5XyEfW50Xtp3EzZ6Ah9JvwoIHHtjQSpiP60WuDv
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WJ4DGqZQ
Subject: [Intel-wired-lan] [PATCH iwl-next v1 10/15] ice: allow changing
 SWITCHDEV_CTRL VSI queues
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement mechanism to change number of queues for SWITCHDEV_CTRL VSI
type.

Value from ::req_txq/rxq will be written to ::alloc_txq/rxq after
calling ice_vsi_rebuild().

Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index ae4b4220e1bb..85a8cb28a489 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -212,11 +212,18 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 						 vsi->alloc_txq));
 		break;
 	case ICE_VSI_SWITCHDEV_CTRL:
-		/* The number of queues for ctrl VSI is equal to number of VFs.
+		/* The number of queues for ctrl VSI is equal to number of PRs
 		 * Each ring is associated to the corresponding VF_PR netdev.
+		 * Tx and Rx rings are always equal
 		 */
-		vsi->alloc_txq = ice_get_num_vfs(pf);
-		vsi->alloc_rxq = vsi->alloc_txq;
+		if (vsi->req_txq && vsi->req_rxq) {
+			vsi->alloc_txq = vsi->req_txq;
+			vsi->alloc_rxq = vsi->req_rxq;
+		} else {
+			vsi->alloc_txq = 1;
+			vsi->alloc_rxq = 1;
+		}
+
 		vsi->num_q_vectors = 1;
 		break;
 	case ICE_VSI_VF:
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
