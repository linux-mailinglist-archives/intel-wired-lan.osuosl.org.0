Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A4B6D3CAD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 07:13:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 208934030F;
	Mon,  3 Apr 2023 05:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 208934030F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680498809;
	bh=2efaaQMtA+/AMWKU1Fme1fpK+5lCfwIusVuOdK6QOMY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=szvqNMr73HoNxJxDckg1uhE5qX3Q90y13rGCkMI7i3CcwwvQ+0JajnQ541THZBq71
	 aKo6NCbbtyIA/u1PjXYRAzk9f4X4Mtbzm2GKEu17+MIdwDly54rS+8KnxM95TSV0eI
	 xwvKXmwvc+oxPlCUGgIEsmUgHvn1nCWwFqqb0We3wOcD3BGeaK+q5E1u6wdfTOTJwz
	 tNf66I2C6E5c9G5uGFsofiw5HPPUPWVLH7wL+xLc5F7DbGAG62uyxeTpH6nUmc4M8P
	 R7xD1miX4+HdCm9PYleoNYFxNWduGpzenT6cDRjwy4nPvTwTCEb6idT8arAJgV3sUc
	 owMPfF5ZjUI8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Jf3B3paW1K0; Mon,  3 Apr 2023 05:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CB85401E5;
	Mon,  3 Apr 2023 05:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CB85401E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D4381BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 05:13:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31ED160D5F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 05:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31ED160D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zEiXoNz1dmko for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 05:13:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4242606D3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4242606D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 05:13:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="428098113"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="428098113"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 22:13:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="829425331"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="829425331"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2023 22:13:19 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Mon,  3 Apr 2023 07:13:18 +0200
Message-Id: <20230403051318.913534-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680498800; x=1712034800;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7XYMH0h4bEEZubDyfkKVRTqqWu+5FDP5rQF9bZvRJ4o=;
 b=ByEIlxmemXLv+1OOiyeh3c3BzdMwyGe+tMp3RMTlC3aU31aDA1hPGsCm
 Taei160lnao/1XinJCXwDMAGcyHNZS+esEKiVsopAVCKMU971F3mxoZal
 CsJxCqI5DERGosyh0GNyppxf6GKwCJOuQ0Ano9UJNNXXm2FNdznhG8KNJ
 IERq/1Nls309aL9XYbehaS0072dh8+3h0+bDzkpVnb1BoP8O8y/75ubVK
 8G1e1L7SZAj44/AraVWUTWrg1zuC4iViG9V+gg+FKqqRqqhvVjYSN18AO
 JCFHxgBg3ooXhIXJp4UBcGj7xbtTsXl/ZO8wDGmbWw3EOWnFIspDLFYNv
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ByEIlxme
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix i40e_setup_misc_vector()
 error handling
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

Add error handling of i40e_setup_misc_vector() in i40e_rebuild().
In case interrupt vectors setup fails do not re-open vsi-s and
do not bring up vf-s, we have no interrupts to serve a traffic
anyway.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b1b781d..d0604ed 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10898,8 +10898,11 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 					     pf->hw.aq.asq_last_status));
 	}
 	/* reinit the misc interrupt */
-	if (pf->flags & I40E_FLAG_MSIX_ENABLED)
+	if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
 		ret = i40e_setup_misc_vector(pf);
+		if (ret)
+			goto end_unlock;
+	}
 
 	/* Add a filter to drop all Flow control frames from any VSI from being
 	 * transmitted. By doing so we stop a malicious VF from sending out
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
