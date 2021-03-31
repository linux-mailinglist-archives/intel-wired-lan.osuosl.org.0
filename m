Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EDB3509BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0940849D6;
	Wed, 31 Mar 2021 21:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id apzw0qBoSkS5; Wed, 31 Mar 2021 21:48:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF9BA849D1;
	Wed, 31 Mar 2021 21:48:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 332711BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D768849D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYkjsd3DZpgH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:48:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0172E849CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:48:39 +0000 (UTC)
IronPort-SDR: b7yHmAN4R3lkDpC9k6Mw4NEV2txh0Xmcp4NVVqzhpD1DN8P3foWfpgIqBKx3lB3tEP9Vlx7+CW
 GiFqUAPfnk4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192120731"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="192120731"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:48:38 -0700
IronPort-SDR: w0kFEzdY351SbruAhMQ2m/PbGXnK9mOOStg7R9Ob44tHEN3Rd5I/EkDWvlUMurhdxNjV0Zlqdt
 XNefx4zFyf7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="377435622"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 31 Mar 2021 14:48:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:48:38 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:48:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:48:37 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:48:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLamR6/FdLkRGM79CfomBfNrT3vCjXGqDol8djruUIo2a1noSVJTafTo3oEfwsTH3yIo5eESEav3rw11KHJEzf11sb2xD9vOkNw/94iuddYo1LqwGBPM1Tcmv1B1gRcsw5pFQJfYBa5jIupur/5NFmqYcidZ1wMYPLsn8tWaLOzQGW/99J+eRNjR3lIUXA/qN41RjhE+dJjNOTca1bwPOHtd2dWBW+FnGWHzSr1NM2bPoq9j/h0fRUBToZAPk3966e+cpz/nGCSXlOEvgyLzpfRm9aE7SzHcLgceF2e38bvB/puiH7kY/tQUjXkgS1v7udDQuCFEikbM8dHv4r3SCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvt5P+7YcyyLmMO0lRm7IRVES87292Px20nk+3+K37w=;
 b=YQ3hWIwW33EbJaQ8gAMNVBCPuShfeOcmQrt62yjLuT8jvlUAnel0x7/rTTBzuiUxOiVPHqRoA5TTsXSZ10EMkcFVxHcOWPCY2qQEp5rAdxRPcQ31r2Rw4DRVtqIijEXSJilqk7W0MsIjq4uUqmzdyvNGmKbABdoQWr4ZwkyrYpvBzqpWQrxXiPk7lw3+rQ1Iq7Y9cwygGz2NUKKCc8c+KHhf1ySGa4bEDvAwHf0AywoKzk2tvHU2iXihXiQJ6svPjTjA7mh4i0kyq7y0VHKDuf+qZUf09/BQNHv8KuhW7MXk8iNdgC1Bj0qOMf5sbrk5JqGAHR68gn0KPZH7okhXPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvt5P+7YcyyLmMO0lRm7IRVES87292Px20nk+3+K37w=;
 b=AwAokGa3H0cF6obFzhVysyUufoZKScAntrIFtjLGDDc7tiDwDdxzPjZXcQtqKKgrJZrZVIOQXuVAwZLkiq0OXNadqDmK4egWYyrF7oq+X7Y5VVT7bevi/MabB3kSsib5XfKxoVBCx3vtzuEZi3Mijc2hMunr6+/ZDPR7636uTg8=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB2046.namprd11.prod.outlook.com (2603:10b6:300:28::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Wed, 31 Mar
 2021 21:48:35 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:48:35 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 11/14] ice: Remove unnecessary
 variable
