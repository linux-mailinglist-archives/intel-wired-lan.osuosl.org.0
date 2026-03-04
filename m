Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLvYIverqGmfwQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 23:02:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 080C6208464
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 23:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AC8D4066B;
	Wed,  4 Mar 2026 22:02:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PnNcjgK4Df_O; Wed,  4 Mar 2026 22:02:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFCF94066C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772661748;
	bh=T43OaRbZAMaNuDZ7i82ERdBEsRyibhnbtRpTGu7oYww=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=oiAulvj2e7Hdp06yWVT8vEq57JKbo1lIYS00w/noCRT2wO84xvVGkMlIQ/LG+n+He
	 OWx+TIbn+Bu/1kEN9C3uQVXTWxOukBmZud2Afmb5pydviYjEBshwTpwBtz3+2WXWLj
	 yF55KB/MVRPX4+tR5gJU0Tm9QPSjY/w6kdqTvNwqHaraXdhBQthStrUY/LXEAvTnXn
	 BGHweMfQxvt8q/iz+JksViZtHjJzb15VigtrBRnjOppf42qZJ+fNQFsvnXUJ4/Fjia
	 Vt7UxMSEZT0y7wzMWDTpkEtVY0m/k41J4yTi54oWQEwNM69c8ny/XbHHgXfLTtsSeJ
	 KxGx72YtQkOtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFCF94066C;
	Wed,  4 Mar 2026 22:02:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F9E21EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 22:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 112AA40663
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 22:02:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xk0zviU4c8tE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 22:02:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1229; helo=mail-dl1-x1229.google.com;
 envelope-from=srutherford@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D36F4064F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D36F4064F
Received: from mail-dl1-x1229.google.com (mail-dl1-x1229.google.com
 [IPv6:2607:f8b0:4864:20::1229])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D36F4064F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 22:02:25 +0000 (UTC)
Received: by mail-dl1-x1229.google.com with SMTP id
 a92af1059eb24-1279eced0b9so5309065c88.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Mar 2026 14:02:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772661744; cv=none;
 d=google.com; s=arc-20240605;
 b=cWy0UUTrxzHmVqBjOFJs7s3Ae9rlRFTjeXe5t5tiV+w8RXEQsdB5QcVo7TQjm69w3n
 b4Z/u+oW7g6gd/rjcaDTC99zqfJk49sogpTc7eB/yU2m59S8G3c3xNTSS6lhJ9HC73be
 3PTcnhlMTtkXUU6wCwwo60aMFtDJfqoUpRIqG/2HrFt3NX7SpjSKzmiGqDG+j70Ih9X6
 byZt5u4TH7itpPNTU9quw0EuNysD60zEfrWgP3gkrFo/CwkTMkdgxf1fs5Pjs/q0pQ8h
 P6K3SQeu2q4MRi505VIq+tdaxzH0pM4vnXRvYN85fLolbxlSHu96adUcTt0WdkmeiY7R
 ZtOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=T43OaRbZAMaNuDZ7i82ERdBEsRyibhnbtRpTGu7oYww=;
 fh=JNJD92F8r0KtaWfYPIbFmtMKzIvuJ9L6uC/6C6fFmuY=;
 b=bpOZe/Pt+u16Wim9riXJdA8ncDWdKqxgJF39XLD0ZrGwoPiHwkw8JyC8ac7SfAXAQ5
 LG0ojTtRjRFCLuh8U5B4VER6DaLkj6ekyP+YSEdv8Aap25Z9nQ+2d/kjH7VTRdzyvCqe
 mu5vt2LQ42Kx1O7sWDG/fTBII/tBMnsXtW1ERrT0f2Md3bVx8Wdluw1kJsJJnRk349XM
 Z/QUUAxKsHhHZy0/WLLLibIhVZM8ZALQrBhOev3PmKo7teqOCaR0KsQmAxEh1ddlF6fx
 LKDpVczmYEz4fl9zpQWnXNxczY2PVOAxwG9TlIZmJP761ElmY7Hp4UsMP1V9jruCbpvN
 PiDw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772661744; x=1773266544;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=T43OaRbZAMaNuDZ7i82ERdBEsRyibhnbtRpTGu7oYww=;
 b=D2P6fN0Mt9wxI6LaSpmI7Ze5+8q8kBdvcrWNzRvOa53c9CT6wkmWra3im3A1B8l0mS
 QZTxjBoLBN5Ps9y+EgEc2hVmonGT/HVg4wRTftur1t4KZU50CTwyZ5hIYoRmywNFi6bG
 tjyfYx3rksJa7cQI5QmLPhukNGkhSqPCTSWoZWgmaKnupccLVrih76q83LtLCjUoGTfQ
 ZNkptErCXSrYyO103Yh+N74Mya6s1/sDRkDpBZ8VJbvDxQ+PkFYp9A4Q3NAtYvBZBtRe
 /jXQTpUD4mRgsEM9Sm1rff4lO7+8v0rchIBqvtBQjf7n1O4O/018p0n4Kk1HL0d6oeKP
 qqgA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX4mTk3rskwe6qoDJjWngVtHNGhYkXA3PvqewesWuXICaHryLDLJM8zIxu+p8NDDopwxH36YSt25TFv3R2PbN8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyYcsHRxwYvH9SlZSVDGkvYrxkrusAgPPH20HdoAFCUSwpJC/OH
 W8Loj7HjB6K2LrVUeSAgcTHkqGsaXx+UW6h1CLipZSJSR0AWHZAR422uEwrYVq4p6VFxyAFcIie
 yVnM/XMXU/ToZTDs511+MQSZ8snmDrudc43uDc0jB
