Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ++rLF3kWNGqVOAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 18:02:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E396A16AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 18:01:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=SLyPlYWD;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E99684347;
	Thu, 18 Jun 2026 16:01:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6yfHNtY1mReV; Thu, 18 Jun 2026 16:01:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8907184311
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781798509;
	bh=dHVtZALCGvNSCUakVhfQM0cbBgJ0ek74REBvrfMCWNE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SLyPlYWD9x0UghTn14WbEYfd2Fx8Xm9NrQFcbxkXItt/LrG4TgQl6qwinzb7m0wUa
	 rR/JC7nswukVXeKX9Vch6WgjaStp0sCpM756NB5gF1L5TSKYOPKS3SUVV4Qpe5+x3O
	 5Sxtk78RdPBxVZSlY188aAhK/bUe2KelfaPKgFF9r7421mv8fF52BOfkXEiL1syBZV
	 9fa8Iu/kD3tmBOd/L7CKR5WuWIhAwBl6sppBNW/vGcOXvj962ytLeqp3+bc/bIq7iQ
	 58G2hSgzIetCthUWnmhJFVEO+WomlMm1s0R86RYRpNtNk4YMlZ/iejSQXYxTIN472d
	 DmXlaa1Ydeh/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8907184311;
	Thu, 18 Jun 2026 16:01:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCDBE2BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 16:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A269241188
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 16:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wdovUbMVDe0f for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 16:01:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 51CFF40D69
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51CFF40D69
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51CFF40D69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 16:01:46 +0000 (UTC)
X-CSE-ConnectionGUID: Y0Zi1XMVRJmpvEiMHhhXlw==
X-CSE-MsgGUID: hNBHDFX4QVaLHYDWibawnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="81748600"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="81748600"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 09:01:42 -0700
X-CSE-ConnectionGUID: flJlDpRYQ4KckdEFK/TkYA==
X-CSE-MsgGUID: C/A1OnQoQJe2xrxl9Bt1hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="253495516"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 09:01:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 09:01:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 09:01:39 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 09:01:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CliSBW0ZCtg+ZvjNo18qqWs0/oh2AgJNmzVeVU76njystUAClBBz6LojQh4yReeOlh99eqho8Hw0smy25IRGc3IJUj/cuxp6uK2vT6H8YU7IML/wYNBB87Cwvs6i4axuq8nOzXw+VTPm8OwfBcICVecH8AwqH2NaZBtExOwwWRoFdNAQoW34JSj2j3MhF5TunXO5eo4HUgBqPzS6JpfmeL5rzL33rJch9eLSwDMu/0U8KQOkUyetH/tr4rDZV7qBYvaSrIsXRzXVJrkhFPn3dFxXFACyo376kNp1mB3I++BcjQDGKndnCbtpIsxqa2fzkTS8JcBvyYIQw3ofToxJOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHVtZALCGvNSCUakVhfQM0cbBgJ0ek74REBvrfMCWNE=;
 b=KsMHrAwxsTJezS/LiOrwYsdCcu5jdPWvnD4RjBBPGM6nMWQdD8C2QTZMnxg8pUYCM1EJqF5pOHELrYeLyCMwR3S2EAe6TYJRNee2UNmvF623w1JZma2lxkmIpGGAZrhuE1cv1Dom5XzMgSnxjejcMGl57LlqRWukPg0WonbsA5n47G65E1IntQGdbX8trJE+5bVev2LB99Tr+QjsMCn3GwtniScGsCjF4CCkxGxA3n/GZW/bz/e7yR45Ow8jF59Brjc0wg55TKnt/0zA6P3H2Vsqp0QJOuu+30e8+fViK9ASSm2NOx1ej0lH7TvCp3Suy1YzLnZhBI7SqDD17iWC3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF6E320AF71.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::833) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 16:01:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Thu, 18 Jun 2026
 16:01:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, Alice Michael
 <alice.michael@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: skip per-VLAN promisc
 rules when default VSI Rx rule is set
