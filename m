Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DA57CFF82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 18:26:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06A9A43066;
	Thu, 19 Oct 2023 16:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06A9A43066
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697732800;
	bh=bjQ45CVloSv4wO3ITMZop/8qyhXzIq69VafZmlc2neE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z1gkcsxFC+iW2Zga2SXwFWKNReuVer+TLIgivRvCGv3TiYSCgPrXk4/9Yfb+gZllI
	 6HhVLOr8EudThhAHbAZc152cpqGT4Abmgw8fDMzV0zZcqc9EeKwhBONJvAcLpxL2Bn
	 LuXalBwswAMCcE2douLzDSwKbB1HUMN1eWWiuJp5XC4k2A6cxeTcVriOS7pyjvq162
	 CAkDsfj8xzYDrv/q84OCG5db68g5gZXy2aw/AAd/eI/Q0gjcFPbk2eq5SxZvTuxJ5q
	 TyqyFj8Z50qTSJ1LPUCNrFOoA+T54gTCZnAVwC9cOWDRKL4qJ+yfr08dgZhro+OcDB
	 Yqc+3rZaOsPog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ntjZfp3qe0ND; Thu, 19 Oct 2023 16:26:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1A784303B;
	Thu, 19 Oct 2023 16:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1A784303B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEDE61BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6369418EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:26:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6369418EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LvtoPu47JSqM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 16:26:32 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC71B4109F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC71B4109F
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4083f613272so15119575e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:26:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697732790; x=1698337590;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Wh6i6kjw/IrUvRTQsZubF/CVyHBmvJLo/KFurkfeXZU=;
 b=g/IvUQ9GSLXsDFrzPfwNWngGzKjbYr1GM3mwvEeFjCqwXiC8OCy3cAku8w5tDcRKvw
 HGE+6OuEHjbzAXxxdaYhHbcHv2th8YUAGRHDUhXctQGm8UqbUrPfc6v9o16DshKVaMVO
 THph+Bg8K2+AyUP9mrGREfeizDZZl9M6WAD5SDi8q6W2QZ6O+IUUb7sq7PPrO5rs628l
 +HvHFfeLyYwwyUmljkjFStY1vkhw+t1YxjLhdnCKEJigdNEPdUgJvU+NvjwLWQryRJPg
 C4GgvtZ4FltcntOwF0CVox8Cg+Hsm1se0yDVoszsYoRQ3BJPWqGY1jbpmlMu/Pur93C6
 XYfQ==
X-Gm-Message-State: AOJu0YzeQk+5k4jUrMuqID3FUfDCpO3mZFrLw4yfywG+/LiZTXBptiUV
 GXt5bePqQ5C1OAIYS0MFit1/9g==
X-Google-Smtp-Source: AGHT+IHIPZr477OgepS79IUkR1E9LQDeJwqb7faAfPdDQxpY8JSWfrb7M3KxNxAIBgpsgWv0A9tLBA==
X-Received: by 2002:a05:600c:4591:b0:406:8491:ec2 with SMTP id
 r17-20020a05600c459100b0040684910ec2mr2320133wmo.15.1697732789639; 
 Thu, 19 Oct 2023 09:26:29 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 n11-20020a05600c3b8b00b004068de50c64sm4894803wms.46.2023.10.19.09.26.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Oct 2023 09:26:29 -0700 (PDT)
Date: Thu, 19 Oct 2023 19:26:26 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Su Hui <suhui@nfschina.com>
Message-ID: <24585602-11ef-4c08-8c56-56a70c1a971c@kadam.mountain>
References: <20231019084241.1529662-1-suhui@nfschina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231019084241.1529662-1-suhui@nfschina.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1697732790; x=1698337590; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Wh6i6kjw/IrUvRTQsZubF/CVyHBmvJLo/KFurkfeXZU=;
 b=jmsXuQFFrmLmXW6OgP0txU0ZR0VnGcP7wjxjb7ChUjIja5OtPjKYbnmAyDcN8PqgmG
 5vTBO7c6lORBJn3j8g4LbPB2pGSJIcTo5R8onq0hozwlIqS5GC0PzW6l9ouXr1PtUaov
 3mpE+M7gdhF6VlgMnRQwXIjhjXdvSjiMl8uGczeVh4yd5IrVxyD0XKFwmWiDHe6F6KPw
 sRNnEJUcgjQ12Kjj8uOkob/yhq6nLwo1IoJq5TpeSfvPUhFS7sKYUjtY81ID2VEkBfXo
 16ho9Gd4iS+xUoWqRPUKJFGU+7iyR5Pj2IUUAZduyXcsHype63Bg8aJWeWFL5aVrvMuc
 sprQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=jmsXuQFF
Subject: Re: [Intel-wired-lan] [PATCH] i40e: add an error code check in
 i40e_vsi_setup
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 19, 2023 at 04:42:42PM +0800, Su Hui wrote:
> check the value of 'ret' after calling 'i40e_vsi_config_rss'.
> 
> Signed-off-by: Su Hui <suhui@nfschina.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index de7fd43dc11c..9205090e5017 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14567,6 +14567,8 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
>  	if ((pf->hw_features & I40E_HW_RSS_AQ_CAPABLE) &&
>  	    (vsi->type == I40E_VSI_VMDQ2)) {
>  		ret = i40e_vsi_config_rss(vsi);
> +		if (ret)
> +			goto err_rings;

This function uses Come From label names.  Instead of telling you what
the function/goto does it tells you where it is called from.  Here
"err_rings" means that the rings allocation failed.  However, the rings
allocation actually succeeded and we need to free it
with i40e_vsi_clear_rings().

What clean up we need to do depends on vsi->type as well but here
we know the type is vsi->type == I40E_VSI_VMDQ2 so it's needs to call
the i40e_vsi_clear_rings().

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
