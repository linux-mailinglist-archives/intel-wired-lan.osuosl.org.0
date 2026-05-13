Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHdgAOamBGogMQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 18:29:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C5C5370DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 18:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87B7640D60;
	Wed, 13 May 2026 16:29:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LNOuTWkZuvAj; Wed, 13 May 2026 16:29:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCB7640D6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778689761;
	bh=5FtOVnaoO8IXFmp5lDf5sDTst4cyyBiOa0tvjhoezPU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EfaHMAX1WkhVQqyhprjvbnr3zC/AGhk9CyxgiuSZFUJzNCBgfRcCbDErSHFXFD0Yl
	 iWiJUvMpt/fYWpcqfhO2Pxt8u0vMbeBuowbCu6KC6FsnYcFcFvv0N+0FOVgzNOv0Dc
	 b7U2KaMjbKwnWvLbfa1OoPr2Cbosfmty/7fHNPOMUYYm7mMzV2qrdFuJn8w/VFt81C
	 bPYka3N8VoUdV5UWkC3Debk4wAvePXKl34U+53OaXABjQr7P590mVmnEic1E3WJFv2
	 vLO/UiDKXio2LUIktd5Pobn/ZkReaVVnjXIBcqwdi5acEexTaXuVRtdX7MxViOGY5r
	 /s7w/gKyCkpGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCB7640D6E;
	Wed, 13 May 2026 16:29:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EA3015F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 16:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C4EC40C4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 16:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IVTPh9CvWL2E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 16:29:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7998F40C42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7998F40C42
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7998F40C42
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 16:29:19 +0000 (UTC)
Received: from mail-yx1-f50.google.com ([74.125.224.50]:52272)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>) id 1wNCST-0006sS-Hp
 for intel-wired-lan@lists.osuosl.org; Wed, 13 May 2026 09:29:18 -0700
Received: by mail-yx1-f50.google.com with SMTP id
 956f58d0204a3-654672a6d68so7718075d50.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 09:29:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ8bPB/Fk3TlpjnTDR8zryO3H+kq8uNObVHqkWULZRqFeMVEdua1dKM4vrXcJj2pikYGlbLqlZiYokDpKQ7Ve90=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyAMycBcCXWHKLcgyCKtvEmyw3YLDV1hZzBniqKkh+/Wtpdm02b
 /LYpAv0G7juP7VuTEMhsMv4DzNlWcP4vWjQV4KwFxkDn/1RsABweq5hAai++WNxCQYn4Cnbv4nA
 kFzD6s7yjfFmn1Qxo1Fl3TCtRQkoJ9h8=
X-Received: by 2002:a05:690c:60c6:b0:7bd:5d03:dc1a with SMTP id
 00721157ae682-7c6a954fad6mr44092477b3.1.1778689756808; Wed, 13 May 2026
 09:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
In-Reply-To: <20260513100732.499e3f49@pumpkin>
From: John Ousterhout <ouster@cs.stanford.edu>
Date: Wed, 13 May 2026 09:28:40 -0700
X-Gmail-Original-Message-ID: <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
X-Gm-Features: AVHnY4Lm2yYOsEJarawjPo42XO3-WqkedBSuMJJbyx4NEOx-DSHJjl5-RqEAsvo
Message-ID: <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
To: David Laight <david.laight.linux@gmail.com>
Cc: stable@vger.kernel.org, anthony.l.nguyen@intel.com, 
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com, 
 netdev@vger.kernel.org, jacob.e.keller@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scan-Signature: 5d5bd4b8133540f30bea22ef470d169d
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5FtOVnaoO8IXFmp5lDf5sDTst4cyyBiOa0tvjhoezPU=; t=1778689759; x=1779553759; 
 b=ewR8W9/jry2y1LekXQCRKZu3asS5muNTorVz2OL0aJi60CuQSAGrwVsEbo0bH7OUAiSgMEwTYD9
 2u2y2yQraQOtc8ZTa/AC4LUspgZDe04LNSsTpGIwtPHy60CLf8x30gUxA6/qnPCZkavbxAYACgA0N
 C9ArrHzqkOe9d1TR7FmEoAYDARZuDUwKCVGYxppzec/fTFCKCd/Z7EagT4Ay8rA5zHSOgKNARmEX0
 xY3W8R/MFTkYKRq9d2ws/xiQI0g5iRGLeaMD+qIZqqZKW53GJsy+3s76HOqvPNpLeiVa5rSBDGvTm
 nxr/U/slr47LG5GMpU3Q5E5QONCY3Zr5QnKQ==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=ewR8W9/j
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: A4C5C5370DD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,stanford.edu:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 2:07=E2=80=AFAM David Laight
<david.laight.linux@gmail.com> wrote:
>
> On Tue, 12 May 2026 11:19:53 -0700
> John Ousterhout <ouster@cs.stanford.edu> wrote:
>
> > Consider the following sequence of events:
> > * The bottom half of a buffer page is filled with data from
> >   packet A. The page has a net reference count (reference count
> >   - bias) of 1. The page is returned to the NIC, flipped to
> >   use the top half.
> > * Before the reference on the page is released, the NIC returns
> >   the page with no data in it ('size' is zero in ice_clean_rx_irq).
> >   In this case the bias does not get decremented. The page still
> >   has a net reference count of 1, so it gets returned to the NIC.
> >   However, ice_put_rx_mbuf flipped the page so that the bottom
> >   half is active.
> > * If the NIC stores another packet in the page before packet A
> >   has released its reference, the data in packet A will be
> >   overwritten with data from the new packet.
> > * Unfortunately zero-length buffers occur frequently: they seem
> >   to occur whenever a packet uses every available byte in a
> >   buffer, ending precisely at the end of the buffer. When this
> >   happens the NIC seems to generate an extra zero-length
> >   buffer.
> > The fix is for ice_put_rx_mbuf not to flip pages that have a
> > size of 0.
>
> How is this different from packet B (in the top half) being
> freed before packet A (in the bottom half)?

