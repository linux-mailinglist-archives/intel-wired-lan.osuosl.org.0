Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF0176D0B8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 16:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D9624148D;
	Wed,  2 Aug 2023 14:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D9624148D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690988309;
	bh=4obfZLf8eeglC81R9qjqCZkVHfnnaEw8dTsrUcyleP4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ef11blA+9O2/vu8vuAiK8sF1kmnHABRwR8HwM55cAsfUKwBiXb1dR69uH+LvPRAx1
	 1ZqPIGD9ajHfrIE2nH1z8YJVhvD2Ejr6erYivWV1YnXcHoC7ivL44o5u3CsYgeiUUs
	 EhitK4FEjd8Ozw2/gNdvKL8wT7zf2ezqbUaZvE66uA62nhavKimpF+1BwzItUykS/K
	 5Ja7yEl3XHF6xtNnABw+QRXWgx3oPFr+2RPqnvVimcGVOJ3Z0v1OsSDgdcHZuDqbyK
	 U5tPWWVVNhwtPjJROdMgcmZpBcjR6iQbiVGxIKArlj4JP3MMAzBPv5NUPYsikeIcLK
	 bcjSGCG8SSHGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZN7DGVfbLDx; Wed,  2 Aug 2023 14:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F28E6403B8;
	Wed,  2 Aug 2023 14:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F28E6403B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27BCF1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 09:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3789740166
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 09:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3789740166
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4lyceohFS9JG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 09:26:20 +0000 (UTC)
X-Greylist: delayed 949 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 02 Aug 2023 09:26:19 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D52FE40492
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D52FE40492
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 09:26:19 +0000 (UTC)
Received: from dggpemm100011.china.huawei.com (unknown [172.30.72.56])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RG5hM2VFZzNmhR;
 Wed,  2 Aug 2023 17:06:59 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm100011.china.huawei.com (7.185.36.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 17:10:24 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 2 Aug
 2023 17:10:24 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
Date: Wed, 2 Aug 2023 17:07:39 +0800
Message-ID: <20230802090739.3266122-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 02 Aug 2023 14:58:22 +0000
Subject: [Intel-wired-lan] [PATCH net-next] ice: use list_for_each_entry()
 helper
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
Cc: jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 yangyingliang@huawei.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Convert list_for_each() to list_for_each_entry() where applicable.
No functional changed.

Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 36b7044717e8..a68974c1aa38 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -129,11 +129,9 @@ ice_lag_find_hw_by_lport(struct ice_lag *lag, u8 lport)
 	struct ice_lag_netdev_list *entry;
 	struct net_device *tmp_netdev;
 	struct ice_netdev_priv *np;
-	struct list_head *tmp;
 	struct ice_hw *hw;
 
-	list_for_each(tmp, lag->netdev_head) {
-		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+	list_for_each_entry(entry, lag->netdev_head, node) {
 		tmp_netdev = entry->netdev;
 		if (!tmp_netdev || !netif_is_ice(tmp_netdev))
 			continue;
@@ -1535,11 +1533,9 @@ static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 	struct ice_lag_netdev_list *entry;
 	struct ice_netdev_priv *np;
 	struct net_device *netdev;
-	struct list_head *tmp;
 	struct ice_pf *pf;
 
-	list_for_each(tmp, lag->netdev_head) {
-		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+	list_for_each_entry(entry, lag->netdev_head, node) {
 		netdev = entry->netdev;
 		np = netdev_priv(netdev);
 		pf = np->vsi->back;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
