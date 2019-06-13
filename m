Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E7B44BD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 21:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0141882EB;
	Thu, 13 Jun 2019 19:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9iLEIxburi5; Thu, 13 Jun 2019 19:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF7A9882BE;
	Thu, 13 Jun 2019 19:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1C21BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 19:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5631F21539
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 19:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H4RN3VfQQtM7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2019 19:04:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 980D421532
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 19:04:18 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id a15so23842789qtn.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 12:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=4tPzVQ5P5MhF+Kdaq2kPYhAcGvrTr3/WWcquKgZjznM=;
 b=N5EwqmqbPIqA1i2J3VIBiuj5vtDH9rzezPrMnoeH2fUJ+bnxWQ2srC+FH9KRub/QSl
 /F0i00Xyom57mxb9NPo4ah2+dnJXTT0i3vNzgcDeHi9a37dB7nLJhK/zsv79QhQ3XpVc
 ESFTv0u6AP6eAdFROsOAu1bgPKJ5MHBX2DJjflzAaHZ8N+yx4TXBKmiuPsZq4rFH14l/
 pyM4k+iJhaF4C1rtBbNzhGD1UO699nzbHX7hZdWQeajLgUhXi61/kzD680AgoK7enRQr
 7oxYhZHflTCbDFAE4A9n7xK7sDjpy5A1ZQ48uepZlevOjKDYU2tReYspjuetnPGWfexB
 s7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=4tPzVQ5P5MhF+Kdaq2kPYhAcGvrTr3/WWcquKgZjznM=;
 b=sNbZXSHe2HpDtdY6v3brCuz+iF7IgaEnJ59i2MvCu7NQ6Wa/StLvRtoxiPzn3uYw1m
 UWx6kjFiw4FuVWnLFGNI28/K239PMV8IHOrBLXsnQiQ6GSqbTmDTXYsaUWcaYvWDqQKH
 ftz+MvuQSgdhod6U4CQqUveIAs5yHPGRFzOJSl8f2s4MMMxfR78ZqrZeYK4uDzUEnDV+
 N4+USixWvSePxMyMa1gGdrKS6kg7/AG665b6M49ljchKp6mkwSddeVQhdI+hmwgLQXSI
 N3RghFsp5uOPWliVJjsoFat9sjRs0c+k38IK3JlbuC3PPa+vtNUGSCJkNU/m5kDSN8ix
 jJOw==
X-Gm-Message-State: APjAAAUQqWoNL1RKxM2+gjodBCc15hpWTKSF/mZL+ZHe8EypUN74DzGC
 r44ACXSXML+//4rGj0atUF7fhA==
X-Google-Smtp-Source: APXvYqxAR5fh4yeOZq8Kt8Zse+cnVD7bFzFeruCBV7CQ3HI+LByJcpCxC3e1eSVuD5u2o4ZXsBUEKA==
X-Received: by 2002:a0c:b0ce:: with SMTP id p14mr4870955qvc.51.1560452657612; 
 Thu, 13 Jun 2019 12:04:17 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id b5sm228764qkk.45.2019.06.13.12.04.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 12:04:17 -0700 (PDT)
Date: Thu, 13 Jun 2019 12:04:11 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Magnus Karlsson <magnus.karlsson@intel.com>
Message-ID: <20190613120411.35ef3c52@cakuba.netronome.com>
In-Reply-To: <1560411450-29121-3-git-send-email-magnus.karlsson@intel.com>
References: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
 <1560411450-29121-3-git-send-email-magnus.karlsson@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 13 Jun 2019 19:11:59 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/6] xsk: add support for
 need_wakeup flag in AF_XDP rings
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 maciej.fijalkowski@intel.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, bpf@vger.kernel.org, bjorn.topel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 13 Jun 2019 09:37:26 +0200, Magnus Karlsson wrote:
>  
> -	if (!dev->netdev_ops->ndo_bpf ||
> -	    !dev->netdev_ops->ndo_xsk_async_xmit) {
> +	if (!dev->netdev_ops->ndo_bpf || !dev->netdev_ops->ndo_xsk_wakeup) {
>  		err = -EOPNOTSUPP;
>  		goto err_unreg_umem;
>  	}

> @@ -198,7 +258,8 @@ static int xsk_zc_xmit(struct sock *sk)
>  	struct xdp_sock *xs = xdp_sk(sk);
>  	struct net_device *dev = xs->dev;
>  
> -	return dev->netdev_ops->ndo_xsk_async_xmit(dev, xs->queue_id);
> +	return dev->netdev_ops->ndo_xsk_wakeup(dev, xs->queue_id,
> +					       XDP_WAKEUP_TX);
>  }
>  
>  static void xsk_destruct_skb(struct sk_buff *skb)

Those two look like they should be in the previous patch?  Won't it
break build?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
