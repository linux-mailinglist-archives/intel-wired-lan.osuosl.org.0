Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C06D8FC4A7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 09:36:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0272841436;
	Wed,  5 Jun 2024 07:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8vXc8SCXJbo; Wed,  5 Jun 2024 07:36:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2445401E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717572980;
	bh=2rY7VbY+SDahDzzkmCN3PJhbX8mUr4M41ITADuoFNGQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=My8iuCEillApZtx/ivE0N6+mzgGhMI6K6oq9zkdh/0WAhNuxqWfXb2+9jur1pMbsT
	 /nH2PMhQNAnlwUOWjWVLDwcnuL0/4sA/Ra4fJQL3xKRaSqCKOwIkU176eGWsZbQD10
	 ZRtS+gnpwaw1OMPzNWGAFV0ONOD+5GwNMfx6Zal+YI9p0MyxOQRz8XiSxV8y2lubhL
	 cBEYpfzPwUHYtBaV6XjLt1ZOlxV1i63RDXegi1oYQeijaVDQahB4c8Fw5CRBZHMvfm
	 X5dgEw0Jp7RXRfjVHYwJ/yHpsYt4EmAHV/2uAd+DX5by8VyxQbJxFaQ0s8DY7CgqK7
	 6GPXnWpLoHjhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2445401E1;
	Wed,  5 Jun 2024 07:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFC271BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 07:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC47260A98
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 07:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jqX5fikaZyl1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 07:36:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1E8660A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1E8660A65
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1E8660A65
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 07:36:17 +0000 (UTC)
X-CSE-ConnectionGUID: LfOHCbp2SqaEos3bnYeV2Q==
X-CSE-MsgGUID: iuUri0tMQOyBXWsi2UrULQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25561383"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="25561383"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 00:36:17 -0700
X-CSE-ConnectionGUID: DvaTFZYGSReppPi9iHYiHw==
X-CSE-MsgGUID: 3RCXgcvBQRKjsYL7mIOSXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37604896"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 00:35:17 -0700
Message-ID: <d20cc54d-218b-4945-a1a6-dbb435371ecd@linux.intel.com>
Date: Wed, 5 Jun 2024 10:35:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240529051307.3094901-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240529051307.3094901-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717572978; x=1749108978;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=yQTkDpG/d81uQsPpxB0v7VR7rbWEe3gLmosA5VjzEQs=;
 b=GUCjyYeCmzqe5WOKYsDmzLIvvmVYC2D6mLdYhjj/81YmfeJWUyPQX42V
 jxQ0AfHUMUssuJasmcBYk2agOh+0sHFavMZTKTnE4rH9kZBg+jFK0VkQM
 J3LGkI03llp22IY8bYDr45El5mkcK6Fbe+ss846uaGr0jOsvNpdXMZvqZ
 DvbRZ2VcclJ8Q+4WZp4C5/LUNOrSo/CSBokQWK2p5zvwiiSuEQf3J7CoD
 8Hnpguq1v1xqA1upWlgbpXXoYM9d6C8xVEn9ZQqZvtMCDjkcnG0vHM3CY
 30F9cC39BNGqBI9/rd0gBGiiLjPL/kojkRGPcb/1cJ8JbcFWAflr8DAIJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GUCjyYeC
Subject: Re: [Intel-wired-lan] [iwl-net v1 1/1] Revert "igc: fix a log entry
 using uninitialized netdev"
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/29/2024 08:13, Sasha Neftin wrote:
> This reverts commit 86167183a17e03ec77198897975e9fdfbd53cb0b.
> 
> igc_ptp_init() needs to be called before igc_reset(), otherwise kernel
> crash could be observed. Following the corresponding discussion [1] and
> [2] revert this commit.
> 
> Link: https://lore.kernel.org/all/8fb634f8-7330-4cf4-a8ce-485af9c0a61a@int
> el.com/ [1]
> Link: https://lore.kernel.org/all/87o78rmkhu.fsf@intel.com/ [2]
> Fixes: 86167183a17e ("igc: fix a log entry using uninitialized netdev")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
