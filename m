Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCj2JJwycmmadwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 15:22:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1481E67DD9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 15:22:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 728B36F782;
	Thu, 22 Jan 2026 14:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vrg_5diL_Q9v; Thu, 22 Jan 2026 14:22:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9DB36F7BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769091731;
	bh=L+H10aKDI+Q0/rzhr7Jj3ZIgsjQD3nyzkvMzlbjESYo=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=K2CbfIkiR1PM8BFU2aG9+g8COroFWqqiKYmsArT9K82Wk0LWJ8qE76NwXEKRo8fVL
	 BNT8/UscEB6CIKP/DQXyx5kUspvbIVLunEokAltp2TN5EuhAzZOCDyR364+bonlmUG
	 0XXSZbCYlUBPGArKb8ito5i2HclFcH8xw1FlxRGF9q0UtXgvOkLC3EMepgCnBACpR7
	 ASu5Md9zY+cbt2GpBI6yanxT1vY3lxxrW2IyVeURK8hFavrewOLNqHkyyVUnKC6X8E
	 kAeG3emjhKMMDryCxoS5LxdTVlgcvuJ3xbKlR6zfrIALZRddIfn8NXuu1r8ZhRv4KR
	 s57Sah4zfI1lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9DB36F7BC;
	Thu, 22 Jan 2026 14:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CA378122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 14:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4CBB42FD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 14:22:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ldtwe1diZvHq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 14:22:08 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 22 Jan 2026 14:22:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F1644149B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F1644149B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.227;
 helo=mta-65-227.siemens.flowmailer.net;
 envelope-from=fm-1333436-2026012214165859c47e1a46000207ef-kupijv@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-227.siemens.flowmailer.net
 (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F1644149B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 14:22:05 +0000 (UTC)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id
 2026012214165859c47e1a46000207ef
 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 15:16:59 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Thu, 22 Jan 2026 15:16:52 +0100
Message-Id: <20260122141652.2444012-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=L+H10aKDI+Q0/rzhr7Jj3ZIgsjQD3nyzkvMzlbjESYo=;
 b=cm8OZC4MkT9M4eEgYG4COT3CW6ucv2BfhO6OX0o1fRbiKdcKRuzuObZljwploPsbNoYBgK
 dtdZspYgSfhA+0Aby2pek/AgZ930utXXFQlMw/QDICcYSvTuPJSgunDQH5PA51w3Ugq7Aci/
 U1hU511xMBGbbGqrwh4UNJaa0Kzo/GGfhrSEIc/oDqSO8sUyw0dhVXVOgz0SS4CV5mtxL0BE
 jzNMI9gs/x8NZm0kI1sHJeOIX7lerr5cbZ9KTdssH2ML7k9bURRfJOBT6VSnHm3lmOXl/gAw
 Yv9NY6Vu6/JlRKG52DnUAWdmDeV3u5cQXx8J7txs73UULNugEIGs5jeg==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=cm8OZC4M
Subject: [Intel-wired-lan] [PATCH iwl-net v8] igb: Fix trigger of incorrect
 irq in igb_xsk_wakeup
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
From: Vivek Behera via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Vivek Behera <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:maciej.fijalkowski@intel.com,m:sriram.yagnaraman@ericsson.com,m:kurt@linutronix.de,m:vivek.behera@siemens.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[vivek.behera@siemens.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1481E67DD9
X-Rspamd-Action: no action

The current implementation in the igb_xsk_wakeup expects
the Rx and Tx queues to share the same irq. This would lead
to triggering of incorrect irq in split irq configuration.
This patch addresses this issue which could impact environments
with 2 active cpu cores
or when the number of queues is reduced to 2 or less

cat /proc/interrupts | grep eno2
 167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 0-edge      eno2
 168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 1-edge      eno2-rx-0
 169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 2-edge      eno2-rx-1
 170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 3-edge      eno2-tx-0
 171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
 4-edge      eno2-tx-1

Furthermore it uses the flags input argument to trigger either rx, tx or
both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation

Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/
v5: https://lore.kernel.org/intel-wired-lan/20260112130349.1737901-1-vivek.behera@siemens.com/
v6: https://lore.kernel.org/intel-wired-lan/20260117145112.2088217-1-vivek.behera@siemens.com/
v7: https://lore.kernel.org/intel-wired-lan/20260120075053.2260190-1-vivek.behera@siemens.com/

changelog:
v1
- Initial description of the Bug and fixes made in the patch

v1 -> v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Review suggestions by Aleksander: Modified sequence to complete all
  error checks for rx and tx before updating napi states and triggering irqs
- Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
- Added define for Tx interrupt trigger bit mask for E1000_ICS

v2 -> v3
- Included applicable feedback and suggestions from igc patch
- Fixed logic in updating eics value when  both TX and RX need wakeup

v3 -> v4
- Added comments to explain trigerring of both TX and RX with active queue pairs
- Fixed check of xsk pools in if statement

v4 -> v5
- Introduced a simplified logic for sequential check for RX and TX

v5 -> v6
- Further simplifications suggested by Maciej
- Included review suggestions from reviewers

v6 -> v7
- Removed redundant braces
- Updated comment block to improve explanation of implemented logic

v7 -> v8
- Added acked-by tag
---
 drivers/net/ethernet/intel/igb/igb_xsk.c | 38 +++++++++++++++++++-----
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..ce4a7b58cad2 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -524,6 +524,16 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
 	return nb_pkts < budget;
 }
 
+static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector)
+{
+	u32 eics = 0;
+
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+		eics = q_vector->eims_value;
+
+	return eics;
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct igb_adapter *adapter = netdev_priv(dev);
@@ -542,20 +552,32 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 
 	ring = adapter->tx_ring[qid];
 
-	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
-		return -ENETDOWN;
-
 	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
 
-	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
+	if (flags & XDP_WAKEUP_TX) {
+		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
+			return -ENETDOWN;
+
+		eics |= igb_sw_irq_prep(ring->q_vector);
+	}
+
+	if (flags & XDP_WAKEUP_RX) {
+		/* If IGB_FLAG_QUEUE_PAIRS is active, the q_vector
+		 * and NAPI is shared between RX and TX.
+		 * If NAPI is already running it would be marked as missed
+		 * from the TX path, making this RX call a NOP
+		 */
+		ring = adapter->rx_ring[qid];
+		eics |= igb_sw_irq_prep(ring->q_vector);
+	}
+
+	if (eics) {
 		/* Cause software interrupt */
-		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
-			eics |= ring->q_vector->eims_value;
+		if (adapter->flags & IGB_FLAG_HAS_MSIX)
 			wr32(E1000_EICS, eics);
-		} else {
+		else
 			wr32(E1000_ICS, E1000_ICS_RXDMT0);
-		}
 	}
 
 	return 0;
-- 
2.34.1

