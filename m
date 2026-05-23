Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AgnDclHEWrIjQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 May 2026 08:23:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C31175BD6B7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 May 2026 08:23:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68A7D4081B;
	Sat, 23 May 2026 06:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0t74KCZTwMm9; Sat, 23 May 2026 06:23:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB97740E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779517380;
	bh=hZxyXWmAPqKETQ9Pxse7c7KTUmJuXZ6q1hA+scXEGkw=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=jZ3e9QTSDY8LPJnsiCMe8fgyl43lQaW4vcj5lL/Upz5dM/bgnfs9UUSaLDl+4YP3B
	 udfgGWe19L9aLCIMwzB6v8QULg6Q00b18XTUkNAFgYzaOiT0WMI0RZ9Rg/QO11N8mB
	 7N3Q8tL+ylo3XvA5kE6Z+opllQbxXR/1yHV0Bk+cJVsjWKZNPIWeVzYH9om9asLN45
	 pdtD6xI601Mo10UjWZpDicvhhfKfVbXf0vHZ7vIlevxfS+NJgSWhZUe067vA3ZG9Sx
	 6VZfFxY5vC/VSSHAmyikoWZfH5UOdP+J8ZQbOw9M+LEG9JTXL7kq+XEma4OhcFM0C0
	 UmEwjUVnG3qaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB97740E35;
	Sat, 23 May 2026 06:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F3063265
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2026 06:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D589D80F39
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2026 06:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0tEoef4JkCwB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 May 2026 06:22:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=linuxuser509@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 69E1780F36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69E1780F36
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69E1780F36
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2026 06:22:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779517336; cv=none; d=zohomail.in; s=zohoarc; 
 b=cLmloSO7/9qaf/EIqs3nwo4r9PBVjT6cm0F9/5BNP4Wr0fQyIY58I8lhNFB7uld86kBe7l5NXGfQbgJfjXQKwigaXw5xJo6WfuEdKYRSL5PRSfFwSOXEEswTKj9XKpbIsGVCcSKjeTku8ykBK8kCqME7gtzjVjSEcj9j4cNnsPw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1779517336;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=hZxyXWmAPqKETQ9Pxse7c7KTUmJuXZ6q1hA+scXEGkw=; 
 b=YaCN5S5VnxnsSytg1KXsfqKkocJz1HpdQOeePPuJyu97pqm7hCkTtriE0VhMkWt8MlhaHJrsrBjpEe5/p8VnoXtNTHX4qbPbLyRbbCbbfjuBZKHPLPJeKmqDEaj0/440zev+q37+KoW7Aiqg/DEFC3gpqL+au0yxwZXpow49mxc=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=linuxuser509@zohomail.in;
 dmarc=pass header.from=<linuxuser509@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1779517334906443.1321783571458;
 Sat, 23 May 2026 11:52:14 +0530 (IST)
Received: from  [106.219.3.73] by mail.zoho.in
 with HTTP;Sat, 23 May 2026 11:52:14 +0530 (IST)
Date: Sat, 23 May 2026 11:52:14 +0530
To: "anthonylnguyen" <anthony.l.nguyen@intel.com>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrewnetdev" <andrew+netdev@lunn.ch>,
 "davem" <davem@davemloft.net>, "edumazet" <edumazet@google.com>,
 "kuba" <kuba@kernel.org>, "pabeni" <pabeni@redhat.com>
Cc: "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>,
 "linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1779517336; 
 s=zoho; d=zohomail.in; i=linuxuser509@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=hZxyXWmAPqKETQ9Pxse7c7KTUmJuXZ6q1hA+scXEGkw=;
 b=BqDN+IG7zKiXQ4cUFfzhoIPlpKxh6QAhbw7W2nhzJUSekkPyfmNXGip/TyeLi7oA
 ZdqStJw38bcV9Ks7UwiaQ/VqY8ScL0NCpr8a2FW8AOY0BGqlZdmQZ10gHN2mEDpshW9
 xbyUH6iW84cEZRD/m4qs9nLc1LvGz15JNcQmISps=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=linuxuser509@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=BqDN+IG7
Subject: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,zohomail.in:replyto,zohomail.in:mid,zohomail.in:email];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[linuxuser509@zohomail.in];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.895];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C31175BD6B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ashwin Gundarapu <linuxuser509@zohomail.in>
Date: Sat, 23 May 2026 11:49:40 +0530
Subject: [PATCH] e1000e: fix memory leak of msix_entries on MSI-X failure

When MSI-X initialization fails, the driver falls through to try
MSI or legacy interrupts. However, the msix_entries array allocated
earlier is not freed, causing a memory leak. Free it and set to
NULL before falling through to the MSI fallback path.

Found by code inspection.

Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 7ce0cc8ab8f4..1526069d7fc1 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -2065,10 +2065,12 @@ void e1000e_set_interrupt_capability(struct e1000_adapter *adapter)
 							    a->num_vectors);
 				if (err > 0)
 					return;
-			}
-			/* MSI-X failed, so fall through and try MSI */
-			e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n");
-			e1000e_reset_interrupt_capability(adapter);
+                        }
+                        /* MSI-X failed, so fall through and try MSI */
+                        e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n");
+                        kfree(adapter->msix_entries);
+                        adapter->msix_entries = NULL;
+                        e1000e_reset_interrupt_capability(adapter);
 		}
 		adapter->int_mode = E1000E_INT_MODE_MSI;
 		fallthrough;
--
2.43.0


