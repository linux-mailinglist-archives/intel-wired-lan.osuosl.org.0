Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F3401FCD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Sep 2021 20:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB0C6403B1;
	Mon,  6 Sep 2021 18:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qDwb_Nb1fUG9; Mon,  6 Sep 2021 18:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA4464039F;
	Mon,  6 Sep 2021 18:39:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EE9A1BF470
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 18:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A40440470
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 18:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iv0WWVMbT3fY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Sep 2021 18:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E1E840017
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 18:39:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7579860F43;
 Mon,  6 Sep 2021 18:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630953566;
 bh=/JKCRTb49OtomwpyWZ+XUAnC9IIjRf7uNCuyN3p7oRE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MI0itP/YJ6A58mIbGg/wkteDaX+6GFxv5Ri1C7dSr1ZKjXN9ciFgLhG5pMXClLRDf
 r5n39Lion+yK0iPndYG/VmsHecXfYG1hOoLq9esOCLT432ob23VfUUDaiXtbIHNRPm
 Q6JIt+p65Q/gKddxyyXCyrInXW7NXEOg0Va/arBzfqzfi2Xoxz5obdz9FlXX/RBtva
 sn16GooJqCwG92tgsG703zvE4/yIVczHqYcmyKbbbZ+Fm7PONTSG2EZQiPdXN/52Wn
 HOX0sjHxE2mN9kD53pUm6fiWyMjA1qGqwYlfsHewzRGtbxlp/oeTTjgUABIKPyv7Rf
 cXvm4qqqez3BA==
Date: Mon, 6 Sep 2021 11:39:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <20210903151425.0bea0ce7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 6 Sep 2021 18:30:40 +0000 Machnikowski, Maciej wrote:
> > -----Original Message-----
> > From: Jakub Kicinski <kuba@kernel.org>
> > Sent: Saturday, September 4, 2021 12:14 AM
> > Subject: Re: [PATCH net-next 1/2] rtnetlink: Add new RTM_GETEECSTATE
> > message to get SyncE status
> > 
> > On Fri,  3 Sep 2021 17:14:35 +0200 Maciej Machnikowski wrote:  
> > > This patch series introduces basic interface for reading the Ethernet
> > > Equipment Clock (EEC) state on a SyncE capable device. This state gives
> > > information about the state of EEC. This interface is required to
> > > implement Synchronization Status Messaging on upper layers.
> > >
> > > Initial implementation returns SyncE EEC state and flags attributes.
> > > The only flag currently implemented is the EEC_SRC_PORT. When it's set
> > > the EEC is synchronized to the recovered clock recovered from the
> > > current port.
> > >
> > > SyncE EEC state read needs to be implemented as a ndo_get_eec_state
> > > function.
> > >
> > > Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>  
> > 
> > Since we're talking SyncE-only now my intuition would be to put this
> > op in ethtool. Was there a reason ethtool was not chosen? If not what
> > do others think / if yes can the reason be included in the commit
> > message?  
> 
> Hmm. Main reason for netlink is that linuxptp already supports it,
> and it was suggested by Richard.
> Having an NDO would also make it easier to add a SyncE-related
> files to the sysfs for easier operation (following the ideas from the ptp
> pins subsystem).
> But I'm open for suggestions. 

I think linuxptp will need support for ethtool netlink sockets sooner
rather than later. Moving this to ethtool makes sense to me since it's
very much a Ethernet-oriented API at this point.

> > > +#define EEC_SRC_PORT		(1 << 0) /* recovered clock from the  
> > port is  
> > > +					  * currently the source for the EEC
> > > +					  */  
> > 
> > Why include it then? Just leave the value out and if the attr is not
> > present user space should assume the source is port.  
> 
> This bit has a different meaning. If it's set the port in question
> is a frequency source for the multiport device, if it's cleared - some other
> source is used as a source. This is needed to prevent setting invalid 
> configurations in the PHY (like setting the frequency source as a Master
> in AN) or sending invalid messages. If the port is a frequency source
> it must always send back QL-DNU messages to prevent synchronization
> loops.

Ah! I see. Is being the "source" negotiated somehow? Don't we need to
give the user / linuxptp to select the source based on whatever info 
it has about topology?

> > or don't check the ifindex at all and let dev_get_by.. fail.
> > 
> > 
> > Thanks for pushing this API forward!  
> 
> Addressed all other comments - and thanks for giving a lot of helpful
> suggestions!

Thanks, BTW I think I forgot to ask for documentation, dumping info
about the API and context under Documentation/ would be great!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
