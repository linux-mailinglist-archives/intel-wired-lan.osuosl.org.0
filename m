Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 714DCA4C740
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 17:32:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E8F4822E1;
	Mon,  3 Mar 2025 16:32:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_I3AHP8l6pm; Mon,  3 Mar 2025 16:32:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59A02822D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741019559;
	bh=NbLvElGqtzXAOGNJ6BV8WY+4BXzSKjmrk6Y/g8BapyQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VgrwQyHqjIimSLMu5Q+DgZsNa6O11qkWRtb0wuIuKAg5Y9EVJeNaz2ph2j8P1ZXQX
	 l0oCWxieUmJ1WqTSIfMH70l2/3tRT6WRNwANMyxVp4KqoFE5Cr7Jwb2A6wkr+zv0vv
	 IGcoBWl+OXQ9uho30MOfqRe932p12WJLES262a40LwTuQlrvR85mqpf722mYNFtURA
	 EbhdVm8kzuKTXFB79Rn4fFsIKjOZW7LHMIxAajkv3AKQwE9j3cdnHRwSFbKAbwQD/2
	 tJEEJh1h2vm7m/6EwE32FfZxEEJcHYdNpMJlkhTpbK0ka5XuueT45vFsTuViRy7VJv
	 m255KMaZvuKXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59A02822D9;
	Mon,  3 Mar 2025 16:32:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 404A7182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 16:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BC9380EEA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 16:32:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 72ZeHidiZUPn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 16:32:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AD9180C7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AD9180C7B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AD9180C7B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 16:32:37 +0000 (UTC)
X-CSE-ConnectionGUID: qEXmgaJ+SbiBE7enbojqyw==
X-CSE-MsgGUID: aARxSztQSp6KeWWXrBzlBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41815007"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="41815007"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 08:32:37 -0800
X-CSE-ConnectionGUID: 92mCBtiZSJa9iZbrhP2Djw==
X-CSE-MsgGUID: Yur+Ikr8Rk24f7/GN7K9yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148981684"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.84.226])
 ([10.245.84.226])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 08:32:35 -0800
Message-ID: <e3fa9d6b-abb7-4b35-8467-7fae4581a981@linux.intel.com>
Date: Mon, 3 Mar 2025 17:32:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
 <20250228171753.GL1615191@kernel.org>
 <68c841b7-fb5b-4c52-bd55-b98c80ad8667@intel.com>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <68c841b7-fb5b-4c52-bd55-b98c80ad8667@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741019558; x=1772555558;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bWw2/6JZlD9vW2ZsnAAmWxo6GNqij5KLd6pwKV6TiVQ=;
 b=ag8yve5r1rB2ysAR1PsqdRyFfYt9BY+HmvKxBwKvCGSE0FiCAjtehQ9J
 BYSyTV+s3FBzBKA7e4FuebDYIIdepc7fisLQvm/PcL5i7bKJs3rMgtIhK
 DrpNeiU/v6djblKtm86w+0FSyQM8IXsHjOSpqAMxwTEJBAVI+8kOcfZqJ
 vaii7IrmXXHuGCgfGzMeGe3/j/kyv+1EV+FOOKUMtIgUBhOnyJCPgmoJF
 L1757wVc2bzRoARjtrz6GmVQv5vElmxHhXk4N1Fj2G4jbyTLSrFF/EJ4x
 YkO0AJY2fXoFeVcSfTr2E6dpohMYt6pcTwHQmBAhduxbytiGY6q7Ahvm4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ag8yve5r
Subject: Re: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/3/2025 11:00 AM, Przemek Kitszel wrote:
> On 2/28/25 18:17, Simon Horman wrote:
>> On Tue, Feb 25, 2025 at 10:08:49AM +0100, Martyna Szapar-Mudlaw wrote:
>>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>
>>> Fix using the untrusted value of proto->raw.pkt_len in function
>>> ice_vc_fdir_parse_raw() by verifying if it does not exceed the
>>> VIRTCHNL_MAX_SIZE_RAW_PACKET value.
>>>
>>> Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary 
>>> patterns for VFs")
>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar- 
>>> mudlaw@linux.intel.com>
>>> ---
>>>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
>>>   1 file changed, 17 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/ 
>>> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>>> index 14e3f0f89c78..6250629ee8f9 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>>> @@ -835,18 +835,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
>>>       u8 *pkt_buf, *msk_buf __free(kfree);
>>>       struct ice_parser_result rslt;
>>>       struct ice_pf *pf = vf->pf;
>>> +    u16 pkt_len, udp_port = 0;
>>>       struct ice_parser *psr;
>>>       int status = -ENOMEM;
>>>       struct ice_hw *hw;
>>> -    u16 udp_port = 0;
>>> -    pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>>> -    msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>>> +    if (!proto->raw.pkt_len)
>>> +        return -EINVAL;
>>
>> Hi Martyna,
>>
>> It seems to me that the use of __free() above will result in
>> kfree(msk_buf) being called here. But msk_buf is not initialised at this
>> point.
>>
>> My suggest would be to drop the use of __free().
>> But if not, I think that in order to be safe it would be best to do this
>> (completely untested;
>>
>>     u8 *pkt_buf, *msk_buf __free(kfree) = NULL;
> 
> Oh yeah!, thank you Simon for catching that.
> 
> I would say "naked __free()" was harmful here.
> 

Thank you for suggestions, will send fixed v3

