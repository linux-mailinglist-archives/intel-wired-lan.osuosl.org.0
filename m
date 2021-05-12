Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D3437EA9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 00:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3523606BE;
	Wed, 12 May 2021 22:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GYlyMzgLboyI; Wed, 12 May 2021 22:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A22A360661;
	Wed, 12 May 2021 22:04:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 542C21C1178
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CE8840210
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2YrcTvErXGGj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 22:04:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5CE1401FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:04:07 +0000 (UTC)
IronPort-SDR: DUpyqlmRPa3kS9aI3umn0JyK9uQkPTGJWV+cTyaT0bGbMjylSYjahdxpM9wgSbBtI/bd7qWel5
 GrlSrGmOcltg==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="199871066"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="199871066"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:04:07 -0700
IronPort-SDR: v40NsjAxcx0HarDiAuotSzJjJTFFNbB39NqV8ZBrqkotBhDC6pH1hHQClekvaVlZiAbzstIRVl
 Hu3qtwmDmDRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="610113800"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 12 May 2021 15:04:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:04:06 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:04:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 15:04:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 15:04:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JWq9/+LjMTsAwRNQoP6AIsZu66Z9mE4OtbbU60x7ulvQdvzT+2BPtdXvX+EDJwBva9Fxm843z7u2D+rZLTqYlwYS+i5I+v61eBOgaBHaXyitPkLuWZYfvYhcQes2P+ife+lmtG/IPOLmS+EObON9lt6yDjb7umQmv6CwQEiI9I41Z0OCQf+oiDl3/fmGZeUNCpxgU/kn0o3JWbprBydVYKTvqL7VO3y34oskBfPV3hFM3yeaZziArQG78pWebdANlOgM+RGE9jWKjTO9BM43KEWY0KP3dxWN6tSul4hHNiHWp0NVzAwO/62sSHtOPpen7WxNoJnInnRkHODl+LlXiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxKdH+GHmkJTamcKedKSyvjB+nwB/35Mrrqfbt1vaY0=;
 b=drz1KSIEwqoTNrq3H4WgdxcJ1C2ge/06bLBUHn0A6pvQ4gNm+R6m7OliyTKZJGEtLrDSrN89gJgmIIuyDLilVbnU4X+g7BQF6NsxFSYaK4wZAItLeZx12R6MyzCKP5gyN/kSALjhy9cB8Ada0atLyuiqQ6CVRrtZY+iGb7xFC14BymLes9bJ0IOtEsGu45HkPR1cOjPKfhPJQAgewoXxsoTum1dUzbGrHYh1E3XhOM8xav1kMs+tF9SbvRWmbCRq2PiMccAu43Ge04oh452q012H+CE+3+Lv45vZUHfatJEvsWUNr+GYaHwFQMjSVvKv7bbmOGKdqJVNKb3sQTGWEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxKdH+GHmkJTamcKedKSyvjB+nwB/35Mrrqfbt1vaY0=;
 b=wD/yG2Pt4m4fUMiVUB2EGvRk72NXIaIGkZxHxgrhy94gzu3ZnDbvUNtaRh+BUP6ulp96N1aJP0yfdGyWc+w/i84bv0Ji8mW6ZtW3aMPAp6NB4fp3HZTrv7BJfQHfp7NZej92twyzK9FwymZWqrf5aX5u3qoaCm6phMmjHSz88ww=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 22:04:05 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 22:04:05 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 12/13] ice: reduce scope of
 variables