X-Gm-Gg: ATEYQzzzza1GTpnnt+MLNjlGapK3eN66waxPoKtVjt7eQHx5wtSX2V6D2f7D1HASTNI
 ZnRGTL1jW4SGd0rnVPoVj7CU4VcURajEQBcLDsDh8Crk4P2UgMpj6WTWbUdV3bTKJ6AokIhoTQ8
 j2t442ncP2ZxKiPCYLK5lMJQiGfMwGhvNrZLI/q2ai3IG5ScC2VlxJfQMM96yR9lbWxlh/p8XlE
 W55zA7QIHlYHWpCx/1NYM3noTI3LXvGDDaeovCoUD6oyxY44kcYmca9N+XqE2SRFkUQQ8mbbLN+
 Z8IYXd/otb3aRYstEKrmHWpK/ZzkZ1cuL8OqFKqgXz71ArSB0NAmK2HjMOt6HtYZ6OE173NdMzQ
 BprTEWA==
X-Received: by 2002:a05:7022:30b:b0:11b:95fe:beed with SMTP id
 a92af1059eb24-128b70eee6fmr1287000c88.38.1772661743502; Wed, 04 Mar 2026
 14:02:23 -0800 (PST)
MIME-Version: 1.0
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
 <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
 <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
 <8b43d234-867a-481f-90e6-e155132100a5@intel.com>
In-Reply-To: <8b43d234-867a-481f-90e6-e155132100a5@intel.com>
Date: Wed, 4 Mar 2026 14:01:46 -0800
X-Gm-Features: AaiRm5209V4jV3rXmD6xWWAGiIX6cN0RFkTqUyFBDhSb2clg8lilS8Uk4XneA5k
Message-ID: <CABayD+crjO3S2cC3=9HqSH+kngE1=yKp_MnKZmAdW-YwJH1idA@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772661744; x=1773266544; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=T43OaRbZAMaNuDZ7i82ERdBEsRyibhnbtRpTGu7oYww=;
 b=wdFtUbftggaaN5Olmcchu0jvigMCHH7NuwYQFeNFTg851AEJ5CKcgeNJYMqFjooAhd
 Rl7memGq5YJJFCplRJ4N1f6QW+MFv0V523gqtVHlgiZSuvLpAn37PpeXIBw6dHQ3/7lq
 QKrUuDFSTQO3aJoPNuC0pSjBYGTYwm52TvW9Hu4GOparUmg6OY5Yj9gLazSV28JJJolz
 1fiSreSd7etEm8ceiyTJ5B+u51gW8ih9V49bA8sga9xX5OekTA7j/3ruGFoILeDKBlqa
 VN7fhAcCIGRqdb5olje3ZDf6Xb2SD6gXpAG0H5ZIzbmhQWrenCAfMUWYVMoHFAD5P4F0
 2CdA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=wdFtUbft
