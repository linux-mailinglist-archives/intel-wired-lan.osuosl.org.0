Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2371C76EDAF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 17:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B487A8301F;
	Thu,  3 Aug 2023 15:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B487A8301F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691075504;
	bh=VpZTSvJuBrKbo+ctKFXC26fc96WJGAUV2EWhHZk0U38=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oTMNISpN/GKUHNDWZ/ELqxbrLvdZDNUHOKHU7uPg8dDeH5xuq4oSh6BfTtrnLd9g0
	 hp+X1ZofSXLEyBpVgYm0c4IOoMaF+KJzdescLiziCxiE1vo0i7gd2qTotJC8LDa+FZ
	 jw2usZyC/r+Yn0kxDYaFFWQDDs1N3ILBh/73zig5V7xG0kspXZ7rZv8Fqgryz+YbOS
	 scA7ygp1fzDKfqGtAmIGcY+9xxg7pToknntZ5xkShK5AksDr1bjJCSfhd6wtdm9dBA
	 ln+dduANh0bYvriNWAUT8Q2EX3ZxGknD+o9+XuFH/l0G1BFwwN2Bhh/9bXJTnlG1Lj
	 zXCD9n2tONHjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKwY6YjmHP79; Thu,  3 Aug 2023 15:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 950D9822A3;
	Thu,  3 Aug 2023 15:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 950D9822A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18E201BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 15:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37F8540AB9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 15:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37F8540AB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hGOpfTtp1XF0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 15:11:21 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54C17417A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 15:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54C17417A5
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="433750404"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="433750404"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 08:11:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="819698403"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="819698403"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.249.159.204])
 ([10.249.159.204])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 08:11:18 -0700
Message-ID: <457944e2-c8bc-74a7-ec5b-4502c4ec2664@linux.intel.com>
Date: Thu, 3 Aug 2023 17:11:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>, Leon Romanovsky <leon@kernel.org>
References: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
 <20230803131126.GD53714@unreal> <ZMuq9ph8HY6uAiGk@nanopsycho>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <ZMuq9ph8HY6uAiGk@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691075481; x=1722611481;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=geRz+WCA5+K2MPLiiSkmYknrl3waAqOqUJzE8u9rS2w=;
 b=GVRrgMj/q0XLrhsr706cXyfaH3Rj9clBfwrsusdhVQQuarvi1mWr9Djx
 AUhKtF1BvgGDG4Y62EQZIx0eDWZiWHo2Kvkq6qorddfKRBxCefJcTbDdM
 0hf85MkPexZzTkNTlHX/e/PksChGuCEUN7EiPK9/21owdI8PeJn6d5HTy
 BLlfJw49w0Ui8kkTmGHChG48ToJFhHy+O1lm5wSSJe5+wlII5WXo4JgHo
 LddGpZUMTi9EFRud2S9NbFw/q7WVBaQu4hrZoNQ2bH8MOLEhxOjG0cjKL
 FOCQaP3HFIzoHv59+QDzwUiT1S/O3qNbYCDsU8JS4COLOMEGeRtr9/ENh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GVRrgMj/
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Block switchdev mode
 when ADQ is acvite and vice versa
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 03.08.2023 15:26, Jiri Pirko wrote:
> Thu, Aug 03, 2023 at 03:11:26PM CEST, leon@kernel.org wrote:
>> On Tue, Aug 01, 2023 at 01:52:35PM +0200, Marcin Szycik wrote:
>>> ADQ and switchdev are not supported simultaneously. Enabling both at the
>>> same time can result in nullptr dereference.
>>>
>>> To prevent this, check if ADQ is active when changing devlink mode to
>>> switchdev mode, and check if switchdev is active when enabling ADQ.
>>>
>>> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
>>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 +++++
>>>  drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
>>>  2 files changed, 11 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>>> index ad0a007b7398..2ea5aaceee11 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>>> @@ -538,6 +538,11 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
>>>  		break;
>>>  	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
>>>  	{
>>> +		if (ice_is_adq_active(pf)) {
>>> +			dev_err(ice_pf_to_dev(pf), "switchdev cannot be configured - ADQ is active. Delete ADQ configs using TC and try again\n");
> 
> Does this provide sufficient hint to the user? I mean, what's ADQ and
> how it is related to TC objects? Please be more precise.

Application Device Queues, a conflicting feature unrelated to switchdev.
If it's enabled, there's a good chance the user knows what it is because
they configured it.

Could you suggest a better error message?

> 
> 
>>
>> It needs to be reported through netlink extack.
>>
>>> +			return -EOPNOTSUPP;
>>> +		}
>>> +
>>>  		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
>>>  			 pf->hw.pf_id);
>>>  		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
>>
>> Thanks
>>
> 

Regards,
Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
