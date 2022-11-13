Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B83D8626E08
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Nov 2022 08:28:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6DE9403C7;
	Sun, 13 Nov 2022 07:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6DE9403C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668324525;
	bh=TCIjmzekKhEa+Qm2rMtdqluV4ec2cNROEKlArHyLVKk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ue9fRtmgKApUVnBQsJLfab2JVt4dsEfS2NLez59JicyJB1lVBgHd2u4lWMi6bsOKM
	 HH1Ez1T+BoSgSOSmPbsPTn8WkeH7EZ+O49N2aA4n7mEMKOXa7xmAHu8DpOCKuyP3g9
	 ZN667XGYz6xyHdpOYUGMo6414De76tmgbwiZcmfKtZ2Nn4VcjnAdvT0Hwo5mnbyEaz
	 8Jn2/t4ZJlhb8DYqnlPRsRvfeEVfBAPSPF5ihlWQfVEtr6CNujbCRs6pQXm3FVF084
	 YORpOucIgFQ+yNOGSA6uTJg5CgK54mORpWsT8ePo4YlE+CSY+jB/8AhUEoNG2D2lUj
	 WEOBDrxSyeZAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kKTmbD-M-Y4K; Sun, 13 Nov 2022 07:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 874A240348;
	Sun, 13 Nov 2022 07:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 874A240348
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6572F1BF4E5
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D110812C1
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:28:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D110812C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4mXF0OF4i3so for <intel-wired-lan@osuosl.org>;
 Sun, 13 Nov 2022 07:28:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDC31812BE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDC31812BE
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:28:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="309416746"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="309416746"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:28:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="588971453"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="588971453"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:28:29 -0800
Message-ID: <946d8e50-2a1b-26ce-33d0-70177bf50484@linux.intel.com>
Date: Sun, 13 Nov 2022 09:28:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
 <20221030045324.25207-2-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221030045324.25207-2-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668324517; x=1699860517;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=688M5ZrZGCEjD8LeJoSAu6LuWbjSIrAAV9+wCujCOXQ=;
 b=CDTHy9KtWfVZ+XXTftbEJxz8r3obKWdmtjAaMY54l/cPmp7DtkV9hXqP
 7wT77oWmxso20oJ4nbKvbVnMxOhN63E5Qs5G6O6rl6PcuaW+7bkydaiJ/
 A1YK5qdqzOGxvcsdbPdQ/P70VzUrAtYr1DNDVUQzz+6DlH4P4FuwscUqZ
 LO6Bs5RxAyfYEfWdigYK6pQD4bdhaSyUcKuXj7TQf7fkUN+TGhGQZjW4z
 fuPQ5JBcp6qGbBFJ0Rrv+Nfk3bw781E5Wb0bsZZxbGpMK8H2sCu6bss63
 ozaGREzkg4HbfXDw2/nwzOJ3z947YV0w1c/VxduisaA8iBOOCT//XL2b0
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CDTHy9Kt
Subject: Re: [Intel-wired-lan] [PATCH 1/5] igc: allow BaseTime 0 enrollment
 for Qbv
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
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Introduce qbv_enable flag in igc_adapter struct to store the Qbv on/off.
> So this allow the BaseTime to enroll with zero value.
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 2 +-
>   3 files changed, 4 insertions(+), 1 deletion(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
