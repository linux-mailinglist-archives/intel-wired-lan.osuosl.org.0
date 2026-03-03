Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBisA0A6p2mofwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 20:45:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 074C21F64B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 20:45:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B525606D6;
	Tue,  3 Mar 2026 19:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LPSN6ju1owtk; Tue,  3 Mar 2026 19:45:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A965C606D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772567100;
	bh=4o6LTJ8NutkryaJMGJUUr00PI2f87nHxwk9b3ynu0+k=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=mDOtgycNg6PdcY2+LgpFdkIXPx0BuKkXTsmSFUiodX4XElCamEgwNF/SHyRXPm5RZ
	 4+dtQLkOrpRmPXxKyReLBext7cShIR62y/sn62KZ/TkZe8xEeW2i+aFnLYZ3kG5EUA
	 LRypSvuADl3lbL6lxkO7d8la6SoQn6sGC/23hXC+FIeoqQaD6q+DLpYzXlsi3BKH16
	 w6DZG2I0l7tlSVMS+rH5tY5/naQ0tzexvrRrif0GYMCNSGOcgvAlf6Dl1VOYGqlB3D
	 Dq+IbArGa4UXfXVWlzk+h5tZcr5a/oBsrQ9qt0JS3SrTIOY0yS2j0YGDq3FlF1IMVo
	 xFgf7M6X2UbWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A965C606D9;
	Tue,  3 Mar 2026 19:45:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7066D25B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 19:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61E5A4187E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 19:44:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xTkSiCMS6ya for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 19:44:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1231; helo=mail-dl1-x1231.google.com;
 envelope-from=srutherford@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B300840D20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B300840D20
