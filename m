Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E674100F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 23:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BF13425B7;
	Fri, 17 Sep 2021 21:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pPQZtzyn-bGy; Fri, 17 Sep 2021 21:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B9FF42589;
	Fri, 17 Sep 2021 21:57:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC9D11BF868
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 21:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6B3242589
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 21:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6sApHoNLaNHi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Sep 2021 21:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E03C4257F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 21:57:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="245279239"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="245279239"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:57:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="510091610"
Received: from jfetherl-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.77.105])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 14:57:01 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, netdev@vger.kernel.org
In-Reply-To: <20210917210547.12578-1-rdunlap@infradead.org>
References: <20210917210547.12578-1-rdunlap@infradead.org>
Date: Fri, 17 Sep 2021 14:57:01 -0700
Message-ID: <8735q2yifm.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH -net] igc: fix build errors for PTP
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
Cc: Randy Dunlap <rdunlap@infradead.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Randy Dunlap <rdunlap@infradead.org> writes:

> When IGC=y and PTP_1588_CLOCK=m, the ptp_*() interface family is
> not available to the igc driver. Make this driver depend on
> PTP_1588_CLOCK_OPTIONAL so that it will build without errors.
>
> Various igc commits have used ptp_*() functions without checking
> that PTP_1588_CLOCK is enabled. Fix all of these here.
>
> Fixes these build errors:
>
> ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_msix_other':
> igc_main.c:(.text+0x6494): undefined reference to `ptp_clock_event'
> ld: igc_main.c:(.text+0x64ef): undefined reference to `ptp_clock_event'
> ld: igc_main.c:(.text+0x6559): undefined reference to `ptp_clock_event'
> ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_get_ts_info':
> igc_ethtool.c:(.text+0xc7a): undefined reference to `ptp_clock_index'
> ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_feature_enable_i225':
> igc_ptp.c:(.text+0x330): undefined reference to `ptp_find_pin'
> ld: igc_ptp.c:(.text+0x36f): undefined reference to `ptp_find_pin'
> ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_init':
> igc_ptp.c:(.text+0x11cd): undefined reference to `ptp_clock_register'
> ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_stop':
> igc_ptp.c:(.text+0x12dd): undefined reference to `ptp_clock_unregister'
> ld: drivers/platform/x86/dell/dell-wmi-privacy.o: in function `dell_privacy_wmi_probe':
>
> Fixes: 64433e5bf40ab ("igc: Enable internal i225 PPS")
> Fixes: 60dbede0c4f3d ("igc: Add support for ethtool GET_TS_INFO command")
> Fixes: 87938851b6efb ("igc: enable auxiliary PHC functions for the i225")
> Fixes: 5f2958052c582 ("igc: Add basic skeleton for PTP")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Ederson de Souza <ederson.desouza@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
