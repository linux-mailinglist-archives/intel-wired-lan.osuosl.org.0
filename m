Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2331E14AC76
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2020 00:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1F2A840B8;
	Mon, 27 Jan 2020 23:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eLvj6Y4_wWsE; Mon, 27 Jan 2020 23:14:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B3EE835E8;
	Mon, 27 Jan 2020 23:14:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E748E1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E353C81E2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v2egLaZpm6TS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 23:14:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D49CE84964
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:14:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 15:14:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="246556619"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga002.jf.intel.com with ESMTP; 27 Jan 2020 15:14:21 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jan 2020 15:14:20 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 15:14:20 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 27 Jan 2020 15:14:20 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S38 06/15] ice: Add support to
 enable/disable all Rx queues before waiting
Thread-Index: AQHV0X9OopOVJ7P9l0OAr65IMu97Nqf/K/JQ
Date: Mon, 27 Jan 2020 23:14:20 +0000
Message-ID: <ed752e9fee864b698e21be3b0a2e66d3@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
 <20200122152138.41585-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200122152138.41585-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmY5OWM4YmUtYjIxYi00ZmZhLWExZWYtY2VhODA2NDQ3NzczIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUFl1VjYrQVVcL1FTOThFS00xMGdrd2xvS0dEcVFwcHd2ZEw5VTVkcFFlMHlcL1M0Wk1idjN3TVZTZjNGQUZPMXBzIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S38 06/15] ice: Add support to
 enable/disable all Rx queues before waiting
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
> Sent: Wednesday, January 22, 2020 7:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S38 06/15] ice: Add support to
> enable/disable all Rx queues before waiting
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently when we enable/disable all Rx queues we do the following
> sequence for each Rx queue and then move to the next queue.
> 
> 1. Enable/Disable the Rx queue via register write.
> 2. Read the configuration register to determine if the Rx queue was
> enabled/disabled successfully.
> 
> In some cases enabling/disabling queue 0 fails because of step 2 above.
> Fix this by doing step 1 for all of the Rx queues and then step 2 for all of the
> Rx queues.
> 
> Also, there are cases where we enable/disable a single queue (i.e.
> SR-IOV and XDP) so add a new function that does step 1 and 2 above with a
> read flush in between.
> 
> This change also required a single Rx queue to be enabled/disabled with and
> without waiting for the change to propagate through hardware. Fix this by
> adding a boolean wait flag to the necessary functions.
> 
> Also, add the keywords "one" and "all" to distinguish between
> enabling/disabling a single Rx queue and all Rx queues respectively.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     | 42 ++++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_base.h     |  4 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 32 +++++++++-----
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  7 ++--
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  4 +-
>  8 files changed, 67 insertions(+), 34 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
