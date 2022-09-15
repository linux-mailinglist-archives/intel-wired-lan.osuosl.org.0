Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DD25B9F99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 18:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29F81405E9;
	Thu, 15 Sep 2022 16:26:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29F81405E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663259178;
	bh=70H5Q0uRL4x0DFeCpn7pDRH/QGLWKLQBadR3O614LNI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=27qiXpY76ofmObQlRg+UvfMuZ7UGA0hltMdALYPX8JAzBPIsk+IU3HJ08WNdRvfIR
	 4ibIWNFcgaaghuXLfNt5d2Yy6cv9Rg9yMOEGtloh546PeCtvfjd9PtqEL1mumyqFZP
	 9iB+rEqNiNbJ4P1ubRIoUOv1u8oMSF6w8Agubp1x41NxeFKg3xFLvuNbGuWIbeXASN
	 2El7Qbs1XG9ENej6Oja6y5KwtnQ+yl9yiB/wMGn07W2EKHv0AFPKaLceX8rNLCmFq2
	 YfaQlCvGpLfMM9Xve8cpqYvGMUVCKOkeBo0gAn924ZWFVOYXrRAUGyJ/wOFgc+42WZ
	 k5oST+DvzBMsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bITZFJoxTPDF; Thu, 15 Sep 2022 16:26:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD93D409D5;
	Thu, 15 Sep 2022 16:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD93D409D5
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEC161BF3DF
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A912C610B8
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A912C610B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2UGzHYPEc-Z3 for <intel-wired-lan@osuosl.org>;
 Thu, 15 Sep 2022 16:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28EFB610B7
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28EFB610B7
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:26:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="281793514"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="281793514"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="862396995"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 15 Sep 2022 09:24:51 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:24:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 09:24:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 09:24:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YOYhHldLXFG48lXLagoUqUu+9vROGyUjV3tJhHg+3mJTI7ZojZPUNDw/nF/okSu1C4mH69reTgad+myrWwawOEjlY23SixDQb04VmiSFJ1eWbVB+QnL+XJGoAWRgcwr1PczNl0d5Q+mKn3BuTN7E5DrEmcyjda/rwwfw4whLHp3pHWN1fgPZT0a4LUqSWrKeUbUTfFNoNO9q9Xu4JtMKCps1Si3+1ILUWPD3wJDfE0xt1hNr/3P2DMCpGNaG8DgST6Zi4yZMuwDuJe/YNjcxF2kFvvtgI18Vw/I3C9K3ET2Qb3j2cx1BZrKMWiaXr2iHQvfbI1wTqP0pYcRzGNHDKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=htPEwjL8N1Opas5ZjRHOKtGxw05u3aBlhXy/SPCBaCI=;
 b=Xi2AjlNIo3G71iN8MnFecQ+1Hs8Fr1iPP+OIkk/cEH3xHnnQaaPZgIe2/6MR9+zoSULIOiLWeaU7mMUBSWhhDPZ7fj4hkSWPTCZTg8cv1hyftLX4vrj3DbbEcTQuPiGedz0IKqT5TXarOejhkcWzE2jD7o3e3j5lskd08RAi8CQ+E8EJRxHsBft5ZgbIZ1U5qpT3Ph0wg68WC4huysenrVBSoPIlX5spQxhLEUKbWE/jeWJN5psFtDXTu5kcL8oFn1y91i/o/2lFJurTZ5+54Zsh/z5XzZJhabVsYqBDQf/nTajWFo9n1PVa2SDqZnATgCufD0r7f3ocSUWf4q+UCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by BL3PR11MB6385.namprd11.prod.outlook.com (2603:10b6:208:3b5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 16:24:49 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119%2]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 16:24:49 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
Thread-Index: AQHYY0FmzdLtH7EECkief4S1D+8JzK0XsdWAgMnBxcA=
Date: Thu, 15 Sep 2022 16:24:49 +0000
Message-ID: <SJ1PR11MB6180D7874509D90AC4181959B8499@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
 <d9807c38-81a1-a1d9-cc77-802c2a5755cb@molgen.mpg.de>
