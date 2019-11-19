Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92762102C86
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 20:27:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2004623119;
	Tue, 19 Nov 2019 19:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id psAb8T6fagDp; Tue, 19 Nov 2019 19:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3931723244;
	Tue, 19 Nov 2019 19:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83EDF1BF23B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 19:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7EAD423119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 19:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-0Gqs7PICiz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 19:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E53823115
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 19:27:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 11:27:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,219,1571727600"; d="scan'208";a="209299317"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 11:27:26 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 Nov 2019 11:27:25 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Nov 2019 11:27:25 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 19 Nov 2019 11:27:25 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select bitmap
 validation
Thread-Index: AQHVmliIkEH6hjlYKEKnKZy6zbRV3qeS6fRg
Date: Tue, 19 Nov 2019 19:27:25 +0000
Message-ID: <ab226666b7e74c7fa7ca5cd6ade44bc1@intel.com>
References: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDUxNGFkYTQtOTZmMS00ODg3LTg4ZmEtNWU0ZjU1Mzg2MzdmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWjlwWkZKd2I0NUw5V3ZaRFJzbENmZzJ0MG5mUEJmTFl5emVZYnQxUGFYcUxBb2lzaGtXWjNubzdOeWo4ekZqdiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
 bitmap validation
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
> Sent: Wednesday, November 13, 2019 11:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> <arkady.gilinsky@harmonicinc.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select bitmap
> validation
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently in i40e_vc_disable_queues_msg() we are incorrectly validating the
> virtchnl queue select bitmaps. The virtchnl_queue_select rx_queues and
> tx_queue bitmap is being compared against ICE_MAX_VF_QUEUES, but the
> problem is that these bitmaps can have a value greater than
> I40E_MAX_VF_QUEUES.
> Fix this by comparing the bitmaps against BIT(I40E_MAX_VF_QUEUES).
> 
> Also, add the function i40e_vc_validate_vqs_bitmaps() that checks to see if
> both virtchnl_queue_select bitmaps are empty along with checking that the
> bitmaps only have valid bits set. This function can then be used in both the
> queue enable and disable flows.
> 
> Suggested-by: Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
