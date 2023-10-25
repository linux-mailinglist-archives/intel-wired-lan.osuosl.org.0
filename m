Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBCD7D6B0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 14:17:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F03D343653;
	Wed, 25 Oct 2023 12:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F03D343653
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698236231;
	bh=WPdPNcyYTjM255FUTZexR3bs6eKtfKWF1HGGD+8djjY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8HO88jT4db/sdBRKSZQA5jHFgtydHiTmJ68c1KYXuUmdF1hqm1STeJTn+AOJIi3G7
	 IIofRKCnCJVAhMH4gaOpkKJ+tvlQz/NdTVaT9R9i0wwOSxM4PIaar8525xBIqZRDXK
	 FfcfcJjjAc4W5YmsoZgR2KidkIEYQRVWTthn3vNyNv26oUhCOt/Bd3CphlpVcfbBFL
	 zxVG6zBsl5r/VNZJ2UhQGB5AZiHcOOhLWs0c7K4oT6xIca+1qoViPflqNq8u4hx9XG
	 v6IjvGqYibdHiSrDGw+2kLZwwn/IcnFLa5R8sSfMvddtSo8jVnJwLfehPrAIDBblFO
	 d5fstwZhW5TTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z91UL9lwEnut; Wed, 25 Oct 2023 12:17:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69925432F3;
	Wed, 25 Oct 2023 12:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69925432F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA7C81BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B166B4364C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B166B4364C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJ0v-Ys1iPLc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 12:16:45 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73EED43303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73EED43303
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-507b9408c61so7663998e87.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 05:16:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698236202; x=1698841002;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=l6enL5EbyDfVL6+C+BZSR7yee3p77mBvqCgXCd423pQ=;
 b=cMDwg5qOkosVX8zXbFCBbh4UOmNYJjZtX/cDIH2OzJR2veVIm4lmuVkEF5VYtC4K2Z
 Z2yk812xWIbdL/VpdNgnx/Lkty0E6Mjr+wYqQ6VJY0PhuWaxBJ8TCC/xD5rWShNbqu4G
 WFGpFiZaXkktTerEbI1RWqQjGlzIfaMBy1/fpM/DCgQbwnHEyMljW1ezPVGddkio0bX1
 sL7swZpwquTxAmJfn9+G7Pal7ze9d1O30emHiMC69tNuldy5LTSUiPukyoGeJc8DRuBK
 bKVOJa5MfuwnK0y3sblkyK9kSd9mQBp4iO2PNB/8a5GJDC9NeuUoqYf3zXtjeHJ6UWL4
 /YeQ==
X-Gm-Message-State: AOJu0YzgBZuF41n7KJTh3I6rGqCx+PcbUZBVwRY9k81I0fjRwOMfcNbV
 I66zk+fYEZwxleg3LSAJO6dRcg==
X-Google-Smtp-Source: AGHT+IEFA6aHGTY5ZaZDxLfpdX+ICUrYbRcgGlM172dy60d4sgJiuydb3ODCVjhW/oUznlxvfDMtJA==
X-Received: by 2002:a05:6512:2356:b0:507:b14e:b10d with SMTP id
 p22-20020a056512235600b00507b14eb10dmr13201259lfu.66.1698236201634; 
 Wed, 25 Oct 2023 05:16:41 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b24-20020a05600c06d800b004064e3b94afsm19103500wmn.4.2023.10.25.05.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Oct 2023 05:16:41 -0700 (PDT)
