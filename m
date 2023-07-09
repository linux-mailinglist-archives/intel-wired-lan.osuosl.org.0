Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504074C573
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jul 2023 17:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF10440522;
	Sun,  9 Jul 2023 15:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF10440522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688915798;
	bh=K8BW1b2+A+64sUZUOHGrlmCQySAsjztzlTXZXIt4Z4Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rli2/Qh++gAXL9QqB50MMGPiqBzzZ3RuHlNiQbYmbJhTpA6spNmycxLEvcqyz3wjY
	 p1mOvdpYapv7ZQTg/PpqVvdbYGfnwZmXqgQuouH8JN3v6KIb33D921ZPYNl7I6A7tx
	 78HUSBz92QWrS8z07S0xnlC9PLRJERnBFmBYX7T+kN/roTtXv9LSVBGMdWDjiUf5I9
	 UgDa1t9lAhW0FjvZAmhMkzxuWXuMraEvYQnH3LIhwXmt03M+/WPEeg3HvcfYyyCg0W
	 VfJvbo9SSqrQcEpjRmnqGf8NQYBE8/GnH4vExtUzQZaCmdAZoMZGJaRE3uZVtt3hbg
	 REK/ZmGnamMvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RciBQ0L4oTGQ; Sun,  9 Jul 2023 15:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 934B1404BA;
	Sun,  9 Jul 2023 15:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 934B1404BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A512E1BF381
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 15:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DD5960AB2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 15:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DD5960AB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id np019NgT9lsa for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jul 2023 15:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CE0C60BC7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7CE0C60BC7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 15:16:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CF84260BC9;
 Sun,  9 Jul 2023 15:16:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB146C433CB;
 Sun,  9 Jul 2023 15:16:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Jul 2023 11:16:13 -0400
Message-Id: <20230709151615.514009-6-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230709151615.514009-1-sashal@kernel.org>
References: <20230709151615.514009-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.249
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1688915790;
 bh=yY6o2+9jF9APMP5GP+geqS/D3HcXNdIB/Q2s0PvUX+w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j2X0cyXyiQbJt0jdHQvAn+Hyh6gDKwf6oFMndnDPaPb0sMw+tOFZxwPZK3fLPy2AK
 WHUYBm0gJ9AWgvq73k5CcSx2vTQEcIccJ6zVVNj0EYZbAaOjTZOsBFka3dZjC7Loob
 /FScDtfVpERiY+Yir6+jDnlZenqpW1dfgZj6k4rUe7HtpHIrmHXKWAmfZmzkJr601s
 YJNcl9GZ10GZHCTmy/gYCctLW++aIzDHdjVnXGBCLppPQNYQdgU+dg3Pbf3xtZ3btQ
 gTEIhzELYey6Phhw6QZTUxBQ/3YWJQ81C14GNP6LKAvhKCuIg0aNQoBmH1YKusHds5
 WhmnD6yvM/aOw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=j2X0cyXy
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 6/6] igb: Fix igb_down hung on
 surprise removal
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
index 00d66a6e5c6e5..8c6c0d9c7f766 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9028,6 +9028,11 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
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
