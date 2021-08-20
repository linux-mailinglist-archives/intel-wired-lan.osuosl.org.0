Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356153F3047
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 17:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A5FA40105;
	Fri, 20 Aug 2021 15:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gdHqZuSanA72; Fri, 20 Aug 2021 15:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 310A9406D0;
	Fri, 20 Aug 2021 15:55:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46ACE1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 15:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32CCD80F11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 15:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHMKwSUP5mGb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 15:55:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 727D980ED8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 15:55:42 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id y190so8979142pfg.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 08:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MIoupKU3Moruzsm8QPKL5bg4Lip5l5y1B47NuZC/4IM=;
 b=r+PvnCwYImSiC3Nut0xm3m3wb4UrN969SsszBr9JKgB77hlBUNTQNyfL6roOkkOGRa
 KrBKP9+u4YE7Ktfu/AAprpCxD5Yxi9YNuiDNBsGi7iHpzasmrGfQ6JmV4o1AL+IFHzNc
 JzQU5IOIFznyFiNTx+N5FPFBFbPh50YpyRsWSimyeF/56PotRBuV7PTrZVwYD1+GyhPv
 boxGSl6k1FfmQCZ7qUDKTxwcBYb8LhG393aAuVYqWgs/wN9/O2qwT+mHojzrfu4+5shE
 dd6+hsApWdJ6Iwz6PF0weL9bsbojahtIhj2aOxhIYjZE/fg49rq5CWwNKQhdbA+R7mAO
 hr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MIoupKU3Moruzsm8QPKL5bg4Lip5l5y1B47NuZC/4IM=;
 b=TgtmKk+ibpLaOiE28BblHPYqbzlexavI6Z4VpX6oTtMitcWTAP8eGHIHqKt52uUYEX
 nCj5DBXHORhgFVIycbKKKf0V0w+NjoxtACSKOB2X2eJ5kGgnqLKMoUY2YCLgNDHVMJms
 9ij9pOPglax/1Z0eiQiiAyyEQeTb2ATu+wlmgYSSuVqONb80Db8GlgnMXsEiOCDod30v
 TbBB+nyyOUJid9gTytmsrkE0NuSrwlQytLBDA2WqwCCJzeCTHSmra54w6Y/6Ri5k1Fki
 gYnz4CjV63swdStF9CMlosCGwzlZ4cHlUtCLN0hl3yCCfwrVg6kTauqT+azlymiYElFw
 IcOw==
X-Gm-Message-State: AOAM532Cb6H/vnfrkGKJ/T3TEbTJPChWq+Xaff1oiNCmvjq5l/TLLl+H
 nVbVluHDRXZwiRaaWahrIBo=
X-Google-Smtp-Source: ABdhPJzRSioBxgzRHifQYGk7LPxW9/eAyxuZnBnOOY1SstliQrJ2oxeWZsCv7JeKODoMIZGifx1H3g==
X-Received: by 2002:a62:154b:0:b0:3e2:c15d:f173 with SMTP id
 72-20020a62154b000000b003e2c15df173mr16637025pfv.9.1629474941955; 
 Fri, 20 Aug 2021 08:55:41 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id p15sm7632095pff.14.2021.08.20.08.55.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 08:55:41 -0700 (PDT)
Date: Fri, 20 Aug 2021 08:55:38 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210820155538.GB9604@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
 <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210819153414.GC26242@hoboy.vegasvil.org>
 <PH0PR11MB4951F51CBA231DFD65806CDAEAC09@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB4951F51CBA231DFD65806CDAEAC09@PH0PR11MB4951.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>, "Stanton,
 Kevin B" <kevin.b.stanton@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bross,
 Kevin" <kevin.bross@intel.com>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, Ahmad Byagowi <abyagowi@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 19, 2021 at 03:40:22PM +0000, Machnikowski, Maciej wrote:

> If it helps we'd be happy to separate that in 2 separate RFCs.

It would help me if you could explain the connection.  I have a
totally different understanding of SyncE which I explained here:

   https://lore.kernel.org/netdev/20150317161128.GA8793@localhost.localdomain/

So you need to implement two things, one in kernel and one in user
space.

1. Control bits according to IEEE 802.3 Section 40.5.2 as Ethtool or RTNL.

2. User space Ethernet Synchronization Messaging Channel (ESMC)
   service according to IEEE 802.3ay

The PHY should be automatically controlled by #1.

As I said before, none of this belongs in the PHC subsystem.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
