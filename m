Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D68464546
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 04:09:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AAC9402B2;
	Wed,  1 Dec 2021 03:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PslAOqsiWxbz; Wed,  1 Dec 2021 03:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86ED4402A3;
	Wed,  1 Dec 2021 03:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7202D1BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 03:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F7CB605FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 03:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zouu3AzSbhSr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 03:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4BFB60591
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 03:09:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DB23AB80D60;
 Wed,  1 Dec 2021 03:09:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B04C53FCC;
 Wed,  1 Dec 2021 03:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638328167;
 bh=lwLCqyAnfFMpSY98Obo0M9K79bb8rX1EcoFWZxOrSK8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DdkPMLmiU2x/t3ruorIwY+sAkdhYM1Gd2WtoJMaDVhKM/CxJm5ue2HDsrEEqFH+br
 2/DN0UB83YCOiU+Brjlze6L2JvTYDvPqOKdLIKzs8NnhNMPO/4CcK2bLu9GlxgH9Bv
 iAIOvvQafkMG2ketjzGjyXlgtC7vsVTR6zOBgtUab7PldTWAzsrnkG5SBE4acJYTd1
 Al6U2FsHM+9FpTVtSDavQve0Bqz8F3lvUX1XPufv0vvMZFhLmZbqa59XF3HXy16Thx
 LPrUxCtIZv90IFqZHPGX05dHZZJFADEW258zT+uT0OlgRrQsUtMjnV1LrblnkXhQ9I
 KkpiDbPsOYKbA==
Date: Tue, 30 Nov 2021 19:09:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Hayes Wang <hayeswang@realtek.com>
Message-ID: <20211130190926.7c1d735d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
 <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/4] r8169: support dash
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 nic_swsd <nic_swsd@realtek.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 1 Dec 2021 02:57:00 +0000 Hayes Wang wrote:
> Jakub Kicinski <kuba@kernel.org>
> > Sent: Tuesday, November 30, 2021 2:00 AM
> > Subject: Re: [RFC PATCH 0/4] r8169: support dash
> > 
> > On Mon, 29 Nov 2021 18:13:11 +0800 Hayes Wang wrote:  
> > > These patches are used to support dash for RTL8111EP and
> > > RTL8111FP(RTL81117).  
> > 
> > If I understand correctly DASH is a DMTF standard for remote control.
> > 
> > Since it's a standard I think we should have a common way of
> > configuring it across drivers.  
> 
> Excuse me. I am not familiar with it.
> What document or sample code could I start?
> 
> > Is enable/disable the only configuration
> > that we will need?  
> 
> I don't think I could answer it before I understand the above way
> you mentioned.
> 
> > We don't use sysfs too much these days, can we move the knob to
> > devlink, please? (If we only need an on/off switch generic devlink param
> > should be fine).  
> 
> Thanks. I would study devlink.

I'm not sure how relevant it will be to you but this is the
documentation we have:

https://www.kernel.org/doc/html/latest/networking/devlink/index.html
https://www.kernel.org/doc/html/latest/networking/devlink/devlink-params.html

You'll need to add a generic parameter (define + a short description)
like 325e0d0aa683 ("devlink: Add 'enable_iwarp' generic device param")

In terms of driver changes I think the most relevant example to you
will be:

drivers/net/ethernet/ti/cpsw_new.c

You need to call devlink_alloc(), devlink_register and
devlink_params_register() (and the inverse functions).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
