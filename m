Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A025BB3FF91
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 14:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC1441B71;
	Tue,  2 Sep 2025 12:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qNwW6136yUrc; Tue,  2 Sep 2025 12:12:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03AB141B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756815151;
	bh=yGI699wuk6vHc/hrpmAbLfOQPpj7lgSk/hl7k3vQGlk=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fIIZFZrBR2QjIUuuhkQgRv3OF5/9NzOkj/8w3WYOYO/Y+DsUGoh9FdjRevlmRVnU5
	 YpaI1TUJyAyUzRG1OUAQ8h8vdRHh7V50NHnrdUPVqCyCuU9DdqIgQjsqpQh2a27kxZ
	 mQ9891UY53fNLgbqoMuzb2zSozMcKtpADTFIHVtokX3zA17NO/jxG06wc9cziDnPsS
	 Sog3tORxSbXJAtV2a8ufl5q5W3qhxt4+d57cuCIZ3ui7S9SjCXFAoM03vO7v4/ZCkN
	 FGETYKyEAJlTykstxWAIeXGWR+NTs6gtZSSH4IFx2INshoCyfTYQa7C4v+KslzP1cA
	 styVUFgyRW4sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03AB141B65;
	Tue,  2 Sep 2025 12:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 64B7B439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 12:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B2D084320
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 12:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id apmyea6z47Rf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 12:12:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.155.198.111;
 helo=pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=33374e15e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5FEBB8431F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FEBB8431F
Received: from pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.155.198.111])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FEBB8431F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 12:12:27 +0000 (UTC)
X-CSE-ConnectionGUID: wNqSDvI5T+6lwxCEfIoqJw==
X-CSE-MsgGUID: +1uQ2K26QiezJA+Djl82Dg==
X-IronPort-AV: E=Sophos;i="6.18,230,1751241600"; 
   d="scan'208";a="2094590"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2025 12:12:24 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.7.35:58078]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.28.142:2525]
 with esmtp (Farcaster)
 id 2bb55826-096f-4a1d-991c-5d36c4e28ae3; Tue, 2 Sep 2025 12:12:23 +0000 (UTC)
X-Farcaster-Flow-ID: 2bb55826-096f-4a1d-991c-5d36c4e28ae3
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Tue, 2 Sep 2025 12:12:22 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Tue, 2 Sep 2025 12:12:20 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Tue, 2 Sep 2025 21:11:16 +0900
Message-ID: <20250902121203.12454-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D037UWB003.ant.amazon.com (10.13.138.115) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756815148; x=1788351148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yGI699wuk6vHc/hrpmAbLfOQPpj7lgSk/hl7k3vQGlk=;
 b=exqccfV0OPKjvGztj+oZqWmmDMmvhd7jAnVEiKN7qGqJ2r6HC4LwN/wr
 a7AluSXKjGnElqBGu/qvc44tH1hlHJ95sJ9yG7mA+v8eRF7WTE+Lrknkz
 uNLiKj3SNVjZJpl0GUGCquECXmDy6K6XmPm90MYrrHBCJTJXm2BfuDWU0
 ZhmKzfg5g03w5AUKYIhmzMdDE4UgLGgOV+Yx9+gbK8HOuTquWfyNgROjw
 NmkeUF9NHF120MaL9LY+S+rkRPO6gMOW0fEr+AArfwbSlBosFfy3GKuuN
 fVfy2WZ7RLjwXuz1lRNJ++KSBfcG2x716HFbEz8GJwitAmuadiVI6CUuc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=exqccfV0
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
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
  v2->v3:
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 39 ++++++++++++-------
 2 files changed, 26 insertions(+), 15 deletions(-)

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
index 27040076f068..395906cf7de6 100644
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
@@ -4323,14 +4323,17 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 	/* Fill out hash function seeds */
 	ixgbe_store_key(adapter);
 
-	/* Fill out redirection table */
-	memset(adapter->rss_indir_tbl, 0, sizeof(adapter->rss_indir_tbl));
-
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
@@ -4338,9 +4341,10 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
 
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
@@ -4352,12 +4356,17 @@ static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
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

