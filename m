Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 810B1102F0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 00:58:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41212227AA;
	Tue, 30 Apr 2019 22:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTAmoRkFmd7D; Tue, 30 Apr 2019 22:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E8CAD231A1;
	Tue, 30 Apr 2019 22:58:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 056751BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 013E9230F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1pNbPxClI+XU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 22:58:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BAC0227AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:58:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 15:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="144995143"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga008.fm.intel.com with ESMTP; 30 Apr 2019 15:58:33 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.52]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 15:58:32 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S21 14/14] ice: Trivial cosmetic changes
Thread-Index: AQHU9HrortXnMV9ur0CCkyjQEc5f5KZVZ3KA
Date: Tue, 30 Apr 2019 22:58:32 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39B01A@ORSMSX106.amr.corp.intel.com>
References: <20190416173503.29847-1-anirudh.venkataramanan@intel.com>
 <20190416173503.29847-15-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173503.29847-15-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmQ1MjI2N2YtMGY2Ni00NDYyLTgzNDktMTIzMzEzZGNmYmQwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieEE0Q0NrTWNnMVFNQVhzWG1pc3pkYjFYOHpadTJzY1VBSjh3aXhQaEVGcjVMblNFNTB5QVpydnlxbTJSbzQrOCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S21 14/14] ice: Trivial cosmetic
 changes
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
> Behalf Of Anirudh Venkataramanan
> Sent: Tuesday, April 16, 2019 10:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S21 14/14] ice: Trivial cosmetic changes
> 
> This patch mostly capitalizes abbreviations in code comments. Fixed some
> typos and removed some unnecessary newlines as well.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  4 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 12 +++---
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_controlq.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_dcb.c      | 14 +++----
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 12 +++---
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 42 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  8 ++--
>  drivers/net/ethernet/intel/ice/ice_type.h     |  2 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  9 ++--
>  13 files changed, 57 insertions(+), 58 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
