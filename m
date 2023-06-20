Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA367363D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 08:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F473410A8;
	Tue, 20 Jun 2023 06:54:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F473410A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687244065;
	bh=sqy/5luyVaPmpP75IwCrmnmJeqif8r9Z9zF4tWbRPNU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yslTxKrZYWl0SdD/HeoevxB3hFXtFWtejSsS8414gwYcH4RqQRELDxN4K3QB44U99
	 0cahRwg7y8+SRLWBEpcJV3AUr0JbgDE8OMA5MXFRANgSfgRcroo16z9EYUI8Za4qiJ
	 fxZHa9VCSkAnzpZ+g+VjscbSQjVacLjGivqtI6tpsGk01rHt1UnZnC2F6v6sGs6Bhy
	 2yxDXQAhSVfT9fvo9FTlCvtqytfzgmA65AN6vjZMxVw5lH0vRDkwdzXYSF1/a+NnMw
	 vo8+jgeMWm4UIAbbpIOFEB2TC5l3Q77O/CATcKPWsoyv34gPCvq0Oqcwms9/eTEadG
	 /v1ScFWy3GPUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D5CAAOvYMlKm; Tue, 20 Jun 2023 06:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DF8640AB9;
	Tue, 20 Jun 2023 06:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DF8640AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E0C31BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 06:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E55E240A0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 06:54:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E55E240A0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sssbO9HRi72U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 06:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F8DD404F6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F8DD404F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 06:54:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="425739296"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="425739296"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 23:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="838102765"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="838102765"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.1.170])
 ([10.13.1.170])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 23:54:15 -0700
Message-ID: <8ef44249-d4fc-f295-7250-29432719bd96@linux.intel.com>
Date: Tue, 20 Jun 2023 09:54:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
 <20230607213232.875138-3-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230607213232.875138-3-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687244058; x=1718780058;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PYJfz0uV4GSKB8llfjflEbcV1FiicXSSXnbM/ewaK/s=;
 b=UM5vWsDWP6eGF7lasKlR9qkhsbxJatWxCGmlpkq0QePk0iYJpKUOE/cr
 KcVX+L3Q8gUN2lYoeP3IOobdfG9KuOIKTmuCgxlInzjw9nZdlPAZGHbEJ
 bMg4WzQ09h7VLRKtsePgp4sD/A6HZ/oB2m1lZ0Y4V2NhGeOzVqeRJT+Fy
 qq4y/PDJyemgR+aAJUkcZ8phDzRI/fvdIY9yvNCWHWqtclwsG3oVlNxlU
 ITMinswdMH7lQ0deVTVw82+7mhjfv4bCRbF8nLFGnx4Ryo1EMzpvMkubQ
 wpTVB3NJ0Gb5ZsXBJz54OkLHpNFlYHgPiqiMWx+2gJJF8Jve1RxjITylT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UM5vWsDW
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 2/4] igc: Check if hardware
 TX timestamping is enabled earlier
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
> Before requesting a packet transmission to be hardware timestamped,
> check if the user has TX timestamping enabled. Fixes an issue that if
> a packet was internally forwarded to the NIC, and it had the
> SKBTX_HW_TSTAMP flag set, the driver would mark that timestamp as
> skipped.
> 
> In reality, that timestamp was "not for us", as TX timestamp could
> never be enabled in the NIC.
> 
> Checking if the TX timestamping is enabled earlier has a secondary
> effect that when TX timestamping is disabled, there's no need to check
> for timestamp timeouts.
> 
> We should only take care to free any pending timestamp when TX
> timestamping is disabled, as that skb would never be released
> otherwise.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Suggested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c |  5 +--
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 42 +++++++++++++++++++++--
>   3 files changed, 43 insertions(+), 5 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
