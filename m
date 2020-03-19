Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E818AD19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 08:03:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C70586B15;
	Thu, 19 Mar 2020 07:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rj1okHoRrMw; Thu, 19 Mar 2020 07:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2AEF86B21;
	Thu, 19 Mar 2020 07:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE31D1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B29F8203BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cYiOc3HYRk-0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2020 07:03:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 7365920395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:03:38 +0000 (UTC)
IronPort-SDR: LeHLI8VnBRU2LTX9LHyV78UWBhsGW1xV4i4d6W6EOGL1dNL/8C3euY69eG5Yj8xTXhQmED1ntr
 Oxyi4mV7VRhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 00:03:37 -0700
IronPort-SDR: U7V7W1FM4yEcfS9dkb608sQfcD2RVpYZBw2hfLfi9Z0PJz8Wk1aWVeS5lYlgTjqdEpiD/TRP33
 RPZvTSC13SqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,570,1574150400"; d="scan'208";a="248444469"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga006.jf.intel.com with ESMTP; 19 Mar 2020 00:03:37 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.100]) with mapi id 14.03.0439.000;
 Thu, 19 Mar 2020 00:03:37 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Fix default MAC address filter
 override
Thread-Index: AQHV9mgB+Swtd9cdlk6UudIHZPmSdqhPjAdw
Date: Thu, 19 Mar 2020 07:03:37 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97223826@ORSMSX103.amr.corp.intel.com>
References: <20200309231040.20873-1-andre.guedes@intel.com>
In-Reply-To: <20200309231040.20873-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix default MAC address filter
 override
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Monday, March 9, 2020 4:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] igc: Fix default MAC address filter override
> 
> This patch fixes a bug when the user adds the first MAC address filter
> via ethtool NFC mechanism.
> 
> When the first MAC address filter is added, it overwrites the default
> MAC address filter configured at RAL[0] and RAH[0]. As consequence,
> frames addressed to the interface MAC address are not sent to host
> anymore.
> 
> This patch fixes the bug by calling igc_set_default_mac_filter() during
> adapter init so the position 0 of adapter->mac_table[] is assigned to
> the default MAC address.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
>  1 file changed, 2 insertions(+)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
