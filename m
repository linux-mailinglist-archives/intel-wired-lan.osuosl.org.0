Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B911626E07
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Nov 2022 08:27:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A111340562;
	Sun, 13 Nov 2022 07:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A111340562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668324443;
	bh=Hr9Qm4qPxY6MKNt13u0EIY8k4KxjLGeyREI2rdDqkDM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gd+M6brP4aamT++OUtAwIpTUzkSqFt8XVK8PyrRZ9RO+AvN0TNudI2SD2mqaOSl9U
	 eFppRcTQ86JCEL2/YhgFVTtSb0gs7PyvqN9Lg1f0wdc0r9KWIDZM3Cp0oONWHLhChK
	 zC/Py1MNgog+debxtPuWj/2mLcVzFzp+NpVm3fVRq00PSal3L2uYsSzRcwES20mAtS
	 HaWEYQb9xu8BgSy7DjKx+G3YXnFdVuW5tO5nf2sKftj28N9AQCtkaDYXSpTAm7xJtm
	 cWIkIk1Jj4Kcu7+03y5rI/oqih1bb22JkWc/f8N36UOgSwSn8kNDBXy/i4cFUNZUqu
	 9nk3jxevtUz/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1rVGLJHXMdj; Sun, 13 Nov 2022 07:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD0BE40556;
	Sun, 13 Nov 2022 07:27:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD0BE40556
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AD181BF4E5
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 042EB81926
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:27:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 042EB81926
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmH5hl00f4v0 for <intel-wired-lan@osuosl.org>;
 Sun, 13 Nov 2022 07:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63701813B1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 63701813B1
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:27:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="338568665"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="338568665"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:27:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="967208731"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="967208731"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:27:15 -0800
Message-ID: <f0b2e7b2-bd42-95f5-f85b-2e32b7c8e881@linux.intel.com>
Date: Sun, 13 Nov 2022 09:27:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20221026034255.12999-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221026034255.12999-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668324437; x=1699860437;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9ARWPfwwGWpyuA61vxFEZ347eLJksmRlhpFFikmw338=;
 b=NhHIECZ0xtJsMXJnCwppF7xnYiUUpjAFjh+vQcntG3VlUhJciHyKbA0r
 4QMPboe8tN0otLxFuwt7Xrl2tddB6N2yglcdtMEytxe5lufe2R1vkifCs
 RwnlFyj4eFVAQrfAR4MlZ7XCNuR03vpdsJ8Cd8YFd/6MBH0wr5WeYjMd3
 ywpEMJ4fMYQpoFIAtN55PmSxqTiGupe0vudchZXetIeNPBDdV6ET8IlIW
 0D7xnkhpwbgnKHEYVq4AtKEwiexjBg2aVR2vBDVBgsEXyvVCKjepc3HSS
 fKMzcRauMTFuMLMme53FNdXDE/zPGi9toxOIZVYfe/K2wNUbqxQr7pkFH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NhHIECZ0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Use strict cycles for Qbv
 scheduling
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

On 10/26/2022 06:42, Muhammad Husaini Zulkifli wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> Configuring strict cycle mode in the controller forces more well
> behaved transmissions when taprio is offloaded.
> 
> When set this strict_cycle and strict_end, transmission is not
> enabled if the whole packet cannot be completed before end of
> the Qbv cycle.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 11 ++---------
>   1 file changed, 2 insertions(+), 9 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
