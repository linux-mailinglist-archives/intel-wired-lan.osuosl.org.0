Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QN+kCXOdBWr4YwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 12:01:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DABA5400FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 12:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD09C40EC2;
	Thu, 14 May 2026 10:01:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8g6YZwbSRDjT; Thu, 14 May 2026 10:01:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 411D640EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778752880;
	bh=R8w6xQoQW0qt8Zo29yNIyG0N7oGizsRoHt4bLIQ+cnk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1y6n3lX/IOXef5nnaxvWRdf2GGTEfWrOXUB39o+1jwqKiCkAk9YFyqMoAV14yYOQa
	 GKC3/k+n/hZagF/kKMYb5eWftIoYLHurG2y4U1bvctqIU5Q5OgyEI6YdWC9h6k+dy6
	 ja5JF56u+KP9VCX8oezewcSp44zNEE7RtwekCjS6pPH4rj40GYoFtOEoRkLWx64CPe
	 biTzJtnX0yQ9FmCz4VicRn19stNidvXStuQDEK08GTfuRv8REWNujfh5W64gWSw5yK
	 itPfSOC4QOb49uNtnKd5kMH0xH+IdCXNtMD0t2qayEPZP3lVUoouX0wNSGSqiJB5+s
	 QGXyygVo+ZGiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 411D640EBD;
	Thu, 14 May 2026 10:01:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4277A36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 10:01:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2840160E48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 10:01:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mNeDkP7laAuE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 10:01:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 120F760E3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120F760E3E
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 120F760E3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 10:01:17 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-488b3f8fa2bso81704825e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 03:01:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778752876; x=1779357676;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=R8w6xQoQW0qt8Zo29yNIyG0N7oGizsRoHt4bLIQ+cnk=;
 b=I5stJVtHDGAm7vlHesA1qB+4Mg4Hyk/6kCZKL5N0PhS8lBra7QfDrqslX9KJL3P3QT
 9eNC54gNIx+zTrjEYq5TKd7onVvfPdxdOEf7/qhTgFCTUDvbWJOxVVq9cxQ1Cc/jJabT
 if3f8Lwfy9Pfyq55djxRoc/Y+A/f69Af++6qd0xuwGHsCSWhAST7tpSvNMSN0CIk9dZg
 TwC0AU7PY4SvMgK/eF3E9Wfd6qzI35lF8lFCTLpJMMFBSOMvdwN//iu39mfbGJem1eVl
 FW62aGLkUp/zTbrWazunRlwXSJIqKTzTm8tUDNhiP9nd5CMqb59UBxrZ76gWauB1jVX8
 L2xQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8dV7xvedsqotucJBLm2Ce1aFXb3UEwkXnPRaCOUDSQTwQjRDUXflX0WCw5GxuBrr/fUn0kbGV9Ag6Op1zIT0E=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywg1r43ef2HIzXnWajwOa1WN3xYcyL5kpAvVJzLvHsGdaG1llNi
 OQ7+P+yTVjhIbFypLlSmjLdWzsaUvCjPy8t1tj6wcrc9EXcqSx+4skoW
X-Gm-Gg: Acq92OE75WbE2HpG99wOJAxb8BQgy4sdjhcV9fYSV7i7/GwI1js4i5X/Kd1v+sRLUSS
 58bckQjLjF+Lytrf51PPSC3XJby/x9arCqgP1iX0qqUvNKm6nev+FpdQTmMdQXVn16oiD/pqjyg
 QhfR7/xFvqBtkcV9RvAEVO31xwTK/6Kdysyibqa6wV6bH2NN0b8+macpCEkDlRoxAgQRs2eaWPZ
 spxkVcboVsv3oh6B1c4afIwbHx87qMuDjLGxGdzOgBs0fTk+2z8+Ltnvzgv05czbZ7u2N1R7H3f
 p7MNzq3kGXtPJMi24Dwnmp2TeQe5ou7LM0+D/RQs3yR0GR3RLl0y14Gn4n6RqQw9r9idzA8I+D6
 EzHynGjymuvk+Ps8Vc7KCYKMb+ZmJhOrTVrlz2IRy37L51chmVJCOIN27aeNgVS7259ih2Xsyh2
 fo7pVLnYOeIoXoEWRMFJ+Ut8sohJbTDLy54vwIACpd5NHfDRTsngopJUiTMQG28kD8R0NHyDA=
X-Received: by 2002:a05:600c:c095:b0:489:32b:ac0b with SMTP id
 5b1f17b1804b1-48fe2474bc8mr2818425e9.6.1778752875639; 
 Thu, 14 May 2026 03:01:15 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48fdafb6145sm20322885e9.1.2026.05.14.03.01.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2026 03:01:15 -0700 (PDT)
Date: Thu, 14 May 2026 11:01:12 +0100
From: David Laight <david.laight.linux@gmail.com>
To: John Ousterhout <ouster@cs.stanford.edu>
Cc: stable@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org, jacob.e.keller@intel.com
Message-ID: <20260514110112.12bdf5ff@pumpkin>
In-Reply-To: <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
 <20260513214927.17a8dd45@pumpkin>
 <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778752876; x=1779357676; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R8w6xQoQW0qt8Zo29yNIyG0N7oGizsRoHt4bLIQ+cnk=;
 b=ncweIWNkyRI3XOctyxpq3l9LjdEfry6Q7QnTEA3CbC1YvU3bsbg2uxvYn3Oy+QhYbi
 8AjNpdBExOwYjgZDXaLrzuevJHWe2YgFmg3MHgrMHc2F11rTwGdUJJ/isjIn+Mzwy8QD
 AiJy+q1y6Ec8171fEahP8ArmA6Q9N81ahU4kqklyLfZFz5RlEFjLS7BnSGu3SYcvUn1u
 ij2YvnWBfORl5vyR7bfaZiWjyBiv0ByOgpB2ZseVupcJLQXGirztxcjmrlFuyjnGRZG1
 LtvKF//71xgKEE6RZe3FH5pGheepeAkjQu3+mS/035rU6gH57shRMZA6puMm/M7EoQin
 C3ig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=ncweIWNk
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
X-Rspamd-Queue-Id: 3DABA5400FC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,stanford.edu:email];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, 13 May 2026 21:47:11 -0700
John Ousterhout <ouster@cs.stanford.edu> wrote:

