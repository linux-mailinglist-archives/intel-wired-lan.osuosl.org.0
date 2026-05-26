Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJATMiEcFmrBhgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 00:18:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5175DD274
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 00:18:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 523A26061D;
	Tue, 26 May 2026 22:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GDL9qAfhsWoh; Tue, 26 May 2026 22:18:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D29C6061F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779833886;
	bh=NJqWELah5fN6kC7HlpvsVp3NB/5DJZ/YkbrusZMNXr8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tmHuIatdg1IAZ4rWKKqblF+y7tuYzj4ZiJBdTpg1FpExe0AzqR8FwmlBCbzOGVUiW
	 qIHw6mZpKPEOmz2sUcLzwbqTMJVYuFXURzvH2YCLlfwfq7VWm25lajCxQ93+CYZRiy
	 RlR3GVNSoH94Z9TNnlaLV+X931/8Pb1xMIOYeMwtYQksXRwTlZTKRToCPi1pC1EFOd
	 1vwnZPrqARjsOBgQzUSkWk3EJjFzfzZfTwAWViBm8OFVuhZ7ownejTwu9rHa68+pA6
	 bPTWQetSX58JpZZoGoab3WHspNd6xx2Tfgij1y1gMbMWsRUkRE7CDGentVteZjKLH/
	 cp7SOOxcqMuVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D29C6061F;
	Tue, 26 May 2026 22:18:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 61B7E297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4729F40AEB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:18:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HPzz-E4Dko0r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 22:18:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 41D4940206
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41D4940206
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41D4940206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:18:02 +0000 (UTC)
Received: from mail-yw1-f177.google.com ([209.85.128.177]:50645)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>) id 1wS062-000616-F8
 for intel-wired-lan@lists.osuosl.org; Tue, 26 May 2026 15:18:02 -0700
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-7c58e6eb2c8so109926717b3.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 15:17:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ9u60Ev3equBT47HcXsc+lLk3nVit34Gppa/OEfazSoJz6A4n1e7P1Y+jZy/MV+cEgzvvAJlly8ou62fVG6jX0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy0+x0h2RQQ6ElYa1PECOBnLacB8o5nxnwWYOMUfN+TQvIwZLM2
 3zwBffZvo5N8+WVRBFdnbAbSDyEk8MO4OEAJpIkDbKaEwrj2awRS60V6hnDX23zUasHC4F9XStk
 1PDD8NTca0gPrlWrQXCIeva/a/pNVv/M=
X-Received: by 2002:a05:690c:b05:b0:799:198d:8c78 with SMTP id
 00721157ae682-7d337dac2b7mr212869987b3.46.1779833877680; Tue, 26 May 2026
 15:17:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
 <20260513214927.17a8dd45@pumpkin>
 <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
 <20260514110112.12bdf5ff@pumpkin>
 <30dc284c-8cc0-4bae-b7b0-99d6d71a66e3@intel.com>
 <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
