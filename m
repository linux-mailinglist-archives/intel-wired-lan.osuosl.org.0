Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1603EC72C15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 09:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23AFA612F4;
	Thu, 20 Nov 2025 08:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ATx0rpeI5CaT; Thu, 20 Nov 2025 08:18:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 570EF612E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763626727;
	bh=53XnJLhHTCr1gL3u2Gkylmbe3ug+lFlZqtZzGJe+tzo=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S9ZMnpO+zYAkbw5iCSCMVEKT7O/LSxrdddx7W2H3Flk4OvWtIauq5icoCmZiE7A9A
	 YSGr7EHvCWC3qdmO1Zx9XAdAtnIAv30Ie9L7Pa56Ph1i5BH0KA6Z1nEQsMpJERACBa
	 jhVFh8webO9kR2KZxrRFReKGj6GvEPyFS3qgTtYU4CmzM3fgVhLGNj/hQgFDxt20Hr
	 Hgr66BPQKpyCdD5uNV4Ejkj+qncW3vE8KlUltu3rBwTC3LDBfkyyperXcRwVDlhhBk
	 ymfbmEl/aOIaSAEhSVggFKzG9NxpwmgACwG7rcpL+UuD0W7rCW3zU01hG51lQrgT1I
	 K96pcvlzOH21g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570EF612E2;
	Thu, 20 Nov 2025 08:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 89F06158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 08:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BAFA403C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 08:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eSCXtI9GtB0H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 08:18:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A81D4007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A81D4007D
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A81D4007D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 08:18:44 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Thu, 20 Nov 2025 09:18:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
X-B4-Tracking: v=1; b=H4sIANTOHmkC/33NQQ6CMBAF0KuQWVtDB4rgynsYQ5QOMAm22CJiC
 He3sjLGuPz589/M4MkxedhHMzga2bM1ISSbCKr2bBoSrEMGjFFJGe8EN1V5vfWObfk+MNR5gQk
 WMssoL/ILhGXvqOZpVY/Aj04YGuAUipb9YN1z/TbKtf4Lj1JIkWIqlcpQx3V+6NjcB2cNT1tNq
 znihyPz3w4Gp0pQZYkmTVh/O8uyvAC4K1bSCwEAAA==
X-Change-ID: 20251107-igc_mqprio_channels-2329166e898b
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3641; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=4zs6dQiUsbud0QNo8M/84mTmJeZFGcjU07Ztqhgvo+o=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBpHs7ghk/d7uaX8BpL30sKtTPZeJXoDq9pSVgvi
 0s6ha2wYvyJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCaR7O4AAKCRDBk9HyqkZz
 gtxSD/9rj7bERx6w5kGcV2DoR2ldR8lIq2GRyOPnLR6s5a80NgX4PHVgFFTKocvFM3tJ5M+fZl+
 Gf8/GbtfPYnJp/MFSg8Rae4R8Su9bNndgHXSMoCrxLmzxAjszMkWTwrz2dPZJul3Hyf8nbZi5l/
 mCrHrTwvcXflkReKGlEumAZVuvuqOBfFl9tFWPgXrTPwXt+i6qXa/6DQYLaKQlKIHURZm5weTUV
 9N2kMfb/BtxxcSMt6tfm5Qf705xVhzTsFPoepYCs3/Xj5a1mxbBeBulHYpq0EAKCoaDeEE6P2/g
 bWz+ysEpo54CYe+a7OFQJNXMWhcIqw2G0eGMKa54eiWSgh84L/uw+RB7+POEl81jaQrOC0YpnGP
 rYfIqbdbXZi1kK1SR22swQMsn6WLaXtcsIu8QjhN/WMe0i02zwn6BGsWN4Y4I5AkYfPzF4SAUto
 VeNbFghc1xYZEI8LmZg9QquF2YpjAwmPoxRhb3YTy58SMiSJIZXq2sM2KPXLOLNDIwmNRK0XUaY
 JmtG/0bmCZG/jPc7kUiEztNjdL2ZYk9fXwqe/q78wvtoDNtBE8NcNiHYjRg7G2xFP5youzgHdws
 lqkrpZMa6sWVN90WUMC8j17IZeMN52yZqxGNm/L/Yzg3E1UyhYi0/Ii1hPNmf4oEbmMk+MBoUpA
 wBt4MS2yrJ6qeEQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1763626720;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=53XnJLhHTCr1gL3u2Gkylmbe3ug+lFlZqtZzGJe+tzo=;
 b=VumFu3qZX9MIdWFzBmesbSnKGU3kz9RKUUv8bFrhdbwOjJolDmhnjDdfXIvQ2/IAxcJSbQ
 ea6cQaz8LXK1PA7gDdhbvggf/3CASRLGXzg+/Ecy6quDX0/sBIZ6w8xA7jHGC3XIPcEowS
 YKuny2NoMXE8919oN9Y308kReMzruIAsKIFegP4R7Uu0bSSqT2v0G5cxHnKdLee5BXID81
 ZeNc0mUmye9tXK7RDQfapsPM+uGY/P2/4UXFFxTIXXvPuP+f0kB6Zyy4Vr2JpwgSqbStJZ
 KmGOU3HQ3znuw/ZDf7KouvmfOAgB+2/wUtTVd/tA0jV4M6gqRf9Vs0+zSKDRaQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1763626720;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=53XnJLhHTCr1gL3u2Gkylmbe3ug+lFlZqtZzGJe+tzo=;
 b=mz8wCpUA1ieY8oarKcmRXkWpfMaRhEt2TSXVDP9lWDP1V5pWpxmwPGZhxWFB9SBEB+x5yC
 4vaur7nEWi1ZwCBQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=VumFu3qZ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=mz8wCpUA
