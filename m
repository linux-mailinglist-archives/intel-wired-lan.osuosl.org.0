Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4L51J9Ep4WkfqAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 20:26:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 792B0413BA7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 20:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F290740A27;
	Thu, 16 Apr 2026 18:26:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BLKoCwFQ7Y5W; Thu, 16 Apr 2026 18:26:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AF3140A2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776363981;
	bh=FkEPJC42iQu7vd1yh8tApS/6WFFApd5AROYMJpSB1aA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rUwmxwhjyY+2z/B70yNhVVLXgwqIgIs0kjiujXfQIKlZqi6PWAStnhUbofMRxRY6J
	 0XkVa17MOKXp0IL7OIOPV4UCnJyZZ9MVbuAXSOnWWkAMEDvL8kQHpHWEDtzfafSpDj
	 Vrzlr3IfrOQiBIegA8HSrNwW2NMw6HE+BcjBAX7QIJrQGQ9xyRREQbp4xfzUEtalaQ
	 9aowE8QY8poNm+GCbdbNhj+dUVxKwNE1E/wzKBdMNMieTKVgxUzz823ceHZo3drk86
	 uv5yerdDv1iq0dkvGAbIX4rqGz5qpHav4zJrIxyt2wxvkvguNkFjjyMEwoaHWrTgwE
	 OQQw6k3YlMq/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AF3140A2A;
	Thu, 16 Apr 2026 18:26:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC12E2F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 18:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A1F6B80E79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 18:26:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6tIBc4h9Ti-a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 18:26:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 61CD880E6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61CD880E6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61CD880E6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 18:26:18 +0000 (UTC)
X-CSE-ConnectionGUID: d3TGqlvMQ1GQa5u3PlWVOg==
X-CSE-MsgGUID: +THoNWq6ShCG7tQCOHHDIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77389575"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77389575"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 11:26:17 -0700
X-CSE-ConnectionGUID: Ph91wpsHSd+cEV37+R/3sQ==
X-CSE-MsgGUID: mvifuXPbSuW4YybxO1wn1g==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 11:26:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 11:26:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 11:26:15 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 11:26:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VqOreyRlL1bGQZezBXk6WLb2s4aSdO90G99Ja9TO4vt34tgkwl0AdiDdABXFQqOdRLfSsnaYJuYKrkBOaAJ6u49m4hJboLyjq3HC35lLIE2S6sGPGP5Mwe9nRClbc43hXhJlxeOaeHQ+4KWPmDNQd7WrUEs2jW6nlinmbLYa20bXwV7p84isScw16zFVp/NA9tqLe2omcSP7iQTVsfh/TRM7nCiadxrN1QSgJskDfBD6dlsrOWVfKgWaYXZL1jykcS0Yb3NcLEkTeYiIMBA/D3qoTe+LTEpypOGUAolyvdhVZnAy7/uPD4vBdCl8LtfwmBPTswjK6NMNBQGrc1m8Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FkEPJC42iQu7vd1yh8tApS/6WFFApd5AROYMJpSB1aA=;
 b=dfZZTs/LpE5cooBvIPwzi5RGHtNi45PlX1Ylu2KcbjvtEYUvGnLjBkDGfvIUbxETA66cKKAgrLalvA5EI9FZoBNFJp0hOwG2J2NWLQSfti0kn/Z/IPBdpgT/D8ybWrD0ngyCAUicmJkbOalAwqFiJ5+Kw/TgA4DLCTY3N+KF+U3bEzDCCFfvKKRnn1Ky7GlsjAP/kLuBKBDlpC9L3J9tCC1sQqgbFTSZQ5kMzlkzL/R/83U0kzej6CPI1WG7nkafd9YTl1bGbmb0zUiC+krsKPqEHFlykReUHE3fL1hBMTBZFsSbDq4gEQzlj9QqTylr1VdAn0FY/OD73KRoZV+TcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 16 Apr
 2026 18:26:12 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 18:26:11 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Thread-Topic: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC DPLL
 type and full TX reference clock control for E825
