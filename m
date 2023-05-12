Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75832700E90
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 20:20:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C556342DDC;
	Fri, 12 May 2023 18:20:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C556342DDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683915602;
	bh=md01lEV8HM9Qr5phPN24YSn71OuWsb1OogIu+ob7oYY=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OkH5v4wQnbA7kmtByyaEOUZjph9ZyK1fHKdNmALuqrWjIg9cZutIdY5jkNK89uodX
	 NHrIxq65v7L7hfJrndQd2KMKOPHIr/kPbIkZUKDKqZ0ctTx3JKOZ38k+lNk/fxK2+n
	 tfx5qGIPcnQVB9cxHZ9LaeJ1byr8p7+zRaorpDxLYSbnG0aEN1AlkifQzWt0hcXS8G
	 bMAwtMMMw8XaK4ficYWx8E1yte+pXR7RmTdbdX1pQZq8LOC/Z4TImciJRzceZ6WCxN
	 ThuBCVKfR2+A+ZsPpduJXVhdnjZF9fkkeKddZlkJ7UqivZI9+mdsRVZufUVJgF8fVi
	 iJk2Zd68Y024Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SLf6qF-MvCeC; Fri, 12 May 2023 18:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A277B4016D;
	Fri, 12 May 2023 18:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A277B4016D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53FA41BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36CB484AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36CB484AA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kNP7xjOGXmG7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 18:19:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E495184A89
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com
 [IPv6:2607:f8b0:4864:20::449])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E495184A89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 18:19:55 +0000 (UTC)
Received: by mail-pf1-x449.google.com with SMTP id
 d2e1a72fcca58-643a294825dso5839362b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683915595; x=1686507595;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Je0QZ3OEcPYIjlzwUZPK1i4M9j5mxA5BuIpDlUTvQs0=;
 b=UWWDiu85wOIUUwskAozygf3ENGnCR/qKcZqfOTgolprUaIXgLQHwrqGu2ps2oGk46w
 p+WiSMULkBH7T5ZRO0n+NU9Jp7Ac125Vuyz335VnZZO3DMXvX49GndP1gTPIzA6w2+2x
 JOXhFmV+Uvma+D3njdJryAOvACGsW0DyWJiUryHFyTKL+gQypTDstWiQNDB1FyVMHQdY
 xGDFP/P0PBPyra89DmSCHppm/UQDj//K9YQCSIPKxI8Z4U8vTg4KCfxoGhw2TAsxHZr4
 crnrAgMW5otGQ/K1N+P621fMf8VDvCjWKejXydtCxpTFZbYe98JD1UIx3RE9P+mviLzS
 x3Mw==
X-Gm-Message-State: AC+VfDxKvySvwzkdtkbC90es/9ZI/TfiEifBc+UHya+VeyEnISlNCfmW
 CSiv90AMspt9ZC82Rr5oIvE/vDI=
X-Google-Smtp-Source: ACHHUZ4ijGlK7Lm+EEX2bsGa22HNJnpvzQmaM/g3aYsO0WEKo4uUmlXchpuaAJE65klqvjmYPTAzyvA=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a05:6a00:be7:b0:641:31b1:e781 with SMTP id
 x39-20020a056a000be700b0064131b1e781mr7072190pfu.5.1683915595291; Fri, 12 May
 2023 11:19:55 -0700 (PDT)
Date: Fri, 12 May 2023 11:19:53 -0700
In-Reply-To: <20230512152607.992209-7-larysa.zaremba@intel.com>
Mime-Version: 1.0
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-7-larysa.zaremba@intel.com>
Message-ID: <ZF6DHOtnr/AfYxML@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683915595; x=1686507595;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=Je0QZ3OEcPYIjlzwUZPK1i4M9j5mxA5BuIpDlUTvQs0=;
 b=m7pNH+tJv1eJb1PQNpYn7KL+B8x6ruIGuglVNB8oPweOb20MnT+8J0OjNba+0GMzAK
 i2qJQSsCLilZbh/VpSYzFhr+8TWJLN04ELWSCloAo8uOukOYPyZW2y8WCHI2gWKiGPQV
 mrdpFmtHsu5KgALTxLapvn6bfo9H/5o0X4lIsxV8DrTfvLPVA+RJ+JLrS8SyutdKHk91
 ZZOOJNOsgnh7HNk/c9g6OpoP2ftc70yyq7mybLStwyewVu3ewf9Fk314s4R2f5cbmvbp
 1CR/ln9gWb+p/8b1nsfv1vw52Mmb4WkjQI0lXCU+fYFEL2vb9AAks2Y6sdhizLX3G56c
 UgGw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=m7pNH+tJ
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 06/15] ice: Support HW
 timestamp hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05/12, Larysa Zaremba wrote:
> Use previously refactored code and create a function
> that allows XDP code to read HW timestamp.
> 
> HW timestamp is the first supported hint in the driver,
> so also add xdp_metadata_ops.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  2 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  1 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 22 +++++++++++++++++++
>  3 files changed, 25 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index aa32111afd6e..ba1bb8392db1 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -962,4 +962,6 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
>  	set_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags);
>  	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>  }
> +
> +extern const struct xdp_metadata_ops ice_xdp_md_ops;
>  #endif /* _ICE_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a1f7c8edc22f..cda6c4a80737 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3378,6 +3378,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
>  
>  	netdev->netdev_ops = &ice_netdev_ops;
>  	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
> +	netdev->xdp_metadata_ops = &ice_xdp_md_ops;
>  	ice_set_ethtool_ops(netdev);
>  
>  	if (vsi->type != ICE_VSI_PF)
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index 2515f5f7a2b6..e9589cadf811 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -537,3 +537,25 @@ void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res,
>  			spin_unlock(&xdp_ring->tx_lock);
>  	}
>  }
> +
> +/**
> + * ice_xdp_rx_hw_ts - HW timestamp XDP hint handler
> + * @ctx: XDP buff pointer
> + * @ts_ns: destination address
> + *
> + * Copy HW timestamp (if available) to the destination address.
> + */
> +static int ice_xdp_rx_hw_ts(const struct xdp_md *ctx, u64 *ts_ns)
> +{
> +	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
> +
> +	if (!ice_ptp_copy_rx_hwts_from_desc(xdp_ext->rx_ring,
> +					    xdp_ext->eop_desc, ts_ns))
> +		return -EOPNOTSUPP;

Per Jesper's recent update, should this be ENODATA?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
