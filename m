Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCB83740EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 May 2021 18:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AC93607CD;
	Wed,  5 May 2021 16:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id px7P1pE9rG6a; Wed,  5 May 2021 16:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21A0260804;
	Wed,  5 May 2021 16:40:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5AE801BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 16:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5668A402AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 16:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wPm_UDWovpn5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 May 2021 16:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7C1740192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 16:39:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6FC4619AF;
 Wed,  5 May 2021 16:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620232799;
 bh=XG8G87TVuOVi6GUNhXNTYQqH9ntP4FqUcblCmqCe8+E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OCBGBth4MDCveYo8KusoaQSdJ+LEH0EsRqgAf0os0BeLKPlqtlc2IWE5e39/JXfr5
 OKqyP0oNI00B3dnV1EnEE7tllIB2uNcIkJboQHlPURqiDqrdABWYIKvFRWMGpdULFW
 2giNWimHm9CP1ujhtaY1mLOdN6S/7PouA2tIHmuDgh+6utcx3/NHtGD12GUfE502z+
 Dto6KELWMWVuL6mIme3Qv9sGp87Sgkt139mRdtgDFMpsXCpX2KRLgowkLBdtyHZrs6
 MAckw9Qm8mT4jHWjByaNtL5ANlF1a+6u+Qfv1Y30sYEz3buxrzAgmPKecB1U5UaB3b
 TbDE6Fvib+T8A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  5 May 2021 12:38:53 -0400
Message-Id: <20210505163856.3463279-43-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505163856.3463279-1-sashal@kernel.org>
References: <20210505163856.3463279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 43/46] iavf: remove duplicate
 free resources calls
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
Cc: Sasha Levin <sashal@kernel.org>, Stefan Assmann <sassmann@kpanic.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Stefan Assmann <sassmann@kpanic.de>

[ Upstream commit 1a0e880b028f97478dc689e2900b312741d0d772 ]

Both iavf_free_all_tx_resources() and iavf_free_all_rx_resources() have
already been called in the very same function.
Remove the duplicate calls.

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index cffc8c1044f2..a97e1f9ca1ed 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3906,8 +3906,6 @@ static void iavf_remove(struct pci_dev *pdev)
 
 	iounmap(hw->hw_addr);
 	pci_release_regions(pdev);
-	iavf_free_all_tx_resources(adapter);
-	iavf_free_all_rx_resources(adapter);
 	iavf_free_queues(adapter);
 	kfree(adapter->vf_res);
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
