Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0469844633A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 13:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7155D4061C;
	Fri,  5 Nov 2021 12:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvshj0Kv6mx5; Fri,  5 Nov 2021 12:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A5A7405E5;
	Fri,  5 Nov 2021 12:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A61B51BF5AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 12:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9386181CE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 12:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXBxmH3wLDk5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 12:17:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC1EA81C93
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 12:17:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231835256"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="231835256"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:17:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="501915573"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2021 05:17:22 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 05:17:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 5 Nov 2021 05:17:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 5 Nov 2021 05:17:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jokVee7XjVZBo5v/S2giUjjlRGrYCQYzWpvd/dSbuc9Y89dLQo/vw22kDEUpvFfCT8Qlyz0/fjaqfQD5aFJ5UYH6qrFZvjxvBSMVeAQ+tswFX7TrrpmWhiUAhSyakNyxnfdoqS1TDdRle5s/D7424rawb+IZucT7lt5DBwuoP6cQPhI/W4jzV4/fZQ/MK0QsUuLWR2+qiQN1qPPafQYUQH8WUXFK9ESNAPQ3M/7US1wcP2DYnAtxG9QhBHnHOfzg0TRFyepzJOu4Ah9yQ7Z8MURnyz/WAHSs71NzAiYe1KLUXSFTQa0boIJRQiBiYwMpUUK/TERcJzU2Hi0JC4XoCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=libgNasmVfEsYVDMa52pN6pOTcEun3aqaGTvtoEyQ7k=;
 b=K+RZwhZSSdZREHR6TfOUswtT+Ff0keG74+aBPVG7eP6iGE6kKKauCPIJbj3+bq4BAY//GPxKQQg/SU3ukED4+e2TJvT2DNW53lFD4yfW5amXRWATb3zo+9qdn21f+9Xu6ng0Py0JsMSE5JJetJDCwV02HMcrxbtE2LeuHdRlN90H7+hD1nFnv2mZy4od56dHfAjQzlHMEqJq2cCwr+1ExQLbX2leXvRQZ2duYXLrA76GnrYUceesiAnU4AFDwJrpfE9Mf0pVR0zFWOHhTEZCkM72ugMCRUVlucH3hviPvzjKebmuWSnO7vx+DXwnUROZXfao4fCko/n1dAYHNiHcig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=libgNasmVfEsYVDMa52pN6pOTcEun3aqaGTvtoEyQ7k=;
 b=gvdJ8YwdQx3zrudjt8jGZ2lRBmnOBnEz9CD6v6HI+r7TaGltNq5b9oqQYYzZ9gquUyfMEZEy4QVGONmAjffXFskTJ8aa4G8cmJh6BASJqNy3eYbt1MbdFPvIQTS+vVAU4cpf7qI6Yd7d2kINZP1voJ/A9FNA5Fnay/evnaP3zaU=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MWHPR11MB1917.namprd11.prod.outlook.com (2603:10b6:300:112::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Fri, 5 Nov
 2021 12:17:20 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::b137:7318:a259:699e]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::b137:7318:a259:699e%9]) with mapi id 15.20.4649.019; Fri, 5 Nov 2021
 12:17:19 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Roopa Prabhu <roopa@nvidia.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next 4/6] rtnetlink: Add support for SyncE recovered
 clock configuration
Thread-Index: AQHX0VXaGVDKpAoRukeJgXEmmkmUoavzr9EAgAEko4A=
Date: Fri, 5 Nov 2021 12:17:19 +0000
Message-ID: <MW5PR11MB5812F4FD090FCEA7CD83E984EA8E9@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211104081231.1982753-1-maciej.machnikowski@intel.com>
 <20211104081231.1982753-5-maciej.machnikowski@intel.com>
 <2d379392-a381-e60a-7658-5ac695c30df1@nvidia.com>
