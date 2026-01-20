Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPN3ACjTb2mgMQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 20:10:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D08454A0DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 20:10:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10AE940A54;
	Tue, 20 Jan 2026 19:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZMGHowzVJRt; Tue, 20 Jan 2026 19:10:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 548B840A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768936227;
	bh=+Csf/X+A6Yj7XM/zwDG6j8QqnjMgcQ6DA65ZzCNcagU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GMpsIgOE01zsoj9oh3Jf9s7Nx2zLQY3t2l0m9+u7YgD/7Vgpufz29DXcw/VVb6wv0
	 8ytm4bpWnPcDdlllcez7NqIDBY3T61oW2P/MAmih/oljj7yIcBsfeCq+PMBeFBmukS
	 aMwukHwo6pr8TjHLwhTyPjlLO3uROXLyZ1KpM2OoONDaCN30hALMv4XGVS+j9tOJWN
	 qS48UsSflIQzY3U+Sfwzvco4kRvf2z5b90AJWYXTKpffPdYxcn//TXz7LuzUDXqW9v
	 RrIA0wC80OULAT8DPvBg/5WU728iymof2oJUNM39L39iXG1119XYYTqb3sYE6mfUAp
	 r1Q5lJcaSt2Jg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 548B840A55;
	Tue, 20 Jan 2026 19:10:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 758DA169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 19:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B9AD6088E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 19:10:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O9LAbxYlacl1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 19:10:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c32; helo=mail-oo1-xc32.google.com;
 envelope-from=mmyangfl@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 89DB16088B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89DB16088B
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89DB16088B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 19:10:24 +0000 (UTC)
Received: by mail-oo1-xc32.google.com with SMTP id
 006d021491bc7-65f6f9d84d6so3428465eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 11:10:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768936223; cv=none;
 d=google.com; s=arc-20240605;
 b=EenJ1Pk+2dcBYDQtSJlyx83IM2WdraYcDu5pH65FVccYjCzX2fEjISPYmlSIKI3wNF
 nDHKemmbbgNXhHzf8tH0K/XAWy7N51Mv86+bsfaIPspa20AU1m16Mmbm/EuJ40bs9SOj
 4IzRbknr5+zlvQa6bMzkMLyGwkg6Wny4sFkhwooi3hyyk0pzze6WX7uWrLBSMOzQC6/r
 WGVNiYF8OSVFowVVAIrDXnV6iXf+RJs+tcUfikSK1YT8hNT5MoHJPIzIeWCufM2qx33Y
 9RLXF9b879o7rrTncVgQ8G+OaOs/D/AjEZ/SWsrP+jm3ROyYHOjdMbXtYwfrRM3dFotb
 CTWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=+Csf/X+A6Yj7XM/zwDG6j8QqnjMgcQ6DA65ZzCNcagU=;
 fh=HSVK/WHRMSRvDGDYjQ7vYHm2xKrzxHAbh0of6yzGank=;
 b=WW5bjGbw5NGu4AZjPZeMZx3uUaZihO2o80X8f9anMHTzoe4sjkx2+bcsQgmqZHZtpS
 ny7vLrP9+vNVBkZb0CkORisnxhJjifkO90RNk8vVPJ+p7iUdoiAdd9FN00zCnfoZHNMJ
 udmDTY9Gog0cFLwgtGPyze1Enq1+zpc7fG/0wCeHZKSTJsULnFrqN4xEV8dOc8o0E144
 WVKzE13QeyK7L99NMWbvHAXj/T6vqMZMG2H7YvsEe+8WMHpvt2hz3o51j8u+LXZDa6Ho
 CvbvFaxnoFKtj378mhCGKGRGmCobi+lU57OsYI5w7CoPGdvN6iYRT2Ea32JQQj9WzZoO
 KYcg==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768936223; x=1769541023;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+Csf/X+A6Yj7XM/zwDG6j8QqnjMgcQ6DA65ZzCNcagU=;
 b=qd4TNs1/mtCH3ynwjzTxBMwg4WmrDYxqk/Y22gTktn4qDdJk36Yhf7gfxaRabQ6Xqr
 uWxyNFtIJkdAySIa30YBpFI7uH2x68e5KyRSioA8WWPFXWQxvbXKYwoCg3YcgOltWYDP
 K5UaqgDYH1v+r0jYnOkxrT5MbscoJlxIY/5KAmNXdEpaj77QHw+Za7rsDWmqclG0Ewkx
 WXRH9WBCB/BwYXQB2L6Oy9zt4x4p9NICi84rBf7Jmv0BhXvE5Z8jfmfek2bQlAsJbkv2
 Fp4uf0PalquM8QYOvq/HO5GJzushD/F/S4laos34B01mdeHNkbkE0OvFMZzMZOHHWmAz
 C6TQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVEf24bVq0CJt+6+SC+Gl2zjvjnRk4whKbXVlhcZHV6We7Wm+Hyc2EIGBW0lGHkAnfOiVf5W9cTXSdMP4x4AYs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw73lp9ydwBggVojyUX8ZY+IgtCcCZWiWRk379/LuOiGcyK0WOA
 jfPClxeulFpZBGsjl4yE17qXQkWy2Fmt/x2FbfBDmXnO6Xcz7uIidGd26v+LAB0UNxgvqfEpQld
 01dsdL84HWIEH+DQrk2u3qgjTTH3UHnc=
