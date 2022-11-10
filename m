Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA89A623E6B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 10:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E00F60E62;
	Thu, 10 Nov 2022 09:17:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E00F60E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668071845;
	bh=CSAa0dribSNu1T7S8gNAxgH9jE5PNHSk3UOYQSn/jho=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BR72NoHxGYSuUTMF+YNhzf+D/Us7gfWO8T137r8yk74itpvCi75jr3GJo5eMDxEas
	 7/DQT5bVQJwrktTjBLgdnNw1HMAjSX/QCkIYUue80a06MRQ2aiMBWTJAsg9Mzhi5wW
	 Vf1LRB5k1Ao79JvgblRTZw0veC7a1QMXi3Z9u2BClMzN3k56X/b838xoVJx+2n29Mu
	 ww5vIsJ8MVWKTy0DL3oIIRv1000HNVgnKjDDrVC407VulvQYphmiwEt6W7YYf6TWeY
	 CpYAaFL2FBxZ+zZVTqJ3Su7YckyHA8N5XEcONXltJnztaSJ6aRS4MHSMnl7/oMjNAp
	 n94yVx7/TgnFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXOm4xy9s1yt; Thu, 10 Nov 2022 09:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A9E560E60;
	Thu, 10 Nov 2022 09:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A9E560E60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB531BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 09:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13A6560E60
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 09:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13A6560E60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vn_H2HOxieHm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 09:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99F4760E5F
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99F4760E5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 09:17:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BE606B82126;
 Thu, 10 Nov 2022 09:17:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0ADDC433C1;
 Thu, 10 Nov 2022 09:17:13 +0000 (UTC)
Date: Thu, 10 Nov 2022 11:17:09 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <Y2zBlcpKZooaQhtL@unreal>
References: <20221108102502.2147389-1-ivecera@redhat.com>
 <Y2vvbwkvAIOdtZaA@unreal>
 <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668071834;
 bh=6TJNnSviLlX563oQpc85BIYcQat1cVbnGv4v0Qc+vJk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nuErvBV+JiX3N5HtvK2D1LR6w1MiTqz7BX5r2A6wKtpNtZxMsDPZj7y69xuhyTrD3
 BUuHNxOElpY18O+P3jV6r/vZL6mlUcfRAjl+enMvT2qbPtgbmZkiEtspmxeUt+1w7n
 q4uZwOiaNepckD00u0BL2SBfyOBikhzIxoi3VjYOaJgOrlyf6ktk7M8di8qVtZzIab
 OXbOV+mAGv40umA6nNEOja5M8uFKT8hIhlrr6pd8XGadKRJv0LVic4dCy1Q9h/nomD
 H/P/X+7S3skPgOh5bRAlJxAdvunajMCzS7uhQBOTp9dcUiexSdwcxlhpp/lEFb9DHM
 kM6oHKUX4Cm5Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nuErvBV+
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues
 after reset task failure
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
Cc: ivecera <ivecera@redhat.com>, SlawomirX Laba <slawomirx.laba@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 09, 2022 at 08:11:55PM +0000, Keller, Jacob E wrote:
> 
> 
> > -----Original Message-----
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Wednesday, November 9, 2022 10:21 AM
> > To: ivecera <ivecera@redhat.com>
> > Cc: netdev@vger.kernel.org; sassmann@redhat.com; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Piotrowski, Patryk <patryk.piotrowski@intel.com>;
> > SlawomirX Laba <slawomirx.laba@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> > Abeni <pabeni@redhat.com>; moderated list:INTEL ETHERNET DRIVERS <intel-
> > wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>
> > Subject: Re: [PATCH net] iavf: Do not restart Tx queues after reset task failure
> > 
> > On Tue, Nov 08, 2022 at 11:25:02AM +0100, Ivan Vecera wrote:
> > > After commit aa626da947e9 ("iavf: Detach device during reset task")
> > > the device is detached during reset task and re-attached at its end.
> > > The problem occurs when reset task fails because Tx queues are
> > > restarted during device re-attach and this leads later to a crash.
> > 
> > <...>
> > 
> > > +	if (netif_running(netdev)) {
> > > +		/* Close device to ensure that Tx queues will not be started
> > > +		 * during netif_device_attach() at the end of the reset task.
> > > +		 */
> > > +		rtnl_lock();
> > > +		dev_close(netdev);
> > > +		rtnl_unlock();
> > > +	}
> > 
> > Sorry for my naive question, I see this pattern a lot (including RDMA),
> > so curious. Everyone checks netif_running() outside of rtnl_lock, while
> > dev_close() changes state bit __LINK_STATE_START. Shouldn't rtnl_lock()
> > placed before netif_running()?
> 
> Yes I think you're right. A ton of people check it without the lock but I think thats not strictly safe. Is dev_close safe to call when netif_running is false? Why not just remove the check and always call dev_close then.

I honestly don't know.

To remove any doubts, this patch is LGTM.

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