I'm not sure exactly what you're referring to here. Are you asking
about a situation where both halves of the page get filled with packet
data and then the second half to be filled is the first to be freed? I
believe that the ICE driver abandons a page if both halves are ever
occupied simultaneously; the page will be returned to the system once
both halves have dropped their references. Thus it doesn't matter
which half is freed first.

> > This patch applies directly to longterm stable versions 6.18.27
> > and 6.12.86; it also seems relevant for 6.6.137 but would need
> > modifcations for that version. I have not examined earlier
> > versions.
> >
> > Unfortunately there is no upstream commit id for this patch because
> > the ICE driver has undergone a major revision (libeth refactor and
> > pagepool conversion) that eliminated the buggy code. Thus the
> > problem no longer exists in the main line.
> >
> > Cc: stable@vger.kernel.org # 6.12+
> > Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx.c | 23 ++++++++++++++++++++---
> >  1 file changed, 20 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/et=
hernet/intel/ice/ice_txrx.c
> > index 51c459a3e722..081c7a7392b7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -1215,6 +1215,13 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *=
rx_ring, struct xdp_buff *xdp,
> >               xdp_frags =3D xdp_get_shared_info_from_buff(xdp)->nr_frag=
s;
> >
> >       while (idx !=3D ntc) {
> > +             union ice_32b_rx_flex_desc *rx_desc;
> > +             unsigned int size;
> > +
> > +             rx_desc =3D ICE_RX_DESC(rx_ring, idx);
> > +             size =3D le16_to_cpu(rx_desc->wb.pkt_len) &
> > +                    ICE_RX_FLX_DESC_PKT_LEN_M;
> > +
>
> Looks like you only need to calculate 'size' for the !ICE_XDP_CONSUMED pa=
th.
> You could also use the (likely cheaper) test for zero:
>                 if (!(rx_desc->wb.pkt_len & cpu_to_le16(ICE_RX_FLX_DESC_P=
KT_LEN_M))
>
> -- David
>
> >               buf =3D &rx_ring->rx_buf[idx];
> >               if (++idx =3D=3D cnt)
> >                       idx =3D 0;
> > @@ -1224,10 +1231,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring =
*rx_ring, struct xdp_buff *xdp,
> >                * To do this, only adjust pagecnt_bias for fragments up =
to
> >                * the total remaining after the XDP program has run.
> >                */
> > -             if (verdict !=3D ICE_XDP_CONSUMED)
> > -                     ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > -             else if (i++ <=3D xdp_frags)
> > +             if (verdict !=3D ICE_XDP_CONSUMED) {
> > +                     /* Don't "flip" the page if size is 0: in this ca=
se
> > +                      * the data in the current half will not be used =
so
> > +                      * it's OK to reuse that half. And, since the bia=
s
> > +                      * didn't get decremented for this half, the page=
 can
> > +                      * be returned to the NIC even if the other half =
is
> > +                      * still in use, so flipping the page could cause
> > +                      * live packet data to be overwritten.
> > +                      */
> > +                     if (size !=3D 0)
> > +                             ice_rx_buf_adjust_pg_offset(buf, xdp->fra=
me_sz);
> > +             } else if (i++ <=3D xdp_frags) {
> >                       buf->pagecnt_bias++;
> > +             }
> >
> >               ice_put_rx_buf(rx_ring, buf);
> >       }
>
