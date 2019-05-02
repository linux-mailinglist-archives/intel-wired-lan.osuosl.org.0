Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2310A12445
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 23:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D597B8823B;
	Thu,  2 May 2019 21:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BN1BLQH0rqjo; Thu,  2 May 2019 21:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FD0A8825E;
	Thu,  2 May 2019 21:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2216F1BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E75D8680B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONJjMjyrZy6H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 21:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9869F86802
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:44:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 14:44:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="140803919"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 14:44:59 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 2 May 2019 14:44:58 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.120]) with mapi id 14.03.0415.000;
 Thu, 2 May 2019 14:44:58 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S4 iavf 3/9] iavf: rename i40e
 functions to be iavf
Thread-Index: AQHU9WuuxoiSyMsaPECOH+w0AZLtV6ZYdaxw
Date: Thu, 2 May 2019 21:44:57 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C48E@ORSMSX106.amr.corp.intel.com>
References: <20190417221737.11460-1-alice.michael@intel.com>
 <20190417221737.11460-3-alice.michael@intel.com>
In-Reply-To: <20190417221737.11460-3-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2Q4ZjAwNmItODUwNy00YWI2LWI0N2MtM2FhMGQxMTVhMmRhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRnJBNmVzNGhhOGdFK2hMYXhERjFMR01DY044V1JjaVo0RktERzVFdjZhTzRFM1d3SXFTODhwTUFqZzRibmFWMSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S4 iavf 3/9] iavf: rename i40e
 functions to be iavf
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
> Behalf Of Alice Michael
> Sent: Wednesday, April 17, 2019 3:18 PM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S4 iavf 3/9] iavf: rename i40e
> functions to be iavf
> 
> Update the old i40e function names to be iavf
> 
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c    | 6 +++---
>  drivers/net/ethernet/intel/iavf/iavf_prototype.h | 4 ++--
>  2 files changed, 5 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
