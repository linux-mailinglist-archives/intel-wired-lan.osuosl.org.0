Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C03462989
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 02:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B367060DED;
	Tue, 30 Nov 2021 01:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNwb3nyOKLRi; Tue, 30 Nov 2021 01:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C967460D54;
	Tue, 30 Nov 2021 01:17:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9661BF341
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 01:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BD71401D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 01:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOmN6gZTgbpG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 01:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28E8740163
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 01:17:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id CFE3CB80954;
 Tue, 30 Nov 2021 01:17:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F7A4C53FC7;
 Tue, 30 Nov 2021 01:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638235033;
 bh=3FpRATIqkQnI08xkdsG6mZocNgBRuVbPjj2eIgizOD4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RrgFhP0d/1aboXk5eCR4pKRYKm/U7RBwHslyp3yosIdZxOixjwcSCe24rD4Fs+IRA
 pIsPBuXSALLgSBiRpxCdvnXEoXBaQwMhLM5LDoaFYdQqrRwT4mBNLWhcHklNPBvYBv
 4tySe+GWYiM7tV4E87G+haIJ9ZrgWWbqrDuWdh1sjaFvebx5VNDrVRm16cvBPoqrlX
 BOeOKB+ZuIkKUn4Nn1via0SrObs5jkmTqgXDsqfswFn5fvgdwmM4fYVlwyOoNI13cb
 GA3a3valen88n0e8QcCGUBKq7Lnr09gbURs2bLvdckcmqyF+dK+kk1Lptihy+sKNLQ
 w+sHc0HX6cwvw==
Date: Mon, 29 Nov 2021 17:17:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20211129171712.500e37cb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by
 taking RTNL in RPM resume path
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 29 Nov 2021 22:14:06 +0100 Heiner Kallweit wrote:
> -	rtnl_lock();
> +	if (!rpm)
> +		rtnl_lock();

Is there an ASSERT_RTNL() hidden in any of the below? Can we add one?
Unless we're 100% confident nobody will RPM resume without rtnl held..

>  	if (!err && netif_running(netdev))
>  		err = __igb_open(netdev, true);
>  
>  	if (!err)
>  		netif_device_attach(netdev);
> -	rtnl_unlock();
> +	if (!rpm)
> +		rtnl_unlock();
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
