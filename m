Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FA44C3FF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 01:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99D3787B92;
	Wed, 19 Jun 2019 23:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6TWcXqNU+gYo; Wed, 19 Jun 2019 23:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B05A87BC2;
	Wed, 19 Jun 2019 23:14:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81BD81BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7DB7220BF8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXa83xIJdL7H for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 23:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id A2411203A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:14:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:14:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="165155290"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga006.jf.intel.com with ESMTP; 19 Jun 2019 16:14:39 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:14:38 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.236]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:14:38 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next v2] iavf: use struct_size() helper
Thread-Index: AQHVIwgn802YrtwkBUKgSMhbuqiYaKajo2UA
Date: Wed, 19 Jun 2019 23:14:38 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3F8D43@ORSMSX104.amr.corp.intel.com>
References: <20190614232320.9752-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190614232320.9752-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2IwZTBmNmItMmYwMC00MzE4LTgyNjItMGY5NDRiNTlkNGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia2I4QU02T3N4QTV3MGhaaGoxWjY3OHV2K3hpalZrc2xLcHhEcU42a0VTdGZEekRhNERHQ09PS0pXYko3QUkyQyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next v2] iavf: use struct_size() helper
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
> Behalf Of Jeff Kirsher
> Sent: Friday, June 14, 2019 4:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next v2] iavf: use struct_size() helper
> 
> From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
> 
> Make use of the struct_size() helper instead of an open-coded version in
> order to avoid any potential type mistakes, in particular in the context in
> which this code is being used.
> 
> So, replace code of the following form:
> 
> sizeof(struct virtchnl_ether_addr_list) + (count * sizeof(struct
> virtchnl_ether_addr))
> 
> with:
> 
> struct_size(veal, list, count)
> 
> and so on...
> 
> This code was detected with the help of Coccinelle.
> 
> Signed-off-by: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
> ---
> v2: Fixed up patch to apply cleanly to the current iavf driver
> 
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 37 ++++++++-----------
>  1 file changed, 16 insertions(+), 21 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