Thread-Index: AQHcwvXix3hjxSFB2EyUhfJETBJtn7XS5QsAgAO7FYCAAOemgIAA3aQAgABojwCAA9gqAIACh5+AgADpDdCAAc5xgIAACEIQ
Date: Thu, 16 Apr 2026 18:26:11 +0000
Message-ID: <IA0PR11MB7378FF7BF4EA32C1F89372C19B232@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260414145835.07fbe355@kernel.org>
 <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260416082751.04782987@kernel.org>
In-Reply-To: <20260416082751.04782987@kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|CO1PR11MB5105:EE_
x-ms-office365-filtering-correlation-id: 19dd0332-4d5c-4534-0e6f-08de9be5a312
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: uWwvZhfWDHDGy8W4WboalTWRVglpjTQ3DZRM4t0kDjIjGF+UKxFJaaZKl6F+CAhv3g/y/HrvDzuDNZCyyxeayRjoLNeiHa9jemuIn/TewIXMJpv4Xh2IC2byRWGwhpblhABOJCpTZDwz1hlL8P9Axh7N2u55+oR30f3ScV08lR8/7mGURUlKywMCydimjJmEZrTbcfusorDEPtWoU6ziRY6R1c7VZfnJ2fPTiUt7QOYliTVpu903NLexjyGSXbrZSP0fj803bLsLKzOyFXliy5tyasZmTNgrzhAr9rC+PLSXdDfTVDHO7DqN7mi2Ba1QlH5zd/aR6fEzbEohQ9KQv2rjleMRdaHvHSJhcqfHdfLbB0RfYGxzdLnL61hhbkiHvswWWV7pFlSH0BSDf5WJFTrTYtM0uDmue0HBvaYRZwQTN8AtLBPJkpAfV0E5VM4b6MuU/i8xpt1uYNbd8tB0QilhV61sJ+/VqRxGA3/Mpq2A3BL4z5X1rauAJV8ge+tmO5HemeRvlsj3iWRgb+0wj+Z2NVWaza8ApyCHMI00N39zIZVAyBxbVFojaLGFFEpajzVIfkdGH7bGsWOehm9Kst4PjWuSRBW2u+6ivzJOeWjfVcBunIv5xaohfpouBN+gwhqCOdQugF2nsu5QIkJKje+egvQ7FFE9Yf3ZeI0CJASyoLX2AfaOB7Q5h8QEFQCxeRbblxop1suJHjNknYVlkN9neOds9GeNoUNZ2DfNQ6G7Yc6Q/m3FYmiyuzTswcRGSDKs/ZO5+varc1dfV3pOnWf3Iuh+7o1mgKjxCMbjs9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/ULh7sf/xB3bjVPyWK03PVng5eMTT7ecJDDkcm5u8eryzTNfeGfeGyqCmUef?=
 =?us-ascii?Q?p5mEm8YBwqBJOWIXFUM1WjWSjjBV0zqjeG9zFrtRktXXGR9LlGaU76Am8EPB?=
 =?us-ascii?Q?VJqLdz81TKqIwGkrH0nLDaJjM8hfwCltlvXEeVeKKgY71z5avh1+ssXFS/1d?=
 =?us-ascii?Q?45+3KpxEBkU/Ltu9kVyafnC4GTXEZNdp3xMTezWNEm2I074yxh4QoNVm0JlV?=
 =?us-ascii?Q?MqsQyaxUdo55Vf1seOa0S2v35Gn6t5TMBOBdhHSnpeOx1x6QFp22Za34qpBU?=
 =?us-ascii?Q?chHv3rY+lpXNjJzYw2e91k6pZymrTOksR8UfUT3uiZR3Ntnf37YHHdK1MiwD?=
 =?us-ascii?Q?3jUCyHaNOatqZ4KGwPrYnSRDAI/qg9gXhESz8E8GzQKja6ejGfd8JgXDSwW4?=
 =?us-ascii?Q?nkKBrwbimHFDXjHpmZ88quuuohLdVd3G2kdys6FhE6kRW6mPsMwJ4orzvHEr?=
 =?us-ascii?Q?on5NFIccLUP6z43jlBzRnd+C0tBOqt912qM0ircq2VTN7D0XFxxzPgrCw9lA?=
 =?us-ascii?Q?Bnl9g+Yl6g8F9oY8QmC3g+clT9OIzL0DOBqIRnKEZ9la2UTrOg0QgMDNbcK+?=
 =?us-ascii?Q?yZdJuAukZqfIxiUvFjNJxs+cZO0K5xQ30bfYYaBgZk9LgwX+zpt72fLwtvuQ?=
 =?us-ascii?Q?GKmCYPNlNU43I7QggYnEhNqio0mrk5c0KO3cks59abjDI5n8y7NBmZZ4oh3x?=
 =?us-ascii?Q?ZHfzq5qFwpkyXTajNffC3nq5RTgbMxEcGV8mJyCOget+KpDZy5t+y+CjxnhP?=
 =?us-ascii?Q?n6Hqu333gtszjaq3yLh1wMz3S0INfD2EpFs0rtlPMRdqO918wfpy1EGrFx+X?=
 =?us-ascii?Q?izRTIbnT5FHvSiyaejRK7BBEzkupS8SkyqkaxuxHvurgmXpV8DOuUO5wls5u?=
 =?us-ascii?Q?kZdsnyIRahM6pJMBnl+iSPnqtZswmr28W/OLmaxcuBuv5oIYRG4e70V5fBaP?=
 =?us-ascii?Q?fW1i2RKYhYKvhwyhWCbdjf9Hw6JTZnRV2se3zVuoVUNgqlrc9k3L49E4LojV?=
 =?us-ascii?Q?pbthYBqY6vlm+NbkZGW38mhk3SK3JWGt9e7PF5EtjMM1KwLR4hsRg/e8PWpz?=
 =?us-ascii?Q?o21fT7K7jsOfR0lFD1Hlx6TIzjfu0AAQ0mwRTLTRdVdsfetBsx9vG1K0wTLB?=
 =?us-ascii?Q?M1o/AEcT/PoCQ9jRMUkurJYcv9c9W70MQhe/AHRFAX9a7tUy2oJIpH4ptXli?=
 =?us-ascii?Q?pvxR6U5kIYgP6O2CejXE81qhBlQKplm5DPnZwxiYuB3Ags098Nq2x9X8wD+4?=
 =?us-ascii?Q?visabwlVe59oZOk52B3u/ET1TjIW7kqLgHnMpKlf3340hZIvsXPVaRNi1jjn?=
 =?us-ascii?Q?R+6EHIyEZtlkUsBle2z6CZznBAs8PLEL7vObHbo+GXT2VGvhrcmFw2jl2I9l?=
 =?us-ascii?Q?2ErwtvV0Cn7/eLzitdeO/TXnk+qjmE/Lput7oM2Hn9lRjXi2G8k8Pa0OAGZw?=
 =?us-ascii?Q?y1q6LrD5HFmqkq6nzuFbkaAr1WZ6lu74xU5pRQTIz2xjmEGTLiKN7IWhBA3E?=
 =?us-ascii?Q?YTbFVDqgZRGJGrhalBgX+0vtQA1TLtwj2psAiNvxG3n6XdItTI+fEYarhun3?=
 =?us-ascii?Q?4HwUmnbNgskod3sAe/ij7sNx9wSbjfhGWSnGehWmzZBUFxygB9a7c1A2N9NO?=
 =?us-ascii?Q?cIkNrV/9gnhZBTCFb32jiwrm7KbU+gtRMfWwJly7vbVigyc3MS8+zX5qYPnQ?=
 =?us-ascii?Q?uy1GlBusFc9iWcpL929OliySP0YTZDkCRVY+QW9Tonk0NpDvw05Xwnrg3oMt?=
 =?us-ascii?Q?iguX9gbwb95Ub1QYt+w89QorIyEKiVU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Yblv2P/Je5ewgDQ/7Bvs0qXpSLFUbLdsvz2c5i8hQsrbU6vtf+GM7MA0sW05RImzvoxhrAKTyMInvw+gib646C8NhYdRcfy3RInGMPGVOXireU2uZ4Ua2BMrosh0PzUSIYKVQ34a+1RyGWzD99ds/oZtQJTcrHA2w4zE444p2c9d7tNjN++/dyoK1L7pCKUJqaF40KTFw0oBWxxm81vc5cAS2TzWIUto9zBGtjLxzICfzqdc2mlhrVZo0168qWGRM/RUMFkjEmfqJT66t7Coo3qKzekExRavYtd07QZSFiQXm/A+xyXTtSSCCX303QMP5829s+pBbWsCGSlMEE/bfg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19dd0332-4d5c-4534-0e6f-08de9be5a312
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 18:26:11.8196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKj9vpQNfZVOn9iN+EXESdI6NzqjkBQxOifsRZbM9wPQQMyfCJUQyW7FXaaB1HK895K2zlMSbLRQqZKcnDOsGH+2dJM9sJOiSeARduUtMlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776363978; x=1807899978;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FkEPJC42iQu7vd1yh8tApS/6WFFApd5AROYMJpSB1aA=;
 b=ONzsQsfkXoNUcE8N2DC/7JlyFFNhgTjRtT016LNJc2znpskkLonis3yU
 coSpU3EIeKBxCQAJ+0bAdoC2agOxLfMtnJ1sVvPzdhLGxg2bnhzhdLcMM
 NACEHim4Zyr3d1OTBbKSWwSU4jfZNSDjRRNLAbeXldD3YHwkFMmfROD+y
 m+oKXxrkjH/ZiXmhejOC9VmwJrycCh4kqE6gbnEYXW/8gyu1lv00BIq6p
 KGOUY3/1BCqFbRhTO+ZPIqn5GZMztvh70PkDLAhn2Om82Unl4hsbMT2bY
 muAHlM2qS0VxJUbHzqDOkEKVTgaXNml8gVtVNf2aODh4TZUKYk+yUN0ER
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ONzsQsfk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 792B0413BA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Jakub Kicinski
>Sent: Thursday, April 16, 2026 5:28 PM
>
>On Wed, 15 Apr 2026 13:23:22 +0000 Kubalewski, Arkadiusz wrote:
>> >> Well, the true is that we did not anticipated per-port control of the
>> >> TX clock source, as a single DPLL device could drive multiple of
>> >> such.
>> >>
>> >> This is not true, that we pretend there is a second PLL - there is a
>> >> PLL on each TX clock, maybe not a full DPLL, but still the loop with
>> >> a control over it's sources is there and it has the same 2 external
>> >> sources + default XO.
>> >
>> >Don't we put that MAC PLL into bypass mode if we feed a clock from
>> >the EEC DPLL?
>>
>> This HW doesn't use EEC DPLL signal to feed MAC clock, as DPLL is
>> external from NIC point of view. Only 2 signals from such external DPLL
>> device are used by NIC:
>> - synce (a single source for all those TXC per-port DPLL device)
>> - time_ref (a source for the TS_PLL - which drives PTP timer)
>
>No bypass? The PLL is actually in the loop? oof, this is beyond
>my understanding of clocks and signals :S
>

