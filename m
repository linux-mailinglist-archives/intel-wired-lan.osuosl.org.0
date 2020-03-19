Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE6018AD11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 08:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FC0286AFB;
	Thu, 19 Mar 2020 07:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iJHSJpK_Egsx; Thu, 19 Mar 2020 07:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D101086B02;
	Thu, 19 Mar 2020 07:01:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C1BC1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:01:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8542888251
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:01:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5botpv7fCcwr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2020 07:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B52E488236
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:01:23 +0000 (UTC)
IronPort-SDR: PRwMF5aeo8D2ybxWyU0DYeur1amKIn8RAF7b2N6WyesXPyPoIp1GfChFuUhi63uRByf8xJv0hH
 TnDHyCBd1U1g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 00:01:22 -0700
IronPort-SDR: OvosFBMjP3JDO1D1DXBEBux2DCNcVxwpE7hjDfwgSVWW3V6EGVxjyXcJl7dQg204z1MX3fLYil
 qSwyNUAqmz8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,570,1574150400"; d="scan'208";a="444460964"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga005.fm.intel.com with ESMTP; 19 Mar 2020 00:01:21 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.225]) with mapi id 14.03.0439.000;
 Thu, 19 Mar 2020 00:01:21 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Remove dead code related to
 flower filter
Thread-Index: AQHV9BiJaepKm8AN30aRzU+7b6c9T6hPj/7w
Date: Thu, 19 Mar 2020 07:01:21 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97223809@ORSMSX103.amr.corp.intel.com>
References: <20200307003642.25590-1-andre.guedes@intel.com>
In-Reply-To: <20200307003642.25590-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Remove dead code related to
 flower filter
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
> Sent: Friday, March 6, 2020 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] igc: Remove dead code related to flower filter
> 
> IGC driver has no support for tc-flower filters so this patch removes
> some leftover code, probably copied from IGB driver by mistake.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      | 1 -
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 ---
>  2 files changed, 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
