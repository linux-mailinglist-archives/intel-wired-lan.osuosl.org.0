Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC3432ACAB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 01:41:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD5154CACF;
	Wed,  3 Mar 2021 00:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bm0ibXkCF0NR; Wed,  3 Mar 2021 00:41:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BD7E4CA63;
	Wed,  3 Mar 2021 00:41:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 771AE1BF981
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 00:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65707836EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 00:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PofWOzJnAAhR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 00:40:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C786836D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 00:40:58 +0000 (UTC)
IronPort-SDR: AkI+QroyBQo74MVXBpBTIuo0lyf8bZZB1w+7eJgmJ4BM4Su5sZZ3kK6k1m+vKXucNDCK5PR/UQ
 l9ipnBn5qAmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187108798"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="187108798"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 16:40:57 -0800
IronPort-SDR: mCKJf9u6bb5J4/ayaVlkAwJkxQHexYo3ubZ3HvJrld92vGMJCKEH0Y6QN1w4XYK8fLUMkF+HAm
 KXotOC/lwXUQ==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="367405818"
Received: from jdashevs-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.44.55])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 16:40:57 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210302142350.4tu3n4gay53cjnig@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-2-vinicius.gomes@intel.com>
 <20210302142350.4tu3n4gay53cjnig@skbuf>
Date: Tue, 02 Mar 2021 16:40:55 -0800
Message-ID: <87o8g1nk6g.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/8] ethtool: Add support
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
 vladimir.oltean@nxp.com, xiyou.wangcong@gmail.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 po.liu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vladimir,

Vladimir Oltean <olteanv@gmail.com> writes:

> Hi Vinicius,
>
> On Fri, Jan 22, 2021 at 02:44:46PM -0800, Vinicius Costa Gomes wrote:
>> Frame preemption (described in IEEE 802.3br-2016) defines the concept
>> of preemptible and express queues. It allows traffic from express
>> queues to "interrupt" traffic from preemptible queues, which are
>> "resumed" after the express traffic has finished transmitting.
>> 
>> Frame preemption can only be used when both the local device and the
>> link partner support it.
>> 
>> Only parameters for enabling/disabling frame preemption and
>> configuring the minimum fragment size are included here. Expressing
>> which queues are marked as preemptible is left to mqprio/taprio, as
>> having that information there should be easier on the user.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>
> I just noticed that the aMACMergeStatusVerify variable is not exposed in
> the PREEMPT_GET command, which would allow the user to inspect the state
> of the MAC merge sublayer verification state machine. Also, a way in the
> PREEMPT_SET command to set the disableVerify variable would be nice.
>

The hardware I have won't have support for this.

I am going to send the next version of this series soon. Care to send
the support for verifyStatus/disableVerify as follow up series?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
