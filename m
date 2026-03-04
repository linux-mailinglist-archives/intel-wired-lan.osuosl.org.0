Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAW9OZzdp2lnkgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 08:22:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 759A01FB8AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 08:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22D97810FA;
	Wed,  4 Mar 2026 07:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a_xqL5jpRSnC; Wed,  4 Mar 2026 07:22:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99FBF81139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772608922;
	bh=yooAt4nwgOEFBGp9yNB6yDlYIlatxdgqRh7cI21DMUg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=UPokxNteq/qpznQzsePwoCEoGgucoLYgY7ABqeHhjFlCf1rNdtHpauBGXEtG8GYQu
	 Xah3Awj3s1VtFQFJv4R5298QvriffQ1fImhggesTYqUvWJRQOndMJUn+vIkLuiSpfr
	 GW+c66WKvfCUbXB389gvJSv4dAeK51K3aKkv1malXYNi+G9cQpqL9F7PBrMiJMV4xQ
	 D9FckOkHoaJSXf9btEPQSigBdr0ap7aMY1t6BFOxyQuQa5WigjIDWIT07cKGNn2bOy
	 NbEM01/rcFDXvVs4tTjwHR5QujS8Q1fixBhKTLGTytDrdQ9lL5yqdYLdtElTpjElr3
	 LOlVeOz+aseow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99FBF81139;
	Wed,  4 Mar 2026 07:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29AFE1EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 07:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 270F560797
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 07:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2i3GAEZWQ1VB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 07:21:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=devnull+maximilianpezzullo.gmail.com@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 64D4960792
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64D4960792
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64D4960792
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 07:21:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id CAAAD60097;
 Wed,  4 Mar 2026 07:21:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7035DC19423;
 Wed,  4 Mar 2026 07:21:57 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 5978AEDEBF7;
 Wed,  4 Mar 2026 07:21:57 +0000 (UTC)
From: Maximilian Pezzullo via B4 Relay
 <devnull+maximilianpezzullo.gmail.com@kernel.org>
Date: Wed, 04 Mar 2026 08:21:18 +0100
Message-Id: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-0-b6a9f1d336ff@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2NwQqDMBBEf0X23IUQQ6X9ldJDk6y6UDeyCWIR/
 72Lh4F5DLw5oJIyVXh2ByhtXLmIgb91kOaPTIScjcE7f3e9Czjyju23loosmMqykLSrszT6IrW
 ZVKhhVt5IbZmiJWEfw2OILo9hyGD2VclU1/PrfZ5/iTsfY4kAAAA=
X-Change-ID: 20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-3b497b0df47d
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Joe Damato <joe@dama.to>, 
 Maximilian Pezzullo <maximilianpezzullo@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772608916; l=1013;
 i=maximilianpezzullo@gmail.com; s=20260303; h=from:subject:message-id;
 bh=rqm1hIKFXnYB5F1diGKPD+DC9avHWqfyIaJZ3phGQak=;
 b=jGLaa1WXEILpn8rGbNZrfHas9wq6FwGnb0CbwLp9lSUNsPN3/058qUyC7++bGPw7K1sgWQRmm
 5uUvoYTwCdADv8y8Mi2qy30t1bf7xB0s9WLxX1ycQNn88z8rC5f/MhL
X-Developer-Key: i=maximilianpezzullo@gmail.com; a=ed25519;
 pk=TRTR4c2Vb1IfluQvv5OUDPg7EE+pIzdPBND85UU559w=
X-Endpoint-Received: by B4 Relay for maximilianpezzullo@gmail.com/20260303
 with auth_id=658
X-Original-From: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772608917;
 bh=rqm1hIKFXnYB5F1diGKPD+DC9avHWqfyIaJZ3phGQak=;
 h=From:Subject:Date:To:Cc:Reply-To:From;
 b=EFjVtNVyr9P91dwDw6fBSnxhY9/uQ1KUl/I2b6zgolUX95XdIsvGk50btt0DzglTs
 IMSFvem0Pe2QF2Mxr1/UjtnkkmM5gYZs5p/IhXNVTgCBHFrQZgzz/rOXRLIvpZWbGN
 boLr7X0+eVMgSANoPrJ1g9Cl76EERzXEMelhvTLwDt3zbaYAbQO4Ky6B6195Vs59CZ
 682+p1tX3FGVohvFO68bL793nPU9mXvdeX3P4rnydzGmD/MMLjeHdx0li4/cEag8GX
 sAtPBRZkes4LMeVYyJcmLD2kOzsgkTze+TsWA95z3UuKwJ/pzPhofcxsffgX+EDW5R
 MFWfl+KOzBQxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EFjVtNVy
Subject: [Intel-wired-lan] [PATCH v2 0/2] Fix typos in comments in Intel
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
X-Rspamd-Queue-Id: 759A01FB8AC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joe@dama.to,m:maximilianpezzullo@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[maximilianpezzullo.gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,dama.to,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	HAS_REPLYTO(0.00)[maximilianpezzullo@gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

This is v2, adding a typo fix noticed by Joe Damato in e1000_defines.h
("Device Reset Aserted" -> "Device Reset Asserted").

Changes in v2:
- igb: also fix 'Aserted' -> 'Asserted' in e1000_defines.h (suggested by Joe Damato)

Signed-off-by: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
---
Maximilian Pezzullo (2):
      igb: fix typos in comments
      igc: fix typos in comments

 drivers/net/ethernet/intel/igb/e1000_defines.h | 2 +-
 drivers/net/ethernet/intel/igb/e1000_mac.c     | 2 +-
 drivers/net/ethernet/intel/igb/e1000_mbx.h     | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c     | 2 +-
 drivers/net/ethernet/intel/igc/igc_diag.c      | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c      | 4 ++--
 6 files changed, 7 insertions(+), 7 deletions(-)
---
base-commit: af4e9ef3d78420feb8fe58cd9a1ab80c501b3c08
change-id: 20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-3b497b0df47d

Best regards,
-- 
Maximilian Pezzullo <maximilianpezzullo@gmail.com>


