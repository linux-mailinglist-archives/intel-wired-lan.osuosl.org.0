Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EF239BDE5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C160A415E5;
	Fri,  4 Jun 2021 17:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09qZg1zI26ZZ; Fri,  4 Jun 2021 17:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDC7B4159C;
	Fri,  4 Jun 2021 17:01:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6271BF873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA3D2843D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qc8GU2plgqRJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:00:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E0EA843DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:29 +0000 (UTC)
IronPort-SDR: 1hXzabaKgWmmonhO14WTT0f7dn9rivFP+okG8HNRKAZ1V4wpQOIbRM3Q8VHuWwDMgWHxGd6qnk
 Tic84pdIZhxg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289960231"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289960231"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:00:28 -0700
IronPort-SDR: h463jSCWM8+i51Og2CJ7PAxVSySenehD+2WFXfp6W3inpTcFEHW5EERwlFuE/K7HKP1s1XXVFa
 1AH0vcanDsKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="401017762"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2021 10:00:26 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:48:58 -0700
Message-Id: <20210604164900.33156-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 6/8] iavf: validate pointers
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

From: Mitch Williams <mitch.a.williams@intel.com>

In some cases, the ethtool get_rxfh handler may be called with a null
key or indir parameter. So check these pointers, or you will have a very
bad day.

Fixes: 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS")
Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 0d22a5275218..77a8a15c5410 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1853,14 +1853,13 @@ static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
 
 	if (hfunc)
 		*hfunc = ETH_RSS_HASH_TOP;
-	if (!indir)
-		return 0;
-
-	memcpy(key, adapter->rss_key, adapter->rss_key_size);
+	if (key)
+		memcpy(key, adapter->rss_key, adapter->rss_key_size);
 
-	/* Each 32 bits pointed by 'indir' is stored with a lut entry */
-	for (i = 0; i < adapter->rss_lut_size; i++)
-		indir[i] = (u32)adapter->rss_lut[i];
+	if (indir)
+		/* Each 32 bits pointed by 'indir' is stored with a lut entry */
+		for (i = 0; i < adapter->rss_lut_size; i++)
+			indir[i] = (u32)adapter->rss_lut[i];
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
