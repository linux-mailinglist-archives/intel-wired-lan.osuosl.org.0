Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB5B857F93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:42:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94CF341C23;
	Fri, 16 Feb 2024 14:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PV-6pWb4PNxz; Fri, 16 Feb 2024 14:42:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0AB941C19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708094524;
	bh=aSS8B6t+9d0j3lOaVIOsojfpYMHVeLzKqzGZwL40dM4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XGwF5tXmV/RtYG5YgaRCLtTLoeYOnoEGY8DP8ezkstyX3wMeRUt5rpTlsLoOr3MeE
	 wr/A9lTmR7nULahiYHdNIHsUvnbeBWaeMeARdoZW+MOTSDhGm/IvHyWhUoRghSSXDr
	 Ai1v47EC4IXHFeGaKRiEWsuESkGjmRimRGG3i8oIUFmhLaHDMNoy9pb6M050K3pvBt
	 xVLy+bgJ1AX9Y+uL5twmIcOoWMzWpFBXJdz994jQvezOmcblLnDiyIR0eYtZNGJykJ
	 DIXjhb9d+rDyE7T7QpySFbAVs5Bv9GHURZ903ViW7y9h+cLg/Ov5ASS/aN5gvoidzv
	 G6dgLoJuPE3BA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0AB941C19;
	Fri, 16 Feb 2024 14:42:04 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98B6A1BF29C
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 14:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 842BD407C3
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 14:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UG27t1jD-vbC for <intel-wired-lan@osuosl.org>;
 Fri, 16 Feb 2024 14:42:00 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 16 Feb 2024 14:41:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1020D406FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1020D406FC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1020D406FC
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 14:41:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2628495"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2628495"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:34:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="3766704"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 06:34:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 06:34:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 06:34:50 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 06:34:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FY9915y+jMW05tOykTyKjETLMFdJIsubxwMn4wjIe7+TMj9UdFtMbzYBgQ5+NpGL36p2FSn0NQWqf9pX1qU+My40hkhWKHbTDg0w+KlTLg89hQ+NrNVj6vdbPxqdq8rdB8Uc5T2swHc088qS0oZaGBqHGUR0Ok+0H7mWUe4TtBtuY2yfnK3DmsXxLYS0aml77ZrLiMPSSRh6bURqv1JNEYqhNEBRAFvRuXKbI/RkhXjSXgMalrCIU3huCAjP6cH7laORrE9aBGw0Ae5mFjkWXIvoI2SeRBa30j+SerKDyISdZ/tlnsUA7fKDrWS00d3o7HrBSHnHx3VRq6GPmKzyUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSS8B6t+9d0j3lOaVIOsojfpYMHVeLzKqzGZwL40dM4=;
 b=PfU+AIAjQ9gFkV9f5N0sjpJjvySVe8CcR4fg9WddwvsrHBVT78dHCbZREe3qZYaZvgCZpN9h8LyrldZJh+6q9+jl7Ep0T+TT4Ozc9wJe06t+Gld9jGE0zyl4bk9D9xZxAA69DT0MjRvBcF2rxr4wh9hNelUfuzfEWzsA0QqsTRD8r/93cmKnIDGtnyk+MV0pXNtvCA6RZB8xGfNQ4/dN3fenezEY0ANf78B9NBp0LuXnRwwUROWlioR/W/B/VkZx6yJPerRauxpUmUGcaGHRrKhZQLZdtMCbL0/p9sRjY2/jtd1ErmTNgwpvsZtvOvzqyLLILb8Tj89ivKixQjy1kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 14:34:47 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Fri, 16 Feb 2024
 14:34:47 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Nambiar, Amritha" <amritha.nambiar@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [net PATCH] ice: Fix ASSERT_RTNL() warning
 during certain scenarios
