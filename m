Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7828D309074
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 00:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21D512E151;
	Fri, 29 Jan 2021 23:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEenAobRlUG1; Fri, 29 Jan 2021 23:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BD2A2E15D;
	Fri, 29 Jan 2021 23:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 899FE1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7E175872CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWUI5VZUBooN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 23:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B461A872C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:13:13 +0000 (UTC)
IronPort-SDR: 5X4LdRQNpDgwzvSK/w1M5DbzIwb0wS9Yei2D6pFSO4fPZ26or9XM/KVDJjzZ4hfyxVIWR0mhQ7
 ePwIc5lgIA7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="180633975"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="180633975"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 15:13:12 -0800
IronPort-SDR: IP3ldZjSX8dNItA2zvtEg14fcKo1sT8oSp9Med1Xh/wWOHaEvG3yXgXnESEjNv+4I/DOVer3t7
 3nxa56QtDt1A==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="574263502"
Received: from ndatiri-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.145.249])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 15:13:12 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20210129135702.0f8cf702@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
 <20210126000924.jjkjruzmh5lgrkry@skbuf>
 <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
 <20210129135702.0f8cf702@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Fri, 29 Jan 2021 15:12:58 -0800
Message-ID: <878s8bs5fp.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/8] taprio: Add support
 for frame preemption offload
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:
>> > First I'm interested in the means: why check for preempt == U32_MAX when
>> > you determine that all traffic classes are preemptible? What if less
>> > than 32 traffic classes are used by the netdev? The check will be
>> > bypassed, won't it?  
>> 
>> Good catch :-)
>> 
>> I wanted to have this (at least one express queue) handled in a
>> centralized way, but perhaps this should be handled best per driver.
>
> Centralized is good. Much easier than reviewing N drivers to make sure
> they all behave the same, and right.

The issue is that it seems that not all drivers/hw have the same
limitation: that at least one queue needs to be configured as
express/not preemptible.

That's the point I was trying to make when I suggested for the check to
be done per-driver, different limitations.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
