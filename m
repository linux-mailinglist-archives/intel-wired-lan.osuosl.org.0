Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7675BDDD13
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 11:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8551781062;
	Wed, 15 Oct 2025 09:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id baSCrSV8G14s; Wed, 15 Oct 2025 09:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C167B80F6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760521173;
	bh=1MWxVw92lCKDZerq6HTX78xtLO5tbezZ7MrzLjP0tFU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O2cHVhDn+yE1x7SgTWGlHVVSNLUbIjeSIS/jzg72weH7ayE69J2wGEWUz7teJH8Yx
	 8Rz03aDCBncCdTl9ZZFb4+Ln9C9cfS0I6ulw+ghfG66bOdz0u1CCDedrPF8I8KV/6p
	 V5bMlfxalINaHRqh3nGkziZxUynnXrLDfyUB6h/EYABnzsPlUXONxGa0HxVm9noxcO
	 BTVJ8B0azJF+vnmcP5Y01ZGke7tzmaj62m4Sp9lmqTKLcaYivha+XD6JANBjM+mfBx
	 kPfyJs+XqCNax+CBALf6KqmpdlUrGm6ed2BO8aefFpLwOK1HE7A2Zb4tULKBRmVQGf
	 taPW+Ib08GIRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C167B80F6A;
	Wed, 15 Oct 2025 09:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 140111BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 09:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0605D40ACA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 09:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IhHSI3j8h67k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 09:39:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B548F412A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B548F412A5
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B548F412A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 09:39:29 +0000 (UTC)
Received: from [192.168.2.212] (p57bd968e.dip0.t-ipconnect.de [87.189.150.142])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3E56760213B36;
 Wed, 15 Oct 2025 11:39:00 +0200 (CEST)
Message-ID: <bf36b4ed-e35f-4943-93ea-b24b27a48ad3@molgen.mpg.de>
Date: Wed, 15 Oct 2025 11:38:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Birger Koblitz <mail@birger-koblitz.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
 <21a53fe4-7cad-4717-87db-2f433659e174@molgen.mpg.de>
 <0d2b88ac-d23d-43a5-813d-2a8c4edaa3eb@birger-koblitz.de>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <0d2b88ac-d23d-43a5-813d-2a8c4edaa3eb@birger-koblitz.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Add 10G-BX support
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

Dear Birger,


Thank you for your prompt reply.

Am 15.10.25 um 11:16 schrieb Birger Koblitz:

> On 15/10/2025 9:59 am, Paul Menzel wrote:
>> Am 14.10.25 um 06:18 schrieb Birger Koblitz:
>>> Adds support for 10G-BX modules, i.e. 10GBit Ethernet over a single strand
>>> Single-Mode fiber
>>
>> I’d use imperative mood, and add a dot/period at the end.
> I will put this into the next patch-version.
> 
>>> @@ -1678,6 +1680,31 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
>>>               else
>>>                   hw->phy.sfp_type =
>>>                       ixgbe_sfp_type_1g_bx_core1;
>>> +        /* Support Ethernet 10G-BX, checking the Bit Rate
>>> +         * Nominal Value as per SFF-8472 to be 12.5 Gb/s (67h) and
>>> +         * Single Mode fibre with at least 1km link length
>>> +         */
>>> +        } else if ((!comp_codes_10g) && (bitrate_nominal == 0x67) &&
>>> +               (!(cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)) &&
>>> +               (!(cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE))) {
>>> +            status = hw->phy.ops.read_i2c_eeprom(hw,
>>> +                        IXGBE_SFF_SM_LENGTH_KM,
>>> +                        &sm_length_km);
>>> +            if (status != 0)
>>> +                goto err_read_i2c_eeprom;
>>
>> Should an error be logged?
>>
> This needs to be read in the context of the rest of the SFP 
> identification function. Several bytes of the EEPROM have already been 
> read for module identification by the existing code before reaching this 
> point, and failure is handled everywhere by the same goto. What will 
> happen if EEPROM reading fails is that an error message will be logged 
> that the Module is not supported. This is because the type is not filled 
> in and the module therefore considered unsupported. The actual error 
> (ret_val = -ENOENT) is ignored e.g. in ixgbe_52599/ 
> ixgbe_init_phy_ops_82599(). The error logged is probably good enough: 
> the module cannot be positively identified and is not enabled. I say 
> good enough, because this is actually what is the case: the EEPROM is 
> broken and ther
> 
>>> +            status = hw->phy.ops.read_i2c_eeprom(hw,
>>> +                        IXGBE_SFF_SM_LENGTH_100M,
>>> +                        &sm_length_100m);
>>> +            if (status != 0)
>>> +                goto err_read_i2c_eeprom;
>>
>> Should an error be logged?
> Same here.
> 
>>
>>> +            if (sm_length_km > 0 || sm_length_100m >= 10) {
>>> +                if (hw->bus.lan_id == 0)
>>> +                    hw->phy.sfp_type =
>>> +                        ixgbe_sfp_type_10g_bx_core0;
>>> +                else
>>> +                    hw->phy.sfp_type =
>>> +                        ixgbe_sfp_type_10g_bx_core1;
>>
>> I’d prefer the ternary operator, if only the same variable is assigned 
>> in both branches.
> Me, too. But this is merely code that can be found verbosely the same in 
> several places before in this identification function, for each type of 
> module identified basically once. If the same code would be written 
> differently in this place, it would probably confuse readers who would 
> wonder what is different.

You are right in all accounts. Thank you for the explanations.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
