Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC6yCBY9c2kztgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 10:19:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B787320B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 10:19:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5B236081B;
	Fri, 23 Jan 2026 09:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtVdfFxfudXN; Fri, 23 Jan 2026 09:19:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B16F6084E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769159952;
	bh=3ll2l1W0Dq54Ly/gy7Y0JOY6nNe9Fdyokd9PNcCBGNU=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=aKaKS+qe1QeOVhnwrb0rVXumEKyB0TASyFItFrgNFPwIS1428nsuaTRP73E0nelUd
	 JSMb06Uuw5mllSJURDCYevWYhUIn7BnmV9plXo25yMBMQwjsCwI/vt+e0tohtz6iD4
	 ssMTAefnI4x8CDB/kUSu40KuBpKUKV64+44DZ6ynmiFZl0IfPo+lQUUzM9M99/tynj
	 L6cM0w7aXMHIMBGp2lqMjGyfONxN8MnOBClZLAbcPMnQ1p+QGfzAQQnvXHLCdEbskp
	 cY/XxBnEuaEnERo9gllE9N4X+xVBgDcG/6XGzrlaW+iMd9xMUa1wjJoL80R65JZKX9
	 n0+NVSnkKIfMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B16F6084E;
	Fri, 23 Jan 2026 09:19:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A9F5623F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 09:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EE4660835
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 09:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdFIrko20Xcn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 09:19:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::833; helo=mail-qt1-x833.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E4E260836
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E4E260836
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E4E260836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 09:19:07 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id
 d75a77b69052e-5014db8e268so35107341cf.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 01:19:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769159947; cv=none;
 d=google.com; s=arc-20240605;
 b=XOsCOLXGUQi48BBTCS3rJawGHbVekaYKDH3EPz2l11mxbj5vB/KevtQ02HEqsG2rdK
 NcAZl6blqwqDm8veJBRDZjiSd4f9RbviMPrVpZa9+Gx8e0IBBIxl+y9LHrWx5n8jjNdA
 A2lHtq0zr3iwt6c/tSS4MTHpcNJWES2hyx42m3e/1xni6fhzBCyBkymy//Y6SKFLiDgJ
 rSK5xQBnVbCpYov7m07fshDqf+OCrwoI1nyXDQG+KZO/l3taYz3uZUjzZE66Wud773my
 Stttb56X2OTofuwSw0V0Y6JP8f48tEFtYAs86nEOe9SDUFG1S32CJkHOBGLYKloz38hK
 oswQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=3ll2l1W0Dq54Ly/gy7Y0JOY6nNe9Fdyokd9PNcCBGNU=;
 fh=A2hRaSR4sg7L/UimvNhnVVjbiE+N4tutTKJz21PsZOE=;
 b=axMy6fePS1b7Xz40bwtDGUzTpPk2Fkkz01mrpwz0DmT6rMhGQi41NV50ugK0SBs0kR
 e1ujEXfOX3Q4U8fFHjEFaXfpq7YmWpt/N/R/f1H01n10z2pquI0I8wgeMvXLxcyqxbzB
 rwcV+3RYtLarvVgjX+9AwoZ4FypVPP6BrOA6rBq+Sxt+eQPRxrnpoogVJsAFNQltOk28
 oRFRXRCarN9ZcSAmPkgakF7xjTN/Woj83qMmD84HW7jlGYRyGZ5IJCZC+X1yVy71DZ59
 ilS8vx2qaADVuJVOqeDvvnS8mHZAx26gMovlOwWfE1iiZlaHB8HBVswSHwbTuCThb1di
 wvrw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769159947; x=1769764747;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=3ll2l1W0Dq54Ly/gy7Y0JOY6nNe9Fdyokd9PNcCBGNU=;
 b=t8dAW8UFvGwm1E0tYBV9ID6y+/JLbPbtlgc3M1KvTZ6wQRvqcm1tlqUgysi84/8qhW
 c18Xu2HyU7Nc6mi7YUvbsaGYlxJZhQXQHkotP9wUZWOx7C+rvDn8viqoW9/PwTCxFxxh
 sPZS8qni3cEVNsPkDUUwWR05VmgjLZhnqNns0MIYmCS3d0JL3va5ONl7jXXaWohsTY6J
 qIl8NcTGr34TAKBPooad6CNAoUe7B/Q/M21IJM0/NDs/p4Z0KsQBfpJZKEf0X7vdtBEs
 n/IkZtNwzCoWehRo180SuDM/9u477E4Pbq0BxhIv6WX/I0/iMHJFgRhlyCdivxUf8vGt
 lAXA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmBOqhhED2Z4ne67tjrgR08t9MltPgSlVjtkpbzmMxncVFidbwRhQlewK+O2x6mCbVF3xpArovGwi5+IIEPLw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyzSqPuL8YNJXQM/O4lT1VDLfFtL9yXaOh2XVlm7vibalynBxXv
 GgLW75ZnNinCvbWD7BZ3cp4eBDsYPTp6xiw2ySONpxM4THNhIs4xkw6lgvZU8GOU8ZtCXxdYHM3
 pv2TK4b+SxufIhnW1eD3m1BUmNSGOlywuan2+v72K
