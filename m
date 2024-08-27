Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD11961805
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 21:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00C7D4066D;
	Tue, 27 Aug 2024 19:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UskMCHouK3SK; Tue, 27 Aug 2024 19:29:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB8214066F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724786958;
	bh=tyZtb9KmqI2x6rzXgR5hvLMGTDKN6WerHsoS8ZXy5FM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MWF6sU0UkGFZ58C0fkSaSVjBvHBMTYQoQjLc+Gc4nXMB5HUFw8j1h5nkWkX3EuluA
	 57RHoWuyLD96wa3CCLXuRYoBLvLXwHhzR/ScTf9FuZsDPqwUXsCLHFgMcSx/ruOSD+
	 sFhyLXQO6CjBJ6amvEpGl8em4rnaidwu0fg+nymsnqAbgzmutvWza+v3gRcSqPudc3
	 qrCtWBQUvTflfI2BXuWsXF74rRXsiQBLvFKSwAONmyD9qAiUXiUKJKvVMwofU/ZsqO
	 UTk3wGkWgQzWwx6wEDpFP3pTe1zvDay+dvfMZ9Y817MI7MU70WoYxO7Udx32YBjg5k
	 AtmVlk+sdE/uQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB8214066F;
	Tue, 27 Aug 2024 19:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A69011BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 19:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90E4C608CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 19:29:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V8t2xCCivJma for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 19:29:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AB20608CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AB20608CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AB20608CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 19:29:14 +0000 (UTC)
X-CSE-ConnectionGUID: TmCKBQHOQcqUdkfC2AI0IA==
X-CSE-MsgGUID: wF5UGroySCKjcrb6oLrShg==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="33861378"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="33861378"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 12:29:14 -0700
X-CSE-ConnectionGUID: /9tq97SySTyv2uBoJnvGgw==
X-CSE-MsgGUID: rA87ujF4TZuIkwOehkX/Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63283879"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 27 Aug 2024 12:29:13 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sj1sL-000K0K-1w;
 Tue, 27 Aug 2024 19:29:09 +0000
Date: Wed, 28 Aug 2024 03:28:12 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202408280349.0Wn5wfHn-lkp@intel.com>
References: <20240827130814.732181-11-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240827130814.732181-11-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724786956; x=1756322956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XmCKE1yAFFK3hqkryW2KkaSx2PKqUdv57bUBardyjb8=;
 b=SN8/LXybTf2wCrWRs85EN6qgHgZbn+4JGyc4yRBKhLTjJjRYXRl6O97G
 hLnD+AU6XrwjvUbwjcPxhIcym+W+CI4Eaa7d5kzdxqUhxt9ymm47m24bz
 vd5aMltWWbL0zHEpsMwgooMQo47UZ/4CnBg1a7ruNUvYSopIECD0nqQda
 uusFp3Q6VujKjZQIQDAZG4hlGSzP78p4Cyx6EecQisqN0N09JyC72642+
 0e2H5I6gWEgRXA3qe2qUjwCzp9zz1Kg3EAb3/8c47LDaTw5jbGKdRCisg
 mvW4sYsGlT49QEil8gHUZE17mIGbM1juCesVPhxpsoR4JpXO+Af7na2bB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SN8/LXyb
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 2/7] ice: Remove
 unncecessary ice_is_e8xx() functions
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build errors:

[auto build test ERROR on 025f455f893c9f39ec392d7237d1de55d2d00101]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Don-t-check-device-type-when-checking-GNSS-presence/20240827-211218
base:   025f455f893c9f39ec392d7237d1de55d2d00101
patch link:    https://lore.kernel.org/r/20240827130814.732181-11-karol.kolacinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH v8 iwl-next 2/7] ice: Remove unncecessary ice_is_e8xx() functions
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20240828/202408280349.0Wn5wfHn-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240828/202408280349.0Wn5wfHn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408280349.0Wn5wfHn-lkp@intel.com/

All errors (new ones prefixed by >>):

   s390-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_service_task':
>> ice_main.c:(.text+0x267ca): undefined reference to `ice_is_generic_mac'
   s390-linux-ld: drivers/net/ethernet/intel/ice/ice_controlq.o: in function `ice_is_sbq_supported':
>> ice_controlq.c:(.text+0x2fb6): undefined reference to `ice_is_generic_mac'
   s390-linux-ld: drivers/net/ethernet/intel/ice/ice_ptp.o: in function `ice_ptp_init':
>> ice_ptp.c:(.text+0xad28): undefined reference to `ice_is_e825c'
>> s390-linux-ld: ice_ptp.c:(.text+0xadde): undefined reference to `ice_is_e825c'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
