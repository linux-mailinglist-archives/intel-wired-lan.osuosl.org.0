Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KMKEbtC+WmX7QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 03:07:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D8F4C59C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 03:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEA6340839;
	Tue,  5 May 2026 01:07:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cwUi16e2U3y7; Tue,  5 May 2026 01:07:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4585440836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777943221;
	bh=vDzRQUtQY5hXU5GT6i6iXkmD1jjqB739UnVuZmiyxPg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aBh/uynAFk3CPQKmtv1YgEG6ENJEN+6qkiVQJ1soPbX7LizyuqDC/DQrEy9K/CGUQ
	 mQ/i8bcqdqb27nXWw6GprVGDlB/D3upui4R0dx/JemQJNlqoYqBdGxp+OAiNOuoeEg
	 lgwjszkgWEwyCtd9j9ThcjvDRLcrlqhm/mIF9qv3ZTwgSE6AKbmAFI1tZy65mDVmX3
	 U8vrl0n1sbPVZdcx1ppkMHpkdSf7HlqvugNPfew3jZlcmanBaZskDymvvFHQHxiZd2
	 F1+raYzS2CRNHwERbBFr62eXvB0xpSgSY9pciJuTwzIXOQJayWUh34ZzGLt1Vntqqj
	 2RRhU0qQBBRUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4585440836;
	Tue,  5 May 2026 01:07:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DB9E30A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 696A7810ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HWI9AdDLEETy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 01:06:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C799E810EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C799E810EC
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C799E810EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:06:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1C10441778;
 Tue,  5 May 2026 01:06:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90B3CC2BCB8;
 Tue,  5 May 2026 01:06:57 +0000 (UTC)
Date: Mon, 4 May 2026 18:06:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jon Kohler <jon@nutanix.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Message-ID: <20260504180656.62539d96@kernel.org>
In-Reply-To: <6F0C5872-0388-47AF-8CD9-1D116EA13224@nutanix.com>
References: <20260504154823.2535612-1-jon@nutanix.com>
 <20260504164901.7b3a737b@kernel.org>
 <6F0C5872-0388-47AF-8CD9-1D116EA13224@nutanix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777943218;
 bh=vDzRQUtQY5hXU5GT6i6iXkmD1jjqB739UnVuZmiyxPg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y7YOCbANmiTzgzwVh5CsBwJqMxSBFIEF19uMbHkfTbTSFh6pXOkCc8QMulXvESGVq
 TELdt9oCfrAUVlT2jCjEeO9k34YYiojxVB8idaCdmgGAlCMarhaRyP8PR1BGmlOegO
 IK8/lbqoW+4fZnlRMznT74MJPNJPcIgZDJbzVPj0M9nIK0N4lMj3khI9xuGhEe6WEj
 NQDZU3+spz8fXrnpiMdKwpLqsB6k+zd/y2a178VBe4LgaGwUX73wB9xQo72vySPPMn
 +h5Gs6X6MWas3GGfI2EgchB2RwtL0QCPgKEWI/gyrk1C3pDt87DnossRf2ijCM1jTb
 P8Wy1OYnIhjMw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Y7YOCbAN
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: ethtool: add
 get_channels support
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
X-Rspamd-Queue-Id: 30D8F4C59C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jon@nutanix.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, 5 May 2026 00:59:40 +0000 Jon Kohler wrote:
> > On May 4, 2026, at 7:49=E2=80=AFPM, Jakub Kicinski <kuba@kernel.org> wr=
ote:
> >> e1000e hardware supports a single RX/TX queue pair, add basic support
> >> for ethtool -l (i.e. get_channels), so that callers indeed see a single
> >> queue. =20
> >=20
> > Why? Isn't EOPNOTSUP from ethtool -l implicitly saying that there's
> > only one queue? =20
>=20
> Perhaps, but I=E2=80=99m not sure that is a guarantee. A good relevant ex=
ample
> is when I added get_channels support to enic, which supports all sorts
> of channels, so I don=E2=80=99t think EOPNOTSUP can be 100% consider reli=
able
> in that case. Meaning, if it just so happens that the original author(s)
> didn't put in get_channels, that doesn=E2=80=99t necessarily mean there i=
s only
> one queue.
>=20
> And in this case, there is an "other" queue as as well too, as far as
> I can tell, so the output is at least semi-interesting.

Sorry I wasn't clear enough - if you have an actual, real life use case
why you need queue count of 1 to be explicitly reported - please explain
it and put it in the commit message.

If you don't - please don't send patches for the sake of it.