X-Gm-Gg: AY/fxX6X7t8wXRHyo51ys8nUL9lRse3s1jKxinfVL98aetJJDn6HK6atViDQOxJ9T6l
 LEiuAlpqJYA2J4ifJKPqsVDvnJm0Fww+ZExNs9mUp2msIPo1C1fOaSk51pN+rwgQV7ieJt5PFcP
 1a+7RtzWiZDCLx2wSfmLafCmq8Pubr7kvt0oqFUPWY9xOwKu55bIj0bUHoaTgJ/h6BINTCAVkHo
 NU/iQMpdFJWL/IPpAHUQIMn4/4MnTYxrEpamt+MRYgdJYQFARATziiBXghGGeNTaMTHeAi1SIB+
 7NNtSacbFx0dTCxFtYZS4MpmAeeH30FO7WxCKHwZjjc2qzWVR2AyqiH3OQJp
X-Received: by 2002:a05:6820:f00a:b0:65f:6a70:2324 with SMTP id
 006d021491bc7-662b00940c8mr1223440eaf.56.1768936223274; Tue, 20 Jan 2026
 11:10:23 -0800 (PST)
MIME-Version: 1.0
References: <20260119162720.1463859-1-mmyangfl@gmail.com>
 <8cfba7ca-03d0-46fe-92fa-5d4a119fc31e@molgen.mpg.de>
