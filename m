Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7E677FE7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 21:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5204960B4E;
	Thu, 17 Aug 2023 19:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5204960B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692300431;
	bh=CzoAdIPxiYdo747suMPznzRJnoqCScv0IuI5viRzm3Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RpvsHDMFJ3q8Nz6b8eL/JQ26qJhVtpfArnjTnPOFuB7XPlYxdOQJzoyiB5e+C6N4l
	 8PYYcx0V7GjOyQaW5qUWZOCCoAUAfacj93HXUQvODo5wbd1LdF0ickSd3qT0EOqCcZ
	 als2JXwIpyDG1IZbxEBuNr2pA4s2LckiYt7EBvMg0P9C9eOJv8bXRSashw5BHoRafy
	 SzsZMkflN2N//hxDTe84HKnCMAoVpMErKoXH6+I4sOCTixgb2lBmm85Q88VlojKxIR
	 pZeyUd32G2sGt3C5BXRmbVmd8y5NE4NPBiZQgF/3DYAh9zkzv0eU2xblDeBT/r5XOp
	 +XKBE6MNSDZRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rDWOOMDVLG-X; Thu, 17 Aug 2023 19:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 090D960B8C;
	Thu, 17 Aug 2023 19:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 090D960B8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCC981BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 19:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B1F4E41DAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 19:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1F4E41DAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I-_7rRrHgQLV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 19:27:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C00A41D87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 19:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C00A41D87
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376666827"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="376666827"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 12:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728272143"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="728272143"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 17 Aug 2023 12:27:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 12:27:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 12:27:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 12:27:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lk2puI6Sxtjg/n8MJi+9SWHgIcopsAkVYcrkfT9ua/Rfk3mAX+NV0K3b1EitiR/5+7zcUW95gw4gralEZms7r4rTOoExDs+4IqaZfvH88JZkI9xJehYkAn2AMCQPZGjLbeKYUN/fkeU6Uem72JIjEpMfshIQj76TKxg6J+wPtingtl90T4CWQp7Lnp2Sf5QTc57gCyKNEVrcNozO/4Nwum2X8byNvpGAqZSlVa5bDE8yxyNCFOayjemsyMhWKM1MKeaKleCYMvGvKuSnxg6YnllxUfQ3C+wDxcSalFX1666KAn+gT2Qt9vrUBwVIXZu3wsBJZXn9EYLjD0zoMGhI3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ywRgHpOKajJwlx0UCRh8RMPccuFoXhLRmv6AHo1Be4A=;
 b=OBfj+CicMkee22Uxnj9CBy1CP87fcBA/xdmVOQzqgBqDNdpS7yZLOhR9gsPuTTDIFvRUSMepQ2vKliwael/ZFjZld51tAwd6UrEuknX36cPetgYrR2r8j4cVnCVkJuqiQoru6qxO/TFcjE/rc71Da/Fb+XIYEvt0P4R+Ke43hGeK0c+3C4NZZCKOk0UtH3zfPryo82AlrMP3l/oEVuaFYGTb0i1aztwK0Mh1KAjmep7zAEMIDN//7d/93egG/l5QXoGAq4BTpjumb0IY5PlAfwBHMJdUlnF2PywR3sTNgqs1dF42fcDK+yPZUeJTEq1G1yNIwnh7kmIGeW+gIYi5Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by MN0PR11MB6255.namprd11.prod.outlook.com (2603:10b6:208:3c4::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.23; Thu, 17 Aug
 2023 19:26:59 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::64fe:9fb7:f1f7:5208]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::64fe:9fb7:f1f7:5208%3]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 19:26:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v1] i40e: fix 32bit FW gtime wrapping issue
Thread-Index: AQHZxQ6pzCbTaSZowE2S9t1+yT/q16/aqvKAgBRLNCA=
Date: Thu, 17 Aug 2023 19:26:58 +0000
Message-ID: <SJ0PR11MB5866088176D1BB1B6F2EA8B8E51AA@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20230802065736.3556651-1-aleksandr.loktionov@intel.com>
 <93daba1f-10e1-9d69-ea76-b52aa7eb13aa@intel.com>
