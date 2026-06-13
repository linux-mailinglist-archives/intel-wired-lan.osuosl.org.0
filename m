Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c9TFJk4fLWq9bwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jun 2026 11:13:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CB867E358
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jun 2026 11:13:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Fa7ADEtI;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.in:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A16760F60;
	Sat, 13 Jun 2026 09:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H_NmM4KxjO8T; Sat, 13 Jun 2026 09:13:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B4AE60F57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781342026;
	bh=3R0uW9DC3035/8HwJUTjPGnWNNQeGkU2lsxEtwrLprg=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=Fa7ADEtI3ghfVloSSHx1wKXtVjLPfBX45pSfyRfRyIWQKPG1DC25uqU2N7w8Wsz3w
	 xvc/phdtq4YAklO/EW3x7cTqwcAlAuvX4cdWgOUcc0sNXVY8pRg8ZVeYelQXcRBb6Z
	 Cvxgim1CiLLp8Mhm9G1oKv1NQRxGoJhOCxOW3Use60xL6frjQjtaPcbP91JnYlgeOQ
	 v5T30bGb69bv2/Yt9bKdUhyjoZm2CLsWL1ZC68QBsYJp59v3yWHJw57qZ3vK0d1g0Z
	 unppzPuyDGTzwQKb8kZEc585LxIcIOK5Yole+GNvpr2smOwE9AMiLzadPz8DGO3bSz
	 F8daBP1PJNAIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B4AE60F57;
	Sat, 13 Jun 2026 09:13:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B8BCDE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jun 2026 09:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1141883D81
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jun 2026 09:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRYFX8_V-L41 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Jun 2026 09:13:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9251083D3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9251083D3C
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9251083D3C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jun 2026 09:13:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781341965; cv=none; d=zohomail.in; s=zohoarc; 
 b=GI0cK7iOX324VlGf3gasf8KvYCoHE3imxizSnBi9te0jH+xVqxBz/O7mfBXWXQmzllXAGgqWGDuq0bSKKvwwTIVzelNIqY92Ea1t7HqL4g+PhwP6T+LBssWULS0LQAOSmUmsuktNAF7qD6vAKEk47zKwjshTBdgfH7oqMMBLeKk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1781341965;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=3R0uW9DC3035/8HwJUTjPGnWNNQeGkU2lsxEtwrLprg=; 
 b=KJuW+HLX08+iB7SbhIxZ0pMK2DtDtoq8DPlvGGeYflAth0RcU0MpV9rAbUcrENWQYkOaq3cY8ItkaGLUe8GPtsJlEpt0m3M8g3Fm0o+36yuk4SSCIaPetroQK8BhNYcw/TVVo3YOGILVuCy78uDd4MQrHKn2DgOEXGrSvOh16+s=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: by mx.zoho.in with SMTPS id 1781341958077868.0825005646292;
 Sat, 13 Jun 2026 14:42:38 +0530 (IST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jedrzej.jagielski@intel.com
Cc: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Sat, 13 Jun 2026 14:42:26 +0530
Message-ID: <20260613091231.26601-1-kshitiz.bartariya@zohomail.in>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1781341965; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=3R0uW9DC3035/8HwJUTjPGnWNNQeGkU2lsxEtwrLprg=;
 b=BurZEosnb29zD2RUGEJTH5Yx05mlQZFHTfTgAxVVqklehvdH/JGqW/vFUbcDbUdC
 0nTDmPFqtNFzyOcUziKHoVUwt8UMLDO94EsRcBj3F7o3HGoyCR4h/MJilauUHvngzno
 gnvgaS3ZO/HuRFfzgLgzYV5Jq5ETRtX20YLrXxdQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=kshitiz.bartariya@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=BurZEosn
Subject: [Intel-wired-lan] [PATCH net-next v4] ixgbe: implement
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:kshitiz.bartariya@zohomail.in,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52CB867E358

Hook into the netdev_stat_ops interface to expose per RX queue
statistics through the netdev generic netlink API.

The following counters are filled:
 - bytes: maps directly to bytes
 - packets: maps directly to packets
 - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed
 - csum_bad: maps directly to csum_err, which is incremented for both
   IP header and L4 checksum errors in ixgbe_rx_checksum().

The new per-queue stats can be observed with:
  $ ynltool qstats show scope queue

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
---
v4:
 - Changed comment format from // to /* */
 - Moved ixgbe_stat_ops declaration next to the ixgbe_netdev_ops
 Suggested by Jedrzej Jagielski.

v3:
 - Added bytes and packets stats counters
 - Implemented ixgbe_get_base_stats function
 As suggested by AI on 
 https://netdev-ai.bots.linux.dev/sashiko/#/patchset/20260603174857.78666-1-kshitiz.bartariya%40zohomail.in
 https://lore.kernel.org/lkml/20260612084605.19785-1-kshitiz.bartariya@zohomail.in/

v2:
 Amended commit message with command to get RX queue stats as 
 suggested by Jedrzej Jagielski.
 https://lore.kernel.org/lkml/20260603174857.78666-1-kshitiz.bartariya@zohomail.in/

v1: 
 https://lore.kernel.org/lkml/20260602100932.21838-1-kshitiz.bartariya@zohomail.in/

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bc16e4c93fd4..67844e25af23 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9759,6 +9759,30 @@ static void ixgbe_get_stats64(struct net_device *netdev,
 	stats->rx_missed_errors	= netdev->stats.rx_missed_errors;
 }
 
+static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
+				     struct netdev_queue_stats_rx *stats)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+	struct ixgbe_ring *ring = adapter->rx_ring[idx];
+
+	stats->bytes = ring->stats.bytes;
+	stats->packets = ring->stats.packets;
+	stats->alloc_fail = ring->rx_stats.alloc_rx_page_failed +
+			    ring->rx_stats.alloc_rx_buff_failed;
+	stats->csum_bad = ring->rx_stats.csum_err;
+}
+
+static void ixgbe_get_base_stats(struct net_device *dev,
+				 struct netdev_queue_stats_rx *rx,
+				 struct netdev_queue_stats_tx *tx)
+{
+	/* ixgbe has no inactive queues */
+	rx->bytes = 0;
+	rx->packets = 0;
+	rx->alloc_fail = 0;
+	rx->csum_bad = 0;
+}
+
 static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
 				  struct ifla_vf_stats *vf_stats)
 {
@@ -11116,6 +11140,11 @@ static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_hwtstamp_set	= ixgbe_ptp_hwtstamp_set,
 };
 
+static const struct netdev_stat_ops ixgbe_stat_ops = {
+	.get_queue_stats_rx = ixgbe_get_queue_stats_rx,
+	.get_base_stats = ixgbe_get_base_stats,
+};
+
 static void ixgbe_disable_txr_hw(struct ixgbe_adapter *adapter,
 				 struct ixgbe_ring *tx_ring)
 {
@@ -11662,6 +11691,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
 
 	netdev->netdev_ops = &ixgbe_netdev_ops;
+	netdev->stat_ops = &ixgbe_stat_ops;
 	ixgbe_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
-- 
2.50.1 (Apple Git-155)

