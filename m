Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A26E381F646
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Dec 2023 10:26:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1413C60DC6;
	Thu, 28 Dec 2023 09:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1413C60DC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703755566;
	bh=yt16tXDOIiqglrHWPHNmrsT716v6jtZETUti9q6/ASE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOx3XTjg3oVGbZtDrw0Y82KHuUD3zu/lINAcLgueP8NPPpdx3KJJ6p5nVXYoaw9jw
	 vw5t0t/O9UVCUFj4EQCqPVnZATNRHQm1lyV+u5AkS4SMoR5mb75Jo4xF6MeJCwoWT7
	 bNAZXwTy8pKFd6GzkxquHHT1L6aT9VPNw70vY5ePFxGPfhmlR4faKzUnpLZQOb3XWv
	 1un4xDIS/l8bIeOcSm6lXVyC4CYvduvBbhK8BLfknqQzkzJGnUoMHBDrh7ag0cce3y
	 TO/kISQZH/pgzsuUTXs806T4Qp2qIyEs117pzCD/p+GCg+LfuF+sCA/zQ4CdpcySjS
	 n6NIrOSRy4Fgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWjmNrPV1LNV; Thu, 28 Dec 2023 09:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16FDE60BBE;
	Thu, 28 Dec 2023 09:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16FDE60BBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 595301BF59E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 09:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CBEE8302F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 09:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CBEE8302F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cKjA7UmDZ_uB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Dec 2023 09:25:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4704882E5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 09:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4704882E5F
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="9924253"
X-IronPort-AV: E=Sophos;i="6.04,311,1695711600"; 
   d="scan'208";a="9924253"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2023 01:24:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="771675446"
X-IronPort-AV: E=Sophos;i="6.04,311,1695711600"; d="scan'208";a="771675446"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.129.232])
 ([10.245.129.232])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2023 01:24:23 -0800
Message-ID: <02414651-df89-48cf-ac13-25f581f3e34f@linux.intel.com>
Date: Thu, 28 Dec 2023 11:24:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: rodrigo.cadore@l-acoustics.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703755558; x=1735291558;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0BnRPGjZ08Szibrn+c+3PaPkhu55oPawbz2u9zwgUAU=;
 b=VaurlfVoawnZEpjxJldpo2zoG+H28+PrIy+ik2R5EF2LZ21THvQkyp97
 r0D1XY6NwsqwpDLhcl9XjiaKeOCSZlrT3/18rqbvDVH6Ech2drl32q4r7
 3h6yUWds4/HJx77U1Y9K1JTcpL/niN+z0eq/Ur6V1kaOID2iZJY5ND7I/
 t713rm771eeaS7lrrgLkvOyw53Pe+NTjVJeIzbTj0Ur3WAkdA+3REYYTL
 46/fYlfFboO8fif1cS0L9IbgHNpfuDJba/MAqXJs3E0QN5BG78sEmacpV
 2FPwYSxB24ZUMmbYYh7F7ESLgOvZ/HynqZs+b1x6ZR4JR77NaBs5245wB
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VaurlfVo
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix hicredit calculation
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/8/2023 16:58, Rodrigo Cataldo via B4 Relay wrote:
> From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> 
> According to the Intel Software Manual for I225, Section 7.5.2.7,
> hicredit should be multiplied by the constant link-rate value, 0x7736.
> 
> Currently, the old constant link-rate value, 0x7735, from the boards
> supported on igb are being used, most likely due to a copy'n'paste, as
> the rest of the logic is the same for both drivers.
> 
> Update hicredit accordingly.
> 
> Fixes: 1ab011b0bf07 ("igc: Add support for CBS offloading")
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> ---
> This is a simple fix for the credit calculation on igc devices
> (i225/i226) to match the Intel software manual.
> 
> This is my first contribution to the Linux Kernel. Apologies for any
> mistakes and let me know if I improve anything.
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
