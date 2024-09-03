Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EA2969D76
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 14:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B7CA607B1;
	Tue,  3 Sep 2024 12:26:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27pCIU1wPBy7; Tue,  3 Sep 2024 12:26:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7D5860622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725366381;
	bh=A7yI1BkDEk0+y5hmQhPdjM5d10UFxmYBH1F2D5PIAUA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2jrJfZSL4CLHCfOfNNWvDXoXZWjIWxqzILy47GCZ1uiW85rtg1RE6mTF8DbUajnuq
	 8zR7ZfYUDtUmKRCfbKO21Ti5P8h8kDLyQgc4oEx4YFWiSus+W3WHBlL4II0HNWN5Yt
	 NpFqFrNKlMqugamZAohtXqh4eMkG8xBXvU2fzxLJWLUJAcYVIsnYQNHdCwkjF6n8di
	 hmJE9a7PPewFCaPQhHxjQ9KSe1Un01vYmgOhvxXVvpl7p8juyY1Bmvxthw9EvHKeBt
	 FrGkHNTYR7W/fOFV9Dl/Ly0Jn0lVIDBMF7+7/pDA52O2O42f048F/yqFpyrsyOay5H
	 yw/SdoIHsnEuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7D5860622;
	Tue,  3 Sep 2024 12:26:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB40F1BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3D4E80E4C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wNvdGByTeOqa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 12:26:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F259C80E4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F259C80E4A
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F259C80E4A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:15 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.254])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WylFj6h4XzyRNt;
 Tue,  3 Sep 2024 20:25:29 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id F015018010A;
 Tue,  3 Sep 2024 20:26:06 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 3 Sep
 2024 20:26:06 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <ahmed.zaki@intel.com>, <yuehaibing@huawei.com>, <richardcochran@gmail.com>,
 <michal.swiatkowski@linux.intel.com>, <amritha.nambiar@intel.com>,
 <mateusz.polchlopek@intel.com>, <jacob.e.keller@intel.com>,
 <maciej.fijalkowski@intel.com>
Date: Tue, 3 Sep 2024 20:22:33 +0800
Message-ID: <20240903122234.964218-3-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903122234.964218-1-yuehaibing@huawei.com>
References: <20240903122234.964218-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next 2/3] igb: Cleanup unused
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1000_init_function_pointers_82575() is never implemented and used since
commit 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver").
And commit 9835fd7321a6 ("igb: Add new function to read part number from
EEPROM in string format") removed igb_read_part_num() implementation.

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/igb/e1000_mac.h | 1 -
 drivers/net/ethernet/intel/igb/e1000_nvm.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.h b/drivers/net/ethernet/intel/igb/e1000_mac.h
index 6e110f28f922..529b7d18b662 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.h
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.h
@@ -63,6 +63,5 @@ enum e1000_mng_mode {
 
 #define E1000_MNG_DHCP_COOKIE_STATUS_VLAN	0x2
 
-void e1000_init_function_pointers_82575(struct e1000_hw *hw);
 
 #endif
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.h b/drivers/net/ethernet/intel/igb/e1000_nvm.h
index 091cddf4ada8..4f652ab713b3 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.h
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.h
@@ -7,7 +7,6 @@
 s32  igb_acquire_nvm(struct e1000_hw *hw);
 void igb_release_nvm(struct e1000_hw *hw);
 s32  igb_read_mac_addr(struct e1000_hw *hw);
-s32  igb_read_part_num(struct e1000_hw *hw, u32 *part_num);
 s32  igb_read_part_string(struct e1000_hw *hw, u8 *part_num,
 			  u32 part_num_size);
 s32  igb_read_nvm_eerd(struct e1000_hw *hw, u16 offset, u16 words, u16 *data);
-- 
2.34.1

