Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oP9+DuLjBGoNQQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 22:49:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3111653AACC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 22:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5B0F80ED0;
	Wed, 13 May 2026 20:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HgCvl_7b9cK3; Wed, 13 May 2026 20:49:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E86980ED3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778705374;
	bh=/EFeUCJZ+e7oYft3CAl+mqM5ysnAj3IowuzFODN/+G8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AwMdm20UseWvOPN5MQSJIdAQXrG0qyVJtD78a+0ngz3WM3K7wUXHNqUGbh/0obPtq
	 BUl8b4RWupfQU9RA3M1UIcaIANcUyfCih2D8zUXXb3o6tjsjPwSbZ2Z5eEpEBeGPSN
	 PVmKL+JpX1lap2wnTfZWc2tLbxq4dw1wlnVvMfDbAy92mKDUXG++kfVX6dfX4KioVS
	 ME58e0WGxwgAtB5WWQ5KKISe4kf6YzFsxBhZP2m/mm3sxQjCRxmT1fNL3qqNDAaCkL
	 ClWaSK6wITIfvZT4/Ak/+7K1FpZ0t71o+Y90yRWB5Gy7eyGmfUDPN08EuGOFP/Mkf1
	 n7+3JusGTPN6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E86980ED3;
	Wed, 13 May 2026 20:49:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AD3D436F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 20:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D8204094A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 20:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zJhoDX0k2KxE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 20:49:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AA33A40853
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA33A40853
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA33A40853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 20:49:31 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-4891c00e7aeso61276265e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 13:49:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778705369; x=1779310169;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=/EFeUCJZ+e7oYft3CAl+mqM5ysnAj3IowuzFODN/+G8=;
 b=bLELTZJt/ipWRVDkRnlu70I0g+O2VwclFs3sIK0k9vCdMWM5GaFNY+Fi0I6nvOh9z0
 gBCMMoNHwaGaJr24XMbCUkzC1wN9ViXmLjKSCDOMZ16jMnK5o78ePxWMoTS6z5wyRVXL
 Wz8dsCEMEddJdLQxDFWwsiP0fVtph9BItcOQmJ2oWBdkfJ4uI/MV+Yyfj+CYFwW/Osq7
 WzE1YLHXlf3CDz24h0hWCkSaa9gWc2ueKSWQNUVs/6QD0w73AbKHD9PKvwajbkUNR6Bs
 6rYbCuF2Tdgan7UOihpMvldJaZ1I2HZXSbVfElWIKh7Ta1M72JN82heXSEoldRBbzC9k
 NQyw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+de7b0FKAezpgFCwafGmhek/iD0UzQjNv3VTV2WSF76MlzgUkLsHSIAHf537p9IxcCZhOqLJ21Cn/oQjPZpMA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxj1M+dgJoYuTEUWEpdLDSchHuIPgPLiakHe9mczVsuq5qnXKcd
 hi2xB9Ma/sbkFRJAl/jfhbLS57b0eEFLnRxkRM7nj1bBAhyGOtp1rzAZ
X-Gm-Gg: Acq92OF8zQfezFeHWvjFFV+MLA3qJVEhds37+4UN4gG6+0SBeMcLB/oYyE1T7ZFML+l
 HmI5W6NikAk/lBe63tbKVhAmSkBApECnLFyIfutRW7Wi8BOQI5aLwX+4+hkvYft1vEB9ciTlIZW
 EUXpeSi0iQYQmtT6mrhyjc/MdGbabLqXAtMChytHbzUAFKD6IoDB/xZ5xVpjKL4wi3i5as7TCR2
 rVlQB8Ci4Jbz9v7aD4DKLfMf0JTUN5AXLBPtelMD/sigL4KFamcoU5aRtdgXU6wi3Tc9AZxYfIT
 Gmp6YGJZAPRTIpNbGNNECOfFpdfm0azD2kL97Ec6P+J3lMxlK+lKWEQsFAOOeSyaSzIJeBbIojK
 S/xEv0XyDfxFd/dzc08H1stb64LWO9JClfZ0uY4Bd2tXrfwrgRgxbTENqGmQZos69bnP6lMUDaN
 7VhLvBdslbbH+YEOc5ueDVQsDQuj6nudq0FWGVaAmr+TejZLLKhiovC3DICG7wCo47fssEQGc=
X-Received: by 2002:a05:600c:3328:b0:48f:da34:ec4e with SMTP id
 5b1f17b1804b1-48fda34edb0mr3327735e9.19.1778705369088; 
 Wed, 13 May 2026 13:49:29 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45d9ed2f738sm1476103f8f.16.2026.05.13.13.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2026 13:49:28 -0700 (PDT)
