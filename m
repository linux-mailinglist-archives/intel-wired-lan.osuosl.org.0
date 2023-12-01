Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3672B80050C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 08:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6984A4207C;
	Fri,  1 Dec 2023 07:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6984A4207C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701417073;
	bh=faHvGki/seOB9SoLTyRFbwozXw9wf92KN8ML0Dgxz9M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k49HFHBAPkzho3YrF4jpWFuXqFis+7zupvJkMpNIv/JyBMJKFalS4HgP1qFzhT4y0
	 INIhtz9sOIBvdBAorevh61mJvDRkr80qjR5PzN0yqWgrQpR89pDoTSmf/lq8m4bBbd
	 OT8MDP4o4aePivUt5hDC3cYDhqZRHNBDsBcyvVq3J91fuhijWzyAvnqc8dz2XEMdEf
	 bGquB1FBbjOo6dBZNlxfNXXhira8rbgeNyWv7mvvaagEGOju//mP++Jk9CjJ7mfgmX
	 PSc6oPjQAfDm2+OKzFOEZAKqrpvxj6kFTAzMGHqd2GPU7rtjWy10Pf2KCOX16HXzAd
	 M+uvbAK/13NzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-6RlW5E8boo; Fri,  1 Dec 2023 07:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA1D64207F;
	Fri,  1 Dec 2023 07:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA1D64207F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74FF11BF98D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D57960B68
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D57960B68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zU38N8gi5hV6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 07:51:02 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BE6A60AC2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BE6A60AC2
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Fri,  1 Dec 2023 08:50:42 +0100
Message-Id: <20231201075043.7822-2-kurt@linutronix.de>
In-Reply-To: <20231201075043.7822-1-kurt@linutronix.de>
References: <20231201075043.7822-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701417059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QYAOLm8RpL58iZCqFdlXXxx0BUikZ5aYxjk4LwEetvE=;
 b=HozR945gQVbiW9ou5ZdJI9HZ810ok5CAThgaiRz2zKRcFWcD1maGgsSg32OygE0rQspCNj
 Syi+YKw7hGtoLud6w/9jfRSQQ+fybJ1ihlIpGF30wDVvEUR/4rDbq0ccVzWwvxfVAEF0TC
 bl+5RtZotR51i6ChrKVMstxy0GAlXBWc0AqeCAog15uZZq3TT2yR6p9N1FZIYgHliVP/cU
 22JLnniiGokoY12gg8mRLERqlOkxjOrV5cml+jDhqFDMeDgt5D9aTi4lZkGEXCxRh+6pwz
 yM1r7dFiM1idW5kdMmvamJYuC78ye4FHveIaUh9W4ANGdXj1id4WXHlKPZ/QmQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701417059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QYAOLm8RpL58iZCqFdlXXxx0BUikZ5aYxjk4LwEetvE=;
 b=dVJmEkkHoScG42GIeZemOHW4R7aQNuntE5gVNPBbYlcL184jkUhnnxUEgISFdiVIdYZAu+
 heejQNQa20aOgCBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=HozR945g; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=dVJmEkkH
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] igc: Report VLAN EtherType
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

Currently the driver allows to configure matching by VLAN EtherType.
However, the retrieval function does not report it back to the user. Add
it.

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

Fixes: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 785eaa8e0ba8..69b2fd006293 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -980,6 +980,12 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 		fsp->m_u.ether_spec.h_proto = ETHER_TYPE_FULL_MASK;
 	}
 
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) {
+		fsp->flow_type |= FLOW_EXT;
+		fsp->h_ext.vlan_etype = rule->filter.vlan_etype;
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
