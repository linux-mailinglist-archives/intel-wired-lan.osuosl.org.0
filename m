Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90D15B5C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 01:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4374286AFF;
	Thu, 13 Feb 2020 00:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bnjS3JmTL79Q; Thu, 13 Feb 2020 00:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 254AF86B2D;
	Thu, 13 Feb 2020 00:23:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA3C81BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 00:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5DCF87D94
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 00:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viSAvcr4jo4X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 00:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C1C787D89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 00:23:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 16:23:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="434239488"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 12 Feb 2020 16:23:06 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <158136683984.75536.11605147606262842969@1.0.0.127.in-addr.arpa>
References: <20200207182443.1501016-1-vinicius.gomes@intel.com>
 <20200207182443.1501016-2-vinicius.gomes@intel.com>
 <158136683984.75536.11605147606262842969@1.0.0.127.in-addr.arpa>
Date: Wed, 12 Feb 2020 16:24:42 -0800
Message-ID: <874kvvwcz9.fsf@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v2 1/2] igc: Add support
 for taprio offloading
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Andre Guedes <andre.guedes@linux.intel.com> writes:

> Hi Vinicius,
>
> Quoting Vinicius Costa Gomes (2020-02-07 10:24:42)
> ...
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> ...
>> +/* Transmit Scheduling */
>> +#define IGC_TQAVCTRL_TRANSMIT_MODE_TSN 0x00000001
>> +#define IGC_TQAVCTRL_ENHANCED_QAV      0x00000008
>> +
>> +#define IGC_TXQCTL_STRICT_CYCLE                0x00000002
>> +#define IGC_TXQCTL_STRICT_END          0x00000004
>> +#define IGC_TXQCTL_PREEMPTIBLE         0x00000008
>
> It seems you missed removing IGC_TXQCTL_PREEMPTIBLE here. This macro is not
> used anywhere in the code.

Will fix.

>
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
>> @@ -0,0 +1,9 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (c)  2018 Intel Corporation */
>
> s/2018/2020 ?

Ugh, will fix.

>
> Regards,
>
> Andre

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
