Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C25D7B8C592
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 12:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B5B740A30;
	Sat, 20 Sep 2025 10:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHb4f6icsvvQ; Sat, 20 Sep 2025 10:26:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49F5D4076C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758363975;
	bh=knD2vTAhYXA0DHubOn/ynefHYQCzxEdsDy0wiqwzcDg=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nb+sbw8o3VkWgpH3r2BJHYNkBypCbP08chI+qUnt8cg/I9eljTaTYRaDSctosncnx
	 c9nQJf1jTBvGHjNAITwSdAql7wI86/3hFf95QqINPu7oiQoWwbk6c4ahn/u+hMwh/0
	 gJZ5BTi4t/rKQnlBCpPH3DkAndY8qL3tVp8gFm07s3LQ+IfknYs773FRLn8QgrczBt
	 EFAvTFA3R5dwco6OwnyaZexSZ79iOLuOl5wYgq0YDQ18+vusN09OdvpCi/AXBXTKAt
	 H/OI00ssjPli1ht0N3TAh8niVjbAPQvhxSzLpt5jaOONayzxf6jEq0oIjC+TT2++UO
	 JgSA1FxCe5wjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49F5D4076C;
	Sat, 20 Sep 2025 10:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DEDC2D7F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 10:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5A2040637
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 10:26:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ptEA14wW2bOk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 10:26:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=50.112.246.219;
 helo=pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=351c65b72=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B301405CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B301405CD
Received: from pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [50.112.246.219])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B301405CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 10:26:11 +0000 (UTC)
X-CSE-ConnectionGUID: fJsWJPI0S5qGRcsNQ2BoNQ==
X-CSE-MsgGUID: DK/7IMlVTPSeXUZruKOygg==
X-IronPort-AV: E=Sophos;i="6.18,280,1751241600"; 
   d="scan'208";a="3219376"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2025 10:26:08 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.38.20:49812]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.48.21:2525]
 with esmtp (Farcaster)
 id fe22b937-d4df-40f1-843b-8e3886047745; Sat, 20 Sep 2025 10:26:08 +0000 (UTC)