Date: Wed, 13 May 2026 21:49:27 +0100
From: David Laight <david.laight.linux@gmail.com>
To: John Ousterhout <ouster@cs.stanford.edu>
Cc: stable@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org, jacob.e.keller@intel.com
Message-ID: <20260513214927.17a8dd45@pumpkin>
In-Reply-To: <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778705369; x=1779310169; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/EFeUCJZ+e7oYft3CAl+mqM5ysnAj3IowuzFODN/+G8=;
 b=GOSXzrMBaroeGo1C7Uo1wajVNlHneQmWTqFNEqPsZQpYkwgDfFWxIZ3hOSJIo1FCXs
 PrDPr3HoTObv3M7704X+reepGLd7sfbwW4ZmCx2BbQVoqdlx/j7B6RZSMoW5PL7rvfDb
 W6w3bgmPZ0bAiUWO32xk7z1zSF7p12nOkgodZ7Ex3XQNhTYjST6ZDy/yfutpGtvRpHQO
 pD0tpAFHE1vdD0HPA2LsgBxhgD7CcboAkMGor/aCLe6urNy9/HeHxk7/KuuAZ3N++/Yc
 PhSty6FbZfqG8lAcRx9sz3itib0vC7pHyLCM1K6Deps9pfoiFUXkjK7Se3rwdJLuIIh+
 wsZQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=GOSXzrMB
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
X-Rspamd-Queue-Id: 3111653AACC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, 13 May 2026 09:28:40 -0700
John Ousterhout <ouster@cs.stanford.edu> wrote:

> On Wed, May 13, 2026 at 2:07=E2=80=AFAM David Laight
> <david.laight.linux@gmail.com> wrote:
> >
> > On Tue, 12 May 2026 11:19:53 -0700
> > John Ousterhout <ouster@cs.stanford.edu> wrote:
> > =20
> > > Consider the following sequence of events:
> > > * The bottom half of a buffer page is filled with data from
> > >   packet A. The page has a net reference count (reference count
> > >   - bias) of 1. The page is returned to the NIC, flipped to
> > >   use the top half.
> > > * Before the reference on the page is released, the NIC returns
> > >   the page with no data in it ('size' is zero in ice_clean_rx_irq).
> > >   In this case the bias does not get decremented. The page still
> > >   has a net reference count of 1, so it gets returned to the NIC.
> > >   However, ice_put_rx_mbuf flipped the page so that the bottom
> > >   half is active.
> > > * If the NIC stores another packet in the page before packet A
> > >   has released its reference, the data in packet A will be
> > >   overwritten with data from the new packet.
> > > * Unfortunately zero-length buffers occur frequently: they seem
> > >   to occur whenever a packet uses every available byte in a
> > >   buffer, ending precisely at the end of the buffer. When this
> > >   happens the NIC seems to generate an extra zero-length
> > >   buffer.
> > > The fix is for ice_put_rx_mbuf not to flip pages that have a
> > > size of 0. =20
> >
> > How is this different from packet B (in the top half) being
> > freed before packet A (in the bottom half)? =20
>=20
> I'm not sure exactly what you're referring to here. Are you asking
> about a situation where both halves of the page get filled with packet
> data and then the second half to be filled is the first to be freed? I
> believe that the ICE driver abandons a page if both halves are ever
> occupied simultaneously; the page will be returned to the system once
> both halves have dropped their references. Thus it doesn't matter
> which half is freed first.

That is what I was thinking, seems like the logic is over complicated.

If you need to put 4k pages into some kind of iommu rather than 2k buffers
(to contain 1536 byte ethernet packets) then I'd have thought you'd
initially put both halves into adjacent tx ring entries.
If a rx buffer is discarded (eg a zero length fragment or a CRC error,
or even 'copy break' for short packets) then, as an optimisation,
you could reuse the buffer for another receive.
The same could be done if the page is freed by an application.

However it sounds like it doesn't use the 2nd half until the first
completes - otherwise you'd never 'flip' to make the other half
active.

Thinks...
By only putting half of each 4k 'page' into the rx ring the code
will usually save (expensive) iommu setup in the (probably) normal
case where the buffers are freed 'reasonably quickly'.
But that really requires a 'free/with_nic/busy' state for each half
rather then trying to guess from a reference count.

But if the low-level code is recycling the rx buffer (for any reason)
it wants to use the same buffer.

The ethernet driver I wrote (a long time ago, early 90s) allocated
64k as 128 512byte buffers and did an aligned word-sized copy of
every receive frame - most frames were in contiguous memory.
The simplicity of it made up for the cost of the copy, especially
since that was an iommu system.=20

-- David
