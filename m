Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3981FC90021
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 20:26:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7091C60C05;
	Thu, 27 Nov 2025 19:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMYbuCdwdYMv; Thu, 27 Nov 2025 19:26:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADCDC60D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764271589;
	bh=420yngvBgMYZ7SQ5z/HJXum807pJ/UergGuZnSg1PSI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wb4OZWuG5Nj8mvnoDCK/yJddjox9tMQqz5ac66mP7x3M/DxowuglHD0kMEEVivIWx
	 PHfKMCeI3M2eV89cTz9+NJzbGczX478EWRyQHyz3iHCAs9wsMdtz/alnH1HP/YDt3P
	 +IKdXIdTudjCKPKlmYRwqJqKlv42JuZF5c4Est5PBn1cC5SBl89UhSUsoXFZm59L8F
	 IxE75ru+48YC7ay/5dLhuxpVzhy6rkDcrqr9ZqTz7E9ZowDg94wKk0OkntsiHizIV+
	 M8xGfY4DB+7H/Z+adHQ+IS0JG/DV4v8NpijI193DpEu1BDnqlE2do3eHe/JSBx5uM9
	 90CQiYAUptFww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADCDC60D6B;
	Thu, 27 Nov 2025 19:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E4C12A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 19:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E030F40AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 19:26:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F9yompZC7aJY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 19:26:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A87C74023A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A87C74023A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A87C74023A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 19:26:25 +0000 (UTC)
X-CSE-ConnectionGUID: 6R3Ap3x7RC65hCVAQDDWOw==
X-CSE-MsgGUID: 5M8Nm60pTyi8qHxlu0mxeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="53887112"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="53887112"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 11:26:24 -0800
X-CSE-ConnectionGUID: 8nYqyqA6SBCpddRvcqaKKA==
X-CSE-MsgGUID: w1OVQSjrTfmQLLPqjN82MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="216649070"
Received: from troymavx-mobl.gar.corp.intel.com (HELO [10.94.251.92])
 ([10.94.251.92])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 11:26:21 -0800
Message-ID: <ee934ba9-8ed8-4938-8058-ac80d88dafc9@linux.intel.com>
Date: Thu, 27 Nov 2025 20:26:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Avi Shalev <avi.shalev@intel.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>
References: <20251127151137.2883-1-chwee.lin.choong@intel.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20251127151137.2883-1-chwee.lin.choong@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764271585; x=1795807585;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GDxV4JLX59KLCi3WzT+HD4t6CnQ5J/u0qluMQ692J8s=;
 b=CkU6fxxqFH88O4IuSC8YckF8oWJ23E46kbLSD62Zx7kyHV4t4TYjtRrH
 KSrhmAZNgTpU9akrsATSR9pDNd0jm4T8U4tPBEOXl0tskzcjDurtROOWX
 Jg7h+VrhDQqCq/1euDbVuPvZbHZQcH/TNwMust+hyVHQmJ74HE2Kwc5Ts
 hkYltRRqxBZzKeHrU9Je2AVIWYqZbyaBDmbCWuXIt66OgYcHghINFq27O
 OyBU/KScP06WUT2qDl7Olr3iijBxTEmint9nKMoRhggE7pXYg9++Fnr/9
 K41M1wveAP5dj7M8DetEL1ryN/uj1w2kZ/zn2znCxzn5Ku7pCmReRh8pF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CkU6fxxq
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: fix race condition in
 TX timestamp read for register 0
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

On 2025-11-27 4:11 PM, Chwee-Lin Choong wrote:
> The current HW bug workaround checks the TXTT_0 ready bit first,
> then reads TXSTMPL_0 twice (before and after reading TXSTMPH_0)
> to detect whether a new timestamp was captured by timestamp
> register 0 during the workaround.
> 
> This sequence has a race: if a new timestamp is captured after
> checking the TXTT_0 bit but before the first TXSTMPL_0 read, the
> detection fails because both the “old” and “new” values come from
> the same timestamp.
> 
> Fix by reading TXSTMPL_0 first to establish a baseline, then
> checking the TXTT_0 bit. This ensures any timestamp captured
> during the race window will be detected.
> 
> Old sequence:
>    1. Check TXTT_0 ready bit
>    2. Read TXSTMPL_0 (baseline)
>    3. Read TXSTMPH_0 (interrupt workaround)
>    4. Read TXSTMPL_0 (detect changes vs baseline)
> 
> New sequence:
>    1. Read TXSTMPL_0 (baseline)
>    2. Check TXTT_0 ready bit
>    3. Read TXSTMPH_0 (interrupt workaround)
>    4. Read TXSTMPL_0 (detect changes vs baseline)
> 
> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestamps")
> Suggested-by: Avi Shalev <avi.shalev@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

...

> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>

I don't understand the double sign-off here. Did Song Yoong Siang 
co-develop this fix or you are upstreaming a change they made somewhere 
else?

Please take a look at the documentation [1] regarding signing your work, 
especially the use of Co-developed-by tags in case there were multiple 
authors and/or proper From tag if you are submitting on someone's behalf.

[1] 
https://docs.kernel.org/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

Best regards,
Dawid


