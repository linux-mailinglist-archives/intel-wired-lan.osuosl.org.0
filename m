Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rjugJMdHUmoAOAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 15:40:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76723741B2E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 15:40:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=KMPBryYn;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amazon.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E85F260C09;
	Sat, 11 Jul 2026 13:33:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G45VDbD9oLQV; Sat, 11 Jul 2026 13:33:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7677260DAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783776782;
	bh=GKRJbIofdXLrYeFk4YuP+m2CmFCaXhx3FTzh99Bd4VA=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KMPBryYncaW0C6H4C9OtNnZgzaBSePFhHCPH+JPuSSZ7MJC35ebj+MM3tIg4MqR5G
	 Mst2iCIBUl8gIjiw5GL8kJMvJpIMsiwwVBJkUJVAdRh4EbbIJEDynhh4p9zTo6c/cc
	 W2BhR3T1XZjD5zfyRHysh+kkZbaY/DwDK0ca5NrGwwhXM+BwE4Y+NGT5XunBW9fGt6
	 LegIWKFZRUN+3QZZIfELy0JqmdqFN+6mfbEFUmY9nFQbPQn74tJk0qNrYQyz+M/GWQ
	 oOZhwTzacuDrEQq679YikiyMUcV22qluSoiS+dthkTq2XL3mscuMXry7zrDIuG1LfB
	 4z+LiepkAxb6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7677260DAA;
	Sat, 11 Jul 2026 13:33:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3969122F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 13:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22C76404EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 13:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j01CD4VWaMZw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jul 2026 13:32:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=50.112.246.219;
 helo=pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=645d0ff52=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14BDC401E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14BDC401E7
Received: from pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [50.112.246.219])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14BDC401E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 13:32:58 +0000 (UTC)
X-CSE-ConnectionGUID: vdyG+9NkRkGo+kSHQkLhww==
X-CSE-MsgGUID: vzBp9IjDTPawjohMvXIupA==
X-IronPort-AV: E=Sophos;i="6.25,154,1779148800"; d="scan'208";a="23288930"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-015.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 13:32:52 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:25614]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.11.68:2525]
 with esmtp (Farcaster)
 id c035339e-bd81-4714-b361-2bc44f40193d; Sat, 11 Jul 2026 13:32:52 +0000 (UTC)
X-Farcaster-Flow-ID: c035339e-bd81-4714-b361-2bc44f40193d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.43;
 Sat, 11 Jul 2026 13:32:52 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.43;
 Sat, 11 Jul 2026 13:32:50 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <kohei.enju@gmail.com>, Takashi Kozu
 <takkozu@amazon.com>
Date: Sat, 11 Jul 2026 22:32:15 +0900
Message-ID: <20260711133239.29270-2-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D040UWB003.ant.amazon.com (10.13.138.8) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1783776779; x=1815312779;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GKRJbIofdXLrYeFk4YuP+m2CmFCaXhx3FTzh99Bd4VA=;
 b=LAa3bZmRenkUWXlDqKpEsBxbo8dkkWagceZ9jjYArA2N7NBPHWv0kPFO
 m6OaFzDf/7P1MqrQvwsfB/WPVvPkd36VxIgCQuXP2WHn4bHe28/QxkOe0
 tuxXhTTuPsMt6TXvV5evgQM3nwhl7b/beeQV/OqoFPuvSS7TgomSbyNY9
 iIr0d06rqaHod9ne+ZNblrtXu80GVKGgEnb52wbTxEKC0uaM0MwPELs4G
 2yFSWG9qh9+J4WdGYdHEOPTOOranhHNOawI+ArSAxcAY8lpO9ISfjmXu5
 RGEtqmb2r1GnQjqkR+zq0vf/tyJmyv82JF2SF9mcfIQaM6HwUgiqvdzlq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=LAa3bZmR
Subject: [Intel-wired-lan] [PATCH iwl-next v1] igb: remove ASSERT_RTNL()
 from igb_write_rss_key()
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [9.79 / 15.00];
	BLACKLIST_DMARC(6.00)[amazon.com:D:-];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amazon.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,body];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:kohei.enju@gmail.com,m:takkozu@amazon.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,gmail.com,amazon.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76723741B2E
X-Spam: Yes

igb_runtime_resume() calls __igb_resume() with rpm=true, which
skips rtnl_lock() to avoid deadlocks. On that path __igb_open()
-> igb_configure() -> igb_setup_mrqc() -> igb_write_rss_key()
runs without rtnl held, so ASSERT_RTNL() fires a false-positive
WARN on every runtime resume. Drop it.

Fixes: dfaf57ef99cf ("igb: prepare for RSS key get/set support")
Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 65014a54a6d1..4eb586f9af99 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3031,8 +3031,6 @@ void igb_write_rss_key(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
 
-	ASSERT_RTNL();
-
 	for (int i = 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
 		u32 val = get_unaligned_le32(&adapter->rss_key[i * 4]);
 
-- 
2.54.0

