Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3E73DF245
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 18:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BBC683506;
	Tue,  3 Aug 2021 16:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c5GxpLME4eMn; Tue,  3 Aug 2021 16:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 300A181AF4;
	Tue,  3 Aug 2021 16:14:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE5831BF868
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 16:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E91E4402C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 16:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yx4FscaFf04z for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 16:14:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70E1940271
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 16:14:38 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id u16so15784368ple.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Aug 2021 09:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E9dbUJDad8OiM9R3ggYpWCXMN+1fcOESzDIg2KJQygw=;
 b=DXb1TeufSEOKzA1N8WwwJgNTA95J9va75S/3IZ1UmG4lb1BCe1SX7mW2nTIWgWHvIp
 haLoj13+rka/QsRm9dtIcjP3Q6ICjbi0VZwwEsWARisrhmKJKhku4HKRLDmzksA7GB7J
 BiIVSAo2zCKyiv8NDcS8PslY1pq4GMKTDEkxn/TQimOqOvh8vwDDNzPKXhZCd47F3mDA
 fQYVucAuQP8buLmOP6fkGFNCVwzG7vWWO+ZBSq2jROFSTVzGRAquHYkBgmuTK6V7UEKU
 4zhc48KTyOpUSjn8skQ6LWN8uWfELZ9eYOwXg0cFWLhGun8NamGjNOX6GDp9NNCy5Gt+
 Qfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E9dbUJDad8OiM9R3ggYpWCXMN+1fcOESzDIg2KJQygw=;
 b=R99JNaoDthGwq/j/nz6r0/UlWE7y6T8FCpQ4Ks19jg0rNqIL5WNw5V7fkPj4vCHrJI
 ldPtxSRGJ2C2RcWHxWYNMnHx0cpn2YyjMg+0ftwtYyVz7mYLGI/IdY7d0l1jrB0js75R
 vwTc6GKvcCGqPxQ4hcohHa2ThbmQlW7BJHoBhKRQIXSfhnCiwl9BVSLQaz+2DjfofOtV
 TtkHtNxxffJGpcVdt8J8QwlQfEhUNwAbF24z+sBVJDyuHTcXqbHHFLGabFWkWF2e1lhu
 CIfR2XW1+zMPuiPJwo5Pwbs8gnFRGRLtJQFFpZYlT5bsfVyLKLh2iG70aSmzSW7NpnKj
 SK3g==
X-Gm-Message-State: AOAM531K3JFrPKeEC3xUW4n0HEWX2lxTl8b1tC2+lVYlcqTCOf8uTckW
 7hD6YS3DoBqm8FfBa1SHAzM=
X-Google-Smtp-Source: ABdhPJxVcHpsP99XpPOvvXRfpcDZM8Dnodn7xITd7SwrzdMcSWsPw5ipwGU/7tr/vJQZGRcWCj6LPA==
X-Received: by 2002:aa7:99c1:0:b029:39a:56d1:6d43 with SMTP id
 v1-20020aa799c10000b029039a56d16d43mr22828297pfi.58.1628007277881; 
 Tue, 03 Aug 2021 09:14:37 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id t8sm18482127pgh.18.2021.08.03.09.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 09:14:37 -0700 (PDT)
Date: Tue, 3 Aug 2021 09:14:34 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20210803161434.GE32663@hoboy.vegasvil.org>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
 <20210803155556.GD32663@hoboy.vegasvil.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210803155556.GD32663@hoboy.vegasvil.org>
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
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

On Tue, Aug 03, 2021 at 08:55:56AM -0700, Richard Cochran wrote:
> On Tue, Aug 03, 2021 at 08:59:02AM +0200, Arnd Bergmann wrote:
> > It may well be a lost cause, but a build fix is not the time to nail down
> > that decision. The fix I proposed (with the added MAY_USE_PTP_1588_CLOCK
> > symbol) is only two extra lines and leaves everything else working for the
> > moment.
> 
> Well, then we'll have TWO ugly and incomprehensible Kconfig hacks,
> imply and MAY_USE.
> 
> Can't we fix this once and for all?
> 
> Seriously, "imply" has been nothing but a major PITA since day one,
> and all to save 22 kb.  I can't think of another subsystem which
> tolerates so much pain for so little gain.

Here is what I want to have, in accordance with the KISS principle:

config PTP_1588_CLOCK
	bool "PTP clock support"
	select NET
	select POSIX_TIMERS
	select PPS
	select NET_PTP_CLASSIFY

# driver variant 1:

config ACME_MAC
	select PTP_1588_CLOCK

# driver variant 2:

config ACME_MAC

config ACME_MAC_PTP
	depends on ACME_MAC
	select PTP_1588_CLOCK

Hm?	

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
