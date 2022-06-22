Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3037055524A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 19:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C536A61290;
	Wed, 22 Jun 2022 17:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C536A61290
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655918687;
	bh=GE2lW5HiPAweT5EIwYQO1jHd+gGfYUIWwdhroun82x4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RtObooZb9gx8Duohf3CFiOOAw2XxPrEUnMYNUcbehf2OOLuAEY+UDiXRkGzY1Sb9x
	 d98Sq46BI4fxcMAt2Ka9fCbDQe61OjagkZQ+qssLP6ci7Kh8/+oMzXxPZuGK/83QSk
	 a6uCW2SDwVV50VKgBPcm096+MIuC3Id4nVHwZNfJN24ueS13gjfP/XnX7/VuFOcxf6
	 gcX1UkjyQ88zOJ0Rr7rHIOOws7GFSlZv66vSy2PHHfLdaLMOpWT08HWCrvrWYAB1oB
	 rVBCA21XTpuLg/GDoawy+MaF20/KEZN5XL6ZNyUxLchWIKyTno3AGO+jg+FjmIvcp3
	 TDER8epqLr8Og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w71CJP8jIUSl; Wed, 22 Jun 2022 17:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE84D60EA3;
	Wed, 22 Jun 2022 17:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE84D60EA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0E3A1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 17:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99B934181F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 17:24:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99B934181F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoLz3PTdpM-E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 17:24:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 075A04181D
Received: from mail-oi1-x263.google.com (mail-oi1-x263.google.com
 [IPv6:2607:f8b0:4864:20::263])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 075A04181D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 17:24:39 +0000 (UTC)
Received: by mail-oi1-x263.google.com with SMTP id h65so21573058oia.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 10:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:dkim-signature:mime-version:references
 :in-reply-to:from:date:message-id:subject:to:cc;
 bh=Eg7pKoREa62TqDRaU+yo2zrV2x8I6979kwBHk4P4AYE=;
 b=qBMJysMv29wOV4JVbJZ/8KiD8V7rxCLZktG2GDZPZum93l2pJbDN5QtJaLmUrjqIeR
 GRIbby2SbakshNjAPIN8WQYZoKZex0hlvCjuyLrGAOtbZPKkuVLhm9v+8+omRD/YWElk
 M//uUt9rAc5tpE3AX86qMIeziIBx0TYXmPH/qPvgy9b6bFnTrCCYl+rHFT+/aN0wEuCs
 HLrvjWUA7pXCPy/M8216LhH/7uj+rOiYhpBOSQM9RVabOWzTC1tK6SON/oPb8HyE0gWv
 Cqs4Pxa+E9zSG1MdO8OzJNM3hoyUZqKqGuX40KL/6hOZp2J4sd2jqzCEmeNdaiy5WOrV
 8AiQ==
X-Gm-Message-State: AOAM531NaP3WeMOmFpzWn7cJ5gCdv/7sRwyaFwKESh62B5ypPiB9SuXL
 TAWsPss1w+SwrHyqfuTdpzTmjDNY2YFN/cNLq7VB95k6GlcS0w==
X-Google-Smtp-Source: ABdhPJzbGlaOP2Xaiv9k/0q2beUnNN8sHdxVA1sjHbwp7+pIrSgIS/yU07RNc5aJRsJJjGR32TqdOmUOzsum
X-Received: by 2002:a05:6808:1b08:b0:32e:d451:5c4e with SMTP id
 bx8-20020a0568081b0800b0032ed4515c4emr23103201oib.173.1655918678966; 
 Wed, 22 Jun 2022 10:24:38 -0700 (PDT)
Received: from riotgames.com ([163.116.128.210])
 by smtp-relay.gmail.com with ESMTPS id
 u3-20020a056870d58300b000f1c7e4569csm2365815oao.18.2022.06.22.10.24.38
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jun 2022 10:24:38 -0700 (PDT)
X-Relaying-Domain: riotgames.com
Received: by mail-qv1-f71.google.com with SMTP id
 kd24-20020a056214401800b0046d7fd4a421so17850148qvb.20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 10:24:37 -0700 (PDT)
