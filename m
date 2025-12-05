Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C638CA8FB1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 20:05:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A42982278;
	Fri,  5 Dec 2025 19:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3diiixCHkiLb; Fri,  5 Dec 2025 19:05:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9473822A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764961514;
	bh=kfKtWFj0h7AG19WLVu+MIuy9f6wSoSxNprszwsHw4lE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wyDuIF89YEnJOZSBTwbeO8D+yA6pBMsNZYbH/oBz2puFzcD/3Uhy/j+H4QxaotDcy
	 bpcs6PgGVlC+EJ6A9qTOyXzW3LwJAtvWUvruXtGxALw5aK/pUPHECKmmYk0gTpF5Vx
	 Y90zny7MOdltx3VpGFswnxl8zKD8yE7SijrK2LYsPiVU0Hkhtdo7Zs8Qj2Xerpqpaw
	 mjZD5lCTAlr7nj/IdqUv6gdTCZfxabmvEWrxdj+tNIoz1xX16bhdD6UY/ay9POnOFi
	 XJ+4FhqbzQ4ezWyJqUIdeTgpJAOcH8fWpWjEjDMWfBbpx5DVVaLDrtUK61T/npdxBR
	 2MOQkXAtzWBfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9473822A4;
	Fri,  5 Dec 2025 19:05:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C6A8A1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 19:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B85F482213
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 19:05:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hp_roOrK3h4v for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 19:05:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2B0C821D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2B0C821D0
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2B0C821D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 19:05:11 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-7aae5f2633dso2836958b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Dec 2025 11:05:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764961511; x=1765566311;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kfKtWFj0h7AG19WLVu+MIuy9f6wSoSxNprszwsHw4lE=;
 b=RSAfqnCx8ysY6MOc94Ml1rIky8KqAIeewmSKz0MfVtSUNniOVOnGye5wJziBN2VAbB
 C/i998A4q4hi3zcHBlMeBZBZkFmK77Rw2CMfKshL/uRtI7cUWbCXFKrFgR+iZTPo7iTD
 eAKBIai0W2w9QYdzP+tJ80Sv8vXHQ93h3+yRGtuBG0X1IG16kbWyhkog0itdZj8dRSnm
 MAgjYlTDxZ6YzuaxZxEE5cTp+MR9fyMyGejwFjblfuJowL5/oiaYjgbV+khorbJtOrDv
 vFvHwsIw2LGYWtyE+ntq3FEEz+UfOInh3qs3HVYFbRfBsuwO0AyG+JxI7mYB5/W8Z2t9
 VgoQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNqWtmx+CnParo6XYmPsiWA5EHPsVkIxKMmg8TbIVyLv7HWQRQR3vhB+E/cnGsn6ykTN1Rwno/j/h5c7IKsV4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLZzSfiD6k89Ao1vErjQwwMegxziSbvg6arGbA/KnP3aVc+AZ/
 UmwPQEX5rWklbLNbQonElbpZbRJGhuzw1tqZTvEXRPFvA8iMJoXKtwCTAy/zuJCzues=
X-Gm-Gg: ASbGncvV+23XzzzKHX6iAMBMEC+IwKPgvnxz9Or8oHRgR1UWo1+dA+rzWidGxI2cbWc
 w0s2QjXIsW3SlsScVvbF9L+QHIQ8kZLU55KSeA5rwKP7hr5KGjI12PPPPuH67lqeSQSMQi/gcUF
 w7j8z8lbAYViVic+B6xQkJqGC2XQz2V/TVZXGgR3NvMZMbW0vfz+ZaMYk/60SGNbSfMEe7npXYu
 4Fh5YwIXnVtYQEdYC5HvAk/FUbHDYCwXWsXdInRTuz2YDs8P4PYmLFws8XauOLEWlhNyw9OaEhk
 XCQHMdV3aNNZbH4JIsWiTNVa++vHdG9acHGA7ZGCZqL0pm+oNvI0ypM43z0WH/3Yq1qdsRWzJEM
 ypSfeqRk0OAgSv11q1r2Btc74k2Mb4CbrSZwUtlUuODQ2Hkb4Qy5Lz4qFrrpXTWxUfm2xIvnsny
 KX3apx6inE4un/ss3z1/vdMICg
