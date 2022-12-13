Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3926064B94B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 17:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A971481260;
	Tue, 13 Dec 2022 16:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A971481260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947766;
	bh=jrbhfUnLFeufknH5y3DCRrz/e9Y/ogqMTBjjK0dPQx8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1kGV/KBvXLPBdi8Yf59DizdY1vXd/8HMtr3SuF4ptYJiogSoWfxWvMC7AW73wNJyC
	 Z6gfS5lvzrhJFBuJLEgvieiy8ZD2a+s7+U66NClU8htjrXc4MGpX8MHMQYvv8C4a04
	 lfx9foXRpoaZ3NFMhmE93EOVSENNSHyf/z99oc/KzY3g5sBqL+RQo1BowDovbEqtry
	 QhqbSHMhQuF6X47x1rDjSTxPmR8V3zQ0Lga3qSOKulyG8P39lOlvLieIu9u3J7hlgu
	 xMOJlVo+wkJQdvzO94q4DwKPfBP5HqB0aO/sggg6TCiHLTnBdyg8+yToz8lc9hAWHS
	 L4dHLgUjU0Ggw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48doJITLJclM; Tue, 13 Dec 2022 16:09:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A139F80FB0;
	Tue, 13 Dec 2022 16:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A139F80FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F39C1BF578
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 16:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55C1980FB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 16:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55C1980FB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KgVdiBG3wMR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 16:09:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 908BA80DA8
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 908BA80DA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 16:09:20 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 t11-20020a17090a024b00b0021932afece4so4035623pje.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 08:09:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4tFhyWdl5CQaHxKakHlBhtPo8vjJLnu37GaGjpzYKLY=;
 b=jPm7gMBoUrutF5qHob5Aigz4C8BUxUGi3NlHRPcMKfmDe/+4weVRIHu2RjtEpfVJoa
 JrDa3O+yDdLU6ZOksS0ulGN+SxyAysyZfUFazOZNEkiGUFD1X/MiyY8OEXWETRFd5Azv
 3/1PTt08PPDsd+pu/V03AG2Ga+7AFXNJS8l0k3Yn+OBvKONZ+XSptvhMjSP9+L0+nCM5
 xrs37G55wAxHTZwPIPf1jKfnIv8BsDIUIXiTx+ePiGBRdT43Z4toXjdyqwPBw66X3RrI
 bY4a/i6V5kBf4DtKLLR0vd6BKnnghz+MX7B5CQoTkoLGaJ6/DHytq283LM5gSe9CD3OH
 i+4w==
X-Gm-Message-State: ANoB5pk/mKFUOUvubpIsQyMTThzZ3Z7VG8ivpTQDxYGjG0qe0C2fX9yX
 3OyV/FmEPikOEIxrJgqFTeU=
X-Google-Smtp-Source: AA0mqf6XfsBTBfgwkOKZ89PyM+a95m8MvihGTHWxpAjBz/a9DFWDfJ1AFIzpueCySw4Gs2ZJOX7RKw==
X-Received: by 2002:a17:902:d192:b0:189:c19a:2cd9 with SMTP id
 m18-20020a170902d19200b00189c19a2cd9mr18084608plb.25.1670947759749; 
 Tue, 13 Dec 2022 08:09:19 -0800 (PST)
Received: from [192.168.0.128] ([98.97.42.38])
 by smtp.googlemail.com with ESMTPSA id
 x15-20020a170902ec8f00b00189371b5971sm44851plg.220.2022.12.13.08.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Dec 2022 08:09:19 -0800 (PST)
