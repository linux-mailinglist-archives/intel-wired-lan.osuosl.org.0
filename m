Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFEBA4DCDB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 12:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99A0260BB4;
	Tue,  4 Mar 2025 11:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1wva8sIQJs9; Tue,  4 Mar 2025 11:46:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED36660B7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741088761;
	bh=IGC+OUFd9WEbqfC9IsOb/kYA1WfnkS+SJJ4pJ1rpNPs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rcCCSYZDnRsvtEG4nhahOMWhO10nLZXS2n2FsDhxHP5XjMJvUWx4efurp/emuWlg+
	 DAkb+FBUuTeMyaDM8JLOpzPE63eG+ESgfxa394qTEISz5kYdZHQ2IL+mHHoWzVVm75
	 8IlNDqI1VRJe0AJhEXLK3wyK4kIS3vSWXhKTmPGog93wOZ7GrIfkq5EuOFsJbPvHwJ
	 yWaOOkGik+kS/cSEj7X+mrxa1FItfUSodt+XD2GzwRnNnr8cnM47CmPN0pn7z2x3Tr
	 9RLik3KzFN6HwxNUJMI/wmz2T2RwdjBcusysIgQUGamJmpN8XisFMHCBiaKWv/SytB
	 w8aWQNHpzbKQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED36660B7D;
	Tue,  4 Mar 2025 11:46:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BC410D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A02FB40BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:45:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qy-mJGNSNhfy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 11:45:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AC65440BC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC65440BC4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC65440BC4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:45:58 +0000 (UTC)
X-CSE-ConnectionGUID: 9Aal7U9rQNW7cvYnVbCORg==
X-CSE-MsgGUID: 1siguSAmTS2JyNLGDodY9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="59414280"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="59414280"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:45:58 -0800
X-CSE-ConnectionGUID: 1mi39+9bRoa3gjvfekyv4g==
X-CSE-MsgGUID: g39yr5FXSJSr6oNj+6TxMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="123472296"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.99.188])
 ([10.245.99.188])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:45:56 -0800
Message-ID: <00a160e5-c9b2-4b91-9823-dee37fdc5d25@linux.intel.com>
Date: Tue, 4 Mar 2025 12:45:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Jan Glaza <jan.glaza@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250304110833.95997-4-martyna.szapar-mudlaw@linux.intel.com>
 <9f6b830f-d2ee-4fde-a131-a956a6e84df7@molgen.mpg.de>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <9f6b830f-d2ee-4fde-a131-a956a6e84df7@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741088759; x=1772624759;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4soIBXAhLCkxO3sab6sFxXzD1R3x08j+wWGiid82z2U=;
 b=MrOL5429SHySuNA0xzb7e1FLrUnZ/NXsGhLHzGf8wABrOh/a2MNqIx0X
 hQR8hZNlIjZquqF9Npay+5t7fNHdhiPXidTfXIsoqMynuMb0e7r1FEzzb
 l/Q+IbjuTNhRnz2Se4lQ1A274vQu7KwnbS7bD5cIecWZjjqtDj0orYoXP
 u22eKZhMMhJdsFA1+JQGjdUXh0OhOoi3lMNEO7QRT0pGH05ynkGyPSbE+
 S/7r+FZzfDwWG6APgcEI9CI5Bf7TLYd0oRzGXDTrVwewyR9z9MZvRkmVI
 JJb0EV/jUOpeSqp/PITwS4P7qQ64y0rD0125IBSB51838B5KojVdIKvta
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MrOL5429
Subject: Re: [Intel-wired-lan] [iwl-net v3 1/5] virtchnl: make proto and
 filter action count unsigned
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



On 3/4/2025 12:15 PM, Paul Menzel wrote:
> Dear Jan, dear Martina,
> 
> 
> Thank you for the patch.
> 
> Am 04.03.25 um 12:08 schrieb Martyna Szapar-Mudlaw:
>> From: Jan Glaza <jan.glaza@intel.com>
>>
>> The count field in virtchnl_proto_hdrs and virtchnl_filter_action_set
>> should never be negative while still being valid. Changing it from
>> int to u32 ensures proper handling of values in virtchnl messages in
>> driverrs and prevents unintended behavior.
>> In its current signed form, a negative count does not trigger
>> an error in ice driver but instead results in it being treated as 0.
>> This can lead to unexpected outcomes when processing messages.
>> By using u32, any invalid values will correctly trigger -EINVAL,
>> making error detection more robust.
>>
>> Fixes: 1f7ea1cd6a374 ("ice: Enable FDIR Configure for AVF")
>> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar- 
>> mudlaw@linux.intel.com>
>> ---
>>   include/linux/avf/virtchnl.h | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
>> index 4811b9a14604..cf0afa60e4a7 100644
>> --- a/include/linux/avf/virtchnl.h
>> +++ b/include/linux/avf/virtchnl.h
>> @@ -1343,7 +1343,7 @@ struct virtchnl_proto_hdrs {
>>        * 2 - from the second inner layer
>>        * ....
>>        **/
>> -    int count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
>> +    u32 count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
> 
> Why limit the length, and not use unsigned int?
> 

u32 range is completely sufficient for number of proto hdrs (as said: 
"the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS") and I believe it 
is recommended to use fixed sized variables where possible

>>       union {
>>           struct virtchnl_proto_hdr
>>               proto_hdr[VIRTCHNL_MAX_NUM_PROTO_HDRS];
>> @@ -1395,7 +1395,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(36, 
>> virtchnl_filter_action);
>>   struct virtchnl_filter_action_set {
>>       /* action number must be less then VIRTCHNL_MAX_NUM_ACTIONS */
>> -    int count;
>> +    u32 count;
>>       struct virtchnl_filter_action actions[VIRTCHNL_MAX_NUM_ACTIONS];
>>   };
> 
> 
> Kind regards,
> 
> Paul
> 

