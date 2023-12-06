Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6686B8071C2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 15:07:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B52041F33;
	Wed,  6 Dec 2023 14:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B52041F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701871656;
	bh=/QlNX7yil6Re+pE9vSSnX5K/3QMkLLmErc7kfyzicWs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ovl4w8dEVgpqcIkTv9n6bbTvlT86mYQhpHNKTTRYsJMMySJHPc9HvK+TjYMu3Lvtk
	 8M3WFjcWRnI2Fr19eOqfeSkQ0G9qADpiJXeoVKzLEBjt6Pc2BonDcEN42aWo8TDAVQ
	 cEiz6oF90+snGG/751wfsd2t8uUHahKnWkRmNM8tDYOtQyJNDS45C3rvwvFwHOK25r
	 39ivdB5HJJ558NZMTypVU9+TbTnCm8cmB6xiWUc2uenwEcUtN/4oMv4zcv8HnaP0E2
	 iP1mO7UspC2TnZOI3philwg2/kFH+BGSZVfiKaL3Ep6vgv70NE6OX1M2OJdPKX38zh
	 GhBhzMuJTZrjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYkVHa0G1WPg; Wed,  6 Dec 2023 14:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 394A041EBE;
	Wed,  6 Dec 2023 14:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 394A041EBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79A951BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 14:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AAFA41EBE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 14:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AAFA41EBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DV5lF6h5imhV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 14:07:29 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CD1840105
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 14:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CD1840105
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Wed,  6 Dec 2023 15:07:18 +0100
Message-Id: <20231206140718.57433-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701871646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Q2jnrPRUFhsAeYH7XvPmL7PATOC17eZj15WDzaage5s=;
 b=GcqNaTUtG7eqsXFf8V1NftoLAINABIzn+tQ31uAH/P88GOKa8CKwbW+vBPEG1UA7NCJbgP
 +i0QAW7aWRRgoVO7BiixoE/9ILw1TlRwLR7aDyCaCsAOjWEK6XsHsYo4txHZqXTdpbl6MB
 c/uP/S10AMfuPLG9xJ5zOJvC0f92wRNuJb3EvQw4tz4YSTee/4NodbOUh/xpPXtyCoK8me
 IfG4Fz15mDM/b4BOpbcVTBE5AcwQg9MYoOEXZ3YpTvN5V8HeBsCE9vzelVLjuVFtRAT2rS
 A3UZhmAMb4P/TJNkZU02ywNBdNfm3+QGtLlVY0H2pIujWUIDLhqo3BAIWRs9Ow==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701871646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Q2jnrPRUFhsAeYH7XvPmL7PATOC17eZj15WDzaage5s=;
 b=FYpP6LAQqvbdBWga33Jedl/SR6do2iIzUIzTzxt/JZ7IOo5C28C1BNxhkUIoPyGU02l3hx
 8ygKcpCz1adEznDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=GcqNaTUt; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=FYpP6LAQ
Subject: [Intel-wired-lan] [PATCH iwl-net] igc: Check VLAN EtherType mask
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Suman Ghosh <sumang@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the driver accepts VLAN EtherType steering rules regardless of
the configured mask. And things might fail silently or with confusing error
messages to the user. The VLAN EtherType can only be matched by full
mask. Therefore, add a check for that.

For instance the following rule is invalid, but the driver accepts it and
ignores the user specified mask:
|root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
|             m 0x00ff action 0
|Added rule with ID 63
|root@host:~# ethtool --show-ntuple enp3s0
|4 RX rings available
|Total 1 rules
|
|Filter: 63
|        Flow Type: Raw Ethernet
|        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
|        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
|        Ethertype: 0x0 mask: 0xFFFF
|        VLAN EtherType: 0x8100 mask: 0x0
|        VLAN: 0x0 mask: 0xffff
|        User-defined: 0x0 mask: 0xffffffffffffffff
|        Action: Direct to queue 0

After:
|root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
|             m 0x00ff action 0
|rmgr: Cannot insert RX class rule: Operation not supported

Fixes: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
Suggested-by: Suman Ghosh <sumang@marvell.com>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---

Note: This is a follow up of

 https://lore.kernel.org/netdev/20231201075043.7822-1-kurt@linutronix.de/

and should apply to net-queue tree.

 drivers/net/ethernet/intel/igc/igc_ethtool.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index b56b4f338bd3..859b2636f3d9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1357,6 +1357,14 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
+	/* VLAN EtherType can only be matched by full mask. */
+	if ((fsp->flow_type & FLOW_EXT) &&
+	    fsp->m_ext.vlan_etype &&
+	    fsp->m_ext.vlan_etype != ETHER_TYPE_FULL_MASK) {
+		netdev_dbg(netdev, "VLAN EtherType mask not supported\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (fsp->location >= IGC_MAX_RXNFC_RULES) {
 		netdev_dbg(netdev, "Invalid location\n");
 		return -EINVAL;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
