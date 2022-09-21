Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEAE5BFD65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 13:57:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6E43416F4;
	Wed, 21 Sep 2022 11:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6E43416F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663761446;
	bh=2HraZIKQu6Z9Wkfq00WIUoRgrXN3qjsPB4AcU8Ni+3Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UN9OPP746FidjWwdCNqL66ldUhC/H9pOjMqH2RtGLSMx4unDJ0N4OdjzOXgUBiJNj
	 rE2W49mNQxSLQtM3BoHhVbjKIHFhct8uicUO88TW19Sm5ko8sxHhZIiO/NSa1DflgY
	 VfPhQozNBCNbXIqHGdn9jOkucpWcoz1ccctcbnaOUN6BxXPlZ4QyKyi49cgDAWqoKD
	 IgYEbELwbfG9Kauss1XoYtdrSDw/VHrS1cjmG7YuGxV0SFiRONa6jJBR7iTgvYhye1
	 5M3K9gX+lbk0qgsjGHzTAei9mEPbGhay6WsXuS4+njgsgca9bDnJoRYEtnTT1eOe99
	 i5yjlLJOThZ6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aPsFt1tiQahO; Wed, 21 Sep 2022 11:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3914D41704;
	Wed, 21 Sep 2022 11:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3914D41704
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 739C81BF5DB
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 11:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49F9541704
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 11:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49F9541704
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htTGDMSGA-Cr for <intel-wired-lan@osuosl.org>;
 Wed, 21 Sep 2022 11:57:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4FDB416F4
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4FDB416F4
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 11:57:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="300817872"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="300817872"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 04:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="744928239"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 21 Sep 2022 04:57:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 04:57:17 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 04:57:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 04:57:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 04:57:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iolmjApSAc4/vrjr7pYII/sYsr02SiNQnlQOBHDm8Z73l74fgtqnexHbBLMqNrSONXUhn45gir9t6M7Lp16BAJhvRSVn96GeKw/dOeuSbjXhV+cDSMYKOdbZAJzQoW+swMsPKkdSIJYZgePyP9UBBoGA1S8UC9kHLLXQ97uMB9ZoRl/megGxtM4jLYBLL6txrSZ2Z3BuED1lDAAkm7ZffLF5mBq998VPJ5Fa9fmQpBzjxgVzgt5Pkjc4AzjT3Ej8VSNXBnvXyHqsdPd1jjNb81drwu3ICpeRriYToskg03JAHqLSO0iuMzeSoLqg8O1VUaJBi297sMOdctFFmk2Ksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5E4vcLXJLT2R/tFfQb2XFRsy+nl/IKNS6nX47iymDXs=;
 b=JB8+jNvS98aM+GriTlJfn6WIGSR0Cg5dwQl14zhAuRB7gJcUrNGouZHTT1T8v0u30SZA0ovrSfBfCU+8L3ipZaxrZpHw1DacMYOoB7yedJlANvQJdyUdZvNcl8iwU/koKHiTRpq2NzeDB75O9Muu/EDnccl5/AS5KVj8Az4fjpcQmjg9H4Z4Ebsfk7aBWB/wl8vuuDW2AAo+m4NtwjIa+kvUtnCo4LzhnwGuEFAPiGjJNcYM4jBDQ/se4pvnjCnfW3v2GXE3eafqCWFMuA0xv0tOZPR2DQqOQmmuoPUUsnEKKjQt1XRzzvrrEdxsbzjUUch/uH5NyccGZrE8027OuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA1PR11MB6565.namprd11.prod.outlook.com (2603:10b6:806:250::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Wed, 21 Sep
 2022 11:57:14 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::7c03:1c40:3ea3:7b42]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::7c03:1c40:3ea3:7b42%4]) with mapi id 15.20.5632.018; Wed, 21 Sep 2022
 11:57:14 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [PATCH v3] igc: Correct the launchtime offset
Thread-Index: AQHYzWTpIBImbSN65UGc4H3a1xBO5q3pjuIAgAA4x9A=
Date: Wed, 21 Sep 2022 11:57:14 +0000
Message-ID: <SJ1PR11MB61808FE067068F6FD7976FADB84F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
 <e266315a-1bde-4b5f-4a83-5fbdaf00daaf@molgen.mpg.de>
