Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7960C45361A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 16:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E7B780F3E;
	Tue, 16 Nov 2021 15:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VeknmFTfbaI5; Tue, 16 Nov 2021 15:41:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 541D280F29;
	Tue, 16 Nov 2021 15:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BD381BF473
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 15:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2693280F29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 15:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Df0kLUl0r4r1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 15:41:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [IPv6:2a0a:51c0:0:12e:520::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4633E80F27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 15:41:21 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1mn0a7-000431-C1; Tue, 16 Nov 2021 16:41:11 +0100
Date: Tue, 16 Nov 2021 16:41:11 +0100
From: Florian Westphal <fw@strlen.de>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20211116154111.GF6326@breakpoint.cc>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
 <20211110114448.2792314-3-maciej.machnikowski@intel.com>
 <YY0+PmNU4MSGfgqA@hog> <20211111162252.GJ16363@breakpoint.cc>
 <MW5PR11MB58124A70268058505368A5C8EA999@MW5PR11MB5812.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW5PR11MB58124A70268058505368A5C8EA999@MW5PR11MB5812.namprd11.prod.outlook.com>
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 Sabrina Dubroca <sd@queasysnail.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Florian Westphal <fw@strlen.de>, "saeed@kernel.org" <saeed@kernel.org>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Machnikowski, Maciej <maciej.machnikowski@intel.com> wrote:
> > More importantly, why is this added to rtnetlink (routing sockets)?
> > It appears to be unrelated?
> > 
> > Looks like this should be in ethtool (it has netlink api nowadays) or
> > devlink.
> 
> We identified it as a generic place in previous RFCs.

Doesn't answer my question.  EECSTATE doesn't appear to be related to
anything else thats currently exposed via rtnetlink from a conceptional
point of view.

> Ethtool calls are not
> available in non-ethernet packet networks

Thats news to me.  ethtool ops are linked via netdevice struct.

> and the concept of that functionality
> is - any packet network can implement it - SONET, GPON or even wireless.

Ethtool ops expose a wide range of low-level functions not related to
ethernet, e.g. eeprom dump, interrupt coalescing settings of and so on
and so forth.

But hey, if net maintainers are ok with rtnetlink...

I just feel putting synce interaction in rtnetlink is arbitrary
and bad precendence.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
