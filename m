Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2181523594
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 16:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4271E832EA;
	Wed, 11 May 2022 14:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ER_7YowJKk0K; Wed, 11 May 2022 14:33:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E044182F9B;
	Wed, 11 May 2022 14:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C456D1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 14:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B8A1782F9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 14:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e68ZrXwdGDEm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 14:33:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 568E682F99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 14:33:05 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 l7-20020a17090aaa8700b001dd1a5b9965so2258452pjq.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=i2EByjGZ9HI2c2OzDKOZTrB+hBnpluOldry07PZevUg=;
 b=SmaF9bFKBqMRmF3lhfm0cRxAdhuoAyfQO6hfpBu9aYxYTvKKbQ0GfYFmNNzE7zp/SA
 zMyKxy14VvELOCeLbGJKW186BQCjdLSDB0gLO+mxZ0nMv1ez4IkX3yqfTtZmp+asiCez
 Y8LoFwsv54QZbjJJZ8V59jnhCcGnmk80r7Rqk+dBza1VwNDTySQyKgqode0tr+xlA4h2
 FWa0YgwiFziqcNnGBs/GO1bCAh34y74N1OSgIEfVbyYwXst20FIsQNO3JvDMoxnbHBUe
 +SdzGTHWmLy86vw3ebdCF0sk13Y3YdAmm/PnQ8MsEm8ye56c0f92qLacy1g3v5KmZixC
 6r+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=i2EByjGZ9HI2c2OzDKOZTrB+hBnpluOldry07PZevUg=;
 b=LP3SfQMG+Moi1mgE01iFBIj6xjft2me48LkHeQcctOBFHxv2mrIkROEyCjMWR8G5s/
 sEK/I95UJJiBrOehbEefiXF6KBAA4r8J+cbuOoK/t8i50RQFX7LEa6/VO+kdKFqLeqKj
 pVQ0P4scQ7TILAS2Mm23GZEJ4ugoUWTvBQFxtmLmLS20yeaMujoZAd4nLz2Rs061Ubza
 X/dKf8J10zQ8sBpzgl5xZPTDIdsXG/Kl9lg+ucKwH9rJ3U8MhHFCb/E7Y4cY83cdo1JR
 NSIMFmE8YR2cHyy20toVCXTuBU2puDmK9Fk8Srnd3SB0a6gds3yPgmJcdctr9T0sqouF
 Oduw==
X-Gm-Message-State: AOAM530L5UcarPXQqve1nCTd9Iv8PnieGvJ5G1v2Bh4SSyYdkUuarMKP
 wEhzgI3Cj+kjK9fy6eZOd6cGqIWzfqc=
X-Google-Smtp-Source: ABdhPJyWeMZ2KvoN0ZXm05z9fjpBXCpc59SjKzvIi+KH1ZaBXhaAL5UtR8FrN1PwGJ+i4sVwjGplxA==
X-Received: by 2002:a17:90b:3ecb:b0:1dc:5401:bea with SMTP id
 rm11-20020a17090b3ecb00b001dc54010beamr5680019pjb.20.1652279584581; 
 Wed, 11 May 2022 07:33:04 -0700 (PDT)
Received: from [192.168.0.128] ([98.97.39.30])
 by smtp.googlemail.com with ESMTPSA id
 o6-20020a17090a420600b001cd498dc153sm2704554pjg.3.2022.05.11.07.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 07:33:03 -0700 (PDT)
Message-ID: <ad8cf673c8e9e21cb2e7afeb5c7e66cc76a36995.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: lixue liang <lianglixue@greatwall.com.cn>, jesse.brandeburg@intel.com, 
 anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org,  netdev@vger.kernel.org
Date: Wed, 11 May 2022 07:33:02 -0700
In-Reply-To: <20220511080716.10054-1-lianglixue@greatwall.com.cn>
References: <20220511080716.10054-1-lianglixue@greatwall.com.cn>
User-Agent: Evolution 3.40.4 (3.40.4-5.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1BBVENIXSBpZ2JfbWFpbu+8mkFkZGVkIGlu?=
 =?utf-8?q?valid_mac_address_handling_in_igb=5Fprobe?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2022-05-11 at 08:07 +0000, lixue liang wrote:
> In some cases, when the user uses igb_set_eeprom to modify
> the mac address to be invalid, the igb driver will fail to load.
> If there is no network card device, the user must modify it to
> a valid mac address by other means. It is only the invalid
> mac address that causes the driver The fatal problem of
> loading failure will cause most users no choice but to trouble.
> 
> Since the mac address may be changed to be invalid, it must
> also be changed to a valid mac address, then add a random
> valid mac address to replace the invalid mac address in the
> driver, continue to load the igb network card driver,
> and output the relevant log reminder. vital to the user.
> 
> Signed-off-by: lixue liang <lianglixue@greatwall.com.cn>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 34b33b21e0dc..a513570c2ad6 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3359,9 +3359,10 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	eth_hw_addr_set(netdev, hw->mac.addr);
>  
>  	if (!is_valid_ether_addr(netdev->dev_addr)) {

It might make sense to look at adding a module parameter to control
this behavior similar to what was done for ixgbe for
"allow_unsupported_sfp". 
Otherwise such a failure is likely to end up causing other issues and
be harder to debug if it is just being automatically worked around as
the user may not see the issue as it is only being reported as 

Basically you could check for it here and either run the old code, or
allow the new code that would assign a random MAC address.

> -		dev_err(&pdev->dev, "Invalid MAC Address\n");
> -		err = -EIO;
> -		goto err_eeprom;
> +		eth_random_addr(netdev->dev_addr);
> +		memcpy(hw->mac.addr, netdev->dev_addr, netdev->addr_len);
> +		dev_info(&pdev->dev,
> +			 "Invalid Mac Address, already got random Mac Address\n");

We would probably want to make this a dev_err instead of just a
dev_info since the MAC address failing is pretty signficant. Also the
message may be better as "Invalid MAC address. Assigned random MAC
address". That way if somebody were to be parsing for the message they
would still find it since "MAC" hasn't been changed.

>  	}
>  
>  	igb_set_default_mac_filter(adapter);



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
