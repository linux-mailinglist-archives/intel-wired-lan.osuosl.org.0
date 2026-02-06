Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFzbAHAXhmk1JgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:31:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 450DD1004B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D30261131;
	Fri,  6 Feb 2026 16:31:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVtuj8DcEIrV; Fri,  6 Feb 2026 16:31:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E81D561144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770395501;
	bh=n5Qdcvfg7aEHo0DEoLG/ASB5zlW1cNVHpDLamH0uIjg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PuVGulLeeaBX1J6IOlLDs5lp68k5mlkrh1M/ZYNpNSNZUFpFs0aY+MDzwlvRIMBkQ
	 CIIDjhrpeKe2RffKJcpMAR1WWoR+6C67SpN9BJ+O1aicEa705FwxmyARZGw0Jj6M3E
	 BoljznqYi7BdHoupgDsnmnzW0Nl9sKMaTrdZ+4a7fog9tpbG5FIb98pbBFT3+5kVQj
	 Sjp0iWDk0psY3FXa3yDSi+SA4HfJk6poUdULaCNauDBcZaqpXXW8XeQvI8eO8Jd7NT
	 p6FOTvORWuV1JeB0KlH+DEseU/HcBxsGSwm4Gif5Don5SF93TKn1wXJLD0smgXCfqW
	 yIWz4QxBo/4eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E81D561144;
	Fri,  6 Feb 2026 16:31:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 52FF52EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 354F540F9B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:31:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0RmFWmqUPpJ9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 16:31:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7365F407DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7365F407DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7365F407DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:31:38 +0000 (UTC)
X-CSE-ConnectionGUID: JSxRSswFSOGONef26jDNHg==
X-CSE-MsgGUID: x5un4nPoTOutRrVu+GbWjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="82973257"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82973257"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:31:37 -0800
X-CSE-ConnectionGUID: knub8xwkQoa/jGmKIfYVBQ==
X-CSE-MsgGUID: jT6zfun1Sl2BtYzVJK2z9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210196670"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:31:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:31:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 08:31:34 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:31:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c7AhUZW3AmNTHSvnLX2RVhwu8uiHKf9ujH99c8ICeMexhYtLloDb96PPeTlSwwHa0M8eIqPc1PAaqWJlyPJgnt6tDfhx6s2+wqfPrPhuAABAv1/DHc3Prso8sYo+D1at6XqdL6LUdwVNKd0RI1qdIM9GktIx9Nvm2a0paksMQmuKto85vGAJJBbSU53epOuLY0cbaAxt8ptwxwp8WziAbx3TRqt9vcaYLoXwAKcOX/rYv6O7wAHOS/8m5JaxTOZPERFUafR+15capDynTtFQJxMA1bNz8RuoxrmFS5KSiYhRkULlwZh9PxgmiF6jA4mB7/bn8rfhNfRhcUEsD4flsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n5Qdcvfg7aEHo0DEoLG/ASB5zlW1cNVHpDLamH0uIjg=;
 b=RSgWVJRRQIkibaqKD66ByE9iG4lkmBOF5+goptP5T1Ud1Bjcv+GPISSJ9WI5R3eBBsB5Jw108LDHDK6xIA2judKfhDHBSkWTtnVXm997N4wwPXydbxZ4lOnFrSJ2gaPnA6scf3D0Zd0D6ZF6I2/Zr80YlLMv+2R8dfdS2rjIXHiwdR8oCTmyI3Zj3NLvGv1xwEFV0NsC3zERnLwTfidEeaxs4GNFEDHJqd1QiwI4Fyna/YdbcGnOm8tk8l0IJJNXAJ4aRcGkiXgnfK5bq7llqFcsykY8+yKkVVoZPdZXXjpmuJY5wwf3VcsEjkucGzMTEKre790OLBHQEOrYjB/fcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Fri, 6 Feb
 2026 16:31:30 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 16:31:29 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: migrate to netdev
 ops lock
Thread-Index: AQHcXjIdB6V3/FLAgUS1kiTQCNi+R7V2T1xQ
Date: Fri, 6 Feb 2026 16:31:29 +0000
Message-ID: <LV1PR11MB87906B2A6E9C7C912F08A8A69066A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20251125173603.3834486-1-aleksander.lobakin@intel.com>
 <20251125173603.3834486-4-aleksander.lobakin@intel.com>
