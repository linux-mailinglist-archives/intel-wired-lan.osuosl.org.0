Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7498F31FD34
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 17:37:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3365C87165;
	Fri, 19 Feb 2021 16:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPy0ZRiZzk9f; Fri, 19 Feb 2021 16:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D94C0870E5;
	Fri, 19 Feb 2021 16:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1807E1BF287
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 000B5606FA
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GEJ9JeZ69olH for <intel-wired-lan@osuosl.org>;
 Fri, 19 Feb 2021 16:37:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 16DA4606F8; Fri, 19 Feb 2021 16:37:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 541DB606F8
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:36:55 +0000 (UTC)
IronPort-SDR: mWxCu+ZoqNc4s7V/BS6l6I3FSX+IfejH9MijqgWFB5dt5g7PtO6yTkUzZK3bGmgLObJmPdwkUh
 KyXCcv275rqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="183949644"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="183949644"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 08:36:55 -0800
IronPort-SDR: fc+HSA3LdUFUaIgx90zX91w670syJu6UVzEEBlEkLIdattY6CUuRsgIFssy2nE8EB+PoTiNJvg
 cAxuaTu6jxzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="581737128"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.114])
 by orsmga005.jf.intel.com with ESMTP; 19 Feb 2021 08:36:53 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 20 Feb 2021 00:36:47 +0800
Message-Id: <20210219163648.14581-2-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
Subject: [Intel-wired-lan] [PATCH net v1 1/2] igc: Fix Pause Frame
 Advertising
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
Cc: muhammad.husaini.zulkifli@intel.com, mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix Pause Frame Advertising when getting the advertisement via ethtool.
Remove setting the "advertising" bit in link_ksettings during default
case when tx and rx are in off state with Auto Negotiatiate off.

Below is the original output of advertisement link during tx and rx off:
Advertised pause frame use: Symmetric Receive-only

Expected output:
Advertised pause frame use: No

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Reviewed-by: Malli C <mallikarjuna.chilakala@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 824a6c454bca..67a4aed45fc2 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1725,9 +1725,7 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 						     Asym_Pause);
 		break;
 	default:
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
-		ethtool_link_ksettings_add_link_mode(cmd, advertising,
-						     Asym_Pause);
+		break;
 	}
 
 	status = pm_runtime_suspended(&adapter->pdev->dev) ?
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
