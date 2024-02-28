Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B386AC44
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 11:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E684821E1;
	Wed, 28 Feb 2024 10:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLYb6KFQ4MnN; Wed, 28 Feb 2024 10:38:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A17381E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709116738;
	bh=ggJVL+5UVyRqJgOapcR+xGiUFSeARq97a8i4Fx7brbU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2rL1xaR82fGN8TiE7EtMSQReAHDNTQ3jLJmPur8Sx0rGyYKHpN+nMf1cB1l1Im2yP
	 lx9Zx9cQv1+wPG3SC9956FMjQWhzkDxmhU86GafHjLO7apAFIDEJDXtoSzT5qrWj6T
	 L69K9vmqkgRjFTkSz1f2VXpqtHtqRnPSPHguUqtPef1XO8GsxzDY6ECfU6ZDCYh9RF
	 kHGO6KPpqL6VF9CJXJCbKfdxZAw+3Olr56xpWaqknR055tkH2NU7OJDNZU7uuQ80bc
	 sR5YTcA88k1qSBIlD9zLEb5JXi60/5NIVjwj1u2B96ZehOdO4LrtmFXHddaijc3ZFQ
	 ORf2Vo2g3JtQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A17381E5D;
	Wed, 28 Feb 2024 10:38:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D73F1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 10:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16AF3608EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 10:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tpKJZiss1odZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 10:38:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1C01B608DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C01B608DA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C01B608DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 10:38:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3431156"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3431156"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 02:38:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="11996196"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 02:38:52 -0800
Message-ID: <aea66510-a12e-423f-87cf-92c2405e4e27@linux.intel.com>
Date: Wed, 28 Feb 2024 12:38:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
References: <20240218074221.108927-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240218074221.108927-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709116736; x=1740652736;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9y1jw3wHyLe6aeMWxted6EhNKF9AhjZdcmUCa3qVbTg=;
 b=AdBpzc57YtgiUaVv5DQVjAkyy6HTasOvFawcufWsgFBoLXcfGQiMDrTN
 0cGzYTplyPTuRlBiEVq5lExcxfN1rnqbj5I2NvKWmCnpwBHdWwICJkDJ1
 pDWmjynGQFYRLlCVM+fonED1FvFriQbvLYGav5/cb0FJrSj4ukDLZ0kRG
 WmnwUrLg4cKLxiu90JCli2u1Yn84CZnKrpAldN9wsasNpETVl7jexig5F
 N2KYrIT+xiZ9PDteeAy/Y8cbsbSfhi499sBuZPruqRu9Axb0CLrJkUbpX
 oIDJtbbUZeb2NfFfe18L/eqKmEuI+C9IBiqqSGbn4Xi7u+16FHGh6i1p0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AdBpzc57
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] intel: legacy:
 Partially revert of field get conversion
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/18/2024 09:42, Sasha Neftin wrote:
> Refactoring of the field gets conversion introduced a regression in the
> legacy Wake On Lan from a magic packet with i219 devices. Rx address
> copied not correctly from MAC to PHY with FIELD_GET macro.
> 
> Fixes: b9a452545075 ("intel: legacy: field get conversion")
> Suggested-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
