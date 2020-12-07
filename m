Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55E12D1D0A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 23:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 730CC87987;
	Mon,  7 Dec 2020 22:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOFHddJi+WqX; Mon,  7 Dec 2020 22:15:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E61F8798A;
	Mon,  7 Dec 2020 22:15:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C937D1BF389
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C395B8721E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64XzaBMIBN07 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 22:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 51743871BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:15:27 +0000 (UTC)
IronPort-SDR: EQORxZBDMvmc/hSLhwYlUQgrr7QVjTpjELI42bxxeij4D9VE4CGkU7ffAGYQJQgHNcwjq2PtL6
 RzKxESiusfkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="237893464"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="237893464"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 14:15:26 -0800
IronPort-SDR: vZv6vjibZEslUQzBm1ROhICgQjPzhTAI2Kqbsvm47KWdTZNZ6qk3UL241la+pj5EqO0nCZtOPR
 ipBnRnKstp8w==
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="367446111"
Received: from seherahx-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.17.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 14:15:26 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201205100030.2e3c5dd2@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-7-vinicius.gomes@intel.com>
 <20201205100030.2e3c5dd2@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
Date: Mon, 07 Dec 2020 14:15:25 -0800
Message-ID: <87a6up1cw2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 6/9] igc: Add support for
 tuning frame preemption via ethtool
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

> On Tue,  1 Dec 2020 20:53:22 -0800 Vinicius Costa Gomes wrote:
>> The tc subsystem sets which queues are marked as preemptible, it's the
>> role of ethtool to control more hardware specific parameters. These
>> parameters include:
>> 
>>  - enabling the frame preemption hardware: As enabling frame
>>  preemption may have other requirements before it can be enabled, it's
>>  exposed via the ethtool API;
>> 
>>  - mininum fragment size multiplier: expressed in usually in the form
>>  of (1 + N)*64, this number indicates what's the size of the minimum
>>  fragment that can be preempted.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
> WARNING: 'PREEMPTABLE' may be misspelled - perhaps 'PREEMPTIBLE'?

In the datasheet the term PREEMPTABLE is used, and when refering to
register values I chose to be consistent with the datasheet. But as the
margin for confusion is small, I can change to use "preemptible"
everywhere, no problem.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
