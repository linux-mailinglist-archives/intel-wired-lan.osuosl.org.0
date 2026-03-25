Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGddCGX8w2lXvQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:16:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C572327B25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:16:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B48A380FC6;
	Wed, 25 Mar 2026 15:16:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i3jjw3A3uhDB; Wed, 25 Mar 2026 15:16:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBCDB80E65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774451810;
	bh=AykiBgWTGZCmEG1OUiyg3JJRUJKAqcw2wf1No+Ajw+Q=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fE0NQl5G39tMFihPTS7GUxa26GOK/2yupi73+1aFy/acq8vb141VBt0sFgPz7rXZ6
	 98aK3zRKxlYthp2eSQLg+FLkrtBpvbRKm2ZelFd6JMNs4QhvWBfD54AAsSP0OwZMUq
	 uegAQ2ekLu9CbKeY5Uo7W/no4tc3k99+BPO9uLQLPu4PJQ8EFjICmYb/SM/fu39VZv
	 kYchZhdyme3FqTvcUaQBGJ5RcUaMslLfbgMcper4uqDKv1avZGxZW4P84Lt60fauFz
	 v8RuVBF3M6QB3MfmbdXE/bO2s7x/qwqdTSO2gqNugASKwQZc9/9X6zf7CU+rWg5h87
	 97lt0lwf5fmJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBCDB80E65;
	Wed, 25 Mar 2026 15:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3358F353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 520AF4014E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SwWAGaFpArG1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:16:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=77.108.111.100;
 helo=mail.amicon.ru; envelope-from=ade@amicon.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 39C5D4009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39C5D4009E
Received: from mail.amicon.ru (mail.amicon.ru [77.108.111.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39C5D4009E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:46 +0000 (UTC)
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
Date: Wed, 25 Mar 2026 18:16:04 +0300
Message-ID: <20260325151615.1407182-3-ade@amicon.ru>
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
 bh=CCk76vE/xjR+yNkkzEFs2kbv/+OqHzHF8wQdMwc3Q+c=;
 b=A5C0Y/LVSQQHJPx1q2vu01IU5HhZXytE2wVXMcKZ5SboKny2Zh5XMXxtNd4VeJY+PcGWZ+/HCyw
 LyqXCQyorG5fKzj3ZeH0SZaGqC4DLNQ1fz1FexS0ybo5G5ngCgVi2PY6IIsxtafI0BNs+8Ris+QhW
 d4ngJs3tCGvD8KufBFpqyt/MNgaGvrRHdCzrmdxQDlcZVWDYjDoNd4QUJigt/Ddq+UqL3di1GMOGa
 aex9kbDq6Pv5LRy9yYI7fo6h6x2IEfZzMSDoOJTmFv3TxT+NmeY9KkXjB0ZwoAOuw5J6/TiOuOYaC
 fW1DocDPYclpEIU0273DX8lLLJiDwTZ3ftUQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amicon.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=amicon.ru header.i=@amicon.ru
 header.a=rsa-sha256 header.s=mail header.b=A5C0Y/LV
Subject: [Intel-wired-lan] [PATCH net-next v2 2/2] e1000e: limit endianness
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
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amicon.ru : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[linuxtesting.org:server fail,amicon.ru:server fail,osuosl.org:server fail,smtp1.osuosl.org:server fail];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amicon.ru:email,amicon.ru:mid,linuxtesting.org:url];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_XOIP(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5C572327B25
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
 - Note on e1000e: this driver already contains the necessary return
   value checks for EEPROM reads, so only the endianness conversion
   cleanup is included for e1000e.

 drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index dbed30943ef4..785d89477c43 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -583,13 +583,21 @@ static int e1000_set_eeprom(struct net_device *netdev,
 		/* need read/modify/write of first changed EEPROM word */
 		/* only the second byte of the word is being modified */
 		ret_val = e1000_read_nvm(hw, first_word, 1, &eeprom_buff[0]);
+
+		/* Device's eeprom is always little-endian, word addressable */
+		le16_to_cpus(&eeprom_buff[0]);
+
 		ptr++;
 	}
-	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))
+	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val)) {
 		/* need read/modify/write of last changed EEPROM word */
 		/* only the first byte of the word is being modified */
 		ret_val = e1000_read_nvm(hw, last_word, 1,
 					 &eeprom_buff[last_word - first_word]);
+	
+		/* Device's eeprom is always little-endian, word addressable */
+		le16_to_cpus(&eeprom_buff[last_word - first_word]);
+	}
 
 	if (ret_val)
 		goto out;
-- 
2.51.0