> On Wed, May 13, 2026 at 1:49=E2=80=AFPM David Laight
> <david.laight.linux@gmail.com> wrote:
> >
> > On Wed, 13 May 2026 09:28:40 -0700
> > John Ousterhout <ouster@cs.stanford.edu> wrote:
> > =20
> > > On Wed, May 13, 2026 at 2:07=E2=80=AFAM David Laight
> > > <david.laight.linux@gmail.com> wrote: =20
> > > >
> > > > On Tue, 12 May 2026 11:19:53 -0700
> > > > John Ousterhout <ouster@cs.stanford.edu> wrote:
> > > > =20
> > > > > Consider the following sequence of events:
> > > > > * The bottom half of a buffer page is filled with data from
> > > > >   packet A. The page has a net reference count (reference count
> > > > >   - bias) of 1. The page is returned to the NIC, flipped to
> > > > >   use the top half.
> > > > > * Before the reference on the page is released, the NIC returns
> > > > >   the page with no data in it ('size' is zero in ice_clean_rx_irq=
).
> > > > >   In this case the bias does not get decremented. The page still
> > > > >   has a net reference count of 1, so it gets returned to the NIC.
> > > > >   However, ice_put_rx_mbuf flipped the page so that the bottom
> > > > >   half is active.
> > > > > * If the NIC stores another packet in the page before packet A
> > > > >   has released its reference, the data in packet A will be
> > > > >   overwritten with data from the new packet.
> > > > > * Unfortunately zero-length buffers occur frequently: they seem
> > > > >   to occur whenever a packet uses every available byte in a
> > > > >   buffer, ending precisely at the end of the buffer. When this
> > > > >   happens the NIC seems to generate an extra zero-length
> > > > >   buffer.
> > > > > The fix is for ice_put_rx_mbuf not to flip pages that have a
> > > > > size of 0. =20
> > > >
> > > > How is this different from packet B (in the top half) being
> > > > freed before packet A (in the bottom half)? =20
> > >
> > > I'm not sure exactly what you're referring to here. Are you asking
> > > about a situation where both halves of the page get filled with packet
> > > data and then the second half to be filled is the first to be freed? I
> > > believe that the ICE driver abandons a page if both halves are ever
> > > occupied simultaneously; the page will be returned to the system once
> > > both halves have dropped their references. Thus it doesn't matter
> > > which half is freed first. =20
> >
> > That is what I was thinking, seems like the logic is over complicated.
> >
> > If you need to put 4k pages into some kind of iommu rather than 2k buff=
ers
> > (to contain 1536 byte ethernet packets) then I'd have thought you'd
> > initially put both halves into adjacent tx ring entries.
> > If a rx buffer is discarded (eg a zero length fragment or a CRC error,
> > or even 'copy break' for short packets) then, as an optimisation,
> > you could reuse the buffer for another receive.
> > The same could be done if the page is freed by an application.
> >
> > However it sounds like it doesn't use the 2nd half until the first
> > completes - otherwise you'd never 'flip' to make the other half
> > active.
> >
> > Thinks...
> > By only putting half of each 4k 'page' into the rx ring the code
> > will usually save (expensive) iommu setup in the (probably) normal
> > case where the buffers are freed 'reasonably quickly'.
> > But that really requires a 'free/with_nic/busy' state for each half
> > rather then trying to guess from a reference count.
> >
> > But if the low-level code is recycling the rx buffer (for any reason)
> > it wants to use the same buffer.
> >
> > The ethernet driver I wrote (a long time ago, early 90s) allocated
> > 64k as 128 512byte buffers and did an aligned word-sized copy of
> > every receive frame - most frames were in contiguous memory.
> > The simplicity of it made up for the cost of the copy, especially
> > since that was an iommu system. =20
>=20
> I'm not here to defend the logic (and it has been replaced with
> something that is probably simpler and more efficient); I'm just
> suggesting a bug fix for the stable releases that still have this
> logic.

You've forced me to look at all of the function :-)
I've noticed a few things:
- If ice_add_xdp_frag() fails (because there are too many fragments)
  then the rest of the fragments are left in the tx ring (instead
  of being discarded) - so are likely to be treated as a full packet
  later on.
- Frames with status errors (crc, framing etc) are discarded after
  the skb is built - surely that should happen before the xdp 'program'
  is called.
- If the remote system send a very very long frame (traditionally the PHY's
  'jabber detect' didn't always work) you can end up with all of the rx
  ring being full of a single partial packet.

I think you need to avoid calling ice_add_xdp_frag() when 'size =3D=3D 0'.
Then in ice_put_rx_mbuf() unconditionally call ice_put_rx_buf() for
zero length fragments.
The comment would be 'zero length fragments can always be reused'.

The zero length fragments almost certainly exist because the mac hardware
advances the the new buffer expecting more data - but only gets the=20
4 byte CRC. So the zero length buffer contains the receive status.

-- David

>=20
> -John-

