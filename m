Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D7177D754
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 03:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1FC241BA1;
	Wed, 16 Aug 2023 01:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1FC241BA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692148055;
	bh=UYg/+H2DKBQiYej3GFM0zvP3THxfSQtIX9oeNfcsLj0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZddwrYOYx4NECCUKGBpt1uzB+jFMVPaR2pmKCuqI7Ngul/ddIjPn3wqLW65pW3lv3
	 o74UmWVULgI0UOpOqtuQwLfrLVJO7ApmfC2HQCLtaJG2+qqtTrMGceRUGeBQ5ZucIh
	 U33hL4HmVgcoJhHwzBeQHIssrTGZcs8cxYmIntoa3/WCp0/oVYi5spzGeuvEjbqOGU
	 MRRDngEfixczMrvxRwtfsP1ujfxvVikK9FV7O7oqVwbLDXbShfz9ygQRmLRD7ex3Hx
	 2LccoNNj7MfkmOQIoca3m8K41Rm8k6I97zumc60pI2OFVMXqy4F6hLmOOid8T4UC/b
	 qEXXKFaf43Afg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAotEc4dwZbY; Wed, 16 Aug 2023 01:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6906C41B99;
	Wed, 16 Aug 2023 01:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6906C41B99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1AD61BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6C5B611FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6C5B611FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFxk-ldhHkhS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 01:07:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8934F611FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8934F611FC
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357388354"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="357388354"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 18:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824049534"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="824049534"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 18:07:14 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Aug 2023 18:07:05 -0700
Message-ID: <20230816010705.1360446-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816010705.1360446-1-jesse.brandeburg@intel.com>
References: <20230816010705.1360446-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692148035; x=1723684035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CIN0ti0766k5wQG04GvB0R0/B6CI+Vdzk7RbnzyQ6fs=;
 b=bARC7NzbDP1mFErECGIpfsBJNRbWFvdzSRUk1DwvaQ8OaSXKJBkuiID/
 4T3FZsTp3hYqNpdFV3ht+jjs7Hy+cO8otvthWpZbalv+QMPylhwFO5/Gw
 5rRe+0MWzHlCAR0Fr7iYdPUmEcbKUoxcxB4RWmdRaV0mm1cOL0bh7mQGd
 tyXBl9/aj817dp972pRGRZzkSDccX+KpgGyqqGvdW+3bUa8V2tRNpNzVe
 PKZdGQmBMVB06obLsgg04X4m6fXed4mAl58uMmZwVIbcpxWZT00JY1xbb
 zgmLclmo4S6IKQPd9cMfkaCY14O9rJInEQE/6ONc6mitjA4cou3LDqxj2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bARC7Nzb
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: trivial: normalize
 strings
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While reviewing this code I noticed two strings being printed from the
driver that are reporting status, but calling it err=, so fix up those
messages. This better matches other locations in the driver where we call
that type of return value print "status=".

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 026bfa71204f..250236bd84c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -69,7 +69,7 @@ ice_gnss_do_write(struct ice_pf *pf, const unsigned char *buf, unsigned int size
 	return size;
 
 err_out:
-	dev_err(ice_pf_to_dev(pf), "GNSS failed to write, offset=%u, size=%u, err=%d\n",
+	dev_err(ice_pf_to_dev(pf), "GNSS failed to write, offset=%u, size=%u, status=%d\n",
 		offset, size, err);
 
 	return err;
@@ -310,7 +310,7 @@ static int ice_gnss_register(struct ice_pf *pf)
 	gnss_set_drvdata(gdev, pf);
 	ret = gnss_register_device(gdev);
 	if (ret) {
-		dev_err(ice_pf_to_dev(pf), "gnss_register_device err=%d\n",
+		dev_err(ice_pf_to_dev(pf), "gnss_register_device failed, status=%d\n",
 			ret);
 		gnss_put_device(gdev);
 	} else {
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
