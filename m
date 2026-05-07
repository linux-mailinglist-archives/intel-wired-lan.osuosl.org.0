Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGHLD2pV/GlOOAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 11:03:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 563514E5787
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 11:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91160607CD;
	Thu,  7 May 2026 09:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AweXi9DrPm46; Thu,  7 May 2026 09:03:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A491C60BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778144614;
	bh=k1Qq9D1EQuF3tTmPALDEACtxkVNx6wDmuDXrzOzvLQI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XdNs8l61IEaVHcqKYoGRNdxcLtSzVsR+eSBqiValsIOwS4n8hg9ctIfxe3h6ST818
	 Oj7BTqD10bnDhX3tiH9fKkhJoTrrq/CZl45VzS+yXq8Nir2sSigHPFJGn8lR+At/EW
	 11chMTnxo11kNP9yXJcemwm5x39hqpqWP0PVUsjsTr6UEbXkHxQH0ccPRyf9ePBEAQ
	 QC+BUkHVwPXxsEdnHQdx78VfM/BY8L4OElrlu1P1Tdr0NAbRtD/LPtQ5LZ1cmgvzNz
	 RbJLjHK3p8DBSKrUWM10GyJyPbo7/gvn9Ll6XyZ2u2TmzbwtY+IPHRvClFnKmoYrjp
	 P9cRIg7wV5yRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A491C60BAA;
	Thu,  7 May 2026 09:03:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 54960280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46B0D60EFE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y2qN8tPPWMuo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 09:03:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB10960BAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB10960BAA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB10960BAA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:03:31 +0000 (UTC)
X-CSE-ConnectionGUID: hpEZdkJoR5Knl24FpZWdRQ==
X-CSE-MsgGUID: kw8c3P06SPy8cznOLzYReg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="96657454"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="96657454"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 02:03:30 -0700
X-CSE-ConnectionGUID: mE++FukbQSS5ES7bUwLzzA==
X-CSE-MsgGUID: iJ+FQYjdSGCb5bJMsnXbJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="232042918"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.83.206])
 ([10.247.83.206])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 02:03:27 -0700
Message-ID: <78e48cc4-759f-46e1-83c7-1c9442308ae3@linux.intel.com>
Date: Thu, 7 May 2026 17:03:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Laight <david.laight.linux@gmail.com>
Cc: KhaiWenTan <khai.wen.tan@linux.intel.com>, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com, hector.blanco.alcaine@intel.com
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
 <20260430154105.505739ac@pumpkin>
 <63b186e0-046d-496e-8ae4-d68cd5eb5817@linux.intel.com>
 <20260506104053.7a4f5bf5@pumpkin>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260506104053.7a4f5bf5@pumpkin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778144612; x=1809680612;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aurcqTPVlJK1XP/Fw5vujWYHj35MrZbEoEPPhpC6Ris=;
 b=MwqVrpOdBw3ukNhcgyJ/X7TEXGIn0wYLE+DVae+jh9jqBG826AKTSkPJ
 QlspPZoteilA9Axq9cOQDLtE4+8L1PeJzKh4yiwIdsCe+e0pq89pRXsGT
 ZAikRCIVEyIFHg4xn+xGj3uqVah2T4/i08edTytKhZPnHrSPXvk+puAV7
 fb0FSS2htaJAfSFHkdcyYf8uj3Ki4lPfUWm/KPE9N5flImjGqMyZpgamn
 cUhqqC4rieVIYG39/IVUztsFntOg1mnOaHriZuTCS5h1Y87oRegax76Wt
 vH5fAvjvvoONCLKqNJ5fA9IrSkP4oyQZVxvKP7TmNdwoIVb4f4nVKtzGG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MwqVrpOd
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: 563514E5787
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:hector.blanco.alcaine@intel.com,m:davidlaightlinux@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

+ Hector

