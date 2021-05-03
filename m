Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70595371FB0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 May 2021 20:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFF4784AAE;
	Mon,  3 May 2021 18:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pL-qd2DLEtQC; Mon,  3 May 2021 18:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 068D984A85;
	Mon,  3 May 2021 18:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 761971BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 18:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63CCC60B42
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 18:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n82bfgGK6lbz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 May 2021 18:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD65F606ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 18:30:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CAAE9610FC;
 Mon,  3 May 2021 18:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620066612;
 bh=tw/vJpPLayjdZJ5Xk9/adCcM6F2GJc3VKtrnKbs2xLk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=r7EWQ+h4rBmLwUBYyk5LXA6Fh4F5/jK3jEUCMAprga0WOMaPBvEGYJYSTvNDH66I9
 OhhynYJwIILSx0KS37NrlXcjqCtJcPNl1AT+DOt/bHv3J1MBUxb8LruZgmx6rJ3Hz6
 Pg5IGoNd4pMBjXyXjacDWBpDAmsCDUT2pPa7u2EssNzOBbwlNIiYKdMRdW5H1JFWY3
 W/5Y+M22J7ZOZhjaJjR1BcYkm+CVIwG3OY+D0dcb5jwAT062/0Q4N7OQ69d4LxwvWA
 rn1i9XTSwkaSmOwOuKdUHRnCCNZBXGYTrhIp/3M7RAvLFOpRDWV37dYYdsj37hxMZN
 nKU2PgNiC9a7A==
Date: Mon, 3 May 2021 11:30:10 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Lowe <nick.lowe@gmail.com>
Message-ID: <20210503113010.774e4ca6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CADSoG1sf9zXj9CQfJ3kQ1_CUapmZDa6ZeKtbspUsm34c7TSKqw@mail.gmail.com>
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
 <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
 <20210201123350.159feabd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CADSoG1sf9zXj9CQfJ3kQ1_CUapmZDa6ZeKtbspUsm34c7TSKqw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
 Matt Corallo <linux-wired-list@bluematt.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 3 May 2021 13:32:24 +0100 Nick Lowe wrote:
> Hi all,
> 
> Now that the 5.12 kernel has released, please may we consider
> backporting commit 6e6026f2dd2005844fb35c3911e8083c09952c6c to both
> the 5.4 and 5.10 LTS kernels so that RSS starts to function with the
> i211?

No objections here. Please submit the backport request to stable@.
https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
