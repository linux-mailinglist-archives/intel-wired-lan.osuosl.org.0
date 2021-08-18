Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CC13F09D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 19:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A1F360BBE;
	Wed, 18 Aug 2021 17:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7qbAuwYJnx2; Wed, 18 Aug 2021 17:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A699D60BBF;
	Wed, 18 Aug 2021 17:03:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 919AD1BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8732A80EDD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PmUFUTrpllYb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 17:03:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E36A880ED6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:03:03 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 u21-20020a17090a8915b02901782c36f543so9271562pjn.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 10:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1o10C31aHLd2LPSTgzakMlhMfOFkU5VCGEeKjx0nPj4=;
 b=Oz4jx0x5Zs5js4ubmLVJ93OgoPftLIzNNp92aDmbjtmwiIVYKdtH0pl+GeIz+AQ0FK
 BibOcAC7ory9WvtJ6QOdFLKB3llcVylHrLkbIh+ifvxVWPN7Wh7GypJZtZSkLqEB+KN3
 7ywn2EGk8KfSn/eTRUYxWp1wtBCv3V9h0X7pgsiv+LEjtIVglR7AHXrscuQY4wH8IOi0
 lWt48YngVxL+hCU52uoiIfOVzMBZBh1RHv0UjGcsQ1xBjC5Cu1xg93Q0heHzrNFqCAbZ
 w3lV9Qv/DMxxZA+sBNzNWgvh8jPlDh4Od0EGcgsT4HloEnC17JkKXx66t5xZ9NVXRuPU
 Jk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1o10C31aHLd2LPSTgzakMlhMfOFkU5VCGEeKjx0nPj4=;
 b=D5xlGmp+h1cvf4t9UEzpUFFJwhd6AKLh5mjwnNKyTEnq5jVIKOZ/f0QdxLqnV9f60I
 eqSg4uTrZraqei5rDqJ20RhndtNBNoXoHcRc0BsE2YrpuyX6JKFJ0lzKLhnrgAWsO4Ko
 MUHucJr8z9zeJeShouNftHy9RBv7rOBQX/nh381AyOovO8pkRBh9Enwp3LEVoQUT4sxJ
 dGVuZvguv+M20dG0pcFWx61pBnBnlX3+Ha/Kx9+NUrQVRno3Ulx26RHFxBSnMshzq/WN
 iSblbg0DcJz9mN6NQ08zCoqq2TUYVoU+QcEiAOkfSbnIyKnskA3c1d/0w5Uo0eDndwjO
 kdcQ==
X-Gm-Message-State: AOAM5317d99ORZGl4knSgRULgvNpE5bkl+zfjiyyAMibwIo6gT93/1g1
 qpyNZab3X8n7UERWxxa6wyQ=
X-Google-Smtp-Source: ABdhPJzblPlYhVkYncUYxJqGiFndkjCTu6Kjut7fbo8TeEzaUAEhaz7bly4Jv5B7DA/K/0xxbdLOIQ==
X-Received: by 2002:a17:90a:6f61:: with SMTP id
 d88mr10619309pjk.139.1629306183311; 
 Wed, 18 Aug 2021 10:03:03 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id h20sm330192pfc.32.2021.08.18.10.03.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 10:03:02 -0700 (PDT)
Date: Wed, 18 Aug 2021 10:02:59 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210818170259.GD9992@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 17, 2021 at 09:41:49AM +0000, Machnikowski, Maciej wrote:

> The logic behind adding the DPLL state to the PTP subsystem is that SyncE DPLL on Network adapters, in most cases, drive the PTP timer.

So what?  The logic in the HW has nothing to do with the proper user
space interfaces.  For example, we have SO_TIMESTAMPING and PHC as
separate APIs, even though HW devices often implement both.

> Having access to it in the PTP subsystem is beneficial, as Telco
> standards, like G.8275.1/2, require a different behavior depending
> on the SyncE availability and state.

Right, but this does say anything about the API.

> Multiport adapters use a single PLL to drive all ports. If we add
> the PLL interface to the PTP device - a tool that would implement
> support for Telco standards would have a single source of
> information about the presence and state of physical sync.

Not really.  Nothing guarantees a sane mapping from MAC to PHC.  In
many systems, there a many of each.

> Moreover, it'll open the path for implementing PLL state-aware
> ext_ts that would generate events only when the PLL device is locked
> to the incoming signals improving the quality of external TS
> events. I.e. an external PLL can be used to monitor incoming 1PPS
> signal and disable event generation when its frequency drifts off
> 1Hz by preset margins.

I don't see how this prevents using RTNL (or something else) as the
API for the SyncE configuration.

> If we bind it to the Network port, a tool would need to find the
> port that owns the PLL and read the state from a different place,
> which sounds suboptimal.

This is exactly how it works in ptpl4 today.  Some information comes
from the PHC, some from RTNL (link state), some from ethtool
(phc-interface mapping and time stamping abilities).

> Additionally we'll lose ability to rely on external HW to monitor
> external TS events.

Sorry, I can't see that at all.

Please do NOT tack this stuff onto the PHC subsystem just because you
can.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
