Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915A43CD24
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 17:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A01E40549;
	Wed, 27 Oct 2021 15:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1Vd9Kwnxv3Q; Wed, 27 Oct 2021 15:10:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28AC94052A;
	Wed, 27 Oct 2021 15:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86DEA1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 15:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 756C8605D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 15:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p-odU-a9XuHt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 15:10:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF1DD605CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 15:10:51 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9F55F58061E;
 Wed, 27 Oct 2021 11:10:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 27 Oct 2021 11:10:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=R6eD8s
 U+mUAvQsxnh8GBjddlGvAFTfv9v84Yk822mOM=; b=LV0fxoTbDMe8MHyGGnky6A
 Bgnk5gjxH5INNAiJpwXDmxyKz2Dqfi9xTgUDw/E36C8x1U9sVE7sLqhN06q5i4rp
 BUtIISgNzyN2qDBhlUrJ0TrPZhbPr+H/yZ+0mTXe2vULdzHm5jv3cWqqgYgpWA0v
 7m4X4PKEAZuVor8NxVdyU0lSH3jrjoFszz4MvWD3TTYeBH5V0JmmSXvBZLHKczNv
 qBL1okooWhZUbxjVukg6h3oIGWi81JmFL4LM0HAfUK723wN9Dhq84O/9BEBz+1uO
 jqjw35zKPgpDwFxDvsSn+UMQamm0WCjWOhhBdnGBaXFLwva9n1YchEiLzKxm3puw
 ==
X-ME-Sender: <xms:-Wt5Ydu8hVh1RAcM0iqi_mwBmq3mjxvLEtT2wuHtDkhXFNAf_LO2lg>
 <xme:-Wt5YWdHeCTR2y0M7ph280xqL4I7Asrg1G4fxRLyzIhezf-GbvUOqBywlKa3V-IZ_
 sRSJPLTIWRF9Mo>
X-ME-Received: <xmr:-Wt5YQxJsbPdsCVea1raNhxJNkjz87fbCDG0YFetkuYpLhMgckGRSt-r5g_EAvfsiiKCl_uKZ9Dns0m-_mX-qFMN453B6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdegtddgheefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:-Wt5YUNOEM7DEqdq0xlFDONCTTyEAH6RA8AMtoL1Rl99pcNyZ05vSw>
 <xmx:-Wt5Yd9ISd8RDZWJygGj-1qrmMCMlkj6mr-n5OFo7WpedbKTFfk-4A>
 <xmx:-Wt5YUX9JvocFF2Momh29CBeQVumFRHS5_2-Iuh7CCdoF9ZSs8ToSw>
 <xmx:-mt5YcaFMSamRMWoYBDY7qlzyic3L-YBarDYumGYiT8GEDUq_VwsfA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 27 Oct 2021 11:10:48 -0400 (EDT)
Date: Wed, 27 Oct 2021 18:10:46 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <YXlr9jEZ6jrywpe9@shredder>
References: <20211026173146.1031412-1-maciej.machnikowski@intel.com>
 <20211026173146.1031412-3-maciej.machnikowski@intel.com>
 <YXj7WkEb0PagWfSw@shredder>
 <PH0PR11MB495191854BF5470E9BF223F5EA859@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB495191854BF5470E9BF223F5EA859@PH0PR11MB4951.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [RFC v5 net-next 2/5] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 27, 2021 at 01:16:22PM +0000, Machnikowski, Maciej wrote:
> 
> 
> > -----Original Message-----
> > From: Ido Schimmel <idosch@idosch.org>
> > Sent: Wednesday, October 27, 2021 9:10 AM
> > To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> > Subject: Re: [RFC v5 net-next 2/5] rtnetlink: Add new RTM_GETEECSTATE
> > message to get SyncE status
> > 
> > On Tue, Oct 26, 2021 at 07:31:43PM +0200, Maciej Machnikowski wrote:
> > > +/* SyncE section */
> > > +
> > > +enum if_eec_state {
> > > +	IF_EEC_STATE_INVALID = 0,
> > > +	IF_EEC_STATE_FREERUN,
> > > +	IF_EEC_STATE_LOCKED,
> > > +	IF_EEC_STATE_LOCKED_HO_ACQ,
> > 
> > Is this referring to "Locked mode, acquiring holdover: This is a
> > temporary mode, when coming from free-run, to acquire holdover
> > memory."
> > ?
> 
> Locked HO ACQ means locked and holdover acquired. It's the state that
> allows transferring to the holdover state. Locked means that we locked
> our frequency and started acquiring the holdover memory.

So that's a transient state, right? FWIW, I find it weird to call such a
state "LOCKED".

>  
> > It seems ice isn't using it, so maybe drop it? Can be added later in
> > case we have a driver that can report it
> 
> I'll update the driver in the next revision

You mean update it to use "IF_EEC_STATE_LOCKED_HO_ACQ" instead of
"IF_EEC_STATE_LOCKED"?

Regardless, would be good to document these values.

>  
> > There is also "Locked mode, holdover acquired: This is a steady state
> > mode, entered when holdover memory is acquired." But I assume that's
> > "IF_EEC_STATE_LOCKED"
> > 
> > > +	IF_EEC_STATE_HOLDOVER,
> > > +};
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
