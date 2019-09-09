Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2672EADB55
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2019 16:39:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CAC4720459;
	Mon,  9 Sep 2019 14:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XydDe5r3Ru-3; Mon,  9 Sep 2019 14:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C384E204E3;
	Mon,  9 Sep 2019 14:39:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCF021BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 14:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C8EFD86FE7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 14:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ow62IvFlsjs3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2019 14:21:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9251C861E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 14:21:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 2856728BB4D
From: Robert Beckett <bob.beckett@collabora.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Sep 2019 15:21:01 +0100
Message-Id: <20190909142117.20186-1-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.18.0
X-Mailman-Approved-At: Mon, 09 Sep 2019 14:39:15 +0000
Subject: [Intel-wired-lan] [PATCH v2] igb: add rx drop enable attribute
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
Cc: Robert Beckett <bob.beckett@collabora.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To allow userland to enable or disable dropping packets when descriptor
ring is exhausted, add RX_DROP_EN private flag.

This can be used in conjunction with flow control to mitigate packet storms
(e.g. due to network loop or DoS) by forcing the network adapter to send
pause frames whenever the ring is close to exhaustion.

By default this will maintain previous behaviour of enabling dropping of
packets during ring buffer exhaustion.
Some use cases prefer to not drop packets upon exhaustion, but instead
use flow control to limit ingress rates and ensure no dropped packets.
This is useful when the host CPU cannot keep up with packet delivery,
but data delivery is more important than throughput via multiple queues.

Userland can set this flag to 0 via ethtool to disable packet dropping.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---

Notes:
    Changes since v1: re-written to use ethtool priv flags instead of sysfs attribute

 drivers/net/ethernet/intel/igb/igb.h         |  1 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c |  8 ++++++++
 drivers/net/ethernet/intel/igb/igb_main.c    | 11 +++++++++--
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index ca54e268d157..ff4a61218e3e 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -617,6 +617,7 @@ struct igb_adapter {
 #define IGB_FLAG_VLAN_PROMISC		BIT(15)
 #define IGB_FLAG_RX_LEGACY		BIT(16)
 #define IGB_FLAG_FQTSS			BIT(17)
+#define IGB_FLAG_RX_DROP_EN		BIT(18)
 
 /* Media Auto Sense */
 #define IGB_MAS_ENABLE_0		0X0001
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 3182b059bf55..b584fa1f0e14 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -128,6 +128,8 @@ static const char igb_gstrings_test[][ETH_GSTRING_LEN] = {
 static const char igb_priv_flags_strings[][ETH_GSTRING_LEN] = {
 #define IGB_PRIV_FLAGS_LEGACY_RX	BIT(0)
 	"legacy-rx",
+#define IGB_PRIV_FLAGS_RX_DROP_EN	BIT(1)
+	"rx-drop-en",
 };
 
 #define IGB_PRIV_FLAGS_STR_LEN ARRAY_SIZE(igb_priv_flags_strings)
@@ -3444,6 +3446,8 @@ static u32 igb_get_priv_flags(struct net_device *netdev)
 
 	if (adapter->flags & IGB_FLAG_RX_LEGACY)
 		priv_flags |= IGB_PRIV_FLAGS_LEGACY_RX;
+	if (adapter->flags & IGB_FLAG_RX_DROP_EN)
+		priv_flags |= IGB_PRIV_FLAGS_RX_DROP_EN;
 
 	return priv_flags;
 }
@@ -3457,6 +3461,10 @@ static int igb_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 	if (priv_flags & IGB_PRIV_FLAGS_LEGACY_RX)
 		flags |= IGB_FLAG_RX_LEGACY;
 
+	flags &= ~IGB_FLAG_RX_DROP_EN;
+	if (priv_flags & IGB_PRIV_FLAGS_RX_DROP_EN)
+		flags |= IGB_FLAG_RX_DROP_EN;
+
 	if (flags != adapter->flags) {
 		adapter->flags = flags;
 
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 105b0624081a..51a8010dbe59 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3236,6 +3236,9 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	igb_validate_mdi_setting(hw);
 
+	/* By default, support dropping packets due to ring exhaustion */
+	adapter->flags |= IGB_FLAG_RX_DROP_EN;
+
 	/* By default, support wake on port A */
 	if (hw->bus.func == 0)
 		adapter->flags |= IGB_FLAG_WOL_SUPPORTED;
@@ -4503,8 +4506,12 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 	srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
 	if (hw->mac.type >= e1000_82580)
 		srrctl |= E1000_SRRCTL_TIMESTAMP;
-	/* Only set Drop Enable if we are supporting multiple queues */
-	if (adapter->vfs_allocated_count || adapter->num_rx_queues > 1)
+	/*
+	 * Only set Drop Enable if we are supporting multiple queues and
+	 * allowed by flags
+	 */
+	if ((adapter->flags & IGB_FLAG_RX_DROP_EN) &&
+		(adapter->vfs_allocated_count || adapter->num_rx_queues > 1))
 		srrctl |= E1000_SRRCTL_DROP_EN;
 
 	wr32(E1000_SRRCTL(reg_idx), srrctl);
-- 
2.18.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
