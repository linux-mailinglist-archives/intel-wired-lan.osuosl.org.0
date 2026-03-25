Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DiqOSEww2m7owQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 01:45:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C02731E164
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 01:45:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EC45410E9;
	Wed, 25 Mar 2026 00:45:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tj1lmc2QNLtz; Wed, 25 Mar 2026 00:45:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2B5141394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774399517;
	bh=ZEYXUAm6wiQufxGQp649StAV/Q/oI6XllUU306ZTBuc=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=mk2RtkOqrW7TrvbjyifkSdF1nOwITu80RqqrP0vA0+qkytMvyRt+Lry54lyBXyQdH
	 9CZFf7KLKuk6TLlj/hea7XOAGI8u2GsJbHcYR/TQrRlQNOxDIv44JHPwoaFrU9G7uE
	 mm9tHJK1Rv2G8SZPY458QlhBTbE2+QkH1y6fblgWX5be9Zcksm2/nMERylj1cD00Aq
	 tQNiUc45nEfr5T38WP/lg53xx0e/2olJrxSYAJHBfrlM0+jgGrQX0q8D//Nw8EMbe4
	 LyIoCc6AADM7cYYmWcifMxMSm+TGPaEfgka+P11+RDZXW5hpwyKMrboLSIA4ICj1+g
	 gVLBBvRl8Hjlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2B5141394;
	Wed, 25 Mar 2026 00:45:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 78CD7F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 00:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A6D640A8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 00:45:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UDO4y2_5pGuR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 00:45:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122b; helo=mail-dl1-x122b.google.com;
 envelope-from=srutherford@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB9A840514
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB9A840514
Received: from mail-dl1-x122b.google.com (mail-dl1-x122b.google.com
 [IPv6:2607:f8b0:4864:20::122b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB9A840514
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 00:45:15 +0000 (UTC)
Received: by mail-dl1-x122b.google.com with SMTP id
 a92af1059eb24-127380532eeso3731670c88.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774399514; cv=none;
 d=google.com; s=arc-20240605;
 b=BIK38/mbzx9WAe//xEJr0TqV992+vIYFyBtJUPMY448N896f+Z6gnWP8vha48ZtnP+
 2Y59lVdpq3rTEJpErLBd7+FRKLyKeoy89nsZpq+NI+nhtpnl2BtPmmCZYK8CUTZtII5f
 nVV4eFz/zynZXqAFQTtCi8V6H3tnqRPSelKtJ0onqKpAin3rCtTeKWKt/Ejj8KtVBHQm
 ReLZ3BIxXhxzR/2T9y4Yntlsgeo05YIRxE0c5vAnqb3MFrQEjMIWJdhhxwCzNHLHgG3h
 ig4EIjXiOL9nC66GonLyRudr5slBiNg9glmyF01uPOOUNXI41fSBC277Zts9JQSe6RWf
 GORw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=ZEYXUAm6wiQufxGQp649StAV/Q/oI6XllUU306ZTBuc=;
 fh=Ydhwo+bh2J7khysresNtklonG+OPaAa2S7J0/tsndSo=;
 b=Uwy/d6tZzMV9J+42XMbHZGXn3hYul+WTTMJ5DGKofczqeicad+cXdwa903pv4CXZ/7
 o4wq4b0nXrk7W3RRQnaJ11oNYy04II4i0DtqxT89IBh386Byv3Z1FImulSWa7Y+0U36m
 biczVq/XMi9Q6lt54aCYKukWVX5BBMKREpU12Li1IVe/ZN9U1XXVL0x9aHusJMMNt9eM
 1j+c2XaiFRpvE4CUS3BD1VtQqFchjHZPvJebchM4ZA+pp0y/x5hcx+Jt3nPjAtwcSn7g
 nr80KoQ2E1lbjHyONKdGLpsca6kPJUV3j9TyTvBcxIjgCDbHeHRyzdyvihpq3/69BafW
 x1Aw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774399514; x=1775004314;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ZEYXUAm6wiQufxGQp649StAV/Q/oI6XllUU306ZTBuc=;
 b=XC34IMpeIaEZuBU0wxWeSCSr7xugUDwUygWbzQBrwic38qyq97FJ8rgytMWPRAO3nn
 HLFRu1OUFiv4IvXdWO/BLgtf8OFDd34e8x9303YqV4CQbw/2VKgftW9PZ0Wolya9jxKw
 BxTq23mK9tvN4tq2iiw8bwp1dD9v3gVmhuAQGCGetkJePMu1uXY/JWQhgkoannQ6tsWf
 MVyNKZ9WNabB/NVUM2NGJJ1Y5HrH+NwCdNhqmPRyVs3XWEXHPDIuyXbSDvHlebn8f8cp
 IM22FEqd+Kjge3kPWda2vQHtF0XaqeZXy5gMU+Eg+rc14kHJPt3wQ1DVua0+upGDPXDl
 XCnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRLyjMLx7YvjWJKsvm++g8PuutVSs1f6yechZkyLaNN1Be6NYcct+a7hdJnzhORMACJ/XBbaBPyry3FVu37eQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwpXICjgA2363+zSJVVzyyOedzPjo789QSfkypIp+RpBI7lGan/
 LAeNEXdXSGeOtEQtvSai9a1cr6bXn31Er4h5Bus0BFVo+Z98CcJgxf3jN8zxMCIQ0OjrsgGIf+z
 2LArxLmfceAGYXuIbST3QjdgmjQFcOVNQfrbFCaxq
X-Gm-Gg: ATEYQzwhYviZCqiB5o5horXB1txvZBCBzdfNF954KkpnzCKpYWT55sFT5XmLO8Jak76
 +RCj+65qQJaxtBuLTNGJlnmpUphDf19cMCxzSs+b6HaaQlBnFVkqSLXxgow+Dpkb6sW0DWimaR6
 RdZcMDOLCvieOQ1MrBYmJfJ6HnBsqAGGQi5XxJ0wlAvwAUZn9jq/EZwKqaQ58b98jr/2WWR390A
 rrpiIWyOHP6BpUUNC8p6pKMFZ/J+NpYmHGzDzUgu8fHdYiIfAHcjcNh0NrxrHQSSx+KRuE5d05k
 fedX1ULIaebd2RdYt9BHR6lvdRhlIlX3AU5RL614/gbaSiC9bPrsYNvKZVMcLLCciMNCgUrUrsC
 hptIaL9imTz4Om/9Hyx8+7cFXrxn6W918gPNNjHX0Q9tuuuZuR4G3tKwoxmmypE76pmMXS+MQGO
 43p9Dl
X-Received: by 2002:a05:7022:126:b0:12a:713b:8964 with SMTP id
 a92af1059eb24-12a96e5c068mr902553c88.11.1774399513876; Tue, 24 Mar 2026
 17:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
 <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
 <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
 <8b43d234-867a-481f-90e6-e155132100a5@intel.com>
 <CABayD+crjO3S2cC3=9HqSH+kngE1=yKp_MnKZmAdW-YwJH1idA@mail.gmail.com>
 <7c8ed118-d3c3-4bdc-913a-14f5537c44d3@intel.com>
 <CABayD+dJOxYxZYBpUP06sbgEf4rzMTiVfdmqbR4wnY9C677RFg@mail.gmail.com>
 <20260312163025.3765321-1-aleksander.lobakin@intel.com>
 <42850fe3-b153-4b98-a58e-c5c78eb05f08@intel.com>
In-Reply-To: <42850fe3-b153-4b98-a58e-c5c78eb05f08@intel.com>
Date: Tue, 24 Mar 2026 17:44:36 -0700
X-Gm-Features: AaiRm50FPDUi7C-_bpOFdeULdh-AAGgvkRwK7UPtyEDKAzf26n8UENoZAYDQs3E
Message-ID: <CABayD+fbfK6eNnTYgWCd_6BFfJkhnWRn3AHxd73TU-aVk_pYyA@mail.gmail.com>
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
 d=google.com; s=20251104; t=1774399514; x=1775004314; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZEYXUAm6wiQufxGQp649StAV/Q/oI6XllUU306ZTBuc=;
 b=P1PNPEPNbEH1TKJgVVbI3C5hqM5vyYPiYt7f3h6072ARo3LShUIzqhShMOQodBGJ7K
 thi5MAdRh4Nf2L7k4ik+EwcaeZScAgU0k56SV6z1Pzt6hd8Q6ga0FX/I/mxU2OFqZYvp
 0ZcKgFtgXeEkU3Ui0lVxz6LMAwp4r2/rL10X+TSAm169Wi6NMRytSk3gj+abtxMXlOU4
 lM+/0K7s+6Smx9y9+4J2vFeJfrc3+ezM08J8eWIomKQm8eLA/JJG3uVjxZc07qCNtxsr
 gyOSsfy0x7gT+Dg9v5XdAO9ggYur1zc7oluUfkEkcazKUBA4s+Q43ygplvqrkeu94eg4
 R7fw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=P1PNPEPN
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[srutherford@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9C02731E164
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 6:33=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Thu, 12 Mar 2026 17:30:24 +0100
>
> > Hey,
> >
> > From: Steve Rutherford via Intel-wired-lan <intel-wired-lan@osuosl.org>
> > Date: Fri, 6 Mar 2026 11:35:27 -0800
> >
> >> On Fri, Mar 6, 2026 at 6:52=3DE2=3D80=3DAFAM Alexander Lobakin
> >> <aleksander.lobakin@intel.com> wrote:
> >>>
> >>> From: Steve Rutherford <srutherford@google.com>
> >>> Date: Wed, 4 Mar 2026 14:01:46 -0800
> >>>
> >>>> I believe syncing twice isn't inherently wrong - it's more that you
> >>>> can't synthesize the header via the workaround and then sync, since =
it
> >>>> will pull the uninitialized header buffer from the SWIOTLB. Outside =
of
> >>>> SWIOTLB, dma syncs are more or less no-ops, while (with SWIOTLB) the=
y
> >>>> are copies from/to the bounce buffers.
> >>>
> >>> Ah I see.
> >>>
> >>> What if I add sync_for_device after copying the header? This should
> >>> synchronize the bounce buffer with the copied data I guess? A bit of
> >>> overhead, but this W/A triggers mostly on stuff like ARP/ICMP, "hotpa=
th"
> >>> L4 protos are fortunately not affected.
> >>
> >> That should work fine as well. I'm not certain I have strong
> >> preferences on the right answer here, other than "does it work and,
> >> ideally, is it less confusing?" The patch I posted is a bit
> >> unintuitive. I think what you are describing might make the workaround
> >> self-contained.
> >
> > Could you please test this patch with SWIOTLB? If it doesn't fix
> > the issue, you can try changing `page_pool_get_dma_dir(hdr_pp)`
> > to `DMA_TO_DEVICE` and/or `DMA_BIDIRECTIONAL`.
> > Currently, I don't have any machines with SWIOTLB unfortunately =3D\
> > Let me know if any of these works. I'll submit it properly when we
> > have a solution.
>
> Any updates? I need your Tested-by in order to send this.

Sorry for the delay, tried to reproduce this against a 6.18 kernel and
ran into environment-specific issues with 6.18. I'll take another stab
sometime this week.

thanks,
Steve
>
> >
> > (the patch applies cleanly to the latest net-next and should apply
> >  to a couple older kernel releases as well)
> >
> >>
> >> thanks,
> >> Steve
> >>  [And sorry for my gmail-driven top posting crimes D: ]
> >
> > Thanks,
> > Olek
> > ---
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> > index 45ee5b80479a..42111d56d66f 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -3475,7 +3475,8 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_=
fqe *hdr,
> >                            struct libeth_fqe *buf, u32 data_len)
> >  {
> >       u32 copy =3D data_len <=3D L1_CACHE_BYTES ? data_len : ETH_HLEN;
> > -     struct page *hdr_page, *buf_page;
> > +     const struct page_pool *hdr_pp;
> > +     dma_addr_t hdr_addr;
> >       const void *src;
> >       void *dst;
> >
> > @@ -3483,16 +3484,20 @@ static u32 idpf_rx_hsplit_wa(const struct libet=
h_fqe *hdr,
> >           !libeth_rx_sync_for_cpu(buf, copy))
> >               return 0;
> >
> > -     hdr_page =3D __netmem_to_page(hdr->netmem);
> > -     buf_page =3D __netmem_to_page(buf->netmem);
> > -     dst =3D page_address(hdr_page) + hdr->offset +
> > -             pp_page_to_nmdesc(hdr_page)->pp->p.offset;
> > -     src =3D page_address(buf_page) + buf->offset +
> > -             pp_page_to_nmdesc(buf_page)->pp->p.offset;
> > +     hdr_pp =3D __netmem_get_pp(hdr->netmem);
> > +     dst =3D __netmem_address(hdr->netmem) + hdr->offset + hdr_pp->p.o=
ffset;
> > +     src =3D __netmem_address(buf->netmem) + buf->offset +
> > +           __netmem_get_pp(buf->netmem)->p.offset;
> >
> >       memcpy(dst, src, LARGEST_ALIGN(copy));
> >       buf->offset +=3D copy;
> >
> > +     /* Make sure SWIOTLB is synced */
> > +     hdr_addr =3D page_pool_get_dma_addr_netmem(hdr->netmem);
> > +     dma_sync_single_range_for_device(hdr_pp->p.dev, hdr_addr,
> > +                                      hdr->offset + hdr_pp->p.offset,
> > +                                      copy, page_pool_get_dma_dir(hdr_=
pp));
> > +
> >       return copy;
> >  }
>
> Thanks,
> Olek
