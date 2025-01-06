Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3653A0200E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 08:52:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1ECEB4052C;
	Mon,  6 Jan 2025 07:52:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4soAHGNWi9G; Mon,  6 Jan 2025 07:52:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 221B340531
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736149925;
	bh=9U8kGni4m7WplI5anR6V/tl0LTC8s/lklK/+WnMShUI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5NfrOGS+HqWuTlSYhH+/1ZXHE3Gn+Sa/jklpJDOH9gwtoDq+SPUTFcFUlkq/RJBrd
	 W4gvmbDdNTvY4oVRJofOmgZZg3bpWtyy2K8xHNvkd/AfH7YpOLb5/FkixQ7jI1HxcU
	 TfNroNv83Uo0mk2a9Hxrcnve/EQ4SHVk9ZN+1QG9sgZojVhYnEfmVdrNumt7V2RdNF
	 fxOuNMmT3mtS1Csur2DgS0d3qF6l0eVY3r3hFfhxQN3eVEvplBeEQNJEVTF7TSNibb
	 vpcSBdda1Zuor2yViTusy79X9AVLMktY8ifr3g9XeEvVTQfJdOs/kyQ3NtZACWTEgZ
	 HzBELsw0aKomA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 221B340531;
	Mon,  6 Jan 2025 07:52:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E1847D92
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 07:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBECD80F5B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 07:52:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7FJJHZOe7Z7s for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 07:52:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD46680F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD46680F52
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD46680F52
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 07:52:01 +0000 (UTC)
X-CSE-ConnectionGUID: 55YKgjqcRt2W7mNql1xdlg==
X-CSE-MsgGUID: 2a20wG4ASYS3KDWtsG2/hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="47277254"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="47277254"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 23:52:01 -0800
X-CSE-ConnectionGUID: ywYe8WmgSsqhwq8ttoW2mA==
X-CSE-MsgGUID: d22MjAMHSEqwiz71Cutxaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="102446446"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2025 23:52:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 5 Jan 2025 23:51:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 5 Jan 2025 23:51:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 5 Jan 2025 23:51:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ktx5fGlKzNWMCfuRPRHUug1ULUXBv6O6/Ve44dJBnACy9SPn6LauWt4znqLJq4nplYhc+BngvaGGBYnFb6dE5FYSp3/NkKMrnvOPijNskKvufRDfaTncUm1D7lxeIL5uIVd8P1gx3ABaC1a16Nro6YtSIUmPomXRV3xUY8xwvy02NLJbTR7KUyfjB0qzwtkt623aWtKkqs43Qi0JvuPiXFD1oaweWwcv835Mj2OJd/Apuk8dP+xqmVid0w2vl7tWcKtXM8JdYlUTUtEdi2UP4rray0yJ3qmKKm4Hgh9xLxu1tLgxxEYMIRmqQSx0/bBYXdIxUWGsnekZRqIxjVKN9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9U8kGni4m7WplI5anR6V/tl0LTC8s/lklK/+WnMShUI=;
 b=ko0iLyr7M0zaYZqF44IPUauQtx1TaELfAkAKvMWwSNWZQYGOmuhdsJ7iYQ9c5QDkJS2CDlMbFYsszBOmf8YAcT0xPDQir4jJNmaWnKWVTo2HDaAcyxAzIyeI8y9wb/shfdgCmoZXlHAAVOW2Keyts4Awq9pt3buEnULBXbrAB7NPviLbXGVHVYzGdklcYtMqCjuHlkSIRzd9tPM3GeN3V1YaBhWZqKT4raWOKnHYcu8uBeDVmGjPuILf9hixKXDm7+lnz1JiMjSTlAqUcAL97U0CdjSSvX6hq04vfbtEeWBvys4LCWwIeDZOK2HtulKNdYP7zBmEjlgCtVKibJY2Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Mon, 6 Jan
 2025 07:51:40 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%4]) with mapi id 15.20.8314.018; Mon, 6 Jan 2025
 07:51:40 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure
 destination override for switchdev
