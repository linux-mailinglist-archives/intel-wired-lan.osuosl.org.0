Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9C565A9C3
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 12:29:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FD6440993;
	Sun,  1 Jan 2023 11:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FD6440993
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672572594;
	bh=VZcSLhPZUN1Po6Tx35HgU12qE7GsefymcoIS0XVC53A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dh22pgE4RxZLCkTCc8MN8rycsUwSYzgSE7soyda3dMpunHLqWA3H25/VEOO5TgYv6
	 nUlnPsnoiEBaC5ZHMaUmO4pbTlc92T54H1S0N1Jo1iIl7ygqDjnQ6NNUsDWi4arduT
	 o4cfQHslnpmxLB9liJLkH/5YBmRrqY7qzSHOaS3755fLv90ijbfE2Up58NyTm4BAo7
	 +idahtBT8j48b4JVnz/MJTRnrdodfU3lGLpTMdroIGRx2JwT4fxUGR+zv1c43dENzO
	 SuCy9JXHeQ0+W3NUDf5X5hbtoaC8cTSCJva1q9qcEkBhrK2Z6QONcmu4N2NPul6+df
	 45HqdHqfdn9NQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 142qc5tZT3Ao; Sun,  1 Jan 2023 11:29:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66902408CC;
	Sun,  1 Jan 2023 11:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66902408CC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 004D11BF392
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB418404D5
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB418404D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2vsMa_C4dLAb for <intel-wired-lan@osuosl.org>;
 Sun,  1 Jan 2023 11:29:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10975400E7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10975400E7
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:29:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="321444651"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="321444651"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:29:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="684863803"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="684863803"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.251])
 ([10.13.11.251])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:29:44 -0800
Message-ID: <bd5acfc0-35b8-84d7-003f-231b87bda7e5@linux.intel.com>
Date: Sun, 1 Jan 2023 13:29:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org, vinicius.gomes@intel.com
References: <20221214081038.1720-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221214081038.1720-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672572586; x=1704108586;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oUbmi5mFMpGaYjX3acw45ijGaN9eXMGq3dnmo8nmedY=;
 b=DWTLBHB8BnprtXFDYyh13EyaqvMVTek0JDCsnNyFmy2ogGh4qXfemYmP
 wFdtSlX9+nu/J6VBi3JiiuJnyRcbN4mUBhdq9s9x0y+UoGcOKwX+sB/Vs
 Dy304WWk7Iqm6n5F0UntPsf6fQJXv0qnbnijbn+DUoQ78Re+QlJ5Jffun
 zWNCct9a/zZpz2ZsDcMaak0OJfCEffq2zWX+rRAQgMOzfgb+Nm6r4oRoO
 OaO/z0A1oLpera8QNt2mHQjU+1+NhSc9sFHkYIMYz/K30iowjF0P1AgDd
 ZtJoUpXf3F8I/MkbLOiAKt5kLo7RbQUjVLfombPWfcK3pqAPa2UsVXlSu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DWTLBHB8
Subject: Re: [Intel-wired-lan] [PATCH net v1] igc: Fix PPS delta between two
 synchronized end-points
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
Cc: christopher.s.hall@intel.com, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2022 10:10, Muhammad Husaini Zulkifli wrote:
> From: Christopher S Hall <christopher.s.hall@intel.com>
> 
> This patch fix the pulse per second output delta between
> two synchronized end-points.
> 
> Based on Intel Discrete I225 Software User Manual Section
> 4.2.15 TimeSync Auxiliary Control Register, ST0[Bit 4] and
> ST1[Bit 7] must be set to ensure that clock output will be
> toggles based on frequency value defined. This is to ensure
> that output of the PPS is aligned with the clock.
> 
> How to test:
> 
> 1) Running time synchronization on both end points.
> Ex: ptp4l --step_threshold=1 -m -f gPTP.cfg -i <interface name>
> 
> 2) Configure PPS output using below command for both end-points
> Ex: SDP0 on I225 REV4 SKU variant
> 
> ./testptp -d /dev/ptp0 -L 0,2
> ./testptp -d /dev/ptp0 -p 1000000000
> 
> 3) Measure the output using analyzer for both end-points
> 
> Fixes: 87938851b6ef ("igc: enable auxiliary PHC functions for the i225")
> Signed-off-by: Christopher S Hall <christopher.s.hall@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  2 ++
>   drivers/net/ethernet/intel/igc/igc_ptp.c     | 10 ++++++----
>   2 files changed, 8 insertions(+), 4 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
