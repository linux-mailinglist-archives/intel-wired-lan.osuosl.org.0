Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FBB2FF88C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 00:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6EA486F99;
	Thu, 21 Jan 2021 23:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGk-3tOf4Gmu; Thu, 21 Jan 2021 23:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28C5886FA2;
	Thu, 21 Jan 2021 23:17:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17A4B1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C58A2083F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id exB9YUouS9+J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 23:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C28D20773
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:17:26 +0000 (UTC)
IronPort-SDR: pvgNID7JTR0ViI6ZMJGruDRLc1fC/h3RuDPwd+mU2ituHUJVFJzIvmNaTV1dSHzkK4Vc/08Fiw
 Yv+NGBfAU7yw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="264180223"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="264180223"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:17:25 -0800
IronPort-SDR: 0I/TA9zVNg72KVyzosHe8A0LZ4PD5lyNjuh/oLHqisu8RolKDcGW8wDCWHZ40xudti7vBybh3j
 KnwPRoxDc3ew==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="392126925"
Received: from amgiffor-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.124.114])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:17:25 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20210119182133.038fbfc3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-3-vinicius.gomes@intel.com>
 <20210119182133.038fbfc3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 21 Jan 2021 15:17:14 -0800
Message-ID: <878s8lyj5x.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/8] taprio: Add support
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Mon, 18 Jan 2021 16:40:22 -0800 Vinicius Costa Gomes wrote:
>> Adds a way to configure which traffic classes are marked as
>> preemptible and which are marked as express.
>> 
>> Even if frame preemption is not a "real" offload, because it can't be
>> executed purely in software, having this information near where the
>> mapping of traffic classes to queues is specified, makes it,
>> hopefully, easier to use.
>> 
>> taprio will receive the information of which traffic classes are
>> marked as express/preemptible, and when offloading frame preemption to
>> the driver will convert the information, so the driver receives which
>> queues are marked as express/preemptible.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
>> @@ -1286,13 +1289,15 @@ static int taprio_disable_offload(struct net_device *dev,
>>  	offload->enable = 0;
>>  
>>  	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
>> -	if (err < 0) {
>> +	if (err < 0)
>> +		NL_SET_ERR_MSG(extack,
>> +			       "Device failed to disable offload");
>> +
>> +	err = ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT, &preempt);
>> +	if (err < 0)
>>  		NL_SET_ERR_MSG(extack,
>>  			       "Device failed to disable offload");
>
> This was meant to say something else?

Yeah, better to say which offload failed to be disabled. Will fix.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
