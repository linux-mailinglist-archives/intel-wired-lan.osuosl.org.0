Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCCA9B4F84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 17:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF2B280D46;
	Tue, 29 Oct 2024 16:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lPgP8uI-y7Am; Tue, 29 Oct 2024 16:38:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8042F80DA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730219891;
	bh=GyRJo8osUh0bS/jXb3vmYZGR0kFLUh88z7vDZ8WsGmw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V7UyXoFJNZyikjOFMRtEeQ92Mf/ndojka8ewwuOEQbTHJWn6QiajFJyuwY2jLvwyt
	 /SjpquIy2lBCAn2rlsEpBSWrnUehw5w/KCpnjoFgsMrPrROCAobNluXGI1KeongjZJ
	 /mUbV7HxXNfINGVVl1sgKbSN7MoRaS/M/c5Q6fzpgQkxEAi0FbqYpVF4LF15aQP+KV
	 Ghkroi0wVD8PXRnxdef+ZI8OpeJagAIquwXR/UMIJsUPZQBpFlvqCdOBIioUZU6sO6
	 JIrNythwaV538ORzaaBi4w4Y0tAOR58YmHi5Ot7+q1mXiAvqqcZeZWfvDmA0wzzxFi
	 UbhI5lTiS+PEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8042F80DA6;
	Tue, 29 Oct 2024 16:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F056A496C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 16:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF30360893
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 16:38:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DPMpTZKkGo3n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 16:38:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::534; helo=mail-pg1-x534.google.com;
 envelope-from=prosunofficial@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D85EC6088D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D85EC6088D
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D85EC6088D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 16:38:07 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id
 41be03b00d2f7-7edec25102dso200285a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 09:38:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730219887; x=1730824687;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GyRJo8osUh0bS/jXb3vmYZGR0kFLUh88z7vDZ8WsGmw=;
 b=Dc9DfT5aMdGeef+VC5TL8g8naPGW9ePOMbsKPLt2em0oGB2G545UjX/MEWc/ynx6sx
 pAG9zc1b9UKA20VD8pmTbzPYySN8LsEwPolsXreYhdTadjKrvDeQCSmOyMD2Tvx0K1SO
 08DfFuEu+O6Nghb0JqSc5V5X4pR7eLLy9hwggw1fTHYxFrWZ+mZlcDogBrmFguUF8eoH
 jsoh4ajspAw9UicsONf1rS/g89bH3ayjpcjNQZWOmYLvXEyNA2MFSzKyBXSqaJ6dcLbU
 5KGG88HeT62UWrttgeDOePmiMnbLy0AFwYE1YebOeJay1w99SzNuC7i524vgD/qXF1YF
 HjoQ==
X-Gm-Message-State: AOJu0Yyr9FqC6yBw83qqZmuLfSCu931ndOg3m8K+dyZ4SHFsm/XQu+rl
 SizgJHUYcYh9mnh3f40dng+HCvu/dz5lUvX+Sz04oXUUC7IZLgqR
X-Google-Smtp-Source: AGHT+IEOidahH12yUik1E97OBTgPFsm3C1isybXyzLOwzLpxSlRhRJUlz4OcFNmOicpiDHU0UWQYOg==
X-Received: by 2002:a05:6a20:3946:b0:1cf:52ac:4ec9 with SMTP id
 adf61e73a8af0-1d9a84dd505mr8277846637.8.1730219887067; 
 Tue, 29 Oct 2024 09:38:07 -0700 (PDT)
Received: from ?IPV6:2402:e280:214c:86:e12b:a9a3:6d06:6d0a?
 ([2402:e280:214c:86:e12b:a9a3:6d06:6d0a])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7205793325dsm7732980b3a.76.2024.10.29.09.38.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Oct 2024 09:38:06 -0700 (PDT)
Message-ID: <e9a89d87-d1a7-44cb-aab5-07a61d578c3c@gmail.com>
Date: Tue, 29 Oct 2024 22:07:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: R Sundar <prosunofficial@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20241027141907.503946-1-prosunofficial@gmail.com>
 <ca4f7990-16c4-42ef-b0ae-12e64a100f5e@intel.com>
