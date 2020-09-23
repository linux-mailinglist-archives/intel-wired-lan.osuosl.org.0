Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 938A0274EC7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 03:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1FD780EA6;
	Wed, 23 Sep 2020 01:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GuPme9rj0IfA; Wed, 23 Sep 2020 01:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6541B85F77;
	Wed, 23 Sep 2020 01:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6C4A1BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 01:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC9B181D76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 01:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTHyTsTl65Qz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 01:58:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A79A181D66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 01:58:24 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CE262BD9F4EA474853D8;
 Wed, 23 Sep 2020 09:58:20 +0800 (CST)
Received: from [10.174.179.238] (10.174.179.238) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Wed, 23 Sep 2020 09:58:17 +0800
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>
References: <20200731105721.18511-1-cuibixuan@huawei.com>
 <5af7c5af-c45d-2174-de89-8b89eddb4f4d@huawei.com>
 <DM6PR11MB289004F11B8936F7C421A863BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
From: Bixuan Cui <cuibixuan@huawei.com>
Message-ID: <85dcea48-8b82-d806-0026-e6b371e6a092@huawei.com>
Date: Wed, 23 Sep 2020 09:58:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB289004F11B8936F7C421A863BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.174.179.238]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH v3] net: ice: Fix pointer cast warnings
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

pointers should be casted to unsigned long to avoid
-Wpointer-to-int-cast warnings:

drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning:
    cast from pointer to integer of different size
drivers/net/ethernet/intel/ice/ice_flow.h:198:32: warning:
    cast to pointer from integer of different size

Signed-off-by: Bixuan Cui <cuibixuan@huawei.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
---
v3->v2: add 'Tested-by: Aaron Brown <aaron.f.brown@intel.com>'
v2->v1: add fix:
 ice_flow.h:198:32: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
 #define ICE_FLOW_ENTRY_PTR(h) ((struct ice_flow_entry *)(h))

 drivers/net/ethernet/intel/ice/ice_flow.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 3913da2116d2..829f90b1e998 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -194,8 +194,8 @@ struct ice_flow_entry {
 	u16 entry_sz;
 };

-#define ICE_FLOW_ENTRY_HNDL(e)	((u64)e)
-#define ICE_FLOW_ENTRY_PTR(h)	((struct ice_flow_entry *)(h))
+#define ICE_FLOW_ENTRY_HNDL(e)	((u64)(uintptr_t)e)
+#define ICE_FLOW_ENTRY_PTR(h)	((struct ice_flow_entry *)(uintptr_t)(h))

 struct ice_flow_prof {
 	struct list_head l_entry;
-- 
2.17.1

.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
