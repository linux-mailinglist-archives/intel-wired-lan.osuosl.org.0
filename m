Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBtqChe4FWrKYQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:11:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E3B5D8616
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 17:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 473F860FAD;
	Tue, 26 May 2026 15:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rMKUXhUB3cbs; Tue, 26 May 2026 15:11:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AA0560FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779808274;
	bh=gz+rJovCHkSNlsFtO0WXxPTtCZGcHzWc5CByPRL4GyE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PlI9eWvxuVlM28hkG4I+ZE8FfyCCPWhr97tpdhAWaexa+ozjNrPDknx3IFrTC6RDL
	 kAwvdLmlZMrUKeqBagY0VX1V/L4N/NO5fzT3Mnu2q+3TZMiQKrd4/Wj10eu+eg4o71
	 /gpVOJ4Ax4+MwvAsV7FABCVAGqnangLumo3dNae+2bUhlkPc8qZ5Fc3qY6L8lZFTRk
	 eoizNcyyy4iArxV1m2zDPRwtoipnFd20CJUsq55aSNUg4YPAa1otxDgFc/P8QsbSml
	 YNYgB5p3DtpVZ8ZV5nskFR6cIBuG5I9tMLLQieVwsSXjX0n6REpHT7L+7FERTwgTLe
	 GQKUV4xJMniPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AA0560FAF;
	Tue, 26 May 2026 15:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2609A297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 15:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B80140659
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 15:11:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bzs7aQeMESYU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 15:11:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09DD340651
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09DD340651
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09DD340651
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 15:11:11 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-49050bfe053so9521805e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 08:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779808270; x=1780413070;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gz+rJovCHkSNlsFtO0WXxPTtCZGcHzWc5CByPRL4GyE=;
 b=caEpwWkGQvJmaQY84We5POK0pcc30Xyx0oNUE4sFwTcLjXDqZECS2w8JYM5G4znYcN
 i9We1zTtDoyCgwDDBuqOtpGpSnz+10Oxf6Hb7eCwYKfbSnIfZoqZ716ukkfrN+QYS0dH
 a3lPfzYiODN5Ed+2j9Mm7jn10v79nCDhf+Zn0i+cr7YbeuyA0CxYdsXktjDLsZD2KTTF
 TEuJ95GWzpkmDavSq+aftId5Rqq0umqPU/BIlZoW4Y2zwGkhJX9h+1S6fA61oZsCFRYM
 7/V4ZUqZBsyQvFgGoT7Bt79C1ZFjiHXCr83T+KxdCHI4+o6Z0646j9I4CD1+U6G6WIWd
 uZ+A==
X-Forwarded-Encrypted: i=1;
 AFNElJ+yUjp3wEfwZH0A8M4mGscXKDK0uJTdGto0bzbKMr9ZWIS2JnFVV0KDGVDlzPkMTnLlmLMz+HCG2yZQjIjEGrQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwXfG+lvNqDAGI1Z9EfosL+UYozfMr2VDI/YD4Uk1IBydIb6Mp4
 AJfA1i9Ff8atO0+Fcyxnk0QwUXxYwZ6MVwR0k9L4t0dko6rwovto1zQt
X-Gm-Gg: Acq92OFjkGHAGnRyuluVBExCaPktEwf/Bd/oIk5NvfVcqO/Yu/4qYYuRG3JpHmVlElS
 9ctQgMsAhikaqd4uktggSiEcANY1we96eOiHHOjwNGw16/yPa2v19PbTC+vfKpQUb9zakrdelDa
 qRtMt3MXPjvr6GSiUuC9yYh9OsytHOg2iQPNXl2qpvkdWX0B0y082sZgznvJxVKJnufgQCSLGwP
 zzCL9dbM3d14HPT18CyM+Auz3ayyIVduY5EXHimh0ylqNw0c4N6lXu/UfbrrcO2SyaosQn94QWy
 cG79jmjGFmg+VroYXptcQsB76yTz4Hgh9PRE36XmAKDfV/zmXzomGi3KQJs6xPpg+cxdcJ7j1fo
 cqyqC3QQOyA2XSudJiY8YA8CZOS7qMvantq5VWhs81hVmHsjqMSJ9rQqAfWPsLCEFdUJzUO2Y++
 IgDDy3JFnzs2HgQ6sPWQZM5S83Dme3ftDIamhl9gOyzfHM5QC7tmNCfum1Nhq6AaxiH11E82VHL
 XU=
