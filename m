Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOMIHnj9D2qCSAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 08:53:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 194785AFB45
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 08:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBE1685276;
	Fri, 22 May 2026 06:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8oYBIMYd8-sk; Fri, 22 May 2026 06:53:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36AAC85295
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779432818;
	bh=BjQT+YwVFJIg+6eKHraFXkbmCcLFw8BYQEDz4dPV4Q0=;
	h=Date:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=1dkpzbcc3cL1ry7XWuyaVR08MqmVpZ0qoGhZ9wqlDe64xhtOUofD2MxrSZiDt6URo
	 +S58D8fp768hFv5aSym1ionA23s9AIgz0WimbBnkRZUdSwnHgq8q+5z948E1IrR+87
	 fnIY+nT/Sln4Z1gyCIc6eSub6CdyHvSdeEm9ItSog0OLLt5BFcdAa3AdMQb9V7lIWE
	 pUiO1MHUdLPsi8M+HpirmFQnerpGYL3NW0wM/1t6mEEL51gGi8UC0lldxrj8ZwK0P7
	 nzOen3ZdO2U02mvr9AAkW6k3dX+XUEbcqgA99lSb01tN1wGEvnZoiQVuMIaX6W6LLc
	 Jsw4/IEzw2uGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36AAC85295;
	Fri, 22 May 2026 06:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A8403B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 06:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C1C2429A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 06:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o-xzDDen8WoN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 06:53:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=linuxuser509@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9EC484299E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EC484299E
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EC484299E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 06:53:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779432756; cv=none; d=zohomail.in; s=zohoarc; 
 b=UkXkWLLdEfqXd6g0Ptcz/gbq5B435B2CfehOEPGruFLBmSjNJTb8NQGdkFmSVkGab/1hzHICaKxIkV5Y5vlZYABlVXkKLeaAzjMuScE7aj8z6VXm+l0M2q5QCLcRJ3pKpP8JWDijTseFhemviOa4APjfds6dugmILgQlOiG19JU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1779432756;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=BjQT+YwVFJIg+6eKHraFXkbmCcLFw8BYQEDz4dPV4Q0=; 
 b=ZpT85IrCGhWvMjEAbGJwJGMMKGpR74koJVZOSR53bJXr1yciwsqYR038e9DDU/CoMGhuysuJfGK79+jKOfUIUhgoPCYvDYA3L8f9NPaF/LQH4eVNdE2IFlVfOu7/b78sBaW9EVjmnknSC9YLw05jGJGkWnH2p2c7fndxYKOeVPM=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=linuxuser509@zohomail.in;
 dmarc=pass header.from=<linuxuser509@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1779432750919223.90762740528305;
 Fri, 22 May 2026 12:22:30 +0530 (IST)
Received: from  [106.219.3.73] by mail.zoho.in
 with HTTP;Fri, 22 May 2026 12:22:30 +0530 (IST)
Date: Fri, 22 May 2026 12:22:30 +0530
To: "anthonylnguyen" <anthony.l.nguyen@intel.com>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrewnetdev" <andrew+netdev@lunn.ch>,
 "davem" <davem@davemloft.net>, "edumazet" <edumazet@google.com>,
 "kuba" <kuba@kernel.org>, "pabeni" <pabeni@redhat.com>
Cc: "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>,
 "linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19e4e74ff40.601fab765713.9212104302286035517@zohomail.in>
In-Reply-To: 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1779432756; 
 s=zoho; d=zohomail.in; i=linuxuser509@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=BjQT+YwVFJIg+6eKHraFXkbmCcLFw8BYQEDz4dPV4Q0=;
 b=SERrZCjKWlOwIRVbfVlEMRC8feZEUXmFrX7G53TCbsZqVbsJXhF5Tsk4zwlGySct
 M0X2T0iSNezGvnlRqqo91qJllJthK3QzRy6NPRjdXjfY2dwMQ8J3CE2eXllQ+DgDZS5
 mZomb58PTsHkpCK7/BeGWZH4IbhMS2p8V6Hvv7QI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=linuxuser509@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=SERrZCjK
Subject: [Intel-wired-lan] [PATCH net-next] net: e100: remove redundant
 static variable initializations
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
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zohomail.in:replyto,zohomail.in:mid,zohomail.in:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[linuxuser509@zohomail.in];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.944];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 194785AFB45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


From: Ashwin Gundarapu <linuxuser509@zohomail.in>
Date: Fri, 22 May 2026 12:20:23 +0530
Subject: [PATCH] net: e100: remove redundant static variable initializations

Remove '= 0' from static variables eeprom_bad_csum_allow and use_io.
Static variables are zero-initialized by default.

Found by checkpatch.pl

Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in>
---
 drivers/net/ethernet/intel/e100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index bfacf877ca40..bdddd4315cbb 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -167,8 +167,8 @@ MODULE_FIRMWARE(FIRMWARE_D101S);
 MODULE_FIRMWARE(FIRMWARE_D102E);

 static int debug = 3;
-static int eeprom_bad_csum_allow = 0;
-static int use_io = 0;
+static int eeprom_bad_csum_allow;
+static int use_io;
 module_param(debug, int, 0);
 module_param(eeprom_bad_csum_allow, int, 0444);
 module_param(use_io, int, 0444);
--
2.43.0
