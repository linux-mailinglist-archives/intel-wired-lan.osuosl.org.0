Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E354D6A5283
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 06:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13BDE60E46;
	Tue, 28 Feb 2023 05:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13BDE60E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677560565;
	bh=rfLssa0cSmU/d+ACWuifS210k3wp3KUZHNww2MmOalI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sj+x3c+lsCV5gtDQpFJ8zSY6E+mCG6ogV7PIVZpUvN4RUJQbO9K/RQ/Ybrns8tN0S
	 u4kLJbUY5tbR0I5rS9qQI44UcDYnrnNbSk99bZvuZa1GYHN0/yjRx42Dh5nr6R3GcS
	 SSSeumc8T5q9zHUocxJ1057mzVcRgo6sAf8g++p58vCNkHi4Q0S+/bRL4whN8iVaAN
	 D8NyhIeRUaddsJWKbem2WmnpLr9i7O1hxE38vGP2kS7WxK/2Prxor747SH1HOyf5YB
	 qIt9r8CVV8/Qw3qlFqHBt/T0SRgiWKNjUqoh2cu9BzedO0WbsB7UDRCodhS993bjGk
	 Osp0gr++w1gdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuquarjLfCAf; Tue, 28 Feb 2023 05:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1714760ADF;
	Tue, 28 Feb 2023 05:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1714760ADF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF761BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83C3B417C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83C3B417C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7zVU11VhzzX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 05:02:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D996417C0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D996417C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:02:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="322298453"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="322298453"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:02:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="783682102"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="783682102"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.1.137])
 ([10.13.1.137])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:02:35 -0800
Message-ID: <a0ee07e5-986a-a88a-d834-45d2b13f47e5@linux.intel.com>
Date: Tue, 28 Feb 2023 07:02:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230223070317.3258883-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230223070317.3258883-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677560557; x=1709096557;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=KW8cKHmoJBt0PFYky1kDTzrhlNnu9G9+FpM7XqiDyqU=;
 b=BOCFvCthvYy5MsotchTIUrZGrZI382ENGrUnsPG6aGGhIic/nVZcDd+O
 s1vPuHL+wx9robmtooD8UtA5EVMPp4tXn8o5UwJwh6of2oeTiS1sQjVAz
 6LIvWtX8/mGhG9o5iiGXIAXErHza/K6b+lYGRUtKN9hLI2NN+9inNHgUS
 chThFjDmFqbt3ORXFnWzduGuPG5YrNk2aZ0q3dLhavg/KIxjGz7VZj8Vw
 boxpNsJMBaW1q0gnwqi7pr1zeESVgKXyLyOOccnnooKRJmAmShr3ewLB7
 Y8+yQ5hnNgQXzUW3FFNsl+/bEPA/dTOkDmekvBQ2/m/5G9f1h18Ymjn1f
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BOCFvCth
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete DMA
 coalescing code
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/23/2023 09:03, Sasha Neftin wrote:
> DMA coalescing is not applicable for i225 parts. This patch comes to tidy
> up the driver code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  3 ---
>   drivers/net/ethernet/intel/igc/igc_i225.c    | 19 +++++--------------
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  1 -
>   3 files changed, 5 insertions(+), 18 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
