Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B821363B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 May 2019 01:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5BCD822E1C;
	Fri,  3 May 2019 23:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MK6woddz0sjW; Fri,  3 May 2019 23:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A96D31036;
	Fri,  3 May 2019 23:38:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0691BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 483AB8832F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9wT4FqpULJA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 23:38:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 656F187C09
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:38:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 16:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="148020446"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga003.jf.intel.com with ESMTP; 03 May 2019 16:38:32 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.52]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 16:38:32 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 06/10] i40e: add input
 validation for virtchnl handlers
Thread-Index: AQHU+t2e/MfMOp7MFE+r8sCgWyXfxaZaHNdA
Date: Fri, 3 May 2019 23:38:32 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C6CF@ORSMSX106.amr.corp.intel.com>
References: <20190424122055.27896-1-alice.michael@intel.com>
 <20190424122055.27896-6-alice.michael@intel.com>
In-Reply-To: <20190424122055.27896-6-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGEyYTM0MjctY2E5OS00Y2UxLTg5Y2QtNTRmMzVlZTk5YTBhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWWpjWkhYcmhXZUlBRWhSMVF0MU5INlRxNnNtb2s4c0pnbG9cLzlOR255M2V3SEpXNGt5YW0wbGpHa2lSY0k2V3oifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 06/10] i40e: add input
 validation for virtchnl handlers
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
> Sent: Wednesday, April 24, 2019 5:21 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S5 06/10] i40e: add input validation for
> virtchnl handlers
> 
> From: Sergey Nemov <sergey.nemov@intel.com>
> 
> Change some data to unsigned int instead of integer when we compare.
> 
> Check LUT values in VIRTCHNL_OP_CONFIG_RSS_LUT handler.
> 
> Also enhance error/warning messages to print the real values of
> I40E_MAX_VF_QUEUES, I40E_MAX_VF_VSI and
> I40E_DEFAULT_QUEUES_PER_VF instead of plain text.
> 
> Refactor code to comply with 'check first then assign' policy.
> 
> Remove duplicate checks for VIRTCHNL_OP_CONFIG_RSS_KEY and
> VIRTCHNL_OP_CONFIG_RSS_LUT opcodes in i40e_vc_process_vf_msg(). We
> have the very same checks inside the handlers already.
> 
> Signed-off-by: Sergey Nemov <sergey.nemov@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 74 ++++++++-----------
>  1 file changed, 31 insertions(+), 43 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
