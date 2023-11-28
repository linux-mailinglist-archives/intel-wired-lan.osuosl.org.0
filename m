Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4957FB35D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:57:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 408FD40414;
	Tue, 28 Nov 2023 07:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 408FD40414
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701158227;
	bh=oXoNq0TYQX8RyF/Qd4Ulw0I86KyFOkdrCTna13oyDZE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kcOcrsGo20MFirxMpTUtEUU8WuIpB/lnvX8dpoCXQpZjEn1t4OaVdX1/fSW3gPpej
	 hc4BMzNbdnbzI+p9sjLPL0OFy8UmsMb02KiShHJYCShzbo/a4bz73g6HXfSJXcrAWW
	 C+Tes11a1m1xeCHAV8YyoAqy4ZT03p7gy6N33dO9YRkEr8LL7o7Ts6lGTmwjJVh1lE
	 GJ/HGBxcfVaWaBxDNwyAayk+Df88VeTWexn2KMNGntNk4GiKybnmstlU3MSPePWUyY
	 HWPd39GSV47StPHng1L5UvWhBwkgVOPtCKIomtktOqZYjjLvYgmOJGNK772Juu99Rb
	 oHxCWt77s5SEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vwrt7nIwrKsP; Tue, 28 Nov 2023 07:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11563403AA;
	Tue, 28 Nov 2023 07:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11563403AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25A941BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B402860FC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B402860FC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86DyG4-2Rtxr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
X-Greylist: delayed 457 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 Nov 2023 07:56:48 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF56D60F81
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF56D60F81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:48 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 28 Nov 2023 08:48:48 +0100
Message-Id: <20231128074849.16863-5-kurt@linutronix.de>
In-Reply-To: <20231128074849.16863-1-kurt@linutronix.de>
References: <20231128074849.16863-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701157751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a299mGbCOnW9pogbkkKeguw/IHMZOMDhnTiCw8p6fy0=;
 b=v6Ed3rK+vKrWm8rSN9xYkKpp6sKzjO6Aigcb3tjqK4D57Ld4s9bGZoxcgVnNwxnX2hy8Dv
 8f/nbRA/L00HurtL1qsAyFBNHhMAh6C7IEL/hkWrZc776LsVg7QlX6KoFA6LbdsHi0FIpf
 O9SF1oOtbTxVe8sVZUnGo6v5K5a/hWXDseaQyn5GfdAJNrRgWgiK5Tvgibnby+qW98hY79
 vl9WFBZHHrLeeBUzSW1Ge6HDajUQIWlqFpcOQ6PjZK+LdlYM4qYX5Nsxr2QrBjfagzn8B9
 P0YTl0mc/znv7oIVMwJYRnvuPOItjgK+/f9Vkg+EE0o3oRveSSVtoRt8HKEFYg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701157751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a299mGbCOnW9pogbkkKeguw/IHMZOMDhnTiCw8p6fy0=;
 b=GCvleQ5MqWqtMrF7/KF0x/6p5QGEqpOKVY7E73Fs7ZkhGjwVXVpS7GVc21+kQnADudQxtx
 SpyK97McmpJuiBBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=v6Ed3rK+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=GCvleQ5M
Subject: [Intel-wired-lan] [PATCH net-next 4/5] igc: Report VLAN EtherType
 matching back to user
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the driver allows to configure matching by VLAN EtherType. However,
the retrieval function does not report it back to the user. Add it.

Before:
|root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 action 0
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
|        Action: Direct to queue 0

After:
|root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 action 0
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

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8e12ef362b23..b782fb2abf20 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -980,6 +980,12 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 		fsp->m_u.ether_spec.h_proto = ETHER_TYPE_FULL_MASK;
 	}
 
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) {
+		fsp->flow_type |= FLOW_EXT;
+		fsp->h_ext.vlan_etype = htons(rule->filter.vlan_etype);
+		fsp->m_ext.vlan_etype = ETHER_TYPE_FULL_MASK;
+	}
+
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
 		fsp->flow_type |= FLOW_EXT;
 		fsp->h_ext.vlan_tci = htons(rule->filter.vlan_tci);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
