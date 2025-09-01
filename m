Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3166B3DAAD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 09:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4313640D2A;
	Mon,  1 Sep 2025 07:03:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mFaKae76PdRT; Mon,  1 Sep 2025 07:03:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5969D40D42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756710223;
	bh=OIGKJET5UPA7pThAOaOBqP6omRpNbk31QILRzTkguxc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LT4bApteEBttYaFKM7F9m5o+UEvTbYy06rN9o2mzXemGbrSM0JzQ98cCTmvWZBo4h
	 DW0yzjgY4EAurVdBUkbYTGqdpWSn2V9875M2eLMqYyFsH54ytjRehvtIyjY855rfF9
	 yn8WUjTllY2VCPK/lqQNlnxQbZE5+5AcjzMrf6unOx+Z4kav2dHiiBLEMdFEtSzaVl
	 j22YLyLFdsxX/0YAYIvtLltTneqxWkB15vlliKRW7jeRaF/rNbufywPLFGSUsaWwvM
	 Hfpjpjs9xQx/wGTSTRb6g8VBh4zVRPCVqwwEqhGzCOxawGVcQoIZbWUxEKY9JSQAVa
	 yGM2PcNHNaBGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5969D40D42;
	Mon,  1 Sep 2025 07:03:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 21CC3169
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 07:03:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 138BF6077A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 07:03:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VMhHlZNNka4y for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 07:03:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2DF6860611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DF6860611
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DF6860611
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 07:03:40 +0000 (UTC)
X-CSE-ConnectionGUID: zKI62XxeThWNqxkKJhiPEg==
X-CSE-MsgGUID: KZsSGinqTcOWCeJ/AdUHPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="84311714"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="84311714"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 00:03:37 -0700
X-CSE-ConnectionGUID: VH2FCYF/RrKqbR+25Vb8wQ==
X-CSE-MsgGUID: BxKqB/dZSVePaUHL/+WBRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="170818136"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 00:03:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 00:03:37 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 00:03:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.68)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 00:03:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RJuBd8+g5JSYAVz1cAmIP8CIKC/r51teBbPktTQEEk3M7n+R1zsDk27pj/qYi+fpT2wma59Ti8U0aEwyiBZvudMDl0jUUhOwhwxjGsuR+4pulOpZDyLYVPFJq33Ku+vH0hpihxnwOzrIX6gHOWZvTqI+pvHLryDpuzbfgVRpW8a+oaO0flBqqUvUhndn1PTvzgaPTpMDbnF0U+KOIv7vipQVZYkdKe7nZvvOrg8oCehasDroacMd/f5bj7/mKDX+TmtAha62RNQKkjXJWvKICUoljo+jYmDVjsKeaP6JOYlTkJRTP0p8mZ0yUDxl/1btlVWa0GbSdb4+ihOcnIW8wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OIGKJET5UPA7pThAOaOBqP6omRpNbk31QILRzTkguxc=;
 b=ChVQyZ6TD0KMboNFBhQHyQdNarhWmNrjCWsODUvq3/rEsX17HefAz07VvmgoLrO5zdHNd+WoGi7IlEU5of0EAPUnMjPhxNPxo1+G0rPWgYUqKvJh9C95xmU7Oue8HXzK2f2ZFWX4vjOKwldTsWjv5s0Oi56QsolHaVr5Ek+Krg467ddRFmxqC4yFHjenATsNWluuliTt7xT0bu26DG44tBZLmaQ1pcxYxZbzXsnsMxfnKy4BmRGZfu+xhGH3mUxN3RkhQ53Wu0WrVxqWqIJWl1d83WUFWkIuGCtZ3CjX1pwDypdB0jRkr9DS4WAOrR/WDDvbkh0sxwi5T7uyl8u4qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8596.namprd11.prod.outlook.com (2603:10b6:806:3b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Mon, 1 Sep
 2025 07:03:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Mon, 1 Sep 2025
 07:03:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
Thread-Index: AQHcGdCQMJp3jzYnq0iWiid5XRwBGLR950Ug
Date: Mon, 1 Sep 2025 07:03:34 +0000
Message-ID: <IA3PR11MB8986CD55611A08A9AB8B6DF1E507A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250830170656.61496-1-enjuk@amazon.com>
In-Reply-To: <20250830170656.61496-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8596:EE_
x-ms-office365-filtering-correlation-id: 946465e3-8e06-433f-b155-08dde925aab0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?vKZ2WGQSTgycokxnxyUfpyActjochPWXw4J8IQ2bHi2Njxw+H8kzcyZXz5EX?=
 =?us-ascii?Q?K90Wn/jqoTh5Qa8IeyOJG0pkP937z9+aplbucNszgjdmpZjiNppvHLZKtpX9?=
 =?us-ascii?Q?dcbvxZRPbiLy6vvQcY+KuoIqp1v0N6Cg/CNV5dfg3GfNvxG2Ox0h7Yi5rV2o?=
 =?us-ascii?Q?s9qHfkq/Nx1LCvUViaca3uvZZxm0RPbYMiVKJ+i1hu6b5VITqJbO9G5de/fr?=
 =?us-ascii?Q?M/WNN6lihVcttxaVwpdRDQpwXNZRVge8IdYnpPwM3BGi95TSbYQ692VnJ3iZ?=
 =?us-ascii?Q?novtTIz6m6SFP5mbRFpFmzNofiydkARjex68Ro3oYf6VtBfBKvjppymHxpB8?=
 =?us-ascii?Q?HsDVaf+RMnYLDV3sSqSdKrMN7RE6NOjIoe1Hs9gl4Atw9GXnN0jKnr5HSso+?=
 =?us-ascii?Q?2cR20FSzGYPhITgT3TZOyznTwEgjSIX57SmQ/dxPTUaLZcZThsZ/z/ANfsxq?=
 =?us-ascii?Q?JDr/s35OEoR+kb+WOo8O3l/PSQM/zswgHKYUvrbc48tbNB8Q1AxaTMzJTmXx?=
 =?us-ascii?Q?CuQK7m4inZIiga155moKgCEBLKGXqR81BbArrJC9O8QV6SkKmwbfOGdLNtGk?=
 =?us-ascii?Q?hQTmJfKhKZJxcOWPebE5im7NyOj3w+6MY008gEM6t3vrnkDkoZ1G5VkSOdCR?=
 =?us-ascii?Q?ZaEYwgegEV0nF2/2Gdv3g1yv1asPX4nzv8iuMqQFzlcrfFkSOigsDTM9lMz9?=
 =?us-ascii?Q?OjR8hBGkwbh4wbS50Wuh/8TCW+uZYkZpKaDbKziqabIJOwuHPJUmBpkPjnJ+?=
 =?us-ascii?Q?p8raUUdd9Nms+2EViEHNfXqSnFKg8/TM/oAEZ1Vpti4xtLmX4a8WmnjiRuLm?=
 =?us-ascii?Q?WtoACv4Yp/YcGQNq2avvk3ke6uA7DtXXfSw7qCOYia55NpkW5qedlyxPxjtg?=
 =?us-ascii?Q?kE13eA54jBt/B7i05jXQHX+zyPnvrNnnaXXaPHc6t1yEAg0DTq6FTG1zvi6l?=
 =?us-ascii?Q?7keTXHu5LsZBQX178dGB4HT78aKDykwnMLqkbUiqT3eikxf/KIDHqsSzXTwJ?=
 =?us-ascii?Q?3uL3GSDtdJfVsQvQHHuYGPA/BAxGwUu+ZInNjqxJvbY6/Qo1dxY7lqby9pGM?=
 =?us-ascii?Q?xFYHsFg/XckpuINVOpCtiGqX8iFcB5wslHWkkv75PDTLDzPx0p7l+9eXefCp?=
 =?us-ascii?Q?acapZa0LlaNCZsNNWFmqgQZwzkpQP88gj7ssfqGm33LEuo1diMTcDGEbFdZH?=
 =?us-ascii?Q?/gVzB0NnkH3Wz7h2Sp0GpFtrfKemiUbr/FyRvMtXSUo6r67gD1KEOg4qwRit?=
 =?us-ascii?Q?NQT4zUljE1RIicY0mGebRr+rd8sNgBYpYOk2lT36cZxGurcaywKTTEnymhIq?=
 =?us-ascii?Q?Kto+SPFGm4j1jvcU7rhfszsQOUVFzs7HOrwl7eYEzDodtxymjoip+82s6XDB?=
 =?us-ascii?Q?bad99bCuXd930Q5nWHYMaFxdR2XKg3F/YPvxUj2xFJRVFmsD0aPd+Ek+EBdV?=
 =?us-ascii?Q?Mmfc8dzfOiWGvwtC/fXppYnh0hQPMOXNv9XLUSp5hy7nlDIHMsr38g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W991iTbbBjIts55NrtSETcWeK69zLv52sVO+Lv0AO6w6XDQiAQQoVSkHE3cS?=
 =?us-ascii?Q?u6C8mePo/xd3e5wLqBFnxBsRU8ghBKbWsuBagR0LerEo5gk4sTH2MBlfKgZ7?=
 =?us-ascii?Q?lAtTs4tUyxVBDHV1Fkc2jIzYp8gncGgBMHcHGaTfPclx1pJScwSJldQKM3qm?=
 =?us-ascii?Q?BGZ4mRu/q3PGsaMGZR4n6cvHcVqYJrpZGBTf0CtRhkhpbqe4mdkrYhUopvW/?=
 =?us-ascii?Q?fFdF57S5hy91D1pXIMEbajslZ7Qf0fKIr/dpM+bf7+lUwncp2Sms+GmalZV3?=
 =?us-ascii?Q?IKgu+8xzISxKtf4i3uJ1OprRVO28qIPhBpYOV8ljuQ0zfduSYbbH5MNC8VV9?=
 =?us-ascii?Q?zyi5pKVkzrJvcrhq+x/knqXtdaQ8JAJm5YFrpfl0MVUrIAOBOAj4+HSZTs4c?=
 =?us-ascii?Q?nmo9xZQ02qFcsnKcklPpQnx0XqVbbdp9U40B9qntPnoF1J42GgqzP7qdGuh4?=
 =?us-ascii?Q?StoZAjLTzT8YJcvX2oftfmAmImo5xCat4rh+7vLGLECPKXDvo0Pcyq4O3epW?=
 =?us-ascii?Q?ClXhud6LkF0Dac73xquzniuRR+UsEFskGZ6sCb8ELWHTHba+gPeh3Fnl38Xy?=
 =?us-ascii?Q?192iNjBQxyI5y+BLGW4Yplj9icAY7ctjsRDK+u9+gvPu9qiVr5SkB40Maf5h?=
 =?us-ascii?Q?MLm37ad018yMf/41VxAYmFgg5/ooBNe0tesazKjmSfwagzy0fUXP/To0jP+M?=
 =?us-ascii?Q?bABl7SrMMyYrBdr8OZGsBKiNMvBBxe9tffw8HcGNh5IU9ODoKbFXfqa45r0C?=
 =?us-ascii?Q?JITygV1x3SP6zCdQ765uuK0NhUTG6wQlXmcsJqHtCYqVwj0f5b8XZhcgqKPu?=
 =?us-ascii?Q?5Fu0Mhi2hkoCM+5ipn81zCjGrVeRf4pphvn4x/2ntGh/1uZqY5h2BoadQ7TF?=
 =?us-ascii?Q?O9WXPpPgOwnFjLYFc/SKCc1kkAA94vW7tE2dyDIZCiZQZ/1nhTfIvFYWGmAW?=
 =?us-ascii?Q?wRuxYxyFgNLbJKWLs6zauVrR/DFpTZMP3eEO/FqFkg73jpjXFJp0ifR3F4g2?=
 =?us-ascii?Q?io7ST01yMrQXGdBqoc07FCYHE1R3OjDupbkCUKraZvpyNR4eahpJWRDor0kF?=
 =?us-ascii?Q?TXVTfNCwOX6w3nRARD/zNNv6vzaNMWx6q9frnWoYxfHlt1P38A78XxJdgfdC?=
 =?us-ascii?Q?O57ckfypE9p5VQPA4Rc9iTKzchjnxXlvikvj7S1fXhdHuuBXYWLJcex0gUOR?=
 =?us-ascii?Q?KGW5gKRAVgaTr/qzsFZ5htsgH5j8Mhm2TyxiX/ap0wzAl96JI1RoyvWCrBE9?=
 =?us-ascii?Q?OOMzGgvPt/sgm5oxnTjAJrW3joH3RtfO2gHOjGXRervN5u73bu25Uv86Enne?=
 =?us-ascii?Q?LsnLrPBdylhaO7ZnZunpkIBvlLBg3bJ5rmEHcBq0Y5a/sKJ+xFUc3QtKmgTF?=
 =?us-ascii?Q?KEb0eId3yR1tdgvybx9PE5ohDgB4d6PbWvotA54+SD6VJHiE6XMDCfztjlQs?=
 =?us-ascii?Q?RsakAYcDDBUCU50JnpgbwTfw7Zm+j1IVbFiYjnw6DSxMUHXSU/llV3Uj3Ozf?=
 =?us-ascii?Q?dMRfFW3ZnCOG1KR+HGptBWCixiwAvWmv8wxOsddL5CYDjy8Gk2S3mSQixZwr?=
 =?us-ascii?Q?h5g8omGdhzeuQMV0zbJ5ci61Lpijpj7zmMBipjobKDW3HAgspfMo7+P40lPx?=
 =?us-ascii?Q?IQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 946465e3-8e06-433f-b155-08dde925aab0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2025 07:03:34.2969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ztHd+W9xiSQUQGpVxOE6RxG9ErCBxbJeKaiZtMuyjg3xUuPbz+KflsdwI9zy7xz/g43n+wuonm/bU/20z1c04fIkqNKFs53CBVBZqaMaYg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8596
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756710220; x=1788246220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O4f/8NMXnX5E6XxglEbFXGcG2qq5cQ8nI1I00cNRxxs=;
 b=X0+faWNqEfEXzdfDMxJd85BJi8+HwNJU/39TxdCWVLTNbujK4CG8ReC+
 sYWfsTNNJ+8DX9yRpaXRsBGdJP+V2Ryr/2Tbro2k+xvbA4lslnzglrVyY
 A0aD7L1uqhPvvdhnfBJjhp9p+0qfs1EbfQWFY+1I7MvUR+9YBjblaDoxl
 AzrjZIpsnlL0LpjXZtCbjSh4DDNDClbKJcGS3BZLoJU0aRX4w/JjuS6dG
 WxjetwesEPUNnQltPawN8DCMPkX7ouFoQTUM9nH3UDWs47ebIzrdmAjlN
 sk65orP0t0qjxA1o66uULN7Y8zFKa0DfF6p8rNsRLnDnjffyV8JQZ0TLF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X0+faWNq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Saturday, August 30, 2025 7:06 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
> link test
>=20
> The current implementation of igc driver doesn't power up PHY before
> link test in igc_ethtool_diag_test(), causing the link test to always
> report FAIL when admin state is down and PHY is consequently powered
> down.
>=20
> To test the link state regardless of admin state, let's power up PHY
> in
> case of PHY down before link test.
>=20
> Tested on Intel Corporation Ethernet Controller I226-V (rev 04) with
> cable connected and link available.
>=20
> Set device down and do ethtool test.
>   # ip link set dev enp0s5 down
>=20
> Without patch:
>   # ethtool --test enp0s5
>   The test result is FAIL
>   The test extra info:
>   Register test  (offline)         0
>   Eeprom test    (offline)         0
>   Interrupt test (offline)         0
>   Loopback test  (offline)         0
>   Link test   (on/offline)         1
>=20
> With patch:
>   # ethtool --test enp0s5
>   The test result is PASS
>   The test extra info:
>   Register test  (offline)         0
>   Eeprom test    (offline)         0
>   Interrupt test (offline)         0
>   Loopback test  (offline)         0
>   Link test   (on/offline)         0
>=20
> Fixes: f026d8ca2904 ("igc: add support to eeprom, registers and link
> self-tests")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> This patch uses igc_power_up_phy_copper() instead of
> igc_power_up_link()
> to avoid PHY reset. The function only clears MII_CR_POWER_DOWN bit
> without performing PHY reset, so it should not cause the autoneg
> interference issue explained in the following comment:
>     /* Link test performed before hardware reset so autoneg doesn't
>      * interfere with test result
>      */
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index f3e7218ba6f3..ca93629b1d3a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct
> net_device *netdev,
>  		netdev_info(adapter->netdev, "Offline testing
> starting");
>  		set_bit(__IGC_TESTING, &adapter->state);
>=20
> +		/* power up PHY for link test */
> +		igc_power_up_phy_copper(&adapter->hw);
> +
1.You unconditionally power the PHY up but you don't restore the previous p=
ower state at the end of the test.
2. igc_power_up_phy_copper() returns a status, but you ignore it. If the MD=
IO access fails (e.g., bus issue), you should mark the link test as failed =
and continue with the rest...
n. igc is predominantly copper, but it's still best practice to guard with:=
 	if (hw->phy.media_type =3D=3D igc_media_type_copper) or or check that hw-=
>phy.type !=3D igc_phy_none

>  		/* Link test performed before hardware reset so autoneg
> doesn't
>  		 * interfere with test result
>  		 */
> --
> 2.48.1

