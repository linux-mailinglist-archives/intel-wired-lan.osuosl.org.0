Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xX6LAE5pIGpR3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 19:50:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAC063A459
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 19:50:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FRhtSKlB;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.in:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01EB06173C;
	Wed,  3 Jun 2026 17:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C0w3uehIYxdV; Wed,  3 Jun 2026 17:49:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46D266173D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780508998;
	bh=FPznyU5UkNdxURZq6oQJT5Pk+LvQRwwY9+SyJbPJKOg=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=FRhtSKlB/3LtMB9LkfYJ7onHabw44saJ5X+nUZNmhaiIr/QF9kiEmsg4zueeKfeZK
	 z4MCaNzsOEv44X4EoHSxGFGdVMTTCGj/x1V26PU0yvXauEqyMpUN2etT2t0nXf2UYA
	 4ThWSZ82mMlz2l+5NyUcR/C6d2OYNn/lz2Hab2uyaCCLU+tkv+gPuvPsx86poLcPpO
	 xOiJ2sOdOjCc05pNBt0gQjfOdvuNcoMn81BJDDJkadpNMf9z/aw0D4VE9WZA7E0/Hd
	 JksnzlfAsoD/7nkiz992+sWVEkOzp+/EDCE2G98F9IqHPhpSJqq+BdqxcUVdGd5fU/
	 AtpLYtyqlutWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46D266173D;
	Wed,  3 Jun 2026 17:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 060A1DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E07526173B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:49:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FwN7WqTC1361 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 17:49:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4772B61737
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4772B61737
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4772B61737
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:49:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1780508959; cv=none; d=zohomail.in; s=zohoarc; 
 b=bcuEN3Loxr2maewwW3jVN8NAa90rD75CIE3AB5effUT2kP1z0eKT+tw9cTw9APDbdC8XaYXcsoPvyS2FhubiF0y1mxXu3x0MDnvbxd9YQ7t4DWXAebWn0Nvora3GyhTiE13lnjQZGodzzsF3n/oP1pRuOVihCv01efHH4qTwW1s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1780508959;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=FPznyU5UkNdxURZq6oQJT5Pk+LvQRwwY9+SyJbPJKOg=; 
 b=FK5we3P/Ng/fWco9yxFl0z3v+0nRIZBVkMU6D8oOysoWt4AguiEbKwlNS7/uz7vB1EM7mbKv3ASz+aLHCdXrKgi1AF/bVJkrtbSsDZpgdT5d0wQ0tW8P/mdKDv+OwgjYHZQRtXkBBaI/9DBsl56FmQhEB3gZ5OzCBlFyU2SyzC0=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: by mx.zoho.in with SMTPS id 1780508952546283.8008332037757;
 Wed, 3 Jun 2026 23:19:12 +0530 (IST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksandr.loktionov@intel.com,
 jacob.e.keller@intel.com, jedrzej.jagielski@intel.com,
 piotr.kwapulinski@intel.com
Cc: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed,  3 Jun 2026 23:18:51 +0530
Message-ID: <20260603174857.78666-1-kshitiz.bartariya@zohomail.in>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1780508959; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=FPznyU5UkNdxURZq6oQJT5Pk+LvQRwwY9+SyJbPJKOg=;
 b=AG4UdUukDI1kx2SEUEW7VmauTJZ48D1/IsszS/KJwl8xcKjlz4ZzC1wa7rpdI94D
 roMScs9BT18oyXUjybHnJ9pTM0iG7avHGL3xFoBgdkaKpJHYSCA4O1/q/Vni4n/1Xb8
 GTJsQE2KiDkjD6er9w56XUNV7ctheC/fD5dJRg58=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=zohomail.in
 header.i=kshitiz.bartariya@zohomail.in header.a=rsa-sha256 header.s=zoho
 header.b=AG4UdUuk
Subject: [Intel-wired-lan] [PATCH net-next v2] ixgbe: implement
 get_queue_stats_rx
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:kshitiz.bartariya@zohomail.in,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:from_mime,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,zohomail.in:mid,zohomail.in:email,zohomail.in:replyto];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DAC063A459

Hook into the netdev_stat_ops interface to expose per RX queue
statistics through the netdev generic netlink API.

The following counters are filled:

 - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed

 - csum_bad: maps directly to csum_err, which is incremented for both
   IP header and L4 checksum errors in ixgbe_rx_checksum().

The new per-queue stats can be observed with:
  $ ynltool qstats show scope queue

Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
---
v2:
 Amended commit message with command to get RX queue stats as 
suggested by Jedrzej Jagielski.

v1: https://lore.kernel.org/lkml/20260602100932.21838-1-kshitiz.bartariya@zohomail.in/


 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bc16e4c93fd4..05d4b8aff1fc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9759,6 +9759,21 @@ static void ixgbe_get_stats64(struct net_device *netdev,
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
@@ -11662,6 +11677,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
 
 	netdev->netdev_ops = &ixgbe_netdev_ops;
+	netdev->stat_ops   = &ixgbe_stat_ops;
 	ixgbe_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
-- 
2.50.1 (Apple Git-155)

