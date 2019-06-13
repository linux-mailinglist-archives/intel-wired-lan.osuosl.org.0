Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E2944E7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 23:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A742686228;
	Thu, 13 Jun 2019 21:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tx9TtsbWO1ce; Thu, 13 Jun 2019 21:30:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE2FE862AC;
	Thu, 13 Jun 2019 21:30:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37F351BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 21:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 33B4C22888
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 21:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXzax2H5aja9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2019 21:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A3E320419
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 21:30:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 14:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,370,1557212400"; d="scan'208";a="184757505"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2019 14:30:38 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 13 Jun 2019 14:30:38 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.84]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.84]) with mapi id 14.03.0415.000;
 Thu, 13 Jun 2019 14:30:38 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbevf: fix possible divide by zero
 in ixgbevf_update_itr
Thread-Index: AQHVFf5r7xrgWhY4+UWyPbZJL5Ro+KaaMmgw
Date: Thu, 13 Jun 2019 21:30:37 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3ED68F@ORSMSX104.amr.corp.intel.com>
References: <1559044682-23446-1-git-send-email-92siuyang@gmail.com>
In-Reply-To: <1559044682-23446-1-git-send-email-92siuyang@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjFmYjk0MzEtNWY0YS00N2UwLTg5NDQtNDliM2E4NzczM2FhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZkJRSXZEOFBHZTdrczdiXC9NSmZHSHA3ek5CWU1PcmtGcXZ4T1JcL3loZU5xVjBVNk81dmFnNll3WnBNUVozSWN3In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: fix possible divide by zero
 in ixgbevf_update_itr
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
> Behalf Of Young Xiao
> Sent: Tuesday, May 28, 2019 4:58 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Young Xiao <92siuyang@gmail.com>
> Subject: [Intel-wired-lan] [PATCH] ixgbevf: fix possible divide by zero in
> ixgbevf_update_itr
> 
> The next call to ixgbevf_update_itr will continue to dynamically update ITR.
> 
> Copy from commit bdbeefe8ea8c ("ixgbe: fix possible divide by zero in
> ixgbe_update_itr")
> 
> Signed-off-by: Young Xiao <92siuyang@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 3 +++
>  1 file changed, 3 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
