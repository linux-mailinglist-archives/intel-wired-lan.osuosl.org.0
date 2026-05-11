Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPyGHkZZAmosrgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 00:33:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3967516F51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 00:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B7A560703;
	Mon, 11 May 2026 22:33:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4t40_0Gvtz1s; Mon, 11 May 2026 22:33:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 277E8607FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778538819;
	bh=6/KnOzJO2Jz9QGcD9V9l+zmm5hGA48MbBKV0M9wTgHk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RbTQwgisGztZJlW7l2NehPhQD9qE6axp2F4Xb1qQuz/X1NlK7f3U6unUxyA/vIZhT
	 l35MCZ0Va5idgVcNIMvgUbk2n+D02hsb9p5/775fTNe9eDkgJy0xBYlPg9vsBakXiF
	 yOqZOJCU0Cz9l1Nh2Fn4rQVZ0CX2E+lbxFzClGkGOOym7xv6vm9VBypV7ntbIWnk5K
	 T9pmmlLoBjpxdQCrLXU2ZyvLH3QfbRtJVkcL5BT4TrFeQ7KJ/XSaeOiBji544GqnQ8
	 AFaYX5JcrtBanGNNqWm/zNetFuPQpZBLPBSpPu17QgOD5Ty9ikgEZXsBuj8KaHsNLT
	 Aq0Yk0QtZVAvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 277E8607FD;
	Mon, 11 May 2026 22:33:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 73DB9223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 22:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6554040283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 22:33:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZRDwbwr0n-_r for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 22:33:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 567EB400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 567EB400D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 567EB400D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 22:33:36 +0000 (UTC)