Subject: Re: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
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
From: Steve Rutherford via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Steve Rutherford <srutherford@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 080C6208464
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[srutherford@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

I believe syncing twice isn't inherently wrong - it's more that you
can't synthesize the header via the workaround and then sync, since it
will pull the uninitialized header buffer from the SWIOTLB. Outside of
SWIOTLB, dma syncs are more or less no-ops, while (with SWIOTLB) they
are copies from/to the bounce buffers.

On Wed, Mar 4, 2026 at 7:13=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Steve Rutherford <srutherford@google.com>
> Date: Tue, 3 Mar 2026 11:44:19 -0800
>
> > On Tue, Mar 3, 2026 at 7:34=E2=80=AFAM Alexander Lobakin
> > <aleksander.lobakin@intel.com> wrote:
> >>
> >> From: Steve Rutherford <srutherford@google.com>
> >> Date: Fri, 27 Feb 2026 20:34:57 +0000
> >>
> >>> When SWIOTLB and header split are enabled, IDPF sees empty packets in=
 the
> >>> rx queue.
> >>>
> >>> This is caused by libeth_rx_sync_for_cpu clobbering the synthesized h=
eader
> >>> in the workaround (i.e. overflow) path. After the header is synthesiz=
ed by
> >>> idpf_rx_hsplit_wa, the sync call pulls from the empty SWIOTLB buffer,
> >>> effectively zeroing out the buffer.
> >>>
> >>> This skips the extra sync in the workaround path in most cases. The o=
ne
> >>> exception is that it calls sync to trigger a recycle the header buffe=
r when
> >>> it fails to find a header in the payload.
> >>>
> >>> Fixes: 90912f9f4f2d1 ("idpf: convert header split mode to libeth + na=
pi_build_skb()")
> >>> Signed-off-by: Steve Rutherford <srutherford@google.com>
> >>> ---
> >>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
> >>>  1 file changed, 7 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/ne=
t/ethernet/intel/idpf/idpf_txrx.c
> >>> index 3ddf7b1e85ef..946203a6bd86 100644
> >>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> >>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> >>> @@ -3007,9 +3007,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx=
_queue *rxq, int budget)
> >>>                       u64_stats_update_begin(&rxq->stats_sync);
> >>>                       u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
> >>>                       u64_stats_update_end(&rxq->stats_sync);
> >>> -             }
> >>>
> >>> -             if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
> >>> +                     /* Recycle the hdr buffer if unused.*/
> >>> +                     if (!hdr_len)
> >>> +                             libeth_rx_sync_for_cpu(hdr, 0);
> >>> +             } else if (!libeth_rx_sync_for_cpu(hdr, hdr_len))
> >>> +                     hdr_len =3D 0;
> >>> +
> >>> +             if (hdr_len) {
> >>
> >> This is for a very old tree I believe? We now have
> >> libeth_xdp_process_buff() there for quite some time already.
> >
> > It is, yeah. I thought I posted a cover letter with more of a descripti=
on, but,
> > frankly, I may have messed up the process of posting.
> >
> > From the cover letter -
> > Found an issue with the IDPF driver when SWIOTLB is enabled. The issue
> > results in empty headers for packets that hit the split queue workaroun=
d
> > path. It's caused by a spurious sync in that path. The header is synced
> > from the SWIOTLB even when the header was shoved into the payload.
> >
> > I cooked up a sample patch, but I'm not an expert in this driver, so I =
have
> > no idea if it's the right solution. It did allow my QEMU VM to boot wit=
h a
> > superficially functional passed-through IDPF NIC and SWIOTLB=3Dforce.
> >
> > The patch was written against COS's 6.12, so I assume that it will not
> > apply cleanly elsewhere, but I figured a wrong sample patch was better =
than
> > a long paragraph describing the same thing. My read of more recent kern=
els
> > is that this problem is still present, but could be mistaken.
>
> Ooops, sorry, I haven't read the cover letter =3D\
>
> Did I get it correctly that in case of SWIOTLB, we can't sync the same
> buffer two times? But if the hsplit W/A was applied, then this double
> sync corrupts the data?
>
> I'll prepare a patch for the latest net (with you as Co-developed-by or
> any other tag you prefer) once I find a way how to play this nicely with
> libeth_xdp_process_buff(). It performs an unconditional sync and bails
> out if it returned false.
>
> >
> > Thanks,
> > Steve
>
> Thanks,
> Olek
