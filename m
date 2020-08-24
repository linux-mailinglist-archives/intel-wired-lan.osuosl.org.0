Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 412532502E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Aug 2020 18:37:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F236285F54;
	Mon, 24 Aug 2020 16:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SF5PreikVqhJ; Mon, 24 Aug 2020 16:37:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C59E85F68;
	Mon, 24 Aug 2020 16:37:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65F961BF34C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Aug 2020 16:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 611DE876F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Aug 2020 16:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wqg-SMFfixPv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Aug 2020 16:37:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D52DF876E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Aug 2020 16:37:19 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 983DB22D08;
 Mon, 24 Aug 2020 16:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598287039;
 bh=6v8rcxjk5E46zO64zz2NpKgHnlGR5IMJkXeHxdpH0BU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SBPJvsoRNRrR4FJ535hSSVsMnhtxul4W4uRmxCoInXUpzJlJntrDzdx6AEHjUP3nj
 zSnpfEyBK2FG1SVe/LRza2qVZnPKkxMvZ3IUiDEemfjaQt9JOXlaADIgjsW+NAxCf7
 amA2oEmp8vOujv8WwEf9ige46M1bF+Ry1YDxuYJg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 24 Aug 2020 12:36:12 -0400
Message-Id: <20200824163634.606093-33-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200824163634.606093-1-sashal@kernel.org>
References: <20200824163634.606093-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 33/54] scsi: fcoe: Fix I/O
 path allocation
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
Cc: Sasha Levin <sashal@kernel.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Hannes Reinecke <hare@suse.de>,
 Lee Duncan <lduncan@suse.com>, Mike Christie <michael.christie@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit fa39ab5184d64563cd36f2fb5f0d3fbad83a432c ]

ixgbe_fcoe_ddp_setup() can be called from the main I/O path and is called
with a spin_lock held, so we have to use GFP_ATOMIC allocation instead of
GFP_KERNEL.

Link: https://lore.kernel.org/r/1596831813-9839-1-git-send-email-michael.christie@oracle.com
cc: Hannes Reinecke <hare@suse.de>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index ec7a11d13fdc0..9e70b9a674409 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -192,7 +192,7 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 	}
 
 	/* alloc the udl from per cpu ddp pool */
-	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_KERNEL, &ddp->udp);
+	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_ATOMIC, &ddp->udp);
 	if (!ddp->udl) {
 		e_err(drv, "failed allocated ddp context\n");
 		goto out_noddp_unmap;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
