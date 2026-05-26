Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLVHENm7FWrKYQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:27:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB675D8B1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60C2860FAF;
	Tue, 26 May 2026 15:27:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Rt5Yipn_gk0; Tue, 26 May 2026 15:27:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FCC060FB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779809238;
	bh=RcYJkbepy0hFGDpKlaCDfg2/HYEIPKovcL1K3xETJ5c=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=FmnHg9vXQvfkglAtUu+VIBOFa/akT6K/ZedB4bdddLjigTAx63mOeqp1EOu/B5J3a
	 KaImj3NI8mUoMAArv+AKHFkHqm3ncKwG+mMsBAKOzX9de7H8MH/W9QZibRfiMPDpFm
	 +y4GpTCTQPNYvfEdUzO3r35S8xU2afW2JeD3fLYY/VnFwMKmrk75zwnCznlWzPyPxF
	 f3hR3YfwA6L9QvoU0IPdhIg3V8n2Tpd+0wE6HCflhpF+cYm9OL9ihbBO5J/WPO98sY
	 OMMiVJQjrdBnlgjlzLcOQ5yphVANNDnjdqjSL/ol6RoWJ1seQvsjvW9NfeYBjlRIhE
	 ZyMEDxY1QE00Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FCC060FB5;
	Tue, 26 May 2026 15:27:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D47821F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 07:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EAA240277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 07:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GenrGgCnutjI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 07:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B239C40270
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B239C40270
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B239C40270
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 07:49:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779781706; cv=none; d=zohomail.in; s=zohoarc; 
 b=E+bI56Bum6oCmHw7eAeve/aOI2EJmToMGD4E3jijyvM0Q+5X2krhWIZ0VnrfGw+GJO6dLKk3yWyQ8f5aDsCufPRXcWDpZrmR6kYvaj1WwbCYwmF2luYf4dB1Z3cTY1d+4JfHk3L0ta6pFd8zVZjC8dyWJF/j5x5Wq5eT8ZSIye4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1779781706;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=RcYJkbepy0hFGDpKlaCDfg2/HYEIPKovcL1K3xETJ5c=; 
 b=NRZloqY9nNnmyjjvT7tv2I05n9k4YaADsSMtPOTR4xYv4/PyZkUeO1ia+ltu50IYuL1Twyage0rLdGPXeqjViAAStCoXAY2oRuhXCsc6R6zb+iRIbd73Vz6Srz/Y8hY9Py3dl92sYBLnNz4D+pwYpSpPzyLsvvOwlmJWbx+y2Fc=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: by mx.zoho.in with SMTPS id 1779781697849939.3097201310651;
 Tue, 26 May 2026 13:18:17 +0530 (IST)
To: kuba@kernel.org, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com
Cc: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 26 May 2026 13:17:38 +0530
Message-ID: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Tue, 26 May 2026 15:27:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1779781706; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=RcYJkbepy0hFGDpKlaCDfg2/HYEIPKovcL1K3xETJ5c=;
 b=DF2BHMFbOPkHACvwB/z+p1lJvJtdXl0muPaoruDwgDeYY/1gKvFcZyRrPJN7bZs1
 jRabxM4g03HT6NGtkJKus497wGLwN76waZAEimtIxwpTRF04mfxHnGvYwRVpo7XQ4rj
 OGh88OXSLuxy41M/YOpnVD85QUxr9QltPz7XzTbU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=kshitiz.bartariya@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=DF2BHMFb
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: implement get_queue_stats_rx
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
From: Kshitiz Bartariya via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:kshitiz.bartariya@zohomail.in,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zohomail.in:replyto,zohomail.in:mid,zohomail.in:email,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.972];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: BCB675D8B1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hook into the netdev_stat_ops interface to expose per RX queue
statistics through the netdev generic netlink API.

The following counters are filled:

 - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed

 - csum_bad: maps directly to csum_err, which is incremented for both
   IP header and L4 checksum errors in ixgbe_rx_checksum().

Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
---
v2:
 - Removed setting of hw_gro counters as ixgbe doesn't advertise it
 - Removed idx and ring checks as they are already checked against 
   real_num_rx_queues
Thanks Jakub Kicinski for the review comments.

v1: https://lore.kernel.org/lkml/20260523144022.36484-1-kshitiz.bartariya@zohomail.in/


 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2646ee6f295f..2184213727c7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9740,6 +9740,21 @@ static void ixgbe_get_stats64(struct net_device *netdev,
 	stats->rx_missed_errors	= netdev->stats.rx_missed_errors;
 }
 
+static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
+				     struct netdev_queue_stats_rx *stats)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+	struct ixgbe_ring *ring = adapter->rx_ring[idx];
+
+	stats->alloc_fail = ring->rx_stats.alloc_rx_page_failed +
+			    ring->rx_stats.alloc_rx_buff_failed;
+	stats->csum_bad = ring->rx_stats.csum_err;
+}
+
+static const struct netdev_stat_ops ixgbe_stat_ops = {
+	.get_queue_stats_rx	= ixgbe_get_queue_stats_rx,
+};
+
 static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
 				  struct ifla_vf_stats *vf_stats)
 {
@@ -11643,6 +11658,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
 
 	netdev->netdev_ops = &ixgbe_netdev_ops;
+	netdev->stat_ops   = &ixgbe_stat_ops;
 	ixgbe_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
-- 
2.50.1 (Apple Git-155)