Thread-Index: AQHc/zSIJRSlA1s9d0OdhLvAVql0gLZEeObQ
Date: Thu, 18 Jun 2026 16:01:32 +0000
Message-ID: <IA3PR11MB8986E1B0F3435739A817F42CE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1781786935.git.poros@redhat.com>
 <89efbea9831175e6f57e9fe8557f7a0e48e050b7.1781786935.git.poros@redhat.com>
In-Reply-To: <89efbea9831175e6f57e9fe8557f7a0e48e050b7.1781786935.git.poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF6E320AF71:EE_
x-ms-office365-filtering-correlation-id: a7cfdcd3-ba47-40a4-a58f-08decd52dde2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|7416014|38070700021|22082099003|11063799006|56012099006|18002099003|6133799003|5023799004|4143699003;
x-microsoft-antispam-message-info: fCX7hMCBrztjliLd72Ac/KCiswEeOFAbv/VzLg5hNIczY/ELl6VR+M9uIvorXiXZZ4WmuLCawMxCuVufv6LuQT5sz7CBPlbWw8Jvz28MNLJb2MS0XogOFkZnoUDgFctxOdQFHAw+wvbIizGx44OKqYZZKpMM6YBS2zNThHSDl56KomvoPW5JkFYVLJrQLphBWWuLqjr3eT8N8VFR4hBFqPYMEJYVIxKcuDDtqc9hPS3AG0Y8X3HAI3REF0AxzJ/KOswrRmq2Cs/Sax93TIYFlE8X3gSZkL0pklW7B0QDYqwCjihHFLQYyIs/S1ozl1uqDgUBYMGkN1nqYm2Je28xwWrayuuBzJRmi1U2dgldYaTqb+O+G97Lz6113RxqmvSs6TNybYaulEhMTwMcZIPELrAYL4eLC5p3Rvw+aQ5N3XgkD2kGogzSjpUUdFEwQR1fZ6wMFL6d34bXEf2O+w0T+eCuwAcXCmZcd7yqlEohYZQvjvSquUODsMgR7O28Nd1czuVvlvhBeGMEMGVY3dzvZrfhHPg8LRvcsfy5QD8v+LeJUHNCChUZB9stGPSWuHhqUL/YwNwt24Ak75kry0DVtjDIGeymi5C3YrqvtVuhnOYdxsvm/U1fZor57YWT4cXm7Ib1LIQDmOk8IhcEGlWphr0N58PPxn6Va6XTRJxVXhZWiuj96DCDTduaialULFnE6X+l5WZ5eP9YDlyoXI4Kn0SeyQQmsGnEZGxiHm7xhPerm1/28ZuGOHUGkjz9UZAU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(7416014)(38070700021)(22082099003)(11063799006)(56012099006)(18002099003)(6133799003)(5023799004)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l/qp9kwDd1mI7whnFffcwXqAe2uoOCVuRAFLBNKiWVccTN0ZXc6KQcQPoPg+?=
 =?us-ascii?Q?YwE8eAAOzH0e3h7msogeLMbNBfarwZ8n1CwACK16rDWZ2+R55d6+dWe7Bt20?=
 =?us-ascii?Q?rjZIkjEtqc/fhEiAeTUZU2pq7crr2tX7BYsCjej0dsC03nWqS1Q2llBEMawU?=
 =?us-ascii?Q?t4QLDbTzH+Lp7psdySdq7Rhv5tAGB+9GiPjHNq8A0Y39egqh4pfhsyo75MhW?=
 =?us-ascii?Q?C+YheBfa925J4090bHexxycEk4Ct470zrKa65jji5VtJ9QfZuYO9itpmyU/u?=
 =?us-ascii?Q?S2/AExq1shxAmW8K/rGqLB+vnkLWC1Sn5J+KBdLnPhqi1cFKRNZ3lSelY4Yi?=
 =?us-ascii?Q?CvbPD4pNVY27yqhjfmhuwjv9rmxv0P0xCXA2rBiJ5WNzRQpDsSxmywPMy3Qc?=
 =?us-ascii?Q?tAiJFWJmW0JWq9oDcKWVgzijB3gDyWBW7qinMnJGUwmM9fgEpd8OvJeFvVnZ?=
 =?us-ascii?Q?dDpKkRLuiOep0ntbGHfIwCgn0ndzUSZv1Z/Ss3zgDtdhuGc52FX0qtuco3CR?=
 =?us-ascii?Q?kBc3Z0Awf0cIgvHbvD0UK1xxBGAX/XOYmaoJT96ZXOILAAVqXmnc0OtkYt23?=
 =?us-ascii?Q?7IAEC8Mn8A/MGp5/08qxknqzvlKzTD5fCjIETxlPAFM7VmDo2qmCsDY5xcST?=
 =?us-ascii?Q?M5pdLsP+BFu0bMRqtEJbaSjuJi0VWvrqxHZdYsjj5RGHdnMJ/sELN8pUbgkD?=
 =?us-ascii?Q?kKRiJyO5EbqKFfE/021G57n1EBXM8E9XTT2E222QzKf/uI/KSslRi7hIsbI8?=
 =?us-ascii?Q?5cow3KH9Gua7N4jfosnl6TLldYKUdl/2V1nVVBZXyXje5J/dg1itIMincu3J?=
 =?us-ascii?Q?vjOSZAjut/53ec6X7h4JuFN/seC7uMefa9GkIGeQW0psNeo8W20MvUCJkKoG?=
 =?us-ascii?Q?8pKN0TTz2CZgK6/KzOPnLzQwbgLdeINJ7KehYk2sITKdDFCkIisQ7m6XVWo7?=
 =?us-ascii?Q?PiwwmsIF4C2RXI32Mhk9XYcfZhx9bzcVzziYhnjfhNGHCK7bwFWdhZMhO6uC?=
 =?us-ascii?Q?4II0+iqiCHfUuOeDEw37dKecw8tRF8ONcCTR07c4490OHHsohAZ7I5URgWAl?=
 =?us-ascii?Q?TlHciqK751BmSERRa5N1YE2m+qMRkp+WA/cLv9vnvtQp1D75u9r/vcg7iymD?=
 =?us-ascii?Q?yLgjxbzgJcGFUD9pt9Tq5jFSe1aDKHw74w+dKgQDy8x2GVNvZ1Q4nKm5krtP?=
 =?us-ascii?Q?YIQPr1K8R6cldWEizIpwTTwizp9JRFjQTPTD8MmACqmXmA+iFGoZf38iDAQW?=
 =?us-ascii?Q?RNd4itpVZx24Yr0A4gaBSJJ5ofEDUd5sna5k7VC8Mb+OveVvMZsisu2p6OtT?=
 =?us-ascii?Q?3EmcAsUf+Cdw4SR25huH3ycDjcmYpDQ9kLW/0umAXfYAXajb9iedEfVhR++c?=
 =?us-ascii?Q?ZP1JAXQamPArMxv7qxWv5JzNwmhuzYCvHeAv+beJuzTWRX7HPWd44/2P2laK?=
 =?us-ascii?Q?hWMuXVFc7/vlIheSG7hW7YCEWdKeatHvzyv09B+qiSML6svCeoRJAaOx8GGn?=
 =?us-ascii?Q?pl8pUB6e+t4gcyFuXzggOfs+0ZIZf3g/KIrIXhbrcSlU4YcHBsiT4ZglvFRy?=
 =?us-ascii?Q?Em1cpytDaa4krwV68WdCG4iKBJvoG6DAgEADcBIryi8kLf7AWnGe9mLu6VX6?=
 =?us-ascii?Q?x7JaoyfTFzdNzFiaxq83A4ijtk+eQzhsVAAhnOuoNi+IkcgRbfCv3wtmHVAo?=
 =?us-ascii?Q?1+lG2383nzMCiVE0vFG4s28v7PARYnUT4uswG0c3iNYLTtD7IvrMUEVn5Ugm?=
 =?us-ascii?Q?A1pjYlyO0/UAxNDugXTe4GfkBLt5iQM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bXSXYD5u2KYGUjj1kj8RjVCTrZvq+zGNY49TVkRek/LEK/gQ5f96I3EN11z/o9p4tuKMcq/KP1xfhGoLxwQFOGTbx4rT8fAG2RXonLwS3/M0YDWPyxaqEXpXZkz7M9S0xCeAgWD6oSemt/q+Nlb97yEG787hMh+WRAtDUB1jXsReBlfybsh5XFfNOF/GVaykbGZj+aTzkrfYl3euVqFtE+RNwyHuuIG/kH8/DuysgyFb1/6raoJqou5i1wBJZwHJvpoycwWbE8z29nNE0O0xAg6Uvdt00wuwg7hWlmAUiCjD0YoixaA44VvmVb0LAEqXc95DJMveKMrNFpae3nWTuw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7cfdcd3-ba47-40a4-a58f-08decd52dde2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 16:01:32.6789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mk2rExlo92ahVxR9VJQsLBxFBZA7HrOnkzvSTU1wnldgiBRGo3Fh9de7bhPOFXdXsqlABS3Z9xM4Q6bry3YUbbB21pVZ4pxR31fBQTomzSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF6E320AF71
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781798506; x=1813334506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k0SB6eUt0SMVrNg5W6H/gf1LI1FstQPK7I/hhg8VxRg=;
 b=ekFSUh5CMQnpxg6poitVEYqRM55WbpouAcM/w2Iz9EJILFcvAjATSbaQ
 RBsaXoe3lHXhSTGsed+f+x/svC45hSFbAjo7qoxbBZQRxc+xzxgNsfyF4
 6DG1IuldZEzRiSRmLONNnWbm9LryNO2jZPvijGI7o6CGaYa9dQLpJ1wn9
 lIC/cVgTr59EJrJHQMhg2K+T9N3sKcYRl4NbLNU+Exgen/iVJYdcE402z
 7+IgV3D5m+YN3/2tqL4rcWbFQpVUnqRvmRU0RTL1fXhH17hmg8lc8l0fS
 oGhAgPDv5417WFzjpAesQmAGos1pvnJeJEwehQzcC0Pxo7a6JLg5IIHp+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ekFSUh5C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: skip per-VLAN
 promisc rules when default VSI Rx rule is set
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN_FAIL(0.00)[8.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[linux-kernel.vger.kernel.org:server fail,aleksandr.loktionov.intel.com:query timed out];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 03E396A16AE



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Thursday, June 18, 2026 5:09 PM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Alice Michael
> <alice.michael@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
> linux-kernel@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
> intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: skip per-VLAN
> promisc rules when default VSI Rx rule is set
>=20
> When an ice port is part of a vlan-filtering bridge with a wide VLAN
> trunk and the netdev is in IFF_PROMISC (typical for bond slaves
> attached to a bridge), the driver installs per-VLAN
> ICE_SW_LKUP_PROMISC_VLAN entries (recipe 9) in addition to the broad
> ICE_SW_LKUP_DFLT VSI Rx rule (recipe 5). Each per-VLAN rule consumes
> one Flow Lookup Unit (FLU) entry from a fixed hardware pool of "up to
> 32K FLU entries" per device, documented in the E810 datasheet
> (613875-009 section 7.8.10, Table 7-18, page 1015).
>=20
> With three active PFs sharing one switch context and a bridge trunk of
> vid 2-4094, the configuration would require roughly
>=20
>   3 PFs * 4093 VLANs * 3 rules per VLAN per PF ~=3D 36,800 rules
>=20
> which exceeds the 32K FLU budget. Firmware then responds to further
> Add Switch Rules requests with AQ retval 0x10 (LIBIE_AQ_RC_ENOSPC) and
> the user-visible failure surfaces as
>=20
>   ice 0000:5c:00.1: Failed to set VSI 14 as the default forwarding
>                     VSI, error -5
>   ice 0000:5c:00.1 ens1f1: Error -5 setting default VSI 14 Rx rule
>=20
> After a switch context has been driven into overrun, subsequent
> retries can come back as AQ retval 0x2 (LIBIE_AQ_RC_ENOENT), which has
> misled triage attempts toward a perceived recipe binding defect rather
> than a capacity issue.
>=20
> When the DFLT VSI Rx rule is in place it catches every packet on the
> lport regardless of VLAN tag, so the per-VLAN PROMISC_VLAN expansion
> is redundant. The recipe 4 VLAN prune entries are still installed per
> VLAN and continue to track the allowed VID set, but the IFF_PROMISC
> sync path disables their enforcement on the VSI via
> vlan_ops->dis_rx_filtering() before ice_set_promisc() runs.
> ena_rx_filtering() is restored when IFF_PROMISC is cleared.
>=20
> Skip the per-VLAN expansion at the two call sites that drive it:
> ice_set_promisc() falls through to ice_fltr_set_vsi_promisc() and
> ice_vlan_rx_add_vid() omits the per-VLAN ICE_MCAST_VLAN_PROMISC_BITS
> add. Plain IFF_ALLMULTI without an installed DFLT VSI rule is
> unchanged and still installs per-VLAN multicast promisc rules.
>=20
> Both checks use ice_is_vsi_dflt_vsi() which inspects the recipe filter
> list for an installed DFLT rule on this VSI, not
> netdev->flags & IFF_PROMISC. The HW-state predicate avoids two
> regression vectors that a user-intent predicate would introduce:
>=20
> 1. ice_lag_is_switchdev_running() short-circuits ice_set_dflt_vsi()
>    to return 0 without installing the DFLT rule for a PF in
>    switchdev LAG mode. An IFF_PROMISC-only check would also
>    suppress the per-VLAN fallback, leaving the PF with no rule.
>=20
> 2. When ice_set_dflt_vsi() returns a non-EEXIST error (FLU
>    exhausted, switch context divergence), the driver clears
>    IFF_PROMISC from vsi->current_netdev_flags but the netdev's own
>    flags retain IFF_PROMISC. The user-intent predicate would still
>    suppress the per-VLAN fallback even though DFLT failed to
>    install.
>=20
> The predicate is install-time only. The IFF_PROMISC off path closes
> the lifecycle gap in ice_vsi_exit_dflt_promisc(): for an IFF_ALLMULTI
> VSI with VLANs it reinstates the per-VID rules before clearing the
> default rule, so multicast coverage never lapses. If that AQ call
> fails the default rule is left in place, ice_vsi_exit_dflt_promisc()
> returns the error, and the sync_fltr pass bails with
> vsi->current_netdev_flags |=3D IFF_PROMISC; the current/netdev flag
> mismatch re-fires the IFF_PROMISC off path on the next sync. Clearing
> the default rule first would instead expose a window where neither the
> default rule nor the per-VID rules carry multicast.
>=20
> If ice_clear_dflt_vsi() fails after the per-VID rules were reinstated
> they are deliberately not rolled back. Clearing the default rule is a
> removal that frees an FLU entry rather than allocating one, so it
> cannot fail for lack of space; a failure is a transient AdminQ error.
> The per-VID rules are the steady state for an IFF_ALLMULTI VLAN VSI,
> so the only redundant entry left behind is the single un-removed
> default rule, not the per-VID set. The retry re-enters this path,
> ice_fltr_set_vlan_vsi_promisc() returns -EEXIST for the rules that
> already exist so nothing is reallocated, and the default rule is
> removed on the next attempt. Rolling the per-VID rules back here would
> instead churn thousands of removes and re-adds on every retry.
>=20
> After the default rule is gone the vid=3D0 PROMISC rule that paired with
> it is redundant and is dropped, but only to reclaim a filter entry, so
> a failure there is logged and does not abort the transition.
>=20
> ice_set_vsi_promisc() and ice_clear_vsi_promisc() dispatch the recipe
> based on whether ICE_PROMISC_VLAN_RX/TX bits are present in the mask:
> with the bits set, recipe ICE_SW_LKUP_PROMISC_VLAN is used; otherwise
> ICE_SW_LKUP_PROMISC. The else branch in
> ice_set_promisc() installs the vid=3D0 rule in ICE_SW_LKUP_PROMISC.
> Because ice_clear_promisc() with VLANs present adds the VLAN bits and
> would search ICE_SW_LKUP_PROMISC_VLAN, the recipe mismatch would leave
> the vid=3D0 ICE_SW_LKUP_PROMISC rule orphaned when VLANs are configured.
> This is a single stale rule, not a per-cycle leak:
> re-adding it on the next promisc on returns -EEXIST rather than
> allocating a new entry. The set-time recipe is not recorded, so
> ice_clear_promisc() clears both recipes; clearing a rule that is not
> present succeeds, both clears run unconditionally, and the first error
> is returned.
>=20
> The two VLAN-0 recipe transition blocks in ice_vlan_rx_add_vid() and
> ice_vlan_rx_kill_vid() that promote / demote the vid=3D0 rule between
> ICE_SW_LKUP_PROMISC and ICE_SW_LKUP_PROMISC_VLAN are likewise guarded
> by !ice_is_vsi_dflt_vsi(). With DFLT in place the
> vid=3D0 rule already covers every VID and a recipe swap would only
> install a redundant rule.
>=20
> Lab reproduction on an E810-C with the same firmware family (4.80, NVM
> 1.3805.0, DDP 1.3.43.0) using four PFs in vlan-filtering bridges with
> vid 2-4094 and the slaves brought to IFF_PROMISC before the bridge
> VLAN bulk add:
>=20
>   before fix:  ~12,279 AQ Add Switch Rules per PF, ENOSPC and ENOENT
>                responses in dmesg, DFLT VSI Rx rule install fails on
>                the affected PF
>   after fix:   ~4,093 AQ Add Switch Rules per PF, no AQ errors, DFLT
>                VSI Rx rule installs on every PF
>=20
> The 66.7% reduction in installed switch rules per PF matches the
> expected per-VLAN saving: a single DFLT rule replaces the per-VID
> PROMISC_VLAN expansion.
>=20
> Functional regression test with vid 2-100 trunk between two ice ports
> through the lab switch (40/40 PASS, 0 AQ errors, 0 ENOSPC at 4093-VID
> customer scale):
>=20
>   vid 50 unicast, vid 100 unicast, vid 50 broadcast ARP,
>     vid 100 multicast IPv6 ND
>   vid 200/500/1500/4000 isolation (out-of-trunk) and untagged not
>     leaked: 0 packets reach any bridge endpoint
>   IGMP/MLD snooping, Jumbo MTU 9000, reserved-multicast STP BPDU
>   IFF_PROMISC + IFF_ALLMULTI transition (off while allmulti stays)
>   Regression reproducer for commit 1273f89578f2 ("ice: Fix broken
>     IFF_ALLMULTI handling"): allmulti on -> add vid -> allmulti off
>     -> allmulti on plus the orphan-rule Scenario 2; both converge
>     with no stale rules
>   100-VID, 1000-VID, 4093-VID stress cycles (5/3/2 iterations each)
>   switchdev mode toggle preserves IFF_PROMISC pruning state across
>     the session (vid 999 multicast received before and after the
>     legacy -> switchdev -> legacy cycle)
>   SR-IOV: VFs unaffected because ice_set_promisc() early-returns
>     for non-PF VSI and VF representors do not register
>     ndo_vlan_rx_add_vid
>=20
> Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 90 ++++++++++++++++++----
> -
>  1 file changed, 70 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 6d24056c247cf4..af8df81fc45623 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -274,7 +274,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8
> promisc_m)
>  	if (vsi->type !=3D ICE_VSI_PF)
>  		return 0;
>=20
> -	if (ice_vsi_has_non_zero_vlans(vsi)) {
> +	/* skip per-VID expansion; the DFLT Rx rule already covers
> every VID */
> +	if (ice_vsi_has_non_zero_vlans(vsi) &&
> !ice_is_vsi_dflt_vsi(vsi)) {
>  		promisc_m |=3D (ICE_PROMISC_VLAN_RX |
> ICE_PROMISC_VLAN_TX);
>  		status =3D ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw,
> vsi,
>  						       promisc_m);
> @@ -304,9 +305,19 @@ static int ice_clear_promisc(struct ice_vsi *vsi,
> u8 promisc_m)
>  		return 0;
>=20
>  	if (ice_vsi_has_non_zero_vlans(vsi)) {

...

>  			ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi-
> >idx,
>=20
> ICE_MCAST_VLAN_PROMISC_BITS,
>  						   0);
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
