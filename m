Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F07C9FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3887522115;
	Wed, 31 Jul 2019 17:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHaEBe4WuRGi; Wed, 31 Jul 2019 17:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 459D1221B7;
	Wed, 31 Jul 2019 17:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D35A61BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D004585F08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TpYV70Tnsq10 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:10:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 660C285E71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:10:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="183760228"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga002.jf.intel.com with ESMTP; 31 Jul 2019 10:10:09 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 10:10:09 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:10:08 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 v2 05/12] ice: Fix RSS LUT table
 when setting Rx channels
Thread-Index: AQHVRjPBKa8yOaCg70CZWoaXgvD3kabk+SLA
Date: Wed, 31 Jul 2019 17:10:09 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E88D@ORSMSX104.amr.corp.intel.com>
References: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
 <20190729090454.5501-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20190729090454.5501-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjBkOWZiYzgtYWUwNi00OWUwLWIwZTQtZTM3YjM3Njk5Y2VkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMmVHanc1VVQ1NTEyVExEdlwvT2ZGZGJoTzBaQUVRMXVvcFwvSEcrSG9LditPUDFSNitPSWZ5bFMyRytYekFFcTJvIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 v2 05/12] ice: Fix RSS LUT table
 when setting Rx channels
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
> Sent: Monday, July 29, 2019 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S24 v2 05/12] ice: Fix RSS LUT table when
> setting Rx channels
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently there are multiple problems involved with setting Rx channels in
> regards to the RSS LUT. First, if the user set the indirection table manually
> through ethtool, changing the Rx channels will blindly use the user set value.
> Second when increasing the number of Rx channels the RSS table size is
> doing of minimum of the last RSS table width and the newly requested one,
> this is causing the previously set RSS table width to be used.
> 
> Fix these issues by adding the function ice_pf_set_dflt_rss_lut() that is called
> when changing the number of Rx channels. This function updates the RSS
> LUT to the default configuration for the PF any time the user has changed the
> number of Rx channels.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2: Change function to take VSI instead of PF
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 63 ++++++++++++++++++++
>  1 file changed, 63 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
