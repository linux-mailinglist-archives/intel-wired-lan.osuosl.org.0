Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F4372C808
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 16:19:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 801B240CB8;
	Mon, 12 Jun 2023 14:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 801B240CB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686579542;
	bh=cwmngbBH5Mp9B07/1Y9ojFVpLqqoDpbF5PCyZMCOIGI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CXamYNgXVqHyceS0ac7gP/2Zl941f8wMMOnKYaEjfMoAMH0P9Wa9Wgp4neO5b26Lj
	 H7gm/ICqtlKynDOjqviaWKUoyr7FHwY8xhkI00FbwlS8KW+xqWGx/lf58XhY65Rozf
	 QqKiGXu2FvWKK1K1AIPAZQeOyZzuAfLVBLGRrTav8CzCCk8dfEomBqleCw4NAkX63H
	 Wp3hIMuSd/h9G3vnx95JkcIVuBhlfDS/pXIvLPLV1ZSurUWI/dD0+3fYaIwFng06ly
	 1bGf++D/kb3a/rdMCnaNu6SLEmnRLJaHsLJLjMy60lVPYQan2xIgS8FwcDx96uKMu2
	 ar1LOvEupdG9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBEzSpedGhgZ; Mon, 12 Jun 2023 14:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BA6740BA0;
	Mon, 12 Jun 2023 14:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BA6740BA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 578741BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 14:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A95D40BDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 14:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A95D40BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CbajEnEvrclL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 14:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BCD240CA7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BCD240CA7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 14:18:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="358046125"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="358046125"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 07:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="661609296"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="661609296"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga003.jf.intel.com with ESMTP; 12 Jun 2023 07:17:45 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Jun 2023 16:17:30 +0200
Message-Id: <20230612141730.331674-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686579535; x=1718115535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hxFXge1dlw858mECWFoNvKpOjO3jcxV5ZQksWy27lCo=;
 b=hKk2Omd2VDcDAo0O/k2dxQS35uxHFpihQhbhF7XYPDynvm5MMrf2M20E
 By8BAqIdEHyTvwDxoE7slXvjGh+SnN+hbmmaEp+aeMzJYoDyG2i6+ceHu
 TfDvFY3m2bBGipJzvvokmeG3DMaB7zbewkC6PsQFV63TuRX76mSGgWzei
 eUwtKMfko31BoQm1yNjj76VaKyG+dM6tgtSkP1wGnBoPk9XO/YsbKHX1+
 k4FxyfM8U9LvVjbtxLx70kHLlDbL18D4y2V1IJ1zDxx7NkrQxC3X3NDvx
 RwFLwAiw8NHyaP3IF2XcfmIquKVIxjziKdhpMOkrmriD2VaX06oRNGbK6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hKk2Omd2
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_down_up() where
 applicable
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_change_mtu() is currently using a separate ice_down() and ice_up()
calls to reflect changed MTU. ice_down_up() serves this purpose, so do
the refactoring here.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..609df077c314 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7634,17 +7634,9 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 
 	/* if VSI is up, bring it down and then back up */
 	if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
-		err = ice_down(vsi);
-		if (err) {
-			netdev_err(netdev, "change MTU if_down err %d\n", err);
-			return err;
-		}
-
-		err = ice_up(vsi);
-		if (err) {
-			netdev_err(netdev, "change MTU if_up err %d\n", err);
+		err = ice_down_up(vsi);
+		if (err)
 			return err;
-		}
 	}
 
 	netdev_dbg(netdev, "changed MTU to %d\n", new_mtu);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