In-Reply-To: <d9807c38-81a1-a1d9-cc77-802c2a5755cb@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|BL3PR11MB6385:EE_
x-ms-office365-filtering-correlation-id: 9b02abbb-db62-4dcd-690b-08da9736cf7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rhaueUW4E5Kvi6XNx8UzIaAACIoFZi7TNVE58HL+88RVeGJaw3Sd1PoMyoPQ7B1RQenyfF2t7bB7Znq7Pz3xDLQFDRYMT0SZVEGkR8b8Hi6gA0Eh5GaJbmMuAHUxX1fmoXoWYWC4Np+r42qOR+Ipq6tKIGGKNlXeJ/oO0KjOWjlzzg8SxsJ+7wgJHkgBw3J/N+G+hatfScaGWwWsXAUbhr21SYOFR35Bk2FRQ83u0aafZgrOH28zttcHePq8o9i7Y3o1h/HalR5uD71HM2pmFB9IHq85o2zrKJK+kZVPJjvuobDzx/6MGy6lpPJP/uFdJFlWR1U443HrLVvqVHWOJ4qE9Yj16acPBD99rwe95/+BqRsQupuyV5hFOG/WDCRixj49H0s0I3yqAFTrWV/B0tamQ598ueNsu49V6OPThsC76KiuSBeHqYKNmN4B3YH/nwXUeO25OCnyWi5jlxztL+4Q0QvOaU+2z2uNMDSorh912G0zOdJQzxqLLLZjZSrQA71TVKU6FUlkL49Rkfjm8rSYjPHkR35m5P4iGP/IVqQ4EYkQiOdLMTUufbaAubuND051ERPHq+BF/ap7SZbH22fgN1jmc5nkH6pSJ65t9ojTqvE6ihK5RNPPrp6Joo0tUqKevu5Py+rPsNB932/HnOVSj3ky5Zn6+gu9ZtPwzbrScErouYg6VI+8SJRRbJccIg8GkkE4riuhEpbqYDBdXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199015)(5660300002)(2906002)(71200400001)(186003)(55016003)(52536014)(38100700002)(66476007)(83380400001)(9686003)(33656002)(6506007)(64756008)(82960400001)(966005)(76116006)(478600001)(7696005)(26005)(66556008)(66946007)(8936002)(8676002)(38070700005)(4326008)(66446008)(53546011)(6916009)(54906003)(86362001)(316002)(107886003)(122000001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3h1QTlpaldzOVgrajVvSTBRdFZyUjhwd3grUy94ekpWY0trQ0ZvNlptZlJz?=
 =?utf-8?B?RjNOR1p3MStOUExaSWdSbUJjY3B1NS95WldYMkJwRXBhczY5RHh2K2hqY1BI?=
 =?utf-8?B?YjQ1dmdVTXZUZVh2YllrSGlhMG5CeFVnVExKQUlLaVYvT01kdTlTZ3dXUlFP?=
 =?utf-8?B?RzBMQUhma3VIVWg5UEpRWXYzNlJLM1lqNzByMDFqSVVTeGRjS3ROdlprKzFB?=
 =?utf-8?B?eld5R3pEbXdVQ2Y2OXVrL1JVZFhaMzRkNVVidDVmV1hhZ1NuNEQxT2ZiR3NH?=
 =?utf-8?B?Y3M0T3A0QUZkb0pGTzl2cGpvNkM5UGgzcWwwaWVSZWlybE9aaGV3M1kxSnJB?=
 =?utf-8?B?MlFBMmdqb0NPMkJhZjJGb3NlSnZ2T1k3MlI2NVdoSlNwM0V1aTFOWTZ3VjJQ?=
 =?utf-8?B?b3hYMmZHUThrOG1JeVZ1Mmd4SWthcGRwY1hxOHFBTHJtcWN1NzlwWjN2U09h?=
 =?utf-8?B?ZzRSdXVJcXRnVjBCVldvSW56MnRGeTQvK1JkNFZwTmVxME9nK2Z6dFdhZUpm?=
 =?utf-8?B?RWtPTzVzUm9MYWpHeXpUYmpnOHhhOWdsMDZTTUE0Yzk3ZE0rQUVyQ3k5Zi9z?=
 =?utf-8?B?L2d1d3N6VEhoYkxveVlDYy9hOGZGWEdZK0JUYy9uQ3Y5RmdPVm1nb1JGdFJX?=
 =?utf-8?B?dW5vSC9SWXdBQnBEVDV4UW5BSWpDQkYrLzBsS1Z2VUkyOVV2dUN3aXFxQkd3?=
 =?utf-8?B?dEVpWDVSNnZZQVdwdXRTa2FzcllDRFkvdWhBSmxZaDNLV0ZhR1lDb1RHTGtB?=
 =?utf-8?B?cnN0TVBlT25oazNNV2JBNW11Q1VDcE1NRHpRS0Uyb2pubXNvTmJjVmROZlZx?=
 =?utf-8?B?QnF5dFdtMW1sbXMyL3NkSktCSmdDSkVob3pYZmhGS3NGRzViODVHWVlhWlJI?=
 =?utf-8?B?UlZSeXE5eFVCU1ZBa2ptT1QxdVhZM1RKbVQ5Nms1RnJJNGNrZHBhMVI2YzZY?=
 =?utf-8?B?Vng5ZFNCZkE3R0hOaFhobncreU5pNW9wa1VLQWZpVG94YTBleHBkUkhVSWFH?=
 =?utf-8?B?M3NKcnBqTVU5ZmNDVXBjVFhtUWNtTFVSZno5TldUTkpydWpRdUZmREM0NEJB?=
 =?utf-8?B?QndMWUdHZ1JhOTZram5zUHdBelZ3eTVKQVV1UEh2am1ldFZ4cHRVbGZCOVdw?=
 =?utf-8?B?eVk4WEx2UElYZXJMQm9TKzVLN0xEUFdMRC93WTNjdUlSQ0lMa0lkZVQ4V3VF?=
 =?utf-8?B?MW5mdTRyQW5TS0xlQTJXL29uVDhjSklkNDBkWk5UcTBxWmNmZ3VISW5rNjQr?=
 =?utf-8?B?eGxBZXJrdFVvNmtWTTdiMlEzQ3p4eUlWRFFRQ0ZnRWdzSWlETldVMTl4S1li?=
 =?utf-8?B?UkFYNXcxZ05lUjFIR2hEcXN6N3E2TmxYRjVGS1dTUE0zbitxaWo2dERkWVpO?=
 =?utf-8?B?ZURwSk1od3JTMmE2YXB0d2N2SXdVSi92ay96YllDaVpVVzk3SDlYRnV0YkN5?=
 =?utf-8?B?VUJ1UGFOVVNjcjJWZ3VCendlYVVMVXFSWkhadUFIalpyKzZrcDlwa0FOYmlj?=
 =?utf-8?B?WDBhcm5jT0g4TEMvdnFKdjBoYXJNeHZJUW5kbmhDdW5NUEM4c2JmQ1UwZXU5?=
 =?utf-8?B?Z2Exby9KMDgwdWtoTHEzZFVkbVFlQ2RCTDZtQzBUQ0VxVWRhM0ptaTdnN3RI?=
 =?utf-8?B?UFZrb0VyQldWbVpibmZDWVVFdU14MWg0OU1vZ0VzQk1wMU9FUVdmL1REMTg2?=
 =?utf-8?B?bG13aHBGanByMmpMcC9WVUJtNDEyK2Qya2FKZjRTRW5WdnYranpSV1FybjEv?=
 =?utf-8?B?SGpXV2xpdmlzVzZ6b3E3em8zZnJPUmhpUERtTU1ISW1FREM3ck9oSE0wRVB2?=
 =?utf-8?B?VENRYitrTzcwZyt5bXZFYndWbWMzOWhtZEZYWWMyQVozeU5iV0N4clpWaEZx?=
 =?utf-8?B?cnp1YVpuZUx1bXdYWGljRGtsbjlNWHcrMEs2VnFiV29sbFJwSVh3TVBpZnlW?=
 =?utf-8?B?R0QwcGRVdzl0RWlpSkNFM05NdDhZMmMxc2NCNTVhcUM4T1BLM29DdnVoMC85?=
 =?utf-8?B?Rnkxbi9hMGJyNDhEdUJtVlBiYVlTLzgwYVk0NDBwWWI3VW1RNUVLU1RNU2pQ?=
 =?utf-8?B?UWVvNHJobG1vcXZNdWY4UzBwaWQ1NkpLdGM1R0VFazEvYkdnZDB3WDhRTTI2?=
 =?utf-8?B?MDZ5UzUveGEyUVFDZWZlMDg3bDlmOFh1RmRKdnBRVUU0NlUxVXdBN0pYOGEr?=
 =?utf-8?Q?MnSQ+97lYYhSUl/LSelWfbc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b02abbb-db62-4dcd-690b-08da9736cf7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 16:24:49.1008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rrLwnYbEmmnzsClbevD57mYcgf6B7dzykC9ycpNXf3IeD1lsv6WjO+Zuf3Nvyhy18vkpIKetBrcMmm7XUIEI3KxoKKglQE7S0s22/JBkk65Wm6UX8qCwP1RTq3hEpW9J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6385
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663259170; x=1694795170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=htPEwjL8N1Opas5ZjRHOKtGxw05u3aBlhXy/SPCBaCI=;
 b=TmtkxVC7+GM5rRJtijj8XFFXSF6p12VaCV9IJScJx49us7OtbV9EYfCz
 +zbh4nzFbv/VT3p+T9dA/7+b5U7a9gB7M5swPqigT4Gj0fEDu49QAFNog
 N3jNB6n/bwQX2m+wE3VH38qZeNEpSO0sgv7sKcJH1S9SksksSEz/6Yzyy
 vUrG8z2D66aOefo7Oms0/tV5hbN044eo5qZK5/D8m7vaGr2CGOt/mg9tU
 16+EbXRKRkScy7fXDi5OpY6TL3RSC90orEif7unHUUqQ9MxPlXR5fA47g
 6HEYc+un1krsXf320QCUbH5w/RLEfNvmoMXa8YDHue1Z/VQieiLpYhsc1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TmtkxVC7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
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

SGkgUGF1bCwNCg0KU29ycnkgZm9yIHRoZSBsYXRlIHJlc3BvbnNlLg0KDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcu
ZGU+DQo+IFNlbnQ6IFR1ZXNkYXksIDEwIE1heSwgMjAyMiAzOjA0IFBNDQo+IFRvOiBadWxraWZs
aSwgTXVoYW1tYWQgSHVzYWluaSA8bXVoYW1tYWQuaHVzYWluaS56dWxraWZsaUBpbnRlbC5jb20+
DQo+IENjOiBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZzsgR29tZXMsIFZpbmljaXVzDQo+IDx2
aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0hdIGlnYzogQ29ycmVjdCB0aGUgbGF1bmNodGltZSBvZmZzZXQNCj4gDQo+IERlYXIg
TXVoYW1tYWQsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPiANCj4gQW0g
MDkuMDUuMjIgdW0gMDM6MDggc2NocmllYiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpOg0KPiA+
IFRoZSBsYXVuY2h0aW1lIG9mZnNldCBjYW4gYmUgY29ycmVjdGVkIGFjY29yZGluZyB0byBzZWN0
aW9ucyA3LjUuMi42DQo+ID4gYW5kIDEyLjMuMiBvZiB0aGUgZGF0YXNoZWV0Lg0KPiANCj4g4oCc
Y2Fu4oCdIG9yIOKAnHNob3VsZOKAnT8NCg0KSSB3aWxsIHJlcGhyYXNlIHRoaXMgc3RhdGVtZW50
IGluIHYyLiANCg0KPiANCj4gU29ycnksIHdoYXQgaXMgdGhlIG5hbWUgb2YgdGhlIGRhdGFzaGVl
dD8NCj4gDQo+IFdoYXQgcHJvYmxlbXMgZG9lcyBpdCBmaXgsIGFuZCBob3cgY2FuIHRoZXkgYmUg
cmVwcm9kdWNlZD8NCg0KVGhpcyBpcyB0byByZWR1Y2UgdGhlIHRyYW5zbWl0IGxhdGVuY3kgYmV0
d2VlbiB0cmFuc21pc3Npb24gc2NoZWR1bGUobGF1bmNodGltZSkNCkFuZCB0aGUgdGltZSB0aGF0
IHBhY2tldCBiZWVuIHRyYW5zbWl0dGVkIHRvIG5ldHdvcmsuIFNvZnR3YXJlIGNhbiBjb21wZW5z
YXRlDQp0aGlzIGJ5IHNldHRpbmcgdGhlIEdUWE9GRlNFVCB2YWx1ZS4gSXQgY2FuIGJlIHJlcHJv
ZHVjZSBieSB1c2luZyBsMl90YWkgb24gdHJhbnNtaXQgc2lkZQ0KYnkgaGF2aW5nIGEgbGF1bmNo
dGltZSBwYWNrZXQgaW4gdGhlIHBheWxvYWQgYW5kIG9uIHRoZSByZWNlaXZlciBzaWRlLCBJIGFt
IHVzaW5nIHRoZSB0aW1lZHVtcA0KYXBwbGljYXRpb24gdG8gbWVhc3VyZSB0aGUgbGF0ZW5jeSBi
ZXR3ZWVuIFJYIEhXIHRpbWVzdGFtcCAtIHBheWxvYWQgdHMNCg0KPiANCj4gPiBCYXNlZCBvbiB0
aGUgcHJlbGltaW5hcnkgZGF0YSwgdGhpcyBjb3JyZWN0aW9uIGlzIHJvdWdobHkgMTUwMG5zLg0K
PiA+IEluIHRoZSBmdXR1cmUsIHByb3BlciBtZWFzdXJlbWVudHMgbXVzdCBiZSB0YWtlbiwgYW5k
IGNvcnJlY3Rpb25zIG11c3QNCj4gPiB0YWtlIGludG8gYWNjb3VudCB0aGUgdmFyaW91cyBsaW5r
IHNwZWVkcy4NCj4gDQo+IE5pdDogUGxlYXNlIGRvIG5vdCB3cmFwIGxpbmVzIGp1c3QgYmVjYXVz
ZSBhIHNlbnRlbmNlIGVuZHMuIElmIHRoZXNlIGFyZQ0KPiBwYXJhZ3JhcGhzLCB0aGVuIHBsZWFz
ZSBzZXBhcmF0ZSB0aG9zZSBieSBleGFjdGx5IG9uZSBibGFuayBsaW5lLg0KDQpOb3RlZC4gV2ls
bCBmaXggdGhpcw0KDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVz
IDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTXVoYW1tYWQg
SHVzYWluaSBadWxraWZsaQ0KPiA+IDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxpQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVn
cy5oIHwgIDEgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24u
YyAgfCAxNCArKysrKysrKysrKysrKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19yZWdzLmgNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
cmVncy5oDQo+ID4gaW5kZXggZTE5N2EzM2Q5M2EwLi45MjhkMjJiMWNhMjIgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdzLmgNCj4gPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaA0KPiA+IEBAIC0yMzEs
NiArMjMxLDcgQEANCj4gPiAgICNkZWZpbmUgSUdDX0JBU0VUX0gJCTB4MzMxOA0KPiA+ICAgI2Rl
ZmluZSBJR0NfUUJWQ1lDTEVUCQkweDMzMUMNCj4gPiAgICNkZWZpbmUgSUdDX1FCVkNZQ0xFVF9T
CQkweDMzMjANCj4gPiArI2RlZmluZSBJR0NfR1RYT0ZGU0VUCQkweDMzMTANCj4gDQo+IFNvcnQg
dGhlc2UgYnkgdGhlIHZhbHVlPw0KDQpXaWxsIGRvIHRoYW5rcy4NCg0KPiANCj4gPg0KPiA+ICAg
I2RlZmluZSBJR0NfU1RRVChfbikJCSgweDMzMjQgKyAweDQgKiAoX24pKQ0KPiA+ICAgI2RlZmlu
ZSBJR0NfRU5EUVQoX24pCQkoMHgzMzM0ICsgMHg0ICogKF9uKSkNCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYw0KPiA+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYw0KPiA+IGluZGV4IDBmY2UyMmRlMmFiOC4u
M2Q0ZDBhYjAxMWUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfdHNuLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjX3Rzbi5jDQo+ID4gQEAgLTg0LDEyICs4NCwyNiBAQCBzdGF0aWMgaW50IGlnY190c25fZW5h
YmxlX29mZmxvYWQoc3RydWN0DQo+IGlnY19hZGFwdGVyICphZGFwdGVyKQ0KPiA+ICAgCXN0cnVj
dCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiA+ICAgCXUzMiB0cWF2Y3RybCwgYmFzZXRf
bCwgYmFzZXRfaDsNCj4gPiAgIAl1MzIgc2VjLCBuc2VjLCBjeWNsZTsNCj4gPiArCXUxNiB0eF9v
ZmZzZXQ7DQo+IA0KPiBQbGVhc2UgYXBwZW5kIHRoZSB1bml0IHRvIHRoZSB2YXJpYWJsZSBuYW1l
Lg0KPiANCj4gV2h5IHNwZWNpZnkgdGhlIHNpemUsIGFuZCBub3QganVzdCB1c2UgYHVuc2lnbmVk
IGludGAgWzFdPyAoYF9fd3JpdGVsKClgIGFsc28NCj4gdXNlcyBgdW5zaWduZWQgaW50YCBpbiB0
aGUgZW5kPw0KDQpZZWFoLiBXaWxsIGNoYW5nZSBpdCB1MzINCg0KPiANCj4gPiAgIAlrdGltZV90
IGJhc2VfdGltZSwgc3lzdGltOw0KPiA+ICAgCWludCBpOw0KPiA+DQo+ID4gICAJY3ljbGUgPSBh
ZGFwdGVyLT5jeWNsZV90aW1lOw0KPiA+ICAgCWJhc2VfdGltZSA9IGFkYXB0ZXItPmJhc2VfdGlt
ZTsNCj4gPg0KPiA+ICsJc3dpdGNoIChhZGFwdGVyLT5saW5rX3NwZWVkKSB7DQo+ID4gKwkvKiBU
T0RPOiBUaGlzIGNvZGUgdXNlIHNhbWUgdHJhbnNtaXQgb2Zmc2V0IGFjcm9zcyBhbGwgbGluayBz
cGVlZCBhcw0KPiBmb3Igbm93LiAqLw0KPiA+ICsJY2FzZSBTUEVFRF8xMDoNCj4gPiArCWNhc2Ug
U1BFRURfMTAwOg0KPiA+ICsJY2FzZSBTUEVFRF8xMDAwOg0KPiA+ICsJY2FzZSBTUEVFRF8yNTAw
Og0KPiA+ICsJCXR4X29mZnNldCA9IDE1MDA7DQo+ID4gKwkJYnJlYWs7DQo+ID4gKwlkZWZhdWx0
Og0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJfQ0KDQpJIGhhdmUgYW5vdGhlciBmaW5lIHR1bmUgdmFs
dWUgcmVzcGVjdGl2ZSBmb3IgZWFjaCBsaW5rIHNwZWVkLiBXaWxsIHVwZGF0ZSBpbiB2Mi4NCg0K
PiA+ICsNCj4gPiArCXdyMzIoSUdDX0dUWE9GRlNFVCwgdHhfb2Zmc2V0KTsNCj4gPiAgIAl3cjMy
KElHQ19UU0FVWEMsIDApOw0KPiA+ICAgCXdyMzIoSUdDX0RUWE1YUEtUU1osIElHQ19EVFhNWFBL
VFNaX1RTTik7DQo+ID4gICAJd3IzMihJR0NfVFhQQlMsIElHQ19UWFBCU0laRV9UU04pOw0KPiAN
Cj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCj4gDQo+IA0KPiBbMV06IGh0dHBzOi8v
bm90YWJzLm9yZy9jb2Rpbmcvc21hbGxJbnRzQmlnUGVuYWx0eS5odG0NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