Thread-Index: AQHXIcjAKXW6gj+jPki/0HtBELRDCKqeq4tA
Date: Wed, 31 Mar 2021 21:48:35 +0000
Message-ID: <CO1PR11MB51053A8895D7F3AE50DF8A40FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c8ee4d3-7705-4da5-7d4f-08d8f48ebc66
x-ms-traffictypediagnostic: MWHPR11MB2046:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB2046BB3F6A9703B866E09C31FA7C9@MWHPR11MB2046.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pOORk76JHEVN11mnSFxy4EfedIIj+61KQlFlI17qvq6ZZEVw3obzcel3Z8WJecO4AKqhniCS7y9AEdWkZj+TLTmPq2NPtMikWyIXZ9YBWfZ+tjLl0uZqjUjCbfzqkF0GFIUeQF1NEH+EAurSPzf2UJLCZd/uD1GR/+um1Vj+rXS3/PYMeP4JrNGnOc0WQsjAAENKXyMPfoEwaIX0wPbVSvRag7pNZf/+rg0jlPZAN7RO3OSlmWYLx260t6I8tnrSEl+mg3u0oNPw3+wgHwHZX4de8Q8umvCnYFgSXZEeaZJonyRyyU5eCx1D/tK0AIREywyLf5QTeN7/87qwQ0sdGKJw82+kOqXNHqz9i6QSkydIOc7vtjqHCrX3gc5RyZ90Ot/g8DuBZTvYc+SfCoF68RudWxE/5T4o1tNmbV6kqZVrZbgKHTbOwh0gmvpFOyq/cwJs8+9Khfggtf6Ka3XssoXtGHPRpNXYXV2f/XKm/2082lqHtr+KtdcncybJYJvbGI1gMtQIxiS71t7hmbFo1JhpmJWVsK0hlzPIXEjGWTVK0sDJiNn8+o9hespcJjlfqqJ5NU9emQrhoR9jXdk/dg37DpUC8FoDAcANU0GrCPbSvyP/09JzVWPjzoh6vi7904fRoCMVphcI4T6UNqa0YkuRBwrln5GaMHrjwkoX568=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(39860400002)(136003)(376002)(346002)(8676002)(53546011)(26005)(8936002)(5660300002)(55016002)(4744005)(186003)(6506007)(33656002)(76116006)(2906002)(7696005)(64756008)(83380400001)(9686003)(52536014)(66476007)(66556008)(66446008)(110136005)(478600001)(66946007)(38100700001)(71200400001)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?9mFTephDPlJ/24IdZwHlVRPbtTilzLeqNWavuceFjLGsckMK6GpQrJAs5EU1?=
 =?us-ascii?Q?lhq79GWEocSc4YUwbrriOxd1f98SYk9M6tkotpHFyQadWbd4QJq55iavIiJo?=
 =?us-ascii?Q?UEFvzKmWB9PSExwf1pPm6S0Xu2NU+DxXlhcq7i7WdIqWRlzokZNZD2TP6l7E?=
 =?us-ascii?Q?yaVFxx5YxCrm5LNB7BAmiDagJ+CC5AGBam9xvlzTpWvhXfv1Ca2Y1GfJu95A?=
 =?us-ascii?Q?vhxlo9SkDn8e8HGX2HMXLKbT6ZjGJ4onrGZXJyaJcyW62HhzAgEi1yqoT+Ej?=
 =?us-ascii?Q?/9k/sWXkQWlx2xho5KeLqKRJFeScTv5Kywhz3wfldgEHJg4tVrv+GNCzfCg1?=
 =?us-ascii?Q?CMpLG9e3F3Y7ZiyQCaS7lj4eFgMkQu8Zr8apgFDUuVJatp0qisn+XOVaBIGm?=
 =?us-ascii?Q?5HCp0i2mA9RmjV82Odzd1abBhuIHWV8LSDcUMpq2rwTorpKLEV8OOpG6C6cg?=
 =?us-ascii?Q?OfUaB5BnuYUuu/wwAzEpdu19pKM4cBFuvk8jaA1Tn+5V7E8fulfpd8OOMLfl?=
 =?us-ascii?Q?+budhiBBknuXvWZQguTbganXiLrAtaP6lDbRzQNjSlO/ldMJiFgA5gMdBT9D?=
 =?us-ascii?Q?cTVCxYTpeI6OTy7dp6tPomvl6KywmWpAygJAbg2x4wmymRf1Fbno6+EY4Eia?=
 =?us-ascii?Q?0qrhxQPZ1V0BmczhVP7GnhmLWldBWcSQkmfJbTPi7p+wtMW1s70Le+MwtCz2?=
 =?us-ascii?Q?i5kAZHYQGtpQzzXNJz06Orlyyqa9sWA6+q0rrf3aEFg67tmvnUZJbz5TxQbr?=
 =?us-ascii?Q?K0T4jijO5X8dZ4wXRGv1dmkq3LuS/LKf6dDpHkIOOHZeY7GyJeUoaB0E8hN8?=
 =?us-ascii?Q?R2nEOtMZyLdd5qHjBNEkvH5XYIvknSrY8PTNDm1I5gWktFd1z17NaxO/u+Wl?=
 =?us-ascii?Q?kTRH1Fo2Hphj7C01VFPTmFD8CEfQR9M3q5vu6FSy3SgOwRsWKBmQuhVyp4Y0?=
 =?us-ascii?Q?ZN/qSjtltBmXZdB4lE52eqLKTiPJapwzR1ZKTtS51KCN4jv6MN7vXCSg2/ei?=
 =?us-ascii?Q?rzD3RgGM+QTYcPRsVmLdUaX+ttZ0I2SCM3w7m2eTv3sfl+XHnMl48ZZb4M8Y?=
 =?us-ascii?Q?cJzHSEfUjNV9tRmljVyNWQt3fQ0LzDMX2bMSK2RTp40jNGaI4KP4C+hVS6uO?=
 =?us-ascii?Q?1GvwVGkL/bMU5pnd8d9IWHuyB4vRjLdroL4o6SQ8P7SNnyxeR/t9zPAYgW+z?=
 =?us-ascii?Q?vKaW6l6wrLBElPtBuaQ8loeGDOSN7QPs2+Hc4NbW4ojGtQtEiY4CepJorLzu?=
 =?us-ascii?Q?RyQcc9ukmLgYTxZuHkCRgN1Zla+a7GgSiTD0blLGBrWqhhu8XI5KvezRflV9?=
 =?us-ascii?Q?fKZC43p1ycBykzLaAVyZ9seX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c8ee4d3-7705-4da5-7d4f-08d8f48ebc66
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:48:35.5206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TJdf8qhHaLHDCCBB/EYuAzjGxKfv1qEhsrM6LPfIOmlE1IeogaLY5bT++DQ1w5ry9nL+Br1gKzfq3mr7DdxlDZPR3LhfItJuacCzuw9iEOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2046
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 11/14] ice: Remove unnecessary
 variable
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
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 11/14] ice: Remove unnecessary
> variable
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> In ice_init_phy_user_cfg, vsi is used only to get to hw. Remove this and just
> use pi->hw
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
