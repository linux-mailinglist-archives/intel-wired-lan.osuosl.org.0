Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96637AC5075
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 16:02:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A07460B13;
	Tue, 27 May 2025 14:02:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6taZeRARGB5; Tue, 27 May 2025 14:02:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD2D760B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748354562;
	bh=FfwiLz0qMLCe8pRJ2Xqblg8YMQN3QxXuQ0AQptgDjjY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BWh6Bh16ZL1TDNf6Z31nhz2/VrAjDTiviUHpMNkCvcFj1RZoWNmcsmcxwLTpUt4UN
	 F78GEh7kbryCk9byMnf4zO/93mXb9UtziYVTgABjzG5dwQ29+VV3BkUC2OU7+VALyM
	 aPCPMKhdke8vMUfYs8qJAJVgnslTKdGSn3GMLvnrnGEDroOVLTisyHzC34fe4Ar/SD
	 qms9r3yxq4kVSAj9z8dRsatjtWRGfDzFrDp49Clkfh4iAqAQVUcAA6ykRpCBdpxTPn
	 T/ahnV+9CgYi5b9TANnZLFYISR6GG4F4a8fGbSMaHmhHmLbUW6ft9RYPMI7IQPtGYE
	 2C4ovpaSXnSWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD2D760B26;
	Tue, 27 May 2025 14:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E2C1919F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 09:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4F8A40209
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 09:06:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ODzVul-a3Je for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 09:06:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.132.181.6;
 helo=dispatch1-eu1.ppe-hosted.com; envelope-from=post@mikaelkw.online;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2C85F404DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C85F404DF
Received: from dispatch1-eu1.ppe-hosted.com (dispatch1-eu1.ppe-hosted.com
 [185.132.181.6])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C85F404DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 09:06:00 +0000 (UTC)
Received: from dispatch1-eu1.ppe-hosted.com (ip6-localhost [127.0.0.1])
 by dispatch1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 CDB183435C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 08:58:06 +0000 (UTC)
Received: from engine.ppe-hosted.com (unknown [10.70.45.136])
 by dispatch1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id
 0E706600B8; Tue, 27 May 2025 08:58:03 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from test-ubuntu-rev3.. (78-26-16-15.network.trollfjord.no
 [78.26.16.15])
 by mx1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 5454DB00056; 
 Tue, 27 May 2025 08:58:01 +0000 (UTC)
From: Mikael Wessel <post@mikaelkw.online>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, torvalds@linuxfoundation.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew@lunn.ch,
 kuba@kernel.org, pabeni@redhat.com, security@kernel.org,
 stable@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 linux-kernel@vger.kernel.org, Mikael Wessel <post@mikaelkw.online>
Date: Tue, 27 May 2025 10:56:12 +0200
Message-ID: <20250527085612.11354-2-post@mikaelkw.online>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250527085612.11354-1-post@mikaelkw.online>
References: <20250527085612.11354-1-post@mikaelkw.online>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MDID: 1748336282-23qMi_kDexex
X-PPE-STACK: {"stack":"eu1"}
X-MDID-O: eu1; fra; 1748336282; 23qMi_kDexex; <post@mikaelkw.online>;
 7544ea0f74a3697a45f5192d6efff48c
X-PPE-TRUSTED: V=1;DIR=OUT;
X-Mailman-Approved-At: Tue, 27 May 2025 14:02:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mikaelkw.online; 
 h=cc:cc:content-transfer-encoding:content-transfer-encoding:date:date:from:from:in-reply-to:in-reply-to:message-id:message-id:mime-version:mime-version:references:references:subject:subject:to:to;
 s=pp-selector; bh=FfwiLz0qMLCe8pRJ2Xqblg8YMQN3QxXuQ0AQptgDjjY=;
 b=AY6F70neblY6M/62p9wx6POO9G2QYcyS2bxwQpTmGOCDMKMUGK01krhicplC+C8WC2C0sj0zi+t+RUN/cpVyYd+Kl5UuHs4zcLevmaxw734KQLTsuFDPgnMLODFCE6rJNG+B29C9jDIcH8yXpZ9SJZvaJxCCmGXB1t3/HxSLRxrhke6I6dMHEfY7qyJ/SAQiuJtcIYPupuTRJzLqJ7/SVvzia3VERwN5eiDLj92l6IJqqDhMAreURoswcrKRI2H+ZR8XQOlAvpdR0/BfPVX+Zk74iHxHQubJGiclCbwc+mBvxVFmjwZdTxAHKHyFQRgqV4pOn/qn9mqpkcpuf7sSLg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mikaelkw.online
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=mikaelkw.online header.i=@mikaelkw.online
 header.a=rsa-sha256 header.s=pp-selector header.b=AY6F70ne
Subject: [Intel-wired-lan] [PATCH v2 1/1] e1000e: fix heap overflow in
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
without validating eeprom->len and eeprom->offset.  A CAP_NET_ADMIN
user can overflow the heap and crash the kernel or gain code execution.

Validate length and offset before memcpy().

Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
Reported-by: Mikael Wessel <post@mikaelkw.online>
Signed-off-by: Mikael Wessel <post@mikaelkw.online>
Cc: stable@vger.kernel.org
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..98e541e39730 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -596,6 +596,9 @@ static int e1000_set_eeprom(struct net_device *netdev,
 	for (i = 0; i < last_word - first_word + 1; i++)
 		le16_to_cpus(&eeprom_buff[i]);
 
+        if (eeprom->len > max_len ||
+            eeprom->offset > max_len - eeprom->len)
+                return -EINVAL;
 	memcpy(ptr, bytes, eeprom->len);
 
 	for (i = 0; i < last_word - first_word + 1; i++)
-- 
2.48.1

