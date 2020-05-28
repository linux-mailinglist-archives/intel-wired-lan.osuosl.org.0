Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D711E6DD6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F61C88F86;
	Thu, 28 May 2020 21:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQTxFl6r-Z1x; Thu, 28 May 2020 21:40:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA6838916D;
	Thu, 28 May 2020 21:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFB0C1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D5B3D88F86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDRL7yKSImQm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6ACDC88C67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:40:18 +0000 (UTC)
IronPort-SDR: sHJirZaGVYFO9w9AXB787XrdaXrveweTfviMN/0WiaeBy33b3Y1+tYMuLDuGe9OOG2jDKFDVN0
 Cg3ut0emnOMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:40:17 -0700
IronPort-SDR: Nd1iN+qdQN3ER4/LnT0S8mX0v4LPpkecgkDQtZ6jcx+yngk7YgM+TWRYh0qX7URniBfHkSzL78
 riJyP/tgyHtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="469274721"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2020 14:40:17 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:40:17 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:40:17 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.50) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:40:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sms+TWbJ+pDjQOj3npZt05ARM8lluY9KeBq8UT9V5HT/ao1tE1jUeWFvZAtE6KtnLisKOvA4SrgjgSCECEAkp8k5i9bJp928EFXi0CjQqsc9IUHHRZ/8C42Yl0hy8LDaN3rJ7Q9Lqy1gqd/Pz1qC3H4McBDbb4Rd/8f8vrKInTwQwCXafnjkmfQBLy7ILcIcnZicmj80HxP/HPCx5IOUfEEM90uKHdHQLoySYkv3Mvz2akziHV5JDnrBIWgsE8PtcmLIlf6jyibhRwHGKIRCgrR5Uu8eWIGuOablrIArzQFA6FDk7Qup5h0DgRLZ46sPzFOh6Wdpf0YaDFcXTNAnkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ny5VamOijK6NiczpMd+085MzY/MvKepEmi3eY5J04RE=;
 b=ntCFg5VSIqoiiPUW/5FZiCUC98bBIg7X+djqQtUYziCqfQS8481wWVCgdznTRxRDVMPe/0wPAdW9mWBOpsOI0Gkupc4mHprT9gjNQ1wlQCOexW0MVlNIJHtthKZJ2vvGfAnp18RIVrfddfUMHt2VtADGYwTQP/jbW0lh+8SHPLRoI+2GhXYCLdR/4YyuQAvwjjfJWLnFz2ltUDD5QjXDFUyQjU8wA6AQSziyXlLXMuvG8smFTUT+DDPsrHZlu4wHtdI6MYNyk9KeNiklzKVP7uc2kfrFUhM88a5oubZPZzVF/0ewkcj85hBuXOBjWZ6bppW6aOZ35rop9u6I7BZWNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ny5VamOijK6NiczpMd+085MzY/MvKepEmi3eY5J04RE=;
 b=sXVMyk4TA+xbtK8nt5QbHj5aM3ynR8rqx77dPykJ4GvD57fC1/7GKonyTKOFcmMudNAR4VrWywloM6m4dNBE3M3T/b7kE0wXuWpd7sHsCfJ3KaCTb3srXS1ncq3WdYZRhopaJdcDvfYhZjR647dYK1w1EyskO6kJQ/tyOz7mFaE=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:40:15 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:40:15 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 04/15] ice: Separate VF VSI
 initialization/creation from reset flow
Thread-Index: AQHWKxyVO82bxLlaV0KMbKh3Gb969Ki+Gtng
Date: Thu, 28 May 2020 21:40:15 +0000
Message-ID: <DM5PR11MB1659920FEA7F1E28F1664D298C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc94ec1b-b4fd-427b-bc25-08d8034fb5b2
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB2043F103360B0DD7E221EA268C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H3mFfqTy/5VwOiFNZH7zV+fldxFT/wJbeA3cS0GdarZcZ9+xIWBfQfuKMEqv9x9fT1AUlGo13nIrYDiIViegXOHf9pqdIYHO82XZqD0/w5hDX5aAPpdkNRi3Ae1Sl/2u9j86D8QE0HEM7gGYcyRAS83/gv1G0NFFTBs3GLjPfCJphUr5InrI2IjfmP6IceRF7wjjLWk99GV4BZF5rQ9P7VyU0lj7Y1I1/PQ8yuM/kEHBnz1ngJ/G8AsHdMV3Ro8AcFG8Oeqr8BBf3L48HKNk4MYYNRtuwBksrjhIGDp+tC5PsKuYIEFSapWOrxzdWKhAJLTLBpZ7hf/0c8x7HQGuk51PEyMPDtpWB+QsQjm2E2zL+bHUr2uPj6DAIUjTDkNx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001)(20673002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Ggyzidk2qeLfcDByOH2Typ1u9xX+at6C7726/DnHV8PccpsyksF8feSSWL1/1iLs1liZf+wB4HKMfJ6cEQRxyEl8v+srCDfRCZFirCyrsspvcta++DKlEpbw+ZvAUYocKHQMtLkdy+Ebr92I/X/Yx4wmxTAx4lmp3xDkOnxv+cbfTAOtRJoUOxgWy/A9pkXPffFw+KPaODLYYC+rXDixhfyd05U2Gl+e3RYHs/2utmvwR331S7u5vwkZEBp2WyvMVJhnZbrcju67oP3MbWRHqXjPY7ABzSNfyvrW0EpiuUqCcKp6JsZNMlc0KWEmjQo2wEns5cFe+Yx7BvUsvgg9426RLL91upy4Cu1sCzOwuFSkG85UupcGmJXHuQWsndqJN8RX/YU0I96i5uRwWRPy6j1ypSQJMAojs8uEdHO5WcM+l3GXrjjZNvthJOw2dsIb3+7CVM1tKOydz+1AYZ56KTlSberrrOoZFk+PPIyTbQk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dc94ec1b-b4fd-427b-bc25-08d8034fb5b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:40:15.7295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lbFLSwpV+SDUMNmAOgfpXwpPrEoMsIdyhlBeZ7v7QnX05nA+gFO5rFtqvRK6TfDyN7gPGXspY/IcnnfzZNmdVNg8VL1yfgUYzm/rzIyXGK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 04/15] ice: Separate VF VSI
 initialization/creation from reset flow
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 04/15] ice: Separate VF VSI
> initialization/creation from reset flow
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the same flow is used for VF VSI initialization/creation and VF VSI
> reset. This makes the initialization/creation flow unnecessarily complicated.
> Fix this by separating the initialization/creation of the VF VSI from the reset
> flow.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 110 +++++++++++++++++-
>  1 file changed, 106 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
