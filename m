Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A6371481F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 12:42:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5A9461263;
	Mon, 29 May 2023 10:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5A9461263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685356973;
	bh=edWQqe8crKJW1jUtJVvgfsNaPcSdoU7PSziO6bD6ytw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c84gJog9My8JHSXTuiFEzYZXbXoUFbFKCvhb+1WWd9Y+dl8AFxGDFa4swMldTu9Fg
	 ivvz33lbb8SkWOLyDUyjki5THGu9sNGz6wjzlLoKoOveR4Rdim9wN5+QYiAoeveryZ
	 160QAaoqrJW0wV2xiQK3/gofESLduUxJNkk1Dw93KzT6aXl5Z86FH4iqOtEsG0xTOZ
	 bqT/1GdSFOr1DSmcUC7uoORcYArTuVeXaNKZjSB2DmB3nn3UGqfNmV3thicvPdsa1g
	 ubHoqn8ZoOUauDgM4ElXnGN2xqWg48w6kJ8B4zX2EWvJxTBcNc/AzJMufnXgRtdzCG
	 LmHADcfxdDLhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gG0duG35ccel; Mon, 29 May 2023 10:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CAEB6125E;
	Mon, 29 May 2023 10:42:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CAEB6125E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E33161BF23B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 10:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B41CD6125E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 10:42:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B41CD6125E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ucYtzYaPUuJs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 May 2023 10:42:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D76D360F72
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D76D360F72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 10:42:45 +0000 (UTC)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-426-wHsZKGW4OAGI3fF1M-FiXQ-1; Mon, 29 May 2023 06:42:43 -0400
X-MC-Unique: wHsZKGW4OAGI3fF1M-FiXQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-75b07b420a5so539665885a.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 03:42:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685356963; x=1687948963;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JsNZ0mEat4Ol3glmzxeYVB/57AfWHXBnRNG6vde7ZUo=;
 b=XnhhBWTvS42jRQ55lFTLSF/Gd7acXa9K1lcDzkNr393hZnmyqEpirENalDiLFZ0KmF
 FpqLaJ7liXBSLBTe9YZPjI2tRhEH7Q41HNqiPj6RM4R8iIKYRMd7b6MneMnSvD7qU6S2
 r4cyuRTEFxmX7Kw4O8sFVCojCbDMFW310zh2pkphbeGvlB9vOm6cj6U86oxEaGpRFrbw
 qaUTQQcoVEPJG+QQepvdCFwkzZsByQ+JfC630w4OaA7BTcsy6nnYqvo73sDWd+KO2TOO
 xZ0k7NWkCegyF4OHF2RMi9Px8awRyIxfrsCwT0w1Ifgy2LUvRG9yz1omYHHKh1KvfreW
 KPfw==
X-Gm-Message-State: AC+VfDwOqsQSdMBXsS6R3qhRx+ffj1U3evZraw2js5fgsSA1gQwiUOmK
 /ElLlgROYkLWew3RGWxRsv4OgAnBQBd1cFbtUiwaZljHrPp2LLg1106j1aXS/ZbZVHyg+0ijyYQ
 7X17BFxnzaiPvQ+C9eDtWarQxSGx9dA==
X-Received: by 2002:a05:620a:8e83:b0:75b:23a1:35f4 with SMTP id
 rf3-20020a05620a8e8300b0075b23a135f4mr5929925qkn.5.1685356963156; 
 Mon, 29 May 2023 03:42:43 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5d2FoNIduI/RXJ8Q8fm6CwQCFWat/Qgn4AhkEr1E4Z0bWXJ1e6cxTSeVXGto2SMtrqJ9Gxtw==
X-Received: by 2002:a05:620a:8e83:b0:75b:23a1:35f4 with SMTP id
 rf3-20020a05620a8e8300b0075b23a135f4mr5929917qkn.5.1685356962884; 
 Mon, 29 May 2023 03:42:42 -0700 (PDT)
Received: from [192.168.1.125] (85-160-27-86.reb.o2.cz. [85.160.27.86])
 by smtp.gmail.com with ESMTPSA id
 h18-20020a05620a13f200b0075bb2aa9a67sm3224746qkl.59.2023.05.29.03.42.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 May 2023 03:42:42 -0700 (PDT)
