Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C59E52CFB2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 11:50:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76EEA41C1D;
	Thu, 19 May 2022 09:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORgFY2KTS3sA; Thu, 19 May 2022 09:50:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A23D41C21;
	Thu, 19 May 2022 09:50:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65FFE1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 09:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60118408A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 09:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f5Uc857OKOwQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 09:49:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3029040600
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 09:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652953797; x=1684489797;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=rtmqj3TMQM5Lkrqql/9T9c/qV4lDn2ggVyHcHXuO8KE=;
 b=ENgzn8oBC/SOPgDop7sCl1/rL3qc41H5B40plDAM7ZT3kqcnWmkgnxZF
 DjDfSQjiljHcLL9KAnuJzDaw+hq9kcFUf30oEYd6fd6OXC7DWw8p4ozh5
 4rkFdypjLzLxY3PPyBLV5f9h/yD7YGRPFjoKCplFEnBCI8MVS3AcvEuTN
 hSTCiY/EYbgocfmeU8s98nO+vbh2EsHsTFOJ/4OTP+4KeE3XbLEpSSe4L
 rBEsHm9Qqm0zO7bi5fUGBwkFKIt61/LA0lqdnl9QF7E5VO/zv+MLQxsCb
 ++gJpMF86sFqzIeeMa7l77tvpb0ivh1tWd8FeLrwV9wWb1i9qbsM9b4XV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="358526198"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="358526198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 02:49:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="598468800"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.212.104])
 ([10.214.212.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 02:49:54 -0700
Message-ID: <d01c1c94-3088-942d-cd18-942e4c519c6d@linux.intel.com>
Date: Thu, 19 May 2022 12:49:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 dima.ruinskiy@intel.com
References: <20220509085254.2436296-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220509085254.2436296-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] Revert "e1000e: Fix possible
 HW unit hang after an s0ix exit"
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

On 5/9/2022 11:52, Sasha Neftin wrote:
> This reverts commit 1866aa0d0d6492bc2f8d22d0df49abaccf50cddd.
> 
> Commit 1866aa0d0d64("e1000e: Fix possible HW unit hang after an s0ix exit")
> was a workaround for CSME problem to handle messages comes via H2ME
> mailbox. This problem has been fixed by patch "e1000e: Enable the GPT
> clock before sending message to the CSME".
> 
> Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h      |  1 -
>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 ----
>   drivers/net/ethernet/intel/e1000e/ich8lan.h |  1 -
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 26 ---------------------
>   4 files changed, 32 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
