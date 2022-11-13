Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B528626E0A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Nov 2022 08:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AB0560AD7;
	Sun, 13 Nov 2022 07:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AB0560AD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668324625;
	bh=lwoRoWnUXzVZYDTv2/Wwym/oDVG989z4q2XVM7HgkD8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pi9KyNNzLhItgtRLeuQnXvVTwkuLaCnjpPr3Y+JGDeLcrayAoflWxAQlIalVQkCsP
	 ZudVuAW+yke8Iq1hCQP3brmHWsZePDQaSPgV8LmURHx1BliV7A/zZPuUp7VljflQ8g
	 wt9YaHWJCtlqeezh9nNc/jIJshuwxbKW91dSR2/NxFH7/a7NWDNW/XUw1HSGHlcR7y
	 VUY91Q/GF9YNG1x+pkB2gEaAODa/WjojEeLZ40Y6iM05ewijPw5KLpcClnB7+LLq28
	 Ppj5bU6UsfKz2zOgY7AvDcFv3pmveRcD6m9FwNnaI53VQI9AhguUE2A1j8xyMFsOd0
	 rdB026a1+4raQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRJVAWB01wTR; Sun, 13 Nov 2022 07:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FCF360692;
	Sun, 13 Nov 2022 07:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FCF360692
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F39B1BF4E5
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38062408F2
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38062408F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MBIGGTuxT76R for <intel-wired-lan@osuosl.org>;
 Sun, 13 Nov 2022 07:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5639C408E9
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5639C408E9
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:30:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="373916748"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="373916748"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:30:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="763083540"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="763083540"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:30:00 -0800
Message-ID: <f9af4483-cba1-f4f4-9daf-b1ffa4db074c@linux.intel.com>
Date: Sun, 13 Nov 2022 09:29:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
 <20221030045324.25207-3-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221030045324.25207-3-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668324618; x=1699860618;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wqGVAgQMdOfC7Q5A6yZa7aa0YIJxMiTiX9rywC4QVYg=;
 b=h6OHD5cyWmRUSY6N/1ci9kOuUV3UPbpO4BhHk6W7akXMjXzXWH1udZPX
 +oBHArtcZu2XAFO2FTh0LZUbkKitQMAgCmCtlbL6OEkCyFmt2SkyrGdiN
 Jtv0SEq+qeFEmLzpdRVxCw7G/Tsnr7CZAkYED84Bum/ndnh7kurwKs3Ub
 kj9CaNJhgCpQIOroK1ko8I0k9n3W3Dz2xeTUS0nIFk8SXty8SxKa+SAe4
 O7wItiNYvrsyBIFaxEqdC4cDOrijvh2/oiLMtq4aWdiKu1AaSNQI2j9gw
 WXcweaUlyT1AOi0q//sGt74Jdf3TquWNE/kqXE/gEbfCQz8YZPmEfWK1S
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h6OHD5cy
Subject: Re: [Intel-wired-lan] [PATCH 2/5] igc: remove I226 Qbv BaseTime
 restriction
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
Cc: tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/30/2022 06:53, Muhammad Husaini Zulkifli wrote:
> Remove the Qbv BaseTime restriction for I226 so that the BaseTime can be
> scheduled to the future time. A new register bit of Tx Qav Control
> (Bit-7: FutScdDis) was introduced to allow I226 scheduling future time as
> Qbv BaseTime and not having the Tx hang timeout issue.
> 
> Besides, according to datasheet section 7.5.2.9.3.3, FutScdDis bit has to
> be configured first before the cycle time and base time.
> 
> Indeed the FutScdDis bit is only active on re-configuration, thus we have
> to set the BASET_L to zero and then only set it to the desired value.
> 
> Please also note that the Qbv configuration flow is moved around based on
> the Qbv programming guideline that is documented in the latest datasheet.
> 
> Co-Developed-by : Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_base.c    | 29 +++++++++++++
>   drivers/net/ethernet/intel/igc/igc_base.h    |  2 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c    |  5 ++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 44 +++++++++++++-------
>   5 files changed, 65 insertions(+), 16 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
