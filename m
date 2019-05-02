Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8869F12443
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 23:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32A5D8794A;
	Thu,  2 May 2019 21:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0I4zqp686Wo; Thu,  2 May 2019 21:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3807187A44;
	Thu,  2 May 2019 21:44:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 314681BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E48F8823A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TsDJkcxOWe4Q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 21:44:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9099F8822B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:44:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 14:44:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="342943399"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga006.fm.intel.com with ESMTP; 02 May 2019 14:44:33 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.17]) with mapi id 14.03.0415.000;
 Thu, 2 May 2019 14:44:31 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S4 iavf 2/9] iavf: change
 iavf_status_code to iavf_status
Thread-Index: AQHU9Wu30+3yCPsrTECalvP6TDd4BqZYdYkg
Date: Thu, 2 May 2019 21:44:30 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C47E@ORSMSX106.amr.corp.intel.com>
References: <20190417221737.11460-1-alice.michael@intel.com>
 <20190417221737.11460-2-alice.michael@intel.com>
In-Reply-To: <20190417221737.11460-2-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTc3NzI0MDYtMzUxYi00NjZlLWEzNzctMmI1MTAyZWU0ZThkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUmZZaldBa2R4ckJwWit0VTRWMUx0REo2UTRkNEJselRzSUc3RHBOY2JPSUl6QU0ydTZ2VENLNUxRZ2x2THp3WCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S4 iavf 2/9] iavf: change
 iavf_status_code to iavf_status
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
> Subject: [Intel-wired-lan] [next PATCH S4 iavf 2/9] iavf: change
> iavf_status_code to iavf_status
> 
> From: Sergey Nemov <sergey.nemov@intel.com>
> 
> Instead of typedefing the enum iavf_status_code with iavf_status, just
> shorten the enum itself and get rid of typedef.
> 
> Signed-off-by: Sergey Nemov <sergey.nemov@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  2 +-
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c | 67 ++++++++++---------
> drivers/net/ethernet/intel/iavf/iavf_alloc.h  | 17 +++--
> drivers/net/ethernet/intel/iavf/iavf_client.c |  6 +-
> drivers/net/ethernet/intel/iavf/iavf_common.c | 53 ++++++++-------
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 20 +++---
>  drivers/net/ethernet/intel/iavf/iavf_osdep.h  |  1 -
> .../net/ethernet/intel/iavf/iavf_prototype.h  | 52 +++++++-------
> drivers/net/ethernet/intel/iavf/iavf_status.h |  2 +-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 14 ++--
>  10 files changed, 121 insertions(+), 113 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
