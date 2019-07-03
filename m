Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D76AD5EB73
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 20:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 86522203B2;
	Wed,  3 Jul 2019 18:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUGgV+GETC9P; Wed,  3 Jul 2019 18:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3167D20439;
	Wed,  3 Jul 2019 18:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 460E01BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 417DD203B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LFOKXv+B4al7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 18:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 779DA2014A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:20:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:20:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="175021719"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga002.jf.intel.com with ESMTP; 03 Jul 2019 11:20:36 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 11:20:36 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.81]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 11:20:36 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v2 14/15] ice: Change type for
 queue counts
Thread-Index: AQHVLgmfY+pUNvWIRU2mHMvGJa07+6a5O9lA
Date: Wed, 3 Jul 2019 18:20:35 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD1B3@ORSMSX104.amr.corp.intel.com>
References: <20190628150348.59202-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190628150348.59202-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWEzNWRhNDktOTA3Mi00OGJhLTlhMDYtOGU4YWYxMDliOGVjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZlJWNlwvMDBnZ2w1VGFFaGhjZTBCRDUrZXlFNSt3c3BPQUgxTXJ3cnhoa1pXQmJPaFp4RmdvWVgyb0ZiSzI4bE4ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v2 14/15] ice: Change type for
 queue counts
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
> Sent: Friday, June 28, 2019 8:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH S23 v2 14/15] ice: Change type for queue
> counts
> 
> From: Pawel Kaminski <pawel.kaminski@intel.com>
> 
> A negative queue count should never exist, change the type to unsigned to
> convey that.
> 
> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
> ---
> v2: Change type from u16 to unsigned int
>     Reword commit message
> 
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
