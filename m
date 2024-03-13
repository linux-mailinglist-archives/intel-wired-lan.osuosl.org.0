Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD69987A8B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 14:47:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EB4860B92;
	Wed, 13 Mar 2024 13:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8q6_WyeFsCd6; Wed, 13 Mar 2024 13:47:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A85C360B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710337659;
	bh=lto8TWMjEVdFuevVc7/99LmKN94KTvc/sJ/quGAixZg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TDOkk2TI7xlmc3nTOnm3ZArgcoRTSVt4jxOH300rH2HiUNh+cHMPmezpr3YFN6qv1
	 Cy0LDXc2nA7VENJye1Hcx+ilwq85pMlQYHy22pjqg4A7siK6dC59+H+ffS5Dbq5YB/
	 vumVDXHv+cSvPQ/bAzwjnYdgwhJ0OONVHE6SgrECd+9I6f+YlyGsTUxSapoR9KER1F
	 YjpGoB3AER6lXI6KPtn3u1c17ZSfgIovsA18gxzwG0FyQqB39F/QPxbzaIS0SwGg7X
	 uiFwYhgJXIBpS5+ZYTQEmabc3CiD6RybwpWCssD/7kSZXSh3s64fJx5FUbPJWvDNF1
	 qRio9y7aTYOkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A85C360B7B;
	Wed, 13 Mar 2024 13:47:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 603681BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 13:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A8FF60ABF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 13:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nUKrzB9vxQk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 13:47:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4222C6084B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4222C6084B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4222C6084B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 13:47:36 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-H96Iobt8NxC4an6Y1aYvSA-1; Wed, 13 Mar 2024 09:47:32 -0400
X-MC-Unique: H96Iobt8NxC4an6Y1aYvSA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a4660bdb26fso36325266b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 06:47:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710337649; x=1710942449;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lto8TWMjEVdFuevVc7/99LmKN94KTvc/sJ/quGAixZg=;
 b=EQNGh8o1G4smEstQk7hWxAFKMfvzpkDX7eziHLg5NQuI/xqf6AL7wTHgDnld2SmZo2
 MH1jnKjj5eknJ6GXO5XfWorIBPYFMM1PmAqaPYiVRXno/VSy08yS1k+tv9aaFwAXZky3
 ZNPCLhR9nu26gzaxVeB2ivrAdbBDxcJX5bQE2OXiVjy4SBBZlUQe/rCkCRdugdoYfdu4
 GfmkCotHf9SYxi0af8mh26XQVk2mVmT+ni0ETe2g2Xi0P+EJpCErVgFGM0/7kma25EQM
 MXuO7xSGyul/eFByPmH6mdXUqGGn+aJB/K8gUzYhb4zFgTQ2OUrtUKRlEUzrf2gmFfq3
 ZJSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgznQbN67lnrMKTXQnvbSDFjhoOrS8BJRDQIVk+7WXWgJfAgtLQsEhOEdfsIN3kW5tG2c7ZElGBBnb5ruegPMuA8IpErA3NHYXUKHTmUHYZQ==
X-Gm-Message-State: AOJu0YytS2zOBk51212pa1Z8X89tys5Nr0zUjFlAmiyhbABm/Y+dsr9Y
 aontpGEkMXTdSpm4+6okffiDz0b5xngOOsESshw2J+uEAoBxTi3nBdlM6a+JMfoXKiO86L2spwB
 n5mExOu33BFmz/pEPsbsIj84JltNhLEUTKMsLvsfX6r1vhBVK2aZnpZ9adzjmVVnnMnY3NDYxwj
 DS5OnCz53evWGl5hajjnBHeRUOktqmBX93O8ZlnsjVVQ==
X-Received: by 2002:a17:907:cbc7:b0:a45:f6de:ed18 with SMTP id
 vk7-20020a170907cbc700b00a45f6deed18mr9073958ejc.33.1710337649138; 
 Wed, 13 Mar 2024 06:47:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGJcXvlWwReaRwLW3NSJHwQRUHzlMHgiH4ScCAv1zMBjYi4W2IspS4yfNyP51M1go2REeZir7h7rG2Yxttg6w=
X-Received: by 2002:a17:907:cbc7:b0:a45:f6de:ed18 with SMTP id
 vk7-20020a170907cbc700b00a45f6deed18mr9073943ejc.33.1710337648756; Wed, 13
 Mar 2024 06:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240313125457.19475-1-ivecera@redhat.com>
