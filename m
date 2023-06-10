Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2D672A718
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 02:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49EB961665;
	Sat, 10 Jun 2023 00:44:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49EB961665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686357853;
	bh=+Oca71R1l3nCBoGe3VZdo7uxeMQM+T39Uv8dA4MlLhI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D+Od2P2qIvvSYLtUOEVE0KjVYwCwwKZch0u2u/RD+XXlubCvVl9B++GJHZv/M8fMW
	 iEeU/OA4Car2Hmagbj9g/QhZuN1WL/fShU5PwqvrKgQsnQ5F4s2cEwRNOXXa22vWAa
	 jl6/oABqml2uMmGoFjibPKV1pT+Cdo+0owLP5BRhpIuhkjcIyJU1re4YEfcSHslijw
	 ut1RNlI8LpbEQXgJVfMKGCiKnN5mHaP2uBLkMy/rXvJWGj37o3dw4VTzug1PusQWnQ
	 HAvwFCZ/NxtK1bz8dqpzeuv2s3K8QAdHNiEEZgoU35yXZMB/OlyJ3aH587RrIZ50Ej
	 WwVzhGjhvvyUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-dYdMFzWhR6; Sat, 10 Jun 2023 00:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2A1760B5C;
	Sat, 10 Jun 2023 00:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2A1760B5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43A9E1BF372
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19CE6400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19CE6400F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SrOFc3LPo0Ti for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 00:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FC7440143
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FC7440143
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386082835"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="386082835"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 17:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740343114"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="740343114"
Received: from msu-dell.jf.intel.com ([10.166.224.119])
 by orsmga008.jf.intel.com with ESMTP; 09 Jun 2023 17:43:55 -0700
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 17:40:23 -0700
Message-Id: <20230610004024.2422272-2-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
References: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686357837; x=1717893837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0pMcu7+HWtgvPsfGBQ/apO3+IA4RaSO93xfYiF1+PFE=;
 b=GYQCO5b/Me/Q1tvGgPvc+iGVa54UMAPCPqNoB4uv2JNPLI/vB5kJuTn1
 07M4V8ry2tjP55Xic0DIBZ1RCAbLryDxxYMIJXO1yLKSsxb83JGE7cTAp
 VabL92a9j+aGJoJDDPsO8FUrU/YHBglrbrRZj309BUvt/nzOh9M8STPF9
 Z/iXfzi5V1aBJVn+l8DEnHM7eXPjrCHTNXR9/tRoH4hpkm5X3e/jaY24C
 vRw2zve1gJoIs9cioh5JUvWOQQ/Oq+3g6+YshCiEOeaTyBjAHYCf5F0gU
 iYV1FoRlN8OIKOf+KiXn955Vfnbhag8NxJr8Ekb816vW14tR7ryThoox5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GYQCO5b/
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix max_rate check while
 configuring TX rate limits
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
Cc: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sridhar Samudrala <sridhar.samudrala@intel.com>

Remove incorrect check in ice_validate_mqprio_opt() that limits
filter configuration when sum of max_rates of all TCs exceeds
the link speed. The max rate of each TC is unrelated to value
used by other TCs and is valid as long as it is less than link
speed.

Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0d8b8c6f9bd3..043589ff2a7f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8095,10 +8095,10 @@ static int
 ice_validate_mqprio_qopt(struct ice_vsi *vsi,
 			 struct tc_mqprio_qopt_offload *mqprio_qopt)
 {
-	u64 sum_max_rate = 0, sum_min_rate = 0;
 	int non_power_of_2_qcount = 0;
 	struct ice_pf *pf = vsi->back;
 	int max_rss_q_cnt = 0;
+	u64 sum_min_rate = 0;
 	struct device *dev;
 	int i, speed;
 	u8 num_tc;
@@ -8114,6 +8114,7 @@ ice_validate_mqprio_qopt(struct ice_vsi *vsi,
 	dev = ice_pf_to_dev(pf);
 	vsi->ch_rss_size = 0;
 	num_tc = mqprio_qopt->qopt.num_tc;
+	speed = ice_get_link_speed_kbps(vsi);
 
 	for (i = 0; num_tc; i++) {
 		int qcount = mqprio_qopt->qopt.count[i];
@@ -8154,7 +8155,6 @@ ice_validate_mqprio_qopt(struct ice_vsi *vsi,
 		 */
 		max_rate = mqprio_qopt->max_rate[i];
 		max_rate = div_u64(max_rate, ICE_BW_KBPS_DIVISOR);
-		sum_max_rate += max_rate;
 
 		/* min_rate is minimum guaranteed rate and it can't be zero */
 		min_rate = mqprio_qopt->min_rate[i];
@@ -8167,6 +8167,12 @@ ice_validate_mqprio_qopt(struct ice_vsi *vsi,
 			return -EINVAL;
 		}
 
+		if (max_rate && max_rate > speed) {
+			dev_err(dev, "TC%d: max_rate(%llu Kbps) > link speed of %u Kbps\n",
+				i, max_rate, speed);
+			return -EINVAL;
+		}
+
 		iter_div_u64_rem(min_rate, ICE_MIN_BW_LIMIT, &rem);
 		if (rem) {
 			dev_err(dev, "TC%d: Min Rate not multiple of %u Kbps",
@@ -8204,12 +8210,6 @@ ice_validate_mqprio_qopt(struct ice_vsi *vsi,
 	    (mqprio_qopt->qopt.offset[i] + mqprio_qopt->qopt.count[i]))
 		return -EINVAL;
 
-	speed = ice_get_link_speed_kbps(vsi);
-	if (sum_max_rate && sum_max_rate > (u64)speed) {
-		dev_err(dev, "Invalid max Tx rate(%llu) Kbps > speed(%u) Kbps specified\n",
-			sum_max_rate, speed);
-		return -EINVAL;
-	}
 	if (sum_min_rate && sum_min_rate > (u64)speed) {
 		dev_err(dev, "Invalid min Tx rate(%llu) Kbps > speed (%u) Kbps specified\n",
 			sum_min_rate, speed);
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
