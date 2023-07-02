Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8897744C6D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Jul 2023 08:27:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E882F60BC2;
	Sun,  2 Jul 2023 06:27:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E882F60BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688279272;
	bh=QuvL4rcOsaBE+X3p72Iehu7K7Z5kJfBcY0k6Z3Evi4A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CawyQes+nn9Bjoi5mUUkbQeN7TJEZniWicRg91fuu+aJfbn3MLhNX96ewkpRTfXat
	 XDY0jLVLfGL4i3pftGl9CHTrRkxSF0bLK6M01yfDTWdonbnZ/3GtOZD5Ue6pTrb88N
	 DuVFDgosPTZKj0tnucOIu4kBtMnYLFwkL1OcpH3Qdm4M9Rx5nUexoXFeliJKcd+DYZ
	 3CwkcktLdZefzzHq1yjYC/mCHQd/848s1W62i9nWV+GMmoca7YRZtn7PF48K507SBN
	 Ep7WkyCQ55WPXIBE0jDUvC+7zuR641v1EI4lt5hP3yXfoqDibGh2BODdeqcslN2MUL
	 54GqW4Vgf3Nmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqutoK2_Bf3b; Sun,  2 Jul 2023 06:27:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBB6260AC9;
	Sun,  2 Jul 2023 06:27:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBB6260AC9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD76E1BF5F6
 for <intel-wired-lan@osuosl.org>; Sun,  2 Jul 2023 06:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DA0681F41
 for <intel-wired-lan@osuosl.org>; Sun,  2 Jul 2023 06:27:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DA0681F41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AElkziGEe1YM for <intel-wired-lan@osuosl.org>;
 Sun,  2 Jul 2023 06:27:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A703981F13
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A703981F13
 for <intel-wired-lan@osuosl.org>; Sun,  2 Jul 2023 06:27:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10758"; a="360149245"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="360149245"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2023 23:27:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10758"; a="831419708"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="831419708"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.249.95.54])
 ([10.249.95.54])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2023 23:27:41 -0700
Message-ID: <8376b338-647b-4e1f-46b7-e9bc3868f08e@linux.intel.com>
Date: Sun, 2 Jul 2023 09:27:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: aravindhan.gunasekaran@intel.com, intel-wired-lan@osuosl.org
References: <20230615063043.48250-1-aravindhan.gunasekaran@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230615063043.48250-1-aravindhan.gunasekaran@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688279264; x=1719815264;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xw806XDgn/65GOepfKZaz6n0MKcLalGe/r7XYJvXahU=;
 b=CBV1rHu+LGC/fFh7vRRfElDWyWuRAf6sz915pvtDd8Croxp/oCygVMH+
 qQHM1s1yqqQvjZ9Sv0t9gfDhT5XUetvOnOTL5BEQQvMSOTkKqY+CqPgRu
 F5F8QJxsrlg2v2CnqxQr/N94ekJEZjkiZa2Hn91m79VmjJU2GX3odL4hZ
 FM2/3L78LcPur+1P65bRvZTd2Jwo7/ICSlKJCHq/El7OjPIKhukGhBv7p
 YiUvi2/RbGd1ciFf609YIGywnP711MLanMuK+WC4CrtZX5rRYcz+r7BSn
 1GDjVl8hVo4X5oqSGTxRcbCGNVrZ/yBsMytUBbKVYNryTtpf6Or6nfSAC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CBV1rHu+
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Handle PPS start time
 programming for past time values
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

On 6/15/2023 09:30, aravindhan.gunasekaran@intel.com wrote:
> From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> 
> I225/6 hardware can be programmed to start PPS output once
> the time in Target Time registers is reached. The time
> programmed in these registers should always be into future.
> Only then PPS output is triggered when SYSTIM register
> reaches the programmed value. There are two modes in i225/6
> hardware to program PPS, pulse and clock mode.
> 
> There were issues reported where PPS is not generated when
> start time is in past.
> 
> Example 1, "echo 0 0 0 2 0 > /sys/class/ptp/ptp0/period"
> 
> In the current implementation, a value of '0' is programmed
> into Target time registers and PPS output is in pulse mode.
> Eventually an interrupt which is triggered upon SYSTIM
> register reaching Target time is not fired. Thus no PPS
> output is generated.
> 
> Example 2, "echo 0 0 0 1 0 > /sys/class/ptp/ptp0/period"
> 
> Above case, a value of '0' is programmed into Target time
> registers and PPS output is in clock mode. Here, HW tries to
> catch-up the current time by incrementing Target Time
> register. This catch-up time seem to vary according to
> programmed PPS period time as per the HW design. In my
> experiments, the delay ranged between few tens of seconds to
> few minutes. The PPS output is only generated after the
> Target time register reaches current time.
> 
> In my experiments, I also observed PPS stopped working with
> below test and could not recover until module is removed and
> loaded again.
> 
> 1) echo 0 <future time> 0 1 0 > /sys/class/ptp/ptp1/period
> 2) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
> 3) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
> 
> After this PPS did not work even if i re-program with proper
> values. I could only get this back working by reloading the
> driver.
> 
> This patch takes care of calculating and programming
> appropriate future time value into Target Time registers.
> 
> Fixes: 5e91c72e560c ("igc: Fix PPS delta between two synchronized end-points")
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> ---
> v2: Added Fixes tag
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 25 +++++++++++++++++++++---
>   1 file changed, 22 insertions(+), 3 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
