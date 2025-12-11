Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A3DCB578B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 11:13:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E27D540F0F;
	Thu, 11 Dec 2025 10:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OBBiP7ZN012i; Thu, 11 Dec 2025 10:13:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51C0240F29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765447995;
	bh=KA+Nuv15hQcAGD6Rxs8g9RYuITdVYwLNWlKTVKFessg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E/tRAjNlvuB7GuPxcWwJauMXSSk2y6RKKQsUkRRp/pfwkRxe4cE1G0y1dXTqcNo85
	 3LW/BsABkDVZwGApSqw85wD+UPdYEJ4iKXqzvFgLevWv/Yv29Fx2Zn3I/NwygplfVU
	 NGu0AepkI0QQXFuZMGNVDyzedam/+jTSlErT0oYGoIh62iMhwuK0C4q7AvXYbjUCHT
	 0NWtRZYBsOLSJExeRAUslUOtsR1jlIxwcMLzI/aPWX6m2cVFIHf9AsnVhSzjq+Ae/P
	 mCCsrgp3cKJuwXs3YSOhc4aBj1mw5CsolzE4IbCO5b2JR+8ibiGXwSJ5tWcYjIiIH9
	 ar1npF5+PlqaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51C0240F29;
	Thu, 11 Dec 2025 10:13:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 382A52C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E0196071C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zEHlVjnETI2y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 10:13:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39422606F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39422606F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39422606F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:13:13 +0000 (UTC)
