Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B4494C98F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 07:19:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C2AE81E41;
	Fri,  9 Aug 2024 05:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P76q_lFRdAOq; Fri,  9 Aug 2024 05:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A1C281DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723180753;
	bh=cHQ5utXMSq/R192Sfh7Q/CX5Lxh72XFgGZ1ys3GwhfE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yGbBugm9T0MXynX8nf6tAtiogs8a5FXXxT6v+KcqUfG+Df8eAhmQRwDMKsO1sT5kH
	 88TAHg/M2fHbfpPZeFZEgkTRYJ8BPDjrNe5jlwqiGA61qJodVZoH/TybSNqTQh5GjJ
	 byZUYFkE6a9p66l3LapAiWuElWaeTDqnpSC49IWKHxBpUJEecY+hy1kVxPlszczLM3
	 7JEv+AC3/NMmkv6ZhAvBO6d9ttGPe3RfZ2g0FMeofUk1RHvGM8cFp2OlUmNAtuE0Di
	 w2gkMm2lVmgWWnTwi3S5C7nUyQ4HZpWVa0Xw5RbwIYNBAbgFcOMKRQ4/32d+PPu7vG
	 u6dTRbbIb7GzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A1C281DF8;
	Fri,  9 Aug 2024 05:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 175441BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0372B4010D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYZf1icNliM7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 05:19:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F658400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F658400BB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F658400BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:19:08 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af7c9.dynamic.kabel-deutschland.de
 [95.90.247.201])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7F13261E64862;
 Fri,  9 Aug 2024 07:18:41 +0200 (CEST)
Message-ID: <08fbb337-d2f1-47a7-871e-3890b34a782f@molgen.mpg.de>
Date: Fri, 9 Aug 2024 07:18:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jiri Pirko <jiri@resnulli.us>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
 <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
 <ZrTli6UxMkzE31TH@nanopsycho.orion> <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZrWlfhs6x6hrVhH+@mev-dev.igk.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/8] ice: devlink PF MSI-X max
 and min parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Michal,


Thank you for your patch.

Am 09.08.24 um 07:13 schrieb Michal Swiatkowski:
> On Thu, Aug 08, 2024 at 05:34:35PM +0200, Jiri Pirko wrote:
>> Thu, Aug 08, 2024 at 09:20:09AM CEST, michal.swiatkowski@linux.intel.com wrote:
>>> Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>>> range.
>>>
>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> ---
>>> .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
>>> drivers/net/ethernet/intel/ice/ice.h          |  8 +++
>>> drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
>>> 3 files changed, 76 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> index 29a5f822cb8b..bdc22ea13e0f 100644
>>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> @@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>>> 	return 0;
>>> }
>>>
>>> +static int
>>> +ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
>>> +				 union devlink_param_value val,
>>> +				 struct netlink_ext_ack *extack)
>>> +{
>>> +	if (val.vu16 > ICE_MAX_MSIX) {
>>> +		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
>>
>> No reason to have "PF" in the text. Also, no reason to have "max MSI-X".
>> That is the name of the param.
> 
> Ok, will change both, thanks.

Maybe also print both values in the error message?

>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	return 0;
>>> +}

[…]


Kind regards,

Paul