Content-Language: en-US
In-Reply-To: <ca4f7990-16c4-42ef-b0ae-12e64a100f5e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730219887; x=1730824687; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=GyRJo8osUh0bS/jXb3vmYZGR0kFLUh88z7vDZ8WsGmw=;
 b=KOcmQbhpEPZno1MdtQvp0n9tKf401dsCzv+sb5UfEXKE76bK83pO5vf0+9OCWkkgF5
 TN/uf6jcvthgCy5H2sK1yiH8AjiKC8+yJOQnOygnA3odYHIwRqfHUT7xfndK05QH9/yn
 DF/GG4T6KvEjjtyg5zJmbcrXyAXRO7wCWX6wDltJKwCmH2JNOxKX7KHHCrCrIF8KZ72+
 3kXDsS3mA+XEnRzRJjvlfIp4Gnfleoz3jrrMOW8o3ye0YCm1wVvFSoApQzrF1VQ9Dpn7
 CQEUFa4t1LUhoqB7s9WfCnJXuPYbNg6UPivPSY0ja8vNLpl8ckgODAIExi+PvCd9YlUn
 zOiw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KOcmQbhp
Subject: Re: [Intel-wired-lan] [PATCH linux-next] ice: use string choice
 helpers
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
Cc: Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com, Julia Lawall <julia.lawall@inria.fr>,
 Andrew Lunn <andrew+netdev@lunn.ch>, karol.kolacinski@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 28/10/24 15:24, Przemek Kitszel wrote:
> On 10/27/24 15:19, R Sundar wrote:
>> Use string choice helpers for better readability.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Reported-by: Julia Lawall <julia.lawall@inria.fr>
>> Closes: https://lore.kernel.org/r/202410121553.SRNFzc2M-lkp@intel.com/
>> Signed-off-by: R Sundar <prosunofficial@gmail.com>
>> ---
> 
> thanks, this indeed covers all "enabled/disabled" cases, so:
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
Hi,

Thanks for comments.

> for future submissions for Intel Ethernet drivers please use the
> iwl-next (or iwl-net) target trees.
> 

Sure. Noted.

> There are also other cases that we could cover ON/OFF etc
> 
>>
>> Reported in linux repository.
>>
>> tree:   
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>
>> cocci warnings: (new ones prefixed by >>)
>>>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:396:4-22: opportunity 
>>>> for str_enabled_disabled(dw24 . ts_pll_enable)
>>     drivers/net/ethernet/intel/ice/ice_ptp_hw.c:474:4-22: opportunity 
>> for str_enabled_disabled(dw24 . ts_pll_enable)
>>
>> vim +396 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>>
>>
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c 
>> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> index da88c6ccfaeb..d8d3395e49c3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> @@ -393,7 +393,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
>>       /* Log the current clock configuration */
>>       ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, 
>> clk_src %s, clk_freq %s, PLL %s\n",
>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>             ice_clk_src_str(dw24.time_ref_sel),
>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>             bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
> 
> perhaps locked/unlocked could be added into string_choices.h
> 

Sure, Can I add locked/unlocked changes in linux-next repository and use 
suggested-by Tag?


>> @@ -471,7 +471,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
>>       /* Log the current clock configuration */
>>       ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src 
>> %s, clk_freq %s, PLL %s\n",
>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>             ice_clk_src_str(dw24.time_ref_sel),
>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>             bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
>> @@ -548,7 +548,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>>       /* Log the current clock configuration */
>>       ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, 
>> clk_src %s, clk_freq %s, PLL %s\n",
>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>             ice_clk_src_str(dw23.time_ref_sel),
>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>             ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
>> @@ -653,7 +653,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>>       /* Log the current clock configuration */
>>       ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src 
>> %s, clk_freq %s, PLL %s\n",
>> -          dw24.ts_pll_enable ? "enabled" : "disabled",
>> +          str_enabled_disabled(dw24.ts_pll_enable),
>>             ice_clk_src_str(dw23.time_ref_sel),
>>             ice_clk_freq_str(dw9.time_ref_freq_sel),
>>             ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
> 

