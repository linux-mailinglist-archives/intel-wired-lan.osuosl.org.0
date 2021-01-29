Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 656D1308F47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 22:27:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02CE3871D2;
	Fri, 29 Jan 2021 21:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ohmer7V8pk1C; Fri, 29 Jan 2021 21:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0957871E0;
	Fri, 29 Jan 2021 21:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AF161BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 012D787443
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:27:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qz26FFjR4CJv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 21:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C422A87403
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:27:43 +0000 (UTC)
IronPort-SDR: rloBCV4kSDS2IYWxdsoE2Zb5zbMCCl/ahkC7jai65cssg9FiMBGnQlBkmaz/ldz4LgF2M0YWX8
 tU6ORQtKDsMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="179706805"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="179706805"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:27:42 -0800
IronPort-SDR: EHnBB3E3HR89MCE+UOB9IAuwByLYhXtbemwdwONUzHdzEF3ILqAK3EKDGAxPJNNiUHx4X82G2L
 WFA9YXmOFa+g==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="431174255"
Received: from ndatiri-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.145.249])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:27:41 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210126003243.x3c44pmxmieqsa6e@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-7-vinicius.gomes@intel.com>
 <20210126003243.x3c44pmxmieqsa6e@skbuf>
Date: Fri, 29 Jan 2021 13:27:28 -0800
Message-ID: <87pn1nsabj.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/8] igc: Add support for
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Fri, Jan 22, 2021 at 02:44:51PM -0800, Vinicius Costa Gomes wrote:
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
>
> And not one word has been said about the patch...

If I am undertanding this right. Will fix the commit message.

>
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>>  drivers/net/ethernet/intel/igc/igc.h         | 12 +++++
>>  drivers/net/ethernet/intel/igc/igc_defines.h |  4 ++
>>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 53 ++++++++++++++++++++
>>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 25 +++++++--
>>  4 files changed, 91 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index 35baae900c1f..1067c46e0bc2 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -87,6 +87,7 @@ struct igc_ring {
>>  	u8 queue_index;                 /* logical index of the ring*/
>>  	u8 reg_idx;                     /* physical index of the ring */
>>  	bool launchtime_enable;         /* true if LaunchTime is enabled */
>> +	bool preemptible;		/* true if not express */
>
> Mixing tabs and spaces?

Ugh. Will fix. Thanks.

>
>> +static int igc_ethtool_set_preempt(struct net_device *netdev,
>> +				   struct ethtool_fp *fpcmd,
>> +				   struct netlink_ext_ack *extack)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	int i;
>> +
>> +	if (fpcmd->add_frag_size < 68 || fpcmd->add_frag_size > 260) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Invalid value for add-frag-size");
>> +		return -EINVAL;
>> +	}
>
> This check should belong in ethtool, since there's nothing unusual about
> this supported range.
>
> Also, I believe that Jakub requested the min-frag-size to be passed as
> 0, 1, 2, 3 as the standard specifies it, and not its multiplied
> version?

Later, Michal Kubechek suggested using the multiplied value, to be
future proof and less dependent on some specific standard version.

>
>> +
>> +	adapter->frame_preemption_active = fpcmd->enabled;
>> +	adapter->add_frag_size = fpcmd->add_frag_size;
>> +
>> +	if (!adapter->frame_preemption_active)
>> +		goto done;
>> +
>> +	/* Enabling frame preemption requires TSN mode to be enabled,
>> +	 * which requires a schedule to be active. So, if there isn't
>> +	 * a schedule already configured, configure a simple one, with
>> +	 * all queues open, with 1ms cycle time.
>> +	 */
>> +	if (adapter->base_time)
>> +		goto done;
>
> Unless I'm missing something, you are interpreting an adapter->base_time
> value of zero as "no Qbv schedule on port", as if it was invalid to have
> a base-time of zero, which it isn't.

This HW has specific limitations, it doesn't allow a base_time in the
past. So a base_time of zero can be used to signify "No Qbv".

>
>> @@ -115,6 +130,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>>  		if (ring->launchtime_enable)
>>  			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
>>  
>> +		if (ring->preemptible)
>> +			txqctl |= IGC_TXQCTL_PREEMPTABLE;
>
> I think this is the only place in the series where you use PREEMPTABLE
> instead of PREEMPTIBLE.

Yeah, on the datasheet it's written PREEMPTABLE, I chose to use this
spelling to make it easier to search for this bit in the datasheet.

>
>> +
>>  		wr32(IGC_TXQCTL(i), txqctl);
>>  	}
>
> Out of curiosity, where is the ring to traffic class mapping configured
> in the igc driver? I suppose that you have more rings than traffic classes.

The driver follows the default behaviour, that netdev->queue[0] maps to
ring[0], queue[1] to ring[1], and so on. And by default ring[0] has
higher priority than ring[1], ring[1] higher than ring[2], and so on.

The HW only has 4 rings/queues.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