On 6/5/2026 5:40 pm, David Laight wrote:
> On Wed, 6 May 2026 14:21:59 +0800
> "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> wrote:
> 
>> On 30/4/2026 10:41 pm, David Laight wrote:
>>> On Tue, 28 Apr 2026 14:00:06 +0800
>>> KhaiWenTan <khai.wen.tan@linux.intel.com> wrote:
>>>   
>>>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>>>
>>>> This series adds support for forcing 10/100 Mb/s link speed via ethtool
>>>> when autonegotiation is disabled on the igc driver.  
>>>
>>> I'll ask 'why' ?
>>>
>>> In particular forcing half/full duplex has always been a very good way
>>> of 'breaking' a network connection.
>>>
>>> It really is much better to restrict the advertised link modes and let
>>> the autodetect/autonegotiation logic in the phy/mac do its job.
>>>
>>> About the only think I can think of is to force 10M HDX when connected
>>> to a remote system that supports 10M/100M HDX.
>>> In that case you need to send out single link test pulses, not the
>>> burst used to identify 100M HDX, or the pattern encoded on the burst
>>> used by autonegotiation.
>>> But you need to got back to the mid 1990s to find such systems.
>>> Anything that supports FDX will do autonegotiation.
>>>
>>> 	David
>>>   
>>
>> There's a use case requested:
>>
>> Profinet Certification tool reports that forcing a link speed without
>> auto-negotiation is not working.
>> Forcing the link speed is a critical feature for the industrial automation
>> "fast-start" use case. When there is a connection lost, the system must
>> come back up as fast as possible. In PROFINET, that means to force the
>> speed and rejoin the controller loops. Without supporting forcing the speed
>> to 100M in Foxville, the certification tool would not be able to certify
>> the availability of this feature.
>>
>> I'm hoping this context is enough to justify the need?
> 
> Is auto-negotiation of the 'low' speed actually that slow?
> IIRC detecting 10G and above requires a lot of signal processing.
> But 10/100 and hdx/fdx just uses the ANAR register value sent in the
> link test pulses.
> (IIRC 1G uses the ANAR pattern, but requires extra signal processing as well.
> The higher speeds didn't exist when I was writing ethernet drivers.)
> 
> I've been on the 'wrong end' of hdx/fdx mismatches - you really don't
> want to let people get there, it is terribly confusing.
> 

Thanks for the information.

I agree that for normal Ethernet use, auto-negotiation on both link
partners is safer and avoids the issues you mentioned.

The reason for this patch is the more specific PROFINET Fast Start Up
(FSU) use case. For FSU, the requirement is different from normal Ethernet
use. It is intended for deterministic startup, for example in industrial
robot/tool-change applications.

One of the startup optimizations is to use "fixed transmission parameters"
instead of automatic detection in the profinet specification:
  https://us.profinet.com/profinet_tech/fast-start-up/

I understand your point that 10/100 auto-negotiation is faster than
higher-speed link training. I don't have a detailed timing breakdown for
the FSU case comparing 10/100 startup with auto-negotiation enabled versus
disabled, or enough visibility into the certification criteria to comment
on additional determinism requirements.

But keeping AutoNeg enabled, even with only specific speed advertised,
would not cover the same requirement.

This is only meant as an explicit link configuration for controlled
industrial deployments where both link partners are configured
consistently. It's not intended as a recommended default for general
networking.

Also, ethtool already allows users to request speed/duplex configuration
with auto-negotiation disabled, and some drivers already support this, for
example igb. This patch just reuses that existing interface and enables igc
to support the forced modes supported by this hardware.

> There actually ought to be a way of setting the auto-negotiation
> registers to 100M (HDX and/or FDX) and then transmitting as (say) 100M HDX
> even before negotiation completes.
> Then correcting hdx/fdx based on the received ANAR register.
> Or, at least, sending out an ANAR that only contains what you are using.
> 
> The problem I always had was that the actual operating mode of the phy
> wasn't in one of the standard registers.
> So if you connected to a system that didn't do auto-negotiation the
> phy would be using (say) 10M HDX, but the received ANAR register would
> still contain a value from an earlier connection.
> If the driver read that register from the phy it used the wrong duplex mode.
> (The speed for 10/100 doesn't matter, the phy clocks the interface to the
> mac at the right speed and the mac doesn't care.)
> 
> 	David
> 
> 
> 
> 
> 

