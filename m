Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE163C408E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 16:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA7C3848B3;
	Fri,  7 Nov 2025 15:13:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WByp1bCI2aci; Fri,  7 Nov 2025 15:13:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22F54848B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762528439;
	bh=zn6ykIuiC23AGOJGnAVBLb8uueN7HRnJ+p2idyj/iJg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hsM/ZAs5wzlIEFKEbeZC7wnk09rXfxvUjVBPHR8J1nGRUYvTRyYhEg7Se5GvJ/Aqc
	 fhHxfa+hGItk2MJqLkXfdZo+3E5F+F+rz1YaPOm4MwPxW8soMcMGxc0bqRbQcrdJ/n
	 sXVTZbqIfVuVQ4nJRaDoruEuxEGqBMK0T4cIdItoelYcUPMAztT8sanYdgqId8peDg
	 OpJdqKL6SZ7E9nivHuMmYKJWKM2I/rlxREz/6UslT4cxfPn+EPdm0mOyB3DpgWdMfx
	 0G1/fgwEs1tIXle0Tpjx1ZZ2HHPIulyuxOJyj7K50Uxm0c+no17Cjkqf7/V5cYJant
	 AcQgIYO4p9eZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22F54848B7;
	Fri,  7 Nov 2025 15:13:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47B731CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 15:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 253F7848AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 15:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Quk-8A9qYee for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 15:13:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5843B84679
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5843B84679
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5843B84679
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 15:13:55 +0000 (UTC)
X-CSE-ConnectionGUID: 2Uq3FTyvT2KBJgO2btSuqA==
X-CSE-MsgGUID: 28ZgpvqvTZyQh4JQt3fz4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="67290152"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="67290152"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 07:13:56 -0800
X-CSE-ConnectionGUID: jjwdrPjZS3OA522vd+XXbA==
X-CSE-MsgGUID: uDQLKTOyS1Waz9ZWRWcl+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188226191"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 07:13:56 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 07:13:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 07:13:55 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 07:13:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T0+zkHPWjT4gQpbUnVBxFyjK2zNdDjTMUQRjyZZu+SR6Svj4OoI+NOZ1+iN0mCjP0zm6/F8D9w1AWpSQPkdCyRyclb/tXevEiX77b1fASB3Blgcf72cBxhgO8m3mtBzMGIy30dPPM+B6pOuqKQFFwYI11OgvMDdk1AAnzxKXI7YGf+knBnY9MRGUnrpQiBZVfpzJ6lp0y61H9Yr5dSzTjQh/+hLYfGNl+AWwxeJag761DBh45N/MEXVaehJ87ooQoDsX05SEeOkhkehTDZDkxl4PhrPAhYvnt8XnXPeOnBeBNX6c3RT+HUu6C5HIZuRFjsJVSZ8fUVQ1maeckf12aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zn6ykIuiC23AGOJGnAVBLb8uueN7HRnJ+p2idyj/iJg=;
 b=E21+M9seoB51YvKI6dnt+4TNHL3o6tWNX3JTPxsCWXe8Ok2LntRrTkaWPWJcq+20MRhT6y8ftm6XrVOltVm+Y3OjZDfL0xoqN7nE3xNvXsC3eU9cdJoAWqsRpb7GWl1b6hnhqGwW35rNd9oW7ISnperu2tMuEPb2zjr2C/NKW9591ofNx7Dm9XJ270un3XqdSsSJkCi2S+VVV6sEztLZBfwtu7qzsONNye2sJnKZ0HqPk4Kgs2grRpPRMQooqVhi/HuAqEhACN2g1dyoLN7tDeBd7Vx6ESTRixsV2jq6ocflUi152tWioMQXKrMHayDDNsMsgmy6JpkEGFJ95s/JjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB4959.namprd11.prod.outlook.com (2603:10b6:a03:2de::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Fri, 7 Nov
 2025 15:13:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 15:13:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] iavf: clarify VLAN
 add/delete log messages and lower log level
