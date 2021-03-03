Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 212D532AD3B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 03:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09F6A4E468;
	Wed,  3 Mar 2021 02:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0aeglOklXAnt; Wed,  3 Mar 2021 02:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E95DE4D6C5;
	Wed,  3 Mar 2021 02:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C75D31BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 02:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4D384D6C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 02:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Wz2fjFe-bzp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 02:15:57 +0000 (UTC)
X-Greylist: delayed 01:24:41 by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2F1E4D15B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 02:15:56 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id jt13so39251690ejb.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Mar 2021 18:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5oirzlV2WU9rV7hNoLo5ppfN4J1BC/5n5Erc832oZVc=;
 b=XP5VVf/l2QZ29V6quFuX5l8nQhnjKDLZ7I3tA6Ay0fYTS2PGgeyaZUuEN8Txtt2Hu8
 Pwd7cPhaOcFLEgREOE66OoNgDBUpVSwJxcLKOsTX9iDLkPvJ0YC6zIwoQTTtKUxjPmY3
 OXkj9VZLZa3AG/GyfVexXbOb0Sn+AsEyRbKZiCFBe0JGcDCOEZ/T+JUSfsswopWvkYMj
 F9Ze8a8IgRC1FZ2n+ljQ2Bi4o373T1jGvykrL8/mVaBlRQpVbquPxLaSg+T6kGw/1C1/
 qQCkp5Inv3xtMy/ym+GJs8k75/BugEeye3OXgdpSthFlKzVrD/R7XBP65qaB0Y7ZH4Lo
 WwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5oirzlV2WU9rV7hNoLo5ppfN4J1BC/5n5Erc832oZVc=;
 b=ke88fmLGQQQzpOdiz5mVmDgOu3iVfld9Lpz6I3JyOoxEKyWAJHPZyEgv8KfnEhjUnn
 WK/JTKU8MEWLK2opU8HUdFIJXwfPfHgU9aKGZJXp56AhXm6fPmIhqnqlccAwihEkhLkg
 ZmI6Lc3tw8/4KJoq5vKODx4nokztuQ3kn3am8BeemMYf3z4SCqMJO0D8u4pswxL2jPZP
 rtyo+dLd8SXGUwTiGvAnaXM2Y7imH/nwYxnjB97/0vw6MHECNckzvOF8pcGh2027UOaB
 nFZcGVes4uVW/9uqSxJODyaKFfAyZAUjTx7BXIk7Rlz3GWa4+5Ec8y7Cug6f9EnMYPBi
 Foiw==
X-Gm-Message-State: AOAM533Pl7Vl2EhmXqVUJciS3Knuhiph37X2qg6+iEU2o0g253kwGmVy
 EfDivUBZkRPJfn31745EMoDhSe1rmFw=
X-Google-Smtp-Source: ABdhPJx0ExBE6Ghc530RjvMwAR06EYb5UuUZ74x7RScjOzJ5vDtU94TA1K/l9JVAlekEap4T2O8zgw==
X-Received: by 2002:a17:906:934c:: with SMTP id
 p12mr11654935ejw.131.1614733648004; 
 Tue, 02 Mar 2021 17:07:28 -0800 (PST)
Received: from skbuf ([188.25.219.167])
 by smtp.gmail.com with ESMTPSA id si7sm5243418ejb.84.2021.03.02.17.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 17:07:27 -0800 (PST)
Date: Wed, 3 Mar 2021 03:07:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210303010726.7rt6j53zg5xwwtex@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-7-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210122224453.4161729-7-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/8] igc: Add support for
 tuning frame preemption via ethtool
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, xiyou.wangcong@gmail.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 po.liu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 22, 2021 at 02:44:51PM -0800, Vinicius Costa Gomes wrote:
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 0e78abfd99ee..c2155d109bd6 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -410,10 +410,14 @@
>  /* Transmit Scheduling */
>  #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
>  #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
> +#define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
> +#define IGC_TQAVCTRL_MIN_FRAG_MASK	0x0000C000
> +#define IGC_TQAVCTRL_MIN_FRAG_SHIFT	14
> @@ -83,13 +89,22 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>  	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
>  	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
>  
> -	tqavctrl = rd32(IGC_TQAVCTRL);
>  	rxpbs = rd32(IGC_RXPBS) & ~IGC_RXPBSIZE_SIZE_MASK;
>  	rxpbs |= IGC_RXPBSIZE_TSN;
>  
>  	wr32(IGC_RXPBS, rxpbs);
>  
> +	tqavctrl = rd32(IGC_TQAVCTRL) &
> +		~(IGC_TQAVCTRL_MIN_FRAG_MASK | IGC_TQAVCTRL_PREEMPT_ENA);
>  	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
> +
> +	if (adapter->frame_preemption_active)
> +		tqavctrl |= IGC_TQAVCTRL_PREEMPT_ENA;

Question: when adapter->frame_preemption_active is false, does the port
have the pMAC enabled, and can it receive preemptable frames? Maybe we
should be very explicit that the ethtool frame preemption only configures
the egress side, and that a driver capable of FP should always turn on
the pMAC on RX. Are you aware of any performance downsides?

> +
> +	frag_size_mult = ethtool_frag_size_to_mult(adapter->add_frag_size);
> +
> +	tqavctrl |= frag_size_mult << IGC_TQAVCTRL_MIN_FRAG_SHIFT;
> +
>  	wr32(IGC_TQAVCTRL, tqavctrl);
>  
>  	wr32(IGC_QBVCYCLET_S, cycle);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
