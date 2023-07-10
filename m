Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF0974D603
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 14:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0189E813A0;
	Mon, 10 Jul 2023 12:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0189E813A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688993634;
	bh=RX9HKm22ClMtlpuB1XshOWE4O2jpLfB7N3z4b4GyYSc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5cdGhHd+97Js0nKxgIEHmTK/PV+WZSqJrI0BJe7r0McUG3dKhvWOPD6eXhZ9nbxeu
	 li3dWzYLQUqDPVibLLwF3hoYZC480kFmlf+h6E+mdxUUQ02qvL1fe8J8i4X4og1yrv
	 Qdh3jNZgmU4D2Fhe0mSQmDu+u10PUkGGp4yHFxKAknfmLP6iJIfgKnJWXbSBcSGPpk
	 AXR7tyHFHzysXsiVul/UQhTtLb4uD+F8eiwKXN88oJ6Gl1xptwuq0Gxb2JI6SDw1rZ
	 taeuYXkYFoOKcpRuyA5Xe9SaOV5eHPnbA3ldjrtOV+uC19YCmNmolBmIYyzMfnEQR/
	 2IDomLoj1INXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXVtMUJS5-Hy; Mon, 10 Jul 2023 12:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7EBA81260;
	Mon, 10 Jul 2023 12:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7EBA81260
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 756851BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 12:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C85860AEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 12:53:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C85860AEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89Y7DsFosrDL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 12:53:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D3BC606A9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D3BC606A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 12:53:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="366907349"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="366907349"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 05:53:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="834260119"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="834260119"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2023 05:53:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 05:53:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 05:53:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 05:53:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUKEj41Suyr88kIWaezmGkKvMIG5yxG3frQtr+dNC6x1+44Wy1ZMz//BGJXJn0bjJixsrRFlFSgFRd/BRoaFECrGZDwW4MwnaqojozzFXs0+iF78aOjT57YJDbySe/47jmk/VEiZJJ6Y2bty+we2VZhHVf8fFllSkmPEcNr//eEIdnXbAjMFudXDvJ1+DGOMOdwXi80AowYvcSuzv9UWct5lIDYokckyQ3ZeFtbl8zcS0NIHPitc84n4f8bFPY1jpoQ1kqaLfrNo2nHn2OvAF0uVvNFW5X7AeSe1Yupdzyo6Yu7khRMMhPJ0YCsWRulc59gv8b3dK1j2EG49DeacKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=olVRqiLZvBl08odmZMqm8uO575lwtRWt5OKPd4210Ag=;
 b=V0B8aPcUoUvfFypG2MRKeHdzyaiQunoL7+b3olSTrRXpNJbJhxppPREr9obmlQo1y5lT1gawkDcnDyPWA3jzcb8Cx03jf0aMV2vyJcOdSHA2+RNqpDgVoAS5ExGVo4btCxc/ry9hEchQqcbRLsn8NNjN9mHU9FzFXVlgl4ry0xbbdGi+N00l4hVLj//udqX/PbyAQKDcRufg8unj4vqjWqR7LeiI+RXFzh035QgGJ9H9rRQg/p1Kvwca3R8cSyzMo3tesZdaVdZzs3+g57Slj375U4s/IUicBfjagyleBVrxKcNlDMOMgR0aRqqoXXAAS51+oMk67+OdisjNF804iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 PH7PR11MB8570.namprd11.prod.outlook.com (2603:10b6:510:2ff::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.30; Mon, 10 Jul 2023 12:53:41 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::43c6:1db:cf90:a994]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::43c6:1db:cf90:a994%4]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 12:53:41 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v3] ice: Fix memory management in
 ice_ethtool_fdir.c
Thread-Index: AQHZr+vhEndH1gdKJ0+JkM5AXYf9cq+ujWoAgARtl5A=
Date: Mon, 10 Jul 2023 12:53:41 +0000
Message-ID: <DM6PR11MB273133BC65028765D6739FB8F030A@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20230706091910.124498-1-jedrzej.jagielski@intel.com>
 <4359387f-297a-7057-d7ed-770dc021086f@intel.com>
