Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8992D1D50
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 23:30:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 607ED87713;
	Mon,  7 Dec 2020 22:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S37ZbvEnUEm4; Mon,  7 Dec 2020 22:29:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0B3687966;
	Mon,  7 Dec 2020 22:29:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01E971BF389
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:29:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F1B2B8721E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zzdvi7-F1udH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 22:29:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 668F586920
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:29:55 +0000 (UTC)
IronPort-SDR: hTjOQYELgIxMYsdYYfUQpewPdR08wl3qISRJeLobWpDSDGTzvsMoCxozRW/+JN3kQujHnz5dyt
 Ve6DfpG9yHJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="173023417"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="173023417"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 14:29:54 -0800
IronPort-SDR: L5Soz7wYDp4oNjcX/ydMMdKhCQ3nVA9Iu1Jng82x3Nai/m8JqiOz3rY33gTMqP3XXINPyWX3Y0
 Z73XTmSEGEvg==
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="363343787"
Received: from seherahx-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.17.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 14:29:54 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201205095948.5e0eba28@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-9-vinicius.gomes@intel.com>
 <20201205095948.5e0eba28@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
Date: Mon, 07 Dec 2020 14:29:54 -0800
Message-ID: <87v9ddz1ul.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 8/9] igc: Add support for
 exposing frame preemption stats registers
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Tue,  1 Dec 2020 20:53:24 -0800 Vinicius Costa Gomes wrote:
>> Expose the Frame Preemption counters, so the number of
>> express/preemptible packets can be monitored by userspace.
>> 
>> These registers are cleared when read, so the value shown is the
>> number of events that happened since the last read.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
> You mean expose in a register dump? That's not great user experience..

I can agree with that, even after some formatting on the ethtool side:

Preemption statistics:
    TX Preemption event counter: 14070
    Good TX Preemptable Packets: 201957
    Good TX Express Packets: 32031
    TX Preempted Packets: 13259
    RX Preemption event counter: 0
    Good RX Preemptable Packets: 0
    Good RX Preempted Packets: 0
    Preemption Exception Counter:
        OOO_SMDC 0
        OOO_FRAME 0
        OOO_FRAG 0
        MISS_FRAME_FRAG 0

It's less than ideal, but useful for development/debugging.

>
> Are there any stats that the standards mandate?

I just took abother look at the standard, mainly at the MIBs, there are
no statistics related to frame preemption that I could find, only
configuration stuff.

>
> It'd be great if we could come up with some common set and expose them
> via ethtool like the pause frame statistics.

Agreed, will drop this patch, until this common set is agreed upon.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
