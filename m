Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D18457FE78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 13:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C66361B86;
	Mon, 25 Jul 2022 11:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C66361B86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658749034;
	bh=iJFW6ZmQY8zRByATzhZLCBxj1JGMuIHEm3dOA2vL+Gs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0aaEIz76hkdN0+VI0/jw/LbjPsc6PkwfV9ypVC4eEh2IjDBGE1bS2dlhT9TOQ311u
	 Jr38YZD0FJSGSWrch9GnByifi/V+L0mqyMM7YsMmwb77MhqJkPboV9hgCeo161Texj
	 UXmBp/5tGN/dOlrTQKbq7a+E0i286yplYFd9JyiLhOeU56bFbpDyrReGs5tDp5LTT9
	 F16409y59JvVO5LF2amq/oOKmriIiKS+WTzv6YLYEAE5rg0qi0KGc9upTiGCIRIR4V
	 cfWM1pGfgZOEvLi0Rn2Pqp6L0gvIOVy/L2XkZvOcqqJujfblIpr0rMhbE+83/Yvqga
	 t9/Ow4CpQnN2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id at-fbAMpOcmu; Mon, 25 Jul 2022 11:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D18D61AEF;
	Mon, 25 Jul 2022 11:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D18D61AEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D97E51BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 11:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE21A41674
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 11:37:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE21A41674
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wAXx4qR5-VLX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 11:37:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7A3741673
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7A3741673
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 11:37:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="288435375"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="288435375"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 04:37:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="658155326"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.74])
 ([10.13.12.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 04:37:03 -0700
Message-ID: <b6394bc0-1257-738f-f995-41c588d0aa2f@linux.intel.com>
Date: Mon, 25 Jul 2022 14:37:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-5-jacob.e.keller@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220721213001.2483596-5-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658749026; x=1690285026;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=A29twrqnzdl83biv6+QQeYaNYrLffnNgTyODiOFCIFM=;
 b=HvH4st6Sr4T5DI6KRnb4bvy+YObLUT38RzH2a+UJM34GFUqWEVlAtDHc
 TbaADokfhdS3uBDzwssjVBOnvl0hYh2ly330WaIBpJpx37iFSbLAnmJG/
 hK9D1hiDkrNtBnfFI6BX9GbF6cH+6z3KcaeVPt+/DVZ+PpRSBuFBSha2d
 LuJ6Bm/k0Gz0PYx4iSn/8+UJWw4lFKoysVHdGfn5t0a4/dbtyUSIJI8Ei
 jDWnDmU9DqUnaZlnORZSRW9jdSfAb27B+r0dsxV8E8TVRhbpmV4iRhRX1
 RVM1Xs5DcfPtuD3kufuVxPJ5/GgTkmURXEfLIei/X3vv5JdhUj82tCfNG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HvH4st6S
Subject: Re: [Intel-wired-lan] [net-next PATCH 3/7] e1000e: convert .adjfreq
 to .adjfine
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

On 7/22/2022 00:29, Jacob Keller wrote:
> The PTP implementation for the e1000e driver uses the older .adjfreq
> method. This method takes an adjustment in parts per billion. The newer
> .adjfine implementation uses scaled_ppm. The use of scaled_ppm allows for
> finer grained adjustments and is preferred over using the older
> implementation.
> 
> Make use of mul_u64_u64_div_u64 in order to handle possible overflow of the
> multiplication used to calculate the desired adjustment to the hardware
> increment value.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c |  4 ++--
>   drivers/net/ethernet/intel/e1000e/ptp.c    | 15 ++++++++-------
>   3 files changed, 11 insertions(+), 10 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
