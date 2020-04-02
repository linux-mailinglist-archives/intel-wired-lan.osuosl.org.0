Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 167F019BAAE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC301261DF;
	Thu,  2 Apr 2020 03:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQMOJ8HaRgvC; Thu,  2 Apr 2020 03:39:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAE9126209;
	Thu,  2 Apr 2020 03:39:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7DD1BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 29EF7261F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtBRFRVPGANu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:39:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 45737261DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:39:18 +0000 (UTC)
IronPort-SDR: 7oawlsnYL9itsSMYXAUPtTZaa6b365f+iT8K1WMm1Df16DVsVn/uIsHd1VawCGmmhYsxuEQBuV
 wuFClu5i798Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:39:17 -0700
IronPort-SDR: oYDB5MkHO9gRHJIR9xYWN1V0q4pxtT2hB/8TbeJg2nvvHA+TXMZNwpLnhpqVG5RJpGpFZ1+xge
 ze7NwHqAdb1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="396212817"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga004.jf.intel.com with ESMTP; 01 Apr 2020 20:39:17 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:39:17 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.209]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:39:17 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 04/10] igc: Use netdev log helpers in
 igc_dump.c
Thread-Index: AQHWAj3JmoN5+ylggEin+/HFdsLYMahlO+fw
Date: Thu, 2 Apr 2020 03:39:16 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC20@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-5-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-5-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 04/10] igc: Use netdev log helpers in
 igc_dump.c
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
> Sent: Tuesday, March 24, 2020 5:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 04/10] igc: Use netdev log helpers in
> igc_dump.c
> 
> In igc_dump.c we print log messages using dev_* and pr_* helpers,
> generating inconsistent output with the rest of the driver. Since this
> is a network device driver, we should preferably use netdev_* helpers
> because they append the interface name to the message, helping making
> sense out of the logs.
> 
> This patch converts all dev_* and pr_* calls to netdev_*. It also takes
> this opportunity to remove the '\n' character at the end of messages
> since is it automatically added by netdev_* log helpers.
> 
> Quick note about igc_rings_dump(): This function is always called with
> valid adapter->netdev so there is not need to check it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_dump.c | 109 +++++++++++-----------
>  1 file changed, 54 insertions(+), 55 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