Date: Wed, 25 Oct 2023 14:16:39 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZTkHJ6IP4tj3EmCV@nanopsycho>
References: <20231025103315.1149589-1-ivecera@redhat.com>
 <20231025103315.1149589-2-ivecera@redhat.com>
 <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1698236202; x=1698841002;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=l6enL5EbyDfVL6+C+BZSR7yee3p77mBvqCgXCd423pQ=;
 b=jR4ZzY+uPZM3nwVh+e9qmCDRSCZcTkRQvB0HNNCuM1OWVCv1N4zUY4QmXH4jLK7Zrg
 JzbyvWewOREYEEimbqBZdrXsXpNSY7s4mOAaK35fY/c0aIFVKVZsXoSRfk0vZJ08lTyr
 QP9H2BS0rKlg00tkLIe6NOD/yIVWpX76fv0YcqnKxGzxJVmBWAczqDToA5zs+B9tYfe5
 ICrSjSaoxwk6X5J5Xk+3kFXNPv58Tl9JIpumvxsOyBApy7BqNlNyTYhnlkECguwgRguM
 mumPH6ho/pJKKWg0P6WVjcArzTI7fAwqrJ1zx/SDqjn9wj6nd1IRifjMkHtm2G8PJjRC
 PMjw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=jR4ZzY+u
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: Remove VF MAC types
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Oct 25, 2023 at 12:48:37PM CEST, wojciech.drewek@intel.com wrote:
>
>
>On 25.10.2023 12:33, Ivan Vecera wrote:
>> The i40e_hw.mac.type cannot to be equal to I40E_MAC_VF or
>> I40E_MAC_X722_VF so remove helper i40e_is_vf(), simplify
>> i40e_adminq_init_regs() and remove enums for these VF MAC types.
>> 
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 ++++++-------------
>>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  8 -----
>>  2 files changed, 10 insertions(+), 31 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>> index 29fc46abf690..896c43905309 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>> @@ -17,29 +17,16 @@ static void i40e_resume_aq(struct i40e_hw *hw);
>>  static void i40e_adminq_init_regs(struct i40e_hw *hw)
>>  {
>>  	/* set head and tail registers in our local struct */
>> -	if (i40e_is_vf(hw)) {
>> -		hw->aq.asq.tail = I40E_VF_ATQT1;
>> -		hw->aq.asq.head = I40E_VF_ATQH1;
>> -		hw->aq.asq.len  = I40E_VF_ATQLEN1;
>> -		hw->aq.asq.bal  = I40E_VF_ATQBAL1;
>> -		hw->aq.asq.bah  = I40E_VF_ATQBAH1;
>> -		hw->aq.arq.tail = I40E_VF_ARQT1;
>> -		hw->aq.arq.head = I40E_VF_ARQH1;
>> -		hw->aq.arq.len  = I40E_VF_ARQLEN1;
>> -		hw->aq.arq.bal  = I40E_VF_ARQBAL1;
>> -		hw->aq.arq.bah  = I40E_VF_ARQBAH1;
>
>What about removing those I40E_VF_* defines?
>This is their only usage here, right?

Wait, do you suggest to use the values directly? That would be
wild even for i40e :)


>
>> -	} else {
>> -		hw->aq.asq.tail = I40E_PF_ATQT;
>> -		hw->aq.asq.head = I40E_PF_ATQH;
>> -		hw->aq.asq.len  = I40E_PF_ATQLEN;
>> -		hw->aq.asq.bal  = I40E_PF_ATQBAL;
>> -		hw->aq.asq.bah  = I40E_PF_ATQBAH;
>> -		hw->aq.arq.tail = I40E_PF_ARQT;
>> -		hw->aq.arq.head = I40E_PF_ARQH;
>> -		hw->aq.arq.len  = I40E_PF_ARQLEN;
>> -		hw->aq.arq.bal  = I40E_PF_ARQBAL;
>> -		hw->aq.arq.bah  = I40E_PF_ARQBAH;
>> -	}
>> +	hw->aq.asq.tail = I40E_PF_ATQT;
>> +	hw->aq.asq.head = I40E_PF_ATQH;
>> +	hw->aq.asq.len  = I40E_PF_ATQLEN;
>> +	hw->aq.asq.bal  = I40E_PF_ATQBAL;
>> +	hw->aq.asq.bah  = I40E_PF_ATQBAH;
>> +	hw->aq.arq.tail = I40E_PF_ARQT;
>> +	hw->aq.arq.head = I40E_PF_ARQH;
>> +	hw->aq.arq.len  = I40E_PF_ARQLEN;
>> +	hw->aq.arq.bal  = I40E_PF_ARQBAL;
>> +	hw->aq.arq.bah  = I40E_PF_ARQBAH;
>>  }
>>  
>>  /**
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
>> index 9fda0cb6bdbe..7eaf8b013125 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>> @@ -64,9 +64,7 @@ typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct i40e_aq_desc *);
>>  enum i40e_mac_type {
>>  	I40E_MAC_UNKNOWN = 0,
>>  	I40E_MAC_XL710,
>> -	I40E_MAC_VF,
>>  	I40E_MAC_X722,
>> -	I40E_MAC_X722_VF,
>>  	I40E_MAC_GENERIC,
>>  };
>>  
>> @@ -588,12 +586,6 @@ struct i40e_hw {
>>  	char err_str[16];
>>  };
>>  
>> -static inline bool i40e_is_vf(struct i40e_hw *hw)
>> -{
>> -	return (hw->mac.type == I40E_MAC_VF ||
>> -		hw->mac.type == I40E_MAC_X722_VF);
>> -}
>> -
>>  /**
>>   * i40e_is_aq_api_ver_ge
>>   * @hw: pointer to i40e_hw structure
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
