Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBBE233646
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 18:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7ED63204DE;
	Thu, 30 Jul 2020 16:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I4lrl+CJjhcm; Thu, 30 Jul 2020 16:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92721204FD;
	Thu, 30 Jul 2020 16:05:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4C701BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 16:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD29C204F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 16:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VhQJ9VhmEL1u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 16:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 985F6204DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 16:05:07 +0000 (UTC)
IronPort-SDR: YNhIlAj42DZIon3XEo8CN3fdHpAl6UfNSyX88tHdKN7tL/CnkmiJzXj3Z1+gIE4l8j9S/RY7NO
 yQus1K4Pn5rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="151600984"
X-IronPort-AV: E=Sophos;i="5.75,415,1589266800"; d="scan'208";a="151600984"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 09:04:57 -0700
IronPort-SDR: niPKoRCWIoj+kB+cB5TglIw9kSBHKDHW3oOmv1LBykkWTSNtqETq+AUzGIE5kTpslkFDnQ7N7X
 yU+7MeAm99xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,415,1589266800"; d="scan'208";a="330788039"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2020 09:04:52 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1BF4C119; Thu, 30 Jul 2020 19:04:51 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 30 Jul 2020 19:04:51 +0300
Message-Id: <20200730160451.40810-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1] ice: devlink: use %*phD to print small
 buffer
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use %*phD format to print small buffer as hex string.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index dbbd8b6f9d1a..a9105ad5b983 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -13,9 +13,7 @@ static int ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
 	/* Copy the DSN into an array in Big Endian format */
 	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
 
-	snprintf(buf, len, "%02x-%02x-%02x-%02x-%02x-%02x-%02x-%02x",
-		 dsn[0], dsn[1], dsn[2], dsn[3],
-		 dsn[4], dsn[5], dsn[6], dsn[7]);
+	snprintf(buf, len, "%8phD", dsn);
 
 	return 0;
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