X-Received: by 2002:a05:620a:4591:b0:6a7:5a82:3d2d with SMTP id
 bp17-20020a05620a459100b006a75a823d2dmr3163074qkb.694.1655918677021; 
 Wed, 22 Jun 2022 10:24:37 -0700 (PDT)
X-Received: by 2002:a05:620a:4591:b0:6a7:5a82:3d2d with SMTP id
 bp17-20020a05620a459100b006a75a823d2dmr3163048qkb.694.1655918676729; Wed, 22
 Jun 2022 10:24:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220622091447.243101-1-ciara.loftus@intel.com>
In-Reply-To: <20220622091447.243101-1-ciara.loftus@intel.com>
From: Zvi Effron <zeffron@riotgames.com>
Date: Wed, 22 Jun 2022 12:24:25 -0500
Message-ID: <CAC1LvL2zjEF16_Gbwrxwke7wpeKxNKR=vd_E2N_CpDezeo4sbw@mail.gmail.com>
To: Ciara Loftus <ciara.loftus@intel.com>
x-netskope-inspected: true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Eg7pKoREa62TqDRaU+yo2zrV2x8I6979kwBHk4P4AYE=;
 b=U40zH1A0nsIU3C11b6t2RtEag/I6/6Q5eEbPZKTaTfpUbfOjaEWrGDc866SG/INK35
 1EFdMcPJZteT9+M4NW1Yms+k4RBYZvvsYuX9CEothlBXRGGl9bnK+Mbz3vvxLNbgsWTX
 FcfEwQev8Nj+DBdD55qFCN6OJutEpn/XZ/TS0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=U40zH1A0
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: xsk: read the XDP
 program once per NAPI
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 22, 2022 at 4:15 AM Ciara Loftus <ciara.loftus@intel.com> wrote:
>
> Similar to how it's done in the ice driver since 'eb087cd82864 ("ice:
> propagate xdp_ring onto rx_ring")', read the XDP program once per NAPI
> instead of once per descriptor cleaned. I measured an improvement in
> throughput of 2% for the AF_XDP xdpsock l2fwd benchmark in busy polling
> mode on my platform.
>

Should the same improvement be made to i40e_run_xdp/i40e_clean_rx_irq for the
non-AF_XDP case?

> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index af3e7e6afc85..2f422c61ac11 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -146,17 +146,13 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
>   *
>   * Returns any of I40E_XDP_{PASS, CONSUMED, TX, REDIR}
>   **/
> -static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
> +static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp,
> +                          struct bpf_prog *xdp_prog)
>  {
>         int err, result = I40E_XDP_PASS;
>         struct i40e_ring *xdp_ring;
> -       struct bpf_prog *xdp_prog;
>         u32 act;
>
> -       /* NB! xdp_prog will always be !NULL, due to the fact that
> -        * this path is enabled by setting an XDP program.
> -        */
> -       xdp_prog = READ_ONCE(rx_ring->xdp_prog);
>         act = bpf_prog_run_xdp(xdp_prog, xdp);
>
>         if (likely(act == XDP_REDIRECT)) {
> @@ -339,9 +335,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>         u16 next_to_clean = rx_ring->next_to_clean;
>         u16 count_mask = rx_ring->count - 1;
>         unsigned int xdp_res, xdp_xmit = 0;
> +       struct bpf_prog *xdp_prog;
>         bool failure = false;
>         u16 cleaned_count;
>
> +       /* NB! xdp_prog will always be !NULL, due to the fact that
> +        * this path is enabled by setting an XDP program.
> +        */
> +       xdp_prog = READ_ONCE(rx_ring->xdp_prog);
> +
>         while (likely(total_rx_packets < (unsigned int)budget)) {
>                 union i40e_rx_desc *rx_desc;
>                 unsigned int rx_packets;
> @@ -378,7 +380,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>                 xsk_buff_set_size(bi, size);
>                 xsk_buff_dma_sync_for_cpu(bi, rx_ring->xsk_pool);
>
> -               xdp_res = i40e_run_xdp_zc(rx_ring, bi);
> +               xdp_res = i40e_run_xdp_zc(rx_ring, bi, xdp_prog);
>                 i40e_handle_xdp_result_zc(rx_ring, bi, rx_desc, &rx_packets,
>                                           &rx_bytes, size, xdp_res, &failure);
>                 if (failure)
> --
> 2.25.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