Message-ID: <08bd63d5de4ea8814ddd58c51ca6d1c17d0990e6.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>, tirtha@gmail.com, 
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net,  edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org,  daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com,  intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 08:09:15 -0800
In-Reply-To: <20221213105023.196409-5-tirthendu.sarkar@intel.com>
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
 <20221213105023.196409-5-tirthendu.sarkar@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=4tFhyWdl5CQaHxKakHlBhtPo8vjJLnu37GaGjpzYKLY=;
 b=MuupRT6NiaoDaeXjN5QATL127R0tKhTu1TE4P+2wLMod31puoEKkRyT9g+l7oFEyxT
 6RY/0hHTBc5pnb13fkPSpkP/PNCzPwZgE297i5Fif0mo3y9FwWaSFt/oNTuMxo3RgW+d
 C/pN1LoNKRhqC7FRvaclEuxEGsk5cDOsEBFbzxkxCbNOvj/Wl83NoBV9DlAo2wQ1AI+2
 Xy7iIqnsmpU+RVnVp42k5gJ3bD4jnabkUm9nnOjtj3r4GtRCrZK0sDLim5y236F403W3
 ma2Phc24WjBxSuLjsmiwNENoXZzzzuRoOuS0WZZkbCnGa1VdRvmnzOs7FXP09gorlJL9
 F96w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=MuupRT6N
Subject: Re: [Intel-wired-lan] [PATCH intel-next 4/5] i40e: pull out rx
 buffer allocation to end of i40e_clean_rx_irq()
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2022-12-13 at 16:20 +0530, Tirthendu Sarkar wrote:
> Previously i40e_alloc_rx_buffers() was called for every 32 cleaned
> buffers. For multi-buffers this may not be optimal as there may be more
> cleaned buffers in each i40e_clean_rx_irq() call. So this is now pulled
> out of the loop and moved to the end of i40e_clean_rx_irq().
> 
> As a consequence instead of counting the number of buffers to be cleaned,
> I40E_DESC_UNUSED() can be used to call i40e_alloc_rx_buffers().
> 
> Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>

I suspect this will lead to performance issues on systems configured
with smaller ring sizes. Specifically with this change you are limiting
things to only allocating every 64 (NAPI_POLL_WEIGHT/budget) packets.

> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index e01bcc91a196..dc9dc0acdd37 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2425,7 +2425,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
>  			     unsigned int *rx_cleaned)
>  {
>  	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
> -	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
>  	unsigned int offset = rx_ring->rx_offset;
>  	struct sk_buff *skb = rx_ring->skb;
>  	u16 ntp = rx_ring->next_to_process;
> @@ -2450,13 +2449,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
>  		unsigned int size;
>  		u64 qword;
>  
> -		/* return some buffers to hardware, one at a time is too slow */
> -		if (cleaned_count >= I40E_RX_BUFFER_WRITE) {
> -			failure = failure ||
> -				  i40e_alloc_rx_buffers(rx_ring, cleaned_count);
> -			cleaned_count = 0;
> -		}
> -
>  		rx_desc = I40E_RX_DESC(rx_ring, ntp);
>  
>  		/* status_error_len will always be zero for unused descriptors
> @@ -2479,7 +2471,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
>  			rx_buffer = i40e_rx_bi(rx_ring, ntp);
>  			I40E_INC_NEXT(ntp, ntc, rmax);
>  			i40e_reuse_rx_page(rx_ring, rx_buffer);
> -			cleaned_count++;
>  			continue;
>  		}
>  
> @@ -2531,7 +2522,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
>  		}
>  
>  		i40e_put_rx_buffer(rx_ring, rx_buffer);
> -		cleaned_count++;
>  
>  		I40E_INC_NEXT(ntp, ntc, rmax);
>  		if (i40e_is_non_eop(rx_ring, rx_desc))
> @@ -2558,6 +2548,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
>  	rx_ring->next_to_process = ntp;
>  	rx_ring->next_to_clean = ntc;
>  
> +	failure = i40e_alloc_rx_buffers(rx_ring, I40E_DESC_UNUSED(rx_ring));
> +
>  	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
>  	rx_ring->skb = skb;

I am not a fan of this "failure" approach either. I hadn't noticed it
before but it is problematic. It would make much more sense to take an
approach similar to what we did for Tx where we kick the ring
periodically if it looks like it is stuck, in this case empty.

The problem is if you have memory allocation issues the last thing you
probably need is a NIC deciding to become memory hungry itself and
sticking in an allocation loop.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
