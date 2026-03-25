Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMtyFmX8w2lXvQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:16:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C199327B26
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:16:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E734460782;
	Wed, 25 Mar 2026 15:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tcHWTV6TbaoB; Wed, 25 Mar 2026 15:16:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D387606B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774451809;
	bh=YOpNw8QIFMjTgGrsjFQXv+M9MSE61bNxQgNOBC3TR5g=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EolbawgYPNqzPRBcyEdWeb2xmtiYtGDag60Q6mmBtyZCvvnaLT6brL0xE/M6uveMK
	 Bgbe6vYtIb6RUM57O96Y8uSQ8OEIrboH3fLtrGcfTXLbACn0GTsVR6Y4J8gkKhjD3D
	 5Pu96Bki/r2m7+WVaG4lpB2Kvu4hLXbVM9IqT5L/YX3xUm4ng4CDGJ4LeTss0JDBov
	 9j/TvAHsk1CFQvi/54xmJkBZg1cMdTCd1EK4WH+uQxMx3YS3hgJxZf6CLCjYc+GquP
	 xPyGpQ28IzLhzMgX8cGNosPrD7Ec17RfDsrUVgWxHuKipR9oaSpsvCx9CgPBOfDWbb
	 pERYCrStBPraw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D387606B1;
	Wed, 25 Mar 2026 15:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 54395353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D21B4018E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MSBaaw2HQ7fb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:16:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=77.108.111.100;
 helo=mail.amicon.ru; envelope-from=ade@amicon.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 887044014E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 887044014E
Received: from mail.amicon.ru (mail.amicon.ru [77.108.111.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 887044014E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:45 +0000 (UTC)
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Received: from example.com (172.16.2.46) by mail.amicon.lan (192.168.0.59)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.27; Wed, 25 Mar
 2026 18:16:40 +0300
From: Agalakov Daniil <ade@amicon.ru>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Agalakov Daniil <ade@amicon.ru>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lvc-project@linuxtesting.org>, "Daniil
 Iskhakov" <dish@amicon.ru>, Roman Razov <rrv@amicon.ru>
Date: Wed, 25 Mar 2026 18:16:03 +0300
Message-ID: <20260325151615.1407182-2-ade@amicon.ru>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260325151615.1407182-1-ade@amicon.ru>
References: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
 <20260325151615.1407182-1-ade@amicon.ru>
MIME-Version: 1.0
X-Originating-IP: [172.16.2.46]
X-ClientProxiedBy: mail.amicon.lan (192.168.0.59) To mail.amicon.lan
 (192.168.0.59)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=amicon.ru; s=mail;
 c=simple/simple; 
 t=1774451801; h=from:subject:to:date:message-id;
 bh=Wlg44DqnfJaqyWBN6Op2t8hnzKVeLag5dyQfgjVI3tU=;
 b=jaFw6gAkRx5+HcHWMEsrrq7gqnPDy08whPC1GNH52qCB4NWMZ7YbX2OsrO80Znjd07XNaYQkFfT
 d7FE6cmXpRyX7yEPRRcYMDj5BW+oAIu94/9a2+rtPiMPcJ7ej0S2F9gE7vVnVnVuPE0ifPcROVqTj
 y17KYvecF6kJ3NPIo0R/MGtQE9jQl5v6tbVuguCnJ7GCChaxf78O1bpJIv9uY8wlDPRDr9opouJVp
 kRoHxS8qGEpgslGOYN2kNsSD6RA4FVLtJ6Pk2qGZo//AnN1U+DxjkwsLWMT9YsFKxNDT7eDXw0rCw
 MlyjsptYTWt+SI04SV5gfW3n+aWM3OcXttyg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amicon.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=amicon.ru header.i=@amicon.ru
 header.a=rsa-sha256 header.s=mail header.b=jaFw6gAk
Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] e1000: limit endianness
 conversion to boundary words
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
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amicon.ru : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxtesting.org:url,amicon.ru:email,amicon.ru:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	URIBL_MULTI_FAIL(0.00)[linuxtesting.org:server fail,osuosl.org:server fail,amicon.ru:server fail,smtp3.osuosl.org:server fail];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9C199327B26
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

Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
Signed-off-by: Agalakov Daniil <ade@amicon.ru>
---
v2:
 - Split from the original bugfix series and targeted at 'net-text'.
 - Removed the Fixes: tag; limiting the conversion scope is an
   improvement to avoid unnecessary processing of uninitialized memory.
 - Improved commit description for clarity.

 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index ab232b3fbbd0..38b1f91823ef 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -496,6 +496,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		 */
 		ret_val = e1000_read_eeprom(hw, first_word, 1,
 					    &eeprom_buff[0]);
+
+		/* Device's eeprom is always little-endian, word addressable */
+		le16_to_cpus(&eeprom_buff[0]);
+
 		ptr++;
 	}
 	if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {
@@ -504,11 +508,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		 */
 		ret_val = e1000_read_eeprom(hw, last_word, 1,
 					    &eeprom_buff[last_word - first_word]);
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