TBH, I am not entirely sure what do you mean with MAC PLL into bypass
mode, but the HW description I have provided is still true, the MAC is
not fed with any DPLL provided signal here. Only port tx clocks PLLs and
a timer PLL can use those.

>> >> A mentioned try of adding per port MUX-type pin, just to give some
>> >> control
>> >> to the user, is where we wanted to simplify things, but in the end
>> >> the
>> >> API
>> >> would have to be modified in significant way, various paths related
>> >> to
>> >> pin
>> >> registration and keeping correct references, just to make working
>> >> case
>> >> for the pin_on_pin_register and it's internals. We decided that the
>> >> burden
>> >> and impact for existing design was to high.
>> >>
>> >> And that is why the TXC approach emerged, the change of DPLL is
>> >> minimal,
>> >> The model is still correct from user perspective, SyncE SW controller
>> >> shall
>> >> anticipate possibility that per-port TXC dpll is there
>> >
>> >We are starting to push into what was previously the domain of
>> >drivers/clk, tho. IIUC the "ASIC PLL"s are usually integrated with
>> >clock dividers. And cannot be "configured" after chip init / async
>> >reset (which is why I presume you whack a reset in patch 7?).
>>
>> Well, we need CGU-dividers change for a frequency-compliance with lower
>> link speeds, the link reset which is required as part of tx-clk switch
>> and link establishment on a new clock.
>>
>> >
>> >> This particular device and driver doesn't implement any EEC-type DPLL
>> >> device, the one could think that we can just change the type here and
>> >> use
>> >> EEC type instead of new one TXC - since we share pins from external
>> >> dpll
>> >> driver, which is EEC type, and our DPLL device would have different
>> >> clock_id
>> >> and module. But, further designs, where a single NIC is having
>> >> control
>> >> over
>> >> both a EEC DPLL and ability to control each source per-port this
>> >> would
>> >> be
>> >> problematic. At least one NIC Port driver would have to have 2 EEC-
>> >> type
>> >> DPLLs
>> >> leaving user with extra confusion.
>> >
>> >The distinction between TXC and EEC dpll is confusing.
>> >I thought EEC one _was_supposed_to_ drive the Tx clock?
>> >What PPS means is obvious, what EEC means if not driving Tx clock is
>> >unclear to me..
>> >
>>
>> Yes, correct, EEC DPLL main task would be to drive TX clocks of NIC
>> ports, but if there is a per-port control something extra is required.
>>
>> >Let me summarize my concerns - we need to navigate the split between
>> >drivers/clk and dpll. We need a distinction on what goes where, because
>> >every ASIC has a bunch of PLLs which until now have been controlled by
>> >device tree (if at all). If the main question we want to answer is
>> >"which clock ref is used to drive internal clock" all we need is a MUX.
>> >If we want to make dpll cover also ASIC PLLs for platforms without
>> >device tree we need a more generic name than TXC, IMHO.
>>
>> Well, 'floating' MUX type pin not connected to any dpll would require a
>> lot of additional implementations, just to allow source selection, as we
>> have tried it already.
>>
>> Wouldn't more generic name cause a DPLL purpose problem?
>
>The old proposal in netdev family was to to have source selection
>without creating a real mux. Not saying I'm dead set on that direction.
>

