Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B2577DAD7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 09:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9880F4155C;
	Wed, 16 Aug 2023 07:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9880F4155C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692169303;
	bh=V4AhAVokAjn/KCK2DT+pl8aAWFbiBP7kq92eNjA8EUg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8brWGAM0xlxsR4ZkGVne6GED0lPItd4JIsY7YfpBHDNRxRtSOpPlFeb9JhTfoFhbK
	 JF9M0ZvnrhJXRocEVP2rss1pqJ+XY7N3Sk8e0SpmrkKb6HpfIY3mg7ydrnc13jakIG
	 JqfZuts0imRIoc5Dg41nYjQMZtCCljuXbzCYjynTu4iKkqdZ3MSY9vE6Le0sB4dsAV
	 xB75Q2+a52UOoIGCQFmhKpuyAH5MXOvbOnxHjUzxmjno3L65DsbhEeHmNOBoRH3ngN
	 80GmM8j5MfUkyzBxOZvzJoYebFQ/wJzkI63vWffGTohy3ehjvWsiem+KSZ6NPgPr2S
	 8/yDQA/MWFk+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WY3YN0r7zNUv; Wed, 16 Aug 2023 07:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7895540153;
	Wed, 16 Aug 2023 07:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7895540153
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FE7A1BF407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 07:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E610C822B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 07:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E610C822B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RustZeYOJrKf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 07:01:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 24DE582277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 07:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24DE582277
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372456891"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="372456891"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 00:01:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848375429"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="848375429"
Received: from mpaperno-mobl1.ger.corp.intel.com (HELO [10.214.225.82])
 ([10.214.225.82])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 00:01:32 -0700
Message-ID: <254e3884-ca49-1a59-2f4b-2d78fba77695@linux.intel.com>
Date: Wed, 16 Aug 2023 10:01:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Olga Zaborska <olga.zaborska@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230725081058.92158-1-olga.zaborska@intel.com>
 <20230725081058.92158-2-olga.zaborska@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230725081058.92158-2-olga.zaborska@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692169296; x=1723705296;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=FsLdJo3324j/Ex32HnezAJvIRzz3LdfkZpo6cSp5HSg=;
 b=H6Df9APiYHbgfE8ntqPpqpjFCDfblX1xMyuDww1FHeVGZHC1jdtpUN8N
 b7aQhTz4qGsxX0CNOBcpvzRYJiKtwjE/FoLXLMCEhesWFE0HYki5JX1/p
 QR61RPvqWgR8MW0vsil2/eRTc0M41P3rBVDq9Redi7rRWpD+f5cp/x/cK
 M/HcEut5orHfeoUK7Qwi2aH/PUbYqYKmOBfWwffwURj69Tuqj1NoNNrS2
 u0jx8oUrqVH9QpZ1wr1fwuNKSzaAPhbo0rYPs3kkpoI4X+t1jUKoihMuj
 M6tqVMNlltMMTD9s2ULQPFT4CWUDbvnW9lh9itham5eY1o5pwSJAKjKCF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H6Df9APi
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/3] igc: Change IGC_MIN to
 allow set rx/tx value between 64 and 80
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

On 7/25/2023 11:10, Olga Zaborska wrote:
> Change the minimum value of RX/TX descriptors to 64 to enable setting the rx/tx value
> between 64 and 80. All igc devices can use as low as 64 descriptors.
> This change will unify igc with other drivers.
> Based on commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")
> 
> Fixes: 0507ef8a0372 ("igc: Add transmit and receive fastpath and interrupt handlers")
> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
>   ---
> v1->v2 fixed commit title and message
> v2->v3 fixed commit title and message, added changes for igb and igc
> v3->v4 fixed commit message
> ---
>   drivers/net/ethernet/intel/igc/igc.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