In-Reply-To: <20240313125457.19475-1-ivecera@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 13 Mar 2024 14:47:17 +0100
Message-ID: <CADEbmW3NQ7SQpccOqTD=p_czpBbOY=41kS7krwx2ZEDmFfcgrg@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710337655;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lto8TWMjEVdFuevVc7/99LmKN94KTvc/sJ/quGAixZg=;
 b=UoxTWCDJ76YKW0v8RC2J39oKoTT1kWJ/4ElTGCLquksp60rvkAM6hnd3U3Oco0wKxpJSr0
 E50ycDHmDm+w27hIDlw3go005KaV3USbpdB6kRpwqLVrlHdRvDv8ONL0Qhg/22HI/z+T/g
 BNBi3R/pNMbPTEbm+xueQw6Qu/BEwTw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UoxTWCDJ
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Enforce software interrupt
 during busy-poll exit
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, pawel.chmielewski@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Hugo Ferreira <hferreir@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 13, 2024 at 1:55=E2=80=AFPM Ivan Vecera <ivecera@redhat.com> wr=
ote:
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/etherne=
t/intel/i40e/i40e.h
> index 9b701615c7c6..4d2b05de6c63 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -908,6 +908,7 @@ struct i40e_q_vector {
>         struct rcu_head rcu;    /* to avoid race with update stats on fre=
e */
>         char name[I40E_INT_NAME_STR_LEN];
>         bool arm_wb_state;
> +       bool in_busy_poll;
>         int irq_num;            /* IRQ assigned to this q_vector */
>  } ____cacheline_internodealigned_in_smp;
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index 89a3401d20ab..1ea6d06b0acc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3915,6 +3915,12 @@ static void i40e_vsi_configure_msix(struct i40e_vs=
i *vsi)
>                      q_vector->tx.target_itr >> 1);
>                 q_vector->tx.current_itr =3D q_vector->tx.target_itr;
>
> +               /* Set ITR for software interrupts triggered after exitin=
g
> +                * busy-loop polling.
> +                */
> +               wr32(hw, I40E_PFINT_ITRN(I40E_SW_ITR, vector - 1),
> +                    I40E_ITR_20K);
> +
>                 wr32(hw, I40E_PFINT_RATEN(vector - 1),
>                      i40e_intrl_usec_to_reg(vsi->int_rate_limit));
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/ne=
t/ethernet/intel/i40e/i40e_register.h
> index 14ab642cafdb..baa6bb68bcf8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_register.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
> @@ -335,6 +335,8 @@
>  #define I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT 5
>  #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT 24
>  #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_PFI=
NT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT)
> +#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT 25
> +#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_D=
YN_CTLN_SW_ITR_INDX_SHIFT)
>  #define I40E_PFINT_ICR0 0x00038780 /* Reset: CORER */
>  #define I40E_PFINT_ICR0_INTEVENT_SHIFT 0
>  #define I40E_PFINT_ICR0_INTEVENT_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_INT=
EVENT_SHIFT)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/et=
hernet/intel/i40e/i40e_txrx.c
> index 0d7177083708..356c3140adf3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2658,8 +2658,22 @@ static inline u32 i40e_buildreg_itr(const int type=
, u16 itr)
>         return val;
>  }
>
> -/* a small macro to shorten up some long lines */
> -#define INTREG I40E_PFINT_DYN_CTLN
> +static inline u32 i40e_buildreg_swint(int type)
> +{
> +       u32 val;
> +
> +       /* 1. Enable the interrupt
> +        * 2. Do not modify any ITR interval
> +        * 3. Trigger a SW interrupt specified by type
> +        */
> +       val =3D I40E_PFINT_DYN_CTLN_INTENA_MASK |
> +             I40E_PFINT_DYN_CTLN_ITR_INDX_MASK | /* set noitr */
> +             I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK |
> +             I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK |
> +             FIELD_PREP(I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK, type);
> +
> +       return val;
> +}

This function is called only from one place and with a constant
argument. Does it  really need to be a function, as opposed to a
constant? Or are you going to add more callers soon?

