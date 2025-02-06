Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5B5A2A2AC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 08:54:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDFA480B7D;
	Thu,  6 Feb 2025 07:54:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h4pcvGFWEH_u; Thu,  6 Feb 2025 07:54:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 539DB80874
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738828444;
	bh=E32q9sCzKFsEBNLA7GuqOdJyJYZUmkx/8BQTWKWxzq8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WFrO2kvCJJtbR2xcfUrPybs5juStLJLWQgHhNt+uo3A0q8mjwFabE8C9eeXIqWJFg
	 VTg8nc82hLJMDrxLNRMK7iv+KVC0G6oI7dFagKCMTroAX7hak2eWMgmQw1docabzdP
	 JtjlRKOYEyRM1cSHqQKtPUNM38ZdpVZ+K77kThCMQwg029o0AjB4vWHyrxDxTCOc2H
	 +GNmK5VST2hfPEhxq92tQP3KnE/iYbkBnhea8L8Ck8H4uChSz99ZPm+sFCadRZ76Kx
	 E+bDXHLZAlJX7LBIPhGi9S+npiiXVKWc7zuRrBfomk08G6vOyNaXLbWH0UXfZNZTf0
	 IgdrrjJPvfmcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 539DB80874;
	Thu,  6 Feb 2025 07:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 27EA8CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 07:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 094904127F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 07:54:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hyH2q6PgkOyk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 07:54:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=jirislaby@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C3E9B405FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3E9B405FB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3E9B405FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 07:54:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D2CD05C03C1;
 Thu,  6 Feb 2025 07:53:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF622C4CEDD;
 Thu,  6 Feb 2025 07:53:56 +0000 (UTC)
Message-ID: <4950e61a-189f-4749-baf7-454ca2cce250@kernel.org>
Date: Thu, 6 Feb 2025 08:53:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Laight <david.laight.linux@gmail.com>,
 Simon Horman <horms@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <kees@kernel.org>,
 Nick Desaulniers <nick.desaulniers@gmail.com>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
 <20250205204546.GM554665@kernel.org> <20250205225619.31af041c@pumpkin>
Content-Language: en-US
From: Jiri Slaby <jirislaby@kernel.org>
Autocrypt: addr=jirislaby@kernel.org; keydata=
 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
In-Reply-To: <20250205225619.31af041c@pumpkin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738828439;
 bh=qVbmRl3cdmmI1b8t2RCDUnEVbUnVsISBeIGbzapT6ps=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=OON7aS8dnpRLLpRzCL5b5SVUR3oLGzWTqkr3cb0zrUx21GoMipT1qq0xEy409+kyy
 XzIxmxd6zbgUxYzV8oLuE0bkTkdcROc8DDgwT8TYFLPD+w7itHjD3YKHyamGAfFwRU
 dw0+I7neEzKdrw4URHRzR3mRpjCju9os7x0Fy62vu54SsQF4PQywo4YPF02ALPiiJi
 VZ491JXTQ9gGy7hkBhTbpJgBIiFwy9n8JbwvQr3i7D+2xZtZxJLOSPPpKQ8P72hP1+
 BIhdb8tBMeP85ZrdmZ5e9uxthQzqMmxJNIkAmu50Sql0h7apNfnbE6M7nXNfxcWQIH
 y31nbtl2+uotA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OON7aS8d
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

On 05. 02. 25, 23:56, David Laight wrote:
> On Wed, 5 Feb 2025 20:45:46 +0000
> Simon Horman <horms@kernel.org> wrote:
> 
>> + Jiri
>>
>> On Wed, Feb 05, 2025 at 11:42:12AM +0100, Przemek Kitszel wrote:
>>> GCC 7 is not as good as GCC 8+ in telling what is a compile-time const,
>>> and thus could be used for static storage. So we could not use variables
>>> for that, no matter how much "const" keyword is sprinkled around.
>>>
>>> Excerpt from the report:
>>> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
>>>
>>>    CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
>>> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
>>>     ice_common_port_solutions, {ice_port_number_label}},
>>>     ^~~~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initialization for 'ice_health_status_lookup[0].solution')
>>> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer element is not constant
>>>     ice_common_port_solutions, {ice_port_number_label}},
>>>                                 ^~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initialization for 'ice_health_status_lookup[0].data_label[0]')
>>> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer element is not constant
>>>     "Change or replace the module or cable.", {ice_port_number_label}},
>>>                                                ^~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initialization for 'ice_health_status_lookup[1].data_label[0]')
>>> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer element is not constant
>>>     ice_common_port_solutions, {ice_port_number_label}},
>>>     ^~~~~~~~~~~~~~~~~~~~~~~~~
>>>
>>> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
>>> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
>>> Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com
>>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>> I would really like to bump min gcc to 8.5 (RH 8 family),
>>> instead of supporting old Ubuntu. However SLES 15 is also stuck with gcc 7.5 :(
>>>
>>> CC: Linus Torvalds <torvalds@linux-foundation.org>
>>> CC: Kees Cook <kees@kernel.org>
>>> CC: Nick Desaulniers <nick.desaulniers@gmail.com>
>>
>> Hi Prezemek,
>>
>> I ran into a similar problem not so long ago and I'm wondering if
>> the following, based on a suggestion by Jiri Slaby, resolves your
>> problem.
> 
> I'm sure I remember from somewhere that although the variables are
> 'static const' they have to be real variables because they can still
> be patched.

Not sure what you mean -- using macros, they placed the strings into 
.rodata anyway.

Mind the difference between:
const char *X;
char *const X;
const char *const X;

They are all different and allow different things (X++, (*X)++, nothing).

Possibly, the problem above could be fixed by the third variant too, 
IMO. But is ineffective (having generated an unused pointer).

thanks,
-- 
js
suse labs
