Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1DD7CBA1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:13:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5DC185682;
	Wed, 31 Jul 2019 18:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iIkgW3KmdQZO; Wed, 31 Jul 2019 18:13:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 097BE85810;
	Wed, 31 Jul 2019 18:13:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B93A1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 33AF32035C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VcHQHlTCS5vJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CAE31FEED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:13:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:13:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="163207194"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2019 11:13:35 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.65]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 11:13:35 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S25 09/12] ice: Don't clog kernel
 debug log with VF MDD events errors
Thread-Index: AQHVQxXuKJsNogS3nkazOqCXjLmvUablERvg
Date: Wed, 31 Jul 2019 18:13:35 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40EADC@ORSMSX104.amr.corp.intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
 <20190725095401.24590-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725095401.24590-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTE5OTVlNmEtMjY4MC00MTdkLTg1NzQtYjQ2ZDRmN2RjMzNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia3N6WE83ZThWbHV0VVpjWmRwNURVeG9RZk9tVkhzQjIyUFwvOHBqOVdKaG54SFpVTHg1RTZPQVVsN3JPTUlUUnYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S25 09/12] ice: Don't clog kernel
 debug log with VF MDD events errors
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

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tony Nguyen
> Sent: Thursday, July 25, 2019 2:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S25 09/12] ice: Don't clog kernel debug log
> with VF MDD events errors
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> In case of MDD events on VF, don't clog kernel log with unlimited VF mdd
> events message "VF 0 has had 1018 MDD events since last boot" - limit
> events log message to 30, based on the observation in some experimenation
> with sending malicious packet once, and number of events reported before
> device stopped observing MDD events.
> 
> Also removed defunct macro "ICE_DFLT_NUM_MDD_EVENTS_ALLOWED"
> for tracking number of MDD events allowed before disabling the interface...
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c        | 6 ++++--
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