Message-ID: <7444fd8e-5504-7a3f-8228-5aed28d486ed@redhat.com>
Date: Mon, 29 May 2023 12:42:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
 <20230526222158.2685796-3-jacob.e.keller@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <20230526222158.2685796-3-jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685356964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JsNZ0mEat4Ol3glmzxeYVB/57AfWHXBnRNG6vde7ZUo=;
 b=PnqeEqPmxj2DQJezjlDYZZ1gGqH78eIID5CZUfVvVtJHl/xJGKpzd5fCAbA3lrT3Q7Un4i
 SJzvFfWghTIwecb+KkyXFD3hBvjU8WzzEGfkDXTZLkDd011Ui0Eh7Vo5NQA8ntFIZgYM5c
 pmaIkfFr10d8mIkZT34K2iWF+kbp6c4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PnqeEqPm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/5] ice: schedule service
 task in IRQ thread_fn
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Den 27.05.2023 kl. 00.21 skrev Jacob Keller:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> If the kernel is configured with CONFIG_PREEMPT_RT, scheduling the service
> task in interrupt context can result in a kernel panic. This is a result of
> ice_service_task_schedule calling queue_work.

Is it really the case on current kernels that one cannot use queue_work 
in that context?
The previous posting of this patch showed a stack trace from a 
3.10-based vendor kernel. Has the crash been seen on anything recent?
I think the workqueue code has been safe to use in atomic context on 
even on PREEMPT_RT since commit fe3bc8a988a4 ("Merge branch 'for-5.8' of 
git://git.kernel.org/pub/scm/linux/kernel/git/tj/wq").

That said, the patch looks OK to me. It makes the code cleaner. I object 
only to the description.

Michal

> Move the ice_service_task_schedule() call into the miscellaneous IRQ thread
> that functions as the interrupt bottom half.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++----------
>   1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9e4d7d884115..8b59632ec6b1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3058,7 +3058,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   {
>   	struct ice_pf *pf = (struct ice_pf *)data;
>   	struct ice_hw *hw = &pf->hw;
> -	irqreturn_t ret = IRQ_NONE;
>   	struct device *dev;
>   	u32 oicr, ena_mask;
>   
> @@ -3139,10 +3138,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   
>   	if (oicr & PFINT_OICR_TSYN_TX_M) {
>   		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
> -		if (!hw->reset_ongoing) {
> +		if (!hw->reset_ongoing)
>   			pf->oicr_misc |= PFINT_OICR_TSYN_TX_M;
> -			ret = IRQ_WAKE_THREAD;
> -		}
>   	}
>   
>   	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
> @@ -3159,7 +3156,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   					       GLTSYN_STAT_EVENT2_M);
>   
>   			pf->oicr_misc |= PFINT_OICR_TSYN_EVNT_M;
> -			ret = IRQ_WAKE_THREAD;
>   		}
>   	}
>   
> @@ -3180,16 +3176,12 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   		if (oicr & (PFINT_OICR_PCI_EXCEPTION_M |
>   			    PFINT_OICR_ECC_ERR_M)) {
>   			set_bit(ICE_PFR_REQ, pf->state);
> -			ice_service_task_schedule(pf);
>   		}
>   	}
> -	if (!ret)
> -		ret = IRQ_HANDLED;
>   
> -	ice_service_task_schedule(pf);
>   	ice_irq_dynamic_ena(hw, NULL, NULL);
>   
> -	return ret;
> +	return IRQ_WAKE_THREAD;
>   }
>   
>   /**
> @@ -3204,6 +3196,8 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
>   	if (ice_is_reset_in_progress(pf->state))
>   		return IRQ_HANDLED;
>   
> +	ice_service_task_schedule(pf);
> +
>   	if (pf->oicr_misc & PFINT_OICR_TSYN_EVNT_M) {
>   		ice_ptp_extts_event(pf);
>   		pf->oicr_misc &= ~PFINT_OICR_TSYN_EVNT_M;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
