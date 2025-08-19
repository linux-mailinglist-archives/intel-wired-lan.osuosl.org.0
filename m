Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CC1B2BB99
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 10:19:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51681608F1;
	Tue, 19 Aug 2025 08:19:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7JObHUDouyun; Tue, 19 Aug 2025 08:19:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE0EB60A53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755591550;
	bh=zZL+olk+y6yUZqUlVM+YxKGzu09yjRDB4IlJPexGDyQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e4GydulYa/AporveC9tV4drR3cy0Op/0mNSh2u4D3LFV7+Ao24b+6wlDvmuZjQmD4
	 AjUY9zYDdmpN8SmLg56gOq9PVVZt17BU/31FZuj2hw/HTeG4qyDGT9cGfycWOaxSv9
	 KOHqqIjSiz0hSGgHrdmBszJDPhF4cWJMfddGCJ6iQ9hs5Eaj0QlzyfeJLPM3fDJhmy
	 z7LQFLW4FFT2SzxoZVb7YMk0R3VlkX8/qTfTz75mGM/xjN0eXZjNZKhbC54qylEoZQ
	 ewJWzVt/HkNL/d2I384uJNKBnx13ZOEOI9myK+k0u3r2INQqjqC22wypmZUrSBc+pu
	 u57KQUqZNu7Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE0EB60A53;
	Tue, 19 Aug 2025 08:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 394D9DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 08:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F62C80FA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 08:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iKubv0RfydPa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 08:19:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D0C480FBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D0C480FBA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D0C480FBA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 08:19:07 +0000 (UTC)
X-CSE-ConnectionGUID: OtC7glg6Ra6z5rnwfdpxng==
X-CSE-MsgGUID: QAm+caU+RC+s4/yf4igh1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="56855193"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="56855193"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:19:06 -0700
X-CSE-ConnectionGUID: Mh6PEWY3RnO8pe4IaRSV/w==
X-CSE-MsgGUID: qFFPCRLiSGyAEjVX6SZwNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="166967238"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:19:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 01:19:05 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 01:19:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 01:19:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MSC7rMElO7tHpAOfEiAkxbTZeguYjQEwuyQkvuS+A3UCs7UkaBQ1vXYqNvAvvkIVYMV0A7RMXnFrNAf+ae63s3xBtX4atBWJLzIAEt6VO4AvpoEYt9mk2Ke90aY4JKsJS0JqgRRFVi0nK4TNPxiHXT27ZSL6FVtbztM+RhdfGjFIgWlRu7p71mbQZAq5XwWCp//v+NiVRb4L1MYld1hYhbPNs3nfYYeNeoH5ALLPlEJ/tECs0ermIJmgcCi5qYF0jC/9rGyt/zDeQ4SCdpEd4qKkx/OzbuSTq5aqGE974nKL/ML1+5VS8OJUFQjblVesILgjcs/DTvDzIK97KUbz2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZL+olk+y6yUZqUlVM+YxKGzu09yjRDB4IlJPexGDyQ=;
 b=OPIl04YTndmCBQfC1giOxDlgQWPxwSy575lFcVqg/YmzStn2gXcYDg1gEWSW6/rmGwAyAiYdk3UwAaUFXL4wdfrqy4MtDwT/Dp6xGW6kNl2E/b0D2DLf/mlTfpYEWtkI6e/XHNDMm5wAmduGelVzzvKrxs5ZU2Yx/dutaW1u2yxI06xvRRVx9YSePxubHhoYhp+M31/GUe1fJhCIbpUa3WPdLLZuEjcK7IYEz4y1DM7plF6+gnPCBKSFjRoZDvX1Z/l07kNAy+4MU3BK2QmgXmJeBK5TnAmdffe+lyTHQde4X9sCQW7TZVPb3CaaI2CDChd4gw10NnDiV8G3V9ISXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 08:19:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 08:19:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] igbvf: remove
 redundant counter rx_long_byte_count from ethtool statistics
Thread-Index: AQHcEFOo9WVb8pEOKUC7eF83GsQahbRpox2Q
Date: Tue, 19 Aug 2025 08:19:03 +0000
Message-ID: <IA3PR11MB8986EFD5F42D8EF46BE38532E530A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250818151902.64979-4-enjuk@amazon.com>
 <20250818151902.64979-6-enjuk@amazon.com>
