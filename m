Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A18B9546CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 12:38:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 252A6412D4;
	Fri, 16 Aug 2024 10:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4uTReVt1W-Ct; Fri, 16 Aug 2024 10:38:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C02D40D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723804692;
	bh=DXdKV5Ct0SexxDB7rJCF1pZ7Bc3GU/A0tJcdBErInHk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=R+AN0tymG7c/7ruWPD4o65Cilmeu6yAE6ManNXUXVmLuG0XWvjrWdbsrzm1w+RCp/
	 WYVGm1ClBU1oWDvz0IbgDemwzYJ5o5KrA/lQvw7MKBVuitwYDDcKVEdQjvj6npKxGW
	 w9vBqhkjqQKskV+vJ+avknBgEfWC6cYUvEaYf8s/feWlWmW+vS3U+ffZgt/DlDn81y
	 mimqzRIfyxMNFlmocVU/0b6szlJKQlDQ+6AxkKnRtb38+smtVJw3ulGBq8pu2q+BXb
	 6LoEDvk2l3GSaWjW8tQ8j6QnGTvNc6tdXAmF9/B+NPGMDDU0q+Zy3XfSm1usgUkYvi
	 2kyDQJDFyIuoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C02D40D47;
	Fri, 16 Aug 2024 10:38:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54A071BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 10:38:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41F2081E4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 10:38:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uQqFi81DZSEr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 10:38:09 +0000 (UTC)
X-Greylist: delayed 1130 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 16 Aug 2024 10:38:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C60A981E43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C60A981E43
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C60A981E43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 10:38:08 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.194])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4WldG32Y6FzhY0l;
 Fri, 16 Aug 2024 18:17:15 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 846511401E9;
 Fri, 16 Aug 2024 18:19:13 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 16 Aug
 2024 18:19:12 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <olga.zaborska@intel.com>, <yuehaibing@huawei.com>
Date: Fri, 16 Aug 2024 18:16:38 +0800
Message-ID: <20240816101638.882072-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next] igbvf: Remove two unused
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is no caller and implementations in tree.

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/igbvf/igbvf.h | 1 -
 drivers/net/ethernet/intel/igbvf/mbx.h   | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index 7b83678ba83a..6ad35a00a287 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -282,7 +282,6 @@ enum igbvf_state_t {
 
 extern char igbvf_driver_name[];
 
-void igbvf_check_options(struct igbvf_adapter *);
 void igbvf_set_ethtool_ops(struct net_device *);
 
 int igbvf_up(struct igbvf_adapter *);
diff --git a/drivers/net/ethernet/intel/igbvf/mbx.h b/drivers/net/ethernet/intel/igbvf/mbx.h
index e5b31818d565..7637d21445bf 100644
--- a/drivers/net/ethernet/intel/igbvf/mbx.h
+++ b/drivers/net/ethernet/intel/igbvf/mbx.h
@@ -49,7 +49,6 @@
 
 #define E1000_PF_CONTROL_MSG	0x0100 /* PF control message */
 
-void e1000_init_mbx_ops_generic(struct e1000_hw *hw);
 s32 e1000_init_mbx_params_vf(struct e1000_hw *);
 
 #endif /* _E1000_MBX_H_ */
-- 
2.34.1

