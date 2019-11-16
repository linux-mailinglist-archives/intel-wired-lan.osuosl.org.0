Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD353FE8FE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Nov 2019 01:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5179A8769F;
	Sat, 16 Nov 2019 00:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9YbmYjct1Qik; Sat, 16 Nov 2019 00:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D77A6876A4;
	Sat, 16 Nov 2019 00:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15AC11BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 00:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F5928769E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 00:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQafaobMqMMQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Nov 2019 00:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42D0D876A2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 00:08:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 16:08:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,310,1569308400"; d="scan'208";a="203530164"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 15 Nov 2019 16:08:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 Nov 2019 16:08:36 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Nov 2019 16:08:35 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 15 Nov 2019 16:08:35 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select bitmap
 validation
Thread-Index: AQHVmliIkEH6hjlYKEKnKZy6zbRV3qeLb8rAgAIBNAD//339MA==
Date: Sat, 16 Nov 2019 00:08:35 +0000
Message-ID: <897250446bee4cdc987a9478db97873a@intel.com>
References: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
 <d05e40a7ad5246cdba8f63a6825ce9d9@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971758C2@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B971758C2@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDBkNjhhZjktMmFhZC00YWE1LTg3NjMtZDI2MDZjZWNkODlkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNTFPMmhkYk9IdVhyUlVsVCtlaFwvbllGeCtOdGloT0t4M2NWRlg3aThBcTBvQ3FoN0pYMkJ5QjBCWVZHU1wvUk10In0=
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
Cc: "Creeley, Brett" <brett.creeley@intel.com>,
 Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I was getting the same thing. Taking the compiler's suggestion and changing _queue to _queues and it compiles but nobody responded to my comments. 

> -----Original Message-----
> From: Brown, Aaron F
> Sent: Friday, November 15, 2019 3:53 PM
> To: Bowers, AndrewX <andrewx.bowers@intel.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> <arkady.gilinsky@harmonicinc.com>
> Subject: RE: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select bitmap
> validation
> 
> This patch is causing a compile error for me.  If I pop revert it my compile
> error goes away:
> ---------------------------------------------------------------
> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c: In function
> 'i40e_vc_validate_vqs_bitmaps':
> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2333:9: error: 'struct
> virtchnl_queue_select' has no member named 'rx_queue'
>       vqs->rx_queue >= BIT(I40E_MAX_VF_QUEUES) ||
>          ^
> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2334:9: error: 'struct
> virtchnl_queue_select' has no member named 'tx_queue'
>       vqs->tx_queue >= BIT(I40E_MAX_VF_QUEUES))
>          ^
> make[6]: *** [drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.o] Error 1
> make[6]: *** Waiting for unfinished jobs....
> make[5]: *** [drivers/net/ethernet/intel/i40e] Error 2
> make[4]: *** [drivers/net/ethernet/intel] Error 2
> make[4]: *** Waiting for unfinished jobs....
> make[3]: *** [drivers/net/ethernet] Error 2
> make[2]: *** [drivers/net] Error 2
> make[1]: *** [drivers] Error 2
> make: *** [sub-make] Error 2
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Bowers, AndrewX
> > Sent: Thursday, November 14, 2019 5:17 PM
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> > <arkady.gilinsky@harmonicinc.com>
> > Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
> > bitmap validation
> >
> > Comments inline
> >
> > > -----Original Message-----
> > > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > > Behalf Of Jeff Kirsher
> > > Sent: Wednesday, November 13, 2019 11:28 AM
> > > To: intel-wired-lan@lists.osuosl.org
> > > Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
> > > <arkady.gilinsky@harmonicinc.com>
> > > Subject: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
> > > bitmap validation
> > >
> > > From: Brett Creeley <brett.creeley@intel.com>
> > >
> > > Currently in i40e_vc_disable_queues_msg() we are incorrectly
> > > validating
> > the
> > > virtchnl queue select bitmaps. The virtchnl_queue_select rx_queues
> > > and tx_queue bitmap is being compared against ICE_MAX_VF_QUEUES,
> but
> > the
> > > problem is that these bitmaps can have a value greater than
> > > I40E_MAX_VF_QUEUES.
> > > Fix this by comparing the bitmaps against BIT(I40E_MAX_VF_QUEUES).
> > >
> > > Also, add the function i40e_vc_validate_vqs_bitmaps() that checks to
> > > see if both virtchnl_queue_select bitmaps are empty along with
> > > checking that
> > the
> > > bitmaps only have valid bits set. This function can then be used in
> > > both the queue enable and disable flows.
> > >
> > > Suggested-by: Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
> > > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > > ---
> > >  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++----
> > >  1 file changed, 18 insertions(+), 4 deletions(-)
> > >
> <snip>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