X-Received: by 2002:a05:600c:1553:b0:490:53b0:9e53 with SMTP id
 5b1f17b1804b1-49053b0a086mr252276435e9.1.1779808269542; 
 Tue, 26 May 2026 08:11:09 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490456274ebsm317708235e9.15.2026.05.26.08.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2026 08:11:09 -0700 (PDT)
Date: Tue, 26 May 2026 16:11:08 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Petr Oros <poros@redhat.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, John Ousterhout
 <ouster@cs.stanford.edu>, stable@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, netdev@vger.kernel.org
Message-ID: <20260526161108.645c47a1@pumpkin>
In-Reply-To: <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
 <20260513214927.17a8dd45@pumpkin>
 <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
 <20260514110112.12bdf5ff@pumpkin>
 <30dc284c-8cc0-4bae-b7b0-99d6d71a66e3@intel.com>
 <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1779808270; x=1780413070; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gz+rJovCHkSNlsFtO0WXxPTtCZGcHzWc5CByPRL4GyE=;
 b=Fl3lRmOn10hGOR3un8n5S4/nVx5af+6Ice363gTEzzq6cqn6xdoFFD1C6DM9hYAz7D
 bfkjMwsKeTxcHTorOIBRQEwLU5sWjNls3528DFpF9rWj7SJ2x8LZNKRKnmB5b6RJIqQm
 EzdCjc6ClWePan1ynMJ3eUNB5Oimegs9VFNchtXW9y3eUPMqpocNByz+T0R2+1TaLJns
 k/QYKqjA5l8ox/OM1Ijh82MltMfvCuZOCBoM9YIrIqciCf5PLPE5aUgK21s+FKnV0Gw8
 8kMIyZbHWSV9z//F+O8DwjGAr0zp3UwfCKQ2IPBBOpvBfjcJZqZlyU7E2eIg1UnJEKDk
 tMCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=Fl3lRmOn
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:jacob.e.keller@intel.com,m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[stanford.edu:email];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E8E3B5D8616
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 26 May 2026 14:47:42 +0200
Petr Oros <poros@redhat.com> wrote:

