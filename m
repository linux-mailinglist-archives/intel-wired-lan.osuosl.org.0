Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A655B1F4B2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Aug 2025 15:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C94380BC0;
	Sat,  9 Aug 2025 13:09:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VxircjTThZ3l; Sat,  9 Aug 2025 13:09:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6092780B78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754744977;
	bh=6OrjFGAwkfNSFAA+5ug9IBizh7kH96douvTjqdvEjYE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WDB2bqZJ6+MxJmnMHuorrI4soVuzNaThklNrD1cyfJg6Rjt41gBVhFEvc+tOSQ5DX
	 kZkS2UgsC+0uva0+CDhqpSU+W3BQBZvFVlDE/F4qRfx3BGAavwQJBXyzsP29l9WxdJ
	 5uKrYuve88Lm06trPvD01PjJd0d66aq0/DPrYPpqZ2wYBQxC9Sq8ZIkyGZVWHMTSAK
	 3dfxhRyaFHzILczTYb8aHjH9fCMWTPlPo782zUZ7DmxiW8u/V3/ntkuqWLhCPfZqOh
	 ONvOFSRetM8VfouSAPIpDMs+G0qAPtSwf3OuIWB1qCL3+t+3Sci6dm5Qa3PsnoLKwy
	 kMHFPwIAH4bZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6092780B78;
	Sat,  9 Aug 2025 13:09:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 419E81D3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 13:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27B7540832
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 13:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwTuNU2bq2vC for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Aug 2025 13:09:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::134; helo=mail-il1-x134.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7129740461
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7129740461
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7129740461
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 13:09:35 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id
 e9e14a558f8ab-3e52146df5cso30665985ab.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 Aug 2025 06:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754744974; x=1755349774;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6OrjFGAwkfNSFAA+5ug9IBizh7kH96douvTjqdvEjYE=;
 b=qWfp3uslgZgLNTkMBmpotHTFJcVnaRqEwczjlOpE1eGg2NuZ0WWlB5oPzMZbZvA5hv
 9DnwnmOLK5dKmlflCVZSjACW57Ap9k/D7Ky0njyRdW8xK1/hCQJTanJvmW9LMI1O8c34
 nNVb4nzpPDmbxCwvX/tL+oFDlO0sYOP0Kobj27/EaLE0zqHPq9i766++B0w4BUOGqe25
 ukfP8lBO0JY7Xr1x7lPwAgrj6kZ6xDJMtmYamfe+v88Wur6HZDYVyMMX8WSk2CBdgQfL
 kNCHR4S3WPEUgueCQHZH8FjFmWG3OqN8TFrRMjPYzTSfItLMPBpSwPYpyruljoSEfsM2
 MEiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX9DT42JuL0ZPGv3WneoGNLa27D4oz1fsJUmqCOg57c4ZaHHl3ODfHXIzGDJDcLIR+C+53CpjLmB+gDrnMwA0g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyJgkMlZJOEzW/3ANqKkvwBtqn8LjDmHB0fzcpHbEqvhlZQ3RzI
 4TxgZL/EaUktI1VtAn9YLg+FqwrnLfRVuvJ8TabZKTl07e2Sw92PNJI/HcXiBhCiEcunk3fXlLF
 D3kUjIi/8AD3wIiDRUcSm9kKocV0qLVI=
X-Gm-Gg: ASbGncs6UVHOFsm064pdnsIbh+SDXARk8rCyYiwmXl6hvJdWz8VWS4N8BGZNfHLZqoc
 BVq/5f3kcGAmlz2rpP69Iusiph7oElsrTVcSycAHgukfZAKjfAvjdh6izQhLILZRvr+Ojnk7woz
 idV8mi33uKWkCF2tbjpC7GrO5xIo6OW9ZR6jwnQAl2lvXqqbSL5Pr52Dr6khZ9KxAOjr+7KZtR7
 /ODRg==
