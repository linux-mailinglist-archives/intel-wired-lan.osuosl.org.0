Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D69ABB510
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 08:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A80B760EC0;
	Mon, 19 May 2025 06:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ll5XRXtCSpfM; Mon, 19 May 2025 06:27:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 226D860EC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747636065;
	bh=RZRSFEz+bNefA1vWC1Hlpfk3z/yQrqpzvcfmw63ePAA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZsWpoBizprdl/VWuks2Laz9G5zEhnWxLbJ2M7raIgCavD+tNNgf0BAKuR6RkTAZvR
	 nVD+SG4c6XiJNn/uOmpVmW6r59DGAgTo21i02vDzd3RPBUXhzifiILgbaExB32p89E
	 LOYEwxwhPwiYBoeoymnaAJVQINzUE9wR4rCFeZMqua2QSHnfFBJ7ZcjgVDYwdjGvZd
	 zSgycXjoFL2Ce7fGZ3Geyz1RtAsKogagOgekWGOjI2P5SfCb3aj6GhyGLJ3JK6KOX3
	 E0Yx9Y9Wuo5oAKKER3JtFZUNzbNLVwvo9yEXGEbzv7m5P6jBcxilE21eDpUoFzW8H8
	 Ng7gVyphk6YIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 226D860EC1;
	Mon, 19 May 2025 06:27:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 991A21BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 06:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F6CC404DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 06:27:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqSszV5Taogw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 06:27:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 99EB940422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99EB940422
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99EB940422
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 06:27:42 +0000 (UTC)
X-CSE-ConnectionGUID: ZjX9bhvXRNaOVshYcWyxkQ==
X-CSE-MsgGUID: KT45KTOJTACwQmk+vJPNPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="49503809"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="49503809"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 23:27:42 -0700
X-CSE-ConnectionGUID: UK5odDNjSF+5FI6KHpYkxA==
X-CSE-MsgGUID: KP5sPoGBQVKkqbLHSlAehg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="170313674"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.73.217])
 ([10.247.73.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 23:27:38 -0700
Message-ID: <12093d3c-ca0a-46fd-950e-6af1448ee079@linux.intel.com>
Date: Mon, 19 May 2025 14:27:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
 <20250514042945.2685273-9-faizal.abdul.rahim@linux.intel.com>
 <20250516094336.GH1898636@horms.kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250516094336.GH1898636@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747636063; x=1779172063;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=05be7fLfzW+Lkh9/B6CDCkEvJrnVcJV+48VP51XW+4I=;
 b=Xm9eHj4kmdmtQX3HVBJdX6tFTSHdw61MZAZPPL/iixunRuJWcr1lDqox
 U9hTWCqiW/RMA0+5ZdTkjij2If98fQ5XgJczdrQW0z2QvSEPdYdqX/H1I
 KRU/XuK083hFT11rQ1HDWQCzpracErCABuYPoWtqj4QSM3/njtD6CFXU0
 UyBoPrHR6WgoZoIUcouatcd7wWpi69V03PpDih2AAAQlZ9FpJ6Z32WWS8
 V0pBh3JVUGjmxEy5GuDxgg/DbP/ht4f0qmjX9zhw3nG6fJYY0puNoX8f+
 UVpSKPDNBuhGsC1PP94jdQ09qQLU4f4z4XAjS2q1P1yZAUPYzEBcI65Xu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xm9eHj4k
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 8/8] igc: SW pad
 preemptible frames for correct mCRC calculation
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



On 16/5/2025 5:43 pm, Simon Horman wrote:
> On Wed, May 14, 2025 at 12:29:45AM -0400, Faizal Rahim wrote:
>> From: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>>
>> A hardware-padded frame transmitted from the preemptible queue
>> results in an incorrect mCRC computation by hardware, as the
>> padding bytes are not included in the mCRC calculation.
>>
>> To address this, manually pad frames in preemptible queues to a
>> minimum length of 60 bytes using skb_padto() before transmission.
>> This ensures that the hardware includes the padding bytes in the
>> mCRC computation, producing a correct mCRC value.
>>
>> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Hi Faizal, all,
> 
> Perhaps it would be best to shuffle this patch within this series
> so that it appears before the patches that add pre-emption support.
> That way, when the are added the bug isn't present.
> 

Makes sense, will update. Thanks!