In-Reply-To: <4359387f-297a-7057-d7ed-770dc021086f@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|PH7PR11MB8570:EE_
x-ms-office365-filtering-correlation-id: aa5f4b62-c1a9-405c-eb0e-08db8144afdf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sR1vZ4WAWsNMCQ5p88vtfNfQYXRHxRqCF4OTg3qy9XAYRJEJbvq4F61AWGGU1bNqKspRSL06mmjwb6+DQSqq6TChBZI8p+EQtbuUmR3f9FVdHIkZwdtiGso3abVJKf/0zviXsMWqz8MWogcGlnlYNpoKCkzk59jbIGmXLRvdbE/QC0IBYprs1CCGl0Ar+1jEoAWS8r1D8K1bCRXJXZLEZFwUUB1m7CWdz0K7tGZ7ibFvAbj8Xpzio3p9LOiVL4w35fnD5cOhqsoR/If1/0fHscjG+0mAU4LsbekISjzWrYVrzttiivN874cxWsX34SJ+B6E/qS4GTC5FrYbUqwE/Zfgnr5vxkeZwn4WPvC8wjJtFzOTe5M5FIk+zfb0OvdIj+1JUy/d5wHd0KNRd46FaR9fFiaznTOvfyfihZcUCbeVDFQo38ecizioyqXpo2IN85D8zbICkK1KumYq4qrEKJzdX86SScrHiy0tayOspg5EmAJhrCp1nHLue8cocAuofWwWEcYKcris1SSpbGHPQDWNIHErcQM8sxGebbPyKO81GYzTOeAA1z4mJub3DWettXEqeNbLfOzM+x52SRoMI6Ll6nm1DUWmaHJ0TbphcaJc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199021)(186003)(9686003)(26005)(6506007)(966005)(107886003)(83380400001)(41300700001)(4326008)(64756008)(66446008)(66476007)(2906002)(66556008)(52536014)(316002)(5660300002)(8936002)(8676002)(478600001)(66946007)(7696005)(76116006)(71200400001)(110136005)(54906003)(55016003)(33656002)(122000001)(82960400001)(38070700005)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1huR3ZkWnU4cGVSaTBvblBId25FTTVIdmZBWEQvSmxPVXhyV09vakloSG9k?=
 =?utf-8?B?RS9TZUhBMFd4M3FueGZ0d3BmV0QwdXBpRCtFdWxpRUFvb3J5NkhseEoxMzlH?=
 =?utf-8?B?Q0ZwTXYwQys1R3NvRC8vTnhVbWxoNFNuVlpWcGJ3VWNmTnhxNDJjWitQOS8r?=
 =?utf-8?B?NXc1d2ZwTUZyYk9SdkEvdEJ2QnNGa1VtWTFjc3BFTWQzUHU2c0xZVmtCOG51?=
 =?utf-8?B?cEt2QllSbmN2K0ZyWG1LV2U2VHhvcWZ2T0hkMXVsVERCMnBEU1pvd1N0c2Js?=
 =?utf-8?B?Y3hHRUc1MlpKanhIOGtZaUdUeElDajAxcWI3WTlBN3lIMVA3dmUxOXRxajRj?=
 =?utf-8?B?ZHVYUEZtZ0kyRjJ0WEx0ZUdIRUJXZzRBRnEzUTN3dEE4RjZjZXhWNk43cXZZ?=
 =?utf-8?B?NGhhbkpxQzdIQmJQTHNqRzB4Q01uTXEyS2QvMDZadmNPOFhoQjNIeFBXQmpn?=
 =?utf-8?B?ckZHbWVDcnp5WXQyYjc1Y2dOdFZsTDYvYXBkWjljcStSYkxVQVJRRmY4amJJ?=
 =?utf-8?B?RGVpN1hYTVE2TjI2QW10djV0L1JFT0hiekh1MXRCZTV6MmczTDFoUVpkV2Qy?=
 =?utf-8?B?U2tHOTl0QzAxaHU4Smh3ZVB2Zk51NEJkclZSTUw5dEJBN3dyWUdqNEs0VGc4?=
 =?utf-8?B?dTc2dDRpSTQxems2Qkp5TW0rYzZESlhuSGo3elVBRFFxSW9FckJudEVvdU5h?=
 =?utf-8?B?ZG44cWU0eE1ENkU5RE9aZy9HbDdmaXN5R0JIb3dmRVYvTmtVYnoybUJtRmZC?=
 =?utf-8?B?Rll0bzhBVkI3SVFER3Z4VE1nTjdmQnhKdEpxQzZYSUU1cWg5Nm9WWkFQK0px?=
 =?utf-8?B?VittcGRwcitMbGxwWnJYUU9Tcmw3WlMxRlQ1eUtXaGhxOWpFdDZ0VEpRMXI1?=
 =?utf-8?B?amRDeG5YUHliNENMNzNYaVYvYkRBdWR0a3FrSlJ0ZmRlWkl1UmhadnlodlB0?=
 =?utf-8?B?cGJydEtBdTZIQ09WcmU3VHhkK0lWUVcwVWhnbkpuRERCM2xUOVlJWUk2cVRV?=
 =?utf-8?B?NHV4R0pDNG1uM3dxRFRiU2R6emhjV1crdGhMeW1IR1lZOTlRdW03YWc2S1Yr?=
 =?utf-8?B?MTk2bEs5KzgrSVlUclJ5bzRHVnFzamxzVDJBR0lOR1ZvUUtpOThZRUc4WDVX?=
 =?utf-8?B?WTN0T2dtUG5YUEZGVm45TlNITnNmZmQyNVVHbUFJT1FPY0VRSk81cElYVUFV?=
 =?utf-8?B?T3IyWlVsbTlTUTZKWi8zbHRLZHZIY2dxZ3d5Uml1SWVxd1pSY3F1bWRqa3A1?=
 =?utf-8?B?SjJSZnB4V3RTRHRTODVwVTRGYlZvYm9Eb3RHeW40bENhV3gwTlNUOW1EcjJl?=
 =?utf-8?B?RkZ3OHJYaituWTJlQlVMSlA4TVp6TS9qZGEyTGQ0R0ZWaDh4Y3JjVW16RVUx?=
 =?utf-8?B?aWtTWEdLT01TZ1NOZERWMDJhSm5oMFhZVnRCcGMwZFo0SmFmZFBiYm1LTWpp?=
 =?utf-8?B?bEhkaUtITGZWazB6Z2I3MThYT1NqblE2UnF3blRuRlVaS05LT3JRZ3VmcTFJ?=
 =?utf-8?B?WHJqRWxMV1hvZEZOdG9TRmIzQVJpMGx0NDF2THJnS3lEODB1L2k4dXNhVmp1?=
 =?utf-8?B?c2lMTDdGaDdMOUg3U3hZOEUzV2FjMHNjRnJRN212MkF0bmEraXhPd2k4aCtM?=
 =?utf-8?B?OUoxUTAyT0Y4WHU2TUc0eElKNXdxM0k3RlEzNkREM2VvVm9sZWFUSnM5aXJD?=
 =?utf-8?B?enpiN1ZJWkRqeFhjMGN0V0xmbGp0ekhLdDF4S2E4clJreERid3ZUQ0dlWkJD?=
 =?utf-8?B?SGswdnU4aEhPdU1wNGN2TDIzWU9nbzhyRVVyQVRJM2hOVWhaK2NMOUJIeFRm?=
 =?utf-8?B?NWg3aHZhRVhVeDBUeUttNW4vRVFiWjJJaGg2VDJWQmU4NzJLVHI1YU1HSHR5?=
 =?utf-8?B?MXdkVG9CMnI3SGtTNFdBb3FLaFdFY090dGVDcVdzM29vUnZtU3BwTnFWdVNv?=
 =?utf-8?B?Mmx1Sk5STVBGUjhZTDBDbnY4SWdzSlIranhKejVSYjQ3ZEVvTVJ2dDBYMjFJ?=
 =?utf-8?B?OGNWb0djZEVxU25ZTWZ6dEdwU1MyMXlPZkN0bU14Q1JUMkJxZWRpbFBZTTZB?=
 =?utf-8?B?WHhMTG85TkFWS0txdysvcWVCRmpEY0N1MllkZHpEUjlSSWROeE9FdzJlYmVl?=
 =?utf-8?Q?slLnjmQhMslnOdmARVkQPRCo4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5f4b62-c1a9-405c-eb0e-08db8144afdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 12:53:41.0970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PsmTgEEcwzCeEkBzDKnaycSmqDRb8MqDy8nhRLw8tsSx7biadzkx/8om6Z9RFlytNYRZPp7H2iwfe6Bu/mxCgqNH53PhLt0Ob7zC0aUrkIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688993625; x=1720529625;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=olVRqiLZvBl08odmZMqm8uO575lwtRWt5OKPd4210Ag=;
 b=GQy9jzLhfxH0KNM9Q46PBKgBSFnb5sdf1bHAWLZTTKC4u/+NepeMxwZM
 alhDGTk85oVpIkJ+zmu9M4ndynzYYEXGTGadagryp04S8eEzJARsM4IBN
 d+XNRx3cKZHTmujxePyS1ru0s2oPyuae0DyPxr7s2v0NMSHtB4vyPfA7W
 kaNpffI8FfCJ8jZxG0hbuCuDifR2fu8IxJzqGNRLwezmUZnaGzNyzX/Kh
 XhrREeHQY8z7hFZ8rq2a7iCt7/ziKkt5BmnaV7mvEmA4mIcWeBenNJ2iZ
 HsvkE5ia7X/Ur9Xg1Zh/M4MIPN6ZGMtWsU+8x3M7lyO0SNH2bh9W1Cqni
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GQy9jzLh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: Fix memory management
 in ice_ethtool_fdir.c
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Fri, 7 July 2023 19:16
>On 7/6/2023 2:19 AM, Jedrzej Jagielski wrote:
>> Fix ethtool FDIR logic to not use memory after its release.
>> In the ice_ethtool_fdir.c file there are 2 spots where code can refer 
>> to pointers which may be missing.
>> 
>> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but even 
>> then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
>> 
>> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input may 
>> first fail to be added via ice_fdir_update_list_entry() but then may 
>> be deleted by ice_fdir_update_list_entry.
>> 
>> Terminate in both cases when the returned value of the previous 
>> operation is other than 0, free memory and don't use it anymore.
>> 
>> Replace managed memory alloc with kzalloc/kfree in
>> ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by 
>> ice_fdir_set_hw_fltr_rule().
>> 
>> Reported-by: Michal Schmidt <mschmidt@redhat.com>
>> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
>> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>> v2: extend CC list, fix freeing memory before return
>> v3: correct typos in the commit msg
>> ---
>>   .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 62 +++++++++----------
>>   1 file changed, 28 insertions(+), 34 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c 
>> b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> index ead6d50fc0ad..619b32f4bc53 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> @@ -1204,21 +1204,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>   		       struct ice_rx_flow_userdef *user)
>>   {
>>   	struct ice_flow_seg_info *seg, *tun_seg;
>> -	struct device *dev = ice_pf_to_dev(pf);
>>   	enum ice_fltr_ptype fltr_idx;
>>   	struct ice_hw *hw = &pf->hw;
>>   	bool perfect_filter;
>>   	int ret;
>>   
>> -	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
>> -	if (!seg)
>> -		return -ENOMEM;
>> -
>> -	tun_seg = devm_kcalloc(dev, ICE_FD_HW_SEG_MAX, sizeof(*tun_seg),
>> -			       GFP_KERNEL);
>> -	if (!tun_seg) {
>> -		devm_kfree(dev, seg);
>> -		return -ENOMEM;
>> +	seg = kzalloc(sizeof(*seg), GFP_KERNEL);
>> +	tun_seg = kcalloc(ICE_FD_HW_SEG_MAX, sizeof(*tun_seg), GFP_KERNEL);
>> +	if (!tun_seg || !seg) {
>> +		ret = -ENOMEM;
>> +		goto exit;
>
>IIRC individual checks and goto's are preferred over combining them.

For both cases there is the same behavior so it was done due to limit
the line redundancy, but if you think it is better to split them up i 
can do this

>
>>   	}
>>   
>>   	switch (fsp->flow_type & ~FLOW_EXT) { @@ -1264,7 +1259,7 @@ 
>> ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>   		ret = -EINVAL;
>>   	}
>>   	if (ret)
>> -		goto err_exit;
>> +		goto exit;
>>   
>>   	/* tunnel segments are shifted up one. */
>>   	memcpy(&tun_seg[1], seg, sizeof(*seg)); @@ -1281,42 +1276,39 @@ 
>> ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>   				     ICE_FLOW_FLD_OFF_INVAL);
>>   	}
>>   
>> -	/* add filter for outer headers */
>>   	fltr_idx = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
>> +
>> +	if (perfect_filter)
>> +		set_bit(fltr_idx, hw->fdir_perfect_fltr);
>> +	else
>> +		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
>> +
>> +	/* add filter for outer headers */
>>   	ret = ice_fdir_set_hw_fltr_rule(pf, seg, fltr_idx,
>>   					ICE_FD_HW_SEG_NON_TUN);
>> -	if (ret == -EEXIST)
>> -		/* Rule already exists, free memory and continue */
>> -		devm_kfree(dev, seg);
>> -	else if (ret)
>> +	if (ret == -EEXIST) {
>> +		/* Rule already exists, free memory and count as success */
>> +		ret = 0;
>> +		goto exit;
>> +	} else if (ret) {
>>   		/* could not write filter, free memory */
>> -		goto err_exit;
>> +		ret = -EOPNOTSUPP;
>> +		goto exit;
>> +	}
>>   
>>   	/* make tunneled filter HW entries if possible */
>>   	memcpy(&tun_seg[1], seg, sizeof(*seg));
>>   	ret = ice_fdir_set_hw_fltr_rule(pf, tun_seg, fltr_idx,
>>   					ICE_FD_HW_SEG_TUN);
>> -	if (ret == -EEXIST) {
>> +	if (ret == -EEXIST)
>>   		/* Rule already exists, free memory and count as success */
>> -		devm_kfree(dev, tun_seg);
>>   		ret = 0;
>> -	} else if (ret) {
>> -		/* could not write tunnel filter, but outer filter exists */
>> -		devm_kfree(dev, tun_seg);
>> -	}
>>   
>> -	if (perfect_filter)
>> -		set_bit(fltr_idx, hw->fdir_perfect_fltr);
>> -	else
>> -		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
>> +exit:
>> +	kfree(tun_seg);
>> +	kfree(seg);
>
>Previously, success would not free these. They look to be set into hw_prof via
ice_fdir_set_hw_fltr_rule(). Is it safe to be freeing them now?

Yeah, I will restore the previous approach to avoid confusion

>
>>   	return ret;
>> -
>> -err_exit:
>> -	devm_kfree(dev, tun_seg);
>> -	devm_kfree(dev, seg);
>> -
>> -	return -EOPNOTSUPP;
>>   }
>>   
>>   /**
>> @@ -1914,7 +1906,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
>>   	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
>>   
>>   	/* input struct is added to the HW filter list */
>> -	ice_fdir_update_list_entry(pf, input, fsp->location);
>> +	ret = ice_fdir_update_list_entry(pf, input, fsp->location);
>> +	if (ret)
>> +		goto release_lock;
>>   
>>   	ret = ice_fdir_write_all_fltr(pf, input, true);
>>   	if (ret)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