Thread-Index: AQHbSkWYiVJxSFK2TEuslY1nnnuGU7MJiqcQ
Date: Mon, 6 Jan 2025 07:51:40 +0000
Message-ID: <PH0PR11MB5013488226F0A48B91CA7E1A96102@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20241209140856.277801-1-larysa.zaremba@intel.com>
In-Reply-To: <20241209140856.277801-1-larysa.zaremba@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7924:EE_
x-ms-office365-filtering-correlation-id: 696be277-8446-4a96-cbc7-08dd2e26f493
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7055299003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dY6Zb23YLYaDB+xw2uB500n20zOBdFil6pJ4b2k+R7XVE2t+YxN8s9KfJDYn?=
 =?us-ascii?Q?hrRztOzfjWeb0A9VzeRxyl5l4fV2U1BDs34PDvwidY0ClwJZYFygeZC+1Ye4?=
 =?us-ascii?Q?lbKqPmiwN24AY+ppxKcOVkWniP/H8/ThhOi0APdxfdNBoSS3/LRxUIVhGwR7?=
 =?us-ascii?Q?69+Zpyjr5+eyPxWMfCcJRWPCURmustegm4bO1/YHcZ/5uLA24vTxCW5IcGYz?=
 =?us-ascii?Q?G5FxlL1Nac/o/B2OTv6mjWyjxrgtsFHS6thwilB5ZHGYwaC8jPovhDeUTmBi?=
 =?us-ascii?Q?UHyRF8oikYniYDuo1y8tcnbVfebdvhhKrfGzuSz4m2VVjplBclqU8BfNB9Ii?=
 =?us-ascii?Q?zDEnbV+mguQazT28vh5odk4nRcSMbdnmd6e1OZG7W5eCC2Swo7uRN1ydgQhs?=
 =?us-ascii?Q?I1JwRWRN1/rw0D+vXofFePJPjDEzyF+9i2P4tUDax1EtJ3rFJNEokzMeziqe?=
 =?us-ascii?Q?VHT77buMIOrtOy1ivZZ18KTNb+12mCy2c02txTJHsczGS45IXPtYI92w7UDz?=
 =?us-ascii?Q?PZyN1uxo8YzAUlb7jcq1VS5TrHFMKU1I7ORJ/DWSSr8D69i9wYKm5RMv0DZq?=
 =?us-ascii?Q?WuVItgL12a/R5X8ZVctoFIcjzmP/OMom4ZLitxiKIPEKAFt3frvK6QPQOIH9?=
 =?us-ascii?Q?RRASv9EXC00POdbqcv5YcFVTkp6iXkB2Y1ZAVrx8aiHsUj84rVwuFbKygw5O?=
 =?us-ascii?Q?89DwmPkthb28g/fxLwTGnC+TM8KG+QsQSwJHF2ncYbY5Q8V/xRFS9fWuF3V0?=
 =?us-ascii?Q?VJLJ9QDxqgXuc8zW0Wy9uLWvVfbOI0dMtN2T5pjqqTXgA38PyHaQ4PfTvh8i?=
 =?us-ascii?Q?n3wfHmnnZmE+2/uWDzzeZChndzWky+3UM2XoPxHQt8X/x5F5yx7CN6oElCGU?=
 =?us-ascii?Q?et+GLJ8lS+oA2tIoD6BlzotPGXKobxFqiDbikcqqTYb9H8d5gnAWkJTkucqr?=
 =?us-ascii?Q?OPXx1kt77rR1Fvt9A98jENt4R2FvzpKrFRwBVqp2+7iz1gwNOjMZhUxsY5EQ?=
 =?us-ascii?Q?uRSQhNbzfsMGIdjn1pjd5WtylKUmP37+HyIHOEmFEIrW5mcV4krNGxLeGiUp?=
 =?us-ascii?Q?mZHRU8hJ75kHhrLQP3KFh79mM+Zkph4+NEXPYmc0T54i0HjyfX1hzOM6eFyx?=
 =?us-ascii?Q?jYQF4eXZ6jtYeAoIOAijLGrVWxMEgEPMTW8fS5z6/i9eQyMNA+TIcF7+0wbq?=
 =?us-ascii?Q?00fvarP7FEmSwZJho8Pakyp+z+/kygTudi+kNiUW3EYV6sZFqIlKtpiUXR0v?=
 =?us-ascii?Q?vBxe2FwNolUxw4lZolsWbgseolX5sduTk7BflqZqe3QQlz+Ssqrvk42MOQ3l?=
 =?us-ascii?Q?mgLELEmULJ9fVuaeAOBVp30xULfApeWm/+yAO3bzMuW7ssee1VVt0Z5nx6NW?=
 =?us-ascii?Q?pisA7msVfQW3gHoLn8ayBsN6AkNDyhoL9fJX18xplcv/zTj/Pn//V7o1Yhip?=
 =?us-ascii?Q?q5v3fCzScrupdY/Zjm7mQwA0bKEGx8pP4Tr8hFPlNDMrIYCR8nBGYQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7055299003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?slXr0fX+KbUSH78pDUcp0KB3UgTaE2n8b6WgXu44w6uUrMFG/dE3XVxwhVcT?=
 =?us-ascii?Q?Hq+khYycK192ZiD3bLFJ8nT3huipROWRQK9BJZI28ffDiTZ9VN8STZ3+Xbtw?=
 =?us-ascii?Q?DdtXxEEyGj43XLga8O6Wbj5JA8l+KINAGUe9wJGE9iK7Azk+QepoSS0JYH8J?=
 =?us-ascii?Q?bItwPmuNRAYdy+HXXzgE22kbCdLRxU2Rfj+xP0RvfjdUYfWDOo+3W2tY7IXq?=
 =?us-ascii?Q?LhsVjlg+J5cLcqJ4Rrf1W6HB8FACXGv/TvVpoysFtsJbrKRaIM+MAieZZGMs?=
 =?us-ascii?Q?rGDn5XFswMm9XEFvOylg+/9Khm/Ky6J+PHIC3kf+4HyaOgX29QCvGgliEgIn?=
 =?us-ascii?Q?axcUYpYlQN8Mp8F6hlKD8prCznsj7gz5fFfb9bPS4atOjM1WyMUeSRtyF4n9?=
 =?us-ascii?Q?zOQ/Vm994vcFNiO33lb9O/uYWFy76ehvU3Zj1SwfmPW5CIPKLffi3yjUNG7v?=
 =?us-ascii?Q?3vfPKvWBO/kH4g0Uiejdq4KfEfH0kL0mN9rDlxoRCz5SF0oVrvi03jUnGKzV?=
 =?us-ascii?Q?PQVsJ1/77pPl5Ps7SNm3Cs8Yl9pZP0dGIN53xgqiDZEjmUduSH6LX9t43AQt?=
 =?us-ascii?Q?ejLGCUrGHqj/Y5C3dlJSskLK+G43D7mnkRCg3QygnBIre8W4CGT92AuNDLUY?=
 =?us-ascii?Q?4Ye0Ov61aQXDZaNTazuLh3qZ35mPKvgUyM3HZU37qOt++bCnRMGFw+Z/nssJ?=
 =?us-ascii?Q?rPmtKbEqrR7F5c9O81MMBPzwTC29z5VwQPtt3Shq+CruqfpaOOXjimWY3cyq?=
 =?us-ascii?Q?L16B+Pj8q48G9aXh6iQJ9FthS2R4V/+CrXRJtcc6tsc2vlxXFbPva5FiWp4d?=
 =?us-ascii?Q?TjV7eboqe601GPYctUxkbJiCC3tjsYOHWW6x2ivnueRDtCx2oaODTp+cTObf?=
 =?us-ascii?Q?aI/VL198IDTN5DFjLyTjvSq47BKkTdgiTj+Ux8AZwLGh4knpYRpNe/bKzTvQ?=
 =?us-ascii?Q?M6brbd90HoIiL3iAMvIgOLIYbIGQh+i4ZPKLM1NoV4zxAgkcAfnO8fn3CE9t?=
 =?us-ascii?Q?R8IGHQRr37KC5R6Z4mKbfFkETkRv8vD3Vqe7ab4VAs+6LBb1ooYd0Smwwh9W?=
 =?us-ascii?Q?EoJZXxjFswXxtWZQhZ6lYkZLum0asc5s+hlesRyzjV53rVDygRu/vr7MiRGM?=
 =?us-ascii?Q?GJCw+Q//ZzyXbnKEvVZ2v3ByaHi6xGW94B10aDLMVxM1rvYH7OhNkiNbugzc?=
 =?us-ascii?Q?8IPlSNvOYQF4OqzknPcwm54+yu6De2P3AunpYg5R5e1Dn9WbiDOGqspXCczr?=
 =?us-ascii?Q?bR5DVTdQaCVpa4fhvwgpj8dcWm3qJq+VLsqO+5PkfFGMTL7qmsjp9B9h2Xbv?=
 =?us-ascii?Q?+eukgQpbEy3clh/x0sLBQ0N0bWF3oNQhUP1r2HCR/yz+/253v7hddqqgg9nL?=
 =?us-ascii?Q?GMSUTZ+BB1T04SmQGkdDISBpoONO/xN0pXPEAHg9Bakd4hxAS725HUdem4Gb?=
 =?us-ascii?Q?l1/7WC+jMFHK0S1d0mkRRhGgPv3IY76BtcIXnpCgEvAWbqPB2hrQKIndhUOK?=
 =?us-ascii?Q?nSEC6XIbgxBrn40B4KIq+aNekUfF8RrliH2jT+sPnjiqSCnp+qSt+kK9eJiY?=
 =?us-ascii?Q?GTTyDhEO3CTwgJFEIej3c2gr52L+gpoGIAeXp+KhLFvpe28LrAnPhoC1/IQv?=
 =?us-ascii?Q?Yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 696be277-8446-4a96-cbc7-08dd2e26f493
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2025 07:51:40.3150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v6UKvleqXW/RA+1izzqo2QcDB1AfDFw2xhgoUtvlV10k5nsoQ5JaAUMpKCzgYO5yHDWsfw1UevoT1XmOQu+wa584qcp0KCXNANBVNVaVRyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736149921; x=1767685921;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RM8lIgRsfrqXt8yrtKVe1Ks7wFQQAiaz7l00gAIkbXk=;
 b=Tdz87Yu2owf0apLhEk+j4MroEVOJFm7Mw1LQjV2he5q3GyddrlPgQcJl
 Kbk8dbxJyBSqteLTFBTTCbAU5PRBQRmECdDjJnWmjYOiRQ+86Rk3LmTvD
 lBhPuslVR7daAK9k8CVqB8tyzgw+qn1LARm0vxz2oxNqVx5b+8g0Anf7o
 xYU3Lxs/ROI5F3LQ4yfyW0Mz/Fordb/Go9KhamCV1rqPzt+1reBdQSiqx
 vv/6eQ0mji52347tRJ5jsHV+LQKAvXnOjmUbnH5hSIApCUpH0FVIpIuiM
 Qp/uoN0FmsJ9JN8R3ugNl6/Xh/KPcMJlfXVWFXen9Z6TLxCnibVUNCVfK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tdz87Yu2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure
 destination override for switchdev
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Monday, December 9, 2024 7:39 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.or=
g
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Eric Dumazet <edumazet@google.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure destinat=
ion
> override for switchdev
>=20
> After switchdev is enabled and disabled later, LLDP packets sending stops=
,
> despite working perfectly fine before and during switchdev state.
> To reproduce (creating/destroying VF is what triggers the reconfiguration=
):
>=20
> devlink dev eswitch set pci/<address> mode switchdev echo '2' >
> /sys/class/net/<ifname>/device/sriov_numvfs
> echo '0' > /sys/class/net/<ifname>/device/sriov_numvfs
>=20
> This happens because LLDP relies on the destination override functionalit=
y.
> It needs to 1) set a flag in the descriptor, 2) set the VSI permission to=
 make it