Subject: [Intel-wired-lan] [PATCH iwl-net v3] igc: Restore default Qbv
 schedule when changing channels
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

The Multi-queue Priority (MQPRIO) and Earliest TxTime First (ETF) offloads
utilize the Time Sensitive Networking (TSN) Tx mode. This mode is always
coupled to IEEE 802.1Qbv time aware shaper (Qbv). Therefore, the driver
sets a default Qbv schedule of all gates opened and a cycle time of
1s. This schedule is set during probe.

However, the following sequence of events lead to Tx issues:

 - Boot a dual core system
   igc_probe():
     igc_tsn_clear_schedule():
       -> Default Schedule is set
       Note: At this point the driver has allocated two Tx/Rx queues, because
       there are only two CPUs.

 - ethtool -L enp3s0 combined 4
   igc_ethtool_set_channels():
     igc_reinit_queues()
       -> Default schedule is gone, per Tx ring start and end time are zero

  - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
      num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
      queues 1@0 1@1 1@2 1@3 hw 1
    igc_tsn_offload_apply():
      igc_tsn_enable_offload():
        -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i), causing Tx to stall/fail

Therefore, restore the default Qbv schedule after changing the number of
channels.

Furthermore, add a restriction to not allow queue reconfiguration when
TSN/Qbv is enabled, because it may lead to inconsistent states.

Fixes: c814a2d2d48f ("igc: Use default cycle 'start' and 'end' values for queues")
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v3:
- Adjust commit message and comments (Aleksandr)
- Link to v2: https://lore.kernel.org/r/20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de

Changes in v2:
- Explain abbreviations (Aleksandr)
- Only clear schedule if no error happened (Aleksandr)
- Add restriction to avoid inconsistent states (Vinicius)
- Target net tree (Vinicius)
- Link to v1: https://lore.kernel.org/r/20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++--
 drivers/net/ethernet/intel/igc/igc_main.c    | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index bb783042d1af9c86f18fc033fa4c3e75abb0efe8..4b39329e9e32bf34cef66e69b59d05b54cfeabff 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1561,8 +1561,8 @@ static int igc_ethtool_set_channels(struct net_device *netdev,
 	if (ch->other_count != NON_Q_VECTORS)
 		return -EINVAL;
 
-	/* Do not allow channel reconfiguration when mqprio is enabled */
-	if (adapter->strict_priority_enable)
+	/* Do not allow channel reconfiguration when any TSN qdisc is enabled */
+	if (adapter->flags & IGC_FLAG_TSN_ANY_ENABLED)
 		return -EINVAL;
 
 	/* Verify the number of channels doesn't exceed hw limits */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 728d7ca5338bf27c3ce50a2a497b238c38cfa338..21e67e7534562ccfa7bad8769bbafc866ecbc85f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7761,6 +7761,11 @@ int igc_reinit_queues(struct igc_adapter *adapter)
 	if (netif_running(netdev))
 		err = igc_open(netdev);
 
+	if (!err) {
+		/* Restore default IEEE 802.1Qbv schedule after queue reinit */
+		igc_tsn_clear_schedule(adapter);
+	}
+
 	return err;
 }
 

---
base-commit: bc41fbbf6faa9ffeaf0148019ed631077f7f150f
change-id: 20251107-igc_mqprio_channels-2329166e898b

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

