Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313BA739B60
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 11:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6016D4188D;
	Thu, 22 Jun 2023 09:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6016D4188D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687424408;
	bh=r+6FDnMj67pi3yXq2Z3cntEicT42HxO35mpNhjpAFfw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5F4i0ESRbZUULard8/ZKSJpavid79ZpHRMzCOXWayEphiG9zEYkJShRZkOvvJbVOx
	 VfeZdUyi2V6GExn3jo4KHhn8JGIfSkR716ZD3i2NyzNZCW/PzIIi7TkayihJ+Yqz5O
	 Xsk9f9ILWzZi8lY3dF5dvi7TBaROQdgObHfIKquI41VAz7foWlGmzoOJr0THfVtuH1
	 Etst+sJz/3NRo1+FiVhNHVyp6FWn4xu2hSQrhdpmcE+E9JPVIwbw57PeILNa4Q4Yyo
	 TnLC05/mh00YsojiNaKeeaYcdW4K2wH4iqLsBIo4PptkEa+F8GHoHjatd7/ieBVJ+A
	 IqaegYcjtX2Pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xKAwdfKEwQIE; Thu, 22 Jun 2023 09:00:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5291B4036F;
	Thu, 22 Jun 2023 09:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5291B4036F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 707061BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 09:00:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5150B4036F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 09:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5150B4036F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fsT23EdrWj9y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 09:00:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74D8840236
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74D8840236
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 09:00:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="446805758"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="446805758"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 01:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="804705746"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="804705746"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.68])
 ([10.13.12.68])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 01:59:53 -0700
Message-ID: <7a4885d3-d977-436c-f298-e29ef199d49e@linux.intel.com>
Date: Thu, 22 Jun 2023 11:59:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
 <20230607213232.875138-5-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230607213232.875138-5-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687424401; x=1718960401;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=INOD10kTDg7Hi96vCueM4g3hWeU/rFpBjp0vMjGnNj0=;
 b=mUV03pTohK4IAH5Zigq3hiC7nfcL2OY2Gf9jNywB23CcUXDTxrTmt3Kn
 C6fBTfsQr99vM2+kDBgYOavcCZ0JI+JrAAxwJiDw68UD35GYg4aKha90c
 0YlPNPKx/ie2aqhTzYacxRmXinjxWIYEJOIapdCcWA+9NKLxeV+9yInSm
 FnTEWzz/NAisL3Ej43cFZoFQMBz7BmUmDqgi9VJYNetubR/dptLW9ZLEd
 hiT4JVR0qKzH430KeIQu3th3k8v6F4nZrCzIz/zvzBBLev/WvErTZ/SKc
 nYYECE0ASqNBqJSPl/jb5yhgM0u0c8xpFLuPwHKJSMnMMZbuCi3DViNRu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mUV03pTo
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 4/4] igc: Work around HW
 bug causing missing timestamps
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/8/2023 00:32, Vinicius Costa Gomes wrote:
> There's an hardware issue that can cause missing timestamps. The bug
> is that the interrupt is only cleared if the IGC_TXSTMPH_0 register is
> read.
> 
> The bug can cause a race condition if a timestamp is captured at the
> wrong time, and we will miss that timestamp. To reduce the time window
> that the problem is able to happen, in case no timestamp was ready, we
> read the "previous" value of the timestamp registers, and we compare
> with the "current" one, if it didn't change we can be reasonably sure
> that no timestamp was captured. If they are different, we use the new
> value as the captured timestamp.
> 
> The HW bug is not easy to reproduce, got to reproduce it when smashing
> the NIC with timestamping requests from multiple applications (e.g.
> multiple ntpperf instances + ptp4l), after 10s of minutes.
> 
> This workaround has more impact when multiple timestamp registers are
> used, and the IGC_TXSTMPH_0 register always need to be read, so the
> interrupt is cleared.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 48 ++++++++++++++++++------
>   1 file changed, 37 insertions(+), 11 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