X-Farcaster-Flow-ID: fe22b937-d4df-40f1-843b-8e3886047745
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.217) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 20 Sep 2025 10:26:08 +0000
Received: from b0be8375a521.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 20 Sep 2025 10:26:05 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <aleksandr.loktionov@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Sat, 20 Sep 2025 19:25:45 +0900
Message-ID: <20250920102546.78338-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D031UWC002.ant.amazon.com (10.13.139.212) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1758363971; x=1789899971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=knD2vTAhYXA0DHubOn/ynefHYQCzxEdsDy0wiqwzcDg=;
 b=hy7mnaYWOepuZ2L8sV4AUkdaOY4cEWVEoJxM7RjGonMCrvGjgFs27ZYL
 teqCYIMS1O7P6NLpr+rjOrmLj6/1uYRgaC5Krc35/T/8p8+iT+hGmw0Fn
 +5Sxwv4Cq2IPPplmNOt3OrDCG5h362ltfInZx34O6suZ2UyfNVpxZSxwz
 1FjXtyzETa2wXQMJ852gsOZA5OXupYAwIu8N4qOShXdmmKIVSfhcdKEHx
 69exENzT/QrhB4ACeSndgfR+Ccy5D+ZRhwwWWazFL1jelQ/uLll68v4Si
 LUkoM3rN4juqAAUqNM9Tq2rwcZ7dgtjzFZAi6Kq4TPtlTnKeSeSVNud/e
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=hy7mnaYW
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: preserve RSS
 indirection table across admin down/up
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, the RSS indirection table configured by user via ethtool is
reinitialized to default values during interface resets (e.g., admin
down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95 ("ixgbe:
Check for RSS key before setting value") made it persistent across
interface resets.

Adopt the same approach used in igc and igb drivers which reinitializes
the RSS indirection table only when the queue count changes. Since the
number of RETA entries can also change in ixgbe, let's make user
configuration persistent as long as both queue count and the number of
RETA entries remain unchanged.

Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
Connection.

Test:
Set custom indirection table and check the value after interface down/up

  # ethtool --set-rxfh-indir ens5 equal 2
  # ethtool --show-rxfh-indir ens5 | head -5

  RX flow hash indirection table for ens5 with 12 RX ring(s):
      0:      0     1     0     1     0     1     0     1
      8:      0     1     0     1     0     1     0     1
     16:      0     1     0     1     0     1     0     1
  # ip link set dev ens5 down && ip link set dev ens5 up

Without patch:
  # ethtool --show-rxfh-indir ens5 | head -5

  RX flow hash indirection table for ens5 with 12 RX ring(s):
      0:      0     1     2     3     4     5     6     7
      8:      8     9    10    11     0     1     2     3
     16:      4     5     6     7     8     9    10    11

With patch:
  # ethtool --show-rxfh-indir ens5 | head -5

  RX flow hash indirection table for ens5 with 12 RX ring(s):
      0:      0     1     0     1     0     1     0     1
      8:      0     1     0     1     0     1     0     1
     16:      0     1     0     1     0     1     0     1

Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
Changes:
v3->v4:
  - ensure rss_i is non-zero to avoid zero-division
v2->v3: https://lore.kernel.org/intel-wired-lan/20250902121203.12454-1-enjuk@amazon.com/
  - s/last_rss_i/last_rss_indices/ for clarity
  - use modulo instead of top-of-loop equality test
  - use ixgbe_rss_indir_tbl_entries() instead of magic number
v1->v2: https://lore.kernel.org/intel-wired-lan/20250828160134.81286-1-enjuk@amazon.com/
  - remove pointless memset() in  ixgbe_setup_reta()
  - add check for reta_entries in addition to rss_i
  - update the commit message to reflect the additional check
v1: https://lore.kernel.org/intel-wired-lan/20250824112037.32692-1-enjuk@amazon.com/
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 45 +++++++++++++------
 2 files changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 14d275270123..3553bf659d42 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -838,6 +838,8 @@ struct ixgbe_adapter {
  */
 #define IXGBE_MAX_RETA_ENTRIES 512
 	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];
+	u32 last_reta_entries;
+	u16 last_rss_indices;
 
 #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in bytes */
 	u32 *rss_key;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 3190ce7e44c7..90d1979e3c36 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4309,9 +4309,9 @@ static void ixgbe_store_vfreta(struct ixgbe_adapter *adapter)
 
 static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 {
-	u32 i, j;
 	u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 	u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
+	u32 i;
 
 	/* Program table for at least 4 queues w/ SR-IOV so that VFs can
 	 * make full use of any rings they may have.  We will use the
@@ -4323,14 +4323,21 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 	/* Fill out hash function seeds */
 	ixgbe_store_key(adapter);
 
-	/* Fill out redirection table */
-	memset(adapter->rss_indir_tbl, 0, sizeof(adapter->rss_indir_tbl));
+	/* Ensure rss_i is non-zero to avoid division by zero */
+	if (!rss_i)
+		rss_i = 1;
 
-	for (i = 0, j = 0; i < reta_entries; i++, j++) {
-		if (j == rss_i)
-			j = 0;
+	/* Update redirection table in memory on first init, queue count change,
+	 * or reta entries change, otherwise preserve user configurations. Then
+	 * always write to hardware.
+	 */
+	if (adapter->last_rss_indices != rss_i ||
+	    adapter->last_reta_entries != reta_entries) {
+		for (i = 0; i < reta_entries; i++)
+			adapter->rss_indir_tbl[i] = i % rss_i;
 
-		adapter->rss_indir_tbl[i] = j;
+		adapter->last_rss_indices = rss_i;
+		adapter->last_reta_entries = reta_entries;
 	}
 
 	ixgbe_store_reta(adapter);
@@ -4338,9 +4345,10 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 
 static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
 {
-	struct ixgbe_hw *hw = &adapter->hw;
+	u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 	u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
-	int i, j;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int i;
 
 	/* Fill out hash function seeds */
 	for (i = 0; i < 10; i++) {
@@ -4352,12 +4360,21 @@ static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
 					*(adapter->rss_key + i));
 	}
 
-	/* Fill out the redirection table */
-	for (i = 0, j = 0; i < 64; i++, j++) {
-		if (j == rss_i)
-			j = 0;
+	/* Ensure rss_i is non-zero to avoid division by zero */
+	if (!rss_i)
+		rss_i = 1;
+
+	/* Update redirection table in memory on first init, queue count change,
+	 * or reta entries change, otherwise preserve user configurations. Then
+	 * always write to hardware.
+	 */
+	if (adapter->last_rss_indices != rss_i ||
+	    adapter->last_reta_entries != reta_entries) {
+		for (i = 0; i < reta_entries; i++)
+			adapter->rss_indir_tbl[i] = i % rss_i;
 
-		adapter->rss_indir_tbl[i] = j;
+		adapter->last_rss_indices = rss_i;
+		adapter->last_reta_entries = reta_entries;
 	}
 
 	ixgbe_store_vfreta(adapter);
-- 
2.51.0

