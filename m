Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1FF6A54B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 09:49:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68C7A41299;
	Tue, 28 Feb 2023 08:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68C7A41299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677574168;
	bh=OQXhlB+VpBT+svGazCUpFCSbDjRmVcJPIWswq2yeGaE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=r49uJmDkJBnDIdKLZrFqiYe2cv5CMdO2XXsd30mgWcM5baOv53Ee3kE9S10TUPk7Y
	 QQ4CpIHCTiKCAPpwP0lkPC0poGHo+vN69syDz1/AX9T7EeyvhF4DQF6FfwXpRpeK6o
	 mbjBrb5jVG3Y9emqe3gYnGdZXOix6wywcGz7TeXWX57KDUgNtA0G9BxpJsfdHbMwM8
	 LqxrixmNNyA+lOcaqKIYs3H6OCRBmqH80mZqhieINryVEnwhClED+32oudgkiMsTGz
	 kB4V499U6iN2b4nV8fi5DYuXkhhV++vCbe1Xx4b8j5jovw8artO4hFtjzwz/XuOxDs
	 DGAyY12zlkuCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3Kz5NZpOABx; Tue, 28 Feb 2023 08:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21B9F409A2;
	Tue, 28 Feb 2023 08:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21B9F409A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5C4D1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 08:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ADA98402EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 08:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADA98402EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJYzlchfMjSz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 08:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E290400D6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E290400D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 08:49:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="317884827"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="317884827"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 00:49:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="706506987"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="706506987"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by orsmga001.jf.intel.com with ESMTP; 28 Feb 2023 00:49:18 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Feb 2023 09:49:15 +0100
Message-Id: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677574160; x=1709110160;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rANLstLET0Aycwc4eLGO/FmMZPbbWRwyVJE64zPhCwA=;
 b=ER0qLRmjB1ZNSuMm7qPHRUryZheDgPvPVkQEEgi2VC+EzhYu9ruFGYsk
 5jgxjrI/mwVwFRT2Eo3WMRcc/Myfw7XV+r43XwMJM1dpFTcZ9TQACYXFm
 5RsmJrsaQW9rDnEtwcmEBGfK+gelk7jEEEd2erSM6XkmwAyNboDUjoPab
 XUzuzDoX9C5Ib6ktxfdNkVuRWviNV3QrpqASGTvqL2JRmzJGrhJnFnDgD
 5U9iBzXKFh4VaVOOi3NwkF6ZjzlU161a6EcPcCZyliImPUDb0oQU0W4h5
 frdsX4Kmpxlu0tmh4A8yT/xknFzoyy25DtFV+KbK/k16O8Q6NRmIL5f1b
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ER0qLRmj
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32 to u16
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
Cc: Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@intel.com>

Fix implicit cast by changing argument types of two functions to correct
types.

Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index d71ed210f9c4..830fa53b5e0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -701,14 +701,14 @@ struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
 	return bld;
 }
 
-static bool ice_is_gtp_u_profile(u16 prof_idx)
+static bool ice_is_gtp_u_profile(u32 prof_idx)
 {
 	return (prof_idx >= ICE_PROFID_IPV6_GTPU_TEID &&
 		prof_idx <= ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
 	       prof_idx == ICE_PROFID_IPV4_GTPU_TEID;
 }
 
-static bool ice_is_gtp_c_profile(u16 prof_idx)
+static bool ice_is_gtp_c_profile(u32 prof_idx)
 {
 	switch (prof_idx) {
 	case ICE_PROFID_IPV4_GTPC_TEID:
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
