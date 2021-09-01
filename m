Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3712B3FD0F8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 03:58:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B5DC400BB;
	Wed,  1 Sep 2021 01:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u02YkCZXc94q; Wed,  1 Sep 2021 01:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C3D3400C3;
	Wed,  1 Sep 2021 01:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 373F81BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 01:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B51E6060C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 01:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8SydC6T2jLv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 01:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E28366060B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 01:58:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1223D61057;
 Wed,  1 Sep 2021 01:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630461505;
 bh=TRDfaY62oSVS+E5EgOaLRv1XHlM4Egv+xhPBm6XVKIE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mNWpQHNO8Kic/1zNCOl2iAcZPzO/KLVdzSXBZNXr3YL2Yor/uSID4/XI9uiutL9ws
 9QOsou5HaFGu323xq5qZYzTZ+NXimUMcZLvkKF3ndWqqmPrEIVW3kgT4nBODhRzl4x
 +fGnmDMxHZsnn7+TeoL37KuYpJRRQvLmsueBNzAkGHC1mVjsTyzvJXnD9CTraxGB5v
 BDVKS9NEHp1edBknIOVfgIAy/7AcVYri6hnvWj9VOOwWAnVny4jWcPkzoKbc8I+/08
 x8kN6ottCjsfHe1arGtHk0buxDF4X743XiEw+Qf6rSUaXtxpMgPfxk+zvyInL1MyeU
 QS8bpoDVcA8Uw==
Date: Tue, 31 Aug 2021 18:58:24 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Richard Cochran <richardcochran@gmail.com>
Message-ID: <20210831185824.5021e847@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210831161927.GA10747@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210831161927.GA10747@hoboy.vegasvil.org>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: bsd@fb.com, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 31 Aug 2021 09:19:27 -0700 Richard Cochran wrote:
> As you said later on in this thread, any API we merge now will have to
> last.  That is why I'm being so picky here.  We want new APIs to cover
> current HW _and_ be reasonable for the future.
> 
> I don't see a DPLL as either a PTP Hardware Clock or a Network
> Device.  It is a PLL.
> 
> The kernel can and should have a way to represent the relationship
> between these three different kind of IP block.  We already have a
> way to get from PHC to netdev interface.

Makes sense to me. I was wondering how to split things at high level
into the areas you mentioned, but TBH the part I'm struggling with is
the delineation of what falls under PTP. PLL by itself seems like an
awfully small unit to create a subsystem for, and PTP already has aux
stuff like PIN control. Then there's the whole bunch of stuff that Jonathan
is adding via driver specific sysfs interfaces [1]. I was hoping the
"new API" would cover his need but PLL would be a tiny part of it.

IOW after looking at the code I'm not so sure how to reasonably divide
things.

[1]
https://lore.kernel.org/netdev/20210830235236.309993-1-jonathan.lemon@gmail.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
