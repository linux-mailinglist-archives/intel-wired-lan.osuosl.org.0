Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3D98D74BD
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Jun 2024 12:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3843284572;
	Sun,  2 Jun 2024 10:17:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9irLwBO14Bq; Sun,  2 Jun 2024 10:17:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7053E84569
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717323470;
	bh=3c4eiRWztVyPWJV1hmOt/cKajfk9ZP5IzYlopC3GMxY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qmc0Ayrn5rh3ew+bCsXS9VKQbzTrYOGFO81W4d1uzL03h/Cft8axtcJ8NNfhcWWX8
	 V0PTW9Bf38O0AEl5yyPYAh/yYfG3XErV6ClJSL4Mmdarge6EtnZT8q8EvnBkmyk5mL
	 bT8DlLOPskRM6hdnstponc3Brw8agth0tCk6r4dhgMCjJPe8pQritlXngtxWAsgswq
	 UbNOORxYhcIQvCYSkw2neF6YVwA7y5audZwzDpKP3t7IZEoNs0nEWF4exg3ePw/u6i
	 e0tWjNOuxKQsuFoIkATKyqUPuSMZJBcwGSY9YmSGEs3a3S8JhowDX2dipx9RjsLJud
	 Xt2rzrY75egBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7053E84569;
	Sun,  2 Jun 2024 10:17:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7BDA1BF573
 for <intel-wired-lan@osuosl.org>; Sun,  2 Jun 2024 10:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C368C60A37
 for <intel-wired-lan@osuosl.org>; Sun,  2 Jun 2024 10:17:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CCpM5RfcWajT for <intel-wired-lan@osuosl.org>;
 Sun,  2 Jun 2024 10:17:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9075F608D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9075F608D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9075F608D2
 for <intel-wired-lan@osuosl.org>; Sun,  2 Jun 2024 10:17:45 +0000 (UTC)
X-CSE-ConnectionGUID: d+vrptDCRL6aCALSRcboGQ==
X-CSE-MsgGUID: eYIiNKCnTdumWw7MnLElNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11090"; a="17619463"
X-IronPort-AV: E=Sophos;i="6.08,209,1712646000"; d="scan'208";a="17619463"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2024 03:17:45 -0700
X-CSE-ConnectionGUID: ZDDvA3bhTmqvB0+Y0UBjmg==
X-CSE-MsgGUID: 86YYTJDJT2eLXtJHYH3NjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,209,1712646000"; d="scan'208";a="36693859"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.145.112])
 ([10.245.145.112])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2024 03:17:44 -0700
Message-ID: <bd7cd5ac-3f7d-4710-8248-14a33943d3b2@linux.intel.com>
Date: Sun, 2 Jun 2024 13:17:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20240522091911.2862403-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240522091911.2862403-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717323466; x=1748859466;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2MYuUxGMfFOE2Y7uhlU7s2W6cymstLxuJWmba9Le6AM=;
 b=dJb73P2hwRfgZCb4Hqk0MV3oNhDGEIGywom7CDZDMJQk7/KYjFVFewAI
 oDFJ78LmchnTh4RDfrhnbQAiPimQjeQXC4G57wCorGISWPqUaD1XV25gv
 kEe+5Xz+XcE9e2aoLyQRo6LVyniOY/iG8DNLVc+kKJ3bEFF/qUTDYq1sk
 KszFFjxazEPpnjPHBnMo40DZhaL/kga5w+ULnB/e+u1cO/UisAUD7EzyE
 8BliT929ToLw2cI1jIhF5I4lrvtRzWClhAWmZIWWYkxNZu2jwRu8A03rU
 0nU17qph+EsBx2JT0S5P35CUj85nnIClMvCRebX4Ragi9CMsnueIbqG87
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dJb73P2h
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: add support for
 ethtool.set_phys_id
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
Cc: kurt@linutronix.de, Menachem Fogel <menachem.fogel@intel.com>,
 lukas@wunner.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/22/2024 12:19, Vitaly Lifshits wrote:
> Add support for ethtool.set_phys_id callback to initiate LED blinking
> and stopping them by the ethtool interface.
> This is done by storing the initial LEDCTL register value and restoring
> it when LED blinking is terminated.
> 
> In addition, moved IGC_LEDCTL related defines from igc_leds.c to
> igc_defines.h where they can be included by all of the igc module
> files.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Menachem Fogel <menachem.fogel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 22 ++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 32 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_hw.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_leds.c    | 21 +------------
>   drivers/net/ethernet/intel/igc/igc_main.c    |  2 ++
>   5 files changed, 59 insertions(+), 20 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
