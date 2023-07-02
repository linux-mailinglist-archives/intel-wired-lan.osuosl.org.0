Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE4D744DC2
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Jul 2023 15:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A33A981E15;
	Sun,  2 Jul 2023 13:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A33A981E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688305380;
	bh=bzo+UQ6HfSJ7z1uPsvbCqI3CxYESoeX17mhKXmrkFks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UB4zMSPbFKM6jIKjRVrMDaRelEyDSOnj5CiKiH4LcSk95GoqQt3KD5C1IVEcc17XX
	 qSYrUreTl4PzV6kpaoIT2cHcKo/0lEEBPITR97oEIesKUM2OPCcnzPLjpWMOLldtsW
	 re5E3xYygoGBRkyzxLBApkOEtforWhbJ6cAitbrc6+SxUfm06GoDWwqYUbZR8G7lAB
	 HkvMuzSn4HWADme0Hm+hSinBSVN0J77cTh8NRQT8TvMwZ1+wFp6C3UJRibJGfcS8T4
	 rLgXB22NUhU+ReWjOgdMsz6eknDj5Q5nRLKoygJ6BgqH9f6Jyq64zF59IAiZqGskzk
	 ud7LdwDR3NSuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HzW0KcK5WSya; Sun,  2 Jul 2023 13:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95F12819D6;
	Sun,  2 Jul 2023 13:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95F12819D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16DB41BF321
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 13:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2A974012B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 13:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2A974012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eu0qOczU1wau for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Jul 2023 13:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B43AA40122
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B43AA40122
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Jul 2023 13:42:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="393440819"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="393440819"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2023 06:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="964889090"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="964889090"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.249.95.54])
 ([10.249.95.54])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2023 06:42:49 -0700
Message-ID: <ec3f0f2d-c8d4-3df7-7ff4-5c841a050be3@linux.intel.com>
Date: Sun, 2 Jul 2023 16:42:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Florian Kauer <florian.kauer@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
 <20230619100858.116286-2-florian.kauer@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230619100858.116286-2-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688305373; x=1719841373;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UK/nzE9dIxgjFsCrj7Qj4taBTpYmWjk/fOAoL8aT+a8=;
 b=HbG6wspr+sm+MlF1m56EfzLrkqojL3/iuEvoBaWW57OIX+Slgg0U5WLt
 oYLhf0XSvmLh2DzlfYRp2hhtltLT1FNmQNnDvKuFNL/hq21C6lvUwqJ8n
 miEehIXgj/SLO044vykPyxLXfnMW5O365MhwKZqZVtv2gCYtJGya1w1tJ
 Qxdo65qSgZajmYfLRtxQGWo82tWOb7ADhOdaawRG2Tjqj9noA2RIk3WT5
 eTUvKitrPcxy2HNDTT+/tpWmcs2mufc2fCJVrwwuAKWeucHzRzfqYss+U
 kHX6GpVgdQfHPX4Y0CzYsHaDKe4lbFtxwRlXzVO2JhjvGSynPgiWZdeOq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HbG6wspr
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/6] igc: Rename qbv_enable to
 taprio_offload_enable
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/19/2023 13:08, Florian Kauer wrote:
> In the current implementation the flags adapter->qbv_enable
> and IGC_FLAG_TSN_QBV_ENABLED have a similar name, but do not
> have the same meaning. The first one is used only to indicate
> taprio offload (i.e. when igc_save_qbv_schedule was called),
> while the second one corresponds to the Qbv mode of the hardware.
> However, the second one is also used to support the TX launchtime
> feature, i.e. ETF qdisc offload. This leads to situations where
> adapter->qbv_enable is false, but the flag IGC_FLAG_TSN_QBV_ENABLED
> is set. This is prone to confusion.
> 
> The rename should reduce this confusion. Since it is a pure
> rename, it has no impact on functionality.
> 
> Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 2 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