In-Reply-To: <8cfba7ca-03d0-46fe-92fa-5d4a119fc31e@molgen.mpg.de>
From: Yangfl <mmyangfl@gmail.com>
Date: Wed, 21 Jan 2026 03:09:47 +0800
X-Gm-Features: AZwV_QjxhMmCVLVMg326Zu3TrNeYwemKLCUFGwJp4YRXr5m1z-pDq9pWaByfCFQ
Message-ID: <CAAXyoMPxG5DbfMoLztWL3W78Xf3TMMVvkKJFD8L3Dup2-hMyyA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Phani Burra <phani.r.burra@intel.com>, Willem de Bruijn <willemb@google.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768936223; x=1769541023; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+Csf/X+A6Yj7XM/zwDG6j8QqnjMgcQ6DA65ZzCNcagU=;
 b=gcIPgSu6QcamcTmbtAKSKlXz53RAq9uUwS5jvjP98HaS0kDArY9+rz6ZscgQRmEHPW
 i41nKVfUy8ngQ3ePKTPvQYZdqFsZ4l2IYhnwxbbz5ZBO84ZabCTV6uE6C1ogvz3EVBVU
 I7u1lyLntFu0P7GddMyHdHgFLG7fZoukJCqYREmdcYmCBzgRULz6akv0l8wrek+TIfyI
 3YqxTD0L9an5ABulQP5amT/uT4ERR8c3m7WRzWBbWX1xeY72+YCKqZG4y9k+ShKkmyfS
 aN1J5QYAG6mq1cDdvWIvOFVsW/gU6HbYoXvIt17c+2eG0Y0hj9eC7o2CqNsPeFLJyvBb
 MhHA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=gcIPgSu6
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: Fix data race in
 idpf_net_dim
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:phani.r.burra@intel.com,m:willemb@google.com,m:sridhar.samudrala@intel.com,m:joshua.a.hay@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[mmyangfl@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mmyangfl@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: D08454A0DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 12:50=E2=80=AFAM Paul Menzel <pmenzel@molgen.mpg.de=
> wrote:
>
> Dear David,
>
>
> Thank you for your patch.
>
> Am 19.01.26 um 17:27 schrieb David Yang:
> > In idpf_net_dim(), some statistics protected by u64_stats_sync, are rea=
d
> > and accumulated in ignorance of possible u64_stats_fetch_retry() events=
.
> > The correct way to copy statistics is already illustrated by
> > idpf_add_queue_stats(). Fix this by reading them into temporary variabl=
es
> > first.
>
> It=E2=80=99d be great if you also documented a test case.
>

Sorry, I didn't get what "documente a test case" means. Triggering the
bug would require precise timing between the writer and reader. If
u64_stats_fetch_retry() returns true you already know the previous
critical section was invalid, which is documented in u64_stats_sync.h.

> > Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> > Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> > Signed-off-by: David Yang <mmyangfl@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 16 +++++++++++-----
> >   1 file changed, 11 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> > index 97a5fe766b6b..66ba645e8b90 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -3956,7 +3956,7 @@ static void idpf_update_dim_sample(struct idpf_q_=
vector *q_vector,
> >   static void idpf_net_dim(struct idpf_q_vector *q_vector)
> >   {
> >       struct dim_sample dim_sample =3D { };
> > -     u64 packets, bytes;
> > +     u64 packets, bytes, pkts, bts;
>
> The new variable names are ambiguous. Would _tmp or so be better?
>
> >       u32 i;
> >
> >       if (!IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
> > @@ -3968,9 +3968,12 @@ static void idpf_net_dim(struct idpf_q_vector *q=
_vector)
> >
> >               do {
> >                       start =3D u64_stats_fetch_begin(&txq->stats_sync)=
;
> > -                     packets +=3D u64_stats_read(&txq->q_stats.packets=
);
> > -                     bytes +=3D u64_stats_read(&txq->q_stats.bytes);
> > +                     pkts =3D u64_stats_read(&txq->q_stats.packets);
> > +                     bts =3D u64_stats_read(&txq->q_stats.bytes);
> >               } while (u64_stats_fetch_retry(&txq->stats_sync, start));
> > +
> > +             packets +=3D pkts;
> > +             bytes +=3D bts;
> >       }
> >
> >       idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->tx_dim,
> > @@ -3987,9 +3990,12 @@ static void idpf_net_dim(struct idpf_q_vector *q=
_vector)
> >
> >               do {
> >                       start =3D u64_stats_fetch_begin(&rxq->stats_sync)=
;
> > -                     packets +=3D u64_stats_read(&rxq->q_stats.packets=
);
> > -                     bytes +=3D u64_stats_read(&rxq->q_stats.bytes);
> > +                     pkts =3D u64_stats_read(&rxq->q_stats.packets);
> > +                     bts =3D u64_stats_read(&rxq->q_stats.bytes);
> >               } while (u64_stats_fetch_retry(&rxq->stats_sync, start));
> > +
> > +             packets +=3D pkts;
> > +             bytes +=3D bts;
> >       }
> >
> >       idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->rx_dim,
>
>
> Kind regards,
>
> Paul
