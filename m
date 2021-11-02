Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870A14424CA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 01:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B960E40276;
	Tue,  2 Nov 2021 00:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wZoJM1htXtP; Tue,  2 Nov 2021 00:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B012A4026D;
	Tue,  2 Nov 2021 00:35:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 595D31BF32A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44A0980BE3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ier86EYJCY-g for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 00:35:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B72ED80BE0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:35:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="317355159"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="317355159"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 17:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="666915107"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 01 Nov 2021 17:35:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 17:35:00 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 17:34:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 17:34:58 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 17:34:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDe/79T39KMzv7v0g89a18fUnBlQfjZmKwSYx/OcWgQYunjIZco3Mwh4DmlQI8StiF6kwyV0gN+Ltsm9rZFT7FoZnJtj6tyEzP16M8IKo3GNt3YtWpZsM1aTHNaeP9lGcW9wsnYClknO1+3RZoT27773QDqZZXyGjRxlqEf+AY0F5/odcKBXImT6zvKSFIAxuYLr1LiQ9pAsZ5hnJMLAuzAeU+CgL7BgHSXxtC9AnJ1DntTpw06tjtqcbygoEHmS5krwRnRuWHp6H39y4PQBgdnMBqp/8OkihGku7/JpdMlOBmCExSxnx+g+zeaRKFiwh69A3+B8+ljLpiYlWT8HHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgvIqBO0nX+0Y6ECrlc20ynje3Z/5K4V8S+AYLQiGMg=;
 b=FZseTHN3yiV54Yrbaqj3wxesWEOwasR0Cqs+POxavOKzj+3/l3dZ2xLgBAA6QURdzob00i1nojmfrIOkRnSg1Bs1xRx3iEcWYDAY7yUNhc7phFcMOVQvHCRX9r2sMA7ocXTOsDj1pQwp/Paod7bTRrLr/8++dvLPpnXdj72LdOsFqAt+GNAtEOrYvrp4QC9pAxya6F2SZU9fGcFI0UrygcAWWQtUdTgPvxumXF0si2sShwmxMnnBGzo9q+M+mOHrgsTCW62KxPeRj1723EI//x5s6++zMn5NiX/o/DaJ5eh4qmEal5C5OPNWo4PA4qeJeiBLGWz+cUmEd+RDXvsBxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fgvIqBO0nX+0Y6ECrlc20ynje3Z/5K4V8S+AYLQiGMg=;
 b=zKa/XMbYMXIDOEyGzT+WGbcLogClDpSVFdvxFNMM8arRzrIk6N0WADK+FOrULP81YGOhh/0kGyOjTKZXjv0uJXHzwg2SqGgCFguZ/n47XJ22NShPYQC6MncAioMro6G/+dkDQDKAjSyS3+NBI4uVw5P9S3ym9n4hXrRrhglkaJ4=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB5208.namprd11.prod.outlook.com (2603:10b6:510:3b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 00:34:54 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%7]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 00:34:54 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 10/15] iavf: Add change MTU
 message
