Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C0GM8pWp2lsgwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 22:46:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 483591F7B95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 22:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 331EA409C4;
	Tue,  3 Mar 2026 21:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MCKlor7SsNBP; Tue,  3 Mar 2026 21:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADA7B40982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772573983;
	bh=igp784OHO+635oJ50fvODP220soAAGHkDuzEsTE/GF8=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=F+17KYm15NdXtKSeqPRdzaG27y0M0X3GQXsxbwopuDyWoPMA9yLd6cOEv/RQuaRHj
	 eOXlt5u/qE12PZUT1kIcrC6bDcw4UWdupzCFyetrIC1QfR/pOZsBuBLmHYj2mRWcaf
	 tmwXsNUzBJiEUjll6Eyci92sy9PRD+unWqlQDgezRc7kC7rpofYI43GKFticmgeJq9
	 dlZbhwjoI7poVQr31iH/Xntfl9AJnWLKQoTeHzuVzGoIV8HzW2mQE5cmuqCtEFz5sZ
	 3IpjVdmn2Y6XJTWJGhDX9Km3b3lU6oQnrlc8yPWSjn2vabEgBfKuOxCLzW0+q+4O21
	 3ubQh/RlNnbQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADA7B40982;
	Tue,  3 Mar 2026 21:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E7D4B1EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E51F840223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EKeBLboNtNin for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=devnull+maximilianpezzullo.gmail.com@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5133C4021E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5133C4021E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5133C4021E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 21:38:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BB24F60097;
 Tue,  3 Mar 2026 21:38:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5EF2AC116C6;
 Tue,  3 Mar 2026 21:38:40 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 4A7E0EDEBED;
 Tue,  3 Mar 2026 21:38:40 +0000 (UTC)
From: Maximilian Pezzullo via B4 Relay
 <devnull+maximilianpezzullo.gmail.com@kernel.org>
Date: Tue, 03 Mar 2026 22:38:19 +0100
Message-Id: <20260303-master-v1-0-f180b1ad98b5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwNj3dzE4pLUIl3DVEtLSwMLSwvDpGQloOKCotS0zAqwQdGxtbUAojo
 o1lgAAAA=
X-Change-ID: 20260303-master-1e99908981bc
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Maximilian Pezzullo <maximilianpezzullo@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772573919; l=656;
 i=maximilianpezzullo@gmail.com; s=20260303; h=from:subject:message-id;
 bh=AjH7WLa9bAhWMALSAH3NuMvfF6ECbIBSXWNf/e4MfJg=;
 b=L/lPOvYciaiOzmbZFaB9ATg9XQKiN5iExZe8cRlu0nHygPOjY8Zq026P5Nt/nThTqABdnRJ0g
 Jt6S6R0m4IIDygn/0pWWTORonyao+CMPl5iUbD3KSErd876dkCdcEuE
X-Developer-Key: i=maximilianpezzullo@gmail.com; a=ed25519;
 pk=TRTR4c2Vb1IfluQvv5OUDPg7EE+pIzdPBND85UU559w=
X-Endpoint-Received: by B4 Relay for maximilianpezzullo@gmail.com/20260303
 with auth_id=658
X-Original-From: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
X-Mailman-Approved-At: Tue, 03 Mar 2026 21:39:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772573920;
 bh=AjH7WLa9bAhWMALSAH3NuMvfF6ECbIBSXWNf/e4MfJg=;
 h=From:Subject:Date:To:Cc:Reply-To:From;
 b=rn087zihY75Rgf6dJNfes7sHjzjTudtvvIhJssC0bBLqQZz5LZEwh5H9/94J9j3ph
 5ROujE48IFsVEGemtSYZB2Fadxbs/ADGiyLG/ng/90LwYK5pBHsuuNcIBhqCFfH9s8
 U37PifeiziEAFNt9CL8zAEiohEpyTizE7CUIlMAV8a7XNBq3PGmNm2MHUwl33dIecR
 vKqT4RVIjcxOnnVYp60I6jbEVoRs2obqpnA0gRAr1cE5LvlUl1J5Bt1To8zhkGbM9Z
 Z2JNkcqeQyR2Yl7YSUOFb5AMOrGZK7EB1Xr83XAwPpxmU0SFAi9FIRHNsRkiidTpkD
 kNJdbdsYezYpA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rn087zih
Subject: [Intel-wired-lan] [PATCH 0/2] Fix typos in comments in Intel
 Ethernet drivers (igb, igc)
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
Reply-To: maximilianpezzullo@gmail.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 483591F7B95
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.29 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[maximilianpezzullo.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:maximilianpezzullo@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER(0.00)[devnull@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[maximilianpezzullo@gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Signed-off-by: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
---
Maximilian Pezzullo (2):
      igb: fix typos in comments
      igc: fix typos in comments

 drivers/net/ethernet/intel/igb/e1000_mac.c | 2 +-
 drivers/net/ethernet/intel/igb/e1000_mbx.h | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_diag.c  | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c  | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)
---
base-commit: 4258db5c0acd08e795c78c7cd59f05860b7cb769
change-id: 20260303-master-1e99908981bc

Best regards,
-- 
Maximilian Pezzullo <maximilianpezzullo@gmail.com>


