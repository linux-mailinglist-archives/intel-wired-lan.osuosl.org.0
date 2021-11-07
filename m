Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AAF44734A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Nov 2021 15:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC544606C9;
	Sun,  7 Nov 2021 14:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aePx0RSjEzQE; Sun,  7 Nov 2021 14:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5D9D6069A;
	Sun,  7 Nov 2021 14:21:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 321181BF426
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 14:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BC6C401FA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 14:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 77WQMdxsaYcd for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Nov 2021 14:21:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BD8B401B6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 14:21:17 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7090E580472;
 Sun,  7 Nov 2021 09:21:16 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 07 Nov 2021 09:21:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=4iIDLu
 FPUy/OXdkVXTXURdRCaT0KlDEOWjfMFi2KsNM=; b=cm3ywAmQuHGofXXisTz8OO
 3+CNbAbUBSXonRHOcpkUvtFbI6ekX2uuM0ZoWePtTBgMWYVEQH1U9HJ4QxCXzZKX
 afOCKj1DG+AI/yTYCHihfFOIGiCu2F8MjBUMwdtGcaeICKA4299IrJk7Cqa66EO7
 4JeATlhlw3c6e+i1ZG/v/vVu4f40r6tuImrcnEPrr6lZERKBeYMAjaf7imJRJNf1
 h2d7K7/svJTj85RQkUDvFZqcb2+rRax5V67NIeh+VKG21btzSc/5VwPinW/WdoKg
 ylQ/wNpCZeCKw17Sk5Rx6V7uTese66KsoFPcPz1FrECYvaTZHOUvIlYKt8PWu8Hg
 ==
X-ME-Sender: <xms:3OCHYefF58-PcAC-Yo8iL_m6OCFdEaxk0J_H1e0e-K8DQpnyidvhPw>
 <xme:3OCHYYPpZszUYWs_3JFybJREPWv5SENhUtnvZsLadSAlpaJr72UsyOQmA1cOXlVr3
 0FaDU9H1shV5K8>
X-ME-Received: <xmr:3OCHYfh2wVMlagvfA3mN00ANyQgcBDYKm3BaedXg7yZ_vG2vTWMJYmyRQXQ6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:3OCHYb_jxXtW00ydHXawA3jgue_GOaUlNchA86Lnh1-o50FgYgj0fw>
 <xmx:3OCHYatWN1DHZeFEoYHoQ8VAsy5RnQ0JADsnMRU7vNyezOymzbieBw>
 <xmx:3OCHYSEl-I9DM5H7fFcfr4Ywnj7TG6Si5MQDjDuFdAyItuL2an6Z0w>
 <xmx:3OCHYbnpnMKVfXOvYPYBJcv8cqX1y3l62IhwF9fXKcdBeDOBcWWmgQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Nov 2021 09:21:15 -0500 (EST)
Date: Sun, 7 Nov 2021 16:21:12 +0200
From: Ido Schimmel <idosch@idosch.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <YYfg2Gty6dNmjp1E@shredder>
References: <20211104081231.1982753-1-maciej.machnikowski@intel.com>
 <20211104081231.1982753-5-maciej.machnikowski@intel.com>
 <2d379392-a381-e60a-7658-5ac695c30df1@nvidia.com>
 <MW5PR11MB5812F4FD090FCEA7CD83E984EA8E9@MW5PR11MB5812.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW5PR11MB5812F4FD090FCEA7CD83E984EA8E9@MW5PR11MB5812.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/6] rtnetlink: Add support
 for SyncE recovered clock configuration
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 05, 2021 at 12:17:19PM +0000, Machnikowski, Maciej wrote:
> 
> 
> > -----Original Message-----
> > From: Roopa Prabhu <roopa@nvidia.com>
> > Sent: Thursday, November 4, 2021 7:25 PM
> > To: Machnikowski, Maciej <maciej.machnikowski@intel.com>;
> > netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> > Cc: richardcochran@gmail.com; abyagowi@fb.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> > linux-kselftest@vger.kernel.org; idosch@idosch.org; mkubecek@suse.cz;
> > saeed@kernel.org; michael.chan@broadcom.com
> > Subject: Re: [PATCH net-next 4/6] rtnetlink: Add support for SyncE recovered
> > clock configuration
> > 
> > 
> > On 11/4/21 1:12 AM, Maciej Machnikowski wrote:
> > > Add support for RTNL messages for reading/configuring SyncE recovered
> > > clocks.
> > > The messages are:
> > > RTM_GETRCLKRANGE: Reads the allowed pin index range for the
> > recovered
> > > 		  clock outputs. This can be aligned to PHY outputs or
> > > 		  to EEC inputs, whichever is better for a given
> > > 		  application
> > >
> > > RTM_GETRCLKSTATE: Read the state of recovered pins that output
> > recovered
> > > 		  clock from a given port. The message will contain the
> > > 		  number of assigned clocks (IFLA_RCLK_STATE_COUNT) and
> > > 		  a N pin inexes in IFLA_RCLK_STATE_OUT_IDX
> > >
> > > RTM_SETRCLKSTATE: Sets the redirection of the recovered clock for
> > > 		  a given pin
> > >
> > > Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> > > ---
> > 
> > 
> > Can't we just use a single RTM msg with nested attributes ?
> > 
> > With separate RTM msgtype for each syncE attribute we will end up
> > bloating the RTM msg namespace.
> > 
> > (these api's could also be in ethtool given its directly querying the
> > drivers)
> 
> I'm not a fan of merging those messages. The mergeable ones are
> GETRCLKRANGE and GETCLKSTATE, but the get range function may be
> result in a significantly longer call if the information about the underlying
> HW require any HW calls.
> They are currently grouped in 3 categories:
> - reading the boundaries in GetRclkRange (we can later add more to it, like
> 	configurable frequency limits)
> - Reading current configuration
> - setting the required configuration
> 
> I don't plan adding any additional RTM msg types for those (and that's
> the reason why I pulled them before EEC state which may have more
> messages in the future)
> 
> We also discussed ethtool way in the past RFCs, but this concept
> is applicable to any transport layer so I'd rather not limit it to ethernet
> devices (i.e. SONET, infiniband and others).

I'm still not convinced that this doesn't belong in ethtool. I find it
very weird to have a message called "Get Ethernet Equipment Clock State"
in rtnetlink and not in ethtool. I also believe it was a mistake to add
DCB to rtnetlink (for example, why PAUSE is configured via ethtool, but
PFC via rtnetlink?)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
