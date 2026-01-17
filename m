Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A63D38F31
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jan 2026 15:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8E9A61035;
	Sat, 17 Jan 2026 14:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jg8wNetaMR1L; Sat, 17 Jan 2026 14:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA8DD61031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768661796;
	bh=aa54OENF9ABNcJv7sWUPIY+48jkbuXthOXRhJ6iiK6w=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=uJ6z3IX+j1qTQhpxdv68nbUvhHu+AnjRaMj6vpIl4WnVV82Zknbu6v67v5COzrgHm
	 GOFzNACJWC5PRAVp4fwemBbpT88hHovmsZUrsxabPjfnZEh9nEMpeK/gxj3o9wHFIF
	 rN8amJ//B+8azFJqokvGB8Xpjva/RQIzKQbCEZInJw37h6tCc+YYq9NiolJg4jVIZu
	 69Ad3m/iO3sHlvC4sDoxxSfWxDZ54thRUudirHw7XuhruYaHKT+6i0HOsuf1wAR2d2
	 Rx85YlmfCe4cjSQdM1X2lVDVpH840xbuMPjlNGgjSYJkCmlzWcKOeIrojz0k9Af5Lf
	 2eCKNfmZ110kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA8DD61031;
	Sat, 17 Jan 2026 14:56:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5408F347
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 14:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30BE960BBA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 14:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z5-WCGLW8P5U for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 14:56:33 +0000 (UTC)
X-Greylist: delayed 304 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 17 Jan 2026 14:56:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6A52460B83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A52460B83
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.226;
 helo=mta-65-226.siemens.flowmailer.net;
 envelope-from=fm-1333436-20260117145124783eefdf6a0002076d-q1elmq@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-226.siemens.flowmailer.net
 (mta-65-226.siemens.flowmailer.net [185.136.65.226])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A52460B83
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 14:56:31 +0000 (UTC)
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id
 20260117145124783eefdf6a0002076d
 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 15:51:24 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de
Cc: intel-wired-lan@lists.osuosl.org,
	vivek.behera@siemens.com
Date: Sat, 17 Jan 2026 15:51:12 +0100
Message-Id: <20260117145112.2088217-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=aa54OENF9ABNcJv7sWUPIY+48jkbuXthOXRhJ6iiK6w=;
 b=U6uYONGn/HtrDH1A8XaCfQ55LML4+efQtG8u6uFh4XW2VH1TIvBM7c9zg9jB7sERhocM8M
 VqDZC6hAyi35E1kkV9VDtZ7hgXIly6ru720Wq4LUYCOjrESgTfTZ2mv4o/AFXIVQdXBC8O1I
 8gIr0QUF29ZnB3Er5JkVtp/qZnTGsvsnePcVtDQhoeS2jW5IXdQQ7ewfP41tbJtwvaOy3yND
 hXiXY9Rj9z2ZFq+R9Rf00kIUei5q+B5cHPKctNC/t2bw9nO7oG3TtXedFmE7/cNPrP42QSCc
 oBjH8xGNW3V92TXRkx7JaHO/4mb1cx5qlerVlph2up4q8+HfRujpJn2w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=U6uYONGn
Subject: [Intel-wired-lan] [PATCH iwl-net v6] igb: Fix trigger of incorrect
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
---
v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/
v5: https://lore.kernel.org/intel-wired-lan/20260112130349.1737901-1-vivek.behera@siemens.com/

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
---
 drivers/net/ethernet/intel/igb/igb_xsk.c | 31 ++++++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 30ce5fbb5b77..f8bddb7a2af8 100644
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
@@ -542,16 +552,27 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 
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
+		/* for IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
+		 * been already marked with NAPIF_STATE_MISSED
+		 */
+		ring = adapter->rx_ring[qid];
+		eics |= igb_sw_irq_prep(ring->q_vector);
+	}
+
+	if (eics) {
 		/* Cause software interrupt */
 		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
-			eics |= ring->q_vector->eims_value;
 			wr32(E1000_EICS, eics);
 		} else {
 			wr32(E1000_ICS, E1000_ICS_RXDMT0);
-- 
2.34.1