X-CSE-ConnectionGUID: QlSLeGh1Rzu8LOi7ImYyYA==
X-CSE-MsgGUID: DzFAXnKATb+Upo2X9tEeew==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="78470185"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="78470185"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:33:35 -0700
X-CSE-ConnectionGUID: R5UckUT2ShKjAJOC3LH2ug==
X-CSE-MsgGUID: Z06nlBfkReqhacAp+GUxHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="242552228"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:33:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:33:34 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 15:33:34 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:33:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TmcidQe83LTyQ05Eb6nEUd95Vc+KpLIom5J5iQo4QI1W8Owo5S4L0iuzYL556xTALkKZ1fiqLY6c0OQ9JRsX5J5kR/+Nssl650aVvY/XT0UfncrM67zdEEyo/jvHlfx60LcpyxScYKlGCAUHfXdnu9ld58ao5sEI6AQ7qEfREJJRVbw6gRs2vhgRTFrOSNesqhdHX4Ocmj9zlp9NQXWZ6Do/en5/GTJ+jMXPHEEPP8gcxlKu5vYhCzrxyTwT2QsOyjpDreOW+3Op9Sy6MeDq3q3+XtwmHpEcU/L2M3j1Jb3oR97XmlW+yYRPHLMCyOwqVrPYmrqw49H8kCADHvKSYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/KnOzJO2Jz9QGcD9V9l+zmm5hGA48MbBKV0M9wTgHk=;
 b=MxqZWzfEH82Qf48X8xI9vo7h/mTvEloJRKbVZvsBxZ6B0zXcbb/I+qNYPA6daZY6OR0JaOrU8/HHtSYA/qYirbxGiXCreMMe2jjIzvuSfES7OwTdaCosfOcjg+/gconH2ECQmyShNNTEtJWEhtnTGiZCGcuCHCI5uz+/nbL3JSEUH0OyD3izpVXY0GPW7JY7gv/f1lHz/sd6na+6kxPmz73m2w3WuhVPrp8G12mfG4PY2CHIUyinX1ZO0YZpvQQnliLsc74d2y9gvXmCb3UNHCnjqlPeQvALcK4bfEIdUUXEx/1cc9+QLTAAqRQVUHpwZawh4GPi+3xQoTfQzQa7bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6240.namprd11.prod.outlook.com (2603:10b6:8:a6::6) by
 SA1PR11MB6614.namprd11.prod.outlook.com (2603:10b6:806:255::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 22:33:27 +0000
Received: from DM4PR11MB6240.namprd11.prod.outlook.com
 ([fe80::a89f:ee6c:3596:df18]) by DM4PR11MB6240.namprd11.prod.outlook.com
 ([fe80::a89f:ee6c:3596:df18%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:33:27 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Vecera, Ivan"
 <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH v7 net-next 6/8] ice: implement CPI support for E825C
Thread-Index: AQHc2IZbVc2vlnwSZkuSN6FqUMUqjrX7AnUAgA54reA=
Date: Mon, 11 May 2026 22:33:27 +0000
Message-ID: <DM4PR11MB624059E5E04A849185185C7292382@DM4PR11MB6240.namprd11.prod.outlook.com>
References: <20260430094238.987976-7-grzegorz.nitka@intel.com>
 <20260502173314.3849725-1-kuba@kernel.org>
In-Reply-To: <20260502173314.3849725-1-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6240:EE_|SA1PR11MB6614:EE_
x-ms-office365-filtering-correlation-id: 48ea8ad6-9135-42d6-ab18-08deafad51e0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|56012099003|18002099003|22082099003|11063799003;
x-microsoft-antispam-message-info: L+HaiCDa5Z99FGrGyWQzCFxy8+Ln0/JQJN8Kxdv93+3VUSDNH8qn76dpFuKjp+2MUXnCY71ni4HNFb5K6SRazR7PkOYpopoEBBznQNfaaC4y+wQA3i1CFX35LYDOJ3Obr1cK+O7DNB5cfedx70OX7k2yT8+hq9IGe/ROUwwMBzkvZpDcTQ9lDHgMLykC0LPgCahXq9irw3EH6/olBu+YZDzfQ41twHDZMhmfmKFAXjQVfOHg2mQo7rQ81pH4LRZmvb4xfQK98SIuaOGS53fA7gJtNVXTa2JNJYXCU/Fq6KcStUngxbO7U9St8v9G3DDJvGhdxiGjWP+odc50KbsGYEdcolKsFHVyBLHCdyOTUWYoOZZrP8ZqkvtR2ek89LePMTbvtLTj0yLqL52POTuZ/c8SR4mV7MKSpFGt+aOYo/uFecWdlJVn31qADcrrKwJT2uCFPpsTmnAdO28+JgXq2cEYU0DFggVRGqIXKEnGvdpNtJol667/IEpHQ0tfKpGZB2/lE6gLP5vkEzXkKs+4xQlZbWCfqcV2f1JsKl3dY9X1nQ/r6hfbH2YGDklRahDxRBfsEeZLiIAoDVbOUe/5XRg67ONujOPmv7nIr1et/JlijDfzMkWe7YJQBBs9hO5pj2u2/nWNOiOs0ys1KxqMM0Egk8Nntci4nnW89ozdX2BRozSmzjdyDI+wYxkeY/V3ZEx/ac+QTBF7gHqKwmXa41LMZ1+0zeWVHURf2mSryWreTNMPGuEotJP3LTyhfZAp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6240.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(56012099003)(18002099003)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hI9DqicSS8nxrGcbLNw7E2B8ZL8Fw4zOPi/elODfXiJEcXSJckzYQav8+Y1Z?=
 =?us-ascii?Q?APyFEGvAUvCcF9T95KZ7W7kNUqDgBvQ3zc/qHHoeqN0Uiq0T1u6d3jg+QSqc?=
 =?us-ascii?Q?olvlUj48Crph8OZidMy5VUZAOgRUF89kkoMk/8PEQcG4vlK2cDKwbKktY0I7?=
 =?us-ascii?Q?fpflRupwAIJfRXQ4T4kMwvLMiPdx7Z8mv56xkBp+mCymXPsDH2+wdYWfETFn?=
 =?us-ascii?Q?huzrS/oktCS9mprGC7ERUF8h7EKOjx8d3NZ2VEdEw+F51RIaJCHxrnU5a9/4?=
 =?us-ascii?Q?gx6AwTizhwbZ1nVwTFT72zWjKVHcK6QXxZPD3cEyfRvr0V9QwXotFkgmCQJu?=
 =?us-ascii?Q?qBCrikxgn+ktryzJoyUrW00lbrxHvROQDxKn7FWii5wcFyKMmVtwW6upf+JY?=
 =?us-ascii?Q?hdkUZ6Gfw0I7VDrdWblEYoVr59mBca4woezTTM7xBx1IjjzhT2/cdTRRvSLy?=
 =?us-ascii?Q?NO6nkLsPa6iW5Q4m9jLOXNOv11TgYnRD6EfE/sj7UubU84pPvXtGPmndTFKj?=
 =?us-ascii?Q?A+x6iztvIljnDp+WlbsCI6JPDJzntJl0YlIJ2Xh0IunKZqlgIAZE5d6P3f2D?=
 =?us-ascii?Q?ZVdVDyhwVDOdfwGA8emQ+IusUO6XktDjdopf5eLrutTnw3cy5bAbhF5JBN+r?=
 =?us-ascii?Q?iIjPf5pfQYuJRz0H1+utcy2dedhxTJDKzKou4gANqDF6jiQwa9hMbB3oFiqE?=
 =?us-ascii?Q?0nfSb7iuatmhpkDlcdec2mqnLfqhZGWyoTBcfzsBt03HPWrzi8ythMEb51qx?=
 =?us-ascii?Q?tZLGuXo7eOgPFu5ne8Q5JX8qYiYbIG2lVtBg3bCiK32s7JvIP9KFnRUoiyBU?=
 =?us-ascii?Q?wddtwg3igtENdia3iTHEgDOZTUibXb4p0wgvBg5ZSMyBslGbk8yVkdZQmKsP?=
 =?us-ascii?Q?uL4h14gFoFq47CiT1JuYFkYN5R05Q5MieMpdmyNRiAg+uvpzdrE4ZN6sMriu?=
 =?us-ascii?Q?KXDoHT/56Eamz4rWNCkHtXOG0wk/azctd0WvbNymNX0P2Zo7klN4hSGdpXlZ?=
 =?us-ascii?Q?5UQaGPXf0YT6EIehMdN9B0gf0h6zG7zBPnpuTxgoxYH26uqAUbd4N8UN5Dcg?=
 =?us-ascii?Q?rxwJkm2iNli/EhwrIUkJ8ZPaHu5LqgidLli5LId+V60wUdO2ACDHFto0JD5r?=
 =?us-ascii?Q?5UlyiCqbHEKbP8m/QKRPt5aykezLeBPsNs9+oLumFTzBW/sUiqsnLnpI/tc5?=
 =?us-ascii?Q?zswvIU3rj7XvG1iBrZOGX1YArtZRoLT1s9tbDKM1HSS/m0ronxbQ1HJRqnmc?=
 =?us-ascii?Q?KEVsu8SHUiNc8w0/SY1q4F/ICSytOsqvfopCoKlInIIJNtHj24dRZjz9HwP3?=
 =?us-ascii?Q?Xzd2W1fgTOSFwm7e+eIfoackxpd71+LUAfErxeADC6xKTcEPRY0rEbLpMRVi?=
 =?us-ascii?Q?kEyfBUqDhl6UJ6l1yLEC6yw38oquqGDs/6EHYGgDO5YbHgR1aEcIga2FZV+a?=
 =?us-ascii?Q?cLR5O/lm6rmA6633YXCcgCcD0I239X2olCdsjFSzPafSgvBq+dvO4GbUwEPq?=
 =?us-ascii?Q?hxhAMhIN0AsYFNJMRgziHjEimSMbsyz/Zt6itzr0IifLKWj+4cTIEd9++DDM?=
 =?us-ascii?Q?muLa/pvmF9FBN/OhFC7MS++UgXKSfA8CZcjidmWFm2pofw7X3HOyVifbsNRP?=
 =?us-ascii?Q?USuhJBKhRk7OTmcTbxk5Pd3g1dHLY691tZqijiDB+++txvgZ5D7YipqglCLa?=
 =?us-ascii?Q?fhkhN0YR/VpWBYsr+x04Q4+yMnLcF082pzqV0XD2FO/8spRLuWhmYw4aqGwB?=
 =?us-ascii?Q?Hhhj/DIj0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZJpLMWJSJsztTXJrLzWI5o0D8z34GrflPrLNgu1woBIV06kkromQgahRfykuLcAqmZTnL5gXaF3EFz1bq/4IqTzDqtbG9qvV1t4NvePMLCSAuq/8vb/EjgWgGAP8tqrC7U3UXRn2jl8ptPbVTpaQp347IqHNH8xOCKMEWP+zcvzpXV19osmFXgGqX1F3c1Knu7FPAYPp9/IyyDNrla5Y93KRGCoQdCsKdxj4+l71DlG/ME9cqcIrPnyxZ/4tiESw0Z6qscID6T/fIhBiW3XhfwmoXaP4C3Gy/hXlh9EbsJnyo51vqNYM42zDaxlYO/i9XPW2lLCAjfi/KlkEFuJVIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6240.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48ea8ad6-9135-42d6-ab18-08deafad51e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 22:33:27.0482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lpmk935kJzQyCN888uUJfXEVWjXetiZoboIwkq5M8G5UQxib554yjAPqL6kosOCdBKsaj/88J7ys8HZS8gqaxiI5dnicpIlBRrTfd8iP/FE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6614
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778538816; x=1810074816;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QE7gH2yY0EhB8YKn9MNMI3eD4jZN+DkPQO+8/R/nX3c=;
 b=MMU8nVJYsdpcU34BirrWD2q35M6Z+OzIx/cBmog1b/Yp+PSWX1FamfxQ
 YR91pNyd1HZsI+f4G1mIbEmWahdGxZjKBgojJOphoTqtqRS+58NK/pFsU
 Oi5dtiE5W6Uuj6OAaDfEGw171o57ETQeYpGLDiH0bz2xtAgLSDsDt2EqE
 183ZHn1UdFtLkkSQ1p5AzFutnKD9iscgllYJ58oeZ3H4ARoi0SOwro7th
 /nKgs68Uhz4CTrYopln+c8OJhuA30n/wY2kIXAyfdhgzbpeEf3qCOMfXB
 GL8ynXCH43wzj4AinAOzlDZhmrYT6P13xelERzw/W3NG/+/pnYi+2LvU+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MMU8nVJY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 6/8] ice: implement CPI
 support for E825C
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
X-Rspamd-Queue-Id: C3967516F51
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,redhat.com,linux.dev,resnulli.us,google.com,intel.com,gmail.com,lunn.ch,lists.osuosl.org,kernel.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Saturday, May 2, 2026 7:33 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; netdev@vger.kernel.org; Vecera, Iva=
n
> <ivecera@redhat.com>; vadim.fedorenko@linux.dev; jiri@resnulli.us;
> edumazet@google.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> richardcochran@gmail.com; donald.hunter@gmail.com; linux-
> kernel@vger.kernel.org; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch; intel-wired-
> lan@lists.osuosl.org; horms@kernel.org; Prathosh.Satish@microchip.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> Subject: Re: [PATCH v7 net-next 6/8] ice: implement CPI support for E825C
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> ---
> ice: implement CPI support for E825C
>=20
> This patch adds CPI (Converged PHY Interface) command handling for E825C
> devices, introducing a new ice_cpi.c/ice_cpi.h subsystem that implements
> the REQ/ACK handshake and a helper to enable or disable Tx reference
> clocks. It also adds per-PHY mutexes on the adapter and a non-posted
> write opcode (wr_np) to SBQ.
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h
> b/drivers/net/ethernet/intel/ice/ice_adapter.h
> > index e95266c7f20b..fa238a6a0e1a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> > @@ -31,6 +34,8 @@ struct ice_port_list {
> >   * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIM=
E
> >   *                        register of the PTP clock.
> >   * @txq_ctx_lock: Spinlock protecting access to the
> GLCOMM_QTX_CNTX_CTL register
> > + * @cpi_phy_lock: Per-PHY mutex serializing CPI REQ/ACK transactions.
> > + *               Index 0 =3D PHY0, index 1 =3D PHY1. Only used on E825=
C.
> >   * @ctrl_pf: Control PF of the adapter
> >   * @ports: Ports list
> >   * @index: 64-bit index cached for collision detection on 32bit system=
s
>=20
> The kernel-doc says cpi_phy_lock is "Only used on E825C", but in
> ice_adapter_new() and ice_adapter_free() the mutexes are unconditionally
> initialized and destroyed for every adapter:
>=20
>   for (int i =3D 0; i < ARRAY_SIZE(adapter->cpi_phy_lock); i++)
>           mutex_init(&adapter->cpi_phy_lock[i]);
>=20
> Would it be better to either relax the comment or gate the
> init/destroy on an E825C device check so that the behavior matches the
> documentation?
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.c
> b/drivers/net/ethernet/intel/ice/ice_cpi.c
> > new file mode 100644
> > index 000000000000..d5be36c60697
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_cpi.c
> > @@ -0,0 +1,364 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2026 Intel Corporation */
>=20
> The sibling ice_cpi.h added in the same commit uses
> "SPDX-License-Identifier: GPL-2.0-only" and "Copyright (C) 2018-2025".
> Should the two newly added files use the same SPDX form (GPL-2.0 is the
> deprecated alias of GPL-2.0-only) and the same copyright end year?
>=20
> [ ... ]
>=20
> > +/**
> > + * ice_cpi_wait_req0_ack0 - waits for CPI interface to be available
> > + * @hw: pointer to the HW struct
> > + * @phy: phy index of port the CPI action is taken on
> > + *
> > + * This function checks if CPI interface is ready to use by CPI client=
.
> > + * It's done by assuring LM.CMD.REQ and PHY.CMD.ACK bit in CPI
> > + * interface registers to be 0.
> > + *
> > + * Return: 0 on success, negative on error
> > + */
> > +static int ice_cpi_wait_req0_ack0(struct ice_hw *hw, int phy)
> > +{
> > +	u32 phy_val;
> > +	u32 lm_val;
> > +
> > +	for (int i =3D 0; i < CPI_RETRIES_COUNT; i++) {
> > +		int err;
> > +
> > +		/* check if another CPI Client is also accessing CPI */
> > +		err =3D ice_cpi_read_phy(hw, phy, CPI0_LM1_CMD_DATA,
> &lm_val);
> > +		if (err)
> > +			return err;
> > +		if (FIELD_GET(CPI_LM_CMD_REQ_M, lm_val))
> > +			return -EBUSY;
>=20
> The function is shaped as a retry loop and the kernel-doc says it
> "waits for CPI interface to be available", but when LM.REQ is observed
> set it returns -EBUSY on the first iteration with no retry.
>=20
> Only the ACK-deasserted check actually benefits from the loop and the
> msleep(CPI_RETRIES_CADENCE_MS) cadence.
>=20
> If another CPI client transiently holds REQ, should this path also be
> retried (up to CPI_RETRIES_COUNT times) rather than failing
> immediately?
>=20
> [ ... ]
>=20
> > +/**
> > + * ice_cpi_exec - executes CPI command
> > + * @hw: pointer to the HW struct
> > + * @phy: phy index of port the CPI action is taken on
> > + * @cmd: pointer to the command struct to execute
> > + * @resp: pointer to user allocated CPI response struct
> > + *
> > + * This function executes CPI request with respect to CPI handshake
> > + * mechanism.
> > + *
> > + * Return: 0 on success, otherwise negative on error
> > + */
> > +int ice_cpi_exec(struct ice_hw *hw, u8 phy,
> > +		 const struct ice_cpi_cmd *cmd,
> > +		 struct ice_cpi_resp *resp)
> > +{
> [ ... ]
> > +	/* 1. Try to acquire the bus, PHY ACK should be low before we begin
> */
> > +	err =3D ice_cpi_wait_req0_ack0(hw, phy);
> > +	if (err)
> > +		goto cpi_exec_exit;
> > +
> > +	/* 2. We start the CPI request */
> > +	err =3D ice_cpi_exec_cmd(hw, phy, lm_cmd);
> > +	if (err)
> > +		goto cpi_exec_exit;
>=20
> Can this leave LM.REQ stuck asserted on the hardware?
>=20
> ice_cpi_exec_cmd() writes lm_cmd with CPI_LM_CMD_REQ_M set. If
> ice_sbq_rw_reg() returns an error after the hardware has already latched
> the LM.REQ=3D1 write (for example an admin-queue completion timeout after
> the write was dispatched), control jumps to cpi_exec_exit and skips the
> REQ deassert at cpi_deassert (steps 4 and 5).
>=20
> Every subsequent ice_cpi_exec() on that PHY would then fail immediately
> in ice_cpi_wait_req0_ack0() with -EBUSY, because that helper returns
> -EBUSY on the first read that observes LM.REQ=3D=3D1 and does not retry.
>=20
> The step-3 error path already falls through to cpi_deassert; should the
> step-2 error path do the same so REQ is always cleared? Deasserting REQ
> when it was never latched is harmless.
>=20
> > +
> > +	/*
> > +	 * 3. Wait for CPI confirmation, PHY ACK should be asserted and
> opcode
> > +	 *    echoed in the response
> > +	 */
> > +	err =3D ice_cpi_wait_ack1(hw, phy, &phy_cmd);
> > +	if (err)
> > +		goto cpi_deassert;
> > +
> > +	if (FIELD_GET(CPI_PHY_CMD_ACK_M, phy_cmd) &&
> > +	    FIELD_GET(CPI_LM_CMD_OPCODE_M, lm_cmd) !=3D
> > +	    FIELD_GET(CPI_PHY_CMD_OPCODE_M, phy_cmd)) {
> > +		err =3D -EFAULT;
> > +		goto cpi_deassert;
> > +	}
>=20
> Is the FIELD_GET(CPI_PHY_CMD_ACK_M, phy_cmd) conjunct here ever false?
>=20
> ice_cpi_wait_ack1() only returns 0 with asserted=3Dtrue when
> CPI_PHY_CMD_ACK_M is set in the value it stored into phy_cmd:
>=20
>   if (asserted && FIELD_GET(CPI_PHY_CMD_ACK_M, phy_val)) {
>           if (data)
>                   *data =3D phy_val;
>           return 0;
>   }
>=20
> So the ACK sub-expression is always true on this path, and reading the
> code suggests a NACK/ACK=3D0 case is handled here that isn't. Would it be
> clearer to drop the redundant check?
>=20
> [ ... ]
>=20
> > +/**
> > + * ice_cpi_set_cmd - execute CPI SET command
> > + * @hw: pointer to the HW struct
> > + * @opcode: CPI command opcode
> > + * @phy: phy index CPI command is applied for
> > + * @port_lane: ephy index CPI command is applied for
> > + * @data: CPI opcode context specific data
> > + *
> > + * Return: 0 on success.
> > + */
> > +static int ice_cpi_set_cmd(struct ice_hw *hw, u16 opcode, u8 phy, u8
> port_lane,
> > +			   u16 data)
> [ ... ]
> > +/**
> > + * ice_cpi_ena_dis_clk_ref - enables/disables Tx reference clock on po=
rt
> > + * @hw: pointer to the HW struct
> > + * @phy: phy index of port for which Tx reference clock is enabled/dis=
abled
> > + * @clk: Tx reference clock to enable or disable
> > + * @enable: bool value to enable or disable Tx reference clock
> > + *
> > + * This function executes CPI request to enable or disable specific
> > + * Tx reference clock on given PHY.
> > + *
> > + * Return: 0 on success.
> > + */
> > +int ice_cpi_ena_dis_clk_ref(struct ice_hw *hw, u8 phy,
> > +			    enum ice_e825c_ref_clk clk, bool enable)
>=20
> The kernel-doc here and on ice_cpi_set_cmd() says "Return: 0 on
> success." but both functions forward any negative errno produced by
> ice_cpi_exec() (such as -EINVAL, -EBUSY, -EFAULT, or -ETIMEDOUT).
> Should the Return: documentation also cover the error path?
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.h
> b/drivers/net/ethernet/intel/ice/ice_cpi.h
> > new file mode 100644
> > index 000000000000..932fe0c0824a
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_cpi.h
> > @@ -0,0 +1,61 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2018-2025 Intel Corporation */
> > +
> > +#ifndef _ICE_CPI_H_
> > +#define _ICE_CPI_H_
> [ ... ]
> > +/* CPI LM CMD DATA register (CPI0_LM1_CMD_DATA) */
> > +#define CPI_LM_CMD_DATA_M	GENMASK(15, 0)
> > +#define CPI_LM_CMD_OPCODE_M	GENMASK(23, 16)
> > +#define CPI_LM_CMD_PORTLANE_M	GENMASK(26, 24)
> > +#define CPI_LM_CMD_RSVD_M	GENMASK(28, 27)
> > +#define CPI_LM_CMD_GET_SET_M	BIT(29)
> > +#define CPI_LM_CMD_RESET_M	BIT(30)
> > +#define CPI_LM_CMD_REQ_M        BIT(31)
> > +
> > +#define CPI_OPCODE_PHY_CLK			0xF1
> > +#define CPI_OPCODE_PHY_CLK_PHY_SEL_M		GENMASK(9, 6)
> > +#define CPI_OPCODE_PHY_CLK_REF_CTRL_M		GENMASK(5,
> 4)
> > +#define CPI_OPCODE_PHY_CLK_PORT_SEL		0
> > +#define CPI_OPCODE_PHY_CLK_DISABLE		1
> > +#define CPI_OPCODE_PHY_CLK_ENABLE		2
> > +#define CPI_OPCODE_PHY_CLK_REF_SEL_M		GENMASK(3, 0)
> > +
> > +#define CPI_OPCODE_PHY_PCS_RESET		0xF0
> > +#define CPI_OPCODE_PHY_PCS_ONPI_RESET_VAL	0x3F
> > +
> > +#define CPI_LM_CMD_REQ		1
> > +#define CPI_LM_CMD_SET		1
>=20
> A few of these macros appear unused anywhere in this patch and through
> the end of the series: CPI_LM_CMD_RESET_M,
> CPI_OPCODE_PHY_CLK_PORT_SEL,
> CPI_OPCODE_PHY_PCS_RESET, CPI_OPCODE_PHY_PCS_ONPI_RESET_VAL,
> and
> CPI_LM_CMD_SET. CPI_LM_CMD_SET (value 1) looks like it was intended to
> be passed to FIELD_PREP(CPI_LM_CMD_GET_SET_M, ...), but ice_cpi_exec()
> uses the bool cmd->set directly and leaves the named constant dead.
>=20
> Would it make sense to drop the unused defines, or wire them in if
> they're intended for a follow-up?
>=20
> Also, the commit message mentions "enabling/disabling/selection of PHY
> reference clock" and CPI_OPCODE_PHY_CLK_PORT_SEL is defined for the
> selection variant, but no API in this patch uses it;
> ice_cpi_ena_dis_clk_ref() only issues ENABLE or DISABLE. Should the
> commit message be trimmed to match what the patch actually delivers?
>=20
> > +
> > +struct ice_cpi_cmd {
> > +	u8 port;
> > +	u8 opcode;
> > +	u16 data;
> > +	bool set;
> > +};
> > +
> > +struct ice_cpi_resp {
> > +	u8 port;
> > +	u8 opcode;
> > +	u16 data;
> > +};
> > +
> > +int ice_cpi_exec(struct ice_hw *hw, u8 phy,
> > +		 const struct ice_cpi_cmd *cmd,
> > +		 struct ice_cpi_resp *resp);
> > +int ice_cpi_ena_dis_clk_ref(struct ice_hw *hw, u8 port,
> > +			    enum ice_e825c_ref_clk clk, bool enable);
> > +#endif /* _ICE_CPI_H_ */
>=20
> Is ice_cpi.h intended to be self-contained?
>=20
> The header declares ice_cpi_ena_dis_clk_ref() with an
> enum ice_e825c_ref_clk parameter and uses struct ice_hw * in both
> prototypes, but it does not include ice_ptp_hw.h (which defines
> enum ice_e825c_ref_clk) and does not pull in anything that forward-
> declares struct ice_hw. ice_cpi.c compiles because it includes
> ice_type.h, ice_common.h and ice_ptp_hw.h before ice_cpi.h.
>=20
> Since C does not allow a portable forward declaration of an enum type,
> would a future consumer that includes ice_cpi.h without first including
> ice_ptp_hw.h fail to compile? Should the header include what it needs?

Actually all IA concerns are valid.
To be addressed in v8.

Regards

Grzegorz
