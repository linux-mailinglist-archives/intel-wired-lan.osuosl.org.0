Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A733833AD33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:20:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 535D5831F1;
	Mon, 15 Mar 2021 08:20:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGdXmJWM8lvj; Mon, 15 Mar 2021 08:20:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30887831E7;
	Mon, 15 Mar 2021 08:20:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 089911BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBAA54016C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jl4yAR71fa6Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17C9040146
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:58 +0000 (UTC)
IronPort-SDR: lo20V2x5pKuA4onLzrH+9fbb0KyV+1j9p1FWCNNfgyA6KkTXYAF9O8QySvRBn8CO2kfU3axKsQ
 9R7XIxqL5ImQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="185693528"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="185693528"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:19:57 -0700
IronPort-SDR: ncF2JEBYvVxntIsZAhOeLSkXAl3kSlviRHMMN2Rrqfh+3IgiSSaHwCNJRyy4jQ04fHJCOmEQ7i
 sVaVBitrXOTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="522079568"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 15 Mar 2021 01:19:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:19:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKkwpCnSdTH7Fzl8pNSILeQI40a5Z9/WjaTnTghS3b0o+aM0OSpJ0BGp90b1zLaP1VA18Wk4ouqZPF6hLhb3JwWBglWEACW+rXEzKeiBIk6mInFeAs72Ds4YsanB0s+50GhXdYra4lGFathXMFnVlIySg+353aPJShBpkbIfqLIjeyAPTG1mh3skT6Zip1I4gQc9aYWMYiuuHGo0RwjqYRsNRoqNKvNQgWkxW24G4g7yuQir3PRw7OZaqwsli0NCzjAjp44HVyr0TyrX3SRDYaS4m+TRsmPCccFTGFE2NchvwIFI/j870F/r36eZjEH2Gy6xsmJuJgVq3o7fydRWQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tY50NcQrGnH/zs78ZdPKVBpGrQ6Z5xHPi6w2riiMZ2Y=;
 b=IZT0R78ixfv/YfwZ2/1eZdDcm5pMfRT0GsS7xThQGYM5A6gQeFeDON7ZEEepBZX0TTjHDJ4GY5CJYjn5v04wsZ9ZNaJPYtuTa1yKSL1V/IKmZ6PNyFJBCO8dO1mj7w4r0JAdTYBE2D3iSlspaKn6qpqilsLUVFQJj7KCXipYPGBpO+C6WO5zBYHAUN2km4Y/BQa6grWT3qkMm0iAcAdEzs2OtxMb96GG8i556jCDsYQAy4OoW6LfYjk3QFTzyH+2b4JhcNTKumQo7LB5HWnqoVWuY0ozkpQE2MTXulp7l6Xrlda727D22aDMxWQf9sJjzSdMDPKe7Jme/pdrejCPlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tY50NcQrGnH/zs78ZdPKVBpGrQ6Z5xHPi6w2riiMZ2Y=;
 b=lN1VLuvSFeZO0+mxmXw0YYzM4s9P7Z+C46BBYpWFMmypYm0p18NuI1/xQox0i9MccVS00hGDzkgq4ZPOp2krhZ54StBBdSXX/75+6LesxGn+0sgp9sWuQZKzjABaeJ9bZRvdd463t5hAcHZiR5pzehZiwAMVJ6WBKgTxYX+W+/c=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2801.namprd11.prod.outlook.com (2603:10b6:406:b4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Mar
 2021 08:19:52 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:19:52 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions support
 for VF FDIR
Thread-Index: AQHXFJQiQnWgjYSalECbN/UeiJbomqqEvrCg
Date: Mon, 15 Mar 2021 08:19:52 +0000
Message-ID: <BN8PR11MB379576494123FB2B157ADF7FF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-10-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-10-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff62c97c-f209-43e9-4da8-08d8e78b1bcc
x-ms-traffictypediagnostic: BN7PR11MB2801:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB28015B605488242EF4E97F2EF76C9@BN7PR11MB2801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wmh+MI62nsThtdBscEVQiLrFqp8+H8S+9qY9e12sAwXjw4JV32y32UmY3Ksa/lvbh+rfZBpmI/LWwpZJJe6LpXxvxx3Hk0h2RwUurIISMhW0ylKPsuiBSKXXxcUhlP3WXXM166fL9TekyeZrzSb9RzmsZvdz8FOryQIRv+AMB6893KNpvM6zuZ1LSa7imfQk2hfRKkN0biquyIuhOtyp737Kl6Xvs2/MgqxYuItUNRJNmsX9eeitlIjra9t4IFypE/HfjdSyfw5mJaBNXQSaf/hLrIq7ztr0nU2rmDrpaaWNphVkvqRgzc0iaAXK4gv0dBb3Y19PUncOeB9Llcc1wgqOS+cw+IofDcgHHdgvePoYqedkpS4CrdPaNAqMu9n/gx/nHt+Bz1/0P/NNJAF7Go0AAm2QqLnywGNr9235W8u3NM5ImQM/WwQBsPwLB1IeE8bNSVB30k97jaMjY/PLPQgAAJadLR3c4Y4SU8lfslwHHaz5o+8DtT33fMNR9/2qM4iLM9s2k69WDVM2T1haf/p/aMiVua0M2vkiQHjcK910w4ahzEwm9iYa4c6pRcvgfnxAAlPrDCFAFJ7sVkCK15lmzo4fA8ol6oBD1Np9CxM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(366004)(346002)(54906003)(2906002)(52536014)(71200400001)(64756008)(83380400001)(8936002)(76116006)(107886003)(66556008)(316002)(5660300002)(6506007)(66446008)(4326008)(8676002)(55016002)(26005)(6916009)(7696005)(86362001)(66476007)(186003)(66946007)(53546011)(33656002)(478600001)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?UZ5SuJ65TwYzrK/l0xIKjZV/DGWePo74b2Pbka0IqdOid35r9OhnufnHOCDT?=
 =?us-ascii?Q?uVjlkuTCxXEABYXCkS4sMwCcmbyT8sa805eGtNBLIlQH23jESNalUvBE2mKZ?=
 =?us-ascii?Q?i9q8kA1M2fHP/JTmm4+4nR/I8Wem8xfD4SGJXbt33bCmlLUuIVxmuDdkjME3?=
 =?us-ascii?Q?bKJT2tadBmNBACAZ6ofL3tc/8JpHARddrN+k77Ki9XMe+ThjyeXOiPXQTWC8?=
 =?us-ascii?Q?ECYyBh+VP7IjX5elO1XOcWTm+FUrLR+PsG9wiobjEEBIAWIiBY7mhelS0VrB?=
 =?us-ascii?Q?GDLfba6s8PTjvldHdxmI9OB1RGANH3LjNnkGSTXsIGaMauuc5YFHgsgLie7U?=
 =?us-ascii?Q?dNngCKL0Hyy2Dz+lfP/eSg9gByR6l6/fe4pS5l9XNbBnFZi0etDwBL7Zl2Er?=
 =?us-ascii?Q?SwNG+6raylSZJCDX1N3j6gTk7TOybE5ZnV5j79mF1/wWEaaVTxfc3akzXXTZ?=
 =?us-ascii?Q?sx8paBs7hLOmgR2yTVTwgX3IQE/4pk4+s8ywa5TzD5BdVDCegZA5onQXORDG?=
 =?us-ascii?Q?OMi9enaWW1A4RMJpIJtXsVMt05QE5tMN22wsotrZPXnmx+88MDY05QRAstyy?=
 =?us-ascii?Q?0M7oKDAVy9AtysOeOalO6OPI/oUtVNw51tni+6ypl0j1ZnsADRKLbBiEo7pl?=
 =?us-ascii?Q?mEKTFMRezJeiOQH67PDzKw3IOom2CPVbn9wBOC7sO+4fEe8qO+ADfL5V2RQS?=
 =?us-ascii?Q?DTQCsXZtitz73OvfzlkLp6aTPnzVro4OhzAuXd3vnjpimLBvEt1pkV2Wrl7g?=
 =?us-ascii?Q?FqR/i0jZ1Mhk0FPCWtvnsMnSaDBZ1r8g2ikppS7AWF7X7cDq/9BngyarN6ZW?=
 =?us-ascii?Q?O+y8BAGRD1ehY+LBn2kB+pVcmRgcZhW2T+sI1BXUlTp7BFxDxu2VGR1fwwRz?=
 =?us-ascii?Q?g2U7PmZe+9x5GlD4xc1O38xS/pbaPXZFUfwdqE8bQUT/1tXm8NamQtgYekeV?=
 =?us-ascii?Q?kOFfK23hpnBqwYKP6kqCgcqmlv3gNRuJ1CN+vAT9MsVw4IAglFVudZhK0qbF?=
 =?us-ascii?Q?p7PvpgeTb52GmvY7/uP0LYaeeHL4/Mr7kmtBSmgsNJrOjtXpjjWTf5QJlF0D?=
 =?us-ascii?Q?rQjeumdmqhTxSZxSqLQvoNS/eROUgDpUd4M4/34nKKRcPsJhQcCOJGruXkTu?=
 =?us-ascii?Q?1zkoJvkDQIs82e7xvSg5wpMHTt3K7Qzv78HwoCZU3B2IiIz1KJF1ul3wOKqw?=
 =?us-ascii?Q?J943b6i2tklEutQmh/tY2iG6lElsKIQmiIwPHvlyRNyLtipvfALsGkYdImD5?=
 =?us-ascii?Q?comK+IuEmvbJWkRXYU/oAXnWweiRna1R4oQqHM0nypayW/KO31g8ET+t5N/Q?=
 =?us-ascii?Q?NrVontl/FCdUR/dTLUcPTbKw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff62c97c-f209-43e9-4da8-08d8e78b1bcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:19:52.3161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: guPslbH6ngRgWy6K/zxZ+mHl/BB6Ikb/GsXBMKzoyoRo8gYT4EZq/Bnz8DrrQDKsFfOPjybVbD4UJzO5Mzuw+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions support
 for VF FDIR
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions support for VF FDIR
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Add two new actions support for VF FDIR:
> 
> A passthrough action does not specify the destination queue, but
> just allow the packet go to next pipeline stage, a typical use
> cases is combined with a software mark (FDID) action.
> 
> Allow specify a 2^n continuous queues as the destination of a FDIR rule.
> Packet distribution is based on current RSS configure.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 12 +++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  4 ++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 10 ++++++++++
>  3 files changed, 25 insertions(+), 1 deletion(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
