Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FA62771BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 15:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2258D86ABB;
	Thu, 24 Sep 2020 13:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0BITAE06WFX; Thu, 24 Sep 2020 13:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73EA986A75;
	Thu, 24 Sep 2020 13:02:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 778EE1BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 13:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 731F486A57
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 13:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQHI63RcIq_d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 13:02:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A06686A15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 13:02:38 +0000 (UTC)
Received: from [141.14.13.128] (g383.RadioFreeInternet.molgen.mpg.de
 [141.14.13.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2BF8220646203;
 Thu, 24 Sep 2020 15:02:36 +0200 (CEST)
To: Andrew Lunn <andrew@lunn.ch>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <17092088-86ff-2d31-b3de-2469419136a3@molgen.mpg.de>
 <AC6D77B8-244D-4816-8FFE-A4480378EC4C@canonical.com>
 <79f01082-c9b1-f80a-7af4-b61bdbf40c90@molgen.mpg.de>
 <20200923192813.GE3764123@lunn.ch>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <d4c72cf9-930d-7559-9ca8-3336626e29d9@molgen.mpg.de>
Date: Thu, 24 Sep 2020 15:02:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200923192813.GE3764123@lunn.ch>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Power cycle phy on PM resume
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Andrew,


Am 23.09.20 um 21:28 schrieb Andrew Lunn:
>>>> How much does this increase the resume time?
> 
> Define resume time? Until you get the display manager unlock screen?
> Or do you need working networking?

Until network is functional again. Currently, the speed negotiation 
alone takes three(?) seconds, so making it even longer is unacceptable. 
(You wrote it below.)

> It takes around 1.5 seconds for auto negotiation to get a link. I know
> it takes me longer than that to move my fingers to the keyboard and
> type in my password to unlock the screen. So by the time you actually
> get to see your desktop, you should have link.

Not here.

> I've no idea about how the e1000e driver does link negotiation. But
> powering the PHY off means there is going to be a negotiation sometime
> later. But if you don't turn it off, the driver might be able to avoid
> doing an autoneg if the PHY has already done one when it got powered
> up.

Indeed.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
