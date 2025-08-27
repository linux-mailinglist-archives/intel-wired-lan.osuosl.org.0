Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EA2B38612
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 17:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F1CD8142A;
	Wed, 27 Aug 2025 15:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7KT7yfIXp9r; Wed, 27 Aug 2025 15:15:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A57B6813EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756307753;
	bh=0ze5sI5qLVJiZG2jK8doSpuXVK3lImEh4BnZocKVUJg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GkIRf2/MNmRKTcbF7Jpu2Z2yZwdeyWXFOb7fRYeuOSoVUn1UKZoMsGTMipM9/2krp
	 EL/hrmRb98pV8nzy4T77hbOn4616cSJnEea49PaHsUinm7NxecG1IWl3RT/I0hUOPu
	 br2muJ4PtZt26oYTWILaQiC3j5iK56XuD2chVhAoDeb7I+hH79zOaien/iXlyZjyom
	 M9SFQ9pFpXJUDUpG7qMkM8KP990cMM23OEdK5KiQjnFEOvtFlbp/b8S1s8/nQ7bQGn
	 cNNutPxtso4pPzmdRKySmksdM/hlxphf7ySL1T5Q6F4bHR8NfhXJyhIJChKG7htShd
	 V/JY9gkwQ/fuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A57B6813EB;
	Wed, 27 Aug 2025 15:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A5D9F114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CCE940A66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:02:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zeGiP7WfIKKb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 12:02:03 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 27 Aug 2025 12:02:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D0DA407D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D0DA407D6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=117.135.214.73;
 helo=mail-m21473.qiye.163.com; envelope-from=zhen.ni@easystack.cn;
 receiver=<UNKNOWN> 
Received: from mail-m21473.qiye.163.com (mail-m21473.qiye.163.com
 [117.135.214.73])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D0DA407D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:02:02 +0000 (UTC)
Received: from localhost.localdomain (unknown [218.94.118.90])
 by smtp.qiye.163.com (Hmail) with ESMTP id f46bbc4e;
 Wed, 27 Aug 2025 19:56:52 +0800 (GMT+08:00)
From: Zhen Ni <zhen.ni@easystack.cn>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Zhen Ni <zhen.ni@easystack.cn>
Date: Wed, 27 Aug 2025 19:56:31 +0800
Message-Id: <20250827115631.1428742-1-zhen.ni@easystack.cn>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20250827032348.1374048-1-zhen.ni@easystack.cn>
References: <20250827032348.1374048-1-zhen.ni@easystack.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a98eb6353aa022akunmaac10b1a148a57
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFJQjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaQ09CVkxKHhoeSktOGhpKSFYVFAkWGhdVGRETFh
 oSFyQUDg9ZV1kYEgtZQVlJSkNVQk9VSkpDVUJLWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
 VKQktLWQY+
X-Mailman-Approved-At: Wed, 27 Aug 2025 15:15:51 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=easystack.cn
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix potential invalid
 access when MAC list is empty
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

list_first_entry() never returns NULL — if the list is empty, it still
returns a pointer to an invalid object, leading to potential invalid
memory access when dereferenced.

Fix this by using list_first_entry_or_null instead of list_first_entry.

Fixes: e3219ce6a775 ("i40e: Add support for client interface for IWARP driver")
Signed-off-by: Zhen Ni <zhen.ni@easystack.cn>
---
Changes in v2:
- Replace the list_empty() pre-check with list_first_entry_or_null()
---
 drivers/net/ethernet/intel/i40e/i40e_client.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index 5f1a405cbbf8..518bc738ea3b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -359,8 +359,8 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
 	if (i40e_client_get_params(vsi, &cdev->lan_info.params))
 		goto free_cdev;
 
-	mac = list_first_entry(&cdev->lan_info.netdev->dev_addrs.list,
-			       struct netdev_hw_addr, list);
+	mac = list_first_entry_or_null(&cdev->lan_info.netdev->dev_addrs.list,
+				       struct netdev_hw_addr, list);
 	if (mac)
 		ether_addr_copy(cdev->lan_info.lanmac, mac->addr);
 	else
-- 
2.20.1

