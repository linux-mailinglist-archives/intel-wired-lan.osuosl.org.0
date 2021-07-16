Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D26FA3CBF42
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 00:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EF0C42283;
	Fri, 16 Jul 2021 22:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LoVFcAZlYvTC; Fri, 16 Jul 2021 22:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC9BB42211;
	Fri, 16 Jul 2021 22:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E66D1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8926D6076B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hu_OFr7SLYTO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jul 2021 22:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1F2260679
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208981781"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="208981781"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 15:29:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="497176519"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jul 2021 15:29:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Jul 2021 15:16:37 -0700
Message-Id: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/1] iavf: Enable setting RSS
 hash key
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

Driver support for changing the RSS hash key exists, however, checks
have caused it to be reported as unsupported. Remove the check and
allow the hash key to be specified.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 01047786eabc..1aed5ade8682 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1893,7 +1893,7 @@ static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
  * @key: hash key
  * @hfunc: hash function to use
  *
- * Returns -EINVAL if the table specifies an inavlid queue id, otherwise
+ * Returns -EINVAL if the table specifies an invalid queue id, otherwise
  * returns 0 after programming the table.
  **/
 static int iavf_set_rxfh(struct net_device *netdev, const u32 *indir,
@@ -1902,19 +1902,21 @@ static int iavf_set_rxfh(struct net_device *netdev, const u32 *indir,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u16 i;
 
-	/* We do not allow change in unsupported parameters */
-	if (key ||
-	    (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
+	/* Only support toeplitz hash function */
+	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
-	if (!indir)
+
+	if (!key && !indir)
 		return 0;
 
 	if (key)
 		memcpy(adapter->rss_key, key, adapter->rss_key_size);
 
-	/* Each 32 bits pointed by 'indir' is stored with a lut entry */
-	for (i = 0; i < adapter->rss_lut_size; i++)
-		adapter->rss_lut[i] = (u8)(indir[i]);
+	if (indir) {
+		/* Each 32 bits pointed by 'indir' is stored with a lut entry */
+		for (i = 0; i < adapter->rss_lut_size; i++)
+			adapter->rss_lut[i] = (u8)(indir[i]);
+	}
 
 	return iavf_config_rss(adapter);
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
