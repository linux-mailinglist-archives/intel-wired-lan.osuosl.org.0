Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C96C269974
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 01:06:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D386185F6D;
	Mon, 14 Sep 2020 23:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-1T3kZF0lrK; Mon, 14 Sep 2020 23:06:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D803085E14;
	Mon, 14 Sep 2020 23:06:14 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A0F11BF348
 for <intel-wired-lan@osuosl.org>; Mon, 14 Sep 2020 23:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 45B2E86FE6
 for <intel-wired-lan@osuosl.org>; Mon, 14 Sep 2020 23:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NHpHxAhCGEwJ for <intel-wired-lan@osuosl.org>;
 Mon, 14 Sep 2020 23:06:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3F4586FE8
 for <intel-wired-lan@osuosl.org>; Mon, 14 Sep 2020 23:06:12 +0000 (UTC)
IronPort-SDR: JtT70tsH3rceGzUJI2gEUca30LOSabrNYftri4OcxxrBfUvkSIQ0ZwjSAwrA1/CAUw/nyZqPbi
 ZZ8fEHNonmNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="159219635"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="159219635"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:06:11 -0700
IronPort-SDR: BYqKilEQMPP16c+rvymVwvgNh9MM0IxHz4RtRH/DXoHT4wPN6ssQj2GBHJdaBxIK3gc9/nqJ41
 FO0lUCaN1ipw==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482529966"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.252.142.25])
 ([10.252.142.25])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:06:11 -0700
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-11-jesse.brandeburg@intel.com>
 <fbd1fdd9-1000-8aac-7e5c-bc761b2209e1@intel.com>
 <20200911162557.000002d2@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <3e3a63bd-dd6e-09a1-a1ad-29e7a7ed5d1f@intel.com>
Date: Mon, 14 Sep 2020 16:06:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200911162557.000002d2@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 10/11]
 drivers/net/ethernet: remove incorrectly formatted doc
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/11/2020 4:25 PM, Jesse Brandeburg wrote:
> Jacob Keller wrote:
> 
>> A lot of these look like they should probably just be converted to use
>> kdoc format instead of removing the '/**'
> 
> I understand why you're saying that, and I spent a considerable amount
> of time fixing drivers that appeared to *try* to use kdoc but messed
> up. However, if they don't have anything that looks like doxygen or
> kdoc, then I just removed the "/**" to a /* and stopped kdoc processing.
> 
> The temac driver is a good example of not actually trying to kdoc at
> all.
> 
> However I will look over the patches and see if I see @brief anywhere
> that is left and try to fix those up. I've done so much now I might as
> well finish it, but the @brief doxygen style notes had never been
> processed into kdoc before, so changing the /** into /* doesn't
> actually remove any value, just makes the build clean.
> 

Sure, I think that's important. I just wanted to point out that we are
probably breaking whoever maintained/wrote that code and used doxygen.
(Since as far as I understand, doxygen also relies on the /** to find
comments).

Basically: I think we should be clear that is what we are doing:

  "We support kdoc, not doxygen, so if you want this, use kdoc format"

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
