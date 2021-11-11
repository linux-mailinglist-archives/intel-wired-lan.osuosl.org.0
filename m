Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C044DAF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 18:04:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DB7980EAD;
	Thu, 11 Nov 2021 17:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PKilfukhy7b9; Thu, 11 Nov 2021 17:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B67B80DA1;
	Thu, 11 Nov 2021 17:04:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66DE51BF327
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 17:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EEA7403D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 17:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Adi1zqyR7mRp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 17:04:46 +0000 (UTC)
X-Greylist: delayed 00:41:47 by SQLgrey-1.8.0
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [IPv6:2a0a:51c0:0:12e:520::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FAE14018A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 17:04:46 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1mlCqi-0000fB-0W; Thu, 11 Nov 2021 17:22:52 +0100
Date: Thu, 11 Nov 2021 17:22:52 +0100
From: Florian Westphal <fw@strlen.de>
To: Sabrina Dubroca <sd@queasysnail.net>
Message-ID: <20211111162252.GJ16363@breakpoint.cc>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
 <20211110114448.2792314-3-maciej.machnikowski@intel.com>
 <YY0+PmNU4MSGfgqA@hog>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YY0+PmNU4MSGfgqA@hog>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 2/6] rtnetlink: Add new
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 netdev@vger.kernel.org, richardcochran@gmail.com,
 Maciej Machnikowski <maciej.machnikowski@intel.com>, idosch@idosch.org,
 linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sabrina Dubroca <sd@queasysnail.net> wrote:
> Hello Maciej,
> 
> 2021-11-10, 12:44:44 +0100, Maciej Machnikowski wrote:
> > diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
> > index 5888492a5257..1d8662afd6bd 100644
> > --- a/include/uapi/linux/rtnetlink.h
> > +++ b/include/uapi/linux/rtnetlink.h
> > @@ -185,6 +185,9 @@ enum {
> >  	RTM_GETNEXTHOPBUCKET,
> >  #define RTM_GETNEXTHOPBUCKET	RTM_GETNEXTHOPBUCKET
> >  
> > +	RTM_GETEECSTATE = 124,
> > +#define RTM_GETEECSTATE	RTM_GETEECSTATE
> 
> I'm not sure about this. All the other RTM_GETxxx are such that
> RTM_GETxxx % 4 == 2. Following the current pattern, 124 should be
> reserved for RTM_NEWxxx, and RTM_GETEECSTATE would be 126.

More importantly, why is this added to rtnetlink (routing sockets)?
It appears to be unrelated?

Looks like this should be in ethtool (it has netlink api nowadays) or
devlink.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
