Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F0472E2CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 14:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8786416EE;
	Tue, 13 Jun 2023 12:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8786416EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686659089;
	bh=9y/9GsKY6zjS+HqsnUsUt/ybJ2BEWiVGFHC1IhSbnIw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3ivPt1mgj1rx0czkZffRJ1mVytC4d5Ec3v5SxMPQ+1qDBsLPvo/QW9IKhgm9mGA5r
	 26bFHQPmrqswjsDD0VAzLLOydMOgcH/fCHto9Jzqa47LHiiT/fJl7100B3TlsnU3Wy
	 N04re6YUwg8iLHUyfmABr3CLgjcz8OsnTP8ZWEGcaX/YhJP3QrhGub6IcDSXoAn3T6
	 Vn/SfofiCldOP/pE+mvkssjFWkUnztJ8dPkCGlu6s9U7kX1JZss+VrXMftBIzRh5GI
	 SqNgxCr77X3+JBWMzIDP6A2SpN4Qs3K+I6YkwMed7CFq3E/FCy1fj0jOyvP0wvRaeC
	 zomLosgao0ppA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQGyCW7eH5dN; Tue, 13 Jun 2023 12:24:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CB724158B;
	Tue, 13 Jun 2023 12:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CB724158B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C05E01BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7228822C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7228822C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ouD3DCXFWWNm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 12:24:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F04BB8214C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F04BB8214C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337951237"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="337951237"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="835872008"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="835872008"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:24:34 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 13 Jun 2023 14:24:20 +0200
Message-Id: <20230613122420.855486-4-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613122420.855486-1-piotrx.gardocki@intel.com>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686659077; x=1718195077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aiy2x7WzA9Zv0AUyWsyvj/l73+iJBj7g8yRezUPEHv4=;
 b=N2ermxKc7hpA2JFa9qmCTuTtAYC+jCk0KJV0jHm1EB6EZioydplLP0Zx
 p2M+MFOV4mIv/LqPaV1R60HY0neARk0/CDtTxgio0p70PL1FJBYQuMrRH
 A0CwS84kdU4E5qFUqJZ2gK/E/tpj2k4xmPuW0793WBrYNe9EZ1AFHAxnB
 ejI9S8v7oaneu+CWrQnLThlWYfVpP4zTXfKtsskTx9r6+J3HNov2Z19Ri
 FmCCL8iNPavF4LblRQz1DEaQbgkwZi7S9qW+CuKKN10I6T2Yicgi0BJCX
 oW421h8W9rl0ujKCaVJbwq+7ZMIteFUTThXYe7foFSDcFJgpAluuAcBmg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N2ermxKc
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove unnecessary
 check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The check has been moved to core. The ndo_set_mac_address callback
is not being called with new MAC address equal to the old one anymore.

Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index caafb12d9cc7..f0ba896a3f46 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5624,11 +5624,6 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	if (!is_valid_ether_addr(mac))
 		return -EADDRNOTAVAIL;
 
-	if (ether_addr_equal(netdev->dev_addr, mac)) {
-		netdev_dbg(netdev, "already using mac %pM\n", mac);
-		return 0;
-	}
-
 	if (test_bit(ICE_DOWN, pf->state) ||
 	    ice_is_reset_in_progress(pf->state)) {
 		netdev_err(netdev, "can't set mac %pM. device not ready\n",
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