Thread-Index: AQHaXrNJWCOVM6SaM0qhLQEEEb/gjbENDLDw
Date: Fri, 16 Feb 2024 14:34:47 +0000
Message-ID: <CYYPR11MB8429BB6929EB23A0A45DD6B2BD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <170785373072.3325.9129916579186572531.stgit@anambiarhost.jf.intel.com>
In-Reply-To: <170785373072.3325.9129916579186572531.stgit@anambiarhost.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5185:EE_
x-ms-office365-filtering-correlation-id: f5e678cf-ba04-4018-5a2c-08dc2efc6d08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qfjaLLal0i1pc2RroXA/8nxsypZRfp+ymO0O8lLoPbHxqS6MgVUyjZFQttYF8z20ceE26TnQ5kbPQ3PSMRFkJhJVVpgo8EG+4aG40M25EF5PD0nz0vjESe34o4FHWfAzoMA3n9rz8eSMjfAdxFMZwJeImKDK1EeF7PRdxTX3sfVOUub7g7ojIulmPVD3IZHR9JTKHRHeV/C1AtwGSyQPWAetQAqx+iTJTV6tooVgWkvB/OoZ++O4AsC99ujCs90ZowoppJVXZJz6SQYNsV1ajyPXEC0+KJKFg3dI73AB/ksOJx6Z0FZmTvQmsmx/nkIg1uPtMOi2h4X2zTYLSI4urxVeDXdh4NH/zd3yJHfTvoLUchOzJFnfRwe9RJNLK9OfDtqE4fxe2Pge6LRqKEA5xrXPI5WSF0DIfWtzrbjzquPapsZfb+x+0mVMmRPJPcKt4ajdN7zgWi9CTrbKQMUIZhpIQ3HYmPi060/WGMNTkFYX6w8Jwnbd4HSu7Wcs53Qz0PivyTb1ncmNq6UxjsE1plyHWFeSOzGohX4/285O7beMuuZOtv7jtJyDW5YeHjIi6jsWZ6+zbu9QRC3wULiO+q0PVX1cjz9IJ3hwK05Qunqs6WuGo08qg5vE42MR8hLc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(39860400002)(346002)(366004)(230273577357003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(38070700009)(5660300002)(9686003)(53546011)(478600001)(55236004)(7696005)(26005)(107886003)(41300700001)(71200400001)(83380400001)(76116006)(6506007)(54906003)(66946007)(110136005)(52536014)(66476007)(66556008)(4326008)(64756008)(66446008)(8676002)(8936002)(316002)(122000001)(33656002)(86362001)(55016003)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjBCSFpBcGJ4V2o2MUtVUjk3RVZtSnl3TjIvSk1WMzRkNkxEM0MrM0tnWEt2?=
 =?utf-8?B?TnZVV25FNUN4aFcrUTV3UEN4WDFncGhNdWZScEluRlJwdUxUR1ZTTTJwUCtu?=
 =?utf-8?B?ZEVuVUgzYUFKTzJqZjI5VFBLU2hPa0xmQjZ4ZXluVUY2REd3TkRMYytIYXRz?=
 =?utf-8?B?QzJvcjNrclFmenB4U2p2bjlLU1IyQW43aVhMYVNyNlk4YUw2RTY5b2RuaWRp?=
 =?utf-8?B?cHJHbHdWdC81VW5uS0kvcW9nOCtkUmI0cjk3MTZGRkdwR09hQzZ4QjB1cTFQ?=
 =?utf-8?B?dy9Qd09mQkRNd3NmeFBCU0lIaitIM3FWVEpQaUFUMjRlTHcvTSthTnVrSkJi?=
 =?utf-8?B?eXNiWDVwdUsxUEFqOWtTM29UWEtGdEVmWmlSd1J2UWxNTHJMelRNa1VTTEdo?=
 =?utf-8?B?WVQ1bGtSVXdyK0FJVUVwZkFabjZFUVpzelJ1Y1dhb2RZTW1VL2V5TlBRcGpQ?=
 =?utf-8?B?UWJiV0l6WkRhZFFFTXBrUU84T2R4WUxZbmVBdUVadDEvbHU1RTJyeUVXZWt6?=
 =?utf-8?B?QlBPWnB0U2VYYnhZbUdpL0s5bEtYUjRINC95Z3dKaEwvLzRFZnFYVkpoa1lj?=
 =?utf-8?B?MVNrenJacnpUQTJyMU9pMFQzK1VHOVpkbSs2ejY4cVFJc2tlSkYxeWJzNUox?=
 =?utf-8?B?S1NlK25XcVpIOW5RdFpVYTZ2NlF1NURFdXNFcFlOTmpWZ1lxTFJDR1FLcXJx?=
 =?utf-8?B?Wk85UXpKZ2ZWd24rbVNzclNBd2tkSlNudVBsaCs1dHdjbzloZERacmgxUlRY?=
 =?utf-8?B?SWlWMWRLbU1HN1Zad1R5dkZDTUVsMEc1a2dsdzJxMEtjbVVsMUwyVWtwYzFF?=
 =?utf-8?B?SEpQL3FUTTRQa05Xd2Q1M0ZHQThIZldFZkVYM2Y3d0VzRkZpSTlNeDk1SUZB?=
 =?utf-8?B?NUlPUVZJVmUycno3SEVTbzNZK2hNSUEzckdpVXhxcWpYR0l5S0JuS2FmQW4x?=
 =?utf-8?B?T280M1dMN3A2dm5SSXg5aUdDMmpWNHlPb2hJa3MvTGp0Ujc5THRCdlZ4STBG?=
 =?utf-8?B?djNSWDBhNnpuT1NQVVZXa01OWHRHRVVBU2VvWjRVZGhrR3dHNlpSNXFPOTRV?=
 =?utf-8?B?bnRDZDl0aCsvd1VxSk1kZmVqT3JsSDd4WlQyY1QzMCtNNGdKMkRxTkhRNWFy?=
 =?utf-8?B?N3pYUmRFTGE0OEFNQnhVTko3bW9MTHZFS0NYZEhsOWtVamUxa2pQL29vSFpz?=
 =?utf-8?B?SnZoUXdTYjZVcWY2bmt5R0NKblE4NFlDVWt3L2RkZ2Y2aDE2YTM4UWhUR1dt?=
 =?utf-8?B?Q09kTEcxeU5kWmRUY2UreTljWDJiSEpXNEg1RTlXcDFCOVJzRnNPMHNaS0Vj?=
 =?utf-8?B?OFRMSXlkMkJJSkxHTW5DZ01UTk52dUlQQXRSNkNaMDd6bU1IekE5K2NhY2lN?=
 =?utf-8?B?YmN4N2NjT0YwelgySzQ2c2k3TDNaYXROREpNVWNHUzR5U3ZQeUFmWGt5N1FE?=
 =?utf-8?B?RXJ0cS9xVHJBcFBPaENwZWpWald3am9PZjFxeXV4ZFRPOGR4TTZKRWZoZ1M2?=
 =?utf-8?B?MVRFQjk4WmxoaXVYdzh0VkV6UTJlWGhkS25udGxmWjJiQkpoemlCL1FEeDFP?=
 =?utf-8?B?QVNUR0d0QWIvSFM1Y293czk4U3o4aEZ4NmJ6TStWM09jc0hxVE96N3crRys0?=
 =?utf-8?B?R2RDY0hzZU9kVDZGVVpCeDFDUmdvbTRkNlR2MUQ0TjhWR2VGK3dnR3RQb3JQ?=
 =?utf-8?B?NXduaVltSmFWRHRkd2dQZ0VYaERVMkhtVGdRTHlYZ25GQ1FZUlN5ZkZ0dE1i?=
 =?utf-8?B?L3luOXJucGJQa2tkY0d3TFBwZkFxM1BCbVJPWVB5RHdBRHd1NHFWa0ZQZG1G?=
 =?utf-8?B?Z1RLRzVHYVRmQTdLdjNKVy8vSFczdHNoMkFFNzNabkZQSGs4WDBkVndkcHlZ?=
 =?utf-8?B?ZWs0WER3Mk1rS2lnVDlzc253VFBZbkFiMHd0ZDF2eFRtaTRPcnhKdCtxYlVD?=
 =?utf-8?B?OFFhWjl1ZVFpZ091dmR6TWdDY0Nnam13R2thc09TVXlOVzlTTmQvc29IbWJt?=
 =?utf-8?B?Ry84czhRZU53am55OUhja3VnS1dzQ0VTNHFkdHVBa3BhQ3JCd3dFOXRTVzA3?=
 =?utf-8?B?YnJWN2RtenpOTHRQRTZwc0tucXp6bTlqTXZxb1J3TEZxRjlhclNHMTIwbmdi?=
 =?utf-8?B?SkpjU3hpb3piM2E4Zm13Nno2Vk5QOXdGUUw3OVJ5ZmU1ajZubHZ1a3l6d29l?=
 =?utf-8?B?VlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5e678cf-ba04-4018-5a2c-08dc2efc6d08
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 14:34:47.5378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tv7lIWQiysVh1upx8ZtCvN84IKUWzKMsfdbYQDfdgu3AlIUKaIc9vTABS896NAi2nvDFd6BAQdL0NYlfTbrctQtn/J2VTxowna06AgdgsQ63b0QTUC7Seq/1Ww7QWTDu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708094520; x=1739630520;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aSS8B6t+9d0j3lOaVIOsojfpYMHVeLzKqzGZwL40dM4=;
 b=i8seXXbM2+z8Gvx92NbNJOKDbL4OGgfooBDrjFhiX9S+VULj9tuNK5T8
 IwB2UAgzFiwFgJY5KwJWJoebo0EpwPmHAh7AsLp5408ziqctGIo960EbR
 SP/4puDgwuvntW2n+Spfjai+c6WEH/2wDgQ6zLwtoifgED3+srT9Cvz8J
 FJzL9bfvmcCoOW5eu6AmMExMpGlkD/kPHFhjz8LAyfYbcqKHFTJSh7XJO
 eMWDXXuld9pmN6JIVU1kqDKP4LB5Puj1TRI/+hO8tPdxs/dAzcg9qo1GH
 h6vCCtcvV1f5w9TD/xcjIhzaB+7fkA86jgCeaxO2IWhli0oYgDEyMdX1z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i8seXXbM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net PATCH] ice: Fix ASSERT_RTNL() warning
 during certain scenarios
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nambiar,
 Amritha" <amritha.nambiar@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBBbXJpdGhhIE5h
bWJpYXINCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAxNCwgMjAyNCAxOjE5IEFNDQo+IFRv
OiBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPiBDYzogU2FtdWRyYWxhLCBTcmlkaGFyIDxz
cmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+OyBCcmFuZGVidXJnLCBKZXNzZSA8amVzc2UuYnJhbmRlYnVyZ0Bp
bnRlbC5jb20+OyBOYW1iaWFyLCBBbXJpdGhhIDxhbXJpdGhhLm5hbWJpYXJAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbbmV0IFBBVENIXSBpY2U6IEZpeCBBU1NFUlRf
UlROTCgpIHdhcm5pbmcgZHVyaW5nIGNlcnRhaW4gc2NlbmFyaW9zDQo+DQo+IENvbW1pdCA5MWZk
YmNlN2U4ZDYgKCJpY2U6IEFkZCBzdXBwb3J0IGluIHRoZSBkcml2ZXIgZm9yIGFzc29jaWF0aW5n
DQo+IHF1ZXVlIHdpdGggbmFwaSIpIGludm9rZWQgdGhlIG5ldGlmX3F1ZXVlX3NldF9uYXBpKCkg
Y2FsbC4gVGhpcw0KPiBrZXJuZWwgZnVuY3Rpb24gcmVxdWlyZXMgdG8gYmUgY2FsbGVkIHdpdGgg
cnRubF9sb2NrIHRha2VuLA0KPiBvdGhlcndpc2UgQVNTRVJUX1JUTkwoKSB3YXJuaW5nIHdpbGwg
YmUgdHJpZ2dlcmVkLiBpY2VfdnNpX3JlYnVpbGQoKQ0KPiBpbml0aWF0aW5nIHRoaXMgY2FsbCBp
cyB1bmRlciBybnRsX2xvY2sgd2hlbiB0aGUgcmVidWlsZCBpcyBpbg0KPiByZXNwb25zZSB0byBj
b25maWd1cmF0aW9uIGNoYW5nZXMgZnJvbSBleHRlcm5hbCBpbnRlcmZhY2VzIChzdWNoIGFzDQo+
IHRjLCBldGh0b29sIGV0Yy4gd2hpY2ggaG9sZHMgdGhlIGxvY2spLiBCdXQsIHRoZSBWU0kgcmVi
dWlsZA0KPiBnZW5lcmF0ZWQgZnJvbSBzZXJ2aWNlIHRhc2tzIGFuZCByZXNldHMgKFBGUi9DT1JF
Ui9HTE9CUikgaXMgbm90DQo+IHVuZGVyIHJ0bmwgbG9jayBwcm90ZWN0aW9uLiBIYW5kbGUgdGhl
c2UgY2FzZXMgYXMgd2VsbCB0byBob2xkIGxvY2sNCj4gYmVmb3JlIHRoZSBrZXJuZWwgY2FsbCAo
Ynkgc2V0dGluZyB0aGUgJ2xvY2tlZCcgYm9vbGVhbiB0byBmYWxzZSkuDQo+DQo+IG5ldGlmX3F1
ZXVlX3NldF9uYXBpKCkgaXMgYWxzbyB1c2VkIHRvIGNsZWFyIHByZXZpb3VzbHkgc2V0IG5hcGkN
Cj4gaW4gdGhlIHFfdmVjdG9yIHVucm9sbCBmbG93LiBIYW5kbGUgdGhpcyBmb3IgbG9ja2VkL2xv
Y2tsZXNzIGV4ZWN1dGlvbg0KPiBwYXRocy4NCj4NCj4gRml4ZXM6IDkxZmRiY2U3ZThkNiAoImlj
ZTogQWRkIHN1cHBvcnQgaW4gdGhlIGRyaXZlciBmb3IgYXNzb2NpYXRpbmcgcXVldWUgd2l0aCBu
YXBpIikNCj4gU2lnbmVkLW9mZi1ieTogQW1yaXRoYSBOYW1iaWFyIDxhbXJpdGhhLm5hbWJpYXJA
aW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogU3JpZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2Ft
dWRyYWxhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2Jhc2UuYyB8ICAgMTAgKy0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2xpYi5jICB8ICAgODYgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0NCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmggIHwgICAxMCArKysNCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIHwgICAgMyArDQo+ICA0IGZp
bGVzIGNoYW5nZWQsIDgzIGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0
ZWQtYnk6IFB1Y2hhIEhpbWFzZWtoYXIgUmVkZHkgPGhpbWFzZWtoYXJ4LnJlZGR5LnB1Y2hhQGlu
dGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQoNCg==