Thread-Index: AQHcT/NDAAfRik4vVEuJRbl31SYiJbTnUZRg
Date: Fri, 7 Nov 2025 15:13:52 +0000
Message-ID: <IA3PR11MB8986E36158AC69F54885FF7AE5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251107143051.2610996-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20251107143051.2610996-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB4959:EE_
x-ms-office365-filtering-correlation-id: d7834c5a-5d33-42db-b04b-08de1e1042f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?y4a7ahjAf8IRPaqDAnnUtluv08scHorHNWNp23p05vaXVBl4JrfO6zd8RzPw?=
 =?us-ascii?Q?CXkh0fdc7kND3T2BWEzapNBLLi6QRH3oU5+WZSPOS048hHVdULYqv7o7kIgV?=
 =?us-ascii?Q?MLvyVfE8YYHK99OyIAW5EaXZaBBpUxLF3/40OUcDGegf8W4BA9bambsfxiV4?=
 =?us-ascii?Q?P4o0ztMXrSQYT7FI/TQHMdTgKxIzKMT2BRJyWK+5+J9XkEiYUGoexXX15e42?=
 =?us-ascii?Q?R4rWn8jxDmRQUAbiLaytMMlWTi0zirab0i7wK4rVhTu9rAoSdunXZhWFmMdJ?=
 =?us-ascii?Q?ffWwi8F59e8JBG7A2sxdNRwZ849JcpYdgvOZgFbymnrkAvTbsKzXyosdDYOa?=
 =?us-ascii?Q?Hmw1KY543h/3zvsdrfwKpnsp14OZwq19VutVcXUzH/ChOBf2nAMuqZnY9E4A?=
 =?us-ascii?Q?q1U0tsFGmHpbJi6jdsq7+KmjBmzfVp2Uydv4VNSZv19WtMW/lqN7rB8IZ6Bq?=
 =?us-ascii?Q?rANstlI93VpUmBkdRJvMGuqbP+n71fKGuuIPQdWafJisGCFa69v+bsoUpapv?=
 =?us-ascii?Q?rLNOffS+7L5yyJ4d58KEFnOAqK194lf+5HoLG/4VIIhFNW6xBnmmDxVBovj4?=
 =?us-ascii?Q?olcAHBkrg2ICly/bqtJb/nOOfbyUsIZMoW+IizdSQtsdsGCwMd/OTmOVgliQ?=
 =?us-ascii?Q?ucyx7fjXVcSGQlz5dZhyyfFkGmErr0FR/LiBRDPmLJwfb/JPVuK2BnRYcc9F?=
 =?us-ascii?Q?f0uCahhhJNugvi8DnayBf+Oj6mRSb0wI5E9Ut2wlKMlc8uaYXB/IeM1edZBq?=
 =?us-ascii?Q?X0qoe1sw23z22RSYbn5d7BcvzUMXRBLu5AHvvjtsh2DyZCWc0P2wrY5AbChG?=
 =?us-ascii?Q?N7n962CJLjatzr9CbVumJ/6ywEZP7FHGYr0gxtZ+KGzIbjdW94BfihTIsvMs?=
 =?us-ascii?Q?LyryabsICyFHbOVmMQqQ9Tjwy8iPMxLVhd/f/mSjdN5R6CH4qvL0KEQzuPNy?=
 =?us-ascii?Q?5wmKgTNhFQ9kVJ47Of7f/czxmqPcSZvAhNOCSVdjlxMf/osQBPmTR2qJjhIw?=
 =?us-ascii?Q?RSr8yF868hQU45WMzktp/lr7Oj0yAHkbupLGM6Qt646Q2pDkY8l0q/vMhzOV?=
 =?us-ascii?Q?+m2oROhtjC3/wp1UGp0r4v9i4tHBhB2UIJiqjaMjsLrZ2Fb91DbZ/Ru6qtgC?=
 =?us-ascii?Q?5TPsdC3vJ7CJ4iGhzNjqslCFaPxZ/tHNDiqSs3Z7sZAAHcq/mqzJ29SxmMnL?=
 =?us-ascii?Q?YW71gzKGXltJgixb73C87U6t7Q5fRlr1sG37nelcxYjXOnPOr6tAPoNH5ix5?=
 =?us-ascii?Q?C/6C1lPc9QYd1qnLcBBqL2yj8C3plCehWhzXfGZo/tErpfvjwCXJLO0jKgYu?=
 =?us-ascii?Q?fLqw82OGvG82Qg6KxrC8E/wwI4NrKFZ+zD/D5oOcM2N6YpyGtKXUdNqStOa3?=
 =?us-ascii?Q?f9P2HN7aj/g4nfwPZsg/8R+wQXvPAEeTD+d19Mkr08LmQHsOhi6vMxByqmTu?=
 =?us-ascii?Q?k/qN5Um6ZD2sHG9jvzT2EK+BxNxrOb85rOsEImLnB+DwCzE7DQZ0fpcORRMu?=
 =?us-ascii?Q?QEbbqxc+DaEYWKR08Mhg2TzqoRYnDSf8q80mWxdr6NAzK+8Ck7U4Q8DuRw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oZ3NehfETaSOdHszUSH9YT6e46L7THp5Wj/iPlCAnZCT1XWtUJoh0kb7D/Xp?=
 =?us-ascii?Q?ME7NroRru0zDPSGqovHkb3ABBLxp74O1eloLYnhFk+OLbU00VBxKinmtaWtM?=
 =?us-ascii?Q?Apo1Anq85Z9SwVbTCMpPQYoEIarK8Z2gBnoHPBwGjI+FJivBTOmxx+K65HHX?=
 =?us-ascii?Q?7DbuuQGV6wxXWUqd8w5QaoSOnv4y9WbqTGcsv8HO7t+ttqo88lAABGJHLmPh?=
 =?us-ascii?Q?WxXPR8gkzf1OcntfAZO3zSzgCiaUC8vbRKNTZupe8Z5Lexa29bJlaWaOMNa7?=
 =?us-ascii?Q?i5snDccwdeRCTugbIb6bsRmAXmncAAfR/oMg/PKzA2h/yU1uIvq7pz0FAoWh?=
 =?us-ascii?Q?6QMe39USOLH/63qYReCKz7H6e+bPEGRpIwHh9gHd6UNff00ePJdmGm9NpyFZ?=
 =?us-ascii?Q?eyn1v3qvDT/vo+8YvlM3eyRmIYGOyln+FsS+JjsWmAFCQcK7d8iBeXP7INWX?=
 =?us-ascii?Q?NBSiyAzQmKbHWLHIfl+XHf+LL5Bg+KWdB7S8UVs4K0h9zWFglUNHECmAge44?=
 =?us-ascii?Q?aO6PibRHfggxVP7OnvEt+vwfbu+VnVsHbUvxTTiINdgERiISwEa1rE9lPUa3?=
 =?us-ascii?Q?P2ueF0grQW2EgFLuV5CpqkQrwrEBqSNI8Ssy5n7D9AoLbAkGETlVN5TjHvtD?=
 =?us-ascii?Q?Wb/I38qSL9lIRRSdjgiyKv2EVZ0zR4lT14XwRirl6IW9Zvi5ne4wELT2qp+K?=
 =?us-ascii?Q?oLltt1V1EXMX9p0H9VeEDV+rzoB2GOxtO5YyfGEz+9201vtnmKv2am1XOCRd?=
 =?us-ascii?Q?xtMkhPXRlyKmB0SNMRbqmR0D7V2TleARE4ZtlZysXx6Et0oxzD/FfJx9c35S?=
 =?us-ascii?Q?3YT4XSpkoDL3n038CSp1Lz2DeGi25IwbQai4jNBsVOgu1H4V2nlnC+DFIMPN?=
 =?us-ascii?Q?hTzYyUUzzxIq/2UoX30bgb38zXGrPgrkYVYIKNqLk1dvnSADMt/etB42zJoZ?=
 =?us-ascii?Q?jLPVXiw414Ls3JnkwcWP9pcs97ZU9WdU/zSVLaOzv665EGMGc0PVx06qgeQW?=
 =?us-ascii?Q?gArVY6GH34Dh6n+++n7i5z48Ph1lpI1X6ZvzYSdNY/yt+QpFuk9j2INNoABS?=
 =?us-ascii?Q?GHD7BMhLawNBpoKOlheWn9nzOY8aultkVlDIHpACyvwOwkQ3jZ0zCpTGEsP5?=
 =?us-ascii?Q?Edc4rpWw3/qQHuurN4UXPBUy91rbdV5KJbEbO9AeHVJIHmg0sUnBtyx0m288?=
 =?us-ascii?Q?8TTMImPOKFtUAzBcL4BLmvZ4t8uMqUDd73UBU5Y8DLHXNBIQVzzpPgGz/s+0?=
 =?us-ascii?Q?1MGCfzdzTlIjfkGkmcugr+UwX5qyaWCbeFloZnmMnjEfbc6NNfZe11WrsYpB?=
 =?us-ascii?Q?x4kTtcwnsuFrDeYmqTUcTps6fpkb5nKJOdJ1DW6Kcju7l6UhxXhFXe7LGw/o?=
 =?us-ascii?Q?MwWLoAVsh1peH1v3Bg9WyZ+gLL0kYpQlhBdjvDML8Qmf2Ap4/YbHzF7vRxEr?=
 =?us-ascii?Q?CuaWxsHadmP+669jGNnCFUmQUc3sFYZ2WmNq/IX7DhAfXjd9C+5KcXKcv75i?=
 =?us-ascii?Q?Gh2rhdJqvoM54l0lMDCQGTnoBw11EgiXFrK1oMSsc/X7UW3GTHpLKAiwljDY?=
 =?us-ascii?Q?AxAY5RC8nbYnXei3akS6VMebtJARlefD/3mH3RnA8yS2XWAuoYjNEA5+P167?=
 =?us-ascii?Q?Eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7834c5a-5d33-42db-b04b-08de1e1042f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 15:13:52.4056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yJzmqoZ9GBpADsPDnRI6m7f5KErY5TY6o0gqC9Z8aw0shC6kJDnek7yTeGf+88SeuS3yhUSAQE1vnNa58KE78oArtqzWaEhXEZIQ5VevIKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762528436; x=1794064436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WJaMiPT/gulShthC2ldb3GOyeYBeF/x7ssvx7CvuLhM=;
 b=hJ8EGMXhJ3iL8yD0I0ye6dAsN9OKOYY9g9uCPWas2p2J2jeiufmcGd9E
 GjnV00lzJNwMvgv6iLSfi8bL9VRepqeIrokAu3m6kNG33wJ6fbavCgFmz
 39otEUSbacDMQlmWs/qntInzvX3yrxKyZS00lMQYvPihZu4JlBv5kV97S
 vkFEeTJ9GnH3lqtZO3/dAo0z8NouvTMj/ILyS6usXSSMc7vwELIOQaySo
 ciWEB+U3cTUX7h9BLNenOxUKckmJM0R9cM4lzEhZ9WFpW93PUIK/nLDmR
 Gwbq5onssCepj0nVrILD9dEUOtUxhfLT3hfUZ+RNud/oXcKajgR1JkPlO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hJ8EGMXh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] iavf: clarify VLAN
 add/delete log messages and lower log level
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
> Of Alok Tiwari
> Sent: Friday, November 7, 2025 3:30 PM
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com;
> horms@kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: clarify VLAN
> add/delete log messages and lower log level
>=20
> The current dev_warn messages for too many VLAN changes are confusing
> and one place incorrectly references "add" instead of "delete" VLANs
> due to copy-paste errors.
>=20
> - Use dev_info instead of dev_warn to lower the log level.
> - Rephrase the message to: "virtchnl: Too many VLAN [add|delete]
>   ([v1|v2]) requests; splitting into multiple messages to PF\n".
>=20
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v1 -> v2
> remove "\n" b/w message
> added vvfl and vvfl_v2 prefix
> v2 -> v3
> removed vvfl/vvfl_v2 prefix and using virtchnl:
> prefix and (v1/v2) in the sentence suggested by Alex.
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 34a422a4a29c..88156082a41d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>=20
>  		len =3D virtchnl_struct_size(vvfl, vlan_id, count);
>  		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN
> changes in one request\n");
> +			dev_info(&adapter->pdev->dev,
> +				 "virtchnl: Too many VLAN add (v1)
> requests; splitting into
> +multiple messages to PF\n");
>  			while (len > IAVF_MAX_AQ_BUF_SIZE)
>  				len =3D virtchnl_struct_size(vvfl, vlan_id,
>  							   --count);
> @@ -838,7 +839,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>=20
>  		len =3D virtchnl_struct_size(vvfl_v2, filters, count);
>  		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN
> changes in one request\n");
> +			dev_info(&adapter->pdev->dev,
> +				 "virtchnl: Too many VLAN add (v2)
> requests; splitting into
> +multiple messages to PF\n");
>  			while (len > IAVF_MAX_AQ_BUF_SIZE)
>  				len =3D virtchnl_struct_size(vvfl_v2,
> filters,
>  							   --count);
> @@ -941,7 +943,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>=20
>  		len =3D virtchnl_struct_size(vvfl, vlan_id, count);
>  		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many delete
> VLAN changes in one request\n");
> +			dev_info(&adapter->pdev->dev,
> +				 "virtchnl: Too many VLAN delete (v1)
> requests; splitting into
> +multiple messages to PF\n");
>  			while (len > IAVF_MAX_AQ_BUF_SIZE)
>  				len =3D virtchnl_struct_size(vvfl, vlan_id,
>  							   --count);
> @@ -987,7 +990,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>=20
>  		len =3D virtchnl_struct_size(vvfl_v2, filters, count);
>  		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN
> changes in one request\n");
> +			dev_info(&adapter->pdev->dev,
> +				 "virtchnl: Too many VLAN delete (v2)
> requests; splitting into
> +multiple messages to PF\n");
>  			while (len > IAVF_MAX_AQ_BUF_SIZE)
>  				len =3D virtchnl_struct_size(vvfl_v2,
> filters,
>  							   --count);
> --
> 2.50.1

I'd recommend try to use dev_info_ratelimited() to keeps operators informed=
 but protects dmesg from bursts;
But it's not a blocker.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
