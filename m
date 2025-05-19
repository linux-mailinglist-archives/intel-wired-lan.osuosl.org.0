Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F2EABBC11
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 13:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B6CF6141D;
	Mon, 19 May 2025 11:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3rG9zBOYLSu; Mon, 19 May 2025 11:11:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E880613E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747653069;
	bh=jNbsajhXDvddodZ5fURF3JKSPlH51FKNn8CrkkTpd08=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HwYMvn1XlyDilZL5P9C69Sf32wtAGqpjqpp8yIl++44uOuQ38/jC7bbhUsR0Iegom
	 jZBN9EfbuoZn//JcLKatclmkinvsJZl0FIxkeiF2kWv+vNo9B2EprvwcGsLT2EqNvB
	 gk/oxiq6zuHW9MF08S+jcFAknR4897WStK7VfQI8tikWfr/9TuJ0TQ24tzYqMl7zv9
	 eGpBctQuP4ZHCeglVeUs7+9Np3fwRSjMv61aRan6Z9XcL1KnAyi7JJIn1FDfKwXcZV
	 Lu9SRvAUhBuRjZepneQn+BwKDZSZ48OOZV4SracE6IBMcPvFtmofEZ9QpunisjAga9
	 vCKnjaqHVaa/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E880613E6;
	Mon, 19 May 2025 11:11:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20B7DE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1322610B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:11:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OuY5excUaFC7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 11:11:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D0FF61398
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D0FF61398
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D0FF61398
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:11:06 +0000 (UTC)
X-CSE-ConnectionGUID: tk3qbhSSS0G2pGRoNCLgpA==
X-CSE-MsgGUID: pQXZaRJ5TJegGNrrHrEqCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="53221112"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="53221112"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:11:07 -0700
X-CSE-ConnectionGUID: lUC/xHwRRDuxiTu+YoKz+g==
X-CSE-MsgGUID: 0VcRx902RNS5Z3vukCq1tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139855703"
Received: from cwachsma-mobl.ger.corp.intel.com (HELO [10.245.252.240])
 ([10.245.252.240])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:11:05 -0700
Message-ID: <46e45673-66fa-4942-a733-fdcbc95b5ee1@linux.intel.com>
Date: Mon, 19 May 2025 13:11:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
 <8c8999a7-d586-4bc6-9912-b088d9c3049f@molgen.mpg.de>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <8c8999a7-d586-4bc6-9912-b088d9c3049f@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747653068; x=1779189068;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wDy9U9xfDCcQpqqxYgT4nsDbQCpuav+UsE+22IXvpTI=;
 b=iBx07VKXrktdvbDvQyGvmzpWgegrIkVoxcxOwsB2z4yyYlADbdRLL8IG
 LRCSERPY1sI9tGV5+Y2ETnNFYU4Hm66FBTRu1q2xbAHwfGiehPL0dKbUn
 /+cJ+G1NDHrOmHuNbeT/Y4EKHfq3RKvS2ID1xnGef6BA2fTco51vKytYu
 Axh2EMHHXhLxN2v8BHfcmcDoRMDpeYK3aOATYoyNlowsB402LxvByGHpo
 ez4Pe0R4+KRif7ZVMECJ+yIljlrkltUhP2SNzROkciGwv0I3wH2QreUlk
 +/0WOHypronujUq+zpJGkPfuNnY72wXB6mMNEV6c3rUOS6magOjA41eO9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iBx07VKX
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

On 2025-05-16 10:57 PM, Paul Menzel wrote:
> Am 14.05.25 um 12:46 schrieb Dawid Osuchowski:
>> E835 is an enhanced version of the E830.
>> It continues to use the same set of commands, registers and interfaces
>> as other devices in the 800 Series.
>>
>> Following device IDs are added:
>> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
>> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
>> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
>> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
>> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
>> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
>> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
>> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
>> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP
> 
> Should you resend, it’d be great, if you added the datasheet name, where 
> these id’s are present.

Sorry it isn't publicly available yet.

Best regards,
Dawid
> Kind regards,
> 
> Paul