Thread-Index: AQHXQo+ugwD9MAj6BE69eQYfYiwoVKrgcDgw
Date: Wed, 12 May 2021 22:04:05 +0000
Message-ID: <CO1PR11MB510510D3C4C4EA355F830FC2FA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 5af7f43c-02b1-4dc0-eb92-08d91591dc12
x-ms-traffictypediagnostic: MW3PR11MB4684:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB46845312D3CFBBF4D4E69C2BFA529@MW3PR11MB4684.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:381;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5dVcNIMT0UOnhBqGxF3nlOUW4zpR/7z4zeBY3kAWumKDGbavSEznlqSFeA2EwE4sfi4o+hItd4LHQP+KjEnTXD//5XfP9TLIj7EXrgLQCIU+x5cMF37IOvIh2wpqkR6gJO0R2AmcWR6XfuHnYVl/sEC0prV6jxhngF7V69sZ1NXA+yJPI2/CCqks6O/BVfnwOO2T9ra8EKVVSkTq3xDIDh9qXCzFQu4RmCEWMS1V35fIzKXet0yo/3xLupAbGw9dt7+BwJvPCXsHokKuRuUlC47/h0HVgFNjUJVGYEqCplyM0sSCWvgr70B3+hukJjKPfqFm0S25dV0+x4PxulklEohXhkisoPaYS2yF5ngyidmbE0+QlQbx61rUUXB8TVeN0r1BqL4epW243DVw+bvQNPvEe3DNGg8YnpgcGqo60HmsHuCukm4igZPIjIr8eFYh7KLlSubpTuZSgDPzgIivfswLYIxPJR3zPITMoF55YAcEsE98UNSivt6dmBkYYREUqFnjgrmaq/V/89I2N4Y9CrJVrZIwvKt4rIfHIxc37XjB2lg9pqiUNSP4uBRGXEQiHQrI7U7I0tUZAfiaagoK5oHTVg9sCnjI5DqBGt1HRgM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(376002)(136003)(366004)(39860400002)(5660300002)(76116006)(33656002)(66946007)(53546011)(122000001)(2906002)(186003)(110136005)(7696005)(52536014)(316002)(26005)(83380400001)(8936002)(9686003)(71200400001)(478600001)(66476007)(66446008)(8676002)(6506007)(38100700002)(64756008)(66556008)(86362001)(4744005)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?14evdSRlK0XIajsivBTcoAy8xsbx41P8tuDVwHpKU2hCAP11teqs+NB4sqdJ?=
 =?us-ascii?Q?GSFN3SXHdf+xcWXDN161XiMksN1+kdgQZXc7lYQO4qw9XOshC08dYQ7dzz/I?=
 =?us-ascii?Q?+yMspYY4Md7qjVbeEwAra8PxSFPixtnztUEnsonxA6EyjLdnT7KZi2+MZZ33?=
 =?us-ascii?Q?ectNCLEEnYqG0gByn6XIpu5uOEF3mVfEMiCeSSFrQZIAkH1T+/vAK8e/4Oji?=
 =?us-ascii?Q?0EnQ7pENCIO0IV0G6AaAIeS+H0wQahGid782EpbJON5bwguNq11aIa5tz4JT?=
 =?us-ascii?Q?02YfwcgWl/8r0HqVJATyWzzlspefG4b0aotazP1FcmDnpu1kjgUrVxkwLpSO?=
 =?us-ascii?Q?CwJp6kO5ZZSQC3RsmMrt4yl2PyYjzvnF3jtu959y49WhgHY2uIb+CV6G3Kq3?=
 =?us-ascii?Q?YIKUDbuqQtaEGr/SZwAxtiVn84QysDVi9A5z0P7p/zzX0mSRDRDl69owvoMM?=
 =?us-ascii?Q?BzdMPeB6IpUAI/UMyTuc/SNckoHNN1sNxdzuVWOp9i8n3BpVxgvx6P9/6XXl?=
 =?us-ascii?Q?+gVhNVAbMhAn5nn0ueuCNobD1/ILbrW2ECuqUaPJ6xS4mRDYfBqv2dEamp5V?=
 =?us-ascii?Q?VFsnaD1AJWqSJlzxXjF/zanZPLKUrnkGKNdiy+I73Di+Ya+/66FGugacFIqR?=
 =?us-ascii?Q?wceV2wcCbh0xCBON2gRRFjmq5z9QdqIq3K9W5A9LCkq/fqsaGJclDC5x2GRI?=
 =?us-ascii?Q?YXA47uon2Dpoq5A4mubxH0fymGyvSs3/Fj6tMsGDHKBEEBDE3UiPwE7+L+vy?=
 =?us-ascii?Q?sywsv89ALTlJuAZYS+dGharwuyEIUOe+4fCrx+ObSBdWdDE37d5PqmAmGAmm?=
 =?us-ascii?Q?0nX7Q1TiOnoApqEx3r/e0F2ZPAAFiHEdUjDnQZZK7aKMl2VEliewgAOMdhK7?=
 =?us-ascii?Q?bQWG00fB/1+OzxGSg4ZpZhHF1uukQYo9DapjdK8A+5eQ9X5cKO+UOpFXsXD7?=
 =?us-ascii?Q?DdLLIlD4XfurhcdHrvUr2p3QGJnWakRmQjba7fe05+kOdJIVeAvYd/Id7paB?=
 =?us-ascii?Q?fxAJ9M+tT/19xQNG8b4BoEPNLgP1HyeeJdw20qxD1NWatna5xhqjU4QrONgr?=
 =?us-ascii?Q?DxcuyV2ydZWLPnOMSsTYg3wod31h2VyJXd6DTyOtTIlqmDHITWYisaXa7yLH?=
 =?us-ascii?Q?fGrpcJ698maw4TCgoaziLZWxf+AB/yAeqvxh7nSGYu+a/ZAnDfgQijXHFF95?=
 =?us-ascii?Q?dK8yPJHcvLnJOqaJVG/xgbwQTLXiuyII3Ic418GpDD4IpOcWPMJO2Zv7UELA?=
 =?us-ascii?Q?Di572DNdBYDGGYU4Wfb8b9QZzPCrhdr+Lz4n/WEssD3l2/X0iluzCW1lNrNz?=
 =?us-ascii?Q?Kg62DMo5uga21wjs1IhpsGX2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5af7f43c-02b1-4dc0-eb92-08d91591dc12
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 22:04:05.5199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gyFFP43gYVmrqzQlMKJNGOGdmkCLTE61zZVYYE9WMXve7gegmIwtdjqfx+ZzCxD1zmJwW/K5XpFp1I7P+EzMC2AFanpTrnBkfUWo7b1oLEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 12/13] ice: reduce scope of
 variables
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 12/13] ice: reduce scope of variables
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> There are some places where the scope of a variable can be reduced so do
> that.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 8 ++++----
> drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
