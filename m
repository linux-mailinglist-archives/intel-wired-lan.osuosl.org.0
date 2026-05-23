Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNV3B9i7FWrKYQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:27:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 896845D8B14
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:27:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D844483770;
	Tue, 26 May 2026 15:27:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gK5TpUgTnKwm; Tue, 26 May 2026 15:27:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46AF383670
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779809237;
	bh=kq4gAaal/V6/TQrHczoyukEEROImx0VyXHhPwwFKXEg=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=aJtizlSb7/5fAmeCZN2d9sIrrv9w5aEzQuRkAZ99v/gu3ZneVvwC/mQMI8YlOV4IN
	 YCXySlm0VLZQ1zZbfv1tgxsIJvxDJ+rNuVddjRbzgFbySGk8Jazjs6Ku76R1vdSYnZ
	 bhyQkLVzVadw25ushpgXHhve47VAkjAdH2Vsj4EuT7kerlWzPm75S3K622tU7A/JUM
	 +miXsyZs3sjbEFtFW+wi0AnzLWkc3Qya0oxJBII3r4eeC2g4RxzWedllREl+Hjb89t
	 NVBonR9305kZB0EYcEwRMA4VKpnSyK5h77+j5kzBrL6Ur8/j+owu8kp5zpkwdIUzte
	 OYY8y2PIULA5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46AF383670;
	Tue, 26 May 2026 15:27:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A0421263
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2026 14:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91FE460AF9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2026 14:56:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hFRm1_lJzbl3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 May 2026 14:56:50 +0000 (UTC)
X-Greylist: delayed 909 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 23 May 2026 14:56:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3247860884
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3247860884
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3247860884
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2026 14:56:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779547249; cv=none; d=zohomail.in; s=zohoarc; 
 b=Vevrvt6UrQSQxrCxjs0I8G9/04QvxyiDso+RpVlsJyqtee5jHgbH5G+0uK/5iKnrCrbGydTCBYpah3o4NwnaGOGz+n7iisNF4QFD5Xn5+grXEsrRMVIvZDP6CjxJKddOCxerPbPQzEuYnndeFE0AgF93v7GMzf4wORP/vVTUmoQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1779547249;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=kq4gAaal/V6/TQrHczoyukEEROImx0VyXHhPwwFKXEg=; 
 b=DlURBEk49mjyEjr2C2oA3oTQyPN6X8WmU6XvJEIy5e8ltkYi7sdbTM4z3labNjf6ra4i1vk9z0oqehJdfTlnjfaRwdabcM5daK3S7/VG+UxLq6ZiQTHMlGjQCq0/3WAUpChSQrGSu81/eJMhYdRQf1JykCkZ5pGFop3RtpMa2R8=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: by mx.zoho.in with SMTPS id 1779547242609712.7333978020995;
 Sat, 23 May 2026 20:10:42 +0530 (IST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Sat, 23 May 2026 20:10:16 +0530
Message-ID: <20260523144022.36484-1-kshitiz.bartariya@zohomail.in>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Tue, 26 May 2026 15:27:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1779547249; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=kq4gAaal/V6/TQrHczoyukEEROImx0VyXHhPwwFKXEg=;
 b=N4MY6jdKQL2tHq18tG707FhjAEIO4y5cOWkU8PWjL5DxnKkZmgjt16duE57xXfrw
 65zRRvkS3g1slX69BkFGAjIcVjKfo8WPQyB1qWrJRZC4n8WempIqgJ7nm8nVDaE5hIc
 oAN/loOYGeaGlvFMkqROXEISqTrW4+3AqDEV78yU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=kshitiz.bartariya@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=N4MY6jdK
Subject: [Intel-wired-lan] [PATCH net] ixgbe: implement get_queue_stats_rx
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
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[72];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kshitiz.bartariya@zohomail.in,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,zohomail.in:replyto,zohomail.in:mid,zohomail.in:email,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	NEURAL_HAM(-0.00)[-0.930];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 896845D8B14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hook into the netdev_stat_ops interface to expose per RX queue
statistics through the netdev generic netlink API.

The following counters are filled:

 - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed

 - csum_bad: maps directly to csum_err, which is incremented for both
   IP header and L4 checksum errors in ixgbe_rx_checksum().

 - hw_gro_packets and hw_gro_wire_packets: filled only when RSC
   is enabled on the ring

Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2646ee6f295f..f40309f6c72b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9740,6 +9740,34 @@ static void ixgbe_get_stats64(struct net_device *netdev,
 	stats->rx_missed_errors	= netdev->stats.rx_missed_errors;
 }
 
+static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
+				     struct netdev_queue_stats_rx *stats)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+	struct ixgbe_ring *ring;
+
+	if (idx >= adapter->num_rx_queues)
+		return;
+
+	ring = adapter->rx_ring[idx];
+	if (!ring)
+		return;
+
+	stats->alloc_fail = ring->rx_stats.alloc_rx_page_failed +
+			    ring->rx_stats.alloc_rx_buff_failed;
+	stats->csum_bad = ring->rx_stats.csum_err;
+
+	if (ring_is_rsc_enabled(ring)) {
+		stats->hw_gro_packets = ring->rx_stats.rsc_flush;
+		stats->hw_gro_wire_packets = ring->rx_stats.rsc_flush +
+					     ring->rx_stats.rsc_count;
+	}
+}
+
+static const struct netdev_stat_ops ixgbe_stat_ops = {
+	.get_queue_stats_rx	= ixgbe_get_queue_stats_rx,
+};
+
 static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
 				  struct ifla_vf_stats *vf_stats)
 {
@@ -11643,6 +11671,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
 
 	netdev->netdev_ops = &ixgbe_netdev_ops;
+	netdev->stat_ops   = &ixgbe_stat_ops;
 	ixgbe_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
-- 
2.50.1 (Apple Git-155)

