Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7290776138
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 15:36:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 832BA414ED;
	Wed,  9 Aug 2023 13:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 832BA414ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691588182;
	bh=HTSNCBELZq2DiME8KnmNWtr864r9mPP9AF6wOdY2aR8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lRJrTVQZXiF7O9mvTZjui8HhkviLyF//QKsGj70MNSlk6/6zDYshtB1S+njPheVbY
	 oJb/6TpUzNFfx7yRzb8mSM4F99GiKHtbPbTTSSypb2P54FLX0E8KOo1otENPoARx/7
	 x1sQ00gtNjpkJ7blLEVBvI7JbybdLo31ecRDiByyfx22/3bBlEgvKKiIatUdgXNyGj
	 NKAddFxJV/KvJYT+W9xWzQhA81rj2DL5FfHJEjyzY3fmltTnXWfXgCWDinFMUGcFj0
	 +NuePovOsJD8IcdkSdtB2TuyH/bgNenJk196xli0gV0rr55cGDRt+4J152lY/M2YXo
	 mMWv+qDIY9fNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sDf0CChXi9w; Wed,  9 Aug 2023 13:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DE27403A4;
	Wed,  9 Aug 2023 13:36:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DE27403A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5361BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 710C060EFF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 710C060EFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nD1zgB-MVSnI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1C836118F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1C836118F
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="402086886"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="402086886"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 06:35:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725401530"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="725401530"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2023 06:35:30 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 15:39:13 +0200
Message-Id: <20230809133913.2652736-8-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691588147; x=1723124147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UbDGn8ZV0T/4Lvatzl7njpswjKBy3uAsEqhF8iGOQDQ=;
 b=G+68lL8+q5s6ceZXjzp1MhHUj2Gqe/tTRoiesN7YVCASe50dxiYqZnuH
 y1gRY4ih/uFp1br379YjiuvcfDkhkKG66KmuVq8j4TlrFSOT/h6O8v/hi
 JGRga1IxCXzJOchKTP1ardZU27rCtSsdTrIObY/R3A5AtuF/5ZQKyEOJ8
 LTJnG+nEK/znmBYVgUozfwnCIFRgZS+noGsWDjiPH7ds/Z5P9oSHsZFXn
 e2m0xUUCUVuUS6KotloN60t27IKcjZOH6UQ0f2PDhFR5kKDRqyAUtMKeo
 CDWa3tbWgyDFeCNdnW8fGkkXcnGu9dWeGrOFIQ/BzJbyhGePBe/CcLo0J
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G+68lL8+
Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/7] ice: refactor
 ice_vsi_is_vlan_pruning_ena
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As this method became static, and is already called
with check for vsi being non-null, an unnecessary check along
with superfluous parentheses is removed.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d3fb2b7535e7..201570cd2e0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1235,10 +1235,7 @@ ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
  */
 static bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
 {
-	if (!vsi)
-		return false;
-
-	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
+	return vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 }
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