X-Google-Smtp-Source: AGHT+IEj/5diw1x6t3oBja6pdYbs7BRP7xf/2ER3ZQVGxRyqo2mjGTRIKy4RYDPHOMzD5+tv7qBPUwZ6TxnN3a/LCP4=
X-Received: by 2002:a05:6e02:4803:b0:3e5:4002:e827 with SMTP id
 e9e14a558f8ab-3e54002eab1mr29650055ab.6.1754744973831; Sat, 09 Aug 2025
 06:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250808155310.1053477-1-michal.kubiak@intel.com>
 <f0752ae6-25f8-4504-b23b-052f60007deb@molgen.mpg.de>
In-Reply-To: <f0752ae6-25f8-4504-b23b-052f60007deb@molgen.mpg.de>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Sat, 9 Aug 2025 21:08:57 +0800
X-Gm-Features: Ac12FXx4B1r38bknRw5Xn30GyYa0hLcpfX0rKbL00PRYhHhmWKJ6R_KfYOGkoTo
Message-ID: <CAL+tcoAwKcy-E6LkLhwvKA9+es5RuFmg4+kPZ8dV08-s-VopPA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org, 
 maciej.fijalkowski@intel.com, netdev@vger.kernel.org, 
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com, 
 aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754744974; x=1755349774; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6OrjFGAwkfNSFAA+5ug9IBizh7kH96douvTjqdvEjYE=;
 b=dmcMANRvoNBRSKM292BvBG5icYbrOsju5fEwhY9T+XOcu8J9p3jGE5p0W5xt1PURA0
 umtEJ5v4uAVTk5D5eln86Hmjwez+Ie1ehMWa0TELL0jh4fWgskrWTD7PZ/FyN/CTL8CC
 nlF+fhm0jdRGfXz/1wtRmCihJxiw9ExF7a2Xtkl3a8E/pSmf2z6jcGCWLHp6Sv1aIZs9
 EskX/GrbV1sIjZvNRGvDFijB1Ct0qYOcBr40hM2Hhlce/evGCJu9721J73gyWkaNAAcl
 z+R2FCavgI4vaOrNMp3/hOlY/Q+xcYNDujbMSoPxB4pFmGANUswuoG7ar33+5Z16X6LM
 2kyg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=dmcMANRv
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter
 for buffer allocation failures
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

On Sat, Aug 9, 2025 at 5:38=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de> =
wrote:
>
> Dear Michal,
>
>
> Thank you for your patch.
>
>
> Am 08.08.25 um 17:53 schrieb Michal Kubiak:
> > Currently, the driver increments `alloc_page_failed` when buffer alloca=
tion fails
> > in `ice_clean_rx_irq()`. However, this counter is intended for page all=
ocation
> > failures, not buffer allocation issues.
> >
> > This patch corrects the counter by incrementing `alloc_buf_failed` inst=
ead,
> > ensuring accurate statistics reporting for buffer allocation failures.
> >
> > Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side"=
)
> > Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> > Suggested-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
> Thank you, but I merely asked to send in the patch separately and didn=E2=
=80=99t
> spot the error. So, I=E2=80=99d remove the tag, but you add the one at th=
e end.
>
> > Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>

Reviewed-by: Jason Xing <kerneljasonxing@gmail.com>

> > ---
> >   drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/et=
hernet/intel/ice/ice_txrx.c
> > index 93907ab2eac7..1b1ebfd347ef 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -1337,7 +1337,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *r=
x_ring, int budget)
> >                       skb =3D ice_construct_skb(rx_ring, xdp);
> >               /* exit if we failed to retrieve a buffer */
> >               if (!skb) {
> > -                     rx_ring->ring_stats->rx_stats.alloc_page_failed++=
;
> > +                     rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
> >                       xdp_verdict =3D ICE_XDP_CONSUMED;
> >               }
> >               ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
>
>
> PS: A little off-topic: As this code is present since v6.3-rc1, I
> wonder, why this has not been causing any user visible issues in the
> last two years. Can somebody explain this?
>

From my limited experience, upgrading to the new kernel (like v6.x) is
not an easy thing. Plus not that many people monitor the driver
counter on the machine with the ice driver loaded. Sometimes we
neglect this error because it doesn't harm the real and overall
workload even when the allocation fails. Things like this sometimes
happen in other areas :)

Thanks,
Jason
