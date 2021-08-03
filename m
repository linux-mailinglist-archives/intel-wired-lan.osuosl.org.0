Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EB73DF4BC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 20:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3600B404DB;
	Tue,  3 Aug 2021 18:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oj_Y5vWYsFjU; Tue,  3 Aug 2021 18:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F4D1404AF;
	Tue,  3 Aug 2021 18:27:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B5021BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 18:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62DC26061A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 18:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0f-skWbbaatX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 18:27:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2402605B7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 18:27:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BF5B60F48
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 18:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628015251;
 bh=b5coXSNVumOlwboi0Y8EY/7mMzZofAt1yR97rrjEWuo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EnOniVccHYcbPUOoldYN5TcX8f3C+JRnuXOHZxWbtWJMY1Ak5Rft8Yu9IVWd25mIX
 iudADck47r7/bo4UFcQvUYnq8hgDIIjzrESTJ2ktslvjw9WlMl0U28hVWKLw//VWBu
 d1HQGlOXqV5jyTRfDykOOCsp1cM4DsXuauWnSHlIWKyLmujnwW7Gg7191OH5tv9Ysa
 r6GOfrOdkaj5I9PQoVYzh6TzMNLgh8Feahn8l0jBdxFecoTVsgKs5oI/+U3jfHaBUZ
 e/xx8m2hml8eTRRgpcXieQrEUdQnt/C/QMfdHCIeBhVM3y7czlpbR6cVa19JB2U3FE
 Bn+jkASbimQIA==
Received: by mail-wm1-f53.google.com with SMTP id
 e25-20020a05600c4b99b0290253418ba0fbso2685677wmp.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Aug 2021 11:27:31 -0700 (PDT)
X-Gm-Message-State: AOAM5305HREPKpPpk8vDsMewVHmnLEHgX1u62UV9Y5Azk//XIpaPnT7y
 vSv9+aVl+tP7EZTU0/XaApKRSAlpqEg0dwMw/I4=
X-Google-Smtp-Source: ABdhPJyjyh5NW4HNDbY103glgZvlOfMtw6fuLPusi+3xAq38xsO4vRLS5MKwwQ0mEBFcXf8KsEzBXD0TMoyA7M3oU3E=
X-Received: by 2002:a05:600c:414b:: with SMTP id
 h11mr5573870wmm.120.1628015250107; 
 Tue, 03 Aug 2021 11:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
 <20210803155556.GD32663@hoboy.vegasvil.org>
 <20210803161434.GE32663@hoboy.vegasvil.org>
 <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
 <CO1PR11MB50892EAF3C871F6934B85852D6F09@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB50892EAF3C871F6934B85852D6F09@CO1PR11MB5089.namprd11.prod.outlook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 3 Aug 2021 20:27:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com>
Message-ID: <CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 3, 2021 at 7:19 PM Keller, Jacob E <jacob.e.keller@intel.com> wrote:
> > On Tue, Aug 3, 2021 at 6:14 PM Richard Cochran <richardcochran@gmail.com> wrote:

> There is an alternative solution to fixing the imply keyword:
>
> Make the drivers use it properly by *actually* conditionally enabling the feature only when IS_REACHABLE, i.e. fix ice so that it uses IS_REACHABLE instead of IS_ENABLED, and so that its stub implementation in ice_ptp.h actually just silently does nothing but returns 0 to tell the rest of the driver things are fine.

I would consider IS_REACHABLE() part of the problem, not the solution, it makes
things magically build, but then surprises users at runtime when they do not get
the intended behavior.

      Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
