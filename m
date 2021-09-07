Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0555D402942
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 14:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B30C8402B5;
	Tue,  7 Sep 2021 12:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQNd-F3uJAqA; Tue,  7 Sep 2021 12:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4E564028F;
	Tue,  7 Sep 2021 12:54:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB721BF334
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 12:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B806605F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 12:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vdtsBDsd1zwY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Sep 2021 12:54:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7293605DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 12:54:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="281202658"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="281202658"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 05:54:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="478668421"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2021 05:54:35 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 7 Sep 2021 05:54:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 7 Sep 2021 05:54:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 7 Sep 2021 05:54:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 7 Sep 2021 05:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iyx/r6M/PTg7yzRjVXplB1pCWA1TDBC/rrhyvsfiM+J8mljmzwRCMNnaaWZQ42f2bL/1nNBSqkyJIWL7WbFoGCYvucWK6kctpyoRhM11SjjzqxHQeBPcERahMX36dhjq/KCOFruJFeUnr0qI4QKXYQdSvApsVdhnLxqTflKOlRhqrujPzaqs0+4VJ6kS7ThgnlE29W1BCs53k9BrIiSy6VR9T/YtM0BPlBUeavfYAJpWIY2/vbgmw1C3UFvHVYJ+ERc/zFq2YgvPEf7wLgEXM7xFE6HkaCP8JIZSmGLKkmtknTkjWZPEQsPwYlE2y0X2XENjFyy9zhoy/nt5xdos3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=omXNE9ALj+AWCJWSUy6xMnkMV8OarvQJ/eB78ARpOa8=;
 b=SnYPACbLXkNf8Ra4Id1LNURdHNJxnBDTmVHiLUNiup5CWB9eXxggUffWRkrDPmoNpYSAztfv7fRFOBig0+cWutHTPAaukVrJrFNnilJ3xHj/T/l7kaGwzJZIzDF3BLrjG6LB06DN9w3SSLZCIRuPxYAa9OZP6OOrUwjOW06HcFUVAD7gCeEps+H0eAXnY+u6o9UiK/Nu2KNoItkSO5IQfVfSUu2RHTI9ck8/cougeAXe5HVuPCGaOHLvhO+oQl73nkNQp+phu+IjyAqmeV85ubke1bYCbTiKJ9HJQchIt9WE2PcPFL5zaZO5H9Q8oXZB/rNShpm6o3dFNL0GKjcfJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=omXNE9ALj+AWCJWSUy6xMnkMV8OarvQJ/eB78ARpOa8=;
 b=KsOXmAuVPJytL20faq1HjM/cF+rQ/W33f7TCm5u+VNYOm00DPD6nSUwdsSvynbzj8gvsCAPU5fQ/HkTlSwxRQXWQ+czGpKBEyQVIMNBRwpSeMpcItV2lCiZtuq2tUcavVp4gmb7laDkkMIzQ+/7W5YHn0WTecBbAVdgyaz+Z0j0=
