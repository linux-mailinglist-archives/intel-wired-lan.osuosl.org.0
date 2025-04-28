Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0880DA9F997
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 21:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89D6D60D78;
	Mon, 28 Apr 2025 19:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DU453wJ0mrls; Mon, 28 Apr 2025 19:35:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5FF360D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745868914;
	bh=az0Zt6Dv53GMDteM9JS2CU4K7aTSPI6l1A4/TfLXRTs=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MwfqvrcFzIRImflo5iLRiII5Sg2ZrTeW4T0TkKK1ZGiQrJ5I/XCWSfEVTE8fpthyi
	 0/TXokfg7JCKfCkkIdTps6eS5MAox0HTJsgzmPuOL38bZzfeEyOsu74WNoeBxluPCO
	 4TF/nSj3xkbq5GR5kKqzh+ciJ0YF75iS2F49XrM/xodGj0egI4G4lAAd6ANgeZWWWL
	 sM/q7sS2BSUAvjMAldd3dV5/qg7ioWE0mw9y5XBTO7pUKEVKOE/wbBU2fTVAbmEj/p
	 6aFWIob0h058lPO2mN359iUpbvIxzHH1WWRzH/7cXlVeIY4JzQN1MiiLiHKtjikIc2
	 L/KLEPQ/3wJKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5FF360D72;
	Mon, 28 Apr 2025 19:35:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1297613D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F579812A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9c9hN6fGYWtz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 19:35:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 096218129D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 096218129D
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 096218129D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:35:11 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-39c0e0bc733so4830745f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 12:35:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745868910; x=1746473710;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=az0Zt6Dv53GMDteM9JS2CU4K7aTSPI6l1A4/TfLXRTs=;
 b=VEHnWoYrN8L/QviOo1I3bmlS3BuxkyqhRXTW2ZvqvY9l3tVrKwVuw6RSiQuw7T7elc
 DOdykjzCpWEex5PpGuQzxXnxDCOFEU3OTklkLI9mQWigCS5mxjmDbiw4ZPNUbO0+NsA8
 66nm3Godr6CodZqnbqz1dtA8P/gp5rgM45AQprodK3lQFAWBzRtUdgZiAE8GTspWwJ0z
 1mm4M1C0Ntbp9Uo9EX7pClNVc2tBgqWlAhD8g/kjDxxwlGAVE+dw1f/Q+YMApwulO+zK
 MFoQufujGs1WP+phAecm9f/DKiwv04AStQI6Gl+wfoD9aVcQEsvOhDAdAcfpBi/RIO2s
 IxQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVR6P6EVB9sQqvB0FM6ChDMGvEF8UafVto455/LbmHf6shAlA67Mb2y8frE8DnpTrvvnq0YbB0ixi8tYzfTw/g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzhW15IsD69JZqyWUS2IFSG77J31HhYaZdb2MUI0+4UmOxS6wGV
 vFAfwkbAZxMpaGBopUDk9NCba+e7dfVkgCA/dtbX4Xg9DXfcbcJfoHHlNPcnUrrkCy73S6GDkgA
 1vakuZcDknDFUrN/PSUo50dX4AOBk3ZM+QS31
X-Gm-Gg: ASbGnctbwRqUR4/o44mwKLERrsKbm1rp+syx9S9cOWfDjmt+TdcroSfFOpY5Y5Dm+lr
 hh1tB/CARZsuLOhT0bguTrtnEqVJWucQp2NTVCJ28/LZlUIKioELQNyxnpQ+iWneVL0PrIDSSBZ
 kuVeCyleecCCzEDLPc1aATPwQqLDE2qO7/8Q==
X-Google-Smtp-Source: AGHT+IGbHz28kSa8vHoOTd/l/acaF9F4oaD/q+3RLp606gkzTUyaTORECWIL76C56s/+ZfTYoLC4yvl4k8VGhV/lCw4=
X-Received: by 2002:adf:ed52:0:b0:39e:db6a:4744 with SMTP id
 ffacd0b85a97d-3a07aa6ff6amr5641500f8f.32.1745868909888; Mon, 28 Apr 2025
 12:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250425175426.3353069-1-brianvv@google.com>
 <a1d7a46f-184e-4c01-8613-6cc5d35d2545@intel.com>
