Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 818BB95C8E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 11:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38AF7412A4;
	Fri, 23 Aug 2024 09:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O-sQNoAw9_9U; Fri, 23 Aug 2024 09:10:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43C8E4124C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724404250;
	bh=6AhXsDMlvtQOFjb81q++WnGuzMYwKiixG4cCIOvamkc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3i0wYAr4XqHBYgI+p51Np3XdBiffEGzI+xMDVLTh6uGGpA6ZHY2+xT4mOQQC9Obvu
	 Q3bujMvJUCwn9U9mj7Qn3Br9Gt7esJSqxuw2oqMo2jUuLEe3d+hVZ3P8zQggnrlcLa
	 G4szrKJRcjjaODMlGRaDC+R7uENUNi6iInT90SyyoOSfbySUg510PA5p3atwpSB2Yh
	 ksq4P7gfzq7ilqWeelO8lvcPe/VPVzAN1jI4CgTU6DG2FVYeOsvODf+I1pKypVRuow
	 j3nJ3SApES9ik3QNijX6zOpZzgpiTm5Ch9w4EsjQNK+snqp4ltyIL0Pamtbnm//Yuy
	 Dfl5isqdOTnjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43C8E4124C;
	Fri, 23 Aug 2024 09:10:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5214F1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 09:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B75640217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 09:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rAAiWE1vtXlQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 09:10:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::632; helo=mail-ej1-x632.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E2D7C401B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2D7C401B1
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2D7C401B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 09:10:46 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-a7a843bef98so200645766b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 02:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724404245; x=1725009045;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6AhXsDMlvtQOFjb81q++WnGuzMYwKiixG4cCIOvamkc=;
 b=mLa+rWh6pwtHYQouUhQhtVZ3kNqUs2hKLLb/EeU9J2WWvbY5+ZYivoWCTDbygNO0q3
 DP1YVdb5HfLJvULN7ohZUP08vdx1WuzTqaG0QqcoUQXvXIleEGPfr/0S4G3TwZ+ArAfJ
 HvV86ukhQfnUxXFe3fDjuaRj3uUiuh47Cz9CoB3aDP4DnmN73mCoagsAP9EEHoLcRIPv
 B4vClEs3frhOhxMrNNMA4ISAuLTo+fZ4Bhwl0XPEzmcvBi/73pXuVGZcCv/uAZrwidmE
 yml811fEiRFsw+PJYlUaWslcoveMM0FRUCMo0CclPXvN155b6fq8CjEvIm/cOnrQWxti
 pEQQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUStC32Eczb62G/7BrQZEHDb3+tBmnMl9Re3iiTiGl88nHjcPhsBebcs63+KaR2T9RDCB33Ff9GhjfyuLBx78Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxHA9DXVUAfFmu+jgXsajDFVcI6j35KjfMU0ONoGEQM8th+i8Og
 EWfmskBTQofP0JVPGw4jvbyyPz9wvzEpcCeOJU6CvF8b26ym/zh0ZI44WOLQF/8=
X-Google-Smtp-Source: AGHT+IG6BzmUUMzpD/+Pr+Wo1DEsgeyuZhet4hGF2/3wMnlt4qwkqUwDqWOnA0zjSrMvDtOD42xikQ==
X-Received: by 2002:a17:906:6a14:b0:a86:6a26:fec7 with SMTP id
 a640c23a62f3a-a86a52c70ecmr110389066b.30.1724404244722; 
 Fri, 23 Aug 2024 02:10:44 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a868f2202fdsm232702266b.13.2024.08.23.02.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2024 02:10:44 -0700 (PDT)
Date: Fri, 23 Aug 2024 12:10:40 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <c786a345-9ec4-4e41-8e69-506239db291c@stanley.mountain>
References: <fa4f19064be084d5e740e625dcf05805c0d71ad0.1724394169.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa4f19064be084d5e740e625dcf05805c0d71ad0.1724394169.git.christophe.jaillet@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1724404245; x=1725009045; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6AhXsDMlvtQOFjb81q++WnGuzMYwKiixG4cCIOvamkc=;
 b=a3Lhm0ph62+rhukSHh1lvfM9D+dp6SrNKrbWgHYD8zt9VoQJXVf6yLcw/wF+aRcG3s
 HPZfHQQuJoGcdDedmK9mmbamqn3nBayJR4M0EyH3lyB+ohRQsUterdF7bSLLBzgUvU9K
 njGuE5F4yfigdkW2Gfgps8j5/JPD0o1R9UICCxNEYOmbjUNKXxMBEoz8TQUA4u06DXid
 i5b8jseXrz8KM18T1CrmIjhxH+QTcokR/FX9q2cG0P7Vn9YhNH29Msb/h2Ybt2QfPQOR
 Pf9LXNwRfuYNBTvG9BBjdPaKNNbmLEi6rt3bBIVBDagbXMGLJpHx/C1tvCmR9i//7MOh
 3+aQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=a3Lhm0ph
Subject: Re: [Intel-wired-lan] [PATCH net-next] idpf: Slightly simplify
 memory management in idpf_add_del_mac_filters()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 23, 2024 at 08:23:29AM +0200, Christophe JAILLET wrote:
> In idpf_add_del_mac_filters(), filters are chunked up into multiple
> messages to avoid sending a control queue message buffer that is too large.
> 
> Each chunk has up to IDPF_NUM_FILTERS_PER_MSG entries. So except for the
> last iteration which can be smaller, space for exactly
> IDPF_NUM_FILTERS_PER_MSG entries is allocated.
> 
> There is no need to free and reallocate a smaller array just for the last
> iteration.
> 
> This slightly simplifies the code and avoid an (unlikely) memory allocation
> failure.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 70986e12da28..b6f4b58e1094 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3669,12 +3669,15 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
>  		entries_size = sizeof(struct virtchnl2_mac_addr) * num_entries;
>  		buf_size = struct_size(ma_list, mac_addr_list, num_entries);
>  
> -		if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
> -			kfree(ma_list);
> +		if (!ma_list) {
>  			ma_list = kzalloc(buf_size, GFP_ATOMIC);
>  			if (!ma_list)
>  				return -ENOMEM;
>  		} else {
> +			/* ma_list was allocated in the first iteration
> +			 * so IDPF_NUM_FILTERS_PER_MSG entries are
> +			 * available
> +			 */
>  			memset(ma_list, 0, buf_size);
>  		}

It would be even nicer to move the ma_list allocation outside the loop:

        buf_size = struct_size(ma_list, mac_addr_list, IDPF_NUM_FILTERS_PER_MSG);
        ma_list = kmalloc(buf_size, GFP_ATOMIC);

regards,
dan carpenter

