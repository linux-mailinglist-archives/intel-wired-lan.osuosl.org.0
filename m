Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F7F7D50A7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 15:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6935847D4;
	Tue, 24 Oct 2023 13:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6935847D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698152478;
	bh=Uag6bqF7l/KA1vOoZ+JThx8KA58VTEkQq2z1nT8hkpk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CBdHcP5vMmcOujT0McG5SwrACHH6aAfmFFtXShS8u5xV6+xQNKnIdluYzVs0fSzDz
	 2eUq32v53FZYE/6gY1TuwVdx6WVoI40KbpCBILD8ZrFO+YVdr7AzTtltNpy5P4CFxC
	 sxBtr7tKdP3i9lmgLdN+IFNxsSPEStG106+ATjZGGrJhKUbFZTa4DkhHVofPez+9/I
	 VkeT7+iwpO8wdeCH/C28E78R8VK5GMNdBbGHzA4xCR9VqSoOXdPCyaTaHll+y65TBo
	 AdzoXq8ldBh7F4AJhsJZXrdXFqjN+jB8qE7oSwovygdGtQ/S5CQvRNSI9XVCqudvUY
	 xWOj9MjlQ/BaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KGDbv0ZtDiz4; Tue, 24 Oct 2023 13:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B56A3844CA;
	Tue, 24 Oct 2023 13:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B56A3844CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 831741BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68E5B6FC0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:01:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68E5B6FC0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zyY7aR3Z-iOh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 13:01:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D6F26FC0C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:01:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D6F26FC0C
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-257-_Yx9v7gsPGSlGCwy8j95PA-1; Tue, 24 Oct 2023 09:01:07 -0400
X-MC-Unique: _Yx9v7gsPGSlGCwy8j95PA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8EBE857BC5;
 Tue, 24 Oct 2023 13:01:05 +0000 (UTC)
Received: from [10.43.2.183] (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E865A492BD9;
 Tue, 24 Oct 2023 13:01:03 +0000 (UTC)
Message-ID: <d71f2fa2-e5b7-4221-bbd0-86285b6c1c33@redhat.com>
Date: Tue, 24 Oct 2023 15:01:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20231023162928.245583-1-ivecera@redhat.com>
 <20231023162928.245583-3-ivecera@redhat.com>
 <2aba9a2d-9dfd-49f2-bfec-1ff563a5f017@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <2aba9a2d-9dfd-49f2-bfec-1ff563a5f017@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698152471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TdTXynsl0mVy35KpmI9bLMXkB0nwWaN15oyfZ6foo9E=;
 b=Yjn5ZFGmYJrfUDfd2I5W8ZoGykHe5SIFcJ9mHa3GMzx9uGuOIPBiiXGACWJ+/G2dHGlkNq
 aXhSAmUmeR7u2QV8Uigr6PXD8YcrQi53xXBjLvOAKKdCRppLPBm9Lr6NNhwoT3cagSd2u2
 4FO+Cq49OU4jIyj/sgwXkgmYnRSRpZY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Yjn5ZFGm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] i40e: Add other helpers
 to check version of running firmware and AQ API
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 24. 10. 23 12:24, Wojciech Drewek wrote:
> On 23.10.2023 18:29, Ivan Vecera wrote:
>> Add another helper functions that will be used by subsequent
>> patch to refactor existing open-coded checks whether the version
>> of running firmware and AdminQ API is recent enough to provide
>> certain capabilities.
>>
>> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_type.h | 54 +++++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
>> index 050d479aeed3..bb62c14aa3d4 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>> @@ -608,6 +608,60 @@ static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
>>   		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
>>   }
>>   
>> +/**
>> + * i40e_is_aq_api_ver_lt
>> + * @hw: pointer to i40e_hw structure
>> + * @maj: API major value to compare
>> + * @min: API minor value to compare
>> + *
>> + * Assert whether current HW API version is less than provided.
>> + **/
>> +static inline bool i40e_is_aq_api_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
>> +{
>> +	return !i40e_is_aq_api_ver_ge(hw, maj, min);
>> +}
> It feels a bit off to have those helpers in i40e_type.h.
> We don't have i40e_common.h though so I'd move them to i40e_prototype.h or i40e.h.
> Same comment regarding 1st patch (I know I gave it my tag but I spotted the issue
> while reading the 2nd patch).

I'm sorry I already submitted v2 and helpers are present i40e_type.h.
I would submit v3 but there is also i40e_is_vf() inline function already 
present in i40e_type. Would you be OK with a follow-up that would move 
all these inlines into i40e_prototype.h?

Btw i40e.h is not a good idea as this would bring a dependency on i40e.h 
into i40e_adminq.c, i40e_common.c and i40e_dcb.c.

Regards,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