> valid. The permissions are set when the PF VSI is first configured, but
> switchdev then enables it for the uplink VSI (which is always the PF) onc=
e
> more when configured and disables when deconfigured, which leads to
> software-generated LLDP packets being blocked.
>=20
> Do not modify the destination override permissions when configuring
> switchdev, as the enabled state is the default configuration that is neve=
r
> modified.
>=20
> Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  6 ------
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 18 ------------------
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  4 ----
>  3 files changed, 28 deletions(-)
>=20
Hi,

Observing below call trace while creating VFs in Switchdev mode with this p=
atch in net-queue.

[  +0.000188] ice 0000:b1:00.0: Enabling 1 VFs with 17 vectors and 16 queue=
s per VF
[  +0.000062] list_add corruption. next->prev should be prev (ff1d7c830300c=
6f0), but was ff282828ff282828. (next=3Dff1d7c5367d61330).
[  +0.000015] ------------[ cut here ]------------
[  +0.000001] kernel BUG at lib/list_debug.c:29!
[  +0.000007] Oops: invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
[  +0.000004] CPU: 81 UID: 0 PID: 2758 Comm: bash Kdump: loaded Not tainted=
 6.13.0-rc3+ #1
[  +0.000003] Hardware name: Dell Inc. PowerEdge R750/06V45N, BIOS 1.3.8 08=
/31/2021
[  +0.000002] RIP: 0010:__list_add_valid_or_report+0x61/0xa0
[  +0.000008] Code: c7 c7 a8 97 b2 8f e8 7e e4 af ff 0f 0b 48 c7 c7 d0 97 b=
2 8f e8 70 e4 af ff 0f 0b 4c 89 c1 48 c7 c7 f8 97 b2 8f e8 5f e4 af ff <0f>=
 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 50 98 b2 8f e8 48 e4 af
