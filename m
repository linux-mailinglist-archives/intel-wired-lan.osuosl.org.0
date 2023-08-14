Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ECF77B8A1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Aug 2023 14:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BD6061070;
	Mon, 14 Aug 2023 12:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BD6061070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692016158;
	bh=XNIFtRWxDIhngqQS1TS+JxMgYz12Peb4ubjnGXbwhfY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jmBwiIBbTkyxLcxXJW3UEbc7KABP3suWzQTghBiWgspCHn+MNgnFOyAhNURwE0J7/
	 W0Ebq4qyIcTtnpOvV3aaBvCvfJRqr5DoLhNTWTOm7dxh633RyTpJN+QH4w54bNpoEz
	 Wh0NxFSoMH7AUfyEMP0ZnYk+SejHYABrMwNUqo8NtfwVNGlfaLG4JXug91XWpCpb2D
	 CXt+W2saBmYJlmN+EKrpAvjlGOBnG4E0VWkMVTpi2P1V6RDc7DoXB4YQg7auQZEt0R
	 1ee9neExrWNgo/EiAHgC+DEOhqP99yORpSgMZaDXggSGk6YKStMbzaTqWNqvW72wsM
	 ED882FL5EZTPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nUJSCxmWEl1L; Mon, 14 Aug 2023 12:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EF2860737;
	Mon, 14 Aug 2023 12:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EF2860737
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DFF81BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 12:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4242D40B5C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 12:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4242D40B5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KGS7n2SgmIfK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Aug 2023 12:29:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E5B540B62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 12:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E5B540B62
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="356990587"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="356990587"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 05:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="762918170"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="762918170"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.226.151])
 ([10.214.226.151])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 05:29:08 -0700
Message-ID: <b71ca1e7-7585-7231-32a5-a69c7ed15317@linux.intel.com>
Date: Mon, 14 Aug 2023 15:29:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230720034835.88372-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230720034835.88372-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692016150; x=1723552150;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=f3Z7PjQLQZ8fWhFljA91n1AcuB1HsmdMmlgexzNdZRw=;
 b=WGQY//E3XO1UAQu+F/tVqkmoaOWwPmWMI5U8nsp1UlYlLkyqBaHfPx38
 S/+MB96o4mkxhaSbnVUesD6aRWtIHxXCTFcg3SUOOpX5G9XZcxMYtHfEZ
 AoPCpSgUI/pMPnMddh/2P95BDCTWaVEc3u1hCgywvkbvVZc7403oWYiUY
 l7FSeHTPEkeItIX+PsuL5MK0dZv3FX76gOGaMSwJ26wk66qqqVAGHlZNo
 YKxnbeIyJCXyvIU3zFhvgAlmwbfaAYfDwh3YdBGx+KfZZQdbwS5SBTg/T
 iroY/Yg4gPrtqM3AKGEQDEz7FBAQA5zVQJJ8NHVsMGmONmB0+IAWos+5Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WGQY//E3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] igc: Decrease PTM
 short interval from 10 us to 1 us
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

On 7/20/2023 06:48, Sasha Neftin wrote:
> With the 10us interval, we were seeing PTM transactions take around 12us.
> Hardware team suggested this interval could be lowered to 1us which was
> confirmed with PCIe sniffer. With the 1us interval, PTM dialogs took
> around 2us.
> 
> Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v1->v2: Fixed commit message
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
