Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA7B27DC7D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Sep 2020 01:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C76784C2A;
	Tue, 29 Sep 2020 23:08:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pP9Yf+GBh9+u; Tue, 29 Sep 2020 23:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C383884442;
	Tue, 29 Sep 2020 23:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 187651BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 22:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1322485DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 22:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-vw96bX59V3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 22:51:04 +0000 (UTC)
X-Greylist: delayed 00:32:43 by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2573D851FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 22:51:04 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id j2so6605014ioj.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=laptop-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f/gWOu1TrRoNXxwTjONo7o5+Ij7ibEG5IfBYm/+HET8=;
 b=E33XYTuKaxFZeZYJMW6eTtEGrlyGXTkwcx/zyYE4FwwLi+COEW+yWd/+0Cf95/WGtY
 gA86BU5Drjiy9diRFKDvzElxjUhLaGUOgLxvPHqm4KrxiVokwNDSCtjIpcES/TpEIpc6
 dVmJeB/tex75y/Bc/sY6UtXa0A77E3dRr5L+1KAoi+AbU1W6Vt9GYfXyFtcOrRf/wp6Q
 D0a6jDjLfVX1kaG9HLQV63nTT6mPqCav4kqlRwsiC9ZYjBegbY+4NXor8wgJHhd2Y461
 EpM2ZClNwNHNBuUJ9Q6GRMia0EL2Pv5QHFBk+FzsVmbnGLFb638dkqk6/2raUfpv9cRX
 /G4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f/gWOu1TrRoNXxwTjONo7o5+Ij7ibEG5IfBYm/+HET8=;
 b=Yb5Wb7mbsgcPy+LRXTI2Fqm702NTi4lzWjVMBQQGkhY5rP+OPdWXuOrlOI/blLBdZt
 fIs0D11/hRQgXWGPogIIMZaRtsD+HLCWTCBqIp79uqmm97GjMTMngeYkl4bp8q+sS80l
 D5Z7iXdjy823PY5SQc5zhV3JqGYQAUG2gXNTq/9tekDP1wOJlXbcapcrOIAJVjbPfSmx
 WkoG2QgIoXfZvnMBucZMHpMQjJ9wqj6VtZQYWgfbqlpjyHoJDBjRTjnlIZu9r+7RfR7x
 yVNb1N027D/jZPWjutOiiqwEOhJNiqs/FoiNQ9IJDQ+ZHDOp5/0O6UgdMdQCbnPy42Tv
 wIQg==
X-Gm-Message-State: AOAM532CnmU1bPoYQzASPSNKK+rZEBHK7fLznPsXXlxQ2LRStjzfEicB
 v3B8mwGLza08ppBWOLmJiqsvNDZcURn5MN7M
X-Google-Smtp-Source: ABdhPJzIeNXHHc94ebLFB9qkrPXXAtz33vlk/UqWEatHhLEUSYCsDM/sIDsnSGbSOH4e+0OMNyZK5g==
X-Received: by 2002:a63:2845:: with SMTP id o66mr4631601pgo.77.1601416387878; 
 Tue, 29 Sep 2020 14:53:07 -0700 (PDT)
Received: from esk ([1.129.134.212])
 by smtp.gmail.com with ESMTPSA id l79sm6516011pfd.210.2020.09.29.14.53.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 29 Sep 2020 14:53:07 -0700 (PDT)
Received: from james by esk with local (Exim 4.90_1)
 (envelope-from <quozl@laptop.org>)
 id 1kNNYV-0004eb-0z; Wed, 30 Sep 2020 07:53:03 +1000
Date: Wed, 30 Sep 2020 07:53:03 +1000
From: James Cameron <quozl@laptop.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20200929215302.GB16571@laptop.org>
References: <20200929202509.673358734@linutronix.de>
 <20200929203502.769744809@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929203502.769744809@linutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 29 Sep 2020 23:08:39 +0000
Subject: Re: [Intel-wired-lan] [patch V2 33/36] net: libertas: Use
 netif_rx_any_context()
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jay Cliburn <jcliburn@gmail.com>, Govindarajulu Varadarajan <_govind@gmx.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, brcm80211-dev-list@cypress.com,
 Stanislaw Gruszka <stf_xl@wp.pl>, Ping-Ke Shih <pkshih@realtek.com>,
 Paul McKenney <paulmck@kernel.org>, libertas-dev@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jon Mason <jdmason@kudzu.us>,
 Martin Habets <mhabets@solarflare.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>, Jouni Malinen <j@w1.fi>,
 Pensando Drivers <drivers@pensando.io>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Pascal Terjan <pterjan@google.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-usb@vger.kernel.org, Daniel Drake <dsd@gentoo.org>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 29, 2020 at 10:25:42PM +0200, Thomas Gleixner wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> The usage of in_interrupt() in non-core code is phased out. Ideally the
> information of the calling context should be passed by the callers or the
> functions be split as appropriate.
> 
> libertas uses in_interupt() to select the netif_rx*() variant which matches
> the calling context. The attempt to consolidate the code by passing an
> arguemnt or by distangling it failed due lack of knowledge about this
> driver and because the call chains are hard to follow.
> 
> As a stop gap use netif_rx_any_context() which invokes the correct code
> path depending on context and confines the in_interrupt() usage to core
> code.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>

Reviewed-by: James Cameron <quozl@laptop.org>

-- 
James Cameron
http://quozl.netrek.org/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
