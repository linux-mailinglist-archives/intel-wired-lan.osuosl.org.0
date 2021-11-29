Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAED4627D5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 00:09:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49A9040480;
	Mon, 29 Nov 2021 23:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_wCKEyqZ4yp; Mon, 29 Nov 2021 23:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F48E405AE;
	Mon, 29 Nov 2021 23:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 237D51BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 23:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 100D3615EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 23:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KmFhG3q_Z08G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 23:09:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CAFE60DC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 23:09:24 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id v23so13856195pjr.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 15:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cjI1iEQvrjuZSzQZKIgkcHTIt7pFNhKvScbd/sC/DHY=;
 b=ENGS1vi2o2YfHxqbY5IgOrQypSaAni8EZF3I6S1lvMqdeCH/+Fjux5Cbnguf0cpXmg
 Y8wi7VgkiFU3/jWJ2GmqReOkCz+URZggphEGNCM8VvkwYrxuk+MrtKGCZZSXBKdF8rX1
 mqah2ciG3K2Dx6lfaGNivlKrPZuesvJ+sC290q1qgLWJl6JaJgWRNua7ObLK8aRlo29m
 L2wegrb6IE+d7wEBHHigCEKl6tFmMfbGSAvbxPo8SuNX58aZAL4oBrLaakcwUW4rARR0
 cWpHv3Rxq15PxGeUIDucAovIiXrcwoqsxbqQCj8HCpzlZIAlg45YbaVvyDMG4YFlSGWd
 KRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cjI1iEQvrjuZSzQZKIgkcHTIt7pFNhKvScbd/sC/DHY=;
 b=M5rMU8NIhbqigW9C73Eto5FQPfqOR/H716wX3epXIqLEoCofXvW4JvpgG4F7ahSdLu
 eL62/5LgKcBIo4cr5/RftW7f+hWZl3q2locofD0R6K6BqHaxXfVTAMFchJWj/10JzKQ3
 5z0OhDbt8srXVJs31YolPwv7/rP27C5tf2Yybj+EUZjN128y5h4DiDzagR3kFtXX0AdP
 PELj/3x3R5IagioOSfC0mG+c7Ith/qs/tFTTAkp0IniR+iwXbiL5FpB78C5N5zErijap
 nknkpNnC6Hal3SZbFMtwaw8JyBww0SFVrPdCPIEyxUG08AcItOBB14B1CnTkV6zggN1F
 20Yg==
X-Gm-Message-State: AOAM531uYrNu545Te5ostKI8nd3+FJmhKBYbtIQXUU7ZXO5uIBrIl76m
 Av1m8xekL+JXOel+9E3iWjjx8A==
X-Google-Smtp-Source: ABdhPJzbyoFU1yg8Z2cnExgjCBIVKV6YN6hQS1gzWST7Vflpo6RAr5de7f5200UzFLg1zyPhgkYp/g==
X-Received: by 2002:a17:90a:1283:: with SMTP id
 g3mr1344516pja.174.1638227363347; 
 Mon, 29 Nov 2021 15:09:23 -0800 (PST)
Received: from hermes.local (204-195-33-123.wavecable.com. [204.195.33.123])
 by smtp.gmail.com with ESMTPSA id j38sm12969983pgb.84.2021.11.29.15.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 15:09:22 -0800 (PST)
Date: Mon, 29 Nov 2021 15:09:20 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20211129150920.4a400828@hermes.local>
In-Reply-To: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by
 taking RTNL in RPM resume path
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 29 Nov 2021 22:14:06 +0100
Heiner Kallweit <hkallweit1@gmail.com> wrote:

> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index dd208930f..8073cce73 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -9254,7 +9254,7 @@ static int __maybe_unused igb_suspend(struct device *dev)
>  	return __igb_shutdown(to_pci_dev(dev), NULL, 0);
>  }
>  
> -static int __maybe_unused igb_resume(struct device *dev)
> +static int __maybe_unused __igb_resume(struct device *dev, bool rpm)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct net_device *netdev = pci_get_drvdata(pdev);
> @@ -9297,17 +9297,24 @@ static int __maybe_unused igb_resume(struct device *dev)
>  
>  	wr32(E1000_WUS, ~0);
>  
> -	rtnl_lock();
> +	if (!rpm)
> +		rtnl_lock();
>  	if (!err && netif_running(netdev))
>  		err = __igb_open(netdev, true);
>  
>  	if (!err)
>  		netif_device_attach(netdev);
> -	rtnl_unlock();
> +	if (!rpm)
> +		rtnl_unlock();
>  
>  	return err;
>  }
>  
> +static int __maybe_unused igb_resume(struct device *dev)
> +{
> +	return __igb_resume(dev, false);
> +}
> +
>  static int __maybe_unused igb_runtime_idle(struct device *dev)
>  {
>  	struct net_device *netdev = dev_get_drvdata(dev);
> @@ -9326,7 +9333,7 @@ static int __maybe_unused igb_runtime_suspend(struct device *dev)
>  
>  static int __maybe_unused igb_runtime_resume(struct device *dev)
>  {
> -	return igb_resume(dev);
> +	return __igb_resume(dev, true);
>  }

Rather than conditional locking which is one of the seven deadly sins of SMP,
why not just have __igb_resume() be the locked version where lock is held by caller?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
