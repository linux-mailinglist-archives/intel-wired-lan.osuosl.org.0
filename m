Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HOaJNqSuGl0gAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:31:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC492A1FE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:31:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DCE041277;
	Mon, 16 Mar 2026 23:31:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nGVIYGBI_IyS; Mon, 16 Mar 2026 23:31:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19DDA4114B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773703896;
	bh=3sg0rNsK9i6651ldWiAXg/gl9hLCFOcU8hjf0CpNrpc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n3xQ/msO2TuuekMVrHLrn+vaiyl3SRS9/jj5JuvN+Vs6s00ewMRGsKKIgep3BtIDK
	 H3M8lNsN3McZNuEFkkjIpBWnO9FqsTGS1qFzxtBTM0FrBPJgV60XJaFfHbAD3T6i4g
	 LIfZxISMROP5k31C21rXSUfLX97rq56ujMwlLSbAhpElE8Vltfwmt4mPg09o6Gw39Y
	 xfWx46WyX5Tt0aBG3Mv+vdSPth7ObKp7dfI11i3Op0DnMMzxo6E9QwfAmh0DTd6pw6
	 UtggDcP+5i1b/QtnO8oSbDMXkCKe/a9Wnum5QOxtiOdaZ1bqJeCfh7J60SpQp4iDbj
	 0E/XBa2a9gbPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19DDA4114B;
	Mon, 16 Mar 2026 23:31:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 24FB43C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1673B4093C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:31:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mc_x0SSO64Mk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 23:31:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7364240074
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7364240074
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7364240074
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:31:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4589360018;
 Mon, 16 Mar 2026 23:31:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A749C19421;
 Mon, 16 Mar 2026 23:31:32 +0000 (UTC)
Date: Mon, 16 Mar 2026 16:31:31 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: netdev@vger.kernel.org, Michael Chan <michael.chan@broadcom.com>, Pavan
 Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, linux-kselftest@vger.kernel.org, Willem de Bruijn
 <willemb@google.com>, Shuah Khan <shuah@kernel.org>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Andrew Lunn <andrew@lunn.ch>,
 intel-wired-lan@lists.osuosl.org, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Message-ID: <20260316163131.2ff161c5@kernel.org>
In-Reply-To: <87a4w9p95i.fsf@all.your.base.are.belong.to.us>
References: <20260313071322.3489243-1-bjorn@kernel.org>
 <20260314093518.43b820b7@kernel.org>
 <87a4w9p95i.fsf@all.your.base.are.belong.to.us>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773703893;
 bh=mokbVaSNGRbUCQQ4SGbI4E3yKDImZ3QdINhNbLzi8Po=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hN1fRzFkuoAPo5qf7cCUj/3UZ74Zrg2FGMIpeV+WXs3DgSmup1ufDh90hMZjFc0TC
 DFJ5TZCjZPQKQKjORnD6nXc/kg4X+SL6SJtuFZKzc/SmJH8x3Lpni7zXRGSJmC7zCx
 g7VH7wJOZJqANs6wbO3dzR0eI7+48NtQaOEffLB3o9yHJpLmt0FdQpGcv1EWJJtNb/
 ADvmnC44FS9xSHGIWnlJtVwSRO6c9ouBQkKC+O0VI4rosda2SYh3oAyxbDRgyDV0SU
 SPJVnJB69/VFFVSBjUhPhbnu67KO1WBCN7X1nUwGRmGsi0HPAY8in067EPcMCo8ChC
 2fFBt9f9P7NSg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hN1fRzFk
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:bjorn@kernel.org,m:netdev@vger.kernel.org,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:linux-kselftest@vger.kernel.org,m:willemb@google.com,m:shuah@kernel.org,m:maxime.chevallier@bootlin.com,m:andrew@lunn.ch,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0BC492A1FE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 15 Mar 2026 13:30:33 +0100 Bj=C3=B6rn T=C3=B6pel wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
>=20
> > On Fri, 13 Mar 2026 08:13:12 +0100 Bj=C3=B6rn T=C3=B6pel wrote: =20
> >> Some NICs (e.g. bnxt) change their RSS indirection table size based on
> >> the queue count, because the hardware table is a shared resource. The
> >> ethtool core locks ctx->indir_size at context creation, so drivers
> >> have to reject channel changes when RSS contexts exist.
> >>=20
> >> This series adds resize helpers and wires them up in bnxt. =20
> >
> > Sorry Bjorn, I was typing the explanation below and I realized that=20
> > we may be violating user intent. We should already record the user_size
> > from rss_set_prep_indir() as part of the context (and presumably some
> > netdev state for the main context?) and don't allow shrinking the
> > context below that mark.. =20
>=20
> Don't be sorry! Good catch, and glad you caught it now rather than after
> it landed.
>=20
> I'll respin with user_size tracked in the context (and netdev state for
> context 0) as a lower bound, so resize never folds below the size the
> user explicitly configured.
>=20
> WDYT?

Yes, keep in mind that AFAIR context 0 is not currently tracked
in the xarray. So maybe add the size of the main / default context=20
as a field in struct ethtool_netdev_state ?  Or we can start tracking
it (partially). IDK what's cleaner.
