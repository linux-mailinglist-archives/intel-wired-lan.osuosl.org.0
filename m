Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2DEAA00AA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 05:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 000A740CB8;
	Tue, 29 Apr 2025 03:39:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jE8XXgHAY0Ei; Tue, 29 Apr 2025 03:39:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77C3F40CBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745897949;
	bh=k2kjhvXZ9xEtMDCQ2kcJ8fIXiNGFu/D7CJBAapVwCLQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jgEqcvAOQsmoSs7MNAGQEyazdilLukxu2d1EIHld3UVy3fKVQ1B7pOm4Snifos3PX
	 hHs0dMUZgZiQcuMxD0W9lUPwV7S3tNKu0WQpcwIUwL8cH9owLJ7+hE2HCEDICkNjP5
	 K7yVCYtPDRpmyrhkvM2+D3teu7yOwEGT91aon3dO9LeqxrVG2a1Bu054ry0kNcKZhk
	 C7nVQM2oLgDp+Ibbto+nbX0VqrlsJZKGg/oXqiXiiMCRCMFwnCdGcT1JNnhXLo60nT
	 HYJvbamxaJPFRTsOLwGcZaWweKIwGr9DmQFVPBHuZ5qU9vQzGnCMiVkyi3sARbk5pc
	 rZeap7Dx0ceqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77C3F40CBD;
	Tue, 29 Apr 2025 03:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C5041C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1128C40CB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7_Vr0uBtj1n8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 03:39:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 87DF040CB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87DF040CB4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87DF040CB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:39:06 +0000 (UTC)
X-CSE-ConnectionGUID: LGtGagwgSFicPJXXPcRrjw==
X-CSE-MsgGUID: PSa3F9J+Rqmpy4vyRAomLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58873405"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="58873405"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:39:06 -0700
X-CSE-ConnectionGUID: g3HCxq1rSh+NJOTwvWNEvA==
X-CSE-MsgGUID: bSMXPni1SCitphGWxU3Rng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="156932063"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.22.166])
 ([10.247.22.166])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:39:04 -0700
Message-ID: <b6852273-314c-46a3-9388-3039a69b3ed8@linux.intel.com>
Date: Tue, 29 Apr 2025 11:39:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Choong, Chwee Lin" <chwee.lin.choong@intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
 <20250428060225.1306986-7-faizal.abdul.rahim@linux.intel.com>
 <SJ0PR11MB5866B4EC7D136421FCF6BBC2E5812@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <SJ0PR11MB5866B4EC7D136421FCF6BBC2E5812@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745897946; x=1777433946;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=owNWzXdUcegkxkFjQ0gPNXIRkW9IOHpRjwUEXrmsCxc=;
 b=TNT7je2WJggJeVyKkbrbzUpRPoejpAvSfcHppdcDDQmSWr2Rm3T0GU3E
 bzsv7fLY+jfin7bYDD3zajgFt5sdR3/ul6WAsbKj3BROvyw1ME2T4kyjV
 rrAbOZq9+5/2bnT6fcOLVYaydMHQ/QXu7OFG4tzGtAs3wjuYxhfKIH8IE
 w5JJVN9RUX0fktmeaIexordwLTF2jaX9tBhXN8vh67j9eZAR9HoW49HGb
 6akrABdlrztA8ObZmbGGlLT0EOyqhYDH/GWpc/oRcsoTmF+/nMwm0CNfV
 v17zIjUOoudKi5nZ7Z0xShkAktwdOPlucjkxPyQ8O5nKISYrrFXmro9io
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TNT7je2W
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/8] igc: add preemptible
 queue support in taprio
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



On 28/4/2025 5:11 pm, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Faizal Rahim
>> Sent: Monday, April 28, 2025 8:02 AM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
>> David S . Miller <davem@davemloft.net>; Eric Dumazet
>> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
>> <pabeni@redhat.com>; Vladimir Oltean <vladimir.oltean@nxp.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org; Faizal Rahim <faizal.abdul.rahim@linux.intel.com>;
>> Choong, Chwee Lin <chwee.lin.choong@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v1 6/8] igc: add preemptible queue
>> support in taprio
>>
>> igc already supports enabling MAC Merge for FPE. This patch adds support for
>> preemptible queues in taprio.
>>
> Can you mention what "FPE" stands for (e.g., Frame Preemption) for better understanding? Everything else is fine for me.
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 

Will update. Thanks.