X-Gm-Gg: AZuq6aIw6NCpVDvYyAcrW8HwldvxFlTktl4KB740YHsi9iijvPLbfkDSABv6ejpSZtl
 LcmxdvulRZ07FtcPfl3A/Uq1x/GncBVLS/tEqM+lLXJRhIvzBkmDcezlGqRLy1H6U2GVfHREDGF
 YQFp1kteMGQxLOM+3Jpguo8RjL7Fk/Ti5tSePSBj6DAYEJpRoPo6h1A58V6aAW5RzOo707gtlrf
 jkkxGJbB2ypaKHQ+JahmFrLBwjFMPjQNCQpQi9APLPOVV5Nx8WX/QliNJephBjcoJBPw7+hX0o0
 1ZDhsQ==
X-Received: by 2002:ac8:5d8d:0:b0:502:f0fd:1837 with SMTP id
 d75a77b69052e-502f77e0bc6mr30471261cf.70.1769159946500; Fri, 23 Jan 2026
 01:19:06 -0800 (PST)
MIME-Version: 1.0
References: <20260123052721.3765743-1-boolli@google.com>
In-Reply-To: <20260123052721.3765743-1-boolli@google.com>
Date: Fri, 23 Jan 2026 10:18:55 +0100
X-Gm-Features: AZwV_Qh3LeuuTXmx8TW6rSxS-Y-qUSUhuZt-TYjjrG1zsLFg_2AJooEHXo_RgzY
Message-ID: <CANn89i+ocUUpwzf-0t6_H9eZo3cikwrKd4ymtDkRL8W7g7uz0A@mail.gmail.com>
To: Li Li <boolli@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Decotigny <decot@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769159947; x=1769764747; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3ll2l1W0Dq54Ly/gy7Y0JOY6nNe9Fdyokd9PNcCBGNU=;
 b=fFOtunySTN+8rnFYZtHo9ii1sCY3EqQxjauniGp/eICWcOexFGFy1xGgDdw13GRZy1
 x/iKaw7+LjKbtFj+yKfMswF4Xzpvx9li5ww8E1oGw/bCJ6QhygUufv+iqm/YsWMUjZUx
 eIEhvFvl4zzDogaFVtfTCu3SlOmTb05WvNS5xVeapqjHmEvHmsU0U92v/q6gyu7fEdWK
 8yyNFDNtPj3qaMFCS/bRME+fBUEO2VBoE+90p4pYsfFHT/g8zIZnXt4gV+euYhdQ06Js
 poDqaRdceQzZteQ6YPP8eBglK4UDhGn/O9XoSF32Ko7FaoNwB0laeu6D8agfl997mQ8L
 uYvA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=fFOtunyS
Subject: Re: [Intel-wired-lan] [PATCH] idpf: nullify pointers after they are
 freed
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
From: Eric Dumazet via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	HAS_REPLYTO(0.00)[edumazet@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.948];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 15B787320B
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 6:27=E2=80=AFAM Li Li <boolli@google.com> wrote:
>
> rss_data->rss_key and vport->q_vector_idxs need to be nullified after
> they are freed. Checks like "if (!rss_data->rss_key)" and
> "if (!vport->q_vector_idxs)" in the code could fail if they are not
> nullified.
>
> Tested: built and booted the kernel.
>
> Fixes: 83f38f210b85 ("idpf: Fix RSS LUT NULL pointer crash on early ethto=
ol operations")
> Fixes: 8a558cbda51b ("idpf: fix potential memory leak on kcalloc() failur=
e")
> Signed-off-by: Li Li <boolli@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/eth=
ernet/intel/idpf/idpf_lib.c
> index 131a8121839bd..7af4214ec44de 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1308,8 +1308,10 @@ static struct idpf_vport *idpf_vport_alloc(struct =
idpf_adapter *adapter,
>
>  free_rss_key:
>         kfree(rss_data->rss_key);
> +       rss_data->rss_key =3D NULL;
>  free_vector_idxs:
>         kfree(vport->q_vector_idxs);
> +       vport->q_vector_idxs =3D NULL;

vport is freed right after this line.

vport->q_vector_idxs content is not relevant.

If anything tries to deref vport->any_field ater at this point, there
is another bug. KASAN might help.

>  free_vport:
>         kfree(vport);
>
> --
> 2.52.0.457.g6b5491de43-goog
>
