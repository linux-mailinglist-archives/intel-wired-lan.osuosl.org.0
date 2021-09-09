Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB56A404C30
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 13:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E784284999;
	Thu,  9 Sep 2021 11:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZN6hDbnt_KR; Thu,  9 Sep 2021 11:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C509783B42;
	Thu,  9 Sep 2021 11:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC2A41BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 11:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A761640280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 11:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0z1k79vWOBxr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 11:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 207354027D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 11:55:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE0D161BD0;
 Thu,  9 Sep 2021 11:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631188517;
 bh=FYYmUAcosH6wJTlRB+8qa2A7eYG5KleotZPuCN4eOfY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nfJ9NKBlqsV+rCH92qyQNceOvaWxQMC02ciPfGACzk2KybmN7+x+rQpsv5CPOCFBc
 jlpW4BxQMtBlohL5zX4BwVKcrHvAuT6GAwDpNcTfhEA58ac11zf1M7ME7N8K1/CfWZ
 M5iAMr1xhSEs52SMi7VfLxu32uHAMW29a7XNh4C26Yz5oJxLmKQRgVn7gWEz7UNMYE
 VOlEdX9zTdKgYrA3mOGW2jVh7sXJs4dSAUqtCWBNYsTjpO8vYdG0kJUjZmYTY9LFxp
 Lc7vFboi23nC34Y1n992w5EQliAO6UiVZlm6ra1hmlNuhNNzD7OEfMtCUJqqN6FcjC
 nM/4MHAMhRJZQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  9 Sep 2021 07:53:25 -0400
Message-Id: <20210909115507.147917-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115507.147917-1-sashal@kernel.org>
References: <20210909115507.147917-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 008/109] iavf: do not override
 the adapter state in the watchdog task
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Stefan Assmann <sassmann@kpanic.de>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Stefan Assmann <sassmann@kpanic.de>

[ Upstream commit 22c8fd71d3a5e6fe584ccc2c1e8760e5baefd5aa ]

The iavf watchdog task overrides adapter->state to __IAVF_RESETTING
when it detects a pending reset. Then schedules iavf_reset_task() which
takes care of the reset.

The reset task is capable of handling the reset without changing
adapter->state. In fact we lose the state information when the watchdog
task prematurely changes the adapter state. This may lead to a crash if
instead of the reset task the iavf_remove() function gets called before
the reset task.
In that case (if we were in state __IAVF_RUNNING previously) the
iavf_remove() function triggers iavf_close() which fails to close the
device because of the incorrect state information.

This may result in a crash due to pending interrupts.
kernel BUG at drivers/pci/msi.c:357!
[...]
Call Trace:
 [<ffffffffbddf24dd>] pci_disable_msix+0x3d/0x50
 [<ffffffffc08d2a63>] iavf_reset_interrupt_capability+0x23/0x40 [iavf]
 [<ffffffffc08d312a>] iavf_remove+0x10a/0x350 [iavf]
 [<ffffffffbddd3359>] pci_device_remove+0x39/0xc0
 [<ffffffffbdeb492f>] __device_release_driver+0x7f/0xf0
 [<ffffffffbdeb49c3>] device_release_driver+0x23/0x30
 [<ffffffffbddcabb4>] pci_stop_bus_device+0x84/0xa0
 [<ffffffffbddcacc2>] pci_stop_and_remove_bus_device+0x12/0x20
 [<ffffffffbddf361f>] pci_iov_remove_virtfn+0xaf/0x160
 [<ffffffffbddf3bcc>] sriov_disable+0x3c/0xf0
 [<ffffffffbddf3ca3>] pci_disable_sriov+0x23/0x30
 [<ffffffffc0667365>] i40e_free_vfs+0x265/0x2d0 [i40e]
 [<ffffffffc0667624>] i40e_pci_sriov_configure+0x144/0x1f0 [i40e]
 [<ffffffffbddd5307>] sriov_numvfs_store+0x177/0x1d0
Code: 00 00 e8 3c 25 e3 ff 49 c7 86 88 08 00 00 00 00 00 00 5b 41 5c 41 5d 41 5e 41 5f 5d c3 48 8b 7b 28 e8 0d 44
RIP  [<ffffffffbbbf1068>] free_msi_irqs+0x188/0x190

The solution is to not touch the adapter->state in iavf_watchdog_task()
and let the reset task handle the state transition.

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 94a3f000e999..3e76111af872 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1961,7 +1961,6 @@ static void iavf_watchdog_task(struct work_struct *work)
 		/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 	if (!reg_val) {
-		adapter->state = __IAVF_RESETTING;
 		adapter->flags |= IAVF_FLAG_RESET_PENDING;
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
