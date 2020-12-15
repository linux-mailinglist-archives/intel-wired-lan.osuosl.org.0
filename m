Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2616D2DAD73
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 13:49:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEECE84583;
	Tue, 15 Dec 2020 12:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxe5pNOniKuP; Tue, 15 Dec 2020 12:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03B2384595;
	Tue, 15 Dec 2020 12:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D692C1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC32C8731A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PrcQRPGiEAr6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 12:49:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC50F87318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608036551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OxXx20BFwiHVDFgGooksFXIaxb5NmyKwvjjoeQDcyQw=;
 b=W8irMLzdgqB+UV/b9sGaO9W82yV8ampft7d7fC3Xsz/0CAZuW+VOILQxIKndrJWtmT5rlP
 Erj3V0yruHasvb6ZvFZeffiJ622unMyoqsxfFlGttRwNLgwK42o1OJEPl60O8j+vg8uLCs
 o/NuIyU9QWqb10njYHGAj2Jk9BhKK0g=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-386-hQ82LFjgPC-pMErp-iO-mg-1; Tue, 15 Dec 2020 07:49:10 -0500
X-MC-Unique: hQ82LFjgPC-pMErp-iO-mg-1
Received: by mail-ej1-f72.google.com with SMTP id ny19so5924824ejb.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 04:49:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OxXx20BFwiHVDFgGooksFXIaxb5NmyKwvjjoeQDcyQw=;
 b=FZu5Tcrm9Y89ggwuEfB5iAbAR42v42xq8yyluMAM76SYfg7EQ7mmb99dZvLC5Rs62m
 9JZP3Vl3aipnSJGbeFc15cUxV3VwXFBJhSdnFGcmrD3N2U+Sh2fJ/q/pqHnrExIwy0Gx
 0G0dVsSO8rfKhPy9u4Y9qJJsvV53tFpBfG6bXe9Sbs4Wc8vlDJzIoJDm/DG+xCbmhQcH
 AktAI66T1sYkZOetctVlsV71pOwihXQeXyI67q31jyUzzcalY/g/W6euZzPvc77eLnRI
 zO+DrNbw7jRG3L3xaHQwj5slzWcKC1mJ8ReMr2VrLXDuLY0GTJ5HcVocQDdHl+GcNbYa
 z8hg==
X-Gm-Message-State: AOAM531PIU7w+4L1MIFqGO/j0YBERMcGPjVB49A3LD+5GzDKO2o5F0h/
 umTsofVphckvkfXOEFmBdVrrwcYZgXxSpK02Uur1X2cRbn+5HPWp26B4KiXHnbMvn+bbXjHxhB/
 kYKTkkF4A+PTlEBRTP/dTvBphtIwGiw==
X-Received: by 2002:a17:906:2798:: with SMTP id
 j24mr7083362ejc.328.1608036548927; 
 Tue, 15 Dec 2020 04:49:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzJ3g9KAuikE+FtAYcMKJ9EtGXTqBRBor464OJm8jgA390yH927E715k2aSH3ftCUL95fvMsQ==
X-Received: by 2002:a17:906:2798:: with SMTP id
 j24mr7083333ejc.328.1608036548600; 
 Tue, 15 Dec 2020 04:49:08 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id x6sm19398619edl.67.2020.12.15.04.49.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Dec 2020 04:49:08 -0800 (PST)
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20201214192935.895174-1-mario.limonciello@dell.com>
 <20201214192935.895174-4-mario.limonciello@dell.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <12098c6f-a44a-df90-b69c-d0cb2a68543c@redhat.com>
Date: Tue, 15 Dec 2020 13:49:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201214192935.895174-4-mario.limonciello@dell.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 3/4] Revert "e1000e: disable s0ix
 entry and exit flows for ME systems"
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
Cc: Netdev <netdev@vger.kernel.org>, Perry.Yuan@dell.com,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 12/14/20 8:29 PM, Mario Limonciello wrote:
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> disabled s0ix flows for systems that have various incarnations of the
> i219-LM ethernet controller.  This changed caused power consumption regressions
> on the following shipping Dell Comet Lake based laptops:
> * Latitude 5310
> * Latitude 5410
> * Latitude 5410
> * Latitude 5510
> * Precision 3550
> * Latitude 5411
> * Latitude 5511
> * Precision 3551
> * Precision 7550
> * Precision 7750
> 
> This commit was introduced because of some regressions on certain Thinkpad
> laptops.  This comment was potentially caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case").
> or it was possibly caused by a system not meeting platform architectural
> requirements for low power consumption.  Other changes made in the driver
> with extended timeouts are expected to make the driver more impervious to
> platform firmware behavior.
> 
> Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> Reviewed-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 45 +---------------------
>  1 file changed, 2 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 6588f5d4a2be..b9800ba2006c 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -103,45 +103,6 @@ static const struct e1000_reg_info e1000_reg_info_tbl[] = {
>  	{0, NULL}
>  };
>  
> -struct e1000e_me_supported {
> -	u16 device_id;		/* supported device ID */
> -};
> -
> -static const struct e1000e_me_supported me_supported[] = {
> -	{E1000_DEV_ID_PCH_LPT_I217_LM},
> -	{E1000_DEV_ID_PCH_LPTLP_I218_LM},
> -	{E1000_DEV_ID_PCH_I218_LM2},
> -	{E1000_DEV_ID_PCH_I218_LM3},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM2},
> -	{E1000_DEV_ID_PCH_LBG_I219_LM3},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM4},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM5},
> -	{E1000_DEV_ID_PCH_CNP_I219_LM6},
> -	{E1000_DEV_ID_PCH_CNP_I219_LM7},
> -	{E1000_DEV_ID_PCH_ICP_I219_LM8},
> -	{E1000_DEV_ID_PCH_ICP_I219_LM9},
> -	{E1000_DEV_ID_PCH_CMP_I219_LM10},
> -	{E1000_DEV_ID_PCH_CMP_I219_LM11},
> -	{E1000_DEV_ID_PCH_CMP_I219_LM12},
> -	{E1000_DEV_ID_PCH_TGP_I219_LM13},
> -	{E1000_DEV_ID_PCH_TGP_I219_LM14},
> -	{E1000_DEV_ID_PCH_TGP_I219_LM15},
> -	{0}
> -};
> -
> -static bool e1000e_check_me(u16 device_id)
> -{
> -	struct e1000e_me_supported *id;
> -
> -	for (id = (struct e1000e_me_supported *)me_supported;
> -	     id->device_id; id++)
> -		if (device_id == id->device_id)
> -			return true;
> -
> -	return false;
> -}
> -
>  /**
>   * __ew32_prepare - prepare to write to MAC CSR register on certain parts
>   * @hw: pointer to the HW structure
> @@ -6974,8 +6935,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
>  		e1000e_pm_thaw(dev);
>  	} else {
>  		/* Introduce S0ix implementation */
> -		if (hw->mac.type >= e1000_pch_cnp &&
> -		    !e1000e_check_me(hw->adapter->pdev->device))
> +		if (hw->mac.type >= e1000_pch_cnp)
>  			e1000e_s0ix_entry_flow(adapter);
>  	}
>  
> @@ -6991,8 +6951,7 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>  	int rc;
>  
>  	/* Introduce S0ix implementation */
> -	if (hw->mac.type >= e1000_pch_cnp &&
> -	    !e1000e_check_me(hw->adapter->pdev->device))
> +	if (hw->mac.type >= e1000_pch_cnp)
>  		e1000e_s0ix_exit_flow(adapter);
>  
>  	rc = __e1000_resume(pdev);
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