Thread-Index: AQHXWWPxWbbSqE8DkUmGaxbKMme7Y6vwUB8A
Date: Tue, 2 Nov 2021 00:34:54 +0000
Message-ID: <PH0PR11MB5144913F23811391A0665C82E28B9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd9019e4-73c3-456c-c249-08d99d989718
x-ms-traffictypediagnostic: PH0PR11MB5208:
x-microsoft-antispam-prvs: <PH0PR11MB5208A0E2E993484B182DDBD6E28B9@PH0PR11MB5208.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: niupyjDzh9V4SOHPo9CSF8G7qaq4ZROx5CfJyIQHDgug74NVIRze3Ml4YORKUMtY6MKbIWhuPskfRxqi1yJUAdZJGYANoD3XuJDWXd29JN1N0hErVRbMJIWZ56deOcti/nTdCm7B/l5rHPP2pBYVAgM6YmjzX+mtkBoE+fJL1bwq6TG2NEGnqnkYloT7w1KUkHe3hjCfIOTUPFLtX83YwLE4qM/8mTyBU9r1nfA9tw1agl4YiFW00Wl9rx7DRvTTHcHKgB9GU0dCpl1qDCBtOpcmE4om5n9Kle/CiadE4/qyNsT5aReh5/I37sq73WUyvCyT7CTMvLuwYU26r0yROtmEMD3oqB6r+CmOrF81qz8bd4Y/bYHGoCvI+TgCK8L4c4DPmw2qcMKUjnBPX9bHrNzni0YkeCr36cSXOAO8sHIMiFUdfha/XTpR+OkYaS3X3JRqo+sYbrmimmGIH90m18c/sVqsoiO8mHZuIQXW8S00QgyPwU89k7vQ1HdLpcEznQwVa4cjizFUCD2rgbTzeHGSxfXVSgwgJ2Iole+ZtmUGckFe5M1lvi3ZXaOnoeTmcGad4kFVmsF2w105L/Ns6laquoVShCKkhksKSTvuSrNt7VxBcy6QYa95kk2icftO2LrMSd8qe2F0rv/OLn9mcyyRQ9OTc2dHEtXWIRr8AhqMJI4feA3PhrXDp11vQVZr2zbLt0YqiybRQ0lKpco7qQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(64756008)(66446008)(66556008)(66946007)(66476007)(2906002)(8676002)(76116006)(9686003)(55016002)(186003)(15650500001)(5660300002)(83380400001)(122000001)(107886003)(38100700002)(6506007)(53546011)(508600001)(7696005)(86362001)(26005)(38070700005)(110136005)(52536014)(4744005)(33656002)(8936002)(316002)(4326008)(71200400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3hsVVpuWUlZbFpFNzNQMlpPR25jcFdzT3BXK2ozQy9EL3pRS3JFYmFpUWtO?=
 =?utf-8?B?UldKQXZRTjN4SEdBMHhmUXNISnJyeEp1bWppNFhSTEtPa2hvdkZwZ1NJcWxS?=
 =?utf-8?B?bUZWbzJrQTVtcW8zS3lrMWFLRysvemJOYkZSdkl2MXllL0crZFNMVWx2dnkv?=
 =?utf-8?B?VDRQODlqRTZnclZOME5vMzhJZ0hjZTlKTy9QZ3RjS0IrQnIvdnRmdXhiOVdP?=
 =?utf-8?B?R3dFYkhZd2NjL2srenF2SmlYNnJFR0tRaGF5Y0dxcmQ0MHJSTEhNd2M0QzlL?=
 =?utf-8?B?MlNlR1g2aGlxSi8vOVU5TGJyRFZ4UkMrMWtRdFBkWE1QbldnZHB3UGdlUGJY?=
 =?utf-8?B?OHdwcmhZRE9NemtOMUVZMnAxRTU0STIrZXZpdW1yWXZ3bWF1Z1VJdUpFZCtt?=
 =?utf-8?B?TmdJNThXSHJIeUhhZ0VoOFEwaGsvMzNDOVExL1R0UXBWd05RVEJnK0dvWk9h?=
 =?utf-8?B?eWEwL1YzbktzU0ZPcWxDYXBtWnZjMEZJa1g1WUVGd3ZmcnJVMEFNU1U5Y0tW?=
 =?utf-8?B?Q0RsdEFldDJKdHgrMUFHOHRxWVNxYXNxaC90c0JnNXk5NFErcm5iYVRlclk2?=
 =?utf-8?B?SnRXTWZpQUVZeldZRFNtazBBQStFUVVqM1BnYk8vdVFXTmNmZDRPSUpzREpV?=
 =?utf-8?B?cEcrZFIwcnpUY2FGREtRMUFRNFFkRngzYUlzWXp5UXlmV3k1WTZqVEsvckFp?=
 =?utf-8?B?ZERIWlZ1ZkhwM2gyZnpkdXRaZXFNOXV0WElnbEhKZ3RJallTdG1GTEN6SzV3?=
 =?utf-8?B?QkxiNUtBR3NySFlKWU55QitTUW1LSG8vSjRCTFFTSG9KaXgrRjNGZ3k0VWhr?=
 =?utf-8?B?eTNSTEZHOGwrakNVMisrTDZjbFNjYzkvVHJPby9ta3IyZDVsaDV5c1JTZUJQ?=
 =?utf-8?B?K1VHT0RSbFlZY29DWllJUGdpVEpkcmxMNTJaVUE5R0pycVF4MGMrZWphVGln?=
 =?utf-8?B?SE0wMzZhUUdCdEtKcVpobkIzK0ZjMGtEdWhQUW5jYTNPdXdzak9QWDZDMzlR?=
 =?utf-8?B?eXBTUFVxQkhQanIzdmltOEUwSHFSNy93NDBSdmhPaWN6ek50VUlMMW1sNW95?=
 =?utf-8?B?YXlQM1Z1YTZRY2FqeVV2Q1FiclZwajBUZnFFMDhBMmJtQzNRbTlLcE5McTJl?=
 =?utf-8?B?TEdZaS9BZlRwdGRCZ3diTkVTenh2TGdzMWhzV055Y29ZOFl6YUx3R3BiSUhq?=
 =?utf-8?B?VHh6enVTUDlVZ2FPaXVjejZleWhjbmxVVHFnMkRGalJza1pzMzlzSWxNZkVU?=
 =?utf-8?B?OVJjalJXTjBYZkRVNTNOcG80TFR3WTlyRm1GUFFDd0p4NlRSQ2NqeWQrV2pS?=
 =?utf-8?B?dDUxL3NiUDBtb2xodlFTTTgzRXRPd05DTFBuV0NMR09sRXRvdUF6UEpYRE5P?=
 =?utf-8?B?eGljUVF6dXQrRzlwZWptK3p3UnJ2QUlCUkJWYkdORC9tbkYxWkdRcnFlbURG?=
 =?utf-8?B?b0dwMnlsUWY2SGpSeFY0SVlNRS9saVZPc3VUUXFIL2JWankyMVh4WHhpYXBx?=
 =?utf-8?B?NnMzWjFvbnk0b2NQeHdiMmw1bHk3OUF5MHVMSXZkV2E2cHZmdEdEU3M4VW9V?=
 =?utf-8?B?VFRFOUN5eXRwNGg2dzJyTXliUUl0SWNEOXhBVXlEN3pXeCtBYkZBalN6b3Bz?=
 =?utf-8?B?Q1ZqYlFTZzRRbDV5dlBJNU1CT2FwTXcyaGptWkZ3QWRyM0R1WmIyTFZDWjdU?=
 =?utf-8?B?Z1FGbUdIdGdnSkhIQ2dCdlYvZXNiNytxVExlUnh6MVRmT3NwV2k2RDJtcnB6?=
 =?utf-8?B?Zm1UOE1kWlFMR2lwb0VHTVNZd3J0Z1JuamNJNmFJeWRSMml0TTRnZzczMlV4?=
 =?utf-8?B?dGxOSU5SVk05eE1kNWhCVytCdDNiWW1NTndKR1hpZzM3Z2o3eVRJd0RIamNG?=
 =?utf-8?B?Vk4zZGVmeGNKa0tZY0Z5RDc4dEF0OXFhM2RaT3pEM0t3b1lHYjVQZU5NL3Z5?=
 =?utf-8?B?MWwrdmtnNzJVa21ldy9mRzNMUHdGdklNc3N4ZzlZSG41UElveFZ4QmMvcUI0?=
 =?utf-8?B?TThhTytmWHFRaEtKOXp3Uy9uNEY3UEFuWnJQN1pPNzh4MDZobm9VNUMweVJI?=
 =?utf-8?B?cXJ4SGlITkNlSkVDQ1ROZTJENjNoc0p2L2lHaHc1d1diOVo2c1g1N0c0UkVh?=
 =?utf-8?B?cEloK0lXTVNuMXlBQW5sbnFOS2JCVDVmbzFQbnJpeGJFSkFyR2M5dlkydWlH?=
 =?utf-8?B?L0NMNGcvNm0yNEYwTzlZaEI2NllXSUEwUlphZFJ0NVl2MUZGYll2RHZ1bTdh?=
 =?utf-8?B?cEVXY1p2d1ozSkVLK0RXSGZhbmp3PT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9019e4-73c3-456c-c249-08d99d989718
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 00:34:54.4102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gldhRcTj0rP7ZdnIS9rmN0ZdLRABu+rpTJNMswKA0XSMOGVnLLfieSmKQ09WQwXvrEuH7X5fV9BQi56gJzymmPNOO/vHtN2spP+XGwv9mO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5208
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/15] iavf: Add change MTU
 message
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5v
cmc+IE9uIEJlaGFsZiBPZiBOZ3V5ZW4sDQo+IEFudGhvbnkgTA0KPiBTZW50OiBGcmlkYXksIEp1
bmUgNCwgMjAyMSA5OjU0IEFNDQo+IFRvOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
Zw0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0LW5leHQgMTAvMTVdIGlh
dmY6IEFkZCBjaGFuZ2UgTVRVIG1lc3NhZ2UNCj4gDQo+IEZyb206IFBhdHJ5ayBNYcWCZWsgPHBh
dHJ5ay5tYWxla0BpbnRlbC5jb20+DQo+IA0KPiBBZGQgYSBuZXRkZXZfaW5mbyBsb2cgZW50cnkg
aW4gY2FzZSBvZiBhIGNoYW5nZSBvZiBNVFUgc28gdGhhdCB1c2VyIGlzIG5vdGlmaWVkDQo+IGFi
b3V0IHRoaXMgY2hhbmdlIGluIHRoZSBzYW1lIG1hbm5lciBhcyBpbiBjYXNlIG9mIHBmIGRyaXZl
ci4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFBhdHJ5ayBNYcWCZWsgPHBhdHJ5ay5tYWxla0BpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
bWFpbi5jIHwgMiArKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCg0K
VGVzdGVkLWJ5OiBHZW9yZ2UgS3VydXZpbmFrdW5uZWwgPGdlb3JnZS5rdXJ1dmluYWt1bm5lbEBp
bnRlbC5jb20+ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
