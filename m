Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC6E2A8984
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 23:03:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D62BD867F4;
	Thu,  5 Nov 2020 22:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZTA-cOYyTqI; Thu,  5 Nov 2020 22:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28C9A867F3;
	Thu,  5 Nov 2020 22:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99A171BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 22:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A06B867DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 22:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WsP4mFtExpRO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 22:03:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B556867C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 22:03:33 +0000 (UTC)
IronPort-SDR: ogkp/F8feo1t0zS7pJSHUGKzaanvQbp/RJqjvDnDfEd+6hysUjMcdbUxu7/cMXJ9lkjtzwtcqw
 e09Q9Xm3qNlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="233632365"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="233632365"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 14:03:32 -0800
IronPort-SDR: ka3s73/ME4UqLNURTOfVyN/X3hYXkFlFbnfhQygG/67eIg77MZ2ow5hxjjnRgyKhnU/xphA57i
 +CZqp9Y+CyLw==
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="364490465"
Received: from vithalam-mobl1.amr.corp.intel.com (HELO ellie) ([10.251.18.55])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2020 14:03:31 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
In-Reply-To: <160444685523.10323.13712174376571831748@anemani-mobl2.amr.corp.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-9-andre.guedes@intel.com>
 <20201102182659.GK6427@ranger.igk.intel.com>
 <160444685523.10323.13712174376571831748@anemani-mobl2.amr.corp.intel.com>
Date: Thu, 05 Nov 2020 14:03:31 -0800
Message-ID: <87k0uza2bw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 8/9] igc: Add support for XDP_TX
 action
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Andre Guedes <andre.guedes@intel.com> writes:

> Quoting Maciej Fijalkowski (2020-11-02 10:26:59)
>> > +static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
>> > +                                         int cpu)
>> > +{
>> > +     int index = cpu;
>> > +
>> > +     if (index >= adapter->num_tx_queues)
>> > +             index = index % adapter->num_tx_queues;
>> 
>> I'm not sure why you don't want to take the suggestion for getting rid of
>> modulo op. I won't insist anymore ;)
>
> As I mentioned in the previous comment, I was just following the same
> approach from igb. Since I'll submit a v4 already, I'll do that as
> well.

Another idea is to use iter_div_u64_rem() as the expected difference
between divident and divisor should be small.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
