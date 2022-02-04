Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD024A946B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 08:19:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED2F60B47;
	Fri,  4 Feb 2022 07:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8JwN5Esy6Gg; Fri,  4 Feb 2022 07:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D244460B09;
	Fri,  4 Feb 2022 07:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6731B1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 07:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54016416CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 07:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUqZR68vApyp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 07:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F0D9416C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 07:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643959181; x=1675495181;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=74Lo1kjQFjuPi1YZ4A6lCkBvA5bpjde9hniNcIZmD7I=;
 b=ILIqX/8mA4o4+oTeJEfv9GoqyePIT2gmqt+43dAyRyuHTEKuJJNxVHdw
 gP5jgg2BRZFbJ9gnGhl6GfLxBZMMPJ1Qqg0u8O58YXGVgNBlSxrQX7MSF
 jqYnuaFXqDYsWV0l3/+NXvEvMrQzAeWKg7rV0btS8Zs7iZ157aRkv5p7s
 isSwvcHJ7Tu5XJId4kGGx9oB3OeIVoGFq995ygN4WnclYGdJWo7JXVtV/
 5DyekC/JqFPVd9UkNRDjsN0CWNW9ZyRPROlI79BUYYBCZ9Q5OaxhKRKgk
 J1WFzyN2bljJ+vA0IEX3cnT0SIgM8AwLaBmQ85miDrNC1p+bicqCOoXOf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248272376"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="248272376"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 23:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="677028425"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2022 23:19:40 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 23:19:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 23:19:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 3 Feb 2022 23:19:39 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 3 Feb 2022 23:19:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SqV9yCZQMWTcP0fluaX6wJDfFdNAJldtpIKjA06ONHuhmYDJDjT5icfReLDS9k9iv3PwpTJXZje7ArkxrSRWK2YqEQwFqNWgYU/9LgU6xlxGz5JUS1BB+ID24S+luzH5yxaoU7rQfLbt3r1WIqE2+Zsza1IsskCIcMQn7LwA0SCjKdkjwjEMWc+gquDPQW5MAT3Sr9FbILY+OdbPoe47VRktOVrCChv9vi/uYlzY+JsfVxNc9jQpb3094uNn8cBrWGrWw2R178S/183SizS9gNMIDFNmBAO7JUI4d7P83ene1Ndz9PCe7hPFsYffPnfQdlUf71h+3M/oSJBqXTK+TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KynO6J+tnz7PSiholB5OT6zkUkt15GDkI34aA1Ie73k=;
 b=CmiZid6CRUxArrB12CTX5vcXSbpCd+DouJ6rVUoErpO89cUh980gYlP/cljn+QPSuR2IBhlzDrji4iLJOgTS07SD0z3VdXvWOSGFt183aIZDhOvVAY19BpJyxSCCS15gBRW9igzsD2UY+4eUiwh3chiMqo+NGAKL21b9gtLBYRhMWB04YXSBzBXhpXHVPBA0Wq0Yb+rcuuJgvyTsolvuGzaRxc2lQtU0QQCWSgeTbyrk0SM1OmEftiDkVwgx6vxGNeffAJlRwJIdSYOTNBTzYr7sj8NkfdnpzVGTd+iKjPPZvLUH+vbV4kFcr9q6qy9O25b4073EtnRz/GJhtzPUEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR11MB1663.namprd11.prod.outlook.com (2603:10b6:301:d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 07:19:37 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4951.014; Fri, 4 Feb 2022
 07:19:36 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 01/14] ice: Refactor
 spoofcheck configuration functions