In-Reply-To: <20250818151902.64979-6-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB7757:EE_
x-ms-office365-filtering-correlation-id: 56f083d0-3d34-4fc3-d032-08dddef90ef4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9FUO2iFlk4l3uo4uQe5zvJ32eDJQ0/9v6X7tJQbBegCo0LK9cz85YiB1z/Xo?=
 =?us-ascii?Q?7pPnU9OeNk4iTX+XOy90rEga7RXBbE7PNkCqMxCyjLyj7/JM5ReIxnLFIzO+?=
 =?us-ascii?Q?zbmJgyr7G5vwYCA9AQ6zEwxdm2KYW44tBsuKEMwqXGYET11HV1BfxCUYFx+r?=
 =?us-ascii?Q?eXC970eCmUT7QdU0sspYLYAAVhxeQXDEw7BnKoJ9qi1q/m5T1m5qXVbkclXr?=
 =?us-ascii?Q?1gtzv6Pd9YCa1ohkRaVRPnYEJ6yucO11SpHwXChT+ibB+A5EuuNzRIhzU7oZ?=
 =?us-ascii?Q?sjzQVvxyGyBa2SKAr7mbVmPq2smCpncamo9b+kNdZ9Keezd6DQu53JovdBlm?=
 =?us-ascii?Q?Ciws/K8LGAib0IaWhTrNowc8sHaHIx7gI9E85Ywozn2EZM4crub+oSxJ6nLl?=
 =?us-ascii?Q?jJzijNdTCqDwMLA+wzfvXLC0minCjQxjRKSkycEmGiNqG3YdWOYDwpKoPkzI?=
 =?us-ascii?Q?3T2c1UHJZNUs6gwlnD42FAxdoJbZZ1RSOYj2f+4cO1J39aQ3g+iFto6qot+A?=
 =?us-ascii?Q?a31x8YPHZrubbgFJIUaNXsIGdhzDLh4GVXVc17jdKEO5bSzQIRTLGMseZ0UL?=
 =?us-ascii?Q?q5PPErhW74Q5dqTIoHCLAkO9y/c4iLGarNYjsLJcoKckWtbGQwGu0YM7QLMo?=
 =?us-ascii?Q?WsykUiZLsG1W6cAnYjp/vktwnCcj3zxIEfc6/ZdEPzDbE2ts3ykUGUOB0i4q?=
 =?us-ascii?Q?neGAyFubGPJHVhlB4ve1CC8KdDF1/nhzOmhuLBrjDfVCfRprZTmbxRc0JZ9n?=
 =?us-ascii?Q?TE+1GR78AFGdZ9xD8qO+RiSJ3e7l4B3H0VlFtPiCGokCwgIMLAa/7NlZN9Ja?=
 =?us-ascii?Q?xhfTH2AcFisRZktwQ5IvKDXzo/Hu3JyJ7mhnU4CiOkAa0OzOs7/w8Y5SLTA7?=
 =?us-ascii?Q?q+C+5NOk3GFRIuLfFq0pcLc6BNfOriO+/JcYwg6S2XFWUJLjYWhroX05NpEN?=
 =?us-ascii?Q?cI85S3qWPZA9KanIlgNmyHyzMJZjZ2hJZ0P2ZoDCaWm5c6JS26rdt7n7X/xL?=
 =?us-ascii?Q?PfmSUReseFpbBz4G4HTwdRlnzsaqa96G98JEf5UaExP+PqpAA/MtCau42ejU?=
 =?us-ascii?Q?lSbaHBgDvfHXyBGMvX5l//dkkLELtdRHP4non4PUqDmpJfAb+iKMbFwKRCfZ?=
 =?us-ascii?Q?MX7o2ZybSU0gKoAvIUJEB3Sjl2aSZPyrX8fuRqXluqNzxLUVdR8pAWwEp36L?=
 =?us-ascii?Q?OGnYCbWayxGpHOH/ilq0zyUU5MCxrk4IwKguOOoAdLdzWRV9PTsHUGXops0P?=
 =?us-ascii?Q?eoI6uD527j7iJO/SJlJyoAUklqpnn29ON3bwd66q0dmt7/mfetz9+w8G9sQp?=
 =?us-ascii?Q?LwX5g0mp7Hp4VpCWA7v+WuJBiw9Eebb6EgUpa5L2Dlcp0TvBIM8Fr5ljAIin?=
 =?us-ascii?Q?r1bpfVarHMnDUhMOZOx8KZLzaBXC+W+ibuVIED/BJpnUBw30SdYh8+nP/p+N?=
 =?us-ascii?Q?gPJ1rXmQTyAwKuOVOtQ5RZJ96TFsbJ0VKhO7jI89o4X9dWRvYObzvg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?saPhps7H6M14j+4hhMDsw4Auw4YeqSZPIdkIX8FgbeBp5poIK3u+hyeOizwJ?=
 =?us-ascii?Q?5X/CNwE3YET5w1p9ITYzyOGzZjmUKqE/es8BChAopL9SnohkpshmEAaVIrbp?=
 =?us-ascii?Q?bbD5pzw1kEhEpx5Zw2bHMGrjM2C1DD+hGWKl0jOEa3C5aD1moEGO2mjVH1o1?=
 =?us-ascii?Q?mt5bKAUmgUBpMFNRKeDkDvCGMpkJ/NQpb59YKMNnNdEsqh7AeeJE9DXZBJtB?=
 =?us-ascii?Q?VAaehZ1Ur79HxRhEgQSiAoPy3ptIFGkowpM1L+8iAe3zer6F+rLg+Od2PJcU?=
 =?us-ascii?Q?tbwr9d/OU1g+D45C8RISMuDv0Me9m/AFBrv81Ha60MMMVR1/drKnbbt4Hjv6?=
 =?us-ascii?Q?BhAHcvr+k8+ojv7R30ZnDv4l+pi66XfYY/SYdEO4liIDls7lzXlDErwbFB3C?=
 =?us-ascii?Q?K7OJluFzcX9j9KYfX06Jr9h+r8MX8WNXw8SB8HfxKAahQamDSOCQO54q62U2?=
 =?us-ascii?Q?0WY9W0JsjCJEdNW7PpriDvq3YLMTj0WO9FrBnzbU7p92Jg4Ug/Y4264T+V6g?=
 =?us-ascii?Q?ZaFY6vKOVAX8ysSX/QYjI1E0tgxoiAOJ5UEr/OxYgEaPJIiEl6nIurwd1Jth?=
 =?us-ascii?Q?B1wvV3kUqRPk1m0RPZdlKwNAW5dgOtgpgzO2lyYnQLSMplS/+NKVsuCz8n3v?=
 =?us-ascii?Q?tfzOHLIOWM7kbdU87qVijJb211UapVforZ19y/6Xcq1JdczuTFJ7pMyJoN/8?=
 =?us-ascii?Q?+zEsJ+JyMP281ZXmDb7a8YIDehW0JK1eI0xZHKCbGU0kuiNkwVPLY2McLXb5?=
 =?us-ascii?Q?pE3XpuTGS9yQ8+KtPmq7VbZde76WJv6uWfaF6dl3nwcDUfMSMIauehBRbAQy?=
 =?us-ascii?Q?5KB852yali8CJyfrEvXGfo+gwhTyS4VoCAU/OOXxpVv+pYCX35mD/yKsQvcT?=
 =?us-ascii?Q?YSGb7rOyymCM3qN/GCNXrgWy8AI7HQJcywXGcuZY3oZq8IwS1/hAGgv3jd6h?=
 =?us-ascii?Q?lkcFL5KiRhfgWYpLayBCYhlwAxnqyffFnKNCPmMZsqBlXsCVdnGfCr2fW26E?=
 =?us-ascii?Q?3ObNkwe85I7pRwRwQ2OSK5OfgzU6Lr7KyQXCofrJWsIaH4tRqxiqlUZYbN4u?=
 =?us-ascii?Q?aAGCVaVPKAlagQY0PHs5kFGRELs7ojxereWEU9ikvYgy+rIJOakbSb8ZWQdU?=
 =?us-ascii?Q?j5VdYAy5NLc5L9WOD18Mxeu/qQYjoUGfrGtkpNsLjfZEqZcPu9mvqm9uk4++?=
 =?us-ascii?Q?fClS/VjVIOd9aqv/FLqbaMg5mQNsdsIR355DXOlMCnZKKwNgBoU+B7mN78/g?=
 =?us-ascii?Q?DklZrNOK6Nc/lNczJaxA0zE79tOolW599a2S1bYEFlUvWWnOIvBHRdbHTP7B?=
 =?us-ascii?Q?TgnXwlSiaVl/bOAgLvkWwAjcZLbRodOJjCDNw/SeRhcJHRNBbDGwyxxNVDZk?=
 =?us-ascii?Q?x5/aWTUL1oM8E/eqQRbbL2Y8wmOPxJtcXwGYzqElktZ7Vp/oyAC685goAqyr?=
 =?us-ascii?Q?0vzFhACGrUNHDB8d5OaO5U1NmksQ3fGx2g74ErvnTp/pVklozWf7Mi0FZnf/?=
 =?us-ascii?Q?9N1IRKb4hqXyhO9bbZcJ9tWc8fnUkbqbSl1vv/ubSxPvNHbtLWG/82C6M33g?=
 =?us-ascii?Q?dOercfzfbV/7QGsrBoveqG1TZYrIT+99qP6+nOoUxupJWy/hx21gSUGcegP7?=
 =?us-ascii?Q?Tg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f083d0-3d34-4fc3-d032-08dddef90ef4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 08:19:03.5325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w8H7cgIva5p38vEb+8x+oJDw4YDP/psHlJccZ3Yaisy3IBzIpk9+Jc0VDe038cSpfdy/P8bDV9Aq2VR1JPmL74c/W/yB3BOriH9r6fj+AR4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7757
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755591547; x=1787127547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WFocAMcBp2pA8e8xzpHLEhiNi60lkCf7pELddksh1c0=;
 b=kQgltXp2F2rK5tYWniUE6X+DpK+/rZYFRi4+dDmj8W+JoMsfkMNHzUBq
 ua0708rinPp012eYkkNxnu2+J6hO7W4fV8yf5+YMrec6XsJN421f4sFuF
 dOOdQXVVo3xGuEcbwdkmsFRxebxIfFK2lNetFwNpGHO212tM59TgvNhaV
 bIJDiNHzgIDTJSN/0LqlFD6GPYfoahlhbCtLyPWORgHvt4eVAh2B4WDB9
 xWx3pJKmCY9u8YwFn8w2Xh2kx9oHJ60UpDH4GPWPrp36FY3nXJ4LQUwtB
 W3CA1DWDz1JpjUZwRwnkeH6U1bdzWtCmDggl3zmPwmtMZcGeZOV/yl47H
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kQgltXp2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] igbvf: remove
 redundant counter rx_long_byte_count from ethtool statistics
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
> Sent: Monday, August 18, 2025 5:18 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>; Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] igbvf: remove
> redundant counter rx_long_byte_count from ethtool statistics
>=20
> rx_long_byte_count shows the value of the GORC (Good Octets Received
> Count) register. However, the register value is already shown as
> rx_bytes and they always show the same value.
>=20
> Remove rx_long_byte_count as the Intel ethernet driver e1000e did in
> commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").
>=20
> Tested on Intel Corporation I350 Gigabit Network Connection.
>=20
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/igbvf/ethtool.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c
> b/drivers/net/ethernet/intel/igbvf/ethtool.c
> index c6defc495f13..9c08ebfad804 100644
> --- a/drivers/net/ethernet/intel/igbvf/ethtool.c
> +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
> @@ -36,7 +36,6 @@ static const struct igbvf_stats
> igbvf_gstrings_stats[] =3D {
>  	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
>  	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
>  	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base)
> },
> -	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc)
> },
>  	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base)
> },
>  	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base)
> },
>  	{ "rx_header_split", IGBVF_STAT(rx_hdr_split, zero_base) },
> --
> 2.48.1

