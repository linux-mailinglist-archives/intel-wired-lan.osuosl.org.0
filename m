Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3340FE5719
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2019 01:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88DEB8815F;
	Fri, 25 Oct 2019 23:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bj95IGN3eYbj; Fri, 25 Oct 2019 23:36:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D64A38813E;
	Fri, 25 Oct 2019 23:36:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42B4D1BF333
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3BF98806F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RapyDDuZIcya for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 23:35:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED5B986A48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:35:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="398913330"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 25 Oct 2019 16:35:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 25 Oct 2019 16:35:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 16:35:56 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 25 Oct 2019 16:35:56 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S30 v3 1/9] ice: Introduce ice_base.c
Thread-Index: AQHViooNvQpVzDSoMES4mvKx7/r6SqdsBL3Q
Date: Fri, 25 Oct 2019 23:35:56 +0000
Message-ID: <83a8daee3df54cd897569c7191852554@intel.com>
References: <20191024081125.6711-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20191024081125.6711-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWYzOWEzODYtZGU3OC00YTk3LWJkYzgtZjQ1ZWQwYjJjZTM0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaXhRNmM2Wnh6bDZQbDNxckhpUjZmODlRYjdtOGgyUTgwY1Z5Vlg5WWZWdzlEWjVXOFhvSWhxbDdVNXpWbmdWWCJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S30 v3 1/9] ice: Introduce ice_base.c
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
> Sent: Thursday, October 24, 2019 1:11 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S30 v3 1/9] ice: Introduce ice_base.c
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Remove a few uses of kernel configuration flags from ice_lib.c by
> introducing a new source file ice_base.c. Also move corresponding
> function prototypes from ice_lib.h to ice_base.h and include ice_base.h
> where required.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  drivers/net/ethernet/intel/ice/ice.h          |   8 +
>  drivers/net/ethernet/intel/ice/ice_base.c     | 767 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_base.h     |  31 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 787 +-----------------
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  39 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 -
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   1 +
>  10 files changed, 811 insertions(+), 827 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_base.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_base.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
