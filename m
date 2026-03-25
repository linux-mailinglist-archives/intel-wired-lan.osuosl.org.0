Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGfZAWL8w2lXvQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:16:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F307327B0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:16:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30B1780DB3;
	Wed, 25 Mar 2026 15:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EXqqfxDzbMQd; Wed, 25 Mar 2026 15:16:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACA8780DD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774451807;
	bh=8yFcGKXZVHw6Gr0JpMXg9Z8xFzRntVU3DC+4ZvscWtg=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TIoAAOYYeFNNPL2ohvCfj90MFNO/ftErTi+ultpRKmXms0IWFp+2aBVHt4FnJGalG
	 d/wY0h81EIPTMXMKIz/6zdhPeOu6vHLD/f33YPQBT35snaqcgaqUiyoqTVpi3b/PT+
	 Gi3gzP05ZLbaNImLbyhrm19Tp1G4AV3QBQZY87YAH80V3eIIWQsO5JvkkdWEeWAy0E
	 USuyo90aRRohIq1XC9gpde/k8xz06SPeV6FVYua18wdngQV0rJsyan7Klld6XPardW
	 O16hFUcTaokox3NAitAchomIGZruUSAKbrjrM8O+CC6xmNTgDUgckVSFiKUVd9hZ8n
	 6qaAFnnpsOUuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACA8780DD1;
	Wed, 25 Mar 2026 15:16:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 192A01D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16E5C4018E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TUaGOec1130r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:16:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=77.108.111.100;
 helo=mail.amicon.ru; envelope-from=ade@amicon.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D74AF4009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D74AF4009E
Received: from mail.amicon.ru (mail.amicon.ru [77.108.111.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D74AF4009E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:16:44 +0000 (UTC)
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
Date: Wed, 25 Mar 2026 18:16:02 +0300
Message-ID: <20260325151615.1407182-1-ade@amicon.ru>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
References: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.2.46]
X-ClientProxiedBy: mail.amicon.lan (192.168.0.59) To mail.amicon.lan
 (192.168.0.59)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=amicon.ru; s=mail;
 c=simple/simple; 
 t=1774451800; h=from:subject:to:date:message-id;
 bh=1i3NxWlICBbOFqtT7C9smmQo82RtasGv7L9o4l/iSIQ=;
 b=fi62UMQAn7pIMyPBSY9xt3ENVEbG81A5b1OvP0FhLHQdFE/5I1mf0gbT/Ho0t7h/6mTr/7CPZ51
 tiq8+mrZN7z6bOY1b0b5DxIHwCEClVYS3hNsAHiBhcyJdvucIVKp+T+HP0Nt9X/3kc2lUjHHOtoU0
 1nbpM+Q53Dftg3rg+7HB8ceeaQSw8kuN0APYQ2/ZrZsz5W0OgoO+TTNGjg4n8rzY4hYf1PKcaWO+o
 FvtiJk01ijCrEEaudjJVKlwqDgZfofx4sB9tPfrmXuBrNCTb0r16cXyKgytIQWCMeW3xlqK7dt5wx
 FYMKRLOP17J5YuE6wgdSGEaVZRgc01ikumZA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amicon.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amicon.ru header.i=@amicon.ru header.a=rsa-sha256
 header.s=mail header.b=fi62UMQA
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] e1000/e1000e: limit
 endianness conversion to boundary words
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	URIBL_MULTI_FAIL(0.00)[smtp1.osuosl.org:server fail,osuosl.org:server fail,amicon.ru:server fail];
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
X-Rspamd-Queue-Id: 7F307327B0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series refactors the EEPROM write logic in e1000 and e1000e drivers
to avoid processing uninitialized memory. Instead of looping over the
entire buffer, we now only perform endianness conversion on the boundary
words that were actually read from the hardware.

Patch 1: e1000: limit endianness conversion to boundary words
Patch 2: e1000e: limit endianness conversion to boundary words
---
v2:
 - Moved these improvements to the 'net-next' tree.
 - Improved commit description for clarity.

 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 11 +++++++----
 drivers/net/ethernet/intel/e1000e/ethtool.c      | 10 +++++++++-
 2 files changed, 16 insertions(+), 5 deletions(-)

-- 
2.51.0

