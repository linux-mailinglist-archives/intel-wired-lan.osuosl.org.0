Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5E874C514
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jul 2023 17:14:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EE7E4051A;
	Sun,  9 Jul 2023 15:14:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EE7E4051A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688915642;
	bh=le4rnbxeWz6qBkMw3+xLPC9VgxWYduwxG6mOmZVMWJY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aLulhNBWX96xUG4ykX2UAsg6PsSKc59sBmv33HaGTdWxWJuXRUqxgxs+HtekZ5mKI
	 oC0arkk+dAd98hOp/o8ODLXxebjovCWlwEoUhAHtpniihy7txSoOcJi7CtKp87u2cY
	 qffruqUxHRB+sJ41KJrFWeGlYLo6ncUS5g2XyYIBRaYSIjHNWg/uCHMLwYVEAN3lYM
	 9UjrOd2fDj/t54SMwhCbXIzJFpzLGW40xiuM9kE2ROYBuCSz5Va2Nrjzt8vmSwgmfi
	 epZwIZLL7PD9Z8NfzZzQ4HqZxXyTu8BlWzMyB2DFLsUxV5pYRA7WpeFhJpsApFQ6Xj
	 COvqmO3i59g4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYpEDMGSbsaQ; Sun,  9 Jul 2023 15:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD7B440017;
	Sun,  9 Jul 2023 15:14:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD7B440017
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 644901BF381
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 15:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47C694097D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 15:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47C694097D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kLmnfTNnm96 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jul 2023 15:13:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D1F4096B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12D1F4096B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 15:13:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2D23760C01;
 Sun,  9 Jul 2023 15:13:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EF7CC433C7;
 Sun,  9 Jul 2023 15:13:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Jul 2023 11:12:54 -0400
Message-Id: <20230709151255.512931-25-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230709151255.512931-1-sashal@kernel.org>
References: <20230709151255.512931-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.4.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1688915631;
 bh=CwWUrLhrRjp8fYkmvhwDSlsP8KH6DYkAyzqn1gqnHC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NbMsQvoel3rYwe/iHCsPvBe0lHT2cCsuCb5pjYu1JCsgVd7NfCUc1C0TyVJU8J/B/
 uwNWV1iq6Vf2iEOfLfOKuEI75nftf82s1+8wbd0zX5kqSclQQ6xfYSNFCh61d4W1tI
 cLmnZMUKcwncOFqpNMkJ5t+sPsj6gJDjokFSiL5QIFG2oboGZKQbs/p7UKhDmRoe1n
 KcxaCzmoVM32h+l2VM9SFr3oho9tE7whaRJOwOKsdAwGoTRNzKrdLoaYzvk7NZ8YBq
 RYWHM4nj/DLKDSnh3tEyAdPirdutKMzJOFmOutsZw9bAjn8Bp74kAca7VRkv4IjJVZ
 axrL/8oozDQBw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NbMsQvoe
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.4 25/26] igb: Fix igb_down hung
 on surprise removal
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
Cc: Sasha Levin <sashal@kernel.org>, Simon Horman <simon.horman@corigine.com>,
 Ying Hsu <yinghsu@chromium.org>, jesse.brandeburg@intel.com,
 edumazet@google.com, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ying Hsu <yinghsu@chromium.org>

[ Upstream commit 004d25060c78fc31f66da0fa439c544dda1ac9d5 ]

In a setup where a Thunderbolt hub connects to Ethernet and a display
through USB Type-C, users may experience a hung task timeout when they
remove the cable between the PC and the Thunderbolt hub.
This is because the igb_down function is called multiple times when
the Thunderbolt hub is unplugged. For example, the igb_io_error_detected
triggers the first call, and the igb_remove triggers the second call.
The second call to igb_down will block at napi_synchronize.
Here's the call trace:
    __schedule+0x3b0/0xddb
    ? __mod_timer+0x164/0x5d3
    schedule+0x44/0xa8
    schedule_timeout+0xb2/0x2a4
    ? run_local_timers+0x4e/0x4e
    msleep+0x31/0x38
    igb_down+0x12c/0x22a [igb 6615058754948bfde0bf01429257eb59f13030d4]
    __igb_close+0x6f/0x9c [igb 6615058754948bfde0bf01429257eb59f13030d4]
    igb_close+0x23/0x2b [igb 6615058754948bfde0bf01429257eb59f13030d4]
    __dev_close_many+0x95/0xec
    dev_close_many+0x6e/0x103
    unregister_netdevice_many+0x105/0x5b1
    unregister_netdevice_queue+0xc2/0x10d
    unregister_netdev+0x1c/0x23
    igb_remove+0xa7/0x11c [igb 6615058754948bfde0bf01429257eb59f13030d4]
    pci_device_remove+0x3f/0x9c
    device_release_driver_internal+0xfe/0x1b4
    pci_stop_bus_device+0x5b/0x7f
    pci_stop_bus_device+0x30/0x7f
    pci_stop_bus_device+0x30/0x7f
    pci_stop_and_remove_bus_device+0x12/0x19
    pciehp_unconfigure_device+0x76/0xe9
    pciehp_disable_slot+0x6e/0x131
    pciehp_handle_presence_or_link_change+0x7a/0x3f7
    pciehp_ist+0xbe/0x194
    irq_thread_fn+0x22/0x4d
    ? irq_thread+0x1fd/0x1fd
    irq_thread+0x17b/0x1fd
    ? irq_forced_thread_fn+0x5f/0x5f
    kthread+0x142/0x153
    ? __irq_get_irqchip_state+0x46/0x46
    ? kthread_associate_blkcg+0x71/0x71
    ret_from_fork+0x1f/0x30

In this case, igb_io_error_detected detaches the network interface
and requests a PCIE slot reset, however, the PCIE reset callback is
not being invoked and thus the Ethernet connection breaks down.
As the PCIE error in this case is a non-fatal one, requesting a
slot reset can be avoided.
This patch fixes the task hung issue and preserves Ethernet
connection by ignoring non-fatal PCIE errors.

Signed-off-by: Ying Hsu <yinghsu@chromium.org>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Link: https://lore.kernel.org/r/20230620174732.4145155-1-anthony.l.nguyen@intel.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index bb3db387d49cf..ba5e1d1320f67 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9585,6 +9585,11 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
+	if (state == pci_channel_io_normal) {
+		dev_warn(&pdev->dev, "Non-correctable non-fatal error reported.\n");
+		return PCI_ERS_RESULT_CAN_RECOVER;
+	}
+
 	netif_device_detach(netdev);
 
 	if (state == pci_channel_io_perm_failure)
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
