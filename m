Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1214A3DE359
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 02:03:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AF296FB4B;
	Tue,  3 Aug 2021 00:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFEvUERuA6rC; Tue,  3 Aug 2021 00:03:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E8DD6FB47;
	Tue,  3 Aug 2021 00:03:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF2211BF9AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 00:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC06C4015D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 00:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 119HI-W8bhvS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 00:03:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F270B400A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 00:03:07 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 dw2-20020a17090b0942b0290177cb475142so1395152pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 17:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8/q4C1bwlgB68t92asml5IhaRoB/GuHV7IviWSKcBGg=;
 b=pkgId/O8dOIgWQYV8LeIUsXWg43hnj4kmjrpusRJEDNgZwVoexR9fJ98vVjyvgdhLN
 i8OEihmGulpvailYIIeNRw0uxqGbAih/BzzL6rJi9qmrX7NiGRkqFs32NPepZIEazcou
 8TTpJKyEyTOYWs8ceLjCHwf2FIel9exgSwN3ZchQgbBqrE2SP61yUB2t1UcP1WByekvd
 KqezjOqH96akdkIXiJvQ9ElJ8kDqK1+HZYVh3r/fczOQsgAnleUaLp/s4hEg2men0Z0F
 FMSXlykixNY5opLFE81fp40kYdP2aNuKtDo5sWOro4ZUYokgvWWJ8RUTZ5iPj60fCueE
 nbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8/q4C1bwlgB68t92asml5IhaRoB/GuHV7IviWSKcBGg=;
 b=YWbwoCi/mbxd5XKf7OtwbFoMyONpbqh6VsBh+CW2vL9zcdYraJuFkTRixTV4BTRCUw
 7y42KrpRccm5JG4eJwQ+OYZBn7febHKC02CkiVNri1hYjEVRlii1OYLc5yK/Y1FjljFE
 uZriyGlY8I/PKcIzvT0QoAjOtOZkj1eUxmESRRrLrua4HwZS1lq+mRKh8QqosXyspBUK
 36Kdp2wVGUY3YS0oMTBoONza88wAQK450Sanjv96XDU8jfaoWutVkuB9mVMvKaOkccox
 FQwZdYGvj6xBeJogeoMB2qC78PBZFO4DTDM6SGm60JBVyOJvVGoUzml9cnzaBW6m/QdJ
 VFOw==
X-Gm-Message-State: AOAM532OR3pV49RzadSeBXyYtCYBDWtHBRcOXA7ci7KKI7JoePRECx+c
 v+GwuLRDMLZoFjMZiUgo/hE=
X-Google-Smtp-Source: ABdhPJy5vhcjJPVyM5rzN3CyVwIuiVCNmYRHO+711Nw8B8gB1aaeoc3HF06VT9Ak/yKjNyW72SemGA==
X-Received: by 2002:a05:6a00:1390:b029:32a:e2a2:74de with SMTP id
 t16-20020a056a001390b029032ae2a274demr19136371pfg.6.1627948987452; 
 Mon, 02 Aug 2021 17:03:07 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id r3sm11683878pjj.0.2021.08.02.17.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 17:03:06 -0700 (PDT)
Date: Mon, 2 Aug 2021 17:03:04 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20210803000304.GA19119@hoboy.vegasvil.org>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CO1PR11MB508917A17F68DD927CD26A82D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB508917A17F68DD927CD26A82D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Arnd Bergmann <arnd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 02, 2021 at 11:45:09PM +0000, Keller, Jacob E wrote:
> Ok, so basically: if any driver that needs PTP core is on, PTP core is on, with no way to disable it.

Right.  Some MAC drivers keep the PTP stuff under a second Kconfig option.

IIRC, we (davem and netdev) decided not to do that going forwards.  If
a MAC has PTP features, then users will sure want it enabled.

So, let the MACs use "depends" or "select" PTP core.  I guess that
"select" is more user friendly.

And Posix timers: never disable this.  After all, who wants an
embedded system without timer_create()?  Seriously?

Thanks,
Richard


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
