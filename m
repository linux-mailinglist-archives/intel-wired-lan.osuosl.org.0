Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D81F3DDB30
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 16:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D8616083B;
	Mon,  2 Aug 2021 14:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9OaSiiGR7_S; Mon,  2 Aug 2021 14:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BA9660813;
	Mon,  2 Aug 2021 14:37:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E96B21BF989
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 14:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D749782BBC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 14:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YAHm7VjpJF2O for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 14:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18FC382BA7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 14:37:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AE55D60FC1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 14:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627915069;
 bh=rjcQFbefs4y8JgCbUFdJmgVkXkThVhcwqF9WjgoJ+Qo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AGjDHM9zoZPQcQ1/pFuwYYKiW7tWnt6cXUBqqRX0DQIFsMIpy4MS+2E2mSMbcyH0/
 uGVd3PF/DEkXYoTs03fpVZDpKfCNCYYIOMS1IeaAObHxH1X0CrcGnfnESnWkDLuE7D
 fGKsdmEmw72k9cxtW3bGaUp1GoUes1itvEl0D/G6SdjUO5rKNFVEBald3rv2D7obxw
 EcMGlTFylFkv3c1lL2I8B+7jMqkQspRafaG37PmQBq/pm5pxzxQRWaWjMmGRCzdvyU
 oz3ogpGHtKb8Yrnsq7fmJCqWcDUgblaStB+jFYjNMPlU1yQu5jL/cyTIbIniUO4fP0
 QYWK9wbWArvmQ==
Received: by mail-wm1-f45.google.com with SMTP id
 e25-20020a05600c4b99b0290253418ba0fbso119405wmp.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 07:37:49 -0700 (PDT)
X-Gm-Message-State: AOAM533iMgAIXAjTFPfPTVWP7zHgM+0Su+98/Lw+yeV//19/iUnwgzEh
 NiudswTQrnopWalwjZhCKP2LnoPvnlRzzdyk6xM=
X-Google-Smtp-Source: ABdhPJz2CjiBj+grqC6TsAgL3UXrYpUYw974570svL7N/F/FFAMi39HARl7wlXhmOQD3aMN8wkEdOY4DSpgmMaDTJJ8=
X-Received: by 2002:a05:600c:3641:: with SMTP id
 y1mr8196846wmq.43.1627915068330; 
 Mon, 02 Aug 2021 07:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210726084540.3282344-1-arnd@kernel.org>
 <BYAPR11MB336781A3C6B41DFFFD838157FCEF9@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB336781A3C6B41DFFFD838157FCEF9@BYAPR11MB3367.namprd11.prod.outlook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 2 Aug 2021 16:37:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3g60Rg5XxEk+DUUy6pSkSw4TDK7R52Sy6zEVba3O6WsA@mail.gmail.com>
Message-ID: <CAK8P3a3g60Rg5XxEk+DUUy6pSkSw4TDK7R52Sy6zEVba3O6WsA@mail.gmail.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "Saleem, Shiraz" <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 2, 2021 at 3:10 PM G, GurucharanX <gurucharanx.g@intel.com> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > The 'imply' keyword does not do what most people think it does, it only
> > politely asks Kconfig to turn on another symbol, but does not prevent it from
> > being disabled manually or built as a loadable module when the user is built-
> > in. In the ICE driver, the latter now causes a link failure:
...
> Tested-by: Gurucharan  G <Gurucharanx.g@intel.com> (A Contingent Worker at Intel)

Sorry for the delay. I had remembered that there was a previous discussion
about that option but couldn't find the thread at first.

I now found
https://lore.kernel.org/netdev/CAK8P3a3=eOxE-K25754+fB_-i_0BZzf9a9RfPTX3ppSwu9WZXw@mail.gmail.com/

and will add Richard to Cc for my new version as well, just in case he
has objections
to this version and wants to fix it differently.

       Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