In-Reply-To: <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
From: John Ousterhout <ouster@cs.stanford.edu>
Date: Tue, 26 May 2026 15:17:20 -0700
X-Gmail-Original-Message-ID: <CAGXJAmwa4OQJV1O+Zn8KYBH9wJEVrqefuJQ6NRjbBTmLqF4vwA@mail.gmail.com>
X-Gm-Features: AVHnY4InlTCmtsr01wWr_JUtpPbh3ksqqJ8UpLXEL8kdVSMNoGuSjEu4uz-pvUU
Message-ID: <CAGXJAmwa4OQJV1O+Zn8KYBH9wJEVrqefuJQ6NRjbBTmLqF4vwA@mail.gmail.com>
To: Petr Oros <poros@redhat.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 David Laight <david.laight.linux@gmail.com>, 
 stable@vger.kernel.org, anthony.l.nguyen@intel.com, 
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com, 
 netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scan-Signature: f381877c06e33db9b8e2eda11595152b
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NJqWELah5fN6kC7HlpvsVp3NB/5DJZ/YkbrusZMNXr8=; t=1779833883; x=1780697883; 
 b=Wzi9VKT4sfdK8ry1raASjOJmyblQ3aYclp2CAvjiIBY9mTWwua1+OIEQO3dh8A9Zakw/m5NNRnU
 ZTR8a5cykkUem85Kc21XSzROw3t/klhezqDKLOC7JyABVUvvk993fhDEhEkHxjWBodXUS9NKsqsad
 qNziU+q1ONl5Oj0+N2G+QDBuxT2TtztL6tt/+Zb1wIxlCC4/tkr9diQte17o1GFwIm23U1apiIYQU
 CXmy+lIX7nmZzR1wEIg6LDXTY63zJ/k4imIA1TMlghhSuzihFGDpF9P163nL27Y3v+rmPWc0AgF8q
 Q0659t0FkcNdZ8ZDeirxPpzKI++hBex61k3A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=Wzi9VKT4
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,mail.gmail.com:mid,stanford.edu:email];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:jacob.e.keller@intel.com,m:david.laight.linux@gmail.com,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.994];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1D5175DD274
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 5:47=E2=80=AFAM Petr Oros <poros@redhat.com> wrote:
>
>
> On 5/14/26 18:43, Jacob Keller wrote:
> > On 5/14/2026 3:01 AM, David Laight wrote:
> >> On Wed, 13 May 2026 21:47:11 -0700
> >> John Ousterhout <ouster@cs.stanford.edu> wrote:
> >>
> >>> On Wed, May 13, 2026 at 1:49=E2=80=AFPM David Laight
> >>> <david.laight.linux@gmail.com> wrote:
> >>>> On Wed, 13 May 2026 09:28:40 -0700
> >>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
> >>>>
> >>>>> On Wed, May 13, 2026 at 2:07=E2=80=AFAM David Laight
> >>>>> <david.laight.linux@gmail.com> wrote:
> >>>>>> On Tue, 12 May 2026 11:19:53 -0700
> >>>>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
> >>>>>>
> >>>>>>> Consider the following sequence of events:
> >>>>>>> * The bottom half of a buffer page is filled with data from
> >>>>>>>    packet A. The page has a net reference count (reference count
> >>>>>>>    - bias) of 1. The page is returned to the NIC, flipped to
> >>>>>>>    use the top half.
> >>>>>>> * Before the reference on the page is released, the NIC returns
> >>>>>>>    the page with no data in it ('size' is zero in ice_clean_rx_ir=
q).
> >>>>>>>    In this case the bias does not get decremented. The page still
> >>>>>>>    has a net reference count of 1, so it gets returned to the NIC=
.
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
> >>>>>>> size of 0.
> >>>>>> How is this different from packet B (in the top half) being
> >>>>>> freed before packet A (in the bottom half)?
> >>>>> I'm not sure exactly what you're referring to here. Are you asking
> >>>>> about a situation where both halves of the page get filled with pac=
ket
> >>>>> data and then the second half to be filled is the first to be freed=
? I
> >>>>> believe that the ICE driver abandons a page if both halves are ever
> >>>>> occupied simultaneously; the page will be returned to the system on=
ce
> >>>>> both halves have dropped their references. Thus it doesn't matter
> >>>>> which half is freed first.
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
> >>>> But if the low-level code is recycling the rx buffer (for any reason=
)
> >>>> it wants to use the same buffer.
> >>>>
> >>>> The ethernet driver I wrote (a long time ago, early 90s) allocated
> >>>> 64k as 128 512byte buffers and did an aligned word-sized copy of
> >>>> every receive frame - most frames were in contiguous memory.
> >>>> The simplicity of it made up for the cost of the copy, especially
> >>>> since that was an iommu system.
> >>> I'm not here to defend the logic (and it has been replaced with
> >>> something that is probably simpler and more efficient); I'm just
> >>> suggesting a bug fix for the stable releases that still have this
> >>> logic.
> > Right. We definitely want a fix for the possible data corruption in
> > stable. Ideally one as simple as possible.
> >
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
> >>
> > That seems correct.
> >
> >> The zero length fragments almost certainly exist because the mac hardw=
are
> >> advances the the new buffer expecting more data - but only gets the
> >> 4 byte CRC. So the zero length buffer contains the receive status.
> >>
> > That matches my understanding.
> Hi John,
>
> I have been looking at the same area in the pre-page-pool ice code and
> I want to ask whether you observed memory growth during your Homa runs
> that exposed the corruption, because in my testing the same bias mismatch
> also produces a slow page leak that your v3 does not close.
>
> Short version of the leak path, in the PASS (!CONSUMED) branch:
>
>    1. ice_get_rx_buf(size=3D0) does pagecnt_bias-- unconditionally
>       (added by commit ef68094cb09e ("ice: Fix kernel panic due to page
>       refcount underflow") as the fix for the matching panic).
>    2. ice_add_xdp_frag() then returns 0 for size=3D=3D0, so that page is
>       never attached to the xdp_buff/SKB. Nobody downstream will ever
>       call put_page() to balance the pagecnt_bias-- from step 1.
>    3. Your v3 in ice_put_rx_mbuf() correctly skips the page flip for
>       size=3D=3D0, which closes the corruption window. But it does not
>       restore pagecnt_bias for that zero size buffer, so the page is
>       handed back to ice_reuse_rx_page() with a permanent deficit of 1.
>    4. On the next reuse of that page with size > 0, pagecnt_bias drops
>       again. ice_can_reuse_rx_page() now sees pgcnt - bias =3D=3D 2 and
>       drains via __page_frag_cache_drain(page, pagecnt_bias). Because
>       pagecnt_bias is one too low, the drain undershoots by 1: page
>       refcount stays at 2 instead of 1.
>    5. The SKB eventually releases its reference (refcount -> 1), but
>       nothing ever brings it to 0. The page is leaked.
>       ice_alloc_rx_bufs() just allocates a fresh page to fill the slot.
>
> At the zero size frequency you mentioned (thousands per second), this
> adds up to roughly MB/s of leaked page cache, which Jaroslav Pulchart
> originally reported against 6.13.y on NUMA nodes and which motivated
> the libeth/page_pool conversion in mainline. So in stable trees the
> leak side of this bug is still live.
>
> Two questions:
>
>    - Did you monitor RSS / page allocator stats over the duration of
>      your Homa runs? If you did and did not see growth, I would like
>      to understand what is different about your setup, because by my
>      reading of the code the leak should fire whenever both halves of
>      a page end up in SKBs simultaneously and one of them carried a
>      zero size descriptor along the way.

I have not monitored the page allocator stats. I'm not sure I know the
best way to do this; I tried slabtop but it didn't seem to show
significant growth in memory usage.

>    - If your focus was specifically the corruption, would you be open
>      to extending v3 (or replacing it) with a fix that also restores
>      pagecnt_bias for the size=3D=3D0 case? The minimal extension is one
>      extra branch in ice_put_rx_mbuf:
>
>          if (verdict !=3D ICE_XDP_CONSUMED && size !=3D 0)
>                  ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
>          else
>                  buf->pagecnt_bias++;
>
>      which restores bias on every path where the page is not actually
>      going out to an SKB. (I have a slightly different variant that
>      tracks has_data in struct ice_rx_buf to also handle the broken
>      positional 'i <=3D xdp_frags' counter in the CONSUMED path, where
>      zero size descriptors in the middle of a frame steal bias++ slots
>      from real fragments. Happy to share it if useful.)

My understanding of the ice driver is extremely limited. You may be
right about the proposed fix, but I don't currently know enough to get
comfortable with it. I think it might be better to separate your
change into a different patch, which can be shepherded by people with
appropriate understanding.

-John-