> On 5/14/26 18:43, Jacob Keller wrote:
> > On 5/14/2026 3:01 AM, David Laight wrote: =20
> >> On Wed, 13 May 2026 21:47:11 -0700
> >> John Ousterhout <ouster@cs.stanford.edu> wrote:
> >> =20
> >>> On Wed, May 13, 2026 at 1:49=E2=80=AFPM David Laight
> >>> <david.laight.linux@gmail.com> wrote: =20
> >>>> On Wed, 13 May 2026 09:28:40 -0700
> >>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
> >>>>    =20
> >>>>> On Wed, May 13, 2026 at 2:07=E2=80=AFAM David Laight
> >>>>> <david.laight.linux@gmail.com> wrote: =20
> >>>>>> On Tue, 12 May 2026 11:19:53 -0700
> >>>>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
> >>>>>>    =20
> >>>>>>> Consider the following sequence of events:
> >>>>>>> * The bottom half of a buffer page is filled with data from
> >>>>>>>    packet A. The page has a net reference count (reference count
> >>>>>>>    - bias) of 1. The page is returned to the NIC, flipped to
> >>>>>>>    use the top half.
> >>>>>>> * Before the reference on the page is released, the NIC returns
> >>>>>>>    the page with no data in it ('size' is zero in ice_clean_rx_ir=
q).
> >>>>>>>    In this case the bias does not get decremented. The page still
> >>>>>>>    has a net reference count of 1, so it gets returned to the NIC.
> >>>>>>>    However, ice_put_rx_mbuf flipped the page so that the bottom
> >>>>>>>    half is active.
> >>>>>>> * If the NIC stores another packet in the page before packet A
> >>>>>>>    has released its reference, the data in packet A will be
> >>>>>>>    overwritten with data from the new packet.
> >>>>>>> * Unfortunately zero-length buffers occur frequently: they seem
> >>>>>>>    to occur whenever a packet uses every available byte in a
> >>>>>>>    buffer, ending precisely at the end of the buffer. When this
> >>>>>>>    happens the NIC seems to generate an extra zero-length
> >>>>>>>    buffer.
> >>>>>>> The fix is for ice_put_rx_mbuf not to flip pages that have a
> >>>>>>> size of 0. =20
> >>>>>> How is this different from packet B (in the top half) being
> >>>>>> freed before packet A (in the bottom half)? =20
> >>>>> I'm not sure exactly what you're referring to here. Are you asking
> >>>>> about a situation where both halves of the page get filled with pac=
ket
> >>>>> data and then the second half to be filled is the first to be freed=
? I
> >>>>> believe that the ICE driver abandons a page if both halves are ever
> >>>>> occupied simultaneously; the page will be returned to the system on=
ce
> >>>>> both halves have dropped their references. Thus it doesn't matter
> >>>>> which half is freed first. =20
> >>>> That is what I was thinking, seems like the logic is over complicate=
d.
> >>>>
> >>>> If you need to put 4k pages into some kind of iommu rather than 2k b=
uffers
> >>>> (to contain 1536 byte ethernet packets) then I'd have thought you'd
> >>>> initially put both halves into adjacent tx ring entries.
> >>>> If a rx buffer is discarded (eg a zero length fragment or a CRC erro=
r,
> >>>> or even 'copy break' for short packets) then, as an optimisation,
> >>>> you could reuse the buffer for another receive.
> >>>> The same could be done if the page is freed by an application.
> >>>>
> >>>> However it sounds like it doesn't use the 2nd half until the first
> >>>> completes - otherwise you'd never 'flip' to make the other half
> >>>> active.
> >>>>
> >>>> Thinks...
> >>>> By only putting half of each 4k 'page' into the rx ring the code
> >>>> will usually save (expensive) iommu setup in the (probably) normal
> >>>> case where the buffers are freed 'reasonably quickly'.
> >>>> But that really requires a 'free/with_nic/busy' state for each half
> >>>> rather then trying to guess from a reference count.
> >>>>
> >>>> But if the low-level code is recycling the rx buffer (for any reason)
> >>>> it wants to use the same buffer.
> >>>>
> >>>> The ethernet driver I wrote (a long time ago, early 90s) allocated
> >>>> 64k as 128 512byte buffers and did an aligned word-sized copy of
> >>>> every receive frame - most frames were in contiguous memory.
> >>>> The simplicity of it made up for the cost of the copy, especially
> >>>> since that was an iommu system. =20
> >>> I'm not here to defend the logic (and it has been replaced with
> >>> something that is probably simpler and more efficient); I'm just
> >>> suggesting a bug fix for the stable releases that still have this
> >>> logic. =20
> > Right. We definitely want a fix for the possible data corruption in
> > stable. Ideally one as simple as possible.
> > =20
> >> You've forced me to look at all of the function :-)
> >> I've noticed a few things:
> >> - If ice_add_xdp_frag() fails (because there are too many fragments)
> >>    then the rest of the fragments are left in the tx ring (instead
> >>    of being discarded) - so are likely to be treated as a full packet
> >>    later on.
> >> - Frames with status errors (crc, framing etc) are discarded after
> >>    the skb is built - surely that should happen before the xdp 'progra=
m'
> >>    is called.
> >> - If the remote system send a very very long frame (traditionally the =
PHY's
> >>    'jabber detect' didn't always work) you can end up with all of the =
rx
> >>    ring being full of a single partial packet.
> >>
> >> I think you need to avoid calling ice_add_xdp_frag() when 'size =3D=3D=
 0'.
> >> Then in ice_put_rx_mbuf() unconditionally call ice_put_rx_buf() for
> >> zero length fragments.
> >> The comment would be 'zero length fragments can always be reused'.
> >> =20
> > That seems correct.
> > =20
> >> The zero length fragments almost certainly exist because the mac hardw=
are
> >> advances the the new buffer expecting more data - but only gets the
> >> 4 byte CRC. So the zero length buffer contains the receive status.
> >> =20
> > That matches my understanding. =20
> Hi John,
>=20
> I have been looking at the same area in the pre-page-pool ice code and
> I want to ask whether you observed memory growth during your Homa runs
> that exposed the corruption, because in my testing the same bias mismatch
> also produces a slow page leak that your v3 does not close.
>=20
> Short version of the leak path, in the PASS (!CONSUMED) branch:
>=20
>  =C2=A0 1. ice_get_rx_buf(size=3D0) does pagecnt_bias-- unconditionally
>  =C2=A0 =C2=A0 =C2=A0(added by commit ef68094cb09e ("ice: Fix kernel pani=
c due to page
>  =C2=A0 =C2=A0 =C2=A0refcount underflow") as the fix for the matching pan=
ic).
>  =C2=A0 2. ice_add_xdp_frag() then returns 0 for size=3D=3D0, so that pag=
e is
>  =C2=A0 =C2=A0 =C2=A0never attached to the xdp_buff/SKB. Nobody downstrea=
m will ever
>  =C2=A0 =C2=A0 =C2=A0call put_page() to balance the pagecnt_bias-- from s=
tep 1.
>  =C2=A0 3. Your v3 in ice_put_rx_mbuf() correctly skips the page flip for
>  =C2=A0 =C2=A0 =C2=A0size=3D=3D0, which closes the corruption window. But=
 it does not
>  =C2=A0 =C2=A0 =C2=A0restore pagecnt_bias for that zero size buffer, so t=
he page is
>  =C2=A0 =C2=A0 =C2=A0handed back to ice_reuse_rx_page() with a permanent =
deficit of 1.
>  =C2=A0 4. On the next reuse of that page with size > 0, pagecnt_bias dro=
ps
>  =C2=A0 =C2=A0 =C2=A0again. ice_can_reuse_rx_page() now sees pgcnt - bias=
 =3D=3D 2 and
>  =C2=A0 =C2=A0 =C2=A0drains via __page_frag_cache_drain(page, pagecnt_bia=
s). Because
>  =C2=A0 =C2=A0 =C2=A0pagecnt_bias is one too low, the drain undershoots b=
y 1: page
>  =C2=A0 =C2=A0 =C2=A0refcount stays at 2 instead of 1.
>  =C2=A0 5. The SKB eventually releases its reference (refcount -> 1), but
>  =C2=A0 =C2=A0 =C2=A0nothing ever brings it to 0. The page is leaked.
>  =C2=A0 =C2=A0 =C2=A0ice_alloc_rx_bufs() just allocates a fresh page to f=
ill the slot.
>=20
> At the zero size frequency you mentioned (thousands per second), this
> adds up to roughly MB/s of leaked page cache, which Jaroslav Pulchart
> originally reported against 6.13.y on NUMA nodes and which motivated
> the libeth/page_pool conversion in mainline. So in stable trees the
> leak side of this bug is still live.
>=20
> Two questions:
>=20
>  =C2=A0 - Did you monitor RSS / page allocator stats over the duration of
>  =C2=A0 =C2=A0 your Homa runs? If you did and did not see growth, I would=
 like
>  =C2=A0 =C2=A0 to understand what is different about your setup, because =
by my
>  =C2=A0 =C2=A0 reading of the code the leak should fire whenever both hal=
ves of
>  =C2=A0 =C2=A0 a page end up in SKBs simultaneously and one of them carri=
ed a
>  =C2=A0 =C2=A0 zero size descriptor along the way.
>=20
>  =C2=A0 - If your focus was specifically the corruption, would you be open
>  =C2=A0 =C2=A0 to extending v3 (or replacing it) with a fix that also res=
tores
>  =C2=A0 =C2=A0 pagecnt_bias for the size=3D=3D0 case? The minimal extensi=
on is one
>  =C2=A0 =C2=A0 extra branch in ice_put_rx_mbuf:
>=20
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (verdict !=3D ICE_XDP_CONSUMED && size !=
=3D 0)
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ice_rx_buf_adjus=
t_pg_offset(buf, xdp->frame_sz);
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf->pagecnt_bia=
s++;
>=20
>  =C2=A0 =C2=A0 which restores bias on every path where the page is not ac=
tually
>  =C2=A0 =C2=A0 going out to an SKB. (I have a slightly different variant =
that
>  =C2=A0 =C2=A0 tracks has_data in struct ice_rx_buf to also handle the br=
oken
>  =C2=A0 =C2=A0 positional 'i <=3D xdp_frags' counter in the CONSUMED path=
, where
>  =C2=A0 =C2=A0 zero size descriptors in the middle of a frame steal bias+=
+ slots
>  =C2=A0 =C2=A0 from real fragments. Happy to share it if useful.)

By thought was:

I think you need to avoid calling ice_add_xdp_frag() when 'size =3D=3D 0'.
Then in ice_put_rx_mbuf() unconditionally call ice_put_rx_buf() for
zero length fragments (regardless of verdict).
The comment would be 'zero length fragments can always be reused'.

I think that path always reuses the same half of the page without
going near the 'bias' code paths (which I didn't manage to grok).
It is the same path that is used for frames with bad CRC (ignoring
the broken paths when xdp is enabled).

-- David

>=20
> Regards,
> Petr
>=20
>=20

