Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBF3AC0661
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 09:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C818613E2;
	Thu, 22 May 2025 07:58:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NeUH6LtGvwvN; Thu, 22 May 2025 07:58:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A95360706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747900708;
	bh=HFRdBGF+vP5OdZP/goOX+AFLvnVTrYHHoV8gdir11zU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HWloVnhPF3R2ulsFH6sIj5uUcbX9DgBfS1NJk1kNUdnyeBf/GYom0eSlM4HlHuPiM
	 Prf+Iqn28gF3cHjwUPmv2MV/NR5Q9gj5tZ2lk0+3B/k1V2Gu+sv7514MzLTtktItDH
	 OPGoqKgZmp+lHlegFdXsEAwHprBWSPMA1CWwzcm1GmEZ48QQTkB0Ni6ObWf6jfLA65
	 YJ6hGW69CnaZoSXLA3FuaH5IThrnjSaRUA8sXBXm2tt1rc8albKSpm/s8bYwrz8WXH
	 uWzampwhavTVITbhVvN6Q9SH9pnnYhxllGPeFH/pEY66leEyF6BHiTanJ6cjLMdDn2
	 8SezzqJEkk6JQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A95360706;
	Thu, 22 May 2025 07:58:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6499BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B1CE83D76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:58:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JI-zEM-78jxJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 07:58:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8883183D6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8883183D6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8883183D6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:58:26 +0000 (UTC)
X-CSE-ConnectionGUID: NMHeZQdET0GPOiCg6Elq1A==
X-CSE-MsgGUID: UIFHyiDbRjaaAtWKk1I1ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60153198"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="60153198"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 00:58:26 -0700
X-CSE-ConnectionGUID: dqZ64TUAQ26/HF/ZJ77a2Q==
X-CSE-MsgGUID: qpuECeyhRHSbTxRRG+MgCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141402614"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.67])
 ([172.28.180.67])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 00:58:25 -0700
Message-ID: <1e7b314d-55d4-4e9b-9046-0dd624a5e347@linux.intel.com>
Date: Thu, 22 May 2025 09:58:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
 <8c8999a7-d586-4bc6-9912-b088d9c3049f@molgen.mpg.de>
 <46e45673-66fa-4942-a733-fdcbc95b5ee1@linux.intel.com>
 <4b67b9cd-47d1-4fbc-8de0-86d364f36dce@molgen.mpg.de>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <4b67b9cd-47d1-4fbc-8de0-86d364f36dce@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747900707; x=1779436707;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uaFxc+tt/XBn4O6Z8JFRyd08xW/PTWvjlVr6kMC4Wm4=;
 b=f0PfP88D6pctSHtzJqdBwMmihecqjJf3rt8EtZM4SB/bMtRVCTud1TEE
 BuxmvqNPpmmQFNlLHDOTJ2GdqBJC22SSU6dA+iGANmbjGTA6Jj4Ebdmah
 eX96oHMmkHmjFkiZ2B9dYm1+/cGg9PDM0i+y0REPnXJ+HcAIaeusji1FI
 8CS1n2fSdhLIqLQXe3d2ACY8+qWbplw40rYw3qI91S/p8taW3anI5y6m+
 6GNRImfTDrRPOrJlsqsXFyXbFhSpMFEv3661IX06FNk9PH8MSwvEv5GLU
 G5XD/75BxVJUaywhjbaD92Kqhz39/BErdKpwr2U3VdeLN9HcVEwo3QwgL
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f0PfP88D
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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

On 2025-05-22 9:01 AM, Paul Menzel wrote:
> Dear Dawid,
> 
> 
> Am 19.05.25 um 13:11 schrieb Dawid Osuchowski:
>> On 2025-05-16 10:57 PM, Paul Menzel wrote:
>>> Am 14.05.25 um 12:46 schrieb Dawid Osuchowski:
>>>> E835 is an enhanced version of the E830.
>>>> It continues to use the same set of commands, registers and interfaces
>>>> as other devices in the 800 Series.
>>>>
>>>> Following device IDs are added:
>>>> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
>>>> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
>>>> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
>>>> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
>>>> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
>>>> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
>>>> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
>>>> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
>>>> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP
>>>
>>> Should you resend, it’d be great, if you added the datasheet name, 
>>> where these id’s are present.
>>
>> Sorry it isn't publicly available yet.
> 
> Too bad, but the name of the datasheet would still be useful in the 
> commit message, so people could point to it, or, should it ever be made 
> public, can find it.

I understand your concern.

Given our datasheet naming scheme so far [1], I think folks
interested in viewing the datasheet can easily search our Resource & 
Documentation Center [2] to find what they're looking for once it 
becomes available.

[1] 
https://www.intel.com/content/www/us/en/content-details/613875/intel-ethernet-controller-e810-datasheet.html
[2] 
https://www.intel.com/content/www/us/en/resources-documentation/developer.html

Best regards,
Dawid

> 
> 
> Kind regards,
> 
> Paul