Thread-Index: AQHX55tr+0BApAOtG0Ka9nAQ3dh0eqyDM1fQ
Date: Fri, 4 Feb 2022 07:19:36 +0000
Message-ID: <BYAPR11MB33672FD917E35D4BC70A934AFC299@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60990f72-f102-4bb9-efe2-08d9e7aeb353
x-ms-traffictypediagnostic: MWHPR11MB1663:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1663B74CF80DD4B355C4DC71FC299@MWHPR11MB1663.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GJ1GPr5crl8wtfBh5APs9Lk0/4EIOzvZYrWqJ12XnEkBvVYPLlXUdvDaoyTiELtiGd1ni4w0VNCddM4IR6XkTzjFvy1ri5QYtwLr/bCw4aZV2+4JtPyosC5L0j1yM3AiA1ZkvEWHQv3uDhg1XMFUtZBfXO85wkZF7Cia/Cgwf/RhUB0BXoTHGuF4SXs35G1KD3ucsJF3AjzMMgZnWKCXXLH0K49EaIpYQZP9g0W2XeNFKqQPe0w4VwTFgZuOqtsPnh0tedH/oC6BJadtS2PWlKcw4ybRl0Evbc/KRwPngwUBrW2LgY9KWM19cBa6pni2CCNXUGF3y80442i+pPjmmX/zmvWTsVx258DBBsKZb8As5oVA5CxTZM6vXPh0igA3xMT9bgfPqoVVkhV/s+/u3mS8GdiNbG3/Ev2PTRgwGsm99I1VVgLunXevgUgo/34qCaBZVbJ/cYiPzZFDMYSe6eA+NHBGoqHJ7qQXMTQU/whxpGg2RQEh5GuXZp3bZZkViRH6eJe1mI9Gid81ZYYLEnNIGDBccBP6lryQncOyZXDKZ2zb7CGfM9vVA+Zm3/zPQFmBEpx5x0jg+LLJcU6VPAdPGkVCB0hmSV9rW/B21MHReR7lFudBgKbBciNex9ks6hgLjL0c5Vx/C4M690ZEoa6shUpyIzEKE57E5Y+6vfgXT0PmPWzRwhGfA1vQribTFRI2TsT5iS6+o/8M4UeZjA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(2906002)(82960400001)(5660300002)(83380400001)(26005)(186003)(33656002)(66476007)(66946007)(64756008)(66446008)(7696005)(86362001)(316002)(52536014)(38070700005)(110136005)(8676002)(8936002)(9686003)(508600001)(6506007)(53546011)(76116006)(122000001)(38100700002)(71200400001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g/BRgmtB0JE+C8biVTcioDEIXL0l/BklUfhXhNZ0g67P5XCGJS5dnmhU/zg5?=
 =?us-ascii?Q?cDXo83GikE4cj+ME3sBPIv5vF/A5+Hp6bKiiKJsr6ux8b9lz9KiYE/pIN4fD?=
 =?us-ascii?Q?1VQ1DMqyy0iRq9duj5qhqyTqz5wdzTuYo6c9UpRKWeSpRSJADEIy3Wkzg9e4?=
 =?us-ascii?Q?fZF0eFe+T7t04kaZrFErn3rgYSxBBIPcFTfxMmiJXocvj4URTlZznjjnKlJC?=
 =?us-ascii?Q?OKUpzCqkIXHoJ6doczTvf0FmrMndPPTfoz13nFOiopSUC2L9YwyUmwrU6MkU?=
 =?us-ascii?Q?GzXye3yduh9KR/Pc0KuxdkMqY1z3wizFpfhU9ZglYguehRzufE0UVIAbmbW0?=
 =?us-ascii?Q?P3TmeYXuwdE4iGapQzXDDhAHlOw0BDmmoJ4A7OKW4cIWKOteVLyqmDD2sO1C?=
 =?us-ascii?Q?LIqhXCBrXV60c/EZdD9Fl4W/sLnvce3wefENlV40LN4aKUqEgMiC5j9UDbEO?=
 =?us-ascii?Q?oqNs0z1DJJlxt+N6jDD3etBhO7am3fPiSVMnhaUbFS0FJchoVwL+J9mAXPSh?=
 =?us-ascii?Q?hFgGgSKEJ5y1Dc06rgOrIz4mfM43w75l7FiXeb3GQ+MEjdk0YsSmyibQ0r6Z?=
 =?us-ascii?Q?LIBfgTgoOASAns0B2uCB6MoTKOmpWusFuuMfgrE2Xm3rtq/r44tpSlD9YGs6?=
 =?us-ascii?Q?NQwE8bk0H53gKoAP4c7HBB9BBn1KRzHCZGw7xgHwAEeQXz6HOL3hXbM7abl9?=
 =?us-ascii?Q?vlWShSZ3XhMtEFJsKYRYVNQcTu67t1LSiPs3LzI2l93dtj/5BRyK9T2cQNVi?=
 =?us-ascii?Q?zoe99mBDQjSuMxLENEmF0MlWOyywFLWs0bfack2po1SpMpQmzc9RPP/cghFW?=
 =?us-ascii?Q?4r6rfWupKhBgXPppiiZ7Id1CDv9WsynW8J0lSUPywzHS6Y8gMWyQmVY40mGD?=
 =?us-ascii?Q?lxa1mVXbWjsNABJsGhVmOWY3WV9mh4f6k7sxk3EdZ8Cwyb/rFaaPzLDzOBGB?=
 =?us-ascii?Q?5jdGvy0x+hC5KdGWrvpeO6HIqE+qUyVEezQa7ZNjMtK4nESWLfiIJJp5lN2R?=
 =?us-ascii?Q?djtjhETibUMh0f2i5OQYaGMbf5O8tPhVVrYkFzeSguIc5KJbu8ufAXdGaWwL?=
 =?us-ascii?Q?NGlc/16ZvYEzc6Yyf8Kt3k46vL+Ku2ucyGZr7CLBmw/LQ9zzi068un9/TMvb?=
 =?us-ascii?Q?/aWy+e9EiWNpBLL7lYBdJQFRAkgAH2kz3nWSVL8e6LWL2yN7XKse7D9959f/?=
 =?us-ascii?Q?nzKIwEBB3pFx9VM3aie/6IYYjWd86pbplUOAH769GzHxt89pOlK2C1xNZWx+?=
 =?us-ascii?Q?aznSVhhfxQbuKskwPjLSIL61jCzegXKuUVyaFfi2930lBt6ewXl99PPeIKFe?=
 =?us-ascii?Q?70dSO/dln7Gb3XzZkcgUIMUKmCV0kN2qanLA1ZhOAY0G3LZ9yWqEH8URhSxY?=
 =?us-ascii?Q?X5r+yWGv/osZQYI7bKvE3r8RKDbeAO8fk2ekqOziTJokJl618s3Bbo5BtoJ1?=
 =?us-ascii?Q?kJXQLx8x2rU/jjf1V4o2nz9XQNzh0og3sOcB4UjXdraP3GSIcNHjorVHZf4r?=
 =?us-ascii?Q?T4DmZvbxy8xvDejNBTceM6UrGMuNEKP9aJirSjNkmgYhpSN8Uk5oC8bes9M9?=
 =?us-ascii?Q?eBH+U3SvGmlqbd8XxrzzrVDnKl4tkY1caTBgUWn2TBUI/yskevOPfCJZEhDq?=
 =?us-ascii?Q?Vg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60990f72-f102-4bb9-efe2-08d9e7aeb353
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 07:19:36.6084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xLcgUkJyCDhslBx6kKlYzfMU3hOk3sGFSmdhElCBm0UYGDD/lZ9GcmzIxmrmRDOievS+tuVAunqLeOhSH5KkLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1663
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 01/14] ice: Refactor
 spoofcheck configuration functions
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
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 01/14] ice: Refactor
> spoofcheck configuration functions
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Add functions to configure Tx VLAN antispoof based on iproute configuration
> and/or VLAN mode and VF driver support. This is needed later so the driver
> can control when it can be configured. Also, add functions that can be used
> to enable and disable MAC and VLAN spoofcheck. Move spoofchk
> configuration during VSI setup into the SR-IOV initialization path and into the
> post VSI rebuild flow for VF VSIs.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  19 ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 159 ++++++++++++++----
>  2 files changed, 128 insertions(+), 50 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