In-Reply-To: <2d379392-a381-e60a-7658-5ac695c30df1@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 179eef7c-5f59-44ed-fed1-08d9a05636f5
x-ms-traffictypediagnostic: MWHPR11MB1917:
x-microsoft-antispam-prvs: <MWHPR11MB1917010D4F009943E1E28565EA8E9@MWHPR11MB1917.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PW7u8xad1IOCZGf017OlSpxt5G0AgYF34HkD0bkmr/BIX+6p1q3GUXiept8s9kKNjD2e6GUuXGBE9QGrJZa8iZk/eRVfadB6LZ27CKENOLXcHL0ePAivtOO/ngCW9q1cGwX+Vcil/wQE3pxcVQPrAM1qaCnxPYTrOKTw4eYIrkWv+h+ckcjD+5IREaMFF0ZcUEk+ouibN1iU+8ttEDKjuGItv3P6aZ+8g4Wg4/kyu7q7CdF96HDeiQ07tA33gvozfj7mYjaTwJeR5onP6vz5D9C4r4fL5NNUA/jO1uGQ/WRfwieA5zlwUTJnP9C6TtjXmyHX99S0Xn5Ba4sa3NZRMMjLwMKHeSmoMRQio9xPv5TyYXFyfEc8SlQ9oz8zvhXgr8BTlCzryb7eh0Dxend5NNtX7y2S7qEWBbyA/BvQjOqOc6tFxV+4bszumotz41G6JVPDhnLC79iLzw3tGdIEf2fsJEpugZo7AWEjJvQ1VjhEP1h8gr54rQGdfWHh+KaPRfVutuIVn4B4nz7E8VQth7IlYo7hfbJVDe60LrThYbB3PqkQ7WWh+qZXKVOTU/oj7y1aXubsQORAFM6+H8dROu+1/Nh7ko1+3CUy2x/KZx4bfE68XdTJjhAh7GS7/46ev4W9rRjGKJ6t4mI04HGZ5v59Wc8vsjTglV1stfzFKL1t1/BmbsFJyuaZgKcB8c3lUOHW3Wq2Zh2JckA/eyLmdg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(54906003)(38100700002)(76116006)(186003)(52536014)(316002)(5660300002)(33656002)(71200400001)(7696005)(53546011)(66946007)(83380400001)(110136005)(9686003)(82960400001)(86362001)(38070700005)(8676002)(4326008)(122000001)(8936002)(2906002)(7416002)(26005)(508600001)(6506007)(66556008)(55016002)(64756008)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zkx0QUxCNG1XMnhxa3NOT1NPZEo2a1Jubjc5MEs3NU5rZjRKRzQ5UnhWWUg5?=
 =?utf-8?B?cHpEVE9QVFVmditrRSt6TWJXWnVIVmlWa0NvT2dlOSt1T203Z3N6MnJrZnkw?=
 =?utf-8?B?cE1SK01rRHMzSzJyVEM0VVg1MVJvRFR0bXA1a1YzcGV3cUFiQVljY1hPRmM3?=
 =?utf-8?B?UHpXY0VlenRUWGtxVXFkbEdvaFMxTXVRMkJEblZmVU1MQXdsK2ZhTHQ5bjBR?=
 =?utf-8?B?RTBJbkhzbUQreUhnMUs1ak0vazBvV0xjVFBtNW9lNEg2MUF4bFk1ejJsOFd2?=
 =?utf-8?B?VzI2bmlJMHZYWXlIWmZtQnBIOGR1WkFCOUlIT2FnQnEyOTB5TGVENmFJQVBV?=
 =?utf-8?B?dGhHUWNvdWNnT3Z6cVFweCtMUFV1a0hZSFpwcmNZMkg4VnRuVjBNQW9IV2RG?=
 =?utf-8?B?azE0WFlzZGRXcFBQUEZNVzk0UVVpaEx5NkFyTkdTODlBWjBuU0VJME9PV0Mr?=
 =?utf-8?B?bnJNK0QzczU1ZzBXcmVIWlRNMHl2dnV3QTFEN083ZytlQUduNWVTNGNwOFEw?=
 =?utf-8?B?MndGZ2kvcjJ2WDdKR1VRQWdqVmkwenVnL1Q5Nm9iTGlCS2xGOEZOZmxQS292?=
 =?utf-8?B?blROL0Z3T0VOUHgrUjVpR2FBTkkzL0NTUEhUN1ZPNlJZTjNIVUZWZ0tNZWM0?=
 =?utf-8?B?V0Vhc3ZKMDJwV2FXZHlRZGtmOGpkYkZiellqc2RLNXNRVlZzSmlzUW04eGZi?=
 =?utf-8?B?U0R2NHVwMnY1Z1VMMStBeFhvZ2lwL2I1bkFaZUtRY1MyT1BINkZBTDY2N0RP?=
 =?utf-8?B?TFFTQ2YrQTJ1c3Y0Umg1Sjd5MUd1NGRZUjJRc2RBR1BkNStIelRaa3M3UitX?=
 =?utf-8?B?NzR6aUdoOEd6eHQ5bnRVdUt5cWNKN1llUVdvUnBGVFJ5b3VIV2lRWm1xT0tw?=
 =?utf-8?B?ZWRwREt0aDhHOTRuVkFiYW50cy84ZWF2ZnhLck9qRlpCaGRnTmxHYnlldWxR?=
 =?utf-8?B?N05KNVU5ak02b1hqUmFlbzdxUzlXV2tiazJETXp6cGdyS2dKdU1OSDg1Qlpx?=
 =?utf-8?B?dUwrYUJuN0lSTzVpOHNBMWtXTUxVakFIdis4RktJN2d6WWhmY21hVEs0WWJM?=
 =?utf-8?B?UzdRTnlPWlk3MUxRc0hqNlBLeHNxZjFYanJ3N1dlODF2QWc0T1Q4VmhpaFVH?=
 =?utf-8?B?T2d5dExnYmRBWjlWUEZNSG5TKzN6M1Y0Vko0TVFBSFk4czl2Rk1xa00wZUVm?=
 =?utf-8?B?Q0xQUDhwOWZSOWdudzNBRS9nVmM2WUgyZ09LcCtnQVZsWG1LbVNVT3V6SnZS?=
 =?utf-8?B?akVZdVFlU1lHSHMrdVdFcDdiWElXUkhBZW5LY0x1TjY2MFRFR1dtVFZSSWxJ?=
 =?utf-8?B?OUNrNmc0eDZ6YTdQVGwzdFhyYmxCZmNBNHNpL1FMb1lOZ2g0VlB0V0dOM01j?=
 =?utf-8?B?UndYZW9KZWJYdVlWOWtYdzdTSVVSL2xrcHRXOWRBbG9YeHV6Sk9aQ1J1UWhF?=
 =?utf-8?B?L2xqc0p4T1RoVXQ3V1VmQ25JaXVOSlZUUGlHM2dIVndUdjExb0RCMlZHWXpM?=
 =?utf-8?B?cXNkUE00VnQ2OEJ0Wk1QWnBvMEdWOUVtL2JKc0E1SFFtaS8wMzh6aUJOcWRW?=
 =?utf-8?B?RDRzeitqMmpmczc3TWoyVk1Xa1kvU0hTaHpJZC9tbUxKUmZZb3gvMFc4UGtR?=
 =?utf-8?B?L2lhNDY0SzlQTUhYWHBOOWxmck5kNXpTQ1M1NG5teW1oL1hOb1RKS3lSOTRY?=
 =?utf-8?B?RTF5WU5GMGJRYnZuQTh0ZWgzOTZIREorSGhOWmF2RW0yVzFFM3U2VGZxWm10?=
 =?utf-8?B?N1ZISkxOVlM0Y1gxVTdqYmZGTFpjOUJTT3VodDdtR2oxb2hQd1pQZjdGbWJn?=
 =?utf-8?B?UXJvNFRRUDdlRk42OExPamc2bHBjb0htRVltTHpFQ09ZY0RuNG9lQzVGWUJy?=
 =?utf-8?B?bVZpVW9mUUNGNWFTZ3pQS1d2b0hqTzU5NkNrcDJaOERMYVpkc0Q4QXE4ZFM4?=
 =?utf-8?B?TFdaZ0V0NVRhWHQySXI5cHA5QkJNVC9CMXZrL2lScWZkOTM2Wm5RbTBEYWMv?=
 =?utf-8?B?WjZyYkV4a3Z3Tm1VaXJtZERwWHJtMndhYUJXTWRHYUhkMXQ1Q3hIWnI0SlFR?=
 =?utf-8?B?cjJTVGJhNFpPRG9KU0xKeis4d01HRFB6RlBYMndTMEdxT1Y1UmxNb2g1Y1VO?=
 =?utf-8?B?ZkNQRHVmV3VaQ0xCWG1JV0pHcXJ0YWtkYXY2VnRjaVphdm52ZE45bzRVRGc2?=
 =?utf-8?B?Mkd3OGt4UC8xcEs1dCs2bGdtbU9PbnphQlI0UlhyUzV2RU1pQnRFNlpwdFJs?=
 =?utf-8?B?VDZ1a2EvZDdLZ0lFbmQ1NU1WL3ZnPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 179eef7c-5f59-44ed-fed1-08d9a05636f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 12:17:19.8472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1md2sPDxs+RVuKSQKWhNLRZoqvA+AXWpeKWFAfHjZ6ecm/BuVKAxaqFALMXHiq94pDglKGMht/aZD3VkF4QdvnbZPrjbwQ1QgCSDXpEoln4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1917
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/6] rtnetlink: Add support
 for SyncE recovered clock configuration
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Roopa Prabhu <roopa@nvidia.com>
> Sent: Thursday, November 4, 2021 7:25 PM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>;
> netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Cc: richardcochran@gmail.com; abyagowi@fb.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> linux-kselftest@vger.kernel.org; idosch@idosch.org; mkubecek@suse.cz;
> saeed@kernel.org; michael.chan@broadcom.com
> Subject: Re: [PATCH net-next 4/6] rtnetlink: Add support for SyncE recovered
> clock configuration
> 
> 
> On 11/4/21 1:12 AM, Maciej Machnikowski wrote:
> > Add support for RTNL messages for reading/configuring SyncE recovered
> > clocks.
> > The messages are:
> > RTM_GETRCLKRANGE: Reads the allowed pin index range for the
> recovered
> > 		  clock outputs. This can be aligned to PHY outputs or
> > 		  to EEC inputs, whichever is better for a given
> > 		  application
> >
> > RTM_GETRCLKSTATE: Read the state of recovered pins that output
> recovered
> > 		  clock from a given port. The message will contain the
> > 		  number of assigned clocks (IFLA_RCLK_STATE_COUNT) and
> > 		  a N pin inexes in IFLA_RCLK_STATE_OUT_IDX
> >
> > RTM_SETRCLKSTATE: Sets the redirection of the recovered clock for
> > 		  a given pin
> >
> > Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> > ---
> 
> 
> Can't we just use a single RTM msg with nested attributes ?
> 
> With separate RTM msgtype for each syncE attribute we will end up
> bloating the RTM msg namespace.
> 
> (these api's could also be in ethtool given its directly querying the
> drivers)

I'm not a fan of merging those messages. The mergeable ones are
GETRCLKRANGE and GETCLKSTATE, but the get range function may be
result in a significantly longer call if the information about the underlying
HW require any HW calls.
They are currently grouped in 3 categories:
- reading the boundaries in GetRclkRange (we can later add more to it, like
	configurable frequency limits)
- Reading current configuration
- setting the required configuration

I don't plan adding any additional RTM msg types for those (and that's
the reason why I pulled them before EEC state which may have more
messages in the future)

We also discussed ethtool way in the past RFCs, but this concept
is applicable to any transport layer so I'd rather not limit it to ethernet
devices (i.e. SONET, infiniband and others).

Regards
Maciek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
