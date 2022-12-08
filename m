Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A0B647072
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 14:07:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6149381FA7;
	Thu,  8 Dec 2022 13:07:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6149381FA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670504821;
	bh=ML8zBJYuE+By4LSjhY294BBmfQ1FR0GwflCWHO47E0g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GQZUFm7Nelie8OR0TMQn9zzwPEWUCdsuyb4dwfM6TNrAPy9HgHRctJyAmOtHNOywu
	 T9klYXmy9bESpMeK+1v6DkO2Z4X2VTF/0ryb8lMFmTOUGroo+Hg4x4WmNQPVrt9Meh
	 Z/Yf3nw4/QFy/+3F5aPlfHFKAIEnpKj5zFxxy47sY6yewlC/2cIuVHNB0+9pAVXWJ1
	 bPW0UOKjAkY3+qafqEjlmVTTHNhV3vQji5z5OLAl6R2GRCdZUOIMGtGNUo6Wwv0eZr
	 LQuuC+VpI0XhsU+0sG6d3gmvupYUqA4kKwBLrXc2YouQGFzwdnLeve+E6j4JOSEpDF
	 C8NLu7XALNrrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gtyus1s6yEgy; Thu,  8 Dec 2022 13:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5523081F9C;
	Thu,  8 Dec 2022 13:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5523081F9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 497211BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 13:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22162410D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 13:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22162410D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ezN4Gci7m8bi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 13:06:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F09ED410D0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F09ED410D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 13:06:52 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id x22so3643433ejs.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Dec 2022 05:06:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j7y7mXoiRYM8+gZyOMzLUWwVsrDJFgNfdOoDhY7I1hA=;
 b=bUe60fr/tVEUYmMVxW4lnz9CUk9EtHUVgAHjVvaVoc6QQeS5tECbSxn+wy+bKOc2hh
 mO20/ulYuToCJ6kzuxeE8/KCC5SyZYjTyMrCIhdWSxewy97/mC77Lax+Q7RiiunlpVOi
 z9hKihM+ZB5cVE4JPHolShTQcIFF/UsXWj6IFvynQiNJuyg7+KQH+tnCoJsUlEawMeoc
 caCwTpWfenq64UqTBVNGi+o7/JW3PP7k9W6OoogkdXQMi401OmFNl3QUryPrEO253ykE
 szOCTJanuKgkQ18d1bLyC8v5e2+NdUX/3PtxtYC0py+6kvE+Jk8zzJgcKgOq0U7P6yxP
 QOkw==
X-Gm-Message-State: ANoB5pnwCP9WThu+R56RL1UKs3110732waQNgsZZ16GCaaleR1q0vKQY
 Ey2o9MLttQedQn5K9Le4EPGNGg==
X-Google-Smtp-Source: AA0mqf4aEkLvSoesNyuO9RAmKvnynXKYC/lLSIrkJohqLRpK2kurlnF35xYRAlYzs/b6H0+yAIGnGw==
X-Received: by 2002:a17:906:4cd0:b0:7ad:c3b5:8d55 with SMTP id
 q16-20020a1709064cd000b007adc3b58d55mr1789236ejt.67.1670504810463; 
 Thu, 08 Dec 2022 05:06:50 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 v16-20020a1709061dd000b007b47749838asm9609320ejh.45.2022.12.08.05.06.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Dec 2022 05:06:49 -0800 (PST)
Date: Thu, 8 Dec 2022 14:06:48 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y5HhaLOle2tZuT9S@nanopsycho>
References: <20221208125847.45342-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221208125847.45342-1-jiasheng@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=j7y7mXoiRYM8+gZyOMzLUWwVsrDJFgNfdOoDhY7I1hA=;
 b=QhhF3HkYaexoVfJbdwuHNaq4sMJ+Nk16bnoGP7jJJb7a/Oc99VPO2S60SzklpxzHhK
 dJnPqCq20C25lqYhFym4XvwQu65gb6pl7ZZ5B9E5sTRGXaaJiPMUgHlgCCcyYebPycgU
 ifaR2JTex+NNDy0r/oI67pvVciHJJ8OZgKS+E403wMyV8vMfbO7twR2jjU67eArl7btJ
 GRO9MK/hd5tBE5goa7Qd2wwj99rSblOH+fHYNiA62jcw3g5Eg4VM7RrADkQpj++WjX2T
 JkWJnl3iLupTy6EqZ54XyCfEmSipYSqup4YHF4hlRClA0wYE5zltCIugSPwPnjv7VNtX
 jAkg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=QhhF3HkY
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: Add check for kzalloc
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
Cc: leon@kernel.org, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Dec 08, 2022 at 01:58:47PM CET, jiasheng@iscas.ac.cn wrote:
>As kzalloc may return NULL pointer, the return value should
>be checked and return error if fails in order to avoid the
>NULL pointer dereference.

It would be nice if you change the sentence above to imperative mood.
Tell the codebase what to do.


>Moreover, use the goto-label to share the clean code.
>
>Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
>Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
>---
>Changelog:
>
>v2 -> v3:
>
>1. Use "while (i--)" to simplify the code.
>
>v1 -> v2:
>
>1. Use goto-label to share the clean code.
>---
> drivers/net/ethernet/intel/ice/ice_gnss.c | 23 ++++++++++++++---------
> 1 file changed, 14 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
>index b5a7f246d230..90c620c26516 100644
>--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
>+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
>@@ -462,6 +462,9 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
> 					       GFP_KERNEL);
> 		pf->gnss_serial[i] = NULL;
> 
>+		if (!pf->gnss_tty_port[i])
>+			goto err_out;

Move the check right after the alloc.


>+
> 		tty_port_init(pf->gnss_tty_port[i]);
> 		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
> 	}
>@@ -469,21 +472,23 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
> 	err = tty_register_driver(tty_driver);
> 	if (err) {
> 		dev_err(dev, "Failed to register TTY driver err=%d\n", err);
>-
>-		for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
>-			tty_port_destroy(pf->gnss_tty_port[i]);
>-			kfree(pf->gnss_tty_port[i]);
>-		}
>-		kfree(ttydrv_name);
>-		tty_driver_kref_put(pf->ice_gnss_tty_driver);
>-
>-		return NULL;
>+		goto err_out;
> 	}
> 
> 	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++)
> 		dev_info(dev, "%s%d registered\n", ttydrv_name, i);
> 
> 	return tty_driver;
>+
>+err_out:
>+	while (i--) {
>+		tty_port_destroy(pf->gnss_tty_port[i]);
>+		kfree(pf->gnss_tty_port[i]);
>+	}
>+	kfree(ttydrv_name);
>+	tty_driver_kref_put(pf->ice_gnss_tty_driver);
>+
>+	return NULL;

This looks fine now.


> }
> 
> /**
>-- 
>2.25.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
