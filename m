Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4713E84096E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 16:13:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93BBD40980;
	Mon, 29 Jan 2024 15:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93BBD40980
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706541191;
	bh=1ZF38ZZSsa2XOkIZcI8jPbNbd/Zg+Xgm71aBQUjiG/k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U6mUM+3r/Z94HW//jxZLjs0rgrjp74hs0MXDc/jnjp2qDq2yUgENH8evb3hnjucWJ
	 X5G3/OrKpjGLLUF2RvGBm/mNVLo8RNBO2iUfV9t7OBK6NdMTWfyYZQQimv/Ditxqx1
	 zHhR9QbXAycumwDMOtKFOhw/xiLC3kvJvPffU664EO9lbsDTGr3c++M1UOEmzYjwT6
	 hSPL6pQCqvRudJ2KoMB9avWjYldP4ROaIAvzDhq9ytemKAys89C9mPwO6vj3aPhMeu
	 +OMI5SJrIJdKZdftSCVjMNtKHY2ds3qNRnXhJEb11S8U6F8NYk0AUl/cjLap3vAaLX
	 OXiyd0/gSThxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dXYAqavD2Os8; Mon, 29 Jan 2024 15:13:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8732840997;
	Mon, 29 Jan 2024 15:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8732840997
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8DB1BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 15:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B83B40159
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 15:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B83B40159
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wiJreW_4rOPH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 15:12:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABF5C4010F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 15:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABF5C4010F
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="24452515"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="24452515"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 07:12:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="3486839"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 07:12:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:12:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:12:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 07:12:08 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 07:12:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iq1TWCPSc88mJgAqlwifBx+1cwAGWtLns4YLe4IpBLGHqwObilakwIu/mv5h7b1xqA0MBUO7S3MuN4URqLKXA4xZmL9Cmy7Fj9N8p7iw2WHdo9xYSsWemOMrp0Q4+15YIB9TZbpT5OQJTX3JvQLQMX6/5RpBrafbifmykIKq8G6zt9R8XEBEOFnLapqFa6IJh7W88kywsnNDRnhqIw4WSl+WFN2wA6wcWgt6lOdLTbo74DQGTv4NagwdjND4Z2W6yvJHOeSaX0QAOfPultLv7x5hqqyadxeUwTkSJtEkWvi353Rrq1om62ZWVnknO4fOn3s4lpTLLMcWNumJ2vwJgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ZF38ZZSsa2XOkIZcI8jPbNbd/Zg+Xgm71aBQUjiG/k=;
 b=jrHgnnrPUWMLebxEeAm/4DFjfBZnEcG66/wl9+eX6TKD5uhd0BHsRxA1aM4sn5ty/sfxhKuMwEOji2n48ZsYnbHiRmMsoaA/AY4a09y9onYGF5azwCp5aqX1od4rbLYRLuKZ3upsVdKNwuyvCSUZDvvCGEDqV5GWAgIrj6PJW+fwUxnQ+S3kdoULBG5twmBqzVeXBXDoI4tsUVNWgLhuKAQodrVkuiTVFqIZbkiLvweYIM9u3H2/ZOtJzG9i2vyXPCco4cXTn/ezQrpAdqgMd2ljue9ZTh8i0eX7w9aszsQdpUVQ22lyG8DMOo7GbYWtIb8T7Av2u8G7OKd8IdfWsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by DM4PR11MB7301.namprd11.prod.outlook.com (2603:10b6:8:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 15:12:06 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bf2:91ee:5ddd:6f77]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bf2:91ee:5ddd:6f77%3]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 15:12:06 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 0/7 iwl-next] idpf: refactor
 virtchnl messages
Thread-Index: AQHaUBtB+GG7uZ6ZPEeC/IHRjTNXr7DwzIKAgAAc8XA=
Date: Mon, 29 Jan 2024 15:12:06 +0000
Message-ID: <CO1PR11MB518654C3B590812C4155C2138F7E2@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20240126054747.960172-1-alan.brady@intel.com>
 <41774365-e247-4e32-9e96-d256acfcc129@intel.com>
