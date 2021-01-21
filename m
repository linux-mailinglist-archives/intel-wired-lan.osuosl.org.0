Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3D2FF895
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 00:18:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8F3186D26;
	Thu, 21 Jan 2021 23:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYrCldKyuD3X; Thu, 21 Jan 2021 23:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EABB86D39;
	Thu, 21 Jan 2021 23:18:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A19651BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9860821503
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VlZ3U2ZoEJXJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 23:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id EBE2220773
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:18:39 +0000 (UTC)
IronPort-SDR: n/4oD0/W+LX2mmCisk9dYLIMV8Jf+68QS4Utq34YyYSD83ScZLfAZN4ryIBXU3dzB6ZBwdY39p
 1dWtK995x2tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="179446744"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="179446744"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:18:39 -0800
IronPort-SDR: mfNpbFeVLXc62MM26sFUwis9IRyptBiGvw5VuVdjRcOT7jgrQRolwluqoq3v9UWMavRRSJCc3Y
 e549T5LcizXA==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="392127168"
Received: from amgiffor-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.124.114])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:18:38 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20210119181712.18f0ee24@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-2-vinicius.gomes@intel.com>
 <20210119181712.18f0ee24@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 21 Jan 2021 15:18:27 -0800
Message-ID: <871redyj3w.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/8] ethtool: Add support
 for configuring frame preemption
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

> On Mon, 18 Jan 2021 16:40:21 -0800 Vinicius Costa Gomes wrote:
>> +  ====================================  ======  ==========================
>> +  ``ETHTOOL_A_CHANNELS_HEADER``         nested  request header
>
> ETHTOOL_A_PREEMPT_HEADER
>
>> +  ====================================  ======  ==========================
>> +
>> +Kernel response contents:
>> +
>> +  =====================================  ======  ==========================
>> +  ``ETHTOOL_A_CHANNELS_HEADER``          nested  reply header
>
> here as well
>
>> +  ``ETHTOOL_A_PREEMPT_ENABLED``          u8      frame preemption enabled
>> +  ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE``    u32     Min additional frag size
>> +  =====================================  ======  ==========================
>> +
>> +``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE`` configures the minimum non-final
>> +fragment size that the receiver device supports.
>> +
>> +PREEMPT_SET
>> +============
>> +
>> +Sets frame preemption parameters.
>> +
>> +Request contents:
>> +
>> +  =====================================  ======  ==========================
>> +  ``ETHTOOL_A_CHANNELS_HEADER``          nested  reply header
>
> and here

Ugh. Will fix these copy&pasta mistakes.

>
>> +  ``ETHTOOL_A_PREEMPT_ENABLED``          u8      frame preemption enabled
>> +  ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE``    u32     Min additional frag size
>> +  =====================================  ======  ==========================
>
>> +struct netlink_ext_ack;
>
> Let's move it all the way to the top, right after header includes, so
> we don't have to move it again.

Sure. Will fix.
 
>
>> +/**
>> + * Convert from a Frame Preemption Additional Fragment size in bytes
>> + * to a multiplier. The multiplier is defined as:
>> + *	"A 2-bit integer value used to indicate the minimum size of
>> + *	non-final fragments supported by the receiver on the given port
>> + *	associated with the local System. This value is expressed in units
>> + *	of 64 octets of additional fragment length."
>> + *	Equivalent to `30.14.1.7 aMACMergeAddFragSize` from the IEEE 802.3-2018
>> + *	standard.
>
> Please double check the correct format for kdoc:
>
> https://www.kernel.org/doc/html/latest/doc-guide/kernel-doc.html
>
> This comment should also be next to the definition of the function, 
> not in the header.

Will fix.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
