Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87867D6B35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 14:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E7964330F;
	Wed, 25 Oct 2023 12:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E7964330F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698236460;
	bh=O7NtsbD1115OBgzplG30TvMpEtWKvSi10h9aXoC2NEk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lPlqfPBqtPi0O+eUPuX4ixis4gh8JUWUUmETYNS8G/TlVvMiJqhPKDty0LJqhu830
	 m2IaGnpgjWQjlqunIDKTq9uHDNdrDBoqnHTWOlwuByXO0AaWIlT/NByCnYY8lh1IJo
	 FOrruZpvfaEpbV1aNxEiaRGLJeVA25/TkqCYSOHdquEJ8hgfaA0xNCswbUuUYFIrrZ
	 6YHduf485yGQfrmOWkVfj0iVlvM4kagdHJjbbrj7dZvt5KmiMpmF6nUyIIcMtFfAHt
	 fjhaD0b2cFkSMsKtgxouD4trH8QvHZbjl31fV6DtIVVDytKWfjV7c+OTOcDswtw91C
	 C/tinxNZ4riuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdK4euX-D_GS; Wed, 25 Oct 2023 12:20:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03CD4432DC;
	Wed, 25 Oct 2023 12:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03CD4432DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA17F1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9252E6FC6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9252E6FC6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jG0wyKLm79rB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 12:20:53 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82D7961142
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82D7961142
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2c503da4fd6so83158411fa.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 05:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698236450; x=1698841250;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fShXsPgDOgnyfdb+jgOvlSS+wejkoeOfsPohFpEDw2M=;
 b=w6Ctdmqo2s1xoiJ9uJLwKXUULh25g1KKhtmxQ3CW00HpfZiuzoK8Wf2Bvy7otWDWgo
 Iv9aDbg4tYOhsB9yzUe5AepMmLQrrx7yh+uzPBCZZbNIlOEH9+scs+/g7qK/GtT+U3er
 AWLtO7PTxiWko0k4sPMkhSvge/JXN9SXm6daBERPA+cwTXD2epiqDNKVdxkteh+ZK0dp
 9F8wnI30mafJPDTcmwHSQp87K2GAZIwsEISOl9xCVfeZMyO34ffVo7lp0ouLU5XRBbzb
 42lZu+HawVQtrVi7L7/pZ4OERAMN+eOqcjlShabRO9cgmSUTtL2SWpXVH18u03CucsLM
 kyPQ==
X-Gm-Message-State: AOJu0YxrS6kZzTm/8ulbC8bEBwSq6HaEjb3Pga1yQlqlP3KVHNKmKerk
 hfzIppfcAhXKBRKlo831t+PyZQ==
X-Google-Smtp-Source: AGHT+IEvz4NMxeEHxkZx1Gd99MbaIl8W/GxIxbl+NvOQjffMvlcjF6OL3crDJgL8ZNYvvQYuGz6pSA==
X-Received: by 2002:a05:651c:221c:b0:2c5:1ad0:c318 with SMTP id
 y28-20020a05651c221c00b002c51ad0c318mr12340683ljq.44.1698236449624; 
 Wed, 25 Oct 2023 05:20:49 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 v21-20020a05600c12d500b004081a011c0esm18864853wmd.12.2023.10.25.05.20.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Oct 2023 05:20:48 -0700 (PDT)
Date: Wed, 25 Oct 2023 14:20:47 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZTkIH68kCzb+4VME@nanopsycho>
References: <20231025103315.1149589-1-ivecera@redhat.com>
 <20231025103315.1149589-2-ivecera@redhat.com>
 <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
 <ZTkHJ6IP4tj3EmCV@nanopsycho>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZTkHJ6IP4tj3EmCV@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1698236450; x=1698841250;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fShXsPgDOgnyfdb+jgOvlSS+wejkoeOfsPohFpEDw2M=;
 b=jUzpF5yRKFy7de4G/ERDqzywxkmzk7chznItx11fbJWjYJ/QN1TiEg1oRATO6cs9x+
 ZLZPolZd0miXIzKVRtqTbmZ9zJKygCidRJKT1yPwpHgP38vKH7f+YTNUypFbGKadnzq+
 4oJdvd0eudDr+Fl8XTwZvbDhmoa0z6XWYRFtJo8F8NnPjrkkq+k3iOlHSBQe+0I8ZT1Y
 Dz/QeOe1mDUtR8VX36AEBSDzbU1YnUeZQWRBD8MedYyi8dQsqaC2ptwEYexPcWRrdHIm
 dVwhMJ/RlB6DopU9dt8oE9ijsXg5wJAibTNz+0umD6MczM1A2+ldafp99gGVz5OMpktZ
 2koA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=jUzpF5yR
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