Received: from BN6PR11MB1379.namprd11.prod.outlook.com (2603:10b6:404:48::22)
 by BN6PR1101MB2098.namprd11.prod.outlook.com (2603:10b6:405:52::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Tue, 7 Sep
 2021 12:54:33 +0000
Received: from BN6PR11MB1379.namprd11.prod.outlook.com
 ([fe80::78fa:b3fe:1346:5c5c]) by BN6PR11MB1379.namprd11.prod.outlook.com
 ([fe80::78fa:b3fe:1346:5c5c%7]) with mapi id 15.20.4478.025; Tue, 7 Sep 2021
 12:54:33 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix refreshing iavf
 adapter stats on ethtool request
Thread-Index: AQHXoI/uctvXzOrDm0WpjPeCrLH/WauR7ZeAgAafRfA=
Date: Tue, 7 Sep 2021 12:54:33 +0000
Message-ID: <BN6PR11MB1379FBBAAE7D9B2E528C0641F0D39@BN6PR11MB1379.namprd11.prod.outlook.com>
References: <20210903064846.71507-1-jedrzej.jagielski@intel.com>
 <f4a7fedd-968f-f683-f3ac-a444a927d397@molgen.mpg.de>
In-Reply-To: <f4a7fedd-968f-f683-f3ac-a444a927d397@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f10431f9-7896-40ab-2e82-08d971fea3be
x-ms-traffictypediagnostic: BN6PR1101MB2098:
x-microsoft-antispam-prvs: <BN6PR1101MB2098D19F25F70890245B1019F0D39@BN6PR1101MB2098.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:541;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a5p5lp+YDtgVMdHLBIDmq2ph9XJ5ypvWNWi9E+RPsp6GDDxtIU+2o3/vKMxsq6dX0DRK4Z6B/7uplFXxxrd4jgWa8KUMqoPs58xn/5CJJvzMY4FJGZhW5Dy+wgpLMWNcZsNYrYn8PR6vY1TzSqa9YudNIC99Z8uYEsTq4RMSES9qSyeTCr4ifa+h6XESl9a1nBi28rJlqUnUyR33gQ1rHyIDuorMjSWWgiSe9wt///GqDFgyXBUgb+zBVrS55+Nmp+lmwhElHdgK9itP1CzHzOLJyM3lco4vPXpvD/ydv/gHOsSRP0sI902e7Q4KvzZW6uzWNi/yX8uGraO6nNiLqWdt1Ypm1tRNnWjPqwnTN2YyRuztotyluphdSfkTvkQxVXJQoYTDsxgSe7ByhbbBSyv6Fdm2G5PIt0S+PxiVz8HFP1mVf/W4SHTCmrbGBPYzspJtFbS8Tvo/+e+5PXcm2YXVI9ZUEfdPHELNBD0BKuMo+kJLPnW0I4/s2i4pMlkfKvLuXgv4vJgXn5Et8uLu/ln/T1g/01fIbYsMC/i6Q7+WiL/A/t4wENFnFHOsXfOq4NgXJXXWEIjR8WR8jEn4tg1zDGAzsYE3AugQwCvGbWYJn86rWcpVUqEA2cikOW9XZXYWPRmGIs3MVm8EJbOH4iJzxDUzIC5ZTvXI1lXOS/ILKns3EsPNma36fWmsRKxmpMet0j9VMEH8yoc4GdUPXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1379.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(39860400002)(396003)(5660300002)(8676002)(2906002)(478600001)(86362001)(66556008)(66476007)(71200400001)(83380400001)(64756008)(66946007)(76116006)(66446008)(316002)(6916009)(9686003)(7696005)(55016002)(66574015)(8936002)(186003)(33656002)(52536014)(122000001)(38100700002)(6506007)(53546011)(38070700005)(4326008)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGltTDhRRzA1QTJsUHpsanhTVk5qMzVoWXcyRlRFeERoV1RSRmtYVUVUM3VL?=
 =?utf-8?B?TDRHTzc5Z2dVUFpZV2hVVjAvVld3QkF3VUtBMXdsUDlpYllSY0FiNkZSSENV?=
 =?utf-8?B?Q2dzeHZ2ejFrRnFNZVdsQ3NlZnd2MXA1THBtSE1VcURUK2swcDlWR00va2VS?=
 =?utf-8?B?d3RuOGdNL242MW9VZVZDV3lHM1greVZuSUJPODRraXJQekRuMEhVRHhCckFm?=
 =?utf-8?B?dnhJUFJJNFNVeEM5dUlZa3kyN2lzN1JTemtjUlpCZVpMR2VNSm45M1VEZlJh?=
 =?utf-8?B?T0YzN0ZwanQ3eWprTndZUDJXSk1CS3ZFOVdRTU5nd3B0clNsa25GQkRhcEs1?=
 =?utf-8?B?bEFXK1crN1BrQ0ptd3hXdG1BUkQwd2l1bjI3ckxBZGU3U21OejdzUVM2ajI0?=
 =?utf-8?B?L0xwM0pHb2J3WlAvdFhpdHpPbnpYZnBMTVJBTTVMZmhMZ0tVbXBpQTNmS29B?=
 =?utf-8?B?WUdVWnNzbzV1RFpXeDdvc1Q0YVZpRDAyMFh4Q1hnbk02eFRXMGdhRXNTcEJz?=
 =?utf-8?B?QXZMYzA1aGFTK2t1SDJYaUdkUGt5Z00va2JwMnJaN3RzQVcxOElxWWdQRjlw?=
 =?utf-8?B?NGNBMjlxblIrM3lScGdJQms4NUFPZ0hlSFZiK21oNG55Q2lyaWZDVTVZNGtD?=
 =?utf-8?B?OW55bGxQQ0ZMSm9FZGZHaWZNMFB6K1JpRFNWWE1XWGtXdGxLd25zcHdrMDE1?=
 =?utf-8?B?VTRneFZSSDg1QnNFcjU3dWpnNjRIVk13MmVucDc4cVJpWHJWaG5hUzBnaFpO?=
 =?utf-8?B?Z3AwQlZEL1ZSVGEzemxYS1FRUk1sT3FFVU5nZWY3ZWtIR3hhVU9TYmUrNlFQ?=
 =?utf-8?B?WmNLSW9ZWWM3TzhiSWE5S1IxZW1VSVpaZTFQWDBva1FxclhpbWlzQnRpUGNS?=
 =?utf-8?B?SzAvc3dPaE1ISXVNakdrUmc4dUp6WG83L1N5c01jZUpzMnpsdlUwVlpCaG9l?=
 =?utf-8?B?bjVoSDhDOWkxS0o5ejFid2dCZmp5ZGlKR2RqOGdIQTRNQlpJeXJTdGI5c1Qz?=
 =?utf-8?B?bDhNRlY1MjhaZnpEQ3RsWWJnTDFlaEdrV3RWSmFGNWI1RUk2WGdKdlF6Wkwz?=
 =?utf-8?B?Z2lQc01mMGk2M1hZTkNQcHFncURMZGJ4RGNnYWY2VEhlTjJqdkd6Z0RIWXRa?=
 =?utf-8?B?WUhmdTZ2RzQ3a2JLS25BUzcwTFMrS2hnRlFpR05LTEdKOG0wUkNvUjBNenhv?=
 =?utf-8?B?bUNRZTlSYmRoeHM3bTQzdmpmRytSVTh0YXdORTJoY21VMmNyUW1aQUY2dVB3?=
 =?utf-8?B?Y2ZFOFA3ekt6aWFlbVBHRm5jR05INVRnWkYzT2ZkWGlidFZKRWpQQ3ByOXo5?=
 =?utf-8?B?aEloY1g2K2FWOXpmQlVUc3g2b3RnTExRbFZYN1JmRUJSa25nYXFXRjNNbWlm?=
 =?utf-8?B?Y25GWHRjMVlKRmpPaW5EOGdFZU9SZjF4em5CSjBjMFhIREI0dWRzaC9qTjIr?=
 =?utf-8?B?RmtmSzBOMFEwc0svc0NXak4zOWRKTTVzRVcvWU9SZkZ1MmQva3J3YVR1MXc2?=
 =?utf-8?B?TVc0MXdZM3JPR3llZ0xsUmhmcUhmZEU4Ym1FNitIdHorTWZlTFdYdzczeE5Z?=
 =?utf-8?B?dEI3VGRPajdiRjBSMXkzN3dTZWM5UGYySGFrYUxPWFFqY2xUbXBYZkZaa29H?=
 =?utf-8?B?QWlIVUtJLzZkSTAwOFJqQ1YzeHh5VXVzTFV6VmU2aEZWTnhHK25oaHB1ZzNk?=
 =?utf-8?B?aUJCakFoM1A5OEtaYWJrQVFVanVDNEx5RStoWE03M3lybWdzZGNrTVg3dW5u?=
 =?utf-8?Q?3meTwA3/b0LMdhdH0w=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1379.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f10431f9-7896-40ab-2e82-08d971fea3be
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2021 12:54:33.1987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n2AsFiSWvD8Cd1EEzVX1bHePDq3bBqAXOaf1epTWoCgqr1I02I+C7SrKHJxiYzTNQMIyBWZUs2IVdK2qEhdWs8uFAr6KofivDYMDvhy6VJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2098
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix refreshing iavf
 adapter stats on ethtool request
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

RGVhciBQYXVsLA0KDQoiIFNob3VsZCB0aGUgc3VtbWFyeSBoYXZlIGEgbmV0IHByZWZpeCBvciBz
bz8gQWxzbyBzaG9ydGVyOg0KDQo+IGlhdmY6IFJlZnJlc2ggaWF2ZiBhZGFwdGVyIHN0YXRzIG9u
IGV0aHRvb2wgcmVxdWVzdCINCg0KU2hvdWxkbid0IHRoZSBjb21taXQgdGl0bGUgYmVnaW4gYmVn
aW5zIHdpdGggb25lIGZyb20gdGhlIHdvcmRzIDxmaXgvYWRkL2RlbC9yZWZhY3Rvcj4/DQoNCiJT
aG91bGQgdGhhdCBiZSBgaWF2Zl9zY2hlZHVsZV9yZXF1ZXN0X3N0YXRzKClgPyINClRoaXMgZnVu
Y3Rpb24gaXMgaW52b2tlZCBvbmx5IGZyb20gaWF2Zl9nZXRfZXRodG9vbF9zdGF0cy4NCg0KQmVz
dCByZWdhcmRzLA0KSsSZZHJ6ZWoNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBwacSFdGVrLCAz
IHdyemXFm25pYSAyMDIxIDA5OjQzDQpUbzogSmFnaWVsc2tpLCBKZWRyemVqIDxqZWRyemVqLmph
Z2llbHNraUBpbnRlbC5jb20+DQpDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcN
ClN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYxXSBpYXZmOiBGaXgg
cmVmcmVzaGluZyBpYXZmIGFkYXB0ZXIgc3RhdHMgb24gZXRodG9vbCByZXF1ZXN0DQoNCkRlYXIg
SmVkcnplaiwNCg0KDQpBbSAwMy4wOS4yMSB1bSAwODo0OCBzY2hyaWViIEplZHJ6ZWogSmFnaWVs
c2tpOg0KDQpTaG91bGQgdGhlIHN1bW1hcnkgaGF2ZSBhIG5ldCBwcmVmaXggb3Igc28/IEFsc28g
c2hvcnRlcjoNCg0KPiBpYXZmOiBSZWZyZXNoIGlhdmYgYWRhcHRlciBzdGF0cyBvbiBldGh0b29s
IHJlcXVlc3QNCg0KDQo+IEN1cnJlbnRseSBpYXZmIGFkYXB0ZXIgc3RhdGlzdGljcyBhcmUgcmVm
cmVzaGVkIG9ubHkgaW4gYSB3YXRjaGRvZyANCj4gdGFzaywgdHJpZ2dlcmVkIGFwcHJveGltYXRl
bHkgZXZlcnkgdHdvIHNlY29uZHMsIHdoaWNoIGNhdXNlcyBzb21lIA0KPiBldGh0b29sIHJlcXVl
c3RzIHRvIHJldHVybiBvdXRkYXRlZCB2YWx1ZXMuDQo+IA0KPiBBZGQgZXhwbGljaXQgc3RhdGlz
dGljcyByZWZyZXNoIHdoZW4gcmVxdWVzdGVkIGJ5IGV0aHRvb2wgLVMuDQo+IA0KPiBGaXhlczog
YjQ3NmIwMDMwZTYxICgiaWF2ZjogTW92ZSBjb21tYW5kcyBwcm9jZXNzaW5nIHRvIHRoZSBzZXBh
cmF0ZSANCj4gZnVuY3Rpb24iKQ0KPiBTaWduZWQtb2ZmLWJ5OiBKYW4gU29rb2xvd3NraSA8amFu
LnNva29sb3dza2lAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNr
aSA8amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaCAgICAgICAgIHwgIDIgKysNCj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jIHwgIDMgKysrDQo+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYyAgICB8IDE4ICsrKysrKysrKysr
KysrKysrKw0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oIA0KPiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oDQo+IGluZGV4IDIxYzk1Nzc1NTA5
YS4uYWZlNmIwZDI0YTlhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmYuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmYuaA0KPiBAQCAtMzA2LDYgKzMwNiw3IEBAIHN0cnVjdCBpYXZmX2FkYXB0ZXIgew0KPiAgICNk
ZWZpbmUgSUFWRl9GTEFHX0FRX0RFTF9GRElSX0ZJTFRFUgkJQklUKDI2KQ0KPiAgICNkZWZpbmUg
SUFWRl9GTEFHX0FRX0FERF9BRFZfUlNTX0NGRwkJQklUKDI3KQ0KPiAgICNkZWZpbmUgSUFWRl9G
TEFHX0FRX0RFTF9BRFZfUlNTX0NGRwkJQklUKDI4KQ0KPiArI2RlZmluZSBJQVZGX0ZMQUdfQVFf
UkVRVUVTVF9TVEFUUwkJQklUKDI5KQ0KPiAgIA0KPiAgIAkvKiBPUyBkZWZpbmVkIHN0cnVjdHMg
Ki8NCj4gICAJc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldjsNCj4gQEAgLTM5OSw2ICs0MDAsNyBA
QCBpbnQgaWF2Zl91cChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsNCj4gICB2b2lkIGlh
dmZfZG93bihzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsNCj4gICBpbnQgaWF2Zl9wcm9j
ZXNzX2NvbmZpZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsNCj4gICB2b2lkIGlhdmZf
c2NoZWR1bGVfcmVzZXQoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7DQo+ICt2b2lkIGlh
dmZfc2NoZWR1bGVfcmVxdWVzdF9zdGF0cyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsN
Cj4gICB2b2lkIGlhdmZfcmVzZXQoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7DQo+ICAg
dm9pZCBpYXZmX3NldF9ldGh0b29sX29wcyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2KTsNCj4g
ICB2b2lkIGlhdmZfdXBkYXRlX3N0YXRzKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpOyBk
aWZmIC0tZ2l0IA0KPiBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0
b29sLmMgDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wu
Yw0KPiBpbmRleCA3Y2JlNTliZWVlYmIuLjIxYzRkNDE4MGYzZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYw0KPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jDQo+IEBAIC0zNTQsNiAr
MzU0LDkgQEAgc3RhdGljIHZvaWQgaWF2Zl9nZXRfZXRodG9vbF9zdGF0cyhzdHJ1Y3QgbmV0X2Rl
dmljZSAqbmV0ZGV2LA0KPiAgIAlzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2
X3ByaXYobmV0ZGV2KTsNCj4gICAJdW5zaWduZWQgaW50IGk7DQo+ICAgDQo+ICsJLyogRXhwbGlj
aXRseSByZXF1ZXN0IHN0YXRzIHJlZnJlc2ggKi8NCj4gKwlpYXZmX3NjaGVkdWxlX3JlcXVlc3Rf
c3RhdHMoYWRhcHRlcik7DQo+ICsNCj4gICAJaWF2Zl9hZGRfZXRodG9vbF9zdGF0cygmZGF0YSwg
YWRhcHRlciwgaWF2Zl9nc3RyaW5nc19zdGF0cyk7DQo+ICAgDQo+ICAgCXJjdV9yZWFkX2xvY2so
KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9t
YWluLmMgDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0K
PiBpbmRleCA4MDQzN2VmMjYzOTEuLmU3YWM2MzU2NzcyYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+IEBAIC0xNjUsNiArMTY1LDE5IEBA
IHZvaWQgaWF2Zl9zY2hlZHVsZV9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKQ0K
PiAgIAl9DQo+ICAgfQ0KPiAgIA0KPiArLyoqDQo+ICsgKiBpYXZmX3NjaGVkdWxlX3JlcXVlc3Rf
c3RhdHMgLSBTZXQgdGhlIGZsYWdzIGFuZCBzY2hlZHVsZSANCj4gK3N0YXRpc3RpY3MgcmVxdWVz
dA0KPiArICogQGFkYXB0ZXI6IGJvYXJkIHByaXZhdGUgc3RydWN0dXJlDQo+ICsgKg0KPiArICog
U2V0cyBJQVZGX0ZMQUdfQVFfUkVRVUVTVF9TVEFUUyBmbGFnIHNvIGlhdmZfd2F0Y2hkb2dfdGFz
aygpIHdpbGwgDQo+ICtleHBsaWNpdGx5DQo+ICsgKiByZXF1ZXN0IGFuZCByZWZyZXNoIGV0aHRv
b2wgc3RhdHMNCj4gKyAqKi8NCj4gK3ZvaWQgaWF2Zl9zY2hlZHVsZV9yZXF1ZXN0X3N0YXRzKHN0
cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpIHsNCj4gKwlhZGFwdGVyLT5hcV9yZXF1aXJlZCB8
PSBJQVZGX0ZMQUdfQVFfUkVRVUVTVF9TVEFUUzsNCj4gKwlxdWV1ZV93b3JrKGlhdmZfd3EsICZh
ZGFwdGVyLT53YXRjaGRvZ190YXNrLndvcmspOyB9DQo+ICsNCj4gICAvKioNCj4gICAgKiBpYXZm
X3R4X3RpbWVvdXQgLSBSZXNwb25kIHRvIGEgVHggSGFuZw0KPiAgICAqIEBuZXRkZXY6IG5ldHdv
cmsgaW50ZXJmYWNlIGRldmljZSBzdHJ1Y3R1cmUgQEAgLTE3MDAsNiArMTcxMywxMSANCj4gQEAg
c3RhdGljIGludCBpYXZmX3Byb2Nlc3NfYXFfY29tbWFuZChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICph
ZGFwdGVyKQ0KPiAgIAkJaWF2Zl9kZWxfYWR2X3Jzc19jZmcoYWRhcHRlcik7DQo+ICAgCQlyZXR1
cm4gMDsNCj4gICAJfQ0KPiArCWlmIChhZGFwdGVyLT5hcV9yZXF1aXJlZCAmIElBVkZfRkxBR19B
UV9SRVFVRVNUX1NUQVRTKSB7DQo+ICsJCWlhdmZfcmVxdWVzdF9zdGF0cyhhZGFwdGVyKTsNCg0K
U2hvdWxkIHRoYXQgYmUgYGlhdmZfc2NoZWR1bGVfcmVxdWVzdF9zdGF0cygpYD8NCg0KPiArCQly
ZXR1cm4gSUFWRl9TVUNDRVNTOw0KPiArCX0NCj4gKw0KPiAgIAlyZXR1cm4gLUVBR0FJTjsNCj4g
ICB9DQoNCg0KS2luZCByZWdhcmRzLA0KDQpQYXVsDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
