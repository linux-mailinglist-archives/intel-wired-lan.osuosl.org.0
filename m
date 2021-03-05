Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E49632F5FA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 23:38:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7605F4301F;
	Fri,  5 Mar 2021 22:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjEzmy11ipkP; Fri,  5 Mar 2021 22:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84E124301B;
	Fri,  5 Mar 2021 22:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04D591BF324
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 22:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E666A4ED00
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 22:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DR33aZ7CrZW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 22:38:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58C1846E38
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 22:38:27 +0000 (UTC)
IronPort-SDR: kuYGFcEaJKvx4aDEpYvqNDZQOzinecxg9+WuLUIPDDwqHtudNZFQ0yBYrB9Sy5+zcBCJ6W3RBL
 2lLDHfihFp9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="167640404"
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="167640404"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 14:38:26 -0800
IronPort-SDR: +gaITYTI6NYm23BqUUvKOghOCpx+Z4Lkhy/OW54TUB/LxCe3h9FAFg4RctYmKgFk9dMQfq/cvl
 R6Rx6cu+ry9w==
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="508215288"
Received: from bfrahm-mobl2.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.101.47])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 14:38:25 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210303005112.im2zur47553uv2ld@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-2-vinicius.gomes@intel.com>
 <20210302142350.4tu3n4gay53cjnig@skbuf>
 <87o8g1nk6g.fsf@vcostago-mobl2.amr.corp.intel.com>
 <20210303005112.im2zur47553uv2ld@skbuf>
Date: Fri, 05 Mar 2021 14:38:24 -0800
Message-ID: <874khpns4f.fsf@vcostago-mobl2.amr.corp.intel.com>
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

Vladimir Oltean <olteanv@gmail.com> writes:

> On Tue, Mar 02, 2021 at 04:40:55PM -0800, Vinicius Costa Gomes wrote:
>> Hi Vladimir,
>>
>> Vladimir Oltean <olteanv@gmail.com> writes:
>>
>> > Hi Vinicius,
>> >
>> > On Fri, Jan 22, 2021 at 02:44:46PM -0800, Vinicius Costa Gomes wrote:
>> >> Frame preemption (described in IEEE 802.3br-2016) defines the concept
>> >> of preemptible and express queues. It allows traffic from express
>> >> queues to "interrupt" traffic from preemptible queues, which are
>> >> "resumed" after the express traffic has finished transmitting.
>> >>
>> >> Frame preemption can only be used when both the local device and the
>> >> link partner support it.
>> >>
>> >> Only parameters for enabling/disabling frame preemption and
>> >> configuring the minimum fragment size are included here. Expressing
>> >> which queues are marked as preemptible is left to mqprio/taprio, as
>> >> having that information there should be easier on the user.
>> >>
>> >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> >> ---
>> >
>> > I just noticed that the aMACMergeStatusVerify variable is not exposed in
>> > the PREEMPT_GET command, which would allow the user to inspect the state
>> > of the MAC merge sublayer verification state machine. Also, a way in the
>> > PREEMPT_SET command to set the disableVerify variable would be nice.
>> >
>>
>> The hardware I have won't have support for this.
>
> What exactly is not supported, FP verification or the disabling of it?
> Does your hardware at least respond to verification frames?
>

Not supported in the sense that the NIC doesn't expose those variables
into registers.

About the behavior, I am asking our hardware folks.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
