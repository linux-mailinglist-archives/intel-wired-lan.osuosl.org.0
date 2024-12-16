Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE939F39A8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 20:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B059980ED8;
	Mon, 16 Dec 2024 19:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QTIk_cPSJkO7; Mon, 16 Dec 2024 19:23:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEC5D80EE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734376994;
	bh=jZMoa6c8V2RLO1SfPCDM3oUntBeI3z7ggEZ6Kaa61BY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CyJiy/yN3sakT/iF5dzVP9bMDYqTmRixE/6DuUBmRyTCr/HpFHwb8ZjZrfpGE/jDX
	 RlLpCRBtz7nEderBZ7mL/q6zdhpOF1zCRIMSjF+q3xEYoC/y77+3DCbjwQR7aK0kVt
	 PchP/1y5Le2iRbT2QVku3IZm/YogNJ0bRSinwHozppov8ZjY0J4v3AEL47tvantnwZ
	 Fc/CDK3VAqKjtX5i/MxoUNRjl6iZ+a+Il8lGF+UdEMFRiFZVBv4LOh9cEDPHR75xme
	 Xup+2cJQO1/ffgWSPM6wKNaHQl9uOyMCUSx/nHF3KqePUVfO7PzElnubFuVzlSkKUU
	 v5mpRb4KyKORA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEC5D80EE1;
	Mon, 16 Dec 2024 19:23:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75980CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 19:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63B7580EB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 19:23:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ak0TesLKF-6t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 19:23:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.128;
 helo=mx18lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 861A180EAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 861A180EAD
Received: from mx18lb.world4you.com (mx18lb.world4you.com [81.19.149.128])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 861A180EAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 19:23:11 +0000 (UTC)
Received: from [88.117.62.55] (helo=[10.0.0.160])
 by mx18lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tNGgM-000000003sc-1v0e; Mon, 16 Dec 2024 20:23:06 +0100
Message-ID: <047738af-69af-49aa-ae91-7dbca40ae559@engleder-embedded.com>
Date: Mon, 16 Dec 2024 20:23:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, bhelgaas@google.com,
 pmenzel@molgen.mpg.de, Gerhard Engleder <eg@keba.com>
References: <20241214191623.7256-1-gerhard@engleder-embedded.com>
 <231abdb7-3b16-4c3c-be17-5d0e6a556f28@intel.com>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <231abdb7-3b16-4c3c-be17-5d0e6a556f28@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jZMoa6c8V2RLO1SfPCDM3oUntBeI3z7ggEZ6Kaa61BY=; b=M/waF/MV2RXEMR3oDfl2pFU4iq
 eCYoR4hWa4ROygWywRg5W/MftFYY6131NEcb27QecaKxoeLI9xcay1k7Vcn2vnegBqY1OvgEe7GqI
 1IX9dL7u1ymi3xQlc1ENqQ2K11b32B5npD5Zpjvb2yMUhVw4yeCQfIm3c0tfqj8x/rVU=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=M/waF/MV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Fix real-time
 violations on link up
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

>> @@ -331,8 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct 
>> e1000_hw *hw,
>>       }
>>       /* replace the entire MTA table */
>> -    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
>> +    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>>           E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
>> +
>> +        /* do not queue up too many posted writes to prevent increased
>> +         * latency for other devices on the interconnect
>> +         */
>> +        if ((i % 8) == 0 && i != 0)
>> +            e1e_flush();
> 
> 
> I would prefer to avoid adding this code to all devices, particularly 
> those that don't operate on real-time systems. Implementing this code 
> will introduce three additional MMIO transactions which will increase 
> the driver start time in various flows (up, probe, etc.).
> 
> Is there a specific reason not to use if (IS_ENABLED(CONFIG_PREEMPT_RT)) 
> as Andrew initially suggested?

Andrew made two suggestions: IS_ENABLED(CONFIG_PREEMPT_RT) which I used
in the first version after the RFC. And he suggested to check for a
compromise between RT and none RT performance, as some distros might
enable PREEMPT_RT in the future.
Przemek suggested to remove the PREEMPT_RT check as "this change sounds
reasonable also for the standard kernel" after the first version with
IS_ENABLED(CONFIG_PREEMPT_RT).

I used the PREEMPT_RT dependency to limit effects to real-time systems,
to not make none real-time systems slower. But I could also follow the
reasoning of Andrew and Przemek. With that said, I have no problem to
add IS_ENABLED(CONFIG_PREEMPT_RT) again.

Gerhard
