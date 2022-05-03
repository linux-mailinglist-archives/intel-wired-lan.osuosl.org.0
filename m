Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AE05189DA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 18:26:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E5AC80CC8;
	Tue,  3 May 2022 16:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NU4g9_Zd6Nbp; Tue,  3 May 2022 16:26:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4819880C67;
	Tue,  3 May 2022 16:26:43 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94DE21BF342
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80FB480C46
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YUEsZ6ZuNAKF for <intel-wired-lan@osuosl.org>;
 Tue,  3 May 2022 16:26:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45CF980C3F
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651595197; x=1683131197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ASLxHM1EaZ9TQGHUmxYbc5StkEHvH6xVbNDntJUAZc=;
 b=MKK+Xh1Q7vvzRdhRhwPcGVNqLBBeM4tKhuQqMI5Cda4BjKy8G3pvQa1L
 7db+pM65BFkYcgFjOW3dsF1d7QPbfuAg/eEIobOi/OnKWhB/Ff82M7sAZ
 dZCoIe9p50spErBnlw59DDJ254yrXQvAVEq8Z+rTxmcvuEL/ep337+bVv
 oo3rmvHUYa0Kveg0e0Il0H1xGpmGb1Rip7f4sSfct7x4HMPrqYJ/SZ/b7
 UhV1p+B4UZuOjDjZqflUvKDlhjqf2w3g8+8oQ2tkmLOYDFDiokaTnW5h3
 VWdC9m4hu8UqUHk58hwcCe3OXi+4jM9eeHQkSwdOu54hIj1HrlEvf+3IR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="247428231"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="247428231"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 09:26:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="653329851"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 03 May 2022 09:26:34 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 243GQXFE008523; Tue, 3 May 2022 17:26:33 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Date: Tue,  3 May 2022 18:23:16 +0200
Message-Id: <20220503162316.397823-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <IA1PR11MB626623C27C5766E09B8A74BEE4C09@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
 <20220503152908.395702-1-alexandr.lobakin@intel.com>
 <IA1PR11MB626623C27C5766E09B8A74BEE4C09@IA1PR11MB6266.namprd11.prod.outlook.com>
MIME-Version: 1.0
Accept-Language: en-US
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Date: Tue, 3 May 2022 16:04:12 +0000

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Tuesday, May 3, 2022 8:29 AM
> > To: Mogilappagari, Sudheer <sudheer.mogilappagari@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>;
> > intel-wired-lan@osuosl.org
> > Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
> > indirection tables for queue groups via ethtool
> > 
> > From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> > Date: Tue,  3 May 2022 06:24:28 -0700
> > 
> > > From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > >
> > > When ADQ queue groups(TCs) are created via tc mqprio command, RSS
> > > contexts and associated RSS indirection tables are configured
> > > automatically per TC based on the queue ranges specified for each
> > > traffic class.
> > >
> > > For ex:
> > > tc qdisc add dev enp175s0f0 root mqprio num_tc 3 map 0 1 2 \
> > > 	queues 2@0 8@2 4@10 hw 1 mode channel
> > >
> > > will create 3 queue groups(TC 0-2) with queue ranges 2, 8 and 4 in 3
> > > queue groups. Each queue group is associated with its own RSS context
> > > and RSS indirection table.
> > >
> > > Add support to expose RSS indirection tables for all ADQ queue groups
> > > using ethtool RSS contexts interface.
> > > 	ethtool -x enp175s0f0 context <tc-num>
> > >
> > > Signed-off-by: Sridhar Samudrala<sridhar.samudrala@intel.com>
> > > Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> > 
> > You didn't answer to any of my comments or questions during the internal
> > review, including the ones that Paul has just asked, and now you're
> > posting the same version to IWL to get it accepted upstream.
> > That's not how it works, NAK.
> > 
> 
> I had responded to your comments (on 4/22) and posted v2 (on 4/23).
> Posted here since there were no further comments. Will incorporate
> Paul's comments in v2.

Oh Gods, I'm super sorry. I completely overlooked your response.
It's present in my inbox. Please ignore my mail, sorry again.

> 
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_ethtool.c | 69
> > > +++++++++++++++-----
> > >  1 file changed, 51 insertions(+), 18 deletions(-)

[...]

> > > --
> > > 2.27.0
> > 
> > Thanks,
> > Al

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
