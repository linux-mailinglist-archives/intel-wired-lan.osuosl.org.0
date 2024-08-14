Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E61951940
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 12:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A180840BA7;
	Wed, 14 Aug 2024 10:45:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OsVO-SRp_xpr; Wed, 14 Aug 2024 10:45:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF422404CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723632308;
	bh=wiUTnFpC5joop3DR9T5I/yXQE9g75XJ/m25P+wT3Bdo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4CBykZI8SlfGKfkvW3owgFlKj6Big5547M8myJQgv7F18nAY1HElC8sYgaMpsLi2W
	 Z+zQLhUHlNXAN1INdDgRP3rsc555Cccp5Y9+RDOl6kg6U1wp+05gquXw7dRdDo5qNd
	 Vx/F2PovW0ZQtygYWGTA6yVs04/kEfb98K7lSKwqQBxxSvGK7OwjhiVcqCr+Ki4/lY
	 NF3G6Q2FcGZuDn1ru2nwLE+eBy9pea062NTcQ2ng32yzI2cGOxX67Nt0HZVfSZgLA5
	 058ccGnefB7o4oR6+v2sdZqCYo8M/exUHLef/pE+LrzJfM97G2YVoODXx/21vcxnTl
	 KvYW9jQmoitDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF422404CD;
	Wed, 14 Aug 2024 10:45:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD101BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 10:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 033A340372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 10:45:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yLNzzHlJn18T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 10:45:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C2A2402C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C2A2402C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C2A2402C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 10:45:05 +0000 (UTC)
X-CSE-ConnectionGUID: b5o6UO0vThOesXAeNcN8zA==
X-CSE-MsgGUID: GZCl1qXeQ4ab1bDtc+/R3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21651979"
X-IronPort-AV: E=Sophos;i="6.09,145,1716274800"; d="scan'208";a="21651979"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 03:45:04 -0700
X-CSE-ConnectionGUID: FXDONt9bRzKKKWKeerycnA==
X-CSE-MsgGUID: R6hydafiSUCzC5YE6Bp2tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,145,1716274800"; d="scan'208";a="58933088"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.245.130.66])
 ([10.245.130.66])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 03:45:00 -0700
Message-ID: <40210c88-1e3a-44d2-8907-1530500eab91@linux.intel.com>
Date: Wed, 14 Aug 2024 12:44:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
References: <20240812102210.61548-1-dawid.osuchowski@linux.intel.com>
 <CAH-L+nOFqs-K5YzfrfmpRHbhDGM-+1ahhWh4NXATX1FqZiPVLQ@mail.gmail.com>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <CAH-L+nOFqs-K5YzfrfmpRHbhDGM-+1ahhWh4NXATX1FqZiPVLQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723632306; x=1755168306;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=a5KrdtRLOgpr8DwJFZLF1WHA9kk/i1MzhU2jglxWUG8=;
 b=Z7vvvcsrwuwF6r+kFWz2pbHpF4I6WsOLITIwMvurtPejsWI2N4qin3eA
 seLNbeq6ritfSmONBz1fc4HHOy/L7/AemIIrNWCnHrZtDwO2hC40lR5D7
 pt204jmV+6VZi6Np+8RIKCMbDxSFiwD0FX8XNbVrtxqqkAFHYl/94vj0r
 QmhlEAtPgDRifH1UJW+OUwINgvbN5vL7ZFm9Ux0fv9zVPdG85ve1VTHZ3
 t4gQBarPDliUtw1XkqjeZ1op2y1zvDdH9oaPE6Fx1ilxYtFBcekF6J9Cq
 40YfknhXuUaNIySDKq0D+XVNm8AMyKjaBuMQG86hFbZyAieI8L03t3XI/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z7vvvcsr
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 14.08.2024 05:19, Kalesh Anakkur Purayil wrote:
> On Mon, Aug 12, 2024 at 3:52 PM Dawid Osuchowski
> <dawid.osuchowski@linux.intel.com> wrote:
>> @@ -7568,11 +7570,13 @@ static void ice_update_pf_netdev_link(struct ice_pf *pf)
>>
>>                  ice_get_link_status(pf->vsi[i]->port_info, &link_up);
>>                  if (link_up) {
>> +                       netif_device_attach(pf->vsi[i]->netdev);
>>                          netif_carrier_on(pf->vsi[i]->netdev);
>>                          netif_tx_wake_all_queues(pf->vsi[i]->netdev);
>>                  } else {
>>                          netif_carrier_off(pf->vsi[i]->netdev);
>>                          netif_tx_stop_all_queues(pf->vsi[i]->netdev);
>> +                       netif_device_detach(pf->vsi[i]->netdev);
> [Kalesh] Is there any reason to attach back the netdev only if link is
> up? IMO, you should attach the device back irrespective of physical
> link status. In ice_prepare_for_reset(), you are detaching the device
> unconditionally.
> 
> I may be missing something here.

Hey Kalesh,

I think you are right, it is a mistake on my end. I have already sent a 
v2 but without this change. I just tested if this works with the attach 
irrespective of link status and it also resolves the reported issue that 
the patch is supposed to fix and doesn't introduce any regression that I 
am aware of. I will forward your concern to the v2 thread and will post 
a v3 with the change.

--Dawid

>>                  }
>>          }
>>   }
> 
>> --
>> 2.44.0
>>
>>
> 
> 
> --
> Regards,
> Kalesh A P