In-Reply-To: <93daba1f-10e1-9d69-ea76-b52aa7eb13aa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|MN0PR11MB6255:EE_
x-ms-office365-filtering-correlation-id: 8db9ed67-2769-49dd-577e-08db9f57ece9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HYsN5pIDaPnpPtxkF1ZZu+VCpLVaemQyhqhAMv3ZK3pzrRI5es6HSrCf75VogYpaIJ4AbE5h765yS5pvofuhbkodCo46gqp8MIFWja2x8IzSn/4fw1tXe5HIniugrx82vcfYjky04ebUAT0FSBfKE2sH0EVcKAjmB5r40Q7hptYsgya0Ve7u+a298JejLgtjclLJ03W2NOHZbXuWaNSkXpNTRoiUI2XBMm3BejzAXnTGro+PPFcekOLrVG6bXkYNjQxsfQ8SObojy7hcQs3W9oFjjkWdHI2GhfJMXaasEfJ90BJBdTzFrOYc1uk1hb6GfmnCLcAi+ULlFfAjeT67iCeZk/ftNwmc04Za6h8CadGHlPHM3Wsi3hP8BEI1XTu4Nz9FGGNTUNdV4l4Jd00zaNAfirt4Nnxw1ygxw1asBcusai/lh8keRz5mYR/jFxsBseUVIHcxbTM7MmUa4pvfbm2IlzRJangV0x9m1KhTbcKzVY8LWfZAoj8XpEO3xI5fQBUENCt1IpfpC5dSRqggEu+EUtIiZCX0CoYmSm+YPzBICIlDyUo/bMNUomlrqRz32VZDZwKeQIhb1Wskw9mwdVGnpP6f5iSNtJWXC+PhKAU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(346002)(376002)(186009)(451199024)(1800799009)(2906002)(83380400001)(26005)(86362001)(478600001)(6506007)(7696005)(71200400001)(33656002)(53546011)(9686003)(55016003)(966005)(5660300002)(52536014)(41300700001)(66446008)(122000001)(316002)(64756008)(76116006)(66476007)(66946007)(66556008)(110136005)(8676002)(8936002)(82960400001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azBONEFrcGpOQUU0WWRnUTllc3JDL0xxQlRETTd6eXJlTnR2bjN6YmVCeXRK?=
 =?utf-8?B?WTRXbmViczhZaWMrWk5mb0dtaTZmRmFDQmlWcmxlNGZ4Y25vNHlWKyt5WWNN?=
 =?utf-8?B?RHZBckRKay9MRWJnaVpUTDRCOURNYmpsSnIvOFBhaUh0Ym1Ed2UxZ2t4blQ4?=
 =?utf-8?B?aWZ5ZGx6dDFvUEh3L2ovWE1vUlg2V0FmWDFuTEpDUXA5N1FBWXQ0d2lnOGpU?=
 =?utf-8?B?dytxUnY3TXc1RmxqdTZ3TkNkcjlUdDBaeDZVL2x3R1VHcWJVTWJaS1UzWlpv?=
 =?utf-8?B?c2J2RWpFZTg1WXQ1NjFDRXI0Qk93cTdxZGY5Y2NXQVZyNzJXckRJT3ZuQ1Vs?=
 =?utf-8?B?OW1EOGdxRmJ0R3l6VmFjeU1wNllxeGd2dllabm5TQ2Z1YkFVSGN0a1d1akoy?=
 =?utf-8?B?UFU2SVIrUys5MlplcVJRWE94YVB2WWwxTjh0MmNrWitQbWErZ09vNVVKN2xR?=
 =?utf-8?B?ZTFkcGkwK1l3SDF6KytUbkxGSWtBczhpNHBCeFovd1RLT2RLbkdUbjlNaDlR?=
 =?utf-8?B?aVdPU2VFMTVneThSbG1SVHBOOXJrTTFxNnBVZnB2a1ExM080bEFodnRZZGdQ?=
 =?utf-8?B?SGZiaXNiYTR6VjB3WENhaXJWYUVyOEZWeTQwbHdKMHQ2eStPZDNPendmdk40?=
 =?utf-8?B?Ly9yWlpDdTJzRFVsOHBDUk95NitGc2NlaXl5VXZLZlFwQUdLdGZrcW9VK0lj?=
 =?utf-8?B?Y045VTZYcGtyWWhJVXpodGhOa1hIT2FYRVBiUmZ4UGxMZEJSZjAzVmRPUWhH?=
 =?utf-8?B?UHZiSUI0RzQrMWZ0RklwWmM0RE4rd2F4bDV5WFpmQkpUc0F1c3A2MFZoRVZS?=
 =?utf-8?B?L0JoRkR4S0JIU3dQaFgyT1dMQ1QrRjBNYmwvdUQ5b1YwQjJhejcwNDR4b1k0?=
 =?utf-8?B?eU1naU01RTg1YTNPdG02L3Y2Z2RwdG5HUFlGLzZzR0luOGozam9janJiakR0?=
 =?utf-8?B?SHFsVmRkdkozTzkvRXRaTTQ4Zlc0QzhLUUtqY0Ftb1UrU2pWZjRVckJ2UmMr?=
 =?utf-8?B?ekI2ZjFucWtSY1NDQU9zaEtRcC9JV0UxZDVPT3Y2WGMvTUNvUWVCNFVKcGhw?=
 =?utf-8?B?RFBCQjgrbmkraEdmeEVBaWpaQ0JuRStpdy9KKzdVOXAxTjEwMUtjL1hyOHNn?=
 =?utf-8?B?Q0YvMWhWb1JPSXBXdko3YXdoZWtDMkRicE5OK3N0TVhsWk1DR0dBaVVtaEsz?=
 =?utf-8?B?RTFQYzZ0NjFZcWd1N1Y2ZlRVZkFGNStUeldkQTRJaS9STS9hV2pORDJNR1VU?=
 =?utf-8?B?NzNUUFJ2NjZyQkFmNmtDQ1hTYVVlV2pQUDJFRlZvWjAyOGFHS0haTXc4cFBk?=
 =?utf-8?B?MXpSUnhZSjk4S1c1ZVNrNFVwUkp5dUUwa0lvWXhya1JHdEEwdnd3eSt5MUFO?=
 =?utf-8?B?V2R4V3BVUTYyZGs3UHFpWnEzYVZkaU56TkxrRjh1R0w0TVE4K0hrdFhBY2Ru?=
 =?utf-8?B?Vy81Q0NTbzFqZVZSTUNMT0pWUDJTeWZqakZLYVdkeHgwWFlpSFNndzYxV0Ns?=
 =?utf-8?B?WUxTNURhUlkrdEdFNmowMkZkempRZ1lXSFFlbTVlQThscTZkUVNvNVhJd1B0?=
 =?utf-8?B?ckUrVXRRN2ZkQkZqU1ZibDY1R0JBUTk0cUlTaldBZWpDM0N6cTZCbURPeUtm?=
 =?utf-8?B?TEUxYVlRb1hWNXl6ZlpUaG1SWmx3Y2QzNUY2VzYvVkF5ZnRuVlo1RmlxOG1L?=
 =?utf-8?B?YlhTeVgzZTF0elhGUWRCZEVFK0ZKcmFzNTd6dmc0OHdLcmVoQTBIR3RnU2Q1?=
 =?utf-8?B?Nzh3OFZadlA4R2pobHd2dXcxZ09mUHJqbjFURWZsVjBPejdTV01rMS9YVDV2?=
 =?utf-8?B?bmh5elduOFRURGJBbXFOQmkzQno5cFJwQ3pYTllkTGlQNTFpU01kRWJ0S05E?=
 =?utf-8?B?cGFpQVdYNGY3V2hkOVU3RnA1S2VGR2hsOUZVUHRoYW1aTnRSS3JaaDBuY0tM?=
 =?utf-8?B?aFcxbnFSUlB4M1ptVlhYMXpYL2xsWDRvQm5iVDE1dWd2TUdDeGVXZm9JUmVI?=
 =?utf-8?B?MnZxMkdFZFFuVkZkQTRUbjJhcTNwdC9OdmVVT2h2aXNreHo2bkJZUzM5M002?=
 =?utf-8?B?Q1ZsdGVBdnpldmgzUi83am1UU01Ic0NaVStmUEVJTUlIN3pyYlE3Vmw5R0Zn?=
 =?utf-8?B?NDdyRG5wNWVSUTFhNVd3MVQ4VVlJeWQ5R013bUp2cFJJeUo3cmJ2bmsreFpt?=
 =?utf-8?B?cVE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8db9ed67-2769-49dd-577e-08db9f57ece9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 19:26:58.8548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MzPAgmgvdlHqgGN8Q9er18NtBRBWdIHzTXHYaZhWwoJEyYZmooaYxblzanJtCv+d37cL2SW3Yc3+HSxb4o9HWD80BTXDBujsTxK2Hg/t0nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692300423; x=1723836423;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ywRgHpOKajJwlx0UCRh8RMPccuFoXhLRmv6AHo1Be4A=;
 b=mdL4QaBA849qMjcGWw7ibZg/XB29ayPx5sBzHBdyHdtsYakYOfNiw0Vh
 rGPjFl8BOEqWKwrIK9ToFvj15cmj31nbuM5Ju6dtklinzE7LdnzOCkLIo
 72s7JxF6IPP+03QuAq9190RfBX4HN2W209zhQWgBlw3/FMTHohOiwa/eq
 /rXlmWPgagqKuaMj/8+rMcUp/N9sulB1Q6ligSVTW0f99yHrqthlYY1cW
 fOqaKexPDEMYSQPKnhvIxz9Qz44kKqgOhHrl19IhzV1x0EFPgUnGiJTOr
 cD3X/o+CPdMypuf1XVldb5iYAT0Ff1KIE1EflFRN2hbI/hmV1sFFgZeIb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mdL4QaBA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix 32bit FW gtime
 wrapping issue
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
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, August 4, 2023 11:28 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [PATCH iwl-net v1] i40e: fix 32bit FW gtime wrapping issue
> 
> On 8/1/2023 11:57 PM, Aleksandr Loktionov wrote:
> > Decrease hw_semaphore_timeout size down to 32bits, because FW
> > I40E_GLVFGEN_TIMER register is 32bits only anyway, but having both
> > variables same u32 size simplifies code.
> > Fix FW write semaphore expiration condition, taking into account that
> > I40E_GLVFGEN_TIMER wraps, by checking the sign of substraction
> 
> s/substraction/subtraction
> 
> > of two 32 bit vaues.
> 
> s/vaues/values.
> 
> I'd suggest making this paragraph first since this is the issue you are fixing.
>
fixed in v3

> >
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> net fixes need Fixes: tag
> 
Fixed in v2

> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_nvm.c  | 8 ++++----
> >   drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
> >   2 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> > b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> > index 9da0c87..0fe8fc3 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> > @@ -55,7 +55,7 @@ int i40e_init_nvm(struct i40e_hw *hw)
> >   int i40e_acquire_nvm(struct i40e_hw *hw,
> >   		     enum i40e_aq_resource_access_type access)
> >   {
> > -	u64 gtime, timeout;
> > +	u32 gtime, timeout;
> >   	u64 time_left = 0;
> >   	int ret_code = 0;
> >
> > @@ -78,7 +78,7 @@ int i40e_acquire_nvm(struct i40e_hw *hw,
> >   	if (ret_code && time_left) {
> >   		/* Poll until the current NVM owner timeouts */
> >   		timeout = I40E_MS_TO_GTIME(I40E_MAX_NVM_TIMEOUT)
> + gtime;
> 
> Since timeout is gtime(u32) + I40E_MAX_NVM_TIMEOUT, does timeout
> need to stay u64 to hold the result properly?
Yes of course, it was tested.

> 
> > -		while ((gtime < timeout) && time_left) {
> > +		while ((s32)(gtime - timeout) < 0 && time_left) {
> 
> How is this different than the original check? It seems like a different
> variation to check the same thing.
Please see the commit message v3, also see comments for #define time_after(a,b) 
https://elixir.bootlin.com/linux/latest/source/include/linux/jiffies.h#L104

> 
> >   			usleep_range(10000, 20000);
> >   			gtime = rd32(hw, I40E_GLVFGEN_TIMER);
> >   			ret_code = i40e_aq_request_resource(hw, @@ -
> 1192,9 +1192,9 @@
> > static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
> >   		u32 gtime;
> >
> >   		gtime = rd32(hw, I40E_GLVFGEN_TIMER);
> > -		if (gtime >= hw->nvm.hw_semaphore_timeout) {
> > +		if ((s32)(gtime - hw->nvm.hw_semaphore_timeout) >= 0) {
> >   			i40e_debug(hw, I40E_DEBUG_ALL,
> > -				   "NVMUPD: write semaphore expired (%d
> >= %lld), retrying\n",
> > +				   "NVMUPD: write semaphore expired (%d
> >= %d), retrying\n",
> >   				   gtime, hw->nvm.hw_semaphore_timeout);
> >   			i40e_release_nvm(hw);
> >   			status = i40e_acquire_nvm(hw,
> I40E_RESOURCE_WRITE); diff --git
> > a/drivers/net/ethernet/intel/i40e/i40e_type.h
> > b/drivers/net/ethernet/intel/i40e/i40e_type.h
> > index 388c3d3..efffe27 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> > @@ -328,7 +328,7 @@ enum i40e_aq_resource_access_type {
> >   };
> >
> >   struct i40e_nvm_info {
> > -	u64 hw_semaphore_timeout; /* usec global time (GTIME resolution)
> */
> > +	u32 hw_semaphore_timeout; /* usec global time (GTIME resolution)
> */
> 
> Can this hold a u32 + I40E_MAX_NVM_TIMEOUT?
> 
Yes of course, it was tested.

> >   	u32 timeout;              /* [ms] */
> >   	u16 sr_size;              /* Shadow RAM size in words */
> >   	bool blank_nvm_mode;      /* is NVM empty (no FW present)*/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
