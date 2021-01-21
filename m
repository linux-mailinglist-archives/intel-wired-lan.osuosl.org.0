Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F302FF163
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 18:07:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E1BA863BB;
	Thu, 21 Jan 2021 17:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iKBUSzOf0h2q; Thu, 21 Jan 2021 17:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43758863A1;
	Thu, 21 Jan 2021 17:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E52281BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1E1622CB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ecVXAiKkEhTF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 17:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 92A032152C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:07:24 +0000 (UTC)
IronPort-SDR: p/xu3stwAWEvP/SyysO7sfxfLtkpdbVmAWPH9+rFWdgzpS+gyker7MbcGfUp+UZF2CJbYmOZBU
 z8tIsPkhlG9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="175796839"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="175796839"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 09:07:23 -0800
IronPort-SDR: NpCoB8QicM6rSJUaAqISka5W776IlafzUI2HMzb1hVIV/VpGiMJS1iLrhtI4YxuS0MwRedVqNe
 SDCo1JLGV8Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="574328456"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jan 2021 09:07:23 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 09:07:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 09:07:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 09:07:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 09:07:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NZab7oMAaw2ZW6B5/nBpUETDzaUlzgA1SBxWhKUhv5eyYvFo78nz1uvl9oqOt9XkK8GlfTzCJfnPMUzokp0duqtzCA3Y/p0C8c+xYsYHX3T84QpIPY6QzwPYpm3zygylTmahDlrbNZe0orJ1o/y2l6eeT2cSjujmG34Cw16pZtQkKc1gVOBgZbc4jsog8U6+15Mo/n59sR+LHcYx7gf+7+lB4BmaK90hGT6hJdRIPNHC2yXErd5BJXKBVA572C6Pxc1/9gwX9RckBlzilgnVfTDKDiiaAgwZZ4vdHV2xmoN5Heegcmry37IJ8lmMghGoaPdB9b5PZcRmRJXnUMfVNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E+RcYkoeJwbFNYC5W0aic7LqdV6k7p3AU4ZCdhqUIbY=;
 b=Ye4TXDwvsNG3VR08T9i08fgh6jgk4K/TafpiSoDCvQiRuwa5v3AGgKWq1ujZOsvyOg1o4qHa9P8HJWcBkAWHA2IpeJXfHGeWVPPMGSQdFqSnWoq8Tc0RfXxRby2bdJHoKqz3ya1eyzAKtAklu7tQST5LKsII98B7nHfBxd9xmxcmkf7+mmOMD63FEaRUPFQLi+kLr6LmqbPUufVfgDGSCXA0OFUHsCTXZ3FCtetjv1M3mshUIP8wNIw7rsZjc4tEM3w55H7nti3WHiD2nT1XANzAwGrKunBy2IiEKs27PasaPtQ8Jjb+2mrokRsobLRteMQEp8u3tIg7OzbOBJOz1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E+RcYkoeJwbFNYC5W0aic7LqdV6k7p3AU4ZCdhqUIbY=;
 b=gDCcZX3Jj+FUxjBwh8f/9yxqHNKGuduRIKYjxoNwsK/kOh0cRe/KC00NyBMfqdX0Z36CKth1R5FYN52BwXTlrhw70TmhvKvb3a4OjEYmDKC0FVZqvx5jpE122O/Akl1TcIAJdpjYyQZxomTh27jK4CZ5IyGqFFIwjAXZK21bBhU=
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Thu, 21 Jan
 2021 17:07:21 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::851c:df49:9853:26af]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::851c:df49:9853:26af%8]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 17:07:21 +0000
From: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Creeley, Brett"
 <brett.creeley@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix MSI-X vector fallback
 logic
Thread-Index: AQHW74gRYaQUfdrNY0OOoP5FUtmQfaoxq9YAgACiAQA=
Date: Thu, 21 Jan 2021 17:07:21 +0000
Message-ID: <0255cc56d4a93d84d781c21f857ea4389faa7f55.camel@intel.com>
References: <20210121075247.16666-1-brett.creeley@intel.com>
 <74b3c8c5-f611-d797-49f2-63f260869c1c@molgen.mpg.de>
