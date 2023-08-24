Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F024787468
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 17:39:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CFDB4155E;
	Thu, 24 Aug 2023 15:39:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CFDB4155E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692891556;
	bh=zcgBk2kmSefI4yqJ29EZa1vXs3sz1Ly5ohZksHy8BDA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j7mkslGF52zpHb7GYwil765oG+AVZSO02AAKBkf+J+fBO4mcCBF7iBpILowEKwKFu
	 IBZYn03udRucIpyACvCgOGozbtnyJwNI0ECIlRt8QiDXEcyGCm9+Trcjx786WEr9gW
	 7Hs2KQummFiAgKiqBd82l3kwZAfDvknh8+tMlzFD13zD/AwVjcOcnwbzi5laCDdld9
	 IiUz1Ii43VJ4gPRbCh3hHjlwADBcXLH15vtfMZq52DrdMRkXXp+6GtTY1S4z4cYlJG
	 zso4E7/XpzoocqI9/WUeciwO9CaMU+opYuBNshkYEOTUbGfYdSQCImylbHgban6Zji
	 vvNpfVxcr1+nA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGZVy1aBK9fK; Thu, 24 Aug 2023 15:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B3334059C;
	Thu, 24 Aug 2023 15:39:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B3334059C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 09F741BF98D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA010820AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA010820AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HU3zNv42bi3S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 15:39:09 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30BEA82095
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30BEA82095
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6E537672AC;
 Thu, 24 Aug 2023 15:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8586BC433C7;
 Thu, 24 Aug 2023 15:39:04 +0000 (UTC)
Date: Thu, 24 Aug 2023 17:39:01 +0200
From: Simon Horman <horms@kernel.org>
To: Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <20230824153901.GJ3523530@kernel.org>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
 <20230824075500.1735790-13-junfeng.guo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230824075500.1735790-13-junfeng.guo@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692891547;
 bh=ccJZ7jMCkPXEoZObdfh/lq2IGmiKK2gTVM+NPOtVGVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OaKZ5s4erFUXppdehkjcTT1TeUUblS5NX0TxjzRN81PErzSB/N0HcMjIC2lLOWrMB
 175wLpEMROv2sMoSkMkkP5ANyuQrblZ55zv31eRu3FfxBX+BuDTWIMS46ULL/7sgvN
 IE9G2MMY0vYHlVEaGXgtJFy3lJbIdbdmHevlkCtK+6JB7aoOZkI2E5Uxdas7APoP+c
 79md4SKZ/+TuoosX7ihss85S720C+k7k6HhJeovTshOp+CTXbXs7Tatag+dS4ebZOZ
 96gDbNeuUuqWF1EBTzpFD5VzaHBSA4kteTuw1tETRd2SNxBpE0QHYGwEov5Z1+kSm/
 ipR5rgR3xLb0A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OaKZ5s4e
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 12/15] ice: add parser
 execution main loop
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 24, 2023 at 03:54:57PM +0800, Junfeng Guo wrote:
> Implement function ice_parser_rt_execute which perform the main
> loop of the parser.
> 
> Also include the Parser Library files into ice Makefile.
> 
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>

...

> @@ -80,6 +107,632 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
>  	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
>  }
>  
> +static void _ice_bst_key_init(struct ice_parser_rt *rt,
> +			      struct ice_imem_item *imem)
> +{
> +	u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
> +	u16 ho = rt->gpr[ICE_GPR_HO_IDX];
> +	u8 *key = rt->bst_key;
> +	int idd, i;
> +
> +	idd = ICE_BST_TCAM_KEY_SIZE - 1;
> +	if (imem->b_kb.tsr_ctrl)
> +		key[idd] = (u8)tsr;
> +	else
> +		key[idd] = imem->b_kb.prio;
> +
> +	idd = ICE_BST_KEY_TCAM_SIZE - 1;
> +	for (i = idd; i >= 0; i--) {
> +		int j;
> +
> +		j = ho + idd - i;
> +		if (j < ICE_PARSER_MAX_PKT_LEN)
> +			key[i] = rt->pkt_buf[ho + idd - i];
> +		else
> +			key[i] = 0;
> +	}
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
> +		  key[0], key[1], key[2], key[3], key[4],
> +		  key[5], key[6], key[7], key[8], key[9],
> +		  key[10], key[11], key[12], key[13], key[14],
> +		  key[15], key[16], key[17], key[18], key[19]);

Hi Junfeng Guo,

key points to rt->bst_key which has ICE_BST_KEY_SIZE (10) elements.
But here 20 elements are accessed. This seems to be an overrun.

Flagged by Smatch.

> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