In-Reply-To: <a1d7a46f-184e-4c01-8613-6cc5d35d2545@intel.com>
From: Brian Vazquez <brianvv@google.com>
Date: Mon, 28 Apr 2025 15:34:58 -0400
X-Gm-Features: ATxdqUHn7b7wMIuppd6jBPFRmU76m3L0oBF3otS7iF7IADHM_tILaAq92Y5FTZc
Message-ID: <CAMzD94TrjqQYVEp57h41VLB2+5RRoicT774gzvv2xq6gDEVuPA@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Josh Hay <joshua.a.hay@intel.com>, 
 Luigi Rizzo <lrizzo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1745868910; x=1746473710; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=az0Zt6Dv53GMDteM9JS2CU4K7aTSPI6l1A4/TfLXRTs=;
 b=sduBwhXLXQMNJaOSKKh4q/G7yYjkM5KaXCE3/DACin43LLLtt2tZp3mgBGqS0cKBOl
 HLgA0ZHUcywDS1NmQ3LDRtP17Ik3rFM1sd6x/aZ6CrJl8C3v4rLJenSeX/zr0c0cqw+p
 vs2coPUkGdhJQ8ElW2SqRpy/PVtaVJXt/1w7Lb1QFATIShNyM+YQoNqi1vbqeAQ5jpH6
 rdP2uJx3zhJ3XEkAtDeCkCzfpaBJMtgDhqwNFl+SgLYlN1haQdzdT8g/nlFwPu4l48Yf
 dmbj/K1FICKCkLeTG27CCG+AadZI9b6A8oPVhtZnvlJSzMiO4+56w4E9S1pinB8je3Uk
 XUYw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=sduBwhXL
Subject: Re: [Intel-wired-lan] [iwl-next PATCH] idpf: fix a race in txq
 wakeup
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

Thanks for the quick review Tony!

On Fri, Apr 25, 2025 at 6:41=E2=80=AFPM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
> On 4/25/2025 10:54 AM, Brian Vazquez wrote:
>
> Should this be a bug fix going to iwl-net/net? If yes, you'll need to
> add a Fixes: as well
>

Correct, will send to iwl-net then and add the Fixes tag.

> > Add a helper function to correctly handle the lockless
> > synchronization when the sender needs to block. The paradigm is
> >
> >          if (no_resources()) {
> >                  stop_queue();
> >                  barrier();
> >                  if (!no_resources())
> >                          restart_queue();
> >          }
> >
> > netif_subqueue_maybe_stop already handles the paradigm correctly, but
> > the code split the check for resources in three parts, the first one
> > (descriptors) followed the protocol, but the other two (completions and
> > tx_buf) were only doing the first part and so race prone.
> >
> > Luckly netif_subqueue_maybe_stop macro already allows you to use a
>
> s/Luckly/Luckily
>
> > function to evaluate the start/stop conditions so the fix only requires
> > to pass the right helper function to evaluate all the conditions at onc=
e.
> >
> > The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> > and instead adjusts separetely the conditions for singleq and splitq.
>
> s/separetely/separately
>
> >
> > Note that idpf_rx_buf_hw_update doesn't need to check for resources
> > since that will be covered in idpf_tx_splitq_frame.
> >
> > To reproduce:
> >
> > Reduce the threshold for pending completions to increase the chances of
> > hitting this pause by locally changing the kernel:
> >
> > drivers/net/ethernet/intel/idpf/idpf_txrx.h
> >
> > -#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> =
1)
> > +#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> =
4)
> >
> > Use pktgen to force the host to push small pkts very aggresively:
>
> s/aggresively/aggressively
>
> >
> > ./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
> >    -p 10000-10000 -t 16 -n 0 -v -x -c 64
> >
> > Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Brian Vazquez <brianvv@google.com>
> > Signed-off-by: Luigi Rizzo <lrizzo@google.com>
> > ---
> >   .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  9 ++--
> >   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 44 +++++++-----------=
-
> >   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  8 ----
> >   3 files changed, 21 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/driv=
ers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> > index c6b927fa9979..fb85270c69d6 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> > @@ -364,15 +364,16 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff =
*skb,
> >       struct idpf_tx_buf *first;
> >       unsigned int count;
> >       __be16 protocol;
> > -     int csum, tso;
> > +     int csum, tso, needed;
>
> This should be moved to be RCT; longest declaration to shortest.

acked

