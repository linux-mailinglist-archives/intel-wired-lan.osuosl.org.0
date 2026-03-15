Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAmKEbYhuGmdZQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 16:28:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5051229C5A1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 16:28:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 062B640C1E;
	Mon, 16 Mar 2026 15:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UgIsb2jI3p-P; Mon, 16 Mar 2026 15:28:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B6F140E97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773674931;
	bh=z4rhJ0MAlLXWIwBE/DLS0hy7130Yo8vaGFjA4dZQEqk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qkxb1OPereC4vWE44zSYJuye7hnc7EoHGhIDhj4m25JdB7OeJKdVmFigFjRw8+x9N
	 QU2MSaK6UQo/s5/lRq6uzg5DakEUaChUC/Wq3fgNgmVEMIX7prcVBD8eqCFSdiM+IN
	 1CHDwI0nOW78x7vMGRBHnKQz5xdckyHEzMmEF6YLVuUyswhPvleRAKuLt4eIcMVU/J
	 GgXlYdXVa+vB9/s/Y2QX36/rky0DMoCXxPVl3q5QQkIKhVN6x+rVWhxMUkdhFI2q+m
	 YZ1f4mMp+C5L116U7yJhK+4v1GY7Wj30HibCTM/UHBh9zs7waquWnbJNZOAyj55bfh
	 UpwCtItXIa8qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B6F140E97;
	Mon, 16 Mar 2026 15:28:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 073F7201
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 12:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ECCB860AEF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 12:30:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WHku3xc-GmCS for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 12:30:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=bjorn@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 52FF960AEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52FF960AEE
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 52FF960AEE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 12:30:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9017C42E16;
 Sun, 15 Mar 2026 12:30:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06EF1C19421;
 Sun, 15 Mar 2026 12:30:35 +0000 (UTC)
From: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org
Cc: Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 linux-kselftest@vger.kernel.org, Willem de Bruijn <willemb@google.com>,
 Shuah Khan <shuah@kernel.org>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Andrew Lunn <andrew@lunn.ch>,
 intel-wired-lan@lists.osuosl.org, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
In-Reply-To: <20260314093518.43b820b7@kernel.org>
References: <20260313071322.3489243-1-bjorn@kernel.org>
 <20260314093518.43b820b7@kernel.org>
Date: Sun, 15 Mar 2026 13:30:33 +0100
Message-ID: <87a4w9p95i.fsf@all.your.base.are.belong.to.us>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 16 Mar 2026 15:28:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773577836;
 bh=z4rhJ0MAlLXWIwBE/DLS0hy7130Yo8vaGFjA4dZQEqk=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=X+keosLemfsI7BVZBzyUQqSVb/q5V/tjHHwClIWYUE6+g2YtxoPRqPk2g6jvAgmnp
 eIveEsYMRa9hpiR75Q4J31ZLqbO8zpmehsoTJoWr7tlKZ8/GSpbuC0KYFOhppILwVZ
 dkxs3evpw0DBHNzqc0jA0IVXiiu7QHPr+0X/fZjUZQk6UbjVg+Wd+Ht0RiVd5vLPIl
 tXrhY+e0R8l9y3SW4lA6vfXJhNW8eyqTYjsOjk7cD4aU95Cp0bFJXO9iuaxHTbjzLe
 8KmpEZPk5rcB83PcVNWy7SuAG9qKj6UUtfAJmC0FePTEo3lrUMe9hWEL/7jbbehL+S
 Sc27UiLZ6QPbQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=X+keosLe
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
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[26];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,all.your.base.are.belong.to.us:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:linux-kselftest@vger.kernel.org,m:willemb@google.com,m:shuah@kernel.org,m:maxime.chevallier@bootlin.com,m:andrew@lunn.ch,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[bjorn@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bjorn@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5051229C5A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jakub Kicinski <kuba@kernel.org> writes:

> On Fri, 13 Mar 2026 08:13:12 +0100 Bj=C3=B6rn T=C3=B6pel wrote:
>> Some NICs (e.g. bnxt) change their RSS indirection table size based on
>> the queue count, because the hardware table is a shared resource. The
>> ethtool core locks ctx->indir_size at context creation, so drivers
>> have to reject channel changes when RSS contexts exist.
>>=20
>> This series adds resize helpers and wires them up in bnxt.
>
> Sorry Bjorn, I was typing the explanation below and I realized that=20
> we may be violating user intent. We should already record the user_size
> from rss_set_prep_indir() as part of the context (and presumably some
> netdev state for the main context?) and don't allow shrinking the
> context below that mark..

Don't be sorry! Good catch, and glad you caught it now rather than after
it landed.

I'll respin with user_size tracked in the context (and netdev state for
context 0) as a lower bound, so resize never folds below the size the
user explicitly configured.

WDYT?


Bj=C3=B6rn