In-Reply-To: <e266315a-1bde-4b5f-4a83-5fbdaf00daaf@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA1PR11MB6565:EE_
x-ms-office365-filtering-correlation-id: 37642ff4-33be-481f-c32f-08da9bc86cc4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KlVdmYazymgHi0ZeC2AyaJsRpaimEX+VLsC6kyWlfZ/TpFB5Eu9UIxLHzI9wdvxAWyQfTgAS3xulmwwQnuXnNTbNKFQRUKKFH4MjzCY+yeBj64WR69e2UpCA4yTdXwH/ojDW0sM/sbGYXB+Tn/h0JYw4HKIMbe8ypIyxQfse1jNXm8Npfk4oxxJsybKNoNh7mgpuDh1k2knoIjUuFOmgmZLFXEE5DlVk6XgsM2qCn9h94tUrOq8vxYdjpmWta4oaql2sC/krBz93GFtX1/7zbVfxILvdEst1wdFP1cs0x2AEOCtVp5NSOK5TK7kQL5EekeQdRYGqn4xG6r0Tqse4TQs3mcLa/Ef7nuBgq1avj+1PrnSZ6uWa0E3AnZZuZ6RfHNMe49Q7dFuevpBj9JiKZg1IIwJzg2jkiFBGEChaL8WANk8k1KL+Z32PIOOCMOE70lAo45S9stUMk1GtGsBdGlb8n6BgMrEZivwSUXwNraFYIKNdQarSvd8672Mk57iXpfS8FzDE8xI7Yej8L8j95hV0PAZt423ZVFxjUmeiMYIoVcy86C3/JHaZte63AQx0obzkIEJ9ch3TFeSV4i9+jVHEx3zKFcHvL1+fozYgojJYX0C15RXzjjIvGs4sLVCm7BR/08IkRPLXUa2iErsCZbAadqFQPbsztWWFyucBFddX99fJB+91WPWuri4ZmY54ZMgevB255h4qwKKnVJyQCnv9Z+cR7sgZxri9Nwq/cBtfTNefNsrdzz/yS19q76MuDIZ2EdelYDAshdweIm0d0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(376002)(346002)(39860400002)(451199015)(122000001)(66476007)(71200400001)(33656002)(82960400001)(38070700005)(5660300002)(2906002)(38100700002)(66946007)(4744005)(478600001)(66556008)(4326008)(64756008)(66446008)(52536014)(316002)(8936002)(6916009)(76116006)(54906003)(186003)(55016003)(83380400001)(41300700001)(86362001)(9686003)(26005)(7696005)(53546011)(6506007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2ZCWWFDK3JCV0FaYlF4aHp0cGhHWGVTYVhxNkdHQ0p0ZUI1SGNLbzU3V0JY?=
 =?utf-8?B?S21sYmRiZjdBd2dVc21WUkc4WXVzSHlxSUdpVUFSQmV4YzRYcnBmOGI1UlRu?=
 =?utf-8?B?cEJUbWpBTm13K25ZWElDa0huR05lWXo2ZkhndS9TNE14Y0RwYzQxd3ZOUUxq?=
 =?utf-8?B?S0VseDR4RVJoYXZNV3lWOEhvNjhNdm5Wd29INVFwdCtqRXZ3K2Q2QnFneUxh?=
 =?utf-8?B?Q3Frd09mdml3NHFna1dkRGtNS05UeWxvVzkrUittd25xMFZHTWg3TUprQjZS?=
 =?utf-8?B?MXJVTTBsTlBPZXBGMjNxbHkyOGl1K1JWbGlWN2VPa0tFbmJ3YmVGRG5NZ25v?=
 =?utf-8?B?Y3U5MmtjWU8ycmM5T25yZDkxdldOK0JFeU0wTElZSzd6R2ZqbHhRNHpyL2xH?=
 =?utf-8?B?N0NYQmRsVTgrQWgzeTBhc0NxbkV0Qy8ycnd0MmJld2dQOTBlUTFLQVAxM240?=
 =?utf-8?B?Q0p3bE9NL3hMejFCRE14TFNTUnZZK0lReUNsb1J1Uzd2eDdYcXBVSkRLa0Ir?=
 =?utf-8?B?U2hXcWFsQ2hVVE5PdnM2RlJPVGE4SHB4TUlnYlFlVG1HY0ZSOXM4YjVTQUFD?=
 =?utf-8?B?NkxJa2FmN1FNWmwwNEZpVG1lV01SYWo5aXVhZ25KUnJ4Y2FybE16UjZ2Uis2?=
 =?utf-8?B?RklRVzNVRjFpOERVTVpnTjBRUlpmY1IyMVh5ZEd6WTdhY2lOQ2hRbWlFM0Ny?=
 =?utf-8?B?ekxTKzk5WHM2UWVLeEYzMzJvaGZrNWkwQVFsWkJrL21jQTV4ejQwSTUvcWxM?=
 =?utf-8?B?OVlzTTdnRU9NbDNLOEtIck4rZXloWXNVc1ZPeXpYQVdTbFd4QkU1RnNXUzZi?=
 =?utf-8?B?OGVmMmNxc0ovbjR4RXVFMWdmN3I0MHlDWXR3Rnl3THdaWVYyWHBkL3Z5VFpP?=
 =?utf-8?B?SzhQZTBhdFVyUDRUaDdlM0lSZzJzSVo3NzVkZHRSTnE1SmFIV2JNYytESE5r?=
 =?utf-8?B?cldHeXNNT2t2aVYrL29nODdwV0YrTTBUb1N6RmhYVHZ2UHc2UUFSRTEwTGNy?=
 =?utf-8?B?c2d0UmVEOFRSNkxqbCtvYTE3eU9LdUx6dWdmM3pqQ1pkT3NMS2JSWTVKczhB?=
 =?utf-8?B?dk1VSUlCczkzOXBpR3dBcmh5MU9tQmhvV1I5d2JWYWRCaWQ4VGpDdWppcnVt?=
 =?utf-8?B?cEZpUkhOUkdYYTlVbzZiN1I1NnR4dThXbktoajVEUTFzS0FPL3lJNzlCTjJQ?=
 =?utf-8?B?V1piZmp2TEs3SHFBb2VCMnZ1a1JJSG9iRTQ1RnRmdXNoenZIbjBvbkswYnln?=
 =?utf-8?B?bC93M0xxRksrVEJZeTFWcFh2UEIyM3EzMDZLY0p6V3IwMEdFYm1jNmFRSkRa?=
 =?utf-8?B?bllHQ3diRklXSzFHQmtGcTJ0R240Qk1OMGtsWXJyaHdYMEVISnNIVkEyUmFP?=
 =?utf-8?B?U1JxZGlEaFRRUTA2UERmNFQwRTJXUlJNWmN4S1ZuR0ppTVphMXpyYW1EQ2ti?=
 =?utf-8?B?eWZ6d25xeVBwSm9BOS9CZytJelJxSVpqTTdlM09GeFhrUjRzNDlrQ2JRUEZQ?=
 =?utf-8?B?SFFwdDdQdkpBMjdJZkVOM0VvSzhyM0FVbFdzOWhvVitnRmQ4S294VHV0OFFu?=
 =?utf-8?B?M0Z5VlN1bkxEenFzSGhYZTJpKzdvRkV4SVIvL1ZhYU00WmQ4eU5pYzBMNWdP?=
 =?utf-8?B?bCs1c01XUi9Xdk9KVEl0R1dsbXI3MUNRdHhUU0FpcVhhOGxQbGp2c3gzenc2?=
 =?utf-8?B?eTdVZkQvZlFYN2gxWDM4ZXQvMHVmeUwvOFJhUGNOcndNdXkrRnlPaklPREhs?=
 =?utf-8?B?WG5xTXVvTERMUlc5VDJKVEQrVU5vcmxHaGpLdE1sbnJxVjZ6OU5rcklqcUZC?=
 =?utf-8?B?NzdCKzNuNCtIZEhpRVJmZHZvbHRwTnViTGdyUm1iNEltV05CY0hsYlpaVGor?=
 =?utf-8?B?NEZxVWNMSURiV3RzNVBHYlRyd1I4eE1tTHZ1ZXFheWErWDZQb0VQV1pqcTJq?=
 =?utf-8?B?UnZaVEx1ajNuSVRFY3JBLzBsekFlWTE5S1hMbHFNK1VYUnlkWndUQTltbGlR?=
 =?utf-8?B?SlFFMzVqSVVKVWpuTzROTlIvanljb2xoMjhmbHNSN1JDUzRXRm45VkNObmpl?=
 =?utf-8?B?WTMybmF3U3ZCMGl0aUlJODh5NmorZ2pQMkhoUkxXYVc3UHNMSmtnUExnY0Ri?=
 =?utf-8?B?bGQ5VmhhQjVqKzNHbTRndFVTZlN3dGprY1NjQ05IV0RGaUJaRGNQaG9IQTIw?=
 =?utf-8?Q?8KZ5fs+bbndHJrybcG2rKkc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37642ff4-33be-481f-c32f-08da9bc86cc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 11:57:14.6320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FPbYns2AURYkSWn8Hzb23B16xVYeecSrh/OYoPPZNSMCS3b5k025m1oETm9j/0LWYluauuBNEJnWq58Eq51HdmScE+z5IlbRI1Vo6tlCYuPzH3AIUGxxKNxS0AY+9SGS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6565
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663761438; x=1695297438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5E4vcLXJLT2R/tFfQb2XFRsy+nl/IKNS6nX47iymDXs=;
 b=e3T1mzktiT+xK27naVQ6pb+iGkZz/LR6KPJR1IkDrKZDm7UhdQgYLhXR
 TG0EJwKUGAcvGHRpsR8CP9Rj6BYuRAx49GW+d+jO7VrkuTHEsaW2SbsFy
 ihuyfmWh68+7z6W7iwcHfNyqpT0C+UlnVwDdPAGhvBkMwifg6idEXyVdE
 Bf778MXr1EGGD6tnYL6G7FXmOMyRl6Uq2WTLLqe/+n3eS5tTXwqPfPVr1
 rYzTeeqvz/K96AXolzNrwy/uWhjxtIHAdpUG7MboAYucV6jMZHeEk0vEv
 kL4H70jMt5BtJ8LD32FjuOs2JHawSL4phyTfSECrJMRMBbQ+9Qkk4uOSp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e3T1mzkt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: Correct the launchtime offset
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwg
PHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCAyMSBTZXB0ZW1iZXIs
IDIwMjIgNDozNCBQTQ0KPiBUbzogWnVsa2lmbGksIE11aGFtbWFkIEh1c2FpbmkgPG11aGFtbWFk
Lmh1c2FpbmkuenVsa2lmbGlAaW50ZWwuY29tPg0KPiBDYzogR29tZXMsIFZpbmljaXVzIDx2aW5p
Y2l1cy5nb21lc0BpbnRlbC5jb20+OyBpbnRlbC13aXJlZC0NCj4gbGFuQG9zdW9zbC5vcmcNCj4g
U3ViamVjdDogUmU6IFtQQVRDSCB2M10gaWdjOiBDb3JyZWN0IHRoZSBsYXVuY2h0aW1lIG9mZnNl
dA0KPiANCj4gRGVhciBNdWhhbW1hZCwNCj4gDQo+IA0KPiBPbmUgc21hbGwgbml0Lg0KPiANCj4g
QW0gMjEuMDkuMjIgdW0gMDQ6NDkgc2NocmllYiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpOg0K
PiANCj4gW+KApl0NCj4gDQo+ID4gVGVzdCBTZXR1cDoNCj4gPg0KPiA+IFRhbGtlciA6IFVzZSBs
Ml90YWkuYyB0byBnZW5lcmF0ZSB0aGUgbGF1bmNodGltZSBpbnRvIHBhY2tldCBwYXlsb2FkLg0K
PiANCj4gSeKAmWQgcmVtb3ZlIHRoZSBzcGFjZSBiZWZvcmUgdGhlIGNvbG9uLCBidXQgbm90IGlt
cG9ydGFudCBlbm91Z2ggdG8gc2VuZCB2NC4NCj4gDQo+ID4gTGlzdGVuZXI6IFVzZSB0aW1lZHVt
cC5jIHRvIGNvbXB1dGUgdGhlIGRlbHRhIGJldHdlZW4gcGFja2V0IGFycml2YWwNCj4gPiBhbmQg
TGF1bmNoVGltZSBwYWNrZXQgcGF5bG9hZC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbmlj
aXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaQ0KPiA+IDxtdWhhbW1hZC5odXNhaW5pLnp1
bGtpZmxpQGludGVsLmNvbT4NCj4gDQo+IFRoYW5rIHlvdSBmb3IgaW1wcm92aW5nIHRoZSBjb21t
aXQgbWVzc2FnZS4NCj4gDQo+IEFja2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4u
bXBnLmRlPg0KDQpUaGFua3MgUGF1bCENCg0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+
IFBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