X-Google-Smtp-Source: AGHT+IFfFzVs0sM1jEuOstiWTaR8h34ot20r+QUvf9mPWY8T0+Eh61GtJBFRPqo38eLmH0QVT7Pdig==
X-Received: by 2002:a05:6a00:181f:b0:7a2:710d:43e7 with SMTP id
 d2e1a72fcca58-7e8c1a39444mr196640b3a.24.1764961511062; 
 Fri, 05 Dec 2025 11:05:11 -0800 (PST)
Received: from [100.96.46.103] ([104.28.205.247])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7e2afa31e9fsm5970056b3a.68.2025.12.05.11.05.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Dec 2025 11:05:10 -0800 (PST)
Message-ID: <d6dcd835-7564-481a-a854-25b187893e6c@cloudflare.com>
Date: Fri, 5 Dec 2025 11:05:08 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Jesse Brandeburg <jbrandeb@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
 <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Autocrypt: addr=jbrandeburg@cloudflare.com; keydata=
 xjMEZs5VGxYJKwYBBAHaRw8BAQdAUXN66Fq6fDRHlu6zZLTPwJ/h0HAPFdy8PYYCdZZ3wfjN
 LUplc3NlIEJyYW5kZWJ1cmcgPGpicmFuZGVidXJnQGNsb3VkZmxhcmUuY29tPsKZBBMWCgBB
 FiEEbDWZ8Owh8iVtmZ5hwWdFDvX9eL8FAmbOVRsCGwMFCQWjmoAFCwkIBwICIgIGFQoJCAsC
 BBYCAwECHgcCF4AACgkQwWdFDvX9eL/S7QD7BVW5aabfPjCwaGfLU2si1OkRh2lOHeWx7cvG
 fGUD3CUBAIYDDglURDpWnxWcN34nE2IHAnowjBpGnjG1ffX+h4UFzjgEZs5VGxIKKwYBBAGX
 VQEFAQEHQBkrBJLpr10LX+sBL/etoqvy2ZsqJ1JO2yXv+q4nTKJWAwEIB8J+BBgWCgAmFiEE
 bDWZ8Owh8iVtmZ5hwWdFDvX9eL8FAmbOVRsCGwwFCQWjmoAACgkQwWdFDvX9eL8blgEA4ZKn
 npEoWmyR8uBK44T3f3D4sVs0Fmt3kFKp8m6qoocBANIyEYnUUfsJFtHh+5ItB/IUk67vuEXg
 snWjdbYM6ZwN
In-Reply-To: <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1764961511; x=1765566311;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=kfKtWFj0h7AG19WLVu+MIuy9f6wSoSxNprszwsHw4lE=;
 b=exmWtJiuzTZlddC8udUP4NjCARG9oQomgpnITXKp8EeUIZpK6Rt4+TFQSVSH8Lu2IK
 fdbE0PnJVlMk/TWdgPE3Oa1gR5Ec7ESEEBCH4eaGGrRnI5H+Yu8pbR19qLiRpZXsTQjN
 yLDSg6LJsC7mJp4B20J4EkYZK54ws9theb5p0ENBaEHISzfDctYGWPc5BmdtPK0as61O
 qG2C14RKzQZiW3PDAkHg/Tl/1fkk+B+EF7uS1kx3KKWuVP9v419MjV6P1FyyuWyCsSh+
 6FqGhMCfyYLoxD159HIvUzrCWl3tISLJKoCP3Lcrctdp2e34fuZ08RldPp19YCKf2mjN
 w2mw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=exmWtJiu
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
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

On 12/5/25 12:26 AM, Loktionov, Aleksandr wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 86f5859e88ef..d004acfa0f36 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -6995,7 +6995,6 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
>>   		cur_ns->rx_errors = pf->stats.crc_errors +
>>   				    pf->stats.illegal_bytes +
>>   				    pf->stats.rx_undersize +
>> -				    pf->hw_csum_rx_error +
> 
> Good day , Jesse
> It looks like you remove the single place where the ' hw_csum_rx_error' var is being really used.
> What about removing it's declaration and calculation then?

Hi Aleks! That's not true, however, as the stat is incremented in 
receive path and shown in ethtool -S. I think it is incredibly valuable 
to have in the ethtool stats that the hardware is "not offloading" a 
checksum. As well, all the other drivers in the high-speed Ethernet 
category have a similar counter.

I hope you'll agree it's still useful?
