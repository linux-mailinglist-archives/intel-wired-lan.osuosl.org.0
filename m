Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E714A19BABD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73FE2261F9;
	Thu,  2 Apr 2020 03:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XL3nWtYARtL; Thu,  2 Apr 2020 03:48:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A945826209;
	Thu,  2 Apr 2020 03:48:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDA291BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9E5B261F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2xw61s8a3ZN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id EC2E2261DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:48:13 +0000 (UTC)
IronPort-SDR: vmU/Oeq5aOmb5IVqj/uDrHN79ibY4fGpqdpvhNondVb1wLcsQz9RtGcm9a+7kyi/FSiVl1qyGM
 ERwG6+y4o9BQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:48:13 -0700
IronPort-SDR: dglKMo2qXuJM7J/cBf2tpB3WVQKj5jvoyCiYHOBWbU68gvbQFZoQRPzwREHEvPapEtPEh2+qoD
 tup/WXP3sUHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="273409970"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga004.fm.intel.com with ESMTP; 01 Apr 2020 20:48:12 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX102.amr.corp.intel.com ([169.254.3.165]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:48:12 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 09/10] igc: Remove '\n' from log
 messages in igc_nvm.c
Thread-Index: AQHWAj3A+ztVKlujkkKFIHxWWA45UKhlPnhw
Date: Thu, 2 Apr 2020 03:48:12 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC86@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-10-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-10-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 09/10] igc: Remove '\n' from log
 messages in igc_nvm.c
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
> Subject: [Intel-wired-lan] [PATCH 09/10] igc: Remove '\n' from log messages in
> igc_nvm.c
> 
> To keep log strings in igc_nvm.c consistent with the rest of the driver
> code, this patch removes the '\n' character at the end. The newline
> character is automatically added by netdev_dbg() so there is no changes
> in the output.
> 
> Note: hw_dbg() is a macro that expands to netdev_dbg().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_nvm.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
