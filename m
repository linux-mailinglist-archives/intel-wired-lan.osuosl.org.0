Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929315EB45
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 20:12:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CF7887CC9;
	Wed,  3 Jul 2019 18:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZD8CnQgGUhgy; Wed,  3 Jul 2019 18:12:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E23EB87C76;
	Wed,  3 Jul 2019 18:12:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC4FE1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D8C3B84F90
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7BUlTqD0_nR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 18:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8256D84F33
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:12:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="339385345"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga005.jf.intel.com with ESMTP; 03 Jul 2019 11:12:12 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.95]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 11:12:12 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v2 03/15] ice: Assume that more
 than one Rx queue is rare in ice_napi_poll
Thread-Index: AQHVLgmU0C7ym6ue5U6LHdeRpnH2kaa5OYWg
Date: Wed, 3 Jul 2019 18:12:11 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD103@ORSMSX104.amr.corp.intel.com>
References: <20190628150332.59155-1-anthony.l.nguyen@intel.com>
 <20190628150332.59155-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20190628150332.59155-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjg5Mjg3MWMtYTBjZS00MDcwLTgxYmEtYzUxNDliZWFjODg4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRzFWTVlONWxKbkVrQ2JaTjZ0Q2lZTldDUEJENzExM0s2ZkZyUFwvVUgreVJVXC9Ga1hjUVZGQjZnVDh2OWVMYkFTIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v2 03/15] ice: Assume that more
 than one Rx queue is rare in ice_napi_poll
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
> Sent: Friday, June 28, 2019 8:03 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S23 v2 03/15] ice: Assume that more than
> one Rx queue is rare in ice_napi_poll
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently we divide budget by the number of Rx queues per Rx ring
> container in ice_napi_poll even if there is only 1. This is an unnecessary divide
> for the normal case of 1 Rx ring per Rx ring container. Fix this by using an
> unlikely() call in the case where we actually need to divide.
> 
> Also, we will always set budget_per_ring even if there are no Rx rings in the
> Rx ring container so we don't need to initialize it to 0.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