[  +0.000002] RSP: 0018:ff5ebf3d22093d20 EFLAGS: 00010246
[  +0.000003] RAX: 0000000000000075 RBX: ff1d7c54143a1330 RCX: 000000000000=
0000
[  +0.000002] RDX: 0000000000000000 RSI: ff1d7c81f06a0bc0 RDI: ff1d7c81f06a=
0bc0
[  +0.000001] RBP: ff1d7c83030097d8 R08: 0000000000000000 R09: ff5ebf3d2209=
3bd8
[  +0.000002] R10: ff5ebf3d22093bd0 R11: ffffffff901debc8 R12: ff1d7c5367d6=
1330
[  +0.000001] R13: ff1d7c830300c6f0 R14: 0000000000000000 R15: 000000000000=
0000
[  +0.000002] FS:  00007fea5e4e4740(0000) GS:ff1d7c81f0680000(0000) knlGS:0=
000000000000000
[  +0.000002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000001] CR2: 0000562ef57c7608 CR3: 000000019037c002 CR4: 000000000077=
3ef0
[  +0.000002] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 000000000000=
0000
[  +0.000001] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 000000000000=
0400
[  +0.000001] PKRU: 55555554
[  +0.000002] Call Trace:
[  +0.000003]  <TASK>
[  +0.000002]  ? die+0x37/0x90
[  +0.000007]  ? do_trap+0xdd/0x100
[  +0.000004]  ? __list_add_valid_or_report+0x61/0xa0
[  +0.000003]  ? do_error_trap+0x65/0x80
[  +0.000002]  ? __list_add_valid_or_report+0x61/0xa0
[  +0.000003]  ? exc_invalid_op+0x52/0x70
[  +0.000005]  ? __list_add_valid_or_report+0x61/0xa0
[  +0.000002]  ? asm_exc_invalid_op+0x1a/0x20
[  +0.000007]  ? __list_add_valid_or_report+0x61/0xa0
[  +0.000005]  ice_mbx_init_vf_info+0x3c/0x60 [ice]
[  +0.000076]  ice_initialize_vf_entry+0x99/0xa0 [ice]

Regards,
Sujai B

