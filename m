Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D34C46D0B8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 11:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3F6D40207;
	Wed,  8 Dec 2021 10:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ip2InG9zcgoz; Wed,  8 Dec 2021 10:13:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D13A401BB;
	Wed,  8 Dec 2021 10:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C332F1BF362
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 10:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1C7480CDC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 10:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4jhW39b1ptw6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 10:13:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F10B80CC4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 10:13:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236540913"
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="236540913"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 02:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="515702037"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 08 Dec 2021 02:13:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 02:13:46 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 02:13:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 02:13:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 02:13:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpUQqTjPlj+VWE9X6qwe3/yTzoKu/DLBOxDQDSkWZx7J1VioRdvVkjbnenjaE6RG/XzT3BfDcJtP6OU5M43zplk7Wolql/Wrdd6DeOUtauw1pcjVoC5mbS9AFUE+23U0mWBwHiRdguo5aVRx5CP9o8jCt4ILinBcxgAUfnDkAgwJjbFl77FQFuhpPzIHCyqz5Jj6gSOJjLNw1gNs0VstkxRTZOpAKbXvhFg1NyAYZ9hwIXe+uUfY7shFrubqXnZYr2W4fPsJUk6TyHpDl9sKk7gF06hP67Qa/mzRdPp9Kn4nmtuKGRX/4gXqzpeHngBxngaW3wKNcCU67wECG1KelQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDLZOu0LoglVvaiO7LXG2EEs1TSVSYAvwqJeOyhOPEA=;
 b=oVilH/TSYSjKVZ2tu+fjhForTELVcKsZgOO5ROzKG/YgE7bF+gW0Ab70mDsRv9wbnVWeVLVQgTAvORRUHY4i5yjh4mO/ydRnTn5odYbB0XJ0aZFYQ3d6v7COAX3gVEXS46HO7xWbFI3ZKUYlQmNbECJeu0mLfiIdrOIOmlzjyLWsh4KEeMxuK95bEC7Qmi9tNaZ11Z9BLRY9Dr205VPjxurFu6tYuwPxfPoBfx+bDCkDGbbEP9Jk6SQdFxj3pdYjta0O2IifXUD2b4zWiIUyEbZK+Jaji/ItdSkvPL8elSfNHYb9z1cpJZDIAdrFdaRFpa8NerbCkOJfjsZSmM4A8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KDLZOu0LoglVvaiO7LXG2EEs1TSVSYAvwqJeOyhOPEA=;
 b=feuFS227IOgFHUAH/2TkK1CMLTujBm8diL4yjOy00DP8Cj4o4TwozH3gcocOLRP3B151PYVzEUzSTlHgrCaIUSYQoXXm4KvGhaHfyWIFCR0WbolA9QZNL1WJyAI04ohjXUalpZZG/43TetTObng5qkX2YXYq8u828H/8x0KUgl8=
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Wed, 8 Dec
 2021 10:13:45 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::691f:ee71:89a8:e83f]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::691f:ee71:89a8:e83f%9]) with mapi id 15.20.4734.024; Wed, 8 Dec 2021
 10:13:45 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix for displaying
 message regarding NVM version
Thread-Index: AQHX624Oz5Gt6YuY4Um4ekY4iga9x6wnBoMAgAAOO3CAAADxAIABS+tg
Date: Wed, 8 Dec 2021 10:13:45 +0000
Message-ID: <BL1PR11MB528851994C2A9AF2CD976985876F9@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20211207132525.26458-1-mateusz.palczewski@intel.com>
 <8e8f07cb-899a-b184-78ed-323d3b436b11@molgen.mpg.de>
 <BL1PR11MB52886124AEE0A8C9E6679731876E9@BL1PR11MB5288.namprd11.prod.outlook.com>
 <37f3e44a-cc8b-9632-2982-8b28ac98bbb1@molgen.mpg.de>
