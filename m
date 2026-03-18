Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMSLFMrBumkGbgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:16:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C04352BE016
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:16:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEC6440C5C;
	Wed, 18 Mar 2026 15:16:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qU1JTmfcuAY; Wed, 18 Mar 2026 15:16:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4277A40C38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773846982;
	bh=7IocAxnxco34Le6F3IbCKEsYU73e0AKXKgQS7P9WhQk=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s6y4cN8yh779xbqM7+m4niknFZ92xgBL0HjZ5bmO3NB+IjuV4RGhlbva6rizinKKd
	 GXTCdMqkOrU3SCWHhnA3R4D+MWju4hhSnik/vIGfuURZ0NMa9N+W4VcKmQ18GDDCq9
	 GFBxOfPQlp2KgNLrSlo2bzoSnxMgk+j2Cjl/NVoMrVDMXWqWZGxNeSyEJcRzc+fHPD
	 tvC2pPGJVTUp5glYLTTJLKLtmnIJ4s2QjvZKUcy2xgL42Mh/hlLLFflkHZmBpprBaa
	 sGmCMi5XYYi2/8T0xphn1koLjIx/jm2ymq9Uy/Y231mMQerHco92kG8f0H4nwdDhvJ
	 jpS6b1INnDOOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4277A40C38;
	Wed, 18 Mar 2026 15:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EEA61AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 12:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54A2383BBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 12:20:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1orBzvu7KH5J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 12:20:45 +0000 (UTC)
X-Greylist: delayed 904 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 18 Mar 2026 12:20:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4986983BA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4986983BA6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=77.108.111.100;
 helo=mail.amicon.ru; envelope-from=ade@amicon.ru; receiver=<UNKNOWN> 
Received: from mail.amicon.ru (mail.amicon.ru [77.108.111.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4986983BA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 12:20:44 +0000 (UTC)
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Received: from example.com (172.16.2.46) by mail.amicon.lan (192.168.0.59)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.27; Wed, 18 Mar
 2026 15:05:30 +0300
From: Agalakov Daniil <ade@amicon.ru>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Agalakov Daniil <ade@amicon.ru>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lvc-project@linuxtesting.org>, "Daniil
 Iskhakov" <dish@amicon.ru>, Roman Razov <rrv@amicon.ru>
Date: Wed, 18 Mar 2026 15:05:04 +0300
Message-ID: <20260318120512.687149-1-ade@amicon.ru>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Originating-IP: [172.16.2.46]
X-ClientProxiedBy: mail.amicon.lan (192.168.0.59) To mail.amicon.lan
 (192.168.0.59)
X-Mailman-Approved-At: Wed, 18 Mar 2026 15:16:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=amicon.ru; s=mail;
 c=simple/simple; 
 t=1773835531; h=from:subject:to:date:message-id;
 bh=ItOuvsOZrEPLHOd5gWwx5fQdWlJ4DU7hNyCbq1giguU=;
 b=FDTv+W2IZK87rI9ZMckRMex3s4IPtz7Ep4mzUZIZ14/ZYQu+fbGmG5g0EIHwYZv9Cw+BZQT95vm
 xG7LiN9iG1V8yNCs9+TM9224RVmtLqjUG1NbNQlb8zMwYfxCOhXumt7RvDlH1OyYQ/fFMKdIWnACm
 IFJrIpTvaYYXszKUnz/ckQ57a1XItP/U1OpzWVZU6vyCkqrZGXWB/uGacjY3s8xElmfjIYcTP09yr
 ihjgcCUvlQ8gZ/DdnFwWa1dbz1enCBi9rYI/Qviv5fJeh77Petpz18txs7wYCWwIaQHrMhPHUIE78
 RYSGsdThtw7zk9tqX+P8qiUZu9K0IMfb0++g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amicon.ru
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amicon.ru header.i=@amicon.ru header.a=rsa-sha256
 header.s=mail header.b=FDTv+W2I
Subject: [Intel-wired-lan] [PATCH net 0/3] e1000/e1000e: fix uninitialized
 memory access in EEPROM write
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amicon.ru:email,amicon.ru:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
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
X-Rspamd-Queue-Id: C04352BE016
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series addresses a common issues related to uninitialized memory
access during EEPROM write operations in the e1000 and e1000e drivers.

In the e1000 driver, the return value of e1000_read_eeprom() was not
checked, and both e1000 and e1000e drivers performed endianness
conversion on the entire buffer, including uninitialized interior words.

The changes are:
 - add missing error checks for e1000_read_eeprom() in e1000;
 - limit endianness conversion to the boundary words being read,
   avoiding a loop over entire (and partially uninitialized) buffer in
   both e1000 and e1000e.

Patch 1: e1000: check return value of e1000_read_eeprom
Patch 2: e1000: fix endianness conversion of uninitialized words
Patch 3: e1000e: fix endianness conversion of uninitialized words

Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
Signed-off-by: Agalakov Daniil <ade@amicon.ru>
---
 .../net/ethernet/intel/e1000/e1000_ethtool.c  | 18 +++++++++++++-----
 drivers/net/ethernet/intel/e1000e/ethtool.c   | 19 ++++++++++++-------
 2 files changed, 25 insertions(+), 12 deletions(-)

-- 
2.51.0