>
>  /* The act of updating the ITR will cause it to immediately trigger. In =
order
>   * to prevent this from throwing off adaptive update statistics we defer=
 the
> @@ -2702,8 +2716,8 @@ static inline void i40e_update_enable_itr(struct i4=
0e_vsi *vsi,
>          */
>         if (q_vector->rx.target_itr < q_vector->rx.current_itr) {
>                 /* Rx ITR needs to be reduced, this is highest priority *=
/
> -               intval =3D i40e_buildreg_itr(I40E_RX_ITR,
> -                                          q_vector->rx.target_itr);
> +               wr32(hw, I40E_PFINT_ITRN(I40E_RX_ITR, q_vector->reg_idx),
> +                    q_vector->rx.target_itr >> 1);
>                 q_vector->rx.current_itr =3D q_vector->rx.target_itr;
>                 q_vector->itr_countdown =3D ITR_COUNTDOWN_START;
>         } else if ((q_vector->tx.target_itr < q_vector->tx.current_itr) |=
|
> @@ -2712,25 +2726,33 @@ static inline void i40e_update_enable_itr(struct =
i40e_vsi *vsi,
>                 /* Tx ITR needs to be reduced, this is second priority
>                  * Tx ITR needs to be increased more than Rx, fourth prio=
rity
>                  */
> -               intval =3D i40e_buildreg_itr(I40E_TX_ITR,
> -                                          q_vector->tx.target_itr);
> +               wr32(hw, I40E_PFINT_ITRN(I40E_TX_ITR, q_vector->reg_idx),
> +                    q_vector->tx.target_itr >> 1);
>                 q_vector->tx.current_itr =3D q_vector->tx.target_itr;
>                 q_vector->itr_countdown =3D ITR_COUNTDOWN_START;
>         } else if (q_vector->rx.current_itr !=3D q_vector->rx.target_itr)=
 {
>                 /* Rx ITR needs to be increased, third priority */
> -               intval =3D i40e_buildreg_itr(I40E_RX_ITR,
> -                                          q_vector->rx.target_itr);
> +               wr32(hw, I40E_PFINT_ITRN(I40E_RX_ITR, q_vector->reg_idx),
> +                    q_vector->rx.target_itr >> 1);
>                 q_vector->rx.current_itr =3D q_vector->rx.target_itr;
>                 q_vector->itr_countdown =3D ITR_COUNTDOWN_START;
>         } else {
>                 /* No ITR update, lowest priority */
> -               intval =3D i40e_buildreg_itr(I40E_ITR_NONE, 0);
>                 if (q_vector->itr_countdown)
>                         q_vector->itr_countdown--;
>         }
>
> -       if (!test_bit(__I40E_VSI_DOWN, vsi->state))
> -               wr32(hw, INTREG(q_vector->reg_idx), intval);
> +       /* Do not enable interrupt if VSI is down */
> +       if (test_bit(__I40E_VSI_DOWN, vsi->state))
> +               return;
> +
> +       if (!q_vector->in_busy_poll) {
> +               intval =3D i40e_buildreg_itr(I40E_ITR_NONE, 0);
> +       } else {
> +               q_vector->in_busy_poll =3D false;
> +               intval =3D i40e_buildreg_swint(I40E_SW_ITR);
> +       }
> +       wr32(hw, I40E_PFINT_DYN_CTLN(q_vector->reg_idx), intval);
>  }
>
>  /**
> @@ -2845,6 +2867,8 @@ int i40e_napi_poll(struct napi_struct *napi, int bu=
dget)
>          */
>         if (likely(napi_complete_done(napi, work_done)))
>                 i40e_update_enable_itr(vsi, q_vector);
> +       else
> +               q_vector->in_busy_poll =3D true;
>
>         return min(work_done, budget - 1);
>  }
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/et=
hernet/intel/i40e/i40e_txrx.h
> index abf15067eb5d..2cdc7de6301c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> @@ -68,6 +68,7 @@ enum i40e_dyn_idx {
>  /* these are indexes into ITRN registers */
>  #define I40E_RX_ITR    I40E_IDX_ITR0
>  #define I40E_TX_ITR    I40E_IDX_ITR1
> +#define I40E_SW_ITR    I40E_IDX_ITR2
>
>  /* Supported RSS offloads */
>  #define I40E_DEFAULT_RSS_HENA ( \
> --
> 2.43.0
>

