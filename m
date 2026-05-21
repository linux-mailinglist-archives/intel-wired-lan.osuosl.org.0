Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOyOMOQoD2rGHAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 17:46:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AD55A898E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 17:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE59D61AD0;
	Thu, 21 May 2026 15:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QNp6ukqyOVd5; Thu, 21 May 2026 15:46:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EEFD61ACF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779378400;
	bh=EQSpA4ZTPRnz9G9H3FIaLAkaSDGkNEul7L4Q8NT2ouo=;
	h=Date:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=RVGV83x/cECTRUit0PAP8HkZtWHqYy6YpPCeq+yqIr2sConzhduiHfWUM5X0TfK/s
	 Yp7nVmeimUN1eqE1fJPwKlXCQ5mJq9FDl8Jhx61m/B6zfHIQ+a1WnTlyrNMc+xe9ld
	 DiPlWp2aI1JW9ixMtMcnybEKQbnrISFu5h2mdrSDn5S7lmd0ZyZSQrZn9PU2yXq4vG
	 qm5kp9m/lKTbUVpBDVkVCbqlLkJuUqxV3v2lZLawQ0ei9QQ8GiDpPtm5o7esr/PplA
	 tnsCn2QntaFDhFCPeXWEx5QW7DCgAK1Hw1dKqe3vxzcPOrXmPbVV4HXwvvn33uMnX+
	 vQR+f95IP8VUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EEFD61ACF;
	Thu, 21 May 2026 15:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3A90282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 06:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD9D241DA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 06:26:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PVkGFdQbnG70 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 06:26:30 +0000 (UTC)
X-Greylist: delayed 909 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 21 May 2026 06:26:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB0BC41DA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB0BC41DA7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=linuxuser509@zohomail.in;
 receiver=<UNKNOWN> 
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB0BC41DA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 06:26:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779343828; cv=none; d=zohomail.in; s=zohoarc; 
 b=ZdoHJQqyT/sdSj+9pX3W7UlwLWq3pRWl4FJ+eU7sXyDcujetypKNZ94IBJF2Wk31sHh69irhf41TvF+x/PM8Lc/A60htlIwn0vL4ke6S62kEHpxH/6XA33Aq8am6A8YUzzx1sA3Q/OSRysQHgIhKn4rVU5GRYDOIMma1PVu3eq4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1779343828;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=EQSpA4ZTPRnz9G9H3FIaLAkaSDGkNEul7L4Q8NT2ouo=; 
 b=NhvT0EqPM3n/EBW56byQG2gdbTZaX7ZPDIsET/RXXbPedE2VZX16O3hV8CtVbRQK8QbKGFc7a8rFPTlHniFvuh/07Xxkhy0+BMEFJWjdu/7NIOz0Ad9FNY+lpzLkmOmRAluVDpCEXHY6xZ2y2S6e2WT+96uSfGNibkDMsuRuCJ8=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=linuxuser509@zohomail.in;
 dmarc=pass header.from=<linuxuser509@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1779343819672847.3911387241204;
 Thu, 21 May 2026 11:40:19 +0530 (IST)
Received: from  [27.59.63.162] by mail.zoho.in
 with HTTP;Thu, 21 May 2026 11:40:19 +0530 (IST)
Date: Thu, 21 May 2026 11:40:19 +0530
To: "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrewnetdev" <andrew+netdev@lunn.ch>,
 "davem" <davem@davemloft.net>, "edumazet" <edumazet@google.com>,
 "kuba" <kuba@kernel.org>, "pabeni" <pabeni@redhat.com>
Cc: "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>,
 "linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
In-Reply-To: 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Approved-At: Thu, 21 May 2026 15:46:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1779343828; 
 s=zoho; d=zohomail.in; i=linuxuser509@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=EQSpA4ZTPRnz9G9H3FIaLAkaSDGkNEul7L4Q8NT2ouo=;
 b=p0LUN66tKJtnMqgbMoL3gcbNvX6Or5P1xY7lbeWoubjE5dyUK5IQshG+oRKzT97Q
 r9AqfLVIcKt8s42yb0da/rXqBED+Xvuqn0xcrdkxy/YIaKMxru5pG6UK1uLjwzg/w3v
 o5h13xDI3YzK+wIC1IxNo5u5DcsRxrLI3Aptl3SU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=linuxuser509@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=p0LUN66t
Subject: [Intel-wired-lan] [PATCH net-next] net: e100: replace silent 'hope
 for the best' with debug message
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
From: Ashwin Gundarapu via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Ashwin Gundarapu <linuxuser509@zohomail.in>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.30 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[linuxuser509@zohomail.in];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 76AD55A898E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ashwin Gundarapu <linuxuser509@zohomail.in>
Date: Sun, 10 May 2026 15:09:12 +0530
Subject: [PATCH] net: e100: replace silent 'hope for the best' with debug
 message

Replace a silent return with a debug message when no MII PHY is
detected on known variants. This gives users visibility into the
failure instead of silently hoping for the best.

Found by checkpatch.pl inspection.

Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in>
---
 drivers/net/ethernet/intel/e100.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 9074b558de35..bfacf877ca40 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -1450,7 +1450,9 @@ static int e100_phy_init(struct nic *nic)
 		 * But do this AFTER MII checking only, since this does
 		 * lookup of EEPROM values which may easily be unreliable. */
 		if (e100_phy_check_without_mii(nic))
-			return 0; /* simply return and hope for the best */
+                        netif_dbg(nic, probe, nic->netdev,
+                                  "No MII PHY detected, continuing anyway\n");
+                        return 0;
 		else {
 			/* for unknown cases log a fatal error */
 			netif_err(nic, hw, nic->netdev,
-- 
2.43.0
