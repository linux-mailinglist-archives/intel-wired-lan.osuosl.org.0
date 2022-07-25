Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB78657F8E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 06:45:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D719416EE;
	Mon, 25 Jul 2022 04:45:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D719416EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658724306;
	bh=d0K+A2VWizmPDbyjjSzHHua4YWLPiDSnG8PRuOtTlFA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bjdtRBXNRZ6aBmW+jFJrrnOa2QlmVNlcF6aZM2+pfHLKZRywrMprmnfHoaO0UnjC3
	 Hj4QaFRUEZnZum4GX57zYC87fYTLYT+n6qVe1bvARyMLTv79n7R/CSBIxdf2yIQ+J3
	 EpmaVKDb6NWjafzRNVP/q+iNp0NzWqCz/djPF5J7yqdsKMYOJOWCqXa99NeoGsCwNH
	 ZQybR7uPUzhd4j474kJEqs0KprvbuLy2FhjhjwF3AyVXThy2k1MnXVqvEFroT7R05q
	 BzPhoMv6hxOVS3mZFk5ZspuX7lu8/B3KfyYvlUYht2Kyd6LIllKgrqaYdXtSG/VEkX
	 zLqYeCVhSKlhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VIqxcSx59X7B; Mon, 25 Jul 2022 04:45:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39292416E8;
	Mon, 25 Jul 2022 04:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39292416E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A29F81BF414
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 04:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AFB183E4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 04:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AFB183E4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYDJxJd3CX2j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 04:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 108EC83E4A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 108EC83E4A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 04:44:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="285157357"
X-IronPort-AV: E=Sophos;i="5.93,191,1654585200"; d="scan'208";a="285157357"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 21:44:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,191,1654585200"; d="scan'208";a="658009597"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.74])
 ([10.13.12.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 21:44:55 -0700
Message-ID: <bd95a82a-941c-772a-d96b-6a72f10a20ea@linux.intel.com>
Date: Mon, 25 Jul 2022 07:44:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-4-jacob.e.keller@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220721213001.2483596-4-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658724298; x=1690260298;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=em0ACunOnG8jkI9b01OxsKyGdxqQaqnER7+jZHbz/cY=;
 b=mTwYx4F/E2bmFryNFtNQbZz2cG9ZwUzU3q8OMI2zxqBROaZuLnmi0gbX
 KAJiYdS4GsAVqDsZlBqltldzPIcnAzCk+0YpaqOcM5f4CFcEW9pmLREd3
 XCwQLJ2oy03AXekVHv0ZZ8NxcvDSp7++coHZTgQGDx3sE+rB40yWS3BRp
 2T8Z8jODrtaMX8bfMGj1SIJM+M6TtLVqTErbGrxDfGgp1r5Tr9axWO+U/
 wqhMqa/WWFPxpRYPIq88p14/0BdzDO7+HN6BEz3UClVcpzEkL3AGmrNvL
 xjZmomFZlCsqZbRAFOLamKKYIiGGDwlXzt/99YvtzP16rrMMC+J9xzBc2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mTwYx4F/
Subject: Re: [Intel-wired-lan] [net-next PATCH 2/7] e1000e: remove
 unnecessary range check in e1000e_phc_adjfreq
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

On 7/22/2022 00:29, Jacob Keller wrote:
> The e1000e_phc_adjfreq function validates that the input delta is within
> the maximum range. This is already handled by the core PTP code and this is
> a duplicate and thus unnecessary check. It also complicates refactoring to
> use the newer .adjfine implementation, where the input is no longer
> specified in parts per billion. Remove the range validation check.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ptp.c | 3 ---
>   1 file changed, 3 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
