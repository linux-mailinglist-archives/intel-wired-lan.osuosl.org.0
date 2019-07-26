Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEC777398
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 23:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FA7087CB3;
	Fri, 26 Jul 2019 21:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zpgBfo5xvpOj; Fri, 26 Jul 2019 21:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C22C187C41;
	Fri, 26 Jul 2019 21:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C5941BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04554898ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6cuWbB6hIbv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 21:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1CC02898D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:45:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:45:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="164723313"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 26 Jul 2019 14:45:16 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 14:45:16 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.63]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 14:45:15 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S8 03/12] i40e:
 check_recovery_mode had wrong if statement
Thread-Index: AQHVQYOkNzwMAsHFjUCOS3NPkytzZKbdc7pg
Date: Fri, 26 Jul 2019 21:45:16 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CE78@ORSMSX104.amr.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-3-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-3-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2RkODM2MWMtYjdjYS00ZGMwLTkyZTAtYmMwNDU5YTY5NjFkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWHYrRFRWZDFxTWpEMVFTY242NExiMjVFS0FIRkZWK3NvOUQ3YjRHdXYyam1BSG9LWkEySStoRjdjVzZCZCtjaSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 03/12] i40e:
 check_recovery_mode had wrong if statement
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
> Sent: Tuesday, July 23, 2019 3:02 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Podlawski, Adrian <adrian.podlawski@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S8 03/12] i40e: check_recovery_mode
> had wrong if statement
> 
> From: Adrian Podlawski <adrian.podlawski@intel.com>
> 
> Function check_recovery_mode had wrong if statement.
> Now we check proper FWS1B register values, which are responsible for the
> recovery mode. Recovery mode has 4 values for FVL and 2 for FPK.
> That's why we need 6 different flags which are defined in shared code.
> Now in if statement we recognize type of mac address and register value.
> Without those changes driver could show wrong state.
> 
> Signed-off-by: Adrian Podlawski <adrian.podlawski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c     | 17 ++++++++++++++---
>  drivers/net/ethernet/intel/i40e/i40e_register.h |  6 ++++++
>  2 files changed, 20 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
