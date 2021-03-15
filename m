Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EF333AD3A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:21:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2C6B83521;
	Mon, 15 Mar 2021 08:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f_-lDOdOB2rl; Mon, 15 Mar 2021 08:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF964831FB;
	Mon, 15 Mar 2021 08:21:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 676751BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56FB46F52B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPrerkG4TRa6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:21:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E75E6F4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:00 +0000 (UTC)
IronPort-SDR: VmXk4YwI5wI7dx+Wk/NNlApX9e6Z+8JTGCO8IpmjDTUfLI4ojFa8JBWpEoOMrH7efmHJJGpXLB
 arxpYN18kREg==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176183239"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176183239"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:20:59 -0700
IronPort-SDR: J4wZ+2c4HW4VN/55HSN3OnlY2dzR/qHXyhJQDr37Y9D1AFnrcP/c1Uvzmp+K9NeYT0/pCMC+VT
 c9RrqVnv3UJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="604767970"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2021 01:20:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:20:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crfINpazgciIRHi+XPBNdIvO/jS+0LdVZz+2SAmjZtuV8tOG7NdMzK2CafsCCQnhGY+3GQ1BrIR4gN36xRqDoZvKKGMk/n2jb2qimlfZ3ecE4wJecam94lpDQZQPdzJPe37ThnaW0/VYsmgOvw+BH82sddiiYJinZi1C/xeM5dpKVFK86UZwbtQ0lPydsLfGaY+htlIBW7H/moZomsV5LLKqy0+dyblwokQplAM0UGDRusqfOHIdJ0kl16NjLIs1p9R3BOxbJF98QDRabzW8+W21jwi0KOr8Ojce89J36jbYohlKDjpa44mDGZTMV4BUYYr2f7pOxnRjl2yKI2P7Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFHPzjl0Tdl3pRRSXAKC/EuNSX4jejC5sPMxtwfJ96c=;
 b=W7JbLD8wU7ZCSjDYRPyKipqvBVDy0SpOtTBKsrQHv4RBgfK2zWVXro3AQuCQ4nJ6TUeQR1+y5AS5GBCq12+jU+VlewWB+ZCAHcElRTdllkvIENb1cWPvwGj8Qlfwqr9JKM7lxTbJ0BekpVUBCUN2A7g2y5wcepRR0teJN38LQ0b+4BhupV1V++kCDjtksqBwqi8wYXbuy2oyS9AujbLpeJhJ8ot73/xCfeDGYFJPcsJVYObM+RH2l6M9u8C+v2l30cWpwgBlXzlI39XuwBK4kOiommT4epUFRb0ugs2bR23HmrVUaDRHnDGA+xRmNebxgof8ByCJqzoPo6MajS1mRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFHPzjl0Tdl3pRRSXAKC/EuNSX4jejC5sPMxtwfJ96c=;
 b=pycyotdKeE0AdQFQbtFd20quOvgEGNhbm8WFlKLp2OXdL+1vry776p0ZA52jfmhb/Sxk3X5VsI4A2Enp8XC3B5RQ6yZRiVPhrj6ZxvzCJlUkRrh7kCiV2fCmh53QmkbotpB4vR/lpwzUYHkJe4nOQe1iW/Lj9vnaJjl2ZX8E2cU=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB4506.namprd11.prod.outlook.com (2603:10b6:5:205::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:20:52 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:20:52 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
Thread-Index: AQHXFJQY6qTRprL4vUmPMoFmp1M9GqqEvtCggAAANkA=
Date: Mon, 15 Mar 2021 08:20:52 +0000
Message-ID: <DM6PR11MB3099D979E7D5FE73CA4EAB4CD96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-11-haiyue.wang@intel.com>
 <BN8PR11MB37957CA9B65D2897CB874027F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB37957CA9B65D2897CB874027F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23a7eda4-3088-4701-e7e2-08d8e78b3fa1
x-ms-traffictypediagnostic: DM6PR11MB4506:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4506196C8D1ACCDC7B4739EBD96C9@DM6PR11MB4506.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ks0rWZb/cv1/y/FDWGqPZbzOcp/mHTy3sta2iirphKMQGKPKnVzeikoX/B/tpg7iNUCCGRHWp1+5b+UgbLLy4bV1wvYq1z7pft3rn3vEQI3RpNJJdVFDWVCIZd//evYeR2pPBRusawPw/tXIIeRwJMypWcckyYnfUdR+LUSj05Vf5TdrpW4mxG9t1j5GWJjyia86iXpWX0ByQKP9YWuCTvCUMs31mK2q6AmoCQ7UurnhCH0ESp3+uymbF0IYTGioH2gXABafafXuRA3lS7Ff4CNncMeZ3dHf264/N0yI522hN4AY9/hUFXtmnE7x8QclHGua8kUfZ7mESHcavSuSG6WBVCVMturSLKs9bfs+XVmwXVovZJQic2HsCEZPdg9RkrGcRzwhErnDI2rASQ9BabdHpBvpuFeGxvzvGrfBOVTfIrRTizahzraenA8d5CQOXA7rtCXMNOIKHSz7MmDioHIE8aZaBfOukaIkiCbQFMJEZHOXKT44/cedhG2XVEsGNLH/GSegCEQFe4obrcYF99ZkRdnO/eyajkL8MSa/qr1f9nzDgIRtMZyXjgN1n8XD1Do4c9J9d6NrGF/2PQfYmGHL4kzdqsS6QW6F6HLwmNTbf/67qvbJqK1eKx/6WRBG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(376002)(366004)(136003)(8936002)(5660300002)(55016002)(86362001)(966005)(66556008)(64756008)(52536014)(66446008)(110136005)(7696005)(478600001)(66946007)(53546011)(6506007)(316002)(9686003)(66476007)(4326008)(76116006)(2906002)(26005)(71200400001)(33656002)(83380400001)(107886003)(8676002)(186003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?x4bjrrla80ur/bIF9sHsn4hod0JCWwMAR9kBw4aBIa1NZT0rKlS5D9ixX0Ha?=
 =?us-ascii?Q?njn/wb07ByNV27/t/3+u3G0yQWpU+jOAjbhV9Icxw+fgd9pN5dDCY4ANVhZF?=
 =?us-ascii?Q?DGv/SWlsBcFl4K7LHHvLkZcfOdv2Ed88sclOdXsokkz0qQrwtPIehyyyaKUF?=
 =?us-ascii?Q?/K/TlmwpQulcBAwSq4v8RCAj2Wodm1ucdcm16lrxyxOyVpbm55oN2q7xBFen?=
 =?us-ascii?Q?eLOS52vXsH2FjeHdoYGuhegRgBiCxCmIwNWXx5YdWt0//2fcfn4p/tCuuLDB?=
 =?us-ascii?Q?h+EYhGZwvuK6f1kQ5O8rjThVz978SbXyPdyDAgsISU3YsAZfVXCWEVgSLFiT?=
 =?us-ascii?Q?FbYJ8u2uO673HNNwVoy7gvwmUWZnmZqgZ/Ja2OMkkqMRK+r/29fU5wxUNeMY?=
 =?us-ascii?Q?BWhlpMJXI/bzcBt9fzqAya3n+SamQ4U2fFyw3wn2R9mIv00NIh3B0iDXIs+b?=
 =?us-ascii?Q?Ub0Gk3CONqf188vSNDKeDxczt7rCX47l92RoxPV/d+10FcBEM129j41ANF9r?=
 =?us-ascii?Q?CzQlopFM3mKDLY5g52rbWNsMyDkGtPfGHBENcEpkx8Dnh9AX8sYbg7sYbepR?=
 =?us-ascii?Q?Yu8BxOLoIafn0HUeiaCg6cgMiSg2PGnerVDdYOHZ63SenbE1+W1r3CRmXfRs?=
 =?us-ascii?Q?y102hDuVLG2TPzhBp253sX4TffGDyj82y8HJyWeyzh3tWY6EC6enk1Ws+JcH?=
 =?us-ascii?Q?pp77wWgi2Jw4HH/44wmfb5zofjqTcu7y9CKNUlcKV9QV7cV69UTfGHtT/UGY?=
 =?us-ascii?Q?0do67yz1KlBcaDKWARI/IwIMxCw87hEhIJ1Uk+c7yOfAwGE+WlEIGqKdBa9O?=
 =?us-ascii?Q?au6PNFGKMHqMQ7ExkG/vRGoF/bTFxUF32EkHa0S/p503cDSi234LpmbTx2z6?=
 =?us-ascii?Q?vYuOLB+7BhIV+jp8hWM0LB63QwLHK7gQ4NPily0+E/IkOpKD5X6UT9tI/9Mz?=
 =?us-ascii?Q?SAF8lD2+YSeIm9vCVaz9Xc2Pd0lryTR4b1Pfampn2rydV3KIJm0phre2+ACu?=
 =?us-ascii?Q?3oDh5bBbdOFiQKqaQeu9a5jisrHiQJ6WvQYkh14RdxtNGecMiLLgBuSa4uUI?=
 =?us-ascii?Q?iuxg/7qnC+kWe/XyKPq7rX/nlcQVapjOOu9m4sDMA4AmXH6jXFVyqZvZ05bt?=
 =?us-ascii?Q?+/nDTCrYcJHMgL+EqhaCpbx3B9oFMHv6zHX5rew5R5LhzLWvQWybntw/3HV8?=
 =?us-ascii?Q?n30BmJhtkhuaP+e14WQ9+K1qVQ+inMdUJXd/2TjXIjY4OUnKSOaPttqFQmYV?=
 =?us-ascii?Q?egB+Q6srzP5nB/oWPGGwPtYnvD8Hb9QgJalYYNNGDarmA4BBfL8M27NsEAKs?=
 =?us-ascii?Q?PNG50Hbs2FZv5qB8VB5JdOqR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a7eda4-3088-4701-e7e2-08d8e78b3fa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:20:52.5271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dEYUhV+CdkMXvZCjw64v0fKJh+6+GEc9ZkE3PjeUopFBlMVRRWc6ZLhw0t4LmFxUnaQ8gTH19KNRCpIvuHC/Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4506
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:20
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2 protocol
> FDIR filter for AVF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 10/18] ice: Add non-IP Layer2
> > protocol FDIR filter for AVF
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Add new filter type that allow forward non-IP Ethernet packets base on
> > its ethertype. The filter is only enabled when COMMS DDP package is
> loaded.
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     | 15 +++++++
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |  2 +
> >  drivers/net/ethernet/intel/ice/ice_flow.c     | 17 +++++++-
> >  drivers/net/ethernet/intel/ice/ice_flow.h     |  1 +
> >  drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 41 +++++++++++++++++--
> >  6 files changed, 73 insertions(+), 4 deletions(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