> >       count =3D idpf_tx_desc_count_required(tx_q, skb);
> >       if (unlikely(!count))
> >               return idpf_tx_drop_skb(tx_q, skb);
> >
> > -     if (idpf_tx_maybe_stop_common(tx_q,
> > -                                   count + IDPF_TX_DESCS_PER_CACHE_LIN=
E +
> > -                                   IDPF_TX_DESCS_FOR_CTX)) {
> > +     needed =3D count + IDPF_TX_DESCS_PER_CACHE_LINE + IDPF_TX_DESCS_F=
OR_CTX;
> > +     if (!netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> > +                                    IDPF_DESC_UNUSED(tx_q),
> > +                                    needed, needed)) {
> >               idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
> >
> >               u64_stats_update_begin(&tx_q->stats_sync);
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> > index 970fa9e5c39b..cb41b6fcf03f 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -2184,6 +2184,19 @@ void idpf_tx_splitq_build_flow_desc(union idpf_t=
x_flex_desc *desc,
> >       desc->flow.qw1.compl_tag =3D cpu_to_le16(params->compl_tag);
> >   }
> >
> > +/* Global conditions to tell whether the txq (and related resources)
> > + * has room to allow the use of "size" descriptors.
> > + */
> > +static inline int txq_has_room(struct idpf_tx_queue *tx_q, u32 size)
>
> no 'inline' in c files please. Also, it's preferred to prepend driver
> name to the function i.e. idpf_txq_has_room()

will fix in v2
>
> Thanks,
> Tony
>
> > +{
> > +     if (IDPF_DESC_UNUSED(tx_q) < size ||
> > +         IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
> > +             IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq) ||
> > +         IDPF_TX_BUF_RSV_LOW(tx_q))
> > +             return 0;
> > +     return 1;
> > +}
> > +
> >   /**
> >    * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop con=
ditions
> >    * @tx_q: the queue to be checked
> > @@ -2194,29 +2207,10 @@ void idpf_tx_splitq_build_flow_desc(union idpf_=
tx_flex_desc *desc,
> >   static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
> >                                    unsigned int descs_needed)
> >   {
> > -     if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
> > -             goto out;
> > -
> > -     /* If there are too many outstanding completions expected on the
> > -      * completion queue, stop the TX queue to give the device some ti=
me to
> > -      * catch up
> > -      */
> > -     if (unlikely(IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
> > -                  IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq=
)))
> > -             goto splitq_stop;
> > -
> > -     /* Also check for available book keeping buffers; if we are low, =
stop
> > -      * the queue to wait for more completions
> > -      */
> > -     if (unlikely(IDPF_TX_BUF_RSV_LOW(tx_q)))
> > -             goto splitq_stop;
> > -
> > -     return 0;
> > -
> > -splitq_stop:
> > -     netif_stop_subqueue(tx_q->netdev, tx_q->idx);
> > +     if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> > +                                   txq_has_room(tx_q, descs_needed), 1=
, 1))
> > +             return 0;
> >
> > -out:
> >       u64_stats_update_begin(&tx_q->stats_sync);
> >       u64_stats_inc(&tx_q->q_stats.q_busy);
> >       u64_stats_update_end(&tx_q->stats_sync);
> > @@ -2242,12 +2236,6 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue =
*tx_q, u32 val,
> >       nq =3D netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
> >       tx_q->next_to_use =3D val;
> >
> > -     if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED)) {
> > -             u64_stats_update_begin(&tx_q->stats_sync);
> > -             u64_stats_inc(&tx_q->q_stats.q_busy);
> > -             u64_stats_update_end(&tx_q->stats_sync);
> > -     }
> > -
> >       /* Force memory writes to complete before letting h/w
> >        * know there are new descriptors to fetch.  (Only
> >        * applicable for weak-ordered memory model archs,
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.h
> > index c779fe71df99..36a0f828a6f8 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > @@ -1049,12 +1049,4 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idp=
f_rx_queue *rxq,
> >                                     u16 cleaned_count);
> >   int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)=
;
> >
> > -static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_=
q,
> > -                                          u32 needed)
> > -{
> > -     return !netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> > -                                       IDPF_DESC_UNUSED(tx_q),
> > -                                       needed, needed);
> > -}
> > -
> >   #endif /* !_IDPF_TXRX_H_ */
>
