Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEqpAsrBumkGbgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:16:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A36D2BE015
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:16:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0A1D60AB3;
	Wed, 18 Mar 2026 15:16:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkz6rhxjMrDf; Wed, 18 Mar 2026 15:16:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F19060AAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773846983;
	bh=U9iiatIA2RAGA+EU78+67+OVkyikeHdBhnEQdglqbjM=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SCwUqogk26QGIJEPuV4HL+EgIt5XqGVSnkVO9z1eTZjfyBCEVPfyUUNNXzLY+CQOF
	 oldkwvcxTEXEAEQDU77xA2qDXrtBcfgT4FG8Cgd5hSVAeWnAOOtSGqzSzzpR06r+Cf
	 Ov8Gp5zqEpgPQocHfMX/vwDLNtpqJt5z325P+2LolZUl2TSqgvrBCKDXp9GTu+BQVq
	 mdPwEoiRhHBU8IUMDZSmzp0IK4Cm0/gUSuUGcjq78nxgN7sQr6y7tV4IyYO7QxZhPw
	 shmT1xMLH8vqrc+DzAb4FfBZjQ0FF1xfgiaYNIW2HKOL283Oh/mG7R1zAvyxIELPXE
	 GkWE8zVi8ulww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F19060AAF;
	Wed, 18 Mar 2026 15:16:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F6DC1BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 12:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01D2E83BC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 12:20:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Z9uPeU2ISuI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 12:20:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=77.108.111.100;
 helo=mail.amicon.ru; envelope-from=ade@amicon.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 911E583BA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 911E583BA6
Received: from mail.amicon.ru (mail.amicon.ru [77.108.111.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 911E583BA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 12:20:46 +0000 (UTC)
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Received: from example.com (172.16.2.46) by mail.amicon.lan (192.168.0.59)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.27; Wed, 18 Mar
 2026 15:05:31 +0300
From: Agalakov Daniil <ade@amicon.ru>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Agalakov Daniil <ade@amicon.ru>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lvc-project@linuxtesting.org>, "Daniil
 Iskhakov" <dish@amicon.ru>, Roman Razov <rrv@amicon.ru>
Date: Wed, 18 Mar 2026 15:05:06 +0300
Message-ID: <20260318120512.687149-3-ade@amicon.ru>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260318120512.687149-1-ade@amicon.ru>
References: <20260318120512.687149-1-ade@amicon.ru>
MIME-Version: 1.0
X-Originating-IP: [172.16.2.46]
X-ClientProxiedBy: mail.amicon.lan (192.168.0.59) To mail.amicon.lan
 (192.168.0.59)
X-Mailman-Approved-At: Wed, 18 Mar 2026 15:16:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=amicon.ru; s=mail;
 c=simple/simple; 
 t=1773835531; h=from:subject:to:date:message-id;
 bh=FoSSaZkWU4aJKqM+so78vjgnK78tTSzmvnGZvUsq3j0=;
 b=OBfSutDDrJdxlH6acMftdt2KV3G3Tz6vWGCJDGwIIz2s4xByTxY+vrE7MVE0M1mtc7pCU7M+Gyy
 gfElYqSpGpddQ6fJuHOfNattmfWVmaN4VdoZh38RpyOQEiYbIScYw6IAUFvCslxOqLgRT+n7AyjVp
 PgU4+nE6sVVHnZzIstEb/1vFnGoKb1Tzk0vpNfS5lzvIAgj2XOOouJvnm/WuVcRff09LxY0FbSd/C
 vCIUCaDO+Oj0hNyyQQrvc8DOT4vkMA2rcwmcHpnNmrQf5bubLvVO6mzunE+1CAgn1fUi6J/JU1aUx
 zhpiOpxqTV19J0O4Emz9R5hWi+5T2xljUTcw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amicon.ru
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=amicon.ru header.i=@amicon.ru
 header.a=rsa-sha256 header.s=mail header.b=OBfSutDD
Subject: [Intel-wired-lan] [PATCH net 2/3] e1000: fix endianness conversion
 of uninitialized words
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
X-Spamd-Result: default: False [3.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amicon.ru : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,amicon.ru:email,amicon.ru:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_XOIP(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7A36D2BE015
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

[Why]
In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
words. However, only the boundary words (the first and the last) are
populated from the EEPROM if the write request is not word-aligned.
The words in the middle of the buffer remain uninitialized because they
are intended to be completely overwritten by the new data via memcpy().

The previous implementation had a loop that performed le16_to_cpus()
on the entire buffer. This resulted in endianness conversion being
performed on uninitialized memory for all interior words.

Fix this by converting the endianness only for the boundary words
immediately after they are successfully read from the EEPROM.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
Signed-off-by: Agalakov Daniil <ade@amicon.ru>
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index 4dcbeabb3ad2..c15ad95c63c1 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -499,6 +499,9 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		if (ret_val)
 			goto out;
 
+		/* Device's eeprom is always little-endian, word addressable */
+		le16_to_cpus(&eeprom_buff[0]);
+
 		ptr++;
 	}
 	if ((eeprom->offset + eeprom->len) & 1) {
@@ -509,11 +512,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 					    &eeprom_buff[last_word - first_word]);
 		if (ret_val)
 			goto out;
-	}
 
-	/* Device's eeprom is always little-endian, word addressable */
-	for (i = 0; i < last_word - first_word + 1; i++)
-		le16_to_cpus(&eeprom_buff[i]);
+		/* Device's eeprom is always little-endian, word addressable */
+		le16_to_cpus(&eeprom_buff[last_word - first_word]);
+	}
 
 	memcpy(ptr, bytes, eeprom->len);
 
-- 
2.51.0

