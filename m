Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92374AC5C0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 23:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC6378101F;
	Tue, 27 May 2025 21:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmdpw0hRX67G; Tue, 27 May 2025 21:13:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44F1E81097
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748380422;
	bh=lwjcejsgwEmNYg9nHk4XBk4Rx/Y1yysKSIvGN1YC2j4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0D2pb9TZUEitIuuWKxXprwF4wXKMhyk+u7rm8ljkSZRbKPErYnyfPVqNo94ijAaGH
	 VECUMaJq/zrp8NFr7Bno0cn7kvg6Bxr2+gx1DJsFRW3vZTCKOiLapZFO5WGDLtNOX7
	 0+eCNqtiJ1WKtSznmdq/15dM/jeTSs6yOKTnt9DfJU94MX1QsqQAKb9Z6q931igF32
	 sgAAQJ0Tnuna8XsWi8WEVwho2YMNxJOGzcNbGsu4+KAa3Uv7bBq8A6W7nVPxKaN4J7
	 EFIbGqczDvrDBxyLplvkSSBtbIhQptb6Z3x6hWoauouxn6xM5g/js8YAIsyP0X5Z7q
	 HPM+miOyUhMcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44F1E81097;
	Tue, 27 May 2025 21:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F652127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 21:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 353308101B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 21:13:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R6wWa4eUmjbH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 21:13:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.132.181.8;
 helo=dispatch1-eu1.ppe-hosted.com; envelope-from=post@mikaelkw.online;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B5318100F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B5318100F
Received: from dispatch1-eu1.ppe-hosted.com (dispatch1-eu1.ppe-hosted.com
 [185.132.181.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B5318100F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 21:13:40 +0000 (UTC)
Received: from engine.ppe-hosted.com (unknown [10.70.45.172])
 by dispatch1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id
 2B536200A3; Tue, 27 May 2025 21:13:38 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from test-ubuntu-rev3.. (78-26-16-15.network.trollfjord.no
 [78.26.16.15])
 by mx1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 2FD35B0005D; 
 Tue, 27 May 2025 21:13:35 +0000 (UTC)
From: Mikael Wessel <post@mikaelkw.online>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, torvalds@linuxfoundation.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew@lunn.ch,
 kuba@kernel.org, pabeni@redhat.com, security@kernel.org,
 stable@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 linux-kernel@vger.kernel.org, Mikael Wessel <post@mikaelkw.online>
Date: Tue, 27 May 2025 23:13:32 +0200
Message-ID: <20250527211332.50455-1-post@mikaelkw.online>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MDID: 1748380417-IY5a2VRwpn3R
X-PPE-STACK: {"stack":"eu1"}
X-MDID-O: eu1; fra; 1748380417; IY5a2VRwpn3R; <post@mikaelkw.online>;
 7544ea0f74a3697a45f5192d6efff48c
X-PPE-TRUSTED: V=1;DIR=OUT;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mikaelkw.online; 
 h=cc:cc:content-transfer-encoding:content-transfer-encoding:date:date:from:from:message-id:message-id:mime-version:mime-version:subject:subject:to:to;
 s=pp-selector; bh=lwjcejsgwEmNYg9nHk4XBk4Rx/Y1yysKSIvGN1YC2j4=;
 b=FqgwUhohgsOkn4WR3lqS0LrQ7GIsqQrMYaREKDemPQ8N7Zsmds+g0D8VI19XEjK+MZtD96LFPcBYOGF2dHecLUIKsiQtU8NXTBaJW29U8qwY5xCC28kEKdadKhIboZxQm4wZYOFGQV0Y66dIirfp4lCjc4l2lAwFSDn7l6ER8r6d5RZapoiXkz9DEerO5cXufTlVedPjuZ1JJI+CR6lNm1CSwxU+rF8Kq+BCbTtcptfFYmsqPwP/aPt0C9hQQnJAnfF9NXS1KycPc4kBQppWLOjVlDXjqcoszlCV7Ilt/ao2yCZuI8fI+LIrpjC82AuS8OnWr3T25rgXOp6ZhXeF9Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mikaelkw.online
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mikaelkw.online header.i=@mikaelkw.online
 header.a=rsa-sha256 header.s=pp-selector header.b=FqgwUhoh
Subject: [Intel-wired-lan] [PATCH] e1000e: fix heap overflow in
 e1000_set_eeprom()
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

The ETHTOOL_SETEEPROM ioctl copies user data into a kmalloc'ed buffer
without validating eeprom->len and eeprom->offset. A CAP_NET_ADMIN
user can overflow the heap and crash the kernel or gain code execution.

Validate length and offset before kmalloc() to avoid leaking eeprom_buff.

Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
Reported-by: Mikael Wessel <post@mikaelkw.online>
Signed-off-by: Mikael Wessel <post@mikaelkw.online>
Cc: stable@vger.kernel.org
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 98e541e39730..d04e59528619 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -561,7 +561,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		return -EOPNOTSUPP;
 
 	if (eeprom->magic !=
-	    (adapter->pdev->vendor | (adapter->pdev->device << 16)))
+		(adapter->pdev->vendor | (adapter->pdev->device << 16)))
 		return -EFAULT;
 
 	if (adapter->flags & FLAG_READ_ONLY_NVM)
@@ -569,6 +569,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 
 	max_len = hw->nvm.word_size * 2;
 
+	/* bounds check: offset + len must not exceed EEPROM size */
+	if (eeprom->offset + eeprom->len > max_len)
+		return -EINVAL;
+
 	first_word = eeprom->offset >> 1;
 	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
@@ -596,9 +600,6 @@ static int e1000_set_eeprom(struct net_device *netdev,
 	for (i = 0; i < last_word - first_word + 1; i++)
 		le16_to_cpus(&eeprom_buff[i]);
 
-        if (eeprom->len > max_len ||
-            eeprom->offset > max_len - eeprom->len)
-                return -EINVAL;
 	memcpy(ptr, bytes, eeprom->len);
 
 	for (i = 0; i < last_word - first_word + 1; i++)
-- 
2.48.1

