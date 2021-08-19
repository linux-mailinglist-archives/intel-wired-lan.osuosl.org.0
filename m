Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7B93F1CE9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 17:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72218404E5;
	Thu, 19 Aug 2021 15:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OPgRblWl-yC6; Thu, 19 Aug 2021 15:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05498404BD;
	Thu, 19 Aug 2021 15:34:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 353AC1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 15:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2938040198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 15:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jFn8gb4_E5pH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 15:34:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BA3E40151
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 15:34:18 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id q2so4101074plr.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 08:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Yf76Syz4brtNT2TPVq7X0dadrTNOLoFmj1QJaJIiTh0=;
 b=cAJ6RiRT86QPYqR0X26s7mSswyRpVowPuUsENIZx1l6egJXH0ozLyWgnnWjt2u7puP
 UJWhVXiq3RHn27K0KkiDtwEZxSo8ZCNpAIkf0kSPeuy1IelUA66tK+LhJQsoJbFUlVG1
 Ei9sPJmvHZqgJB2/JjS5mTmtWKYnUHZcmpUDn2L4ztjC8CGx47AvJHsDoApVN9uEQI2I
 CU1LH353mENYzuk5uHHyU3JqmU2mU4l0xz02sn8fI5gb2I3pEH4ei18k2xQQSKRT5AG0
 +9sPyqv5HD5VAxy2VxYFz2EKqap3RLoSGSCR1Xelpi/giM9T9y2pe7KsSwZcMNgVa9tX
 1b6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yf76Syz4brtNT2TPVq7X0dadrTNOLoFmj1QJaJIiTh0=;
 b=KP0wvWzPOCvp7HyPC5SLMevuxJBjOvxOW4EsPk6diEc4OIQbfzsAhraiLJodMhHCS3
 cA+0roXeqdbq6/pCOEQP2/3FsHZR8gx7fUwvp/EwenZ0DufIwfJyZ7cNgsAPPfEAAJ8C
 4/em+PtSCIDI+L4TxoyONG5hRFOgeHAWuW5q7qEclt3P4F5npUZmqTkX6pfAxxTGHhDQ
 KGuimBavCx5HG0QtuWDi1RwO0ssdzpm1/KCooStw9dsgCQBDEP7nXs4KtE877hUFfdgI
 HWKs5dbyY4b+x/PVtZvtnFr5G//wKvReMhLpBPsGiaBHErtgHHvbvMwV3rWZX7cgPamY
 T29Q==
X-Gm-Message-State: AOAM5321PGnb44Yusq3tCX198CVolWEofAyi2JYGuINhzs0suljNVF2n
 Eyh+Ax2roHRl0xDGfrIHTH8=
X-Google-Smtp-Source: ABdhPJzyiL3n2Xh1QDko3bDrys5TfB9fCfpwSIu0S/f9HqoWzmiD8ThaywV883OAlAo1goG1/F5lcg==
X-Received: by 2002:a17:902:8c81:b029:12c:ee37:3f58 with SMTP id
 t1-20020a1709028c81b029012cee373f58mr12328918plo.45.1629387257981; 
 Thu, 19 Aug 2021 08:34:17 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id t13sm3532881pjg.25.2021.08.19.08.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 08:34:17 -0700 (PDT)
Date: Thu, 19 Aug 2021 08:34:14 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210819153414.GC26242@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
 <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
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

On Wed, Aug 18, 2021 at 10:36:03PM +0000, Machnikowski, Maciej wrote:

> OK, Let's take a step back and forget about SyncE. 

Ahem, the title of this series is:

    [RFC net-next 0/7] Add basic SyncE interfaces

I'd be happy to see support for configuring SyncE.

But I guess this series is about something totally different.


Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
