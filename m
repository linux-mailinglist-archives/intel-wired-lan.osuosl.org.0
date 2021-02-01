Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A9E30B0AC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 20:45:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB6E385623;
	Mon,  1 Feb 2021 19:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LiqhnaasJzjU; Mon,  1 Feb 2021 19:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 245D185624;
	Mon,  1 Feb 2021 19:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 428121BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 19:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C8EE866C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 19:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmHka86BpXVC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 19:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BAE7C8666E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 19:45:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EEF9164EA8;
 Mon,  1 Feb 2021 19:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612208746;
 bh=Bt2SwOJhVscQlRl7BvleAmRRaOwkfn08bxiTPtNDXxU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aQxGljOO6aGVufZhBC7phwXf0r+zX+r2OOemqI6jlqXNCFu0jcX4ScQNQ2ONqw6/n
 HI41xAJ0oPu8N3GcxLfMTsIN4K8+ZRyF4puzB0ePuuRD/RinSd/UcD7Ot7hVLxGZWR
 jjapcvtIgvlW37tIjP50Ci8zU5OKZVB3q7FCfwt2bi4HejHpWa1SbZHUheRRE/F+eg
 EcFQhtrWXv4N+cc6WLiqnkXClkZEYUIgiMg/Wn9mxmbwkRcKnKV2pnlBOfdh26NIDU
 aGcHGBCjeCjCPKZAaYE/Sz9hQUCAsdOB3fKhPm7v3j3BSLR+dl3F5fHucqiUsG9qBm
 HE0xM2A7RNeIA==
Date: Mon, 1 Feb 2021 11:45:45 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
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
 "linux-wired-list@bluematt.me" <linux-wired-list@bluematt.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "nick.lowe@gmail.com" <nick.lowe@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 1 Feb 2021 18:32:50 +0000 Nguyen, Anthony L wrote:
> On Mon, 2021-02-01 at 08:47 -0800, Jakub Kicinski wrote:
> > On Sun, 31 Jan 2021 18:17:11 -0500 Matt Corallo wrote:  
> > > Given this fixes a major (albeit ancient) performance regression,
> > > is
> > > it not a candidate for backport? It landed on Tony's dev-queue
> > > branch
> > > with a Fixes tag but no stable CC.  
> > 
> > Tony's tree needs to get fed into net, then net into Linus's tree and
> > then we can do the backport :(  
> 
> The behavior looks to have always been since support was introduced
> with f96a8a0b7854 ("igb: Add Support for new i210/i211 devices."). I
> was unable to determine the original reason for excluding it so I was
> planning on sending through net-next as added functionality, however, I
> will go ahead and send this through net and add it to the current
> series that I need to make changes to.

Hm, no need for net if it's not really a regression IMO. Not after -rc6.

Matt, would you mind clarifying if this is indeed a regression for i211?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
