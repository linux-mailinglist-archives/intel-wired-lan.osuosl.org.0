Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC2445951
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 19:09:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32B914040B;
	Thu,  4 Nov 2021 18:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xF3qpx60-xxb; Thu,  4 Nov 2021 18:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05A3B40361;
	Thu,  4 Nov 2021 18:09:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D34B11BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 18:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBC5260703
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 18:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OjdPmzXIIQav for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 18:08:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50F12606F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 18:08:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9208B611C3;
 Thu,  4 Nov 2021 18:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636049336;
 bh=xnNcXcazwQwUlo5RPHBcBCT74SiT22kEneLRSZIj/FQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Tba14w+sKLD/aZF8PYdg0l92q+C+lx5K1JeX0grlk3OxVCjy6x6x7mJRtWA94BiMm
 vJen6WSh/YoC/2VRRSXlDRIzivYTN0/AVJCHUBOb1x60r6W+mZ3avmSizsuionzgva
 2LI+YVnx+FaoLOarVK3iFJAVSAEzgVBWDz+M7ZKQdoLoEr4jW/8kF7R6vXjecFtxlc
 4GwE507rYzZZ9CzXe3UzWYDVOfPA5NkZgvFb0Yt31vCpwVh/hEV+wAuUi/qyQXNgF+
 XpKYtJGP5IBBpoJhMjlD/J5FMLO1JFA82knblenO2WNNFTubNCSf4tGjubWSIjW8rM
 zVAtHaXBLWUNg==
Date: Thu, 4 Nov 2021 11:08:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20211104110855.3ead1642@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211104081231.1982753-7-maciej.machnikowski@intel.com>
References: <20211104081231.1982753-1-maciej.machnikowski@intel.com>
 <20211104081231.1982753-7-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, saeed@kernel.org, netdev@vger.kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  4 Nov 2021 09:12:31 +0100 Maciej Machnikowski wrote:
> +Synchronous Ethernet networks use a physical layer clock to syntonize
> +the frequency across different network elements.
> +
> +Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
> +Equipment Clock (EEC) and can recover synchronization
> +from the synchronization inputs - either traffic interfaces or external
> +frequency sources.
> +The EEC can synchronize its frequency (syntonize) to any of those sources.
> +It is also able to select a synchronization source through priority tables
> +and synchronization status messaging. It also provides necessary
> +filtering and holdover capabilities.
> +
> +The following interface can be applicable to diffferent packet network types
> +following ITU-T G.8261/G.8262 recommendations.

Can we get a diagram in here in terms of how the port feeds its
recovered Rx freq into EEC and that feeds freq of Tx on other ports?

I'm still struggling to understand your reasoning around not making 
EEC its own object. "We can do this later" seems like trading
relatively little effort now for extra work for driver and application
developers for ever.

Also patch 3 still has a kdoc warning.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