In-Reply-To: <74b3c8c5-f611-d797-49f2-63f260869c1c@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31) 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.139.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2281642-7822-4290-76d1-08d8be2f0461
x-ms-traffictypediagnostic: CO1PR11MB5042:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5042B425CDEDA81983390B4E90A10@CO1PR11MB5042.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TOk4Q0tCN3BlOHul87GYfxFPAJyl8tqn7HWndVPQMA07a8DCs6oSf0mYtFrWihHXhr+FzzK3dni+A1uKvjeERZwFRCkkleC/yVG13JjjdkipsP09nYfs29fKV9zrYlZS/b9nVrALLklc5pYAHx5GRG+gteXYWLqmSwYdwexPd7tVQ8XqGL6BKOuWI12I3GcomZxizGXpgvSuef6nhh03+tuuyN7fCsex2SiVZ5dRC43teVjUbWPa0BsfFcMP5CKKvqfdY64mXsNOCklDOf4PMzAvUThRftrRe1f4GMeljPOACbnyLcA/bER5rcVqWUzKtyveZI83eTmMbEOMw8JzbdbyWte4BNISemRa/vFTxVAWz9VRmb77RFAx/vGq6GKaIm8eXrZl/It19XPx3nSjB/ok5uWuvTfVvBjg/A9cv7qIv0RpnEnh2M4xvgQrA8PEf7xsmHOUenD3giGAM1iq1HZeVcjTMdAv3ZhYiEviwXUG1jSKxyYN5ytKrMALdj/uITMoSg3ZxcucsQ2srwicLxn3CVfmd9j9p0TidTvwbpAx20FCiqYxA+gbsXGp2S4D5soBJjodLdsj10gt8d37n0YwsSp4Kowg8VrGp13oiE0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(966005)(2906002)(86362001)(2616005)(6636002)(83380400001)(4326008)(71200400001)(36756003)(26005)(478600001)(64756008)(8676002)(76116006)(316002)(110136005)(66446008)(8936002)(6486002)(66476007)(66556008)(66946007)(5660300002)(186003)(6506007)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UWVmYVVVZkp3NWYwUkk4akNrRGFhRVlUV1g1Q296NEdabFVweUhJTVNuSWZP?=
 =?utf-8?B?YnFZSlRKUTN3dFZ2Y1hoVytpUDNUVmUzT0ZZUmp3bFNaRDROVFlUV3dBcUhw?=
 =?utf-8?B?SDNwL1NJVnRHdnhzaGhHMGdtUnZFOEFwaHRsN2JOT2xsQXlEVUhISnRuSHNF?=
 =?utf-8?B?UmQwNlNqZFY1dlZpS0pzMExRYVBuWHpvc2JUdGdPbVd2TThIS1k3ODlDb3dm?=
 =?utf-8?B?NDRoRGpoYU9mTjZNVGgxcjlVNDlTMFk3NDhDcElmemczN0FyNklTcWxtamxn?=
 =?utf-8?B?dlBJcnpRbi9QaU9pTUJYaU1ZWkM0N0RjRXduYTU2RDVRb1M4YXczNERDdGFy?=
 =?utf-8?B?QWpBa013WVZVV2p1Mmp5eW43a1E2OEplRUxDUW1hZkRHMitEVlBqbHNOb0ZM?=
 =?utf-8?B?UDY2K2hiSVp4UGNRQW5xNVJjeUFVZ2gvYnB6eENQNHpDQnVSQmhjL0pNSWlK?=
 =?utf-8?B?MllnMEFpdlRRckU3T200QnI2cEVpeXBVWk5PRGlFUkYvRitFSFdKcnZUYTlY?=
 =?utf-8?B?dzhoT3d0UXpwYVVOdHVLNVdoME40TjFManhsa3FSb0VqSU9YbzVyZllVT05O?=
 =?utf-8?B?Z1BVTWFKM29sd2lSb1RINW9uL0J6RHZ4V0xQSWZKdFlwL251a091UjZaT1h0?=
 =?utf-8?B?NTFWT3k2bXgxRnZSRXlMZWhqVEJsVW5JamI3eFByK2Y2a3ltbkpJSlE2ek50?=
 =?utf-8?B?cVJ5YnMyUjhXTytudThEYklBVG9GeXNpTXhFL3NnWXc4K3ljSnNqaStWTDJE?=
 =?utf-8?B?QlYxcUR6c0lqZjlwWjlIUi9xY016aldpL0pvT3RqSzhEcnJLTGgweGQzSENV?=
 =?utf-8?B?TkNnYjdQRTNTLzBwSzIyNzFYcldxa294T2Z5RnBSajhzVlkyTi9pSnJBM1E0?=
 =?utf-8?B?Z2cwbFhzeEZlLzE1WXcxdUtKVVRjOTdPV2wvejFJNExHRG5TSG1UWWRoT3Z1?=
 =?utf-8?B?MXJlT0pzcFhsT011VjJDTkJXcUVSNUZZWEFtbFNGbVN1dllqWlFLS2FnQXFr?=
 =?utf-8?B?T1JoQ04vOWNSRU0vU3FFSXNsQWFXMStSVGZ0Sk0rR28rVHVsbFZNVnUyVXU4?=
 =?utf-8?B?a2ZUcSsvb09zY2RGL1JtSWZ2TFRERFhkUy9INVpQWFEzQnYrdWF4SEZPVFlp?=
 =?utf-8?B?cWxmdWxSZTdLS3l1ZEYvZnNsNFJoZExuVTZkaERDKytoMUpGRzZFR0txKzFa?=
 =?utf-8?B?bDYyU3o3NExJRHVUSzVvbkJaSVM1eTJ6Wnlzcm9reU12ZWRLa2hqZkRJVUs5?=
 =?utf-8?B?azhMWll4UEtqb3ZUN0dCTVQ1NDZqQWdsc1hzZmRLOFBaVGFlM0Riam9VdUIy?=
 =?utf-8?Q?0mi51ORilsxdB0ndK/EwLyvO9wlv+4Tx51?=