Yes, correct, it kept the list of dpll pins valid for source selection of
tx clock within the netdev and control over it through RT netlink.
That solution was rather simple but you requested to hack into dpll so we
did here.

IMHO this is cleanest and simplest solution we could find to keep it
within DPLL subsystem.

>> We still want to make sure that given DPLL device would serve the role
>> of source selection for particular port where a source pin should be an
>> output either on EEC dpll or some external signal generator but somehow
>> related to SyncE or similar solutions.
>
>Right, but adding a new "type" per location of the PLL (especially if
>we lean into covering any ASIC PLL) may not scale, and opens us up to
>"vendor X calls it Y" and "in design A clock is fed by pll type X and
>in design B by type Y".
>

I was thinking that this is more like a purpose specific DPLL device, if
someone would want something similar we would have to review it, right?

>IIUC you do provide "linking" of the pins? netdev will have the MAC pin
>assigned. Is the pin that connects the PLLs also annotated so that user
>knows what's on the "other side"? Maybe the topology would be clear
>enough from just that, and we don't have to add a TXC type.
>Call the PLL "integrated" or something generic. User should be able to
>trace the path of the signals?

It depends, TX clock has one of external pins connected to external DPLL,
but second is a board-level pin with ability to provide some external
clock signal, the user would have to determine that purpose just based
on the topology of one of the pins, which seems a bit problematic?
I.e. if at some point there would be HW with only external non-DPLL
connected pins?

I mean 'generic' type is something we could do, but as already mentioned,
thought that we want a DPLL types specified/designed for some particular
functions/tasks.=20

Thank you!
Arkadiusz
