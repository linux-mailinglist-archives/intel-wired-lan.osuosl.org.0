Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F19D65A9C4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 12:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E72F409AF;
	Sun,  1 Jan 2023 11:31:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E72F409AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672572689;
	bh=cOH4dXkvGdbzu520lQ6b7pN9Yhu3xyKtXiNDFhPVWQM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DoVsMNCtzqzqeFJuoc8A8oZs5rO5vvnKXreAPIS4+P7hgrLBJ5Se9nZZv8vjexris
	 VUO13UK5Le+KQumYli7NxCFZAZDr1uCKJFqt/RHOawlDCMq1GzROsXYLfFvKoc0bsI
	 q0Ssl5uV7kimGzfRke+CKrUFKFWR9Jr5/z845rs2OdhGSDFw+d15K++JHNo3UmdFbD
	 3V9xr6p8xluGicHDARSCwfH4X3zRL+q580bHJy8u8dbQRxwp22+C1u6GngNbMY2zXF
	 Qi+D9Hx0DHpOdn9LSBTNu0orXpNu2tyfz1lN7htYeg7QYs6FrDipJacaAh8O6WulWb
	 Hc0rvMI6mn05w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDOYAsyHSl6A; Sun,  1 Jan 2023 11:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D540C4099F;
	Sun,  1 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D540C4099F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7831B1BF2AF
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51927404FE
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51927404FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sf2pd2PKwyx for <intel-wired-lan@osuosl.org>;
 Sun,  1 Jan 2023 11:31:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99A37404F6
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99A37404F6
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:31:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="383679124"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="383679124"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:31:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="742967824"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="742967824"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.251])
 ([10.13.11.251])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:31:19 -0800
Message-ID: <c4127a7a-da23-41f9-6e3b-e2a15794975d@linux.intel.com>
Date: Sun, 1 Jan 2023 13:31:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org, vinicius.gomes@intel.com
References: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
 <20221214162909.22856-2-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221214162909.22856-2-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672572682; x=1704108682;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gOO7pZHrFaM4U21kq8W0Z4X6NlTSBazxKiHEt3/S3rQ=;
 b=Cj5wVocCxUAgWmlWjSpWoAuU+Ctgt1Rl2cPVRgh8UvU/T9lmMfmsBgM9
 jBwi9RV6RN2tFXLrEQNyqLpbOfddWtlIbrx/yh6Ymk0KEZljl3grntUn9
 JYSNWHK2l9wp2Gor5fvzXmcjv4/eNpq3T1qnoyEam23Hdzt1lZrGH3kzN
 TJOW9FQWpj3CHfz6GpzTF+nnaQxMrvLS3z/W2tK/j/dQOE/Sk5gqD9KKl
 0Ho6a7X2Jg3PD/aDPxJukweYXaXtFTUCK2Gpd4MYRmg5IIDbN6UoXcZ6+
 HaZg1+7khPLE5IPNHVQVpN6yA6E7MOpsYyfrU/dEVTD1DvQHk6B3D50sF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cj5wVocC
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] igc: remove I226 Qbv
 BaseTime restriction
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
Cc: anthony.l.nguyen@intel.com, tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2022 18:29, Muhammad Husaini Zulkifli wrote:
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
> Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
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
