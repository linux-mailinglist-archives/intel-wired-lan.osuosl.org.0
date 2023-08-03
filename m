Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F2376ECD7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 16:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4F4841516;
	Thu,  3 Aug 2023 14:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4F4841516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691073613;
	bh=R5inlXi3SpOlrZKhN0/EjtxAnBGFBNKXz9edBRuhFsA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EDczMaRbJKW0F+s2KMFus2oFs+USxtA+rBrUD7DBiXR1NVoCwKdAxwgS6/xTVfT3+
	 1wz/IIa2ti/9yd/E7IHBgnFN7i7Q815aV56biNhrYQlmnzs4SaCYgxnl+VuOp+Nv8t
	 yajTOUmHn5FYnP5B7fdlcSWGR5EuK38vwU9W21ebWv/9fVzE/VyZLpmQ3fVzl4Saci
	 mhuvcHv01rLVv33HFKYitTv/O6XSZmYc2psmMpjA7qMqbZLyl+Ar8W5vKrGry6sGC7
	 WUwSusMCXrMbUU06jHAIoCBf2LIi6QhApuNyJNwvngqY2L+fulzhi5QD9K/fOw8yfK
	 ZGZhydPB0xlfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S18o63tf0FHn; Thu,  3 Aug 2023 14:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5839417C4;
	Thu,  3 Aug 2023 14:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5839417C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49A9A1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76FD661355
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76FD661355
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdRt8Rzbrqct for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 14:39:22 +0000 (UTC)
X-Greylist: delayed 1178 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 03 Aug 2023 14:39:21 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0B4C613BE
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0B4C613BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:39:21 +0000 (UTC)
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.56])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RGrVl6q48ztRmK;
 Thu,  3 Aug 2023 22:16:15 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 3 Aug
 2023 22:19:38 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <yuehaibing@huawei.com>
Date: Thu, 3 Aug 2023 22:19:04 +0800
Message-ID: <20230803141904.15316-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] ixgbevf: Remove unused function
 declarations
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ixgbe_napi_add_all()/ixgbe_napi_del_all() are declared but never implemented in
commit 92915f71201b ("ixgbevf: Driver main and ethool interface module and main header")

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 149c733fcc2b..130cb868774c 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -486,9 +486,6 @@ static inline int ixgbevf_ipsec_tx(struct ixgbevf_ring *tx_ring,
 { return 0; }
 #endif /* CONFIG_IXGBEVF_IPSEC */
 
-void ixgbe_napi_add_all(struct ixgbevf_adapter *adapter);
-void ixgbe_napi_del_all(struct ixgbevf_adapter *adapter);
-
 #define ixgbevf_hw_to_netdev(hw) \
 	(((struct ixgbevf_adapter *)(hw)->back)->netdev)
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
