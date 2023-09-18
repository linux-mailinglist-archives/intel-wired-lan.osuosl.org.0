Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 522977A410A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D502341828;
	Mon, 18 Sep 2023 06:28:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D502341828
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018482;
	bh=o2+HIiZLRpZCEMO7RtQ8TXw2xg8ATWeXxyNnPsni3tc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C1+BpuxHGOI1TLmooCpJ+GnGr6gr39fkjPJMHrXaEgdsbqThYHD65URtGQ25tXmyJ
	 rvgUZ0AcvzChqm/1K4kVI0VLG/yq9+Mgf4UEFN6WAGt6sZfbUhP2DZPimPU8zK2yqA
	 0gdLXDOXdY/3AOSDQn13eifzXCbCOodeeb0jRvNeJPu1GW1P5fi/V+Ia/quCzriDyo
	 aiz6pAasx0QjiXUkk8UYJxGNHA9DqplaGCHH0DetmXCcH6allRsvqFiwmZuwzWFSu1
	 ZQBKFn89nzjb3qfurb5ncgEo+s7eTRt6nuT0B4kxYvTOhBuBW7R8cz87hIE5VNvTDu
	 VKlZ4FbeYH9Pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3ZYfmreTVzW; Mon, 18 Sep 2023 06:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A827A41824;
	Mon, 18 Sep 2023 06:28:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A827A41824
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DFB51BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB986411A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB986411A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MjGKUgCZO7nz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:27:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4772E40C0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4772E40C0E
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488473"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488473"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893364"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893364"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:27:49 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:34 +0000
Message-Id: <20230918062546.40419-2-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018475; x=1726554475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+N6SUzAHNndnwKrBhBL4M+fSkr/yc6MgkvTjYgc1qew=;
 b=UUUhMl+oUCbt48j2RFZsYR8/CHEXUMjfjlKOAam2XMBvqQitzBWShemU
 32rYdobCJNWr/Dw1CssjEe2OCZRG9mAQuZmDM2IuQi5XdY96/BxXhCxoq
 85xqkdcCxqMSntUOvyj9aG7vRgkQ65ZH151DgYQYC9ZEOsQ3rbaxHqHW7
 j3nE1fwS81E2498BjuDNgtjmRDfCkr1P8jd0JZVf8R7QXkX7b2UqW2mxS
 dIotojy7vuluAczwDuPsLH7xjyIc0Agup4UFAuTtgh18Toleiyga6G+W9
 P3D1eDvvTQ6rDsgNnwAgq2wjj0W2TMoQ2FC10FgWG9oABOu6Wfet5rFFB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UUUhMl+o
Subject: [Intel-wired-lan] [PATCH iwl-next v3 01/13] ice: Fix missing legacy
 32byte RXDID in the supported bitmap
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Xu Ting <ting.xu@intel.com>

32byte legacy descriptor format is preassigned.
Commit e753df8fbca5 ("ice: Add support Flex RXD") created a
supported RXDIDs bitmap according to DDP package. But it missed
the legacy 32byte RXDID since it is not listed in the package.
Mark 32byte legacy descriptor format as supported in the supported
RXDIDs flags.

Signed-off-by: Xu Ting <ting.xu@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index cad237dd8894..3bf95d3c50d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2657,10 +2657,13 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 
 	/* Read flexiflag registers to determine whether the
 	 * corresponding RXDID is configured and supported or not.
-	 * Since Legacy 16byte descriptor format is not supported,
-	 * start from Legacy 32byte descriptor.
+	 * But the legacy 32byte RXDID is not listed in DDP package,
+	 * add it in the bitmap manually and skip check for it in the loop.
+	 * Legacy 16byte descriptor is not supported.
 	 */
-	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
+	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
+
+	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
 		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
 		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
 			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