In-Reply-To: <41774365-e247-4e32-9e96-d256acfcc129@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5186:EE_|DM4PR11MB7301:EE_
x-ms-office365-filtering-correlation-id: 9e4d1ddc-f762-400b-4606-08dc20dca80c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L47frO+/uO0pemtpEvu11LNXyAGlxHdsYamVzSzC9aAKjC2zEXZRj98DAdjWcuF+liMIwh2s0pkthDvc0vc5+Dqe8CyvUDEqY5BU9BLMkcgFT3Bclx5iqQbWnXCtZT2p75I4oBvab5M+lLkjuCIMFHLtL+chHoH62giM1hVIcGdmwDLWIfHD7v4vCjoul1zacuvkK741jgL7fgeqvCDgniR57IcFusvuk9JgZpZjuiXK5NqzRGSJNwSIM4+2+4uJ8Nx6XLCxjVpuwKubWXfB7CemL8lzquYE9uuu+0KLlfzp8gOX83kCHcYuq0cVB5eqpBPyMlajsCU9fKRL7FfKHQrIyoHgfa5HP+pTz+a/K8lZNCfxVm+QdSI/ntrKCEDn+3EuZ/niQ9HrrjT+4q6TAqbLtIY5a3lg9S+XSMeaz3wK974BT5cEByUStKlAT2L1Wz2iFXixHbPvUk1jJlGOtmDe4mqviz3nnk1mFp9iBvq+PqfQsHkMOKbf7viBe9fEQuib44OFaztJWzIxCQTuWkz+YTQ7bD0u/iW+Qqbx8UzBzPx6TvX+vKyERsKZq/NdAJoPca5/WoP0cflfcyIEP8NRQKQTIknC0VNSeYSria4iRAXEyvJY3TVYI7wvgY2P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(376002)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(8936002)(8676002)(6636002)(64756008)(66446008)(316002)(66946007)(66556008)(66476007)(76116006)(33656002)(15650500001)(4326008)(6862004)(26005)(83380400001)(82960400001)(478600001)(71200400001)(52536014)(38100700002)(86362001)(2906002)(5660300002)(54906003)(7696005)(55016003)(122000001)(9686003)(53546011)(6506007)(107886003)(38070700009)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlVSQjRUYWxPTHdnMHZNSWlvVVpPQUJTWkdVYXZCZERUV2o4SlFIdUI0RStk?=
 =?utf-8?B?RmJZUHpqZ0Q2eC8reEFjaG9ERERFSGszVEZBOWkyRlgwQ2tCbHRyQ1JGdzdz?=
 =?utf-8?B?N2FDMitibk1MckZuV2JWYis5K1UxMWpCLy8zeWtIMkMxSmZFamVJdXJyeGhi?=
 =?utf-8?B?YTA3V1UzcldLTFdGbnJnTU4wdVpXZ3psUUxSNUJpcmlMNmxLNkkveUdXOVdI?=
 =?utf-8?B?NG9KUGVsMFBXNzVNRENZM3JTQjVEWi9SZlZ4L0x0WVVtSU54WGxUZVBlUFdM?=
 =?utf-8?B?ZzE0dXpjV3pVcSs3S3JqOVBvdkVQWHVNTGQ4cGsvKzNFaU8ydUdzVGl3WUF4?=
 =?utf-8?B?dTdocnF5ODU3Rjd6c2ZtYTU4YThhaUN0RlFFZ3BOSVhYYjJEdC8vQXJVMFU1?=
 =?utf-8?B?bUJRNXB2T2h2UnBocXpIUW1xMU9xUldBQ0VNK1pOcUU3UnQxZ2JRY25pV3oy?=
 =?utf-8?B?Wk4vcFdaeFFLYUFrdnQrOUZQeERBRHZqZUUvSnY5NGhETmFHL3RDaktCdith?=
 =?utf-8?B?UGhGcWNyYm9kK1JYL3B0a1drNWc1cjIyYU4yakpBN0pLOVRhZ0NpUWU1d2pm?=
 =?utf-8?B?MW9vLzBWZWFCSEg3SHNLVEJ3dGJkejRPbWRFM0hwSUtNQVhFbGlWSVAzSUtt?=
 =?utf-8?B?SnBVQ2RJTkJ5OTlVTVd4a0xCanczY0M2MkplbDNWdUlFRFNuVmFtRlgyTnlj?=
 =?utf-8?B?UVdjNHlNc04xTHdITjJiTVZpVGxxdWdEejlpT2RQMmZDNlZGcTlQL0RtRGJx?=
 =?utf-8?B?cG44Nms0ZXQ0MXIxL0VQMzAzSFAvbnhpOThZai8yRFlGcWJBYlJRa3pJclNi?=
 =?utf-8?B?bGt3bks3MDFJVjcvNnNsMVdDcjFESXZWTmFLdjA1amwrVzZFUXRReHMybVBv?=
 =?utf-8?B?MW9VQVUzYXI2cGIxM2VYZnBjbG1HRlhuekhmeDN5WEJoQnJSNE8rN1hNY3or?=
 =?utf-8?B?ZExDOG5ja01FeklBQlZDUWlvQ1NwK1VadHlIRklwdDFScDlIU2J0bmtkMnB1?=
 =?utf-8?B?bU9mZU5CNUpDS1FZaUsrTjhJNFd2ZG5TblRRb0xlRVhRam5VTXZJREQwRXlH?=
 =?utf-8?B?RHBHNTk4VkVBUTV2dlZWRnRqeTljM0VGdlFvM3FSU0lxZGhrRmFRODlxMlBU?=
 =?utf-8?B?NkQ4RzYvUE9NcDdoMWRLYWtoRnlIWE9qNEJURUJsTDlUMlZvcUI0MnFnRTZk?=
 =?utf-8?B?aExsOFNVWWVWVGcycjkzd21iamdnU0xuWjJTWmpNMXdOaTFUUlNoY3NIcU40?=
 =?utf-8?B?cnBOWVZlT3ZHQ0NLaUE3U3hvdVMvZVBaUFpxVEdPSWJ2cDRXczJXc015U1Yr?=
 =?utf-8?B?YzFzWTVqZnQ0Mit4aWFTQkQ3djBiUW1ZQVZ5aUw0QlQvWGtFNVA0ckxmaGVn?=
 =?utf-8?B?clFlbUlHT2dmYTNLQUp4SkNxKzB6dm5JNHlWa3Y2dlh2RnhLSmtzZzRLaFBq?=
 =?utf-8?B?YnZmMkYrZmgrN0J5L0pTVFRTQ0w2a3kvTVVFWG1WeXBGakhlYWl3ck1NekE0?=
 =?utf-8?B?VGwzWGcrcjduSnYybEFJdG04Sk4vS0M2TEZob3dJTlo2bUpzYlpLQUlKRkZZ?=
 =?utf-8?B?TG1xMzdWaktyanRwMmI2cER4bCtKUk5ZN08vSitNNmJINXE3SVBzYzlyc0Z2?=
 =?utf-8?B?TmxkVmNtK3ZQT2FVckc3MlZGdDNYNGFVVTluUzlDT2l4MENETExRUXAwWHpW?=
 =?utf-8?B?QmRyMVZPdFRKUDRtcGU0ODV5RnJ2eDRVSTNCd0FyaXNlanc1L1kxK3d2TzNT?=
 =?utf-8?B?VE15amxCUmo4eEhsaXRERHVrcWhvSEczaUR4V0hHTkE2NG5lLzlaOGFWMU5O?=
 =?utf-8?B?RmsvbHdrbkxvc3hXVU52SW9rbDhBTitydjRrRmNTRkpPTmlBZEtPZTJDeGNh?=
 =?utf-8?B?QXVGKy9lMEMxQUE1Vnk3Sk5wZGJ3c3A4Y3B1bGtBWkdmbHZJSVFFYUl6NUxO?=
 =?utf-8?B?STViaGhuMUNpa1ZOWHNXYTFXRnBvRGxmdEtnYUZVdTlEOHV0RW5tR2JNRGV1?=
 =?utf-8?B?VHpYWHlkOVN1WEtHMWF6UWFncEx2emlXby90OHVtUDcxZ1JEUUk3bjFKQTJj?=
 =?utf-8?B?MXlWaXNqcXVwQi9KYkszaEJOOStUMm9RM0lHdW1zZkJHWldhOEdFcnhCRkE5?=
 =?utf-8?Q?gO+ZpfBFTqK3nivI/SmNslU7Z?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e4d1ddc-f762-400b-4606-08dc20dca80c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 15:12:06.3639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OZztLf5jEoEF5Y+iEhTEi3eNfOtV0GdK1D3AH2mdGOiIEWcoGrhL2yuNNqO3gtb/p7hxBnuJGauMe/jzLBXhrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706541179; x=1738077179;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1ZF38ZZSsa2XOkIZcI8jPbNbd/Zg+Xgm71aBQUjiG/k=;
 b=RyudSQ8/5XvkXSJB9uJNgc5dmzB0z7LoEyfXwrT3XlqpdN6gbrKXctMZ
 QOeaxpINYvLSVR/7NNNo5xeoH5rPeuBkUSssx/0xsPykBmD3LGhoqJa1X
 HsmQNmBqj04siMNbqCpd2MFhg+rMMS3V+3ZOoaZiryegIRLU7EBkyT7VA
 Cos9F+WlMQHvIJTbBPmoSgrdlfs/BtwvzGZHkjYC0VcirATVjsAtSLy2u
 0aIuAg8yvydTxg+MGfwi7PbA+A9S6VhVf5dBE5hh6Sam2xMKoktJa8j2c
 SMv5WO/+737zK9fcaaIYYB90IQ5s8uSfmD45jh7U1ZGY8dnGf8sbr8v54
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RyudSQ8/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/7 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Bagnucki, Igor" <igor.bagnucki@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMb2Jha2luLCBBbGVrc2FuZGVy
IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEphbnVhcnkg
MjksIDIwMjQgNToyNCBBTQ0KPiBUbzogQnJhZHksIEFsYW4gPGFsYW4uYnJhZHlAaW50ZWwuY29t
Pg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7DQo+IHdpbGxlbWRlYnJ1aWpuLmtlcm5lbEBnbWFpbC5jb207IEJhZ251Y2tpLCBJ
Z29yDQo+IDxpZ29yLmJhZ251Y2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4g
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggdjIgMC83IGl3bC1uZXh0XSBpZHBmOiByZWZhY3RvciB2aXJ0Y2hubA0K
PiBtZXNzYWdlcw0KPiANCj4gRnJvbTogQWxhbiBCcmFkeSA8YWxhbi5icmFkeUBpbnRlbC5jb20+
DQo+IERhdGU6IFRodSwgMjUgSmFuIDIwMjQgMjE6NDc6NDAgLTA4MDANCj4gDQo+ID4gVGhlIG1v
dGl2YXRpb24gZm9yIHRoaXMgc2VyaWVzIGhhcyB0d28gcHJpbWFyeSBnb2Fscy4gV2Ugd2FudCB0
bw0KPiA+IGVuYWJsZSBzdXBwb3J0IG9mIG11bHRpcGxlIHNpbXVsdGFuZW91cyBtZXNzYWdlcyBh
bmQgbWFrZSB0aGUgY2hhbm5lbA0KPiA+IG1vcmUgcm9idXN0LiBUaGUgd2F5IGl0IHdvcmtzIHJp
Z2h0IG5vdywgdGhlIGRyaXZlciBjYW4gb25seSBzZW5kIGFuZA0KPiA+IHJlY2VpdmUgYSBzaW5n
bGUgbWVzc2FnZSBhdCBhIHRpbWUgYW5kIGlmIHNvbWV0aGluZyBnb2VzIHJlYWxseSB3cm9uZywN
Cj4gPiBpdCBjYW4gbGVhZCB0byBkYXRhIGNvcnJ1cHRpb24gYW5kIHN0cmFuZ2UgYnVncy4NCj4g
DQo+IFsuLi5dDQo+IA0KPiBUaGVyZSBhcmUgYSBmaXN0ZnVsIG9mIGZ1bmN0aW9ucyBpbiB0aGlz
IHNlcmllcyBhbmQgSURQRidzIHZpcnRjaG5sIGNvZGUgaW4gZ2VuZXJhbA0KPiB0aGF0IGFsbG9j
YXRlIGEgbWVtb3J5IGNodW5rIHZpYSBremFsbG9jKCkgZmFtaWx5IGFuZCB0aGVuIGZyZWUgaXQg
YXQgdGhlIGVuZCBvZg0KPiB0aGUgZnVuY3Rpb24sIGkuZS4gdGhlIGxpZmV0aW1lIG9mIHRob3Nl
IGJ1ZmZlcnMgYXJlIHRoZSBsaWZldGltZSBvZiB0aGUgZnVuY3Rpb24uDQo+IFNpbmNlIHJlY2Vu
dGx5LCB3ZSBoYXZlIGF1dG8tdmFyaWFibGVzIGluIHRoZSBrZXJuZWwsIHNvIHRoYXQgdGhlIHBp
ZWNlcyBJDQo+IGRlc2NyaWJlZCBjb3VsZCBiZSBjb252ZXJ0ZWQgdG86DQo+IA0KPiAJc3RydWN0
IHggKnB0ciBfX2ZyZWUoa2ZyZWUpID0gTlVMTDsNCj4gDQo+IAlwdHIgPSBremFsbG9jKHNpemVv
ZigqeCksIEdQRl9LRVJORUwpOw0KPiANCj4gCS8vIHNvbWUgY29kZQ0KPiANCj4gCXJldHVybiAw
OyAvLyBrZnJlZSgpIGlzIG5vdCBuZWVkZWQgYW55bW9yZQ0KPiANCj4gZXJyOg0KPiAJcmV0dXJu
IGVycjsgLy8gaGVyZSBhcyB3ZWxsDQo+IA0KPiBUaGF0IHdvdWxkIGFsbG93IHRvIHNpbXBsaWZ5
IHRoZSBjb2RlIGFuZCByZWR1Y2UgaXRzIHNpemUuDQo+IEknZCBsaWtlIHlvdSB0byBjb252ZXJ0
IHN1Y2ggZnVuY3Rpb25zIHRvIHVzZSBhdXRvLXZhcmlhYmxlcy4NCg0KQ2VydGFpbmx5LCBzaG91
bGQgYmUgc3RyYWlnaHRmb3J3YXJkIGFuZCBtYWtlIHRoZSBjb2RlIG11Y2ggYmV0dGVyLCBzb3Vu
ZHMgZ29vZCB0byBtZS4gSnVzdCB0byBjbGFyaWZ5IEknbSBvbmx5IGdvaW5nIHRvIG1lc3Mgd2l0
aCB0aGUgdmlydGNobmwgZnVuY3Rpb25zIEkndmUgb3RoZXJ3aXNlIGFsdGVyZWQgaW4gdGhpcyBw
YXRjaCBzZXJpZXMgdG8gbWFpbnRhaW4gYXBwcm9wcmlhdGUgc2NvcGUsIHllcz8NCg0KLUFsYW4N
Cg0KPiANCj4gVGhhbmtzLA0KPiBPbGVrDQo=