Received: from mail-dl1-x1231.google.com (mail-dl1-x1231.google.com
 [IPv6:2607:f8b0:4864:20::1231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B300840D20
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 19:44:58 +0000 (UTC)
Received: by mail-dl1-x1231.google.com with SMTP id
 a92af1059eb24-1275750cfc7so893352c88.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Mar 2026 11:44:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772567098; cv=none;
 d=google.com; s=arc-20240605;
 b=WEY6k8VXSo6sH8YOHYxlVv96sLRw+KrM5GoueQHLkeKhiaWDqdbk7IbTZ76j1fuKCA
 R3ZvucVXRPc1o+CK3x4RB0XZXJsfNeAxfgh0FZpoBHXCTK7sdittb0zv9iQlOW4VtJlO
 ye4TJSzfxchGmQFOkXLIPrp4UD8lUNzKjDuY/YBQ1mBDHiijKyjADVuu9vrNuno8JkKx
 LOQuxnwO8Ug91iv+KqJcSx1KcS4VMIU+cgxQ460ASeseFRdtPwMVK+fYkYr3eqFcOsJr
 4MgU4DBWoVN5NdnfG/0QSGlwaU21FKJNJrRTfXXb56TMRv7NzVFAlhx843QS1gs5yrbv
 aXlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=4o6LTJ8NutkryaJMGJUUr00PI2f87nHxwk9b3ynu0+k=;
 fh=cBQgQxc3M8cAjWs38AQxEyvh4DIia1aVUtNyoT4OmWk=;
 b=OhOeqnvOV9qGadly05KCK+LDXSKuJWLH7Mp5diU6aN4ATPqAC/jx+2btLeMYrO3Sit
 c1No0DlQx3+er72Ck0lCrqZsF2fhECbDplQ3M2YhdYlxduXn5Ew+fhPd7+qszuil8NE2
 G6PYFlw9UwTSc2+A1txiohiLRHh3BVZVFT+190G7OzqdlWU9mthrRjV5cjxoSsRW2i2D
 hpe4j9FMCvNtQ6T600Gc+qWVuVP/fRRmqK8rJOxc/LwpEPB4qONj2xPBe+yzteBWo6YC
 xGi3PsFLzjXuYyZIzzBZEEx1ZKO1QegppwUTM1lAx+O9tKN1ElFZ//Z0Xz+s4eVxjYBH
 /Lgw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772567098; x=1773171898;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4o6LTJ8NutkryaJMGJUUr00PI2f87nHxwk9b3ynu0+k=;
 b=Ozf2f9ZNrjAZOaX+g7x6W3dUu19/2MIv/MBpR/UpPtPMzyXlxcXnqOU313ej/+5fNR
 0UJgvAAokk1IaeyGn1V2phYYvFHo1V3dxAK2lkpTOBQjLZWJnY2NJccGfPLDcdA22Z2M
 jIi7dCVKjvpWL5e6ff9ujEbm85c3kzQezzrhFIdv0s6FvDGT7w+0Ci90ZptcWEnpfJPk
 dqy/8rWqqlCZDWxQRs1u0J5MuZs0en5KEm0PvGkMHtP9k1crgDw9AsxlyzwAOS6vl55a
 IkREFdytb9STvgmY2HZ5jaMNih1JdXpN6rx0V1umXSqibnvBzm50t4DrUvSlIE9dLATz
 rp8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX++UcAsK4XK0iTTUl5IQoTQrumTSGYc1DitWMWLZhOQq6PCIRy7hhtn8EYEf9rf1jEwIIUz44uaLYU/lAh56M=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx0c60TTBZ5bYKJgPf4EU5nWHqo4GTY8abfrdSifDNKtlBVC8M+
 R3P+z6Hwe8Wb4FO/4LX05VGbYpYKYeCDBRrLs2eyDBtdplamVDDEilrN6m01pbv48DDg0N2QGiV
 kY6R4Htl/K996PPp2nvywgHyEWbw8r+X3nO5+QCgu
X-Gm-Gg: ATEYQzy85WR+EbWKhJ8B1pByKhdD2JjyA44xzfanMaa0uglyrNWVtCX6dPZTOImX5u3
 DKTDB/kaCPQS6BRS636UphQ562SQluJgCEBofaAHrf5vz/Q9QT+LWNh0fmr2pQUydiNk+bagwiz
 sfSXnOnUS6tujwZhAS+6f1B24GR5TTRyWZdX6I4I8HaIzITamrQf6dB74kMzd/+dq7J/elq87V3
 QP2zr5lczwxFKM77tEELjdnEDO3o37J4+Pz9514ec3sGAXeoVMgt971TvCihJHOtjTubkIURZ9R
 wbKydIGGCXU9O+0n/k9xk3bxpHSHyONU/OA6ojcuu+cgs9cwLs3lStrtxvyyhyghFYFw0Rqlo4O
 IWcXF
X-Received: by 2002:a05:7022:24a0:b0:11b:9386:7ecf with SMTP id
 a92af1059eb24-1278fd39e53mr7929988c88.44.1772567096881; Tue, 03 Mar 2026
 11:44:56 -0800 (PST)
MIME-Version: 1.0
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
 <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
In-Reply-To: <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
Date: Tue, 3 Mar 2026 11:44:19 -0800
X-Gm-Features: AaiRm521Th__xaTNnXE93XdLGaT-9yoWqssZueW9zKUGNuOJyvzZ_SxDnuaYaU4
Message-ID: <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
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
 d=google.com; s=20230601; t=1772567098; x=1773171898; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4o6LTJ8NutkryaJMGJUUr00PI2f87nHxwk9b3ynu0+k=;
 b=LkI7njSSsd270Q1ZXeArI23bUQGO1Xd81HePwDfIDa7cI5FOrCFY1YPFzw0y2XRh2t
 4XsIu6cFLBftI8pK/7Lhgk6U/E9bG/WBc+732H1+NyPJk8cuEOJct4+keUCWEDxbMtX8
 MMHaaJaVuPv4MgrMggGRfxnXda1nKRxjTq637b3u3DZHCLCdxDrCikm5poPjji1NAPQU
 xotgURqpUW2NmjvlfUJUO3Nr07dBlqvQLa0eiTLsMAETKyExloeccC5/9WzIDURsUh/m
 CabwSmvOLRycyJOEdxBrhru6wnMSCdl4N7ROeOtCYmVs6pcdYHMm1kFqct96h5b3QKiS
 GMQQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=LkI7njSS
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
X-Rspamd-Queue-Id: 074C21F64B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,osuosl.org:dkim];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 7:34=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Steve Rutherford <srutherford@google.com>
> Date: Fri, 27 Feb 2026 20:34:57 +0000
>
> > When SWIOTLB and header split are enabled, IDPF sees empty packets in t=
he
> > rx queue.
> >
> > This is caused by libeth_rx_sync_for_cpu clobbering the synthesized hea=
der
> > in the workaround (i.e. overflow) path. After the header is synthesized=
 by
> > idpf_rx_hsplit_wa, the sync call pulls from the empty SWIOTLB buffer,
> > effectively zeroing out the buffer.
> >
> > This skips the extra sync in the workaround path in most cases. The one
> > exception is that it calls sync to trigger a recycle the header buffer =
when
> > it fails to find a header in the payload.
> >
> > Fixes: 90912f9f4f2d1 ("idpf: convert header split mode to libeth + napi=
_build_skb()")
> > Signed-off-by: Steve Rutherford <srutherford@google.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> > index 3ddf7b1e85ef..946203a6bd86 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -3007,9 +3007,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_q=
ueue *rxq, int budget)
> >                       u64_stats_update_begin(&rxq->stats_sync);
> >                       u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
> >                       u64_stats_update_end(&rxq->stats_sync);
> > -             }
> >
> > -             if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
> > +                     /* Recycle the hdr buffer if unused.*/
> > +                     if (!hdr_len)
> > +                             libeth_rx_sync_for_cpu(hdr, 0);
> > +             } else if (!libeth_rx_sync_for_cpu(hdr, hdr_len))
> > +                     hdr_len =3D 0;
> > +
> > +             if (hdr_len) {
>
> This is for a very old tree I believe? We now have
> libeth_xdp_process_buff() there for quite some time already.

It is, yeah. I thought I posted a cover letter with more of a description, =
but,
frankly, I may have messed up the process of posting.

From the cover letter -
Found an issue with the IDPF driver when SWIOTLB is enabled. The issue
results in empty headers for packets that hit the split queue workaround
path. It's caused by a spurious sync in that path. The header is synced
from the SWIOTLB even when the header was shoved into the payload.

I cooked up a sample patch, but I'm not an expert in this driver, so I have
no idea if it's the right solution. It did allow my QEMU VM to boot with a
superficially functional passed-through IDPF NIC and SWIOTLB=3Dforce.

The patch was written against COS's 6.12, so I assume that it will not
apply cleanly elsewhere, but I figured a wrong sample patch was better than
a long paragraph describing the same thing. My read of more recent kernels
is that this problem is still present, but could be mistaken.

Thanks,
Steve
