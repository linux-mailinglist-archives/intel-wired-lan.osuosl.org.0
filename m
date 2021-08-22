Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535233F3D0D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Aug 2021 03:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43DCC4021E;
	Sun, 22 Aug 2021 01:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6yRFmtYpyk2I; Sun, 22 Aug 2021 01:50:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C86A40221;
	Sun, 22 Aug 2021 01:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 010641BF95A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 01:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E18CF40155
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 01:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I5TV9Fetkaqg for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Aug 2021 01:50:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C603540137
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 01:50:39 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id c4so8116641plh.7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Aug 2021 18:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oWp1bCl+FkafN8ehqG1SL+8snffxC7uBzDFP9htK1G0=;
 b=EDsXk0O+yaU/ooYbZDgUp+OQydPSecEWpi1/jVpkgCJW/dnOMhbWGVZ1Ypd8CM9SYM
 CjSb+2+pJAwZSQO5VeeymUWEChwYjinlhBjrPFVIE3Z1uWHlKj4D2sYChyODlzPJ8PtN
 mdNxFgPWKIEmqmERV7Wmd4tlCCYPpEjhrpxYICDRnSoCoRE23hnuLXUwFDY/xwemASUD
 mQ4mfyaBZvWv+SDSDsLsvq3vV6It1okuSMTacA+aH+h8Ykha/V9j3YD54QVvKKgclY4y
 Ar4D/3hNHk4RSPIPfasFrzf1dYHSpEwOEyqgkvc8FLbNpxABPTchc74w+Xk9PAOb6SyN
 4vOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oWp1bCl+FkafN8ehqG1SL+8snffxC7uBzDFP9htK1G0=;
 b=sQCf25s6b8BJ98sKMY+DjjRsB4Ii6WdCr4nbEyVbCTBn07mb62LjMIep+dSKKKmcE6
 +8lVQPqN2B3dyKojHJYesQjltiJbP+LSPrQBW5QvQBZq7RyHP5xFU8Ry7WnaxyKqEXOn
 mu6+6lBS7FVn27wnhcYLJTLfA02O26nHO/lxvzPSS4W75Ow1ZiL5QGk+SPDs//woSPHL
 ldGvFxUmb9irmV4EgWYxNTf0fTMs9Pf8h0gX/zy3atbs2VpWAcqzqlKa3jvMVQMbCMMH
 n4A+xBJrimYDbuNDgSXMiL3/nHWNAMNfwoC702V+v2RerLsf9S7wTE4xB+4KYwrS0G1L
 42RA==
X-Gm-Message-State: AOAM532AGvoASZoQCeRJp366u5W68xVY5CiDLDsNZqc76hCzJf08WkMZ
 VTTH48qqzTzxmuct2M3+JJw=
X-Google-Smtp-Source: ABdhPJx/tnhxP6xZoi5T1FkxGUSKU/5c7OQbRfs54tq3YF8VsW0rc//ElWYFLWb2Ibxemaog9uPggw==
X-Received: by 2002:a17:90a:fa3:: with SMTP id
 32mr12633225pjz.68.1629597039169; 
 Sat, 21 Aug 2021 18:50:39 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id o10sm9699171pjg.34.2021.08.21.18.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Aug 2021 18:50:38 -0700 (PDT)
Date: Sat, 21 Aug 2021 18:50:35 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210822015035.GB4545@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
 <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210819153414.GC26242@hoboy.vegasvil.org>
 <PH0PR11MB4951F51CBA231DFD65806CDAEAC09@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210820155538.GB9604@hoboy.vegasvil.org>
 <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
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

On Fri, Aug 20, 2021 at 06:30:02PM +0000, Machnikowski, Maciej wrote:

> I did a talk at netDev 0x15 covering SyncE - you can refer to the slides for more detailed info, and hopefully the recording will be available soon as well:
> https://netdevconf.info/0x15/session.html?Introduction-to-time-synchronization-over-Ethernet

These slides are very clear and nicely done!

( And they also confirm that (ab)using the PHC chardev ioctl for the DPLL
stuff is the wrong interface ;^)

> The SyncE capable PHY is a PHY that can recover the physical clock,
> at which the data symbols are transferred, (usually) divide it and
> output it to the external PLL. It can also redirect the recovered
> and divided clock to more than one pin.

Right, and as your slides show so clearly, the DPLL is connected to
the PHY, not to the time stamping unit with the PTP clock.

> Since the 40.5.2 is not applicable to higher-speed ethernet which
> don't use auto-negotiation, but rather the link training sequence
> where the RX side always syncs its clock to the TX side.

I really want an interface that will also work with Gigabit and even
100 Megabit like the PHYTER (which does support SyncE).
 
> The external DPLL tunes the frequency generated by a crystal to the frequency recovered by the PHY, and drives the outputs.
> 
> On the other end - the SyncE PHY uses the clock generated by the DPLL to transmit the data to the next element.

So I guess that this is an implementation detail of the higher speed PHYs.

> That's why the RFC proposes 2 interfaces:
> - one for enabling redirected clock on a selected pin of the PHY
> - one for the physical frequency lock of the DPLL
> 
> The connection with the PTP subsystem is that in most use cases I
> heard about SyncE is used as a physical frequency syntonization for
> PTP clocks.

As your slides correctly show, SyncE is about distributing frequency
and not about Phase/ToD.  Of course you can combine SyncE with PTP to
get both, provided that you disable frequency adjustment in the PTP
software stack (in linuxptp, this is the "nullf" servo).  But SyncE in
fact predates PTP, and it can and should be configurable even on
interfaces that lack PHC altogther (or on kernels without PHC
enabled).

> Let me know if that makes more sense now. We could add a separate
> SyncE and separate PTP DPLL monitoring interfaces, but in most cases
> they will point to the same device.

This is just a coincidence of the device you are working with.  The
kernel really needs an interface that works with all kind of hardware
setups.  Imagine a computer with discrete MACs with HW time
stamping/PHC and discrete PHYs with SyncE support.  The PHC driver
won't have any connection to the PHY+DPLL.

Your API must be on the interface/MAC, with the possibility being
handled directly by the MAC driver (for integrated devices) or calling
into the PHY layers (phylib, phylink, and drivers/phy).

If you need a DPLL monitoring interface for your card, it ought to go
through the network interface to the MAC/PHY driver and then to the
DPLL itself.  That way, it will work with different types of hardware.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