X-CSE-ConnectionGUID: Mt7thZ/DRfuhvFVr5rdijg==
X-CSE-MsgGUID: YM0FZfiISaGG0oeSipHOGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="92906749"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="92906749"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:13:12 -0800
X-CSE-ConnectionGUID: buIzJKClRKWdI5+MfWePLw==
X-CSE-MsgGUID: Z7J+6H3aQ6iwwzAsVUXb0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196031972"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:13:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:13:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 02:13:12 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:13:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DgFFlmQvWBZHqWsSFen6T6MvOvYF2sM3U0PXwATDXF2G8Fl7tJ/UA0+de8HWxQOi0LYwOIpbvZHHXilOx1/kLDepzqKBHQOB04TrHcqoMqAk2170dNJ3UGOXKaLVrqYEo5zHSm/b/rM9aEWzO3w8s9LpMANXphfY6YqdT/MEL/rZwGXrpCGYiQfkF1us4C6I+cvncWVJAZSEFCgoMvpbj6TopWc/rI0QcjI7IkGO4MIoTK8UgQkq7ooechBjsAac8/lJuCf0S/e0RVfWaWx/dTImX6xFOYDB/OroQ9w7HzQ5rOK31LOf5UzVMFN09SSz+btXvufOx4oG8F+TXoEucg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KA+Nuv15hQcAGD6Rxs8g9RYuITdVYwLNWlKTVKFessg=;
 b=px9ZBD2+oBbGrsc828D+/my6YflxrBa+frVBXTfXQZmQ4BqsU9x/4exaJvNmPwYfVhpFl9GDRxcwn26oj4vcibPvE49VQddxknwAT4P5JLFtXBcInqvLY/0dHFGmSCYaDdhF4ke6+k8jSXeaGO8tWZPUGKVIM3FpPGk972tekaw8ICw/p6nrKUzeclTwRC8Dln3ZrbEPMxXbHlbkX9fYkdq7EEpcWIwR1iG05H+hGsVCeaiQIcghGGuFyQcpk2wYaCVLxshm0cVwBwx2gW86bWIrIW9sl+8flOexStIciO8ASe9qicMuouIW0Cl2YW8ZIc3aWnkNDIft4UoIIfRD3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB6351.namprd11.prod.outlook.com (2603:10b6:8:cc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Thu, 11 Dec
 2025 10:13:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Thu, 11 Dec 2025
 10:13:10 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Wegrzyn, Stefan"
 <stefan.wegrzyn@intel.com>, Simon Horman <horms@kernel.org>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>, "kohei@enjuk.org" <kohei@enjuk.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: fix memory leaks
 in the ixgbe_recovery_probe() path
Thread-Index: AQHcan79Eg0aYyiaDkKhJxRMa4PFYrUcNdyw
Date: Thu, 11 Dec 2025 10:13:09 +0000
Message-ID: <IA3PR11MB8986CAD67FDC2D778567A046E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251211091636.57722-1-enjuk@amazon.com>
 <20251211091636.57722-2-enjuk@amazon.com>
In-Reply-To: <20251211091636.57722-2-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB6351:EE_
x-ms-office365-filtering-correlation-id: 761d5f06-ecc4-46b4-6ed1-08de389de2da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4QwpndrmyjFVUbW0u/uqK/CL4ZkdsAeRKbI20RNlIodXeDcHfXl5ygf5/kpO?=
 =?us-ascii?Q?+1OEUHeBXjSlqJpTwzjT7pmFKc1/9c4MNtKcZZgNxFNeRP08ucEJ1hTtPLnZ?=
 =?us-ascii?Q?ntZAY3rLbYTpA3P+xGQo17ZtnQB1qHFHpF6t+s/16O7bORwHJ46oF6yyyHiu?=
 =?us-ascii?Q?onZwu/4pKZKAm+G/No3+f549Vfi26U2Yba03BygGYxQ2Z42224AfquggIUsv?=
 =?us-ascii?Q?YKAHtv9ZF27epfDiftXYOVIgS6LLQJjdORVw1PzUzVc5+bAqK1sPpdzpQgtG?=
 =?us-ascii?Q?dAgRDzkQvnqtIsLWnnvOE10lIYQUlFVUh9VkvEaNT0c09dwmbUBkVBDuehtJ?=
 =?us-ascii?Q?UTRzqWRibLDrhopj5uch7v0uPYApl1WCvmexZCskxm91prHHtHvZ+gP0htdb?=
 =?us-ascii?Q?tctgoxlHT47Vwjm8o12LolK/7WHT51q8BI5YJ+TupPtbLwsPXA7aQqjgirG8?=
 =?us-ascii?Q?QvtMLAZgXrzEMTKrNxW1RCSH6mtrbD4Wuia53jh+PWObtnnm0NpQRH/NaLee?=
 =?us-ascii?Q?m2UxS1NgcjyOJad71EzVKx7DefXZYNY2/6dOq9UAUDR3AJInBOzhrCQmLrun?=
 =?us-ascii?Q?7Wex+edbyGL5moC58RYknjBIS5wUkwWb2+OnHWvHhnn+uqMl8UdV6TdYsmUF?=
 =?us-ascii?Q?k6W5EF0OZ1+8JUf9NhioEEvX/P4z6QvLCftgvQjBquIGpwpbtNx0IO65fFvX?=
 =?us-ascii?Q?1U02K/BGo+ST5PqBcTvoyZFdKebmu40lvct8mwDtu1YmVjkwrP+aB1tsOA+a?=
 =?us-ascii?Q?Ehwc/+Nux90RPyd76S+Oa/2Yn4quCMNJ9mvVgSfVMHvLTQAgJIVwyfQw135T?=
 =?us-ascii?Q?Z+GsrM2dohUliD2WjhFb3BPqS7gqfYbAK0UF4+2sIvd9f55zDbspGltoPkeP?=
 =?us-ascii?Q?WlNYDbQ+xzb2VTSvnkcla/ycnb0iSkXJh2r/DUQ9gSdBbpOzNLaqvgEEzkaY?=
 =?us-ascii?Q?5LRSFLCJvRPv+wgTacodShUhpjQoIInOs4l0kkSgywaqdhuSO5kbNo8SOl0n?=
 =?us-ascii?Q?a75VmrDdzbg8IkN5k4tSsnYQhjglHzhG2IQ7cCMn9ayM9TompzXWXZD+lco3?=
 =?us-ascii?Q?eczsSxIPXpTOY1cjG48zHAWaw2jHU13KfPnzjfZKiqbMnEDZrQZPoDevVMoL?=
 =?us-ascii?Q?PuGhkHdQBRRYAohXmrhc2xdiBXAc5LtbEYf/32HEM3nnZVlzmTZe1U7l1pyM?=
 =?us-ascii?Q?MRHGSeM+lRUcFhjAkVo44LfgU2CyydDWUQ/chj2OSuFHeuoXH/Hn1J6yyllz?=
 =?us-ascii?Q?AJ/TKY3tgpMEU5p0dCqp5/Neiwb6zCk/aLiaUL0wNC1EBWSBuXhNQ5s9Ne11?=
 =?us-ascii?Q?PCClfvCbfo+W0xRNLe7dUD8M1D+s48FigCiRh4OYS08JN5bcIJdRJgUrJCLi?=
 =?us-ascii?Q?Dbau/LZ9GSoFChm2IOmTeygc8+l+8UtXQ97TIOTMUlYBeB8Dil7Q0dcKJ3jL?=
 =?us-ascii?Q?34Bf5Ds8uZPOUdwL+l8lu/yUAZYwcfcF0r8FcesGtoEPdo06s9ChxNJHSzYV?=
 =?us-ascii?Q?reUqQkj2ozu09GPpm6IcSIV5Wfr36V2ZkRm9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?isNGcjmR1+ss2sIvPUFwjcTYyxa+BjFnD4wnAglLZduFOBboxfX6SkvPt/ua?=
 =?us-ascii?Q?DjPyzAxFLx3Yr8n0ibJMzhXJpjZr06CsbuVnKCfS+DCDNtvYHCSanz2GT48o?=
 =?us-ascii?Q?gHfSW5F+mJtZy+ZHZ65UkNej8z9jMyVeQf7qjj6pqLTlzwKz44So6up5kjwl?=
 =?us-ascii?Q?6qVHQJDBchXSfL5wu7GbfL4ZABxQECU4APQrtpRnTYboIMLBCNd2f7ex9hQq?=
 =?us-ascii?Q?HFnR5bbeacdaKzUg9Cek/NXXzSU4/OppCZhEVnAtY0g/wWJ1YEFU2zQ6Egxu?=
 =?us-ascii?Q?XZNgJnht3VBQgVwgFkZM+LvBWGtI3EDUCkiNuagCSF5Ck6hd0RxbFVN0IQJO?=
 =?us-ascii?Q?MFSzpcXwQ+f8hO7pFOtrZ8UJscMZwMD8LiMjAfZRBC2wHpgWTPISQK3+9edx?=
 =?us-ascii?Q?dUfCcnPurBKbvH2T86TLwBH0LN07k3K1qgzSCZ/XEaSNqzb4iPTOcDGzbgcY?=
 =?us-ascii?Q?KSL7DVzTLtXxt3p/Jrt2Tul12fvBR0YtINNx50sFA+ILaJnHchAuTH/x4akK?=
 =?us-ascii?Q?h4WwpRuTFw/YdgNFJQMtfptGZRxfhLKPIDKf2+ayaa5afgTN/aXIL8h6D983?=
 =?us-ascii?Q?DGMmcYgBwfHFu6s4K+ImrNqQbG4JOTIpb1aS4QNvJD9PwUgUcdlWJ7l1N4Io?=
 =?us-ascii?Q?RuJCfMvSjXrsgtw0gA84BYSgVsgmCQNItxWa9eWyeIJPrUdHXpqGKS8W4Smw?=
 =?us-ascii?Q?d/AfYEGMV40brafLgJ+yVjex6aU53krJ/8y126xaGsXFAcg6ZAtd6q5xudho?=
 =?us-ascii?Q?ci5VKhjAOwA1Yc1NFNN7GcZMRctCPZHPdpzCkqwn5UYrxx020LsCYcXfK5II?=
 =?us-ascii?Q?lkgVWSsR4a98z61xZPAXVAek19Ye/QYtzVPc+mTIJVJwflfTRk1nH5vkBR6R?=
 =?us-ascii?Q?moInuRyQUiOY2OA9WZFRO1BvesaxXJClZPdXPIaazPtTIXN9k+xkT876iim6?=
 =?us-ascii?Q?+fTqYwhC1UQcvOrzfbh/6bEgq9E3LhIb0T52ztV+Kofvrp+uJyUaAW9Rf2+y?=
 =?us-ascii?Q?bGnviGIfprZRgI2TtP/mgHrjwYgeeaWWuS+LmRuuKefSilgYyvYjAHwnmgt1?=
 =?us-ascii?Q?xzaYPoQdfhg7LC34s9VOm46/bPklKEU2GkUxiB74DjSoVgbBE8GD8BZU0+Se?=
 =?us-ascii?Q?4M8tP8FOYc8Xkn2mhos1ranLVSwTrfh9+8rZFXcy6GNeeTSlRw7sov93z1Vi?=
 =?us-ascii?Q?D033CQ67RjPieVPi49JtM87fg1+5neRhlsSkCkNzIInnlT4A+sObSLJPj1a7?=
 =?us-ascii?Q?36rxdxWJ7Epuhwya86WnLTpBMOTMz1TxVrmnoQznvUdQlVcBDpq4lcDPhrwC?=
 =?us-ascii?Q?VTIf90jFUDiBMTu92EBfAA1U/onCMX3kEqEdcmoMGrGqRqrwjUQeNQhrg75Q?=
 =?us-ascii?Q?LIVqxJPnWPXXAwqva1Ps/Mhxvj8p1WyytuZ6NIpEc1AUSm0YtdsrzfQqkoZ+?=
 =?us-ascii?Q?s4T6oxwUzqfEHX9tlI0W6M2gy35ivWe7lXSiuRfP/hH8/IFlf2ETqrT0Go3J?=
 =?us-ascii?Q?qSsUitzgJuy6XwcgPcU3vS534xyzKPRW0ANExbzrRX1WMhjb/2EaVQmfFRlS?=
 =?us-ascii?Q?q400PYI7RYNPM4zb7y0R0xgW4AmU3qMThSg1VEDT0tJNX8EBj0ibgLet81b2?=
 =?us-ascii?Q?SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 761d5f06-ecc4-46b4-6ed1-08de389de2da
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 10:13:09.9837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WvuXkSydCwpCf46iMof/cqWd8SKgq9u6Z4w9R0zPzGG2TzTgB7uW8J0l+8QrPQTxQG7u/pUZLGLeyTB8jmZiDMx7kFyQbAUlcc3EzKF+f6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765447993; x=1796983993;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RRZytUy/bILONXOxgXeQNIm/Tl97L2Zyqs8YhB13LF8=;
 b=fCNxAnUa+nLh5bxlGpCfLv50wX3hPA/nQCuVEa5W0UM7GFo6A5w17WUK
 w1HJAbHSF/SOoU6uWjCfTeb8p47QOIMbOXdgQonwz1U2a9keLLiEyGpwW
 QGl1NQkX4pB4fow8IjX1XTp37hLLyEGq+ekViqvVgcMCuYHRYSuiC4+Up
 AqeI4pu71TT+08nxM+6dRd2dP4stpMiNrgweC4ItJbHEx7KWvHlRHILQ/
 FnyebHOdPgRY42QILsatU/ezSbyOn4kF0M7GbGEzUxUmkazNVn1kFS6Xe
 jVsW2eL7sERrtmqWXJZE4Mc94LXVQWsfKX+2vmpP3EOKn7Pu6EkCKQh63
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fCNxAnUa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: fix memory
 leaks in the ixgbe_recovery_probe() path
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
> Sent: Thursday, December 11, 2025 10:16 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; Simon Horman <horms@kernel.org>; Keller,
> Jacob E <jacob.e.keller@intel.com>; kohei@enjuk.org; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: fix memory
> leaks in the ixgbe_recovery_probe() path
>=20
> When ixgbe_recovery_probe() is invoked and this function fails,
> allocated resources in advance are not completely freed, because
> ixgbe_probe() returns ixgbe_recovery_probe() directly and
> ixgbe_recovery_probe() only frees partial resources, resulting in
> memory leaks including:
> - adapter->io_addr
> - adapter->jump_tables[0]
> - adapter->mac_table
> - adapter->rss_key
> - adapter->af_xdp_zc_qps
>=20
> The leaked MMIO region can be observed in /proc/vmallocinfo, and the
> remaining leaks are reported by kmemleak.
>=20
> Don't return ixgbe_recovery_probe() directly, and instead let
> ixgbe_probe() to clean up resources on failures.
>=20
> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery
> mode")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++++++----------
> -
>  1 file changed, 8 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 4af3b3e71ff1..85023bb4e5a5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11468,14 +11468,12 @@ static void ixgbe_set_fw_version(struct
> ixgbe_adapter *adapter)
>   */
>  static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)  {
> -	struct net_device *netdev =3D adapter->netdev;
>  	struct pci_dev *pdev =3D adapter->pdev;
>  	struct ixgbe_hw *hw =3D &adapter->hw;
> -	bool disable_dev;
>  	int err =3D -EIO;
>=20
>  	if (hw->mac.type !=3D ixgbe_mac_e610)
> -		goto clean_up_probe;
> +		return err;
You've removed the clean_up_probe: label and its cleanup code (free_netdev,=
 devlink_free, pci_release_mem_regions, pci_disable_device) without providi=
