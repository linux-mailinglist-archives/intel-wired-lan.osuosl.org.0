Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EE277BACA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Aug 2023 15:58:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99EE261078;
	Mon, 14 Aug 2023 13:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99EE261078
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692021517;
	bh=QgfHoeYob0220oquUi9+j1NSiY7xFEqOMskPzMFcW/0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tbhgTNPpOyTJmDCgWdPmIYBQAIS85LNdhKYtZRtgNwFeVI/QQ2vGF3UcACh/7WH4q
	 /2FViMdXqVDBNAl0pKNBooM2abA6TGYacrmfvnTm6exDKLAGluZTbAd2SXpteUTFuJ
	 8PUQf7iQqzAyVv7W6cAB5uWVQlVaY9u/28OfqTa/5xEiojhDPXWJft228+Prjx6RcW
	 +zAjA9jQSBZM1/V/9ie59+WUoYOQk5G/8HlwkboT6d9TDhmGwaqpXyHqt07qNmV2ET
	 vLOigK9rU+iTf8kBABy4hI5T7oH7pyeZ9Mw/VAZARW5qegfmRRrwSlqTbjo/yEkcNy
	 TW52jvFJ2CAdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 51TQRFZ2xPEX; Mon, 14 Aug 2023 13:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A09C260B48;
	Mon, 14 Aug 2023 13:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A09C260B48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1571E1BF396
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 13:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4C1380BBD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 13:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4C1380BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iNVpL7Xng40X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Aug 2023 13:58:30 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AA7D81DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 13:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AA7D81DFC
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RPbW26mpYzNn02;
 Mon, 14 Aug 2023 21:54:54 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 14 Aug
 2023 21:58:25 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <yuehaibing@huawei.com>
Date: Mon, 14 Aug 2023 21:58:21 +0800
Message-ID: <20230814135821.4808-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] net: e1000e: Remove unused
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

Commit bdfe2da6aefd ("e1000e: cosmetic move of function prototypes to the new mac.h")
declared but never implemented them.

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/e1000e/mac.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.h b/drivers/net/ethernet/intel/e1000e/mac.h
index 6ab261119801..563176fd436e 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.h
+++ b/drivers/net/ethernet/intel/e1000e/mac.h
@@ -29,8 +29,6 @@ s32 e1000e_set_fc_watermarks(struct e1000_hw *hw);
 s32 e1000e_setup_fiber_serdes_link(struct e1000_hw *hw);
 s32 e1000e_setup_led_generic(struct e1000_hw *hw);
 s32 e1000e_setup_link_generic(struct e1000_hw *hw);
-s32 e1000e_validate_mdi_setting_generic(struct e1000_hw *hw);
-s32 e1000e_validate_mdi_setting_crossover_generic(struct e1000_hw *hw);
 
 void e1000e_clear_hw_cntrs_base(struct e1000_hw *hw);
 void e1000_clear_vfta_generic(struct e1000_hw *hw);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