In-Reply-To: <20251125173603.3834486-4-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DM6PR11MB4577:EE_
x-ms-office365-filtering-correlation-id: 1c3fc59e-e47b-4e0b-ada2-08de659d2e90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Rv2+f41H8BZiVGu7dgx0oq6h3QnsDbnBSH8c+/+i9uZmQIHAYxm8S82kxvzY?=
 =?us-ascii?Q?BScmMci+lAYtuMBeSG/J6vEIZtiZmJcdZ2hzwCaD/pBVdtszpj54he28I862?=
 =?us-ascii?Q?gDWiYCmyqneiXIB99TIS4kXVJXE9N/3saW0SP5t2PVj2o3i+wKPnaJvjey/t?=
 =?us-ascii?Q?Eh6kiOVw5Gh1IzDkfgEuvCCjbhx49jKhKYyMmKRwSBOc7NprTq3oVHs5X+ZQ?=
 =?us-ascii?Q?sN/b28/JbP2CNaezRVj/xfZCLB7jU+lOmFIA0hVoSisPfwlI3YoxprofiaHD?=
 =?us-ascii?Q?eGa/VQHbEi9ltmCNU9nQTCO/oBPCkZj1HC0YEvyQyE1T4tpxAw0Ag0JjQTqY?=
 =?us-ascii?Q?/4r1JXBgBiIZNoSj8sQ96jTHhPtfenpQWiXuQpNQUgKddzwK7VBBXeZg/pK1?=
 =?us-ascii?Q?9LxAwe1rfaUik9bNzhH4UWGV1s2ugtEaIp2/FeY56dT0GGajxU3f6eoCa5/z?=
 =?us-ascii?Q?kB9lZJg3WPdr1HKRIacjvIk4j680a1jo6Pq1iubtd1B+sGEdBvefOceU3QeK?=
 =?us-ascii?Q?qD/p7G/w/lQivTyoW/kxn9ZbPgOJezIMw1x2LbdqfIowFObwPgNeVWpdRKmK?=
 =?us-ascii?Q?FA4Vh9YDoSjomsT3k5woVfvyij317lJmWUlXOdsxaIcuczwmIZBB33c7RnI1?=
 =?us-ascii?Q?ZBOkYIRG3Hn1hp0CVXIEVuMsJC/3230sLyR9Lmg6pklaA2RIF4gH5Zm8UbRn?=
 =?us-ascii?Q?8KKxg+W3zZJ64m0uGOML/BQCpc05fmGCvD+Iw+t/jovGCBi+irJd7sz6nn/t?=
 =?us-ascii?Q?7NJB2xTqwXFQHQ5iAyTJ56V04ntLoj1LPYg1iWDJFlYOp6pn/B/jHzsQzfp/?=
 =?us-ascii?Q?cUcgtMTvZ7bJAjWM6CiVeiICa4VyKGZYYlkm7af1KBSoxrwpq7Wxit1mR6CV?=
 =?us-ascii?Q?qGseuxefsa1bB4EcPyhozPVFawrJKYPIahLUKJI3Z4iWolJ2XKO1LNj37Gfi?=
 =?us-ascii?Q?wJ4MGcGjFAwrMtbeUdEqyQ31ezr52hP2VZJffQZjIgyCvxyMoDZtZ/FUGR/c?=
 =?us-ascii?Q?y8z40MjhNThxsmmQf0VyMwHhJH/V6IoAl7NfrGS9ciznCmtFvGRPYJZiy2Nh?=
 =?us-ascii?Q?BGlEFmOYU2+mjzJb0QbC18H/zQIINSk1q/BCVxb7oLipkGD7Yz5V76oj81A0?=
 =?us-ascii?Q?PRXGP2vqsAVe6BYpzQ/FtXUfbYDKDO1JuW1DP2OGKHw5xaNDJofGwEz0UbdG?=
 =?us-ascii?Q?a8Mdot0ayEEoyvaGw6jIC0L4FVaHkWslukgYKS2ChlrNDT1MIbNyZKQAppKP?=
 =?us-ascii?Q?X/KEQj0mvThq4qkq4PHeK+DbbDVcWqpnDZRyy2nuWfwq3mjV7suQSexSIxz6?=
 =?us-ascii?Q?m67PUfcg7eJoS4ciDrqLQdGkCZ9tDfTyE0qKCRRYkLCd8MUKRUJBIsLiU9MJ?=
 =?us-ascii?Q?Qqj5Q8mJ0Erj0MFNQZmNvmsrSfugej6A/3qZSHsSx8dSBTGpAE/ptH+2jFnm?=
 =?us-ascii?Q?XoBVtidA9eG5p28bsPlQcFL6HgPPJ08VaSg87tjvUr5g3jF4VAuO7XSTsUaW?=
 =?us-ascii?Q?XPU9f7aIcGIOTuZHFfzLfpTsOmC92R/QmdGk5FbjNoc71dx+WBaiFTqRdU9p?=
 =?us-ascii?Q?Lkb/KTRImejzEu7pcZzSkVETHWL664w5r0VBUyIzHmuzc6t8jgt34p/DMMMZ?=
 =?us-ascii?Q?yEqWYyEWfsRmWkX1+PRL/ZE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PVhaKIYkt25MEkW8lxItyAm8P4PKEhhaBd5ZbwDmWPd7cIcyqffLwAmkgEDo?=
 =?us-ascii?Q?JtaTz7J+BB4FKZIiHP8Jbrr6nuADmY9hh0xctpxkDCpMOulsTm16NneFxys6?=
 =?us-ascii?Q?ZHkTANW4wqRM/3IvNh9Mw2f0D46aH5MAdoIgRSd1CK9y43pScdJy6nPW2D7V?=
 =?us-ascii?Q?IGJ4AeQmGGRfd9CLx/Ap0SChlyw3rQxvyt3KG+j7u0uf83jlhWjcxEjSaWiJ?=
 =?us-ascii?Q?AcdwbQ3ARhE/VdVuUkwOByOJHf0UU17zzZuIyaozymoW6B0OeQ/4NPKl4dz6?=
 =?us-ascii?Q?A9PTpTcAKr1jN9b5S2pGTNKXlUU935LpaReZOLip561uXbz++AJ+iltielTw?=
 =?us-ascii?Q?fHlV7ldISbcIVzJPPlF6k7MKD0M62+7cjx/DQyxvjIfczqQNORjGuNJsTopd?=
 =?us-ascii?Q?7HX3qHBQJyvSp6QOMjv/II29Yebov+sqEkl5hZhGTTfCLXMzlGOtEhhrRrJK?=
 =?us-ascii?Q?26d+VWWufRAHTWM9i5c4aO0HIK8Z6igCj4Vpt/KgBwcGrUBhPtTP20ul5e9L?=
 =?us-ascii?Q?VrKyHr4XmACfcSJAetzh5HH+YHIW/2IzkBo1hGtk2qpDjpGf46ngJTrU+h1V?=
 =?us-ascii?Q?8ktxOV8qouHAuSUnd4uNuwV/LPE61ryitwHLHn0V61DW+X5Mgo/HNcXnjHTD?=
 =?us-ascii?Q?T7xePI+ZZBTyMTykk7N5jo9knK7xOqT3NJiHjDoMaRk6cn+ccLLSsAst8VVQ?=
 =?us-ascii?Q?HEKZT96aHID5NA1VlmQ3LVC2uuVRb2MhFMoVPjc7GtTEsYGzye/G2JhX1lpe?=
 =?us-ascii?Q?PikhZAbV/Pwp2Rn8+79Y/3cAordYBUmpAmcZFRdtzLUe6h7KMCqy0xPE3czd?=
 =?us-ascii?Q?KlHydSqgvW+v3a7wCj60DKeENoQy9aC/IU29ehnovz0B+0FuK4Qd9TjdRKqC?=
 =?us-ascii?Q?B8Ex2hGpp72AuB1zbJSLm01Wx62UohEu7xwdo1bUoTnxK1MN7Gcp826Nq9jc?=
 =?us-ascii?Q?K0pFviPkLxWRJgITUaTevLpknXsj0dFjKsI5aMRbX6kL1iNu+tlzSp//2pB7?=
 =?us-ascii?Q?/BH18n0iMpHL+UFYBT8S5y3eR8WwCpdHafTuDzdNP6645EwAj9Gdqq9Rd/rv?=
 =?us-ascii?Q?vozti3Iu/t68LCPnWPj1CI4GJiA80E0KPEijAhE7gLZHiDkQ4OP4zvilrPxb?=
 =?us-ascii?Q?uiSxfvtCfBdH8XbATzCFeHJT49UnpcKkb5Oxo/+grCgwpcoRdTvodff4DkiT?=
 =?us-ascii?Q?6YLMA6COB+zaDwqjnCQQxg9KBUZavjHSD4NIIlJOX/g+iOsY1Rv0yPRHuF7I?=
 =?us-ascii?Q?Zp/6gQiJ2/0VMyAZxA7Zl67xGgq8zC2EFGTtIU1HwWeDBcFKJfEl5HxJebIG?=
 =?us-ascii?Q?Gu+9XG7wA7I544z3G3eTAqYceg8olcZ/eBVSKSvI0Fb1W7x3Nw/hDim/9bAk?=
 =?us-ascii?Q?Z/riF3pcIwAao5U5oeV9kv/bR4HagLRDfoS3H5fPGizRea0h3qMax8pNxkZG?=
 =?us-ascii?Q?lS7LyIB1wPOOCSb8XozlxBayFlXzeBjEBC2d1Wg0hNp5NZJM/t4yeBgsIOTY?=
 =?us-ascii?Q?eBSh+5DCcrbL7c1NHqs5p308YJ/WTRnvVStHZp9xhokcFubVYqSFsukd3EI5?=
 =?us-ascii?Q?DJc5E/vlOhCARRSFIYKogbmmyn7xIlYzuCpubeN7tLjSc/xXxLKFSA/ose5L?=
 =?us-ascii?Q?ApQs1Y+RMPkiNTSPZLuua2iaj5Ba6fZ8dZfkDWbMdufZ7ZcuZuinQgmAvnBm?=
 =?us-ascii?Q?R4ZHgebwy/1JKj/1D5zeO+V53OaDa7+D4I71Y+L6BytzcqxIhN7GCvV69ilq?=
 =?us-ascii?Q?mG3J2JZ/Pg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3fc59e-e47b-4e0b-ada2-08de659d2e90
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 16:31:29.8195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gGMB+zSYms69dl0O2Yq39O7Ak0961MA/tu3xyAXjk5iMzBkAaHRX+RC4GD1wasiWgOtooTpAOcYrhG+ru8mYamidUuUIJSYYxw0IqxKU4h0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770395498; x=1801931498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6c/LM6AjRP9rT3hPGpEIh69dgZl4IsumXhFjT1kh7RI=;
 b=dQS5+raEwdsl1zubMuo0IA5nYkytvJNDJxXU953Kgy++5hrKAudnG/5I
 GTXI/zG+CxYI+X8s//i5Jb+NFTpjzo1sNQNhX4YEDJaLEf3hH6qTfyMBk
 YDeTos5CvWYyvab5exQefJqqkbseIK8dCQxilAJ97x0DSDDnd+aR3FizE
 CrCmwCGZG1vQTFvIR6P6IaRqV/q0XxYKvfS3bnBRpt621DWOlWBWn/dm4
 yIPo/EnbTkZyWyZoliJ1nyx36Y+qfBxv+dCl96Ip4HJ9NiVHd/ToFysAM
 Asxpq+hsZbTbdwCuGcKrxoL2byVvgQq99wlQoNK4kBsp7Bsb4hjhirzJ5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dQS5+raE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: migrate to netdev
 ops lock
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.764];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,davemloft.net:email,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 450DD1004B7
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lexander Lobakin
> Sent: Tuesday, November 25, 2025 9:36 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L=
 <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; Andrew Lunn <andrew+netdev@lunn.ch>;=20
> David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>=
; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon =
Horman <horms@kernel.org>; Keller, Jacob E=20
> <jacob.e.keller@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@int=
el.com>; NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@int=
el.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: migrate to netdev op=
s lock
>=20
> Queue management ops unconditionally enable netdev locking. The same lock=
 is taken by default by several NAPI configuration functions, such as napi_=
enable() and netif_napi_set_irq().
> Request ops locking in advance and make sure we use the _locked counterpa=
rts of those functions to avoid deadlocks, taking the lock manually where n=
eeded (suspend/resume, queue rebuild and resets).
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.h    |  6 ++-
>  drivers/net/ethernet/intel/ice/ice_lib.c    | 56 +++++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_main.c   | 49 ++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_xsk.c    |  4 +-
>  5 files changed, 82 insertions(+), 34 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>