Wed, Oct 25, 2023 at 02:16:39PM CEST, jiri@resnulli.us wrote:
>Wed, Oct 25, 2023 at 12:48:37PM CEST, wojciech.drewek@intel.com wrote:
>>
>>
>>On 25.10.2023 12:33, Ivan Vecera wrote:
>>> The i40e_hw.mac.type cannot to be equal to I40E_MAC_VF or
>>> I40E_MAC_X722_VF so remove helper i40e_is_vf(), simplify
>>> i40e_adminq_init_regs() and remove enums for these VF MAC types.
>>> 
>>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>>> ---
>>>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 ++++++-------------
>>>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  8 -----
>>>  2 files changed, 10 insertions(+), 31 deletions(-)
>>> 
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>> index 29fc46abf690..896c43905309 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>> @@ -17,29 +17,16 @@ static void i40e_resume_aq(struct i40e_hw *hw);
>>>  static void i40e_adminq_init_regs(struct i40e_hw *hw)
>>>  {
>>>  	/* set head and tail registers in our local struct */
>>> -	if (i40e_is_vf(hw)) {
>>> -		hw->aq.asq.tail = I40E_VF_ATQT1;
>>> -		hw->aq.asq.head = I40E_VF_ATQH1;
>>> -		hw->aq.asq.len  = I40E_VF_ATQLEN1;
>>> -		hw->aq.asq.bal  = I40E_VF_ATQBAL1;
>>> -		hw->aq.asq.bah  = I40E_VF_ATQBAH1;
>>> -		hw->aq.arq.tail = I40E_VF_ARQT1;
>>> -		hw->aq.arq.head = I40E_VF_ARQH1;
>>> -		hw->aq.arq.len  = I40E_VF_ARQLEN1;
>>> -		hw->aq.arq.bal  = I40E_VF_ARQBAL1;
>>> -		hw->aq.arq.bah  = I40E_VF_ARQBAH1;
>>
>>What about removing those I40E_VF_* defines?
>>This is their only usage here, right?
>
>Wait, do you suggest to use the values directly? That would be
>wild even for i40e :)

Ah, sec. This is duplicated in
drivers/net/ethernet/intel/iavf/iavf_register.h. That confused me.



>
>
>>
>>> -	} else {
>>> -		hw->aq.asq.tail = I40E_PF_ATQT;
>>> -		hw->aq.asq.head = I40E_PF_ATQH;
>>> -		hw->aq.asq.len  = I40E_PF_ATQLEN;
>>> -		hw->aq.asq.bal  = I40E_PF_ATQBAL;
>>> -		hw->aq.asq.bah  = I40E_PF_ATQBAH;
>>> -		hw->aq.arq.tail = I40E_PF_ARQT;
>>> -		hw->aq.arq.head = I40E_PF_ARQH;
>>> -		hw->aq.arq.len  = I40E_PF_ARQLEN;
>>> -		hw->aq.arq.bal  = I40E_PF_ARQBAL;
>>> -		hw->aq.arq.bah  = I40E_PF_ARQBAH;
>>> -	}
>>> +	hw->aq.asq.tail = I40E_PF_ATQT;
>>> +	hw->aq.asq.head = I40E_PF_ATQH;
>>> +	hw->aq.asq.len  = I40E_PF_ATQLEN;
>>> +	hw->aq.asq.bal  = I40E_PF_ATQBAL;
>>> +	hw->aq.asq.bah  = I40E_PF_ATQBAH;
>>> +	hw->aq.arq.tail = I40E_PF_ARQT;
>>> +	hw->aq.arq.head = I40E_PF_ARQH;
>>> +	hw->aq.arq.len  = I40E_PF_ARQLEN;
>>> +	hw->aq.arq.bal  = I40E_PF_ARQBAL;
>>> +	hw->aq.arq.bah  = I40E_PF_ARQBAH;
>>>  }
>>>  
>>>  /**
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>> index 9fda0cb6bdbe..7eaf8b013125 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>> @@ -64,9 +64,7 @@ typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct i40e_aq_desc *);
>>>  enum i40e_mac_type {
>>>  	I40E_MAC_UNKNOWN = 0,
>>>  	I40E_MAC_XL710,
>>> -	I40E_MAC_VF,
>>>  	I40E_MAC_X722,
>>> -	I40E_MAC_X722_VF,
>>>  	I40E_MAC_GENERIC,
>>>  };
>>>  
>>> @@ -588,12 +586,6 @@ struct i40e_hw {
>>>  	char err_str[16];
>>>  };
>>>  
>>> -static inline bool i40e_is_vf(struct i40e_hw *hw)
>>> -{
>>> -	return (hw->mac.type == I40E_MAC_VF ||
>>> -		hw->mac.type == I40E_MAC_X722_VF);
>>> -}
>>> -
>>>  /**
>>>   * i40e_is_aq_api_ver_ge
>>>   * @hw: pointer to i40e_hw structure
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
