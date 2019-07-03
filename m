Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D59945EEC2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 23:44:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 889EF81ADE;
	Wed,  3 Jul 2019 21:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RKSlicLARc3s; Wed,  3 Jul 2019 21:44:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF0E581AEF;
	Wed,  3 Jul 2019 21:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAAFA1BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6DF1203CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EINnetmzeY4t for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 21:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 3867B20117
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:44:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 14:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="184861600"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 14:44:55 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 14:44:55 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.232]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 14:44:55 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] iavf: remove unused debug
 function iavf_debug_d
Thread-Index: AQHVMJ5XiQrcda6PCk6e4wmTDurJL6a5b8lw
Date: Wed, 3 Jul 2019 21:44:55 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD2B4@ORSMSX104.amr.corp.intel.com>
References: <20190702062021.41524-1-yuehaibing@huawei.com>
In-Reply-To: <20190702062021.41524-1-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWU0MDViMDUtOWIyMy00YjFhLWJhZmEtZTA0ZjZmNzg1NzY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiazgyelwvMVNkSFBKQ0ZTM3BsTCtcL1hZdzNWSjdTeTVCeWN4MGFtRWpEN2I3dW1Xc0hZVUFtZzl2NUNmeklVWW90In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: remove unused debug
 function iavf_debug_d
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of YueHaibing
> Sent: Monday, July 1, 2019 11:20 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; YueHaibing <yuehaibing@huawei.com>; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next] iavf: remove unused debug
> function iavf_debug_d
> 
> There is no caller of function iavf_debug_d() in tree since commit
> 75051ce4c5d8 ("iavf: Fix up debug print macro"), so it can be removed.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 22 ----------------------
>  1 file changed, 22 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
