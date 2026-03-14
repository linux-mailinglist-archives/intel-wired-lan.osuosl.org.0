Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAJ0L1GOtWmX1wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 17:35:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA45828DED3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 17:35:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F4416081C;
	Sat, 14 Mar 2026 16:35:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4IFZSTvrkaJ; Sat, 14 Mar 2026 16:35:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFE6360845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773506125;
	bh=L/eakVxCmU6z4MfVX/Tn/gRdChsPQgl7sUT4bvaSUng=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zHpJmiooHL0h3nJp9uJTkd/y1itASvE0F4rnwRYwl3qu7Sip2Dccjr60aQle/Ui26
	 NlT1HNUCvpHKNG728t8MMaUDxHs4cqKkR/x/2lhGrcroAZGsuhV6mp16s04q5vhFvG
	 s/moTvtAdM+seED9u8y/hcXGzlSapmju89aYnOYoW2J0eWMDRqelF+tnKWDYlTxz6O
	 POabVvy76UW2JD81o4muxcyNHGVrSxlKfGYGPhcSjBUTCX7X6ncLRPMQV9Rtc7N7rF
	 PLUUzlSb6eS3gqhXNYDAJTJYbJE6qcASMMnKXh1kqVZzQHbU40acRd8KkhPzJeSBDo
	 59OBzigY1FcDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFE6360845;
	Sat, 14 Mar 2026 16:35:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BC25201
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 16:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4722A607F7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 16:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zaRhkqfiusmR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 16:35:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6EDB8607E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EDB8607E5
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EDB8607E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 16:35:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 00E5C60008;
 Sat, 14 Mar 2026 16:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EF82C116C6;
 Sat, 14 Mar 2026 16:35:19 +0000 (UTC)
Date: Sat, 14 Mar 2026 09:35:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@vger.kernel.org
Cc: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 linux-kselftest@vger.kernel.org, Willem de Bruijn <willemb@google.com>,
 Shuah Khan <shuah@kernel.org>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Andrew Lunn <andrew@lunn.ch>,
 intel-wired-lan@lists.osuosl.org, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Message-ID: <20260314093518.43b820b7@kernel.org>
In-Reply-To: <20260313071322.3489243-1-bjorn@kernel.org>
References: <20260313071322.3489243-1-bjorn@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773506120;
 bh=L/eakVxCmU6z4MfVX/Tn/gRdChsPQgl7sUT4bvaSUng=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Qjg3QaOwYiWXU5CENRLW0EU8+MysNrtBRN2lvo+qCMxW8LYTl2pHBh9iA9403VxSo
 5dd8vVB4NmjmecXcm9k3ZqyWASernSVsaMKsS4LoG1EJf9fJ0r2Z9aWWZwd1M2+6eD
 mO6e5RDg2kBMD04bhJtS/FkC+tsPOiWBthQVCt0c7BYi8ENxytga7jlW2ofHhNCl3A
 mOu2WXZoc6VyfBoXP5h43Yp+NOy2yWtLyAr9og2MIkYWzJ66gQDdpYxOKfXKCLAq3C
 i3/TG5kz8TUhyZFL+pmVgsiG0vg7f/ZXhTEhlbe8Iu8M+iUjsRh2NvQMhHhcp8jX5e
 Z9V5Q4/GbV9tA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Qjg3QaOw
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/3] ethtool: Dynamic RSS
 context indirection table resizing
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:bjorn@kernel.org,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:linux-kselftest@vger.kernel.org,m:willemb@google.com,m:shuah@kernel.org,m:maxime.chevallier@bootlin.com,m:andrew@lunn.ch,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BA45828DED3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 08:13:12 +0100 Bj=C3=B6rn T=C3=B6pel wrote:
> Some NICs (e.g. bnxt) change their RSS indirection table size based on
> the queue count, because the hardware table is a shared resource. The
> ethtool core locks ctx->indir_size at context creation, so drivers
> have to reject channel changes when RSS contexts exist.
>=20
> This series adds resize helpers and wires them up in bnxt.

Sorry Bjorn, I was typing the explanation below and I realized that=20
we may be violating user intent. We should already record the user_size
from rss_set_prep_indir() as part of the context (and presumably some
netdev state for the main context?) and don't allow shrinking the
context below that mark..


Now for the broader audience - my understanding is that the RSS table
is a precious resource for most if not all drivers.
The direction of this work is to allow user to explicitly specify what
RSS table size they want. The Netlink API for RSS already allows users
to send tables smaller than what the device reports (Netlink code just
"replicates" the table). So if the user asks for X entries the driver
should be able to allocate a table of any size as long as its a
multiple of X. This series only support "global" resizing but it
should be simple to add the state for the driver to mark in the context
what table size it actually allocated. The only reason we haven't added
the support for that is that it's quite hard to know how to implement
it without docs for the FW/HW.. fbnic has fixed table sizes so we can't
even prototype there :S

Please reply if you'd like to collaborate on adding support for the
user-defined RSS context sizing.