In-Reply-To: <37f3e44a-cc8b-9632-2982-8b28ac98bbb1@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa774cd2-efeb-49d5-559c-08d9ba336b16
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_
x-microsoft-antispam-prvs: <BL1PR11MB5288C97791F5CBA5D168A5B6876F9@BL1PR11MB5288.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MK3npYwtoqlnEQpwY4fEbK5z8GtXd84l+pSw8nrgElmvSK5XKD6uePPJfQLshPlzLCsR+Q9ziQ3jptEB+5sAANdHqEMOSXepbPbkl049UidbhsprFb/GL+m9wo/mlDPYKiQI0CXE1sw5eubj+Ps32wcPdfRmP+VxcgS7dWb+p+YYfabJHndUNWznK4FPiV8ubbSYstUflahvfbIjxVBZOk4fEE9KyDvWtUqlKzpwv13i0POkfozzUJzTPNRZLeek9GHvGoXx+vOD/751+yWOem/R7AeHdicdQthTsgGfDUIhFkOM2Os64KY8Es7lmG0I2V1vhoazMcs3JWh2UQqnBwnpcPCRzUjmzlqSmX9+Ksb9qMqrXRbz4GQDw/6uBvTIRACDonxtGnnpF4UGbDFPlPZ10K2CH3MSU9HGLoodiLEqPIQyDlrh1L56G4xc3SAdKxveCmT0/RPBdUktbhpLdyJQ9O8y9a+bKOWA39TSRkVdwOe9nQcATYyAvNEmubHsORDI+SW0SOv1NolqCjnLLphib4i0U7+9I9zfijhz6hHu/x4IKbwdntBBDmDETJ/tNt6WpEiftQkPLywVf+d8kewscTcwzM8uqVxAtH3CczAKV+QqNZObIK0WcQ5foYBMMrXXlHBJB0gGUcbjGEsyuxgekEx/H0dM7mvN+qsU9xjq08JzPQ2eJ+lrf6T6xEt1KJ/3XJvD6GZ4SRiyW0jVCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(5660300002)(26005)(122000001)(38070700005)(38100700002)(6506007)(9686003)(55016003)(8676002)(66476007)(86362001)(52536014)(76116006)(4326008)(66946007)(15650500001)(2906002)(6916009)(71200400001)(82960400001)(66446008)(83380400001)(8936002)(186003)(66556008)(7696005)(316002)(64756008)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TC9YR2lxVTRuVFBxRTZtVHEwcllYQmt6TGN4VlBpbXVCMkNPRTlnYUEzR0w2?=
 =?utf-8?B?VjdLRG1pUTRic2lzdjBDdk0zQ3NSMWdMUktKSWE5ckhjL3E0dzFkN2NDR3hP?=
 =?utf-8?B?a2dhazJCZGJ1S0RQcm94Q0dzdnQydmhHZ1Y4THJNU1ZHK0p3SWNoWVB4RFVL?=
 =?utf-8?B?M0FScjR5R2FTbVFFSzAyYzhncXZHN2RUaGJCdkhxT0Y1c290S0Fmb2JCU252?=
 =?utf-8?B?RzFmZy83VjJMcC9nSkw3S0YyWGtLTlpRRWZmeCtoKzdBazl2WXVVY3g2NVhi?=
 =?utf-8?B?RkNNZ2ZvdHlWMVV4UmZQY29ZVVlqeWJIUmhOdmQ4UldGb0pwUzhRaDZhYXEy?=
 =?utf-8?B?aGNMVGpNVzBKWFljU1JSZGtYdjVEYVE1WjVDUjU5eG9BeFNQcm9ZSC91RCt3?=
 =?utf-8?B?RXE0VmxHZUJFcC9KVW5TMmdDbEZuTXg5dW85Ym5VWHZMdjlFaUJUZ3hyVHFT?=
 =?utf-8?B?MWRLUkNDVUowZnpnWFlxU1EzTVgvak1NMjRNM0pETXpicHduNk9SY051R1J1?=
 =?utf-8?B?RlptdjRYelp0K3UyVnk5K0xjaE0yRmZ1ZWlPY0IxRVZidTdyTENBVDd4TkVS?=
 =?utf-8?B?UjBJTTBpc0FWV2xwMGVYTnk0MFRTbUQwSlphVnNiMUZLMGxEUFA0RTBuNnZ5?=
 =?utf-8?B?SjBYaUwzVU1IalVaamIzOVRUVkxiM2c4clYvT2VDSVJudCtuYitTS1AxU3F5?=
 =?utf-8?B?bkZMbVJOK0NtVFNPY1ZNdU96aHprK1lTM2I4Z2dzV1YwcXl5VkRqOVhZbmlr?=
 =?utf-8?B?cUNDZVhhVjdYSDhPamFqS09yTEpXR0xMdFdVYXdkckJXZDBYWTJyVVY2cUdT?=
 =?utf-8?B?TXBXUG9mcitZK1JVRzdhQmJKZzc4V2FEQnJXWVlrc0V2Y0FpRnFQUXp4cjlD?=
 =?utf-8?B?ano5ZVVpWFVWbDgxNTFyZDhGZ2pJZmJoSTZsR29NSnJIK0d0cFUybGo0Mlc1?=
 =?utf-8?B?cFJCa21PbUJPSFhaeUJ1OEcrNGlXL2MzQmNwN2FMRTk2enQvYmNYNzhueXUw?=
 =?utf-8?B?ZUNpV3dXTUU3MzhmeFFpZXBOd0NuNlBHUFZFdkovaFoxSmVGUGJLRFhyK2ZV?=
 =?utf-8?B?YW5Zd0twcXdFY3JjOTZMSXd3dVJKbXFXQmFqaFdRaDY3NXAzNHVvaG4wUW5F?=
 =?utf-8?B?bU9tamVYMlJhcEdGaEkvWTFxa21lSWxNOGVmZXFFOFR1L1k2VzBCMzJ6NWtX?=
 =?utf-8?B?UURQUmI0WTRCTllJU2tyQ2VmY2VXVk4rMnpYeWNuVVphblAyZG0xQm9FYWNS?=
 =?utf-8?B?MERZOEZLeFlQSDg5RzVGc0RSQnhBLy9PeXF3enc2aUtYSFNVUnlIM1FFaTZj?=
 =?utf-8?B?dFFhU1NZdDRndW0yVE5oY3hnWTdGMzlwUVBNaW9XbnJxcFY2bUJLSzl1MTA3?=
 =?utf-8?B?VTlUNFdjZ3puQjBQbVN6UFNBbzNIZnN2alNHckk4c1doakJRN05BTS90Ykhq?=
 =?utf-8?B?TUpBaFd5Y2RTOXFwUGRkc3R3K1M3cFd1NGllU1FjUFNOOGpjMlBvTFY0Smpv?=
 =?utf-8?B?eGFtdkNWVWltYjY0Y0tnKzFkRG1nWG1vdmpXRi9vRHZ2bUc3TG4zS2hMa0VN?=
 =?utf-8?B?OVNlRTNHdnFDcElzTTF1aTAxUkMxK09nOWdlVzVWTVk1Q25oV0VIa29hUWY2?=
 =?utf-8?B?UWRVblNlZ0UvSWpqak8yYUx5cFhkUGQ3NHR2Mm1GZ2lTcDgwM2hOQWdobksz?=
 =?utf-8?B?MnF6ZU83cHh6L3YwZUkrRHA2Q1Z3Tm5OZmIrYzVtMUZyVU1mR1hXM1ZZMkxx?=
 =?utf-8?B?RlhzNk5OaDhKamJhdDJGM3BJOXpKTVR5bUNEUU5aWUVwV1JvQ3d2UkxSRnQv?=
 =?utf-8?B?TmU4bnhFVUJHak9xOEZjTjRQTkc2RVFTVUloOHE4YWNUUUg3VVlpblRibTF5?=
 =?utf-8?B?cHBpdm1nSUlZcVk1d3ZtdENIU2lrRmw0R2g0RnBCM2s4bGpVR2twZHFzQTZQ?=
 =?utf-8?B?RHVpRGtUY3pucmVNQnhBaUVpYVZsK3FPeGV3SzVTU1dXWTVpWldFYnFWT1ZY?=
 =?utf-8?B?RmphQlA5c01hK2JMWEJiUGxQRy9wN0gvdWR4OGxPV1NWTXZqUGpzVEVEUFRU?=
 =?utf-8?B?c1RWZG9DSy9tVGlGZkxmdnBFTUk0UEFzSkc1MTh5eDFDQ2g3SEFDbFJnbkh6?=
 =?utf-8?B?b2djUEFybVJmcFpzU09ieFZReDA2dnJQaHVoYkkwQXFKQWI2QTUvWEZYRzlJ?=
 =?utf-8?B?SVM5V2l2bmgyM2lXWU12V3NPSWlRSG9DRDhBZGxQVHVtZ2ZUbm8rL1RUeGpz?=
 =?utf-8?B?WU0yZ2puZ1piZWhNQ0U5VmtqTE5RPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa774cd2-efeb-49d5-559c-08d9ba336b16
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 10:13:45.1235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i8jigFQg08mV7A2ZqUhY4Gkz6K+0vP1Msljh6JBLqUMkAL9EIyTaMu2G1N+esnF00M8CVvM0OV92Ya16QIjOLD0VltGd34fpqjUOa/TO+ag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix for displaying
 message regarding NVM version
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsLA0KDQo+Pj4gQW0gMDcuMTIuMjEgdW0gMTQ6MjUgc2NocmllYiBNYXRldXN6IFBh
bGN6ZXdza2k6DQo+Pj4+IFdoZW4gbG9hZGluZyB0aGUgaTQwZSBkcml2ZXIsIGl0IHByaW50cyBh
IG1lc3NhZ2UgbGlrZTogJ1RoZSBkcml2ZXIgZm9yIHRoZQ0KPj4+PiBkZXZpY2UgZGV0ZWN0ZWQg
YSBuZXdlciB2ZXJzaW9uIG9mIHRoZSBOVk0gaW1hZ2UgdjEueCB0aGFuIGV4cGVjdGVkIHYxLnku
DQo+Pj4+IFBsZWFzZSBpbnN0YWxsIHRoZSBtb3N0IHJlY2VudCB2ZXJzaW9uIG9mIHRoZSBuZXR3
b3JrIGRyaXZlci4nIFRoaXMgaXMNCj4+Pj4gbWlzbGVhZGluZyBhcyB0aGUgZHJpdmVyIGlzIHdv
cmtpbmcgYXMgZXhwZWN0ZWQuDQo+Pj4+DQo+Pj4+IEZpeCB0aGF0IGJ5IHJlbW92aW5nIHRoZSBz
ZWNvbmQgcGFydCBvZiBtZXNzYWdlIGFuZCBjaGFuZ2luZyBpdCBmcm9tDQo+Pj4+IGRldl9pbmZv
IHRvIGRldl9kZ2IuDQo+Pj4+DQo+Pj4+IEZpeGVzOiA0ZmIyOWJkZGIgKCJpNDBlOiBUaGUgZHJp
dmVyIG5vdyBwcmludHMgdGhlIEFQSSB2ZXJzaW9uIGluIGVycm9yIG1lc3NhZ2UiKQ0KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBNYXRldXN6IFBhbGN6ZXdza2kgPG1hdGV1c3oucGFsY3pld3NraUBpbnRl
bC5jb20+DQo+Pj4+IC0tLQ0KPj4+PiAgICB2MzogQ2hhbmdlZCB0aGUgcGF0Y2ggYWZ0ZXIgY29t
bXVuaXR5IHJldmlldw0KPj4+PiAgICB2MjogRml4ZWQgdGhlIGZpeGVzIHRhZyB0byBiZSAxMiBk
aWdpdHMgbG9uZw0KPj4+PiAtLS0NCj4+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYyB8IDQgKystLQ0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4+Pj4gaW5kZXggNDY2NGQwNy4uYzA3NzQ2YiAx
MDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYw0KPj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFp
bi5jDQo+Pj4+IEBAIC0xNTQ2OSw4ICsxNTQ2OSw4IEBAIHN0YXRpYyBpbnQgaTQwZV9wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4+
Pj4gICAgDQo+Pj4+ICAgIAlpZiAoaHctPmFxLmFwaV9tYWpfdmVyID09IEk0MEVfRldfQVBJX1ZF
UlNJT05fTUFKT1IgJiYNCj4+Pj4gICAgCSAgICBody0+YXEuYXBpX21pbl92ZXIgPiBJNDBFX0ZX
X01JTk9SX1ZFUlNJT04oaHcpKQ0KPj4+PiAtCQlkZXZfaW5mbygmcGRldi0+ZGV2LA0KPj4+PiAt
CQkJICJUaGUgZHJpdmVyIGZvciB0aGUgZGV2aWNlIGRldGVjdGVkIGEgbmV3ZXIgdmVyc2lvbiBv
ZiB0aGUgTlZNIGltYWdlIHYldS4ldSB0aGFuIGV4cGVjdGVkIHYldS4ldS4gUGxlYXNlIGluc3Rh
bGwgdGhlIG1vc3QgcmVjZW50IHZlcnNpb24gb2YgdGhlIG5ldHdvcmsgZHJpdmVyLlxuIiwNCj4+
Pj4gKwkJZGV2X2RiZygmcGRldi0+ZGV2LA0KPj4+PiArCQkJIlRoZSBkcml2ZXIgZm9yIHRoZSBk
ZXZpY2UgZGV0ZWN0ZWQgYSBuZXdlciB2ZXJzaW9uIG9mIHRoZSBOVk0gaW1hZ2UgdiV1LiV1IHRo
YW4gZXhwZWN0ZWQgdiV1LiV1LlxuIiwNCj4+Pj4gICAgCQkJIGh3LT5hcS5hcGlfbWFqX3ZlciwN
Cj4+Pj4gICAgCQkJIGh3LT5hcS5hcGlfbWluX3ZlciwNCj4+Pj4gICAgCQkJIEk0MEVfRldfQVBJ
X1ZFUlNJT05fTUFKT1IsDQo+Pj4+DQo+Pj4NCj4+PiBJdOKAmXMgYSBkZWJ1ZyBtZXNzYWdlIG5v
dywgc28gb25seSBhIGZldyBwZW9wbGUgYXJlIGdvaW5nIHRvIG5vdGljZSwgYnV0DQo+Pj4gYSBu
b3RlIG9uIHdoYXQgdG8gZG8gdG8gZ2V0IHJpZCBvZiB0aGUgbWVzc2FnZSwgd291bGQgYmUgc3Rp
bGwgYmUgbmljZS4NCj4+Pg0KPj4+PiBUbyBkaXNhYmxlIHRoaXMgaW5mb3JtYXRpb25hbCBtZXNz
YWdlLCB1cGRhdGUgdG8gYSBuZXdlciBkcml2ZXIgdmVyc2lvbi4NCj4+IA0KPj4gSSBiZWxpZXZl
IHRoYXQsIHNpbmNlIHRoZSBkcml2ZXIgaXMgd29ya2luZyBjb3JyZWN0bHksIHdlIHNob3VsZG4n
dA0KPj4gcmVxdWVzdCBhbnkgYWN0aW9uIGZyb20gdGhlIHVzZXIgYnV0IGp1c3QgdG8gaW5mb3Jt
IGFib3V0IGEgTlZNIGJlaW5nDQo+PiBuZXdlciB2ZXJzaW9uIHRoYXQgZXhwZWN0ZWQuDQo+DQo+
VGhlbiDigJxleHBlY3RlZOKAnSBzaG91bGQgYWxzbyBiZSByZW1vdmVkIGZyb20gdGhlIG1lc3Nh
Z2UuDQpJIGRvbid0IGFncmVlLiBJIGJlbGlldmUgdGhhdCBtZXNzYWdlIHdpdGhvdXQgdGhlIGlu
Zm9ybWF0aW9uIGFib3V0DQpleHBlY3RlZCBOVk0gdmVyc2lvbiB3aWxsIGJlIG1vcmUgY29uZnVz
aW5nIHRoYW4gdGhlIG9uIHdpdGggaXQuIA0KDQpLaW5kIHJlZ2FyZHMsDQpNYXRldXN6DQoNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