ng a proof that ixgbe_probe()'s error path correctly handles all these reso=
urces.
I'm afraid this patch may trade one leak for another, or cause double-free =
issues.


>=20
>  	ixgbe_get_hw_control(adapter);
>  	mutex_init(&hw->aci.lock);
> @@ -11507,13 +11505,6 @@ static int ixgbe_recovery_probe(struct
> ixgbe_adapter *adapter)
>  shutdown_aci:
>  	mutex_destroy(&adapter->hw.aci.lock);
>  	ixgbe_release_hw_control(adapter);
> -clean_up_probe:
> -	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-
> >state);
> -	free_netdev(netdev);
> -	devlink_free(adapter->devlink);
> -	pci_release_mem_regions(pdev);
> -	if (disable_dev)
> -		pci_disable_device(pdev);
>  	return err;
>  }
>=20
> @@ -11655,8 +11646,13 @@ static int ixgbe_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	if (err)
>  		goto err_sw_init;
>=20
> -	if (ixgbe_check_fw_error(adapter))
> -		return ixgbe_recovery_probe(adapter);
> +	if (ixgbe_check_fw_error(adapter)) {
> +		err =3D ixgbe_recovery_probe(adapter);
> +		if (err)
> +			goto err_sw_init;
The early return 0; on successful ixgbe_recovery_probe() bypasses the remai=
nder of ixgbe_probe().
The commit message doesn't explain what subsequent initialization steps (if=
 any) are intentionally skipped in recovery mode, or whether this is correc=
t behavior.

> +
> +		return 0;
> +	}
>=20
>  	if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610) {
>  		err =3D ixgbe_get_caps(&adapter->hw);
> --
> 2.52.0

