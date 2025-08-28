Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C95B3A53C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 18:01:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D283160E9E;
	Thu, 28 Aug 2025 16:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2i9MRzHeC_sr; Thu, 28 Aug 2025 16:01:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1859960E9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756396911;
	bh=i4kWmP7G4N3xDkiFVWGn+2j32ZtlfBKJVUSnsQ/wjiM=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Qm7TxPJ3IZTbNM+md9bQB5lD2eW+yzZ1/LWuiwplqhhApHl4VXif2RR5mF+RGBzgD
	 o5/Y14O+Xbs80HzWyX9PAH4cyKI6/Y3a38GLQvI8xU91bfAkTCuqMLp/r+VRkzABWD
	 GNO4iuwR5PF07qdnb57N48grAwOziS2QHJa1Yr9H4zweb2ozeJb9jGTEMFbE/Xrvx+
	 EnfkOa+wIvYEaSC210sgM2xKc+7zsJ0rEn578Gce6nCrPFtXcKUkZpkuGyJW1Cw7aT
	 NJKn+EbFeqMT7iwR1e9/3DXvpRIT/cNI1o0Q+F1RndgAdJ4uV0GMnSwHZ38ecpqt2v
	 mwmMBqkFKFXLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1859960E9D;
	Thu, 28 Aug 2025 16:01:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 09636B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:01:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F268B402F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hy59uGLHXknd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 16:01:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.246.1.125;
 helo=pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=32827fd36=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9062B402E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9062B402E6
Received: from pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com [44.246.1.125])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9062B402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:01:48 +0000 (UTC)
X-CSE-ConnectionGUID: 08ZSX6NVSjiVubPS1XNYew==
X-CSE-MsgGUID: ax0ApQNfT9Wi+cXpvntLUg==
X-IronPort-AV: E=Sophos;i="6.16,202,1744070400"; 
   d="scan'208";a="1980974"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Aug 2025 16:01:46 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.7.35:54086]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.28.142:2525]
 with esmtp (Farcaster)
 id a7df8e69-2b39-4eea-83b1-1157a59704ac; Thu, 28 Aug 2025 16:01:46 +0000 (UTC)
X-Farcaster-Flow-ID: a7df8e69-2b39-4eea-83b1-1157a59704ac
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Thu, 28 Aug 2025 16:01:45 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Thu, 28 Aug 2025 16:01:43 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Fri, 29 Aug 2025 01:00:49 +0900
Message-ID: <20250828160134.81286-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D036UWB001.ant.amazon.com (10.13.139.133) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756396908; x=1787932908;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i4kWmP7G4N3xDkiFVWGn+2j32ZtlfBKJVUSnsQ/wjiM=;
 b=tONWN03xw9tbDjXCBKMcqkfyd1C+tJB5vG+pLfKAKeDSsUN9p8/jo0hT
 0jZMRSqlzfRUqlJM2PW5pOGgT7arsnWn7Y5nX/6wn6BKf1DGSwNxZ/XED
 UODZ7VsE0kOyT5TIsGBaLTcJV8hl4k/hqZkH0IOOIIR8BkUqDbPcaJp0s
 Ht2/O/hPJ9KG3J+D5QKsUqO9iGb0M6MDMKOVDrqWBEMK4qM2rmL/gos5M
 5sFBt+U7ic/OHbbK8kvPlThuiZ8PWNPqICSWG7Fs6YCNZLz4dCziUlEcv
 SfgaGHIacMqmNWo3ORoXJYfj9o52gtyzXATiLyaVbdaBTEPekZLfJcp7D
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=tONWN03x
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
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
  v1->v2:
    - add check for reta_entries in addition to rss_i
    - update the commit message to reflect the additional check
  v1: https://lore.kernel.org/intel-wired-lan/20250824112037.32692-1-enjuk@amazon.com/
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 41 +++++++++++++------
 2 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 14d275270123..da3b23bdcce1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -838,6 +838,8 @@ struct ixgbe_adapter {
  */
 #define IXGBE_MAX_RETA_ENTRIES 512
 	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];
+	u32 last_reta_entries;
+	u16 last_rss_i;
 
 #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in bytes */
 	u32 *rss_key;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 27040076f068..05dfb06173d4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4323,14 +4323,21 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 	/* Fill out hash function seeds */
 	ixgbe_store_key(adapter);
 
-	/* Fill out redirection table */
-	memset(adapter->rss_indir_tbl, 0, sizeof(adapter->rss_indir_tbl));
+	/* Update redirection table in memory on first init, queue count change,
+	 * or reta entries change, otherwise preserve user configurations. Then
+	 * always write to hardware.
+	 */
+	if (adapter->last_rss_i != rss_i ||
+	    adapter->last_reta_entries != reta_entries) {
+		for (i = 0, j = 0; i < reta_entries; i++, j++) {
+			if (j == rss_i)
+				j = 0;
 
-	for (i = 0, j = 0; i < reta_entries; i++, j++) {
-		if (j == rss_i)
-			j = 0;
+			adapter->rss_indir_tbl[i] = j;
+		}
 
-		adapter->rss_indir_tbl[i] = j;
+		adapter->last_rss_i = rss_i;
+		adapter->last_reta_entries = reta_entries;
 	}
 
 	ixgbe_store_reta(adapter);
@@ -4338,8 +4345,9 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 
 static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
 {
-	struct ixgbe_hw *hw = &adapter->hw;
 	u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 reta_entries = 64;
 	int i, j;
 
 	/* Fill out hash function seeds */
@@ -4352,12 +4360,21 @@ static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
 					*(adapter->rss_key + i));
 	}
 
-	/* Fill out the redirection table */
-	for (i = 0, j = 0; i < 64; i++, j++) {
-		if (j == rss_i)
-			j = 0;
+	/* Update redirection table in memory on first init, queue count change,
+	 * or reta entries change, otherwise preserve user configurations. Then
+	 * always write to hardware.
+	 */
+	if (adapter->last_rss_i != rss_i ||
+	    adapter->last_reta_entries != reta_entries) {
+		for (i = 0, j = 0; i < reta_entries; i++, j++) {
+			if (j == rss_i)
+				j = 0;
+
+			adapter->rss_indir_tbl[i] = j;
+		}
 
-		adapter->rss_indir_tbl[i] = j;
+		adapter->last_rss_i = rss_i;
+		adapter->last_reta_entries = reta_entries;
 	}
 
 	ixgbe_store_vfreta(adapter);
-- 
2.51.0

