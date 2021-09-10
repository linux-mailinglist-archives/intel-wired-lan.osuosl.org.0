Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25756406D66
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 16:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8D224074D;
	Fri, 10 Sep 2021 14:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgoWframXNVe; Fri, 10 Sep 2021 14:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB425407AB;
	Fri, 10 Sep 2021 14:14:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B36A1BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 14:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47E6640640
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 14:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otGhKCimspJf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Sep 2021 14:14:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 960BA4022C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 14:14:27 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id w7so1911513pgk.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 07:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oe4VM1UblhS5+gJIFks4ik7gcc8ov9uDrnYIOA6m+LI=;
 b=pQ28E8z4ROEJSjDnjaoXfmDVQXV+FaMJ7j2Ao9Iv3Bg8H1ySc3TbHpE/Dp0THKY7x2
 FrtiekEFA/I87Ge2nyQ+09Xp2IjGeGuIbHNwymknYxUt8d8rzXTXEKZQWZMF/wfyq2SE
 Pjo6xH7sf5BBHszizp5nykKOB8QNZCDsn6x5lcFHDdUkh+95IYtjPmWz4E1FF4mcFGFQ
 5Do9ewuzSPURZXaUEqd4gCNnQ7eJp7atvGmqGwg8jVnPBoTbajC1PhtUf04LhdWUzGgM
 j4i+9JD/g3SDsWQd0nv7GZER8nywgTRdPdUJwMKLlnYyH+6z5bxezv3tkpZ25Ea4rIhI
 nhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oe4VM1UblhS5+gJIFks4ik7gcc8ov9uDrnYIOA6m+LI=;
 b=ggrcUc9umhbW5Ag0qLwT63kLQlqjzXRceypjwIWYrApL1g+pwVgDre8eeqzHEACQtg
 9VDd19siCGNFwxpu2C/AezF2dME0Vggz/CG04hs72ESY+2QR8hDOAmQolwN/Hq/67i8H
 TsBBPJnLi1r3jxdnvy2gH919AINY/jHgnMfzzrj+yYvSLC28NBLSnzlHoW363xIGPyFq
 fTQhAkgOb/DS/HxTVZjJ/nA3B3gy+LzZ87jtLgNFJ619792YwAZ+32ZdIJjw3xUnIRqI
 9182V0K8buAdywGrvvTNoAFm0rVrAqbzWqL0RF7Zc7WklHI7O9Ry9d++W6C6XyFwONjT
 AjGA==
X-Gm-Message-State: AOAM533mdt52kVE7IALB6w8D10MbAZTMhJkgt5dHY7fVWwD75gLXFiT/
 EhZQTYdVJBhR2GutD329MlM=
X-Google-Smtp-Source: ABdhPJwOzKr8hK79NXiiFvMDuPJ5QyQWRVMQ+Hpt1ZMMluuVorlghIuaTIVRcqzGrXZQ3vlrka44rA==
X-Received: by 2002:a63:131f:: with SMTP id i31mr7547782pgl.207.1631283266990; 
 Fri, 10 Sep 2021 07:14:26 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id a15sm5474422pgn.25.2021.09.10.07.14.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 07:14:26 -0700 (PDT)
Date: Fri, 10 Sep 2021 07:14:23 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210910141423.GA21865@hoboy.vegasvil.org>
References: <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <YTkQTQM6Is4Hqmxh@lunn.ch>
 <20210908152027.313d7168@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YTlAT+1wkazy3Uge@lunn.ch>
 <20210909020915.GA30747@hoboy.vegasvil.org>
 <PH0PR11MB49515C4ACE9BAD7BD9172825EAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB49515C4ACE9BAD7BD9172825EAD59@PH0PR11MB4951.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 Saeed Mahameed <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ido Schimmel <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 09, 2021 at 08:18:10AM +0000, Machnikowski, Maciej wrote:

> Controlling the clock that actually drives any components (PHY/MAC) in
> runtime can be a good way to brick the part.

I didn't say that.

> I feel that, while the reuse 
> of structures may be a good idea, the userspace API for clocks is not. 
> They are usually set up once at the board init level and stay like that "forever".
> 
> The outputs we need to control are only a subset of all of them and they
> rather fall in the PTP pins level of details, rather than clock ones.

clk-gate.c
clk-mux.c

Making that available for user space to twiddle is a better way that
tacking on to the PTP stuff.

You can model your device as having a multiplexer in front of it.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
