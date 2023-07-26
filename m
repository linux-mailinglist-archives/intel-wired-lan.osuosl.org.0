Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF1B7635BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 13:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E4A6120F;
	Wed, 26 Jul 2023 11:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4E4A6120F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690372628;
	bh=n7hzZM7mZV1dfS1ReDoCVI6O4fHymAANXbQrG7++ePI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Axqcv3R+YcW1ZLPgvRyn3xQTAEnHDoImV2HYAsZkvc/rMaexjqg0MLG+EhlsA+j2W
	 jI7eYZcHs0JqoJISbPrewGUUcbfI5ezsUMO49lYaBIriuxDYO6wiEP14FgpwCHsDwA
	 w64PV2w3hdeVV9mhLHmFbnVo//yK5dj7a/4G7UFmIFhZHxvuJyILdruwcQffH5ZnEs
	 tTWiiLNb2lJZTdI1FMM5sgL+mq9ES07HTJGDgvPcFs4zZSToKB0z+zcUj+bM45Phz4
	 0O34ZE9WHGn4hNBHEbV/QQp5Bv5J6dEtsocqrjXXA+qkaz7b7nYKIUv9Rd1HLDljcU
	 NiLa4om2uRXWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEb0fmWO1WFz; Wed, 26 Jul 2023 11:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A844B611DE;
	Wed, 26 Jul 2023 11:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A844B611DE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B44111BF57F
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jul 2023 11:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8172282EF1
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jul 2023 11:57:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8172282EF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WuvumQqPIQG3 for <intel-wired-lan@osuosl.org>;
 Wed, 26 Jul 2023 11:57:01 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DB2182CB7
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jul 2023 11:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DB2182CB7
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="347608878"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="347608878"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 04:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="761623117"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="761623117"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.251.187.214])
 ([10.251.187.214])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 04:56:54 -0700
Message-ID: <4e18c9c5-a269-8e21-bd5d-b0143eb70163@linux.intel.com>
Date: Wed, 26 Jul 2023 14:56:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230711003453.9856-1-muhammad.husaini.zulkifli@intel.com>
 <20230711003453.9856-3-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230711003453.9856-3-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690372621; x=1721908621;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Y7WVwTV/FB744gdHowu1AB3BAhTyOIul3uIN0MxKrKE=;
 b=Kry2Vg0ytCBroXtfyzl05J+4mictgND5ylb/NoI81+wA5DGptr/mhf3Y
 Dz6j3txsZaFDxWplTBQMYr7ATX1LzHWWXfZh1RkIUaHJPf5jOANK+epbs
 RbrQHB4eDhT0prZtmjlMI9Pac1tZ7JetVDxoXHRWdmE0ghnVXA3HAfudi
 UlsrfeUVIWBdnwQ/oL9KfJ4p9Q/2VDrotSap11Oy2rZX9fcnRv1ve4wBR
 X5r7ZWgsnIYvhFJE6xNPk3MkbkwPRvZzqF9wWxfhUDYxB2bN81GgUfUVe
 UMuczEeSKIsllBpr+SNm/tXD4yUKJFhfYDP1dBeLBgPx69c/3Sh5Y+E8o
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kry2Vg0y
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] igc: Modify the
 tx-usecs coalesce setting
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
Cc: anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/11/2023 03:34, Muhammad Husaini Zulkifli wrote:
> This patch enables users to modify the tx-usecs parameter.
> The rx-usecs value will adhere to the same value as tx-usecs
> if the queue pair setting is enabled.
> 
> How to test:
> User can set the coalesce value using ethtool command.
> 
> Example command:
> Set: ethtool -C <interface>
> 
> Previous output:
> 
> root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
> netlink error: Invalid argument
> 
> New output:
> 
> root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
> rx-usecs: 10
> rx-frames: n/a
> rx-usecs-irq: n/a
> rx-frames-irq: n/a
> 
> tx-usecs: 10
> tx-frames: n/a
> tx-usecs-irq: n/a
> tx-frames-irq: n/a
> 
> Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 33 ++++++++++++++++++--
>   1 file changed, 30 insertions(+), 3 deletions(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