Content-ID: <8E613BC613BA424FA1D8A7874C811001@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2281642-7822-4290-76d1-08d8be2f0461
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 17:07:21.7967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kl8pUaA1gwZzny+H+vGBTLvatQlbkv5cSV8QNdOrmzWJdvsOU4rmcQ5tCCbC9L3dChZie9d3W7Qp7mHv2ePROyc1jalL4DN1pPVtFm/VXIh2lPvqMuziperkIwZZ7BYW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MSI-X vector fallback
 logic
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-01-21 at 08:17 +0100, Paul Menzel wrote:
> Dear Brett,
> 
> 
> Am 21.01.21 um 08:52 schrieb Brett Creeley:
> > The current MSI-X enablement logic tries to enable best-case MSI-X
> > vectors and if that fails we only support a bare-minimum set. This
> > includes a single MSI-X for 1 Tx and 1 Rx queue and a single MSI-X
> > for the OICR interrupt. Unfortunately, the driver fails to load
> > when we
> > don't get as many MSI-X as requested for a couple reasons.
> > 
> > First, the code to allocate MSI-X in the driver tries to allocate
> > num_online_cpus() MSI-X for LAN traffic without caring about the
> > number
> > of MSI-X actually enabled/requested from the kernel for LAN
> > traffic.
> > So, when calling ice_get_res() for the PF VSI, it returns failure
> > because the number of available vectors is less than requested. Fix
> > this by not allowing the PF VSI to allocation  more than
> > pf->num_lan_msix MSI-X vectors and pf->num_lan_msix Rx/Tx queues.
> > Limiting the number of queues is done because we don't want more
> > than
> > 1 Tx/Rx queue per interrupt due to performance conerns.
> > 
> > Second, the driver assigns pf->num_lan_msix = 2, to account for LAN
> > traffic and the OICR. However, pf->num_lan_msix is only meant for
> > LAN
> > MSI-X. This is causing a failure when the PF VSI tries to
> > allocate/reserve the minimum pf->num_lan_msix because the OICR MSI-
> > X has
> > already been reserved, so there may not be enough MSI-X vectors
> > left.
> > Fix this by setting pf->num_lan_msix = 1 for the failure case. Then
> > the
> > ICE_MIN_MSIX accounts for the LAN MSI-X and the OICR MSI-X needed
> > for
> > the failure case.
> > 
> > Update the related defines used in ice_ena_msix_range() to align
> > with
> > the above behavior and remove the unused RDMA defines because RDMA
> > is
> > currently not supported. Also, remove the now incorrect comment.
> > 
> > Also, prevent users from enabling more combined queues than there
> > are
> > MSI-X available via ethtool.
> > 
> > Fixes: Commit 152b978a1f90 ("ice: Rework ice_ena_msix_range")
> > Fixes: Commit 87324e747fde ("ice: Implement ethtool ops for
> > channels")
> 
> The word *Commit* does not need to be put in there.

Will do.

> 
> Could you split the ethtool change into a separate commit?

Will do.

> 
> Also, can you document your test setup so the driver failed to load?

The issue (fixed by this patch) is triggered when the driver doesn't
get adequate MSI-X vectors. We made a local change to the driver to
simulate this situation and verified that with this patch, the driver
comes up with a single queue.

> 
> 
> Kind regards,
> 
> Paul
> 
> 
> > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice.h         |  4 +++-
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 ++++----
> >   drivers/net/ethernet/intel/ice/ice_lib.c     | 14 +++++++++-----
> >   drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++------
> >   4 files changed, 18 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > b/drivers/net/ethernet/intel/ice/ice.h
> > index 6efafe7d8a62..619d93f8b54c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -68,7 +68,9 @@
> >   #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
> >   #define ICE_AQ_LEN		64
> >   #define ICE_MBXSQ_LEN		64
> > -#define ICE_MIN_MSIX		2
> > +#define ICE_MIN_LAN_TXRX_MSIX	1
> > +#define ICE_MIN_LAN_OICR_MSIX	1
> > +#define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX +
> > ICE_MIN_LAN_OICR_MSIX)
> >   #define ICE_FDIR_MSIX		1
> >   #define ICE_NO_VSI		0xffff
> >   #define ICE_VSI_MAP_CONTIG	0
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index 41427302332c..aebebd2102da 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3265,8 +3265,8 @@ ice_set_rxfh(struct net_device *netdev, const
> > u32 *indir, const u8 *key,
> >    */
> >   static int ice_get_max_txq(struct ice_pf *pf)
> >   {
> > -	return min_t(int, num_online_cpus(),
> > -		     pf->hw.func_caps.common_cap.num_txq);
> > +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> > +		    (u16)pf->hw.func_caps.common_cap.num_txq);
> >   }
> >   
> >   /**
> > @@ -3275,8 +3275,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
> >    */
> >   static int ice_get_max_rxq(struct ice_pf *pf)
> >   {
> > -	return min_t(int, num_online_cpus(),
> > -		     pf->hw.func_caps.common_cap.num_rxq);
> > +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> > +		    (u16)pf->hw.func_caps.common_cap.num_rxq);
> >   }
> >   
> >   /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 3df67486d42d..ad9c22a1b97a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -161,8 +161,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > *vsi, u16 vf_id)
> >   
> >   	switch (vsi->type) {
> >   	case ICE_VSI_PF:
> > -		vsi->alloc_txq = min_t(int,
> > ice_get_avail_txq_count(pf),
> > -				       num_online_cpus());
> > +		vsi->alloc_txq = min3(pf->num_lan_msix,
> > +				      ice_get_avail_txq_count(pf),
> > +				      (u16)num_online_cpus());
> >   		if (vsi->req_txq) {
> >   			vsi->alloc_txq = vsi->req_txq;
> >   			vsi->num_txq = vsi->req_txq;
> > @@ -174,8 +175,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > *vsi, u16 vf_id)
> >   		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> >   			vsi->alloc_rxq = 1;
> >   		} else {
> > -			vsi->alloc_rxq = min_t(int,
> > ice_get_avail_rxq_count(pf),
> > -					       num_online_cpus());
> > +			vsi->alloc_rxq = min3(pf->num_lan_msix,
> > +					      ice_get_avail_rxq_count(p
> > f),
> > +					      (u16)num_online_cpus());
> >   			if (vsi->req_rxq) {
> >   				vsi->alloc_rxq = vsi->req_rxq;
> >   				vsi->num_rxq = vsi->req_rxq;
> > @@ -184,7 +186,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > *vsi, u16 vf_id)
> >   
> >   		pf->num_lan_rx = vsi->alloc_rxq;
> >   
> > -		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, vsi-
> > >alloc_txq);
> > +		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
> > +					   max_t(int, vsi->alloc_rxq,
> > +						 vsi->alloc_txq));
> >   		break;
> >   	case ICE_VSI_VF:
> >   		vf = &pf->vf[vsi->vf_id];
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > b/drivers/net/ethernet/intel/ice/ice_main.c
> > index fb81aa5979e3..e10ca8929f85 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -3430,18 +3430,14 @@ static int ice_ena_msix_range(struct ice_pf
> > *pf)
> >   	if (v_actual < v_budget) {
> >   		dev_warn(dev, "not enough OS MSI-X vectors. requested =
> > %d, obtained = %d\n",
> >   			 v_budget, v_actual);
> > -/* 2 vectors each for LAN and RDMA (traffic + OICR), one for flow
> > director */
> > -#define ICE_MIN_LAN_VECS 2
> > -#define ICE_MIN_RDMA_VECS 2
> > -#define ICE_MIN_VECS (ICE_MIN_LAN_VECS + ICE_MIN_RDMA_VECS + 1)
> >   
> > -		if (v_actual < ICE_MIN_LAN_VECS) {
> > +		if (v_actual < ICE_MIN_MSIX) {
> >   			/* error if we can't get minimum vectors */
> >   			pci_disable_msix(pf->pdev);
> >   			err = -ERANGE;
> >   			goto msix_err;
> >   		} else {
> > -			pf->num_lan_msix = ICE_MIN_LAN_VECS;
> > +			pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
> >   		}
> >   	}
> >   
> > 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
