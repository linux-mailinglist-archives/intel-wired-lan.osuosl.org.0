Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E503DF4F8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 20:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C14ED4037C;
	Tue,  3 Aug 2021 18:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jr6fCL5SBcFf; Tue,  3 Aug 2021 18:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F04F40209;
	Tue,  3 Aug 2021 18:50:15 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5ED71BF847
 for <intel-wired-lan@osuosl.org>; Tue,  3 Aug 2021 18:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D38DD829B1
 for <intel-wired-lan@osuosl.org>; Tue,  3 Aug 2021 18:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A_rysKTuRWcl for <intel-wired-lan@osuosl.org>;
 Tue,  3 Aug 2021 18:50:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E8EC82998
 for <intel-wired-lan@osuosl.org>; Tue,  3 Aug 2021 18:50:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="210646367"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="210646367"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 11:50:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="458369884"
Received: from mrae-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.67.121])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 11:50:08 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Gunasekaran,
 Aravindhan" <aravindhan.gunasekaran@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
In-Reply-To: <9a007e51b14139e1c6372f182f8a38d1d4dc662e.camel@intel.com>
References: <1627916831-10144-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1627916831-10144-2-git-send-email-aravindhan.gunasekaran@intel.com>
 <9a007e51b14139e1c6372f182f8a38d1d4dc662e.camel@intel.com>
Date: Tue, 03 Aug 2021 11:50:08 -0700
Message-ID: <8735rqnz1b.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Use default
 cycle 'start' and 'end' values for queues
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
Cc: "Chenniyappan, Velmurugan" <velmurugan.chenniyappan@intel.com>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Nguyen, Anthony L" <anthony.l.nguyen@intel.com> writes:

> On Mon, 2021-08-02 at 20:37 +0530, aravindhan.gunasekaran@intel.com
> wrote:
>> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> 
>> Sets default values for each queue cycle start and cycle end. This
>> allows some simplification in the handling of these configurations as
>> most TSN features in i225 require a cycle to be configured.
>> 
>> In i225, cycle start and end time is required to be programmed for
>> CBS to work properly.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Signed-off-by: Aravindhan Gunasekaran <
>> aravindhan.gunasekaran@intel.com>
>> ---
>
> <snip>
>
>> @@ -5841,16 +5829,31 @@ static int igc_tsn_enable_launchtime(struct
>> igc_adapter *adapter,
>>  	return igc_tsn_offload_apply(adapter);
>>  }
>>  
>> +static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
>> +{
>> +	int i;
>> +
>> +	adapter->base_time = 0;
>> +	adapter->cycle_time = NSEC_PER_SEC;
>> +
>> +	for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
>
> Should this be using adapter->num_tx_queues? Otherwise, we can come
> across this [1]?

Ugh. Good catch. Somehow, I missed this on my review.

Aravindhan, can you fix this and send a new version of the series?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
