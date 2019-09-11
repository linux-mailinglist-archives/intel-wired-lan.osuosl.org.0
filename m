Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B1CB0453
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 20:59:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C6FF1203BB;
	Wed, 11 Sep 2019 18:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2izUdSQSQ+fB; Wed, 11 Sep 2019 18:59:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2FC6D204D7;
	Wed, 11 Sep 2019 18:59:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9CFE1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A57D286AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9L3KB26xJ6-i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 18:59:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F275E86A0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:59:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:59:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="179114498"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 11 Sep 2019 11:59:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Sep 2019 11:59:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 11:59:46 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 11 Sep 2019 11:59:46 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S29 v3 5/6] ice: Enable DDP package
 download
Thread-Index: AQHVZ1xXjCmtS9ZuH0WPHN9oSc87Z6cm11vQ
Date: Wed, 11 Sep 2019 18:59:46 +0000
Message-ID: <7f27d68d2bbd44bd9fcf3a74628d9516@intel.com>
References: <20190909134747.10415-1-anthony.l.nguyen@intel.com>
 <20190909134747.10415-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20190909134747.10415-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTRkNmVkMTUtNjFkYS00NmQ2LWFmNDQtOGRmYjNmNzE1YzYwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOWc0bnRaZjY3VGdTc1pvam1aNzVcL1FFdXlQbFJEVGpHOGRWSmRiVVVEUnNPZkZSMzB2bWVCdXpPWFZXYkRHZGcifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S29 v3 5/6] ice: Enable DDP package
 download
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
> Sent: Monday, September 9, 2019 6:48 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S29 v3 5/6] ice: Enable DDP package
> download
> 
> Attempt to request an optional device-specific DDP package file (one with
> the PCIe Device Serial Number in its name so that different DDP package files
> can be used on different devices). If the optional package file exists,
> download it to the device. If not, download the default package file.
> 
> Log an appropriate message based on whether or not a DDP package file
> exists and the return code from the attempt to download it to the device.  If
> the download fails and there is not already a package file on the device, go
> into "Safe Mode" where some features are not supported.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3:
> - Fixed wording on error message
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  14 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  69 ++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  42 ++
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   2 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  27 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   4 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  92 +--
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 614 ++++++++++++++----
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   6 +
>  12 files changed, 679 insertions(+), 195 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
