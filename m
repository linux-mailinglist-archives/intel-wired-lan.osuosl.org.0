Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2143E6FB46E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 17:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E3D48138F;
	Mon,  8 May 2023 15:53:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E3D48138F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683561209;
	bh=sVNcNw0KiFj+N90GTXSWh52jUQmxrNpJN4JAvs6wGEI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AYlZL8EmC+EWkWeDzrt1c5ZjLINoYSYjVoNHSA7idDaW5rRHiTVqwcXBu4n9+S9y6
	 OpW0mJ//d/QRvkIIdtbIHjA/eIohYROYk9qkqwKxikr/PwxHqJ7gogMJvXDi3ZFrqy
	 2IjPMGd9oKm0G4EnY7PgJftQjaGX3oqDtrFDEb6CIblka+q71CqTaziETdx/jUASYb
	 1OIzDWSWuty5bUfA+COZNL+xpT1bo4r6LyQeJnGKFCk0uYN6PuBcuNfHmNB+UyDn+W
	 yNJyLiqCylHidku09wyf8p9vNrosUqOjtIqGE/BAxZOVw50eXs5dJYexCcghEESPvx
	 SmV/TsZGgGwqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDD9MzBhW-mU; Mon,  8 May 2023 15:53:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7396980BDD;
	Mon,  8 May 2023 15:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7396980BDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA46E1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFDEB415D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFDEB415D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JygOQI-jVdL8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 15:53:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AF8A415A6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8AF8A415A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:53:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="415244073"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="415244073"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 08:53:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="768128919"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="768128919"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 08 May 2023 08:53:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 08:53:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 08:53:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 08:53:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RPwddxpa6lEYLhX3eDyS52MbN3ynmnhbKplgxVtWbeLhEJy62zvD2SI3N1fwNK6wu4qt8496SQJUPiz0KAxWXJH2gSearBjJotF9fecrWz0X4Vpo11rNNhQMrhxpHCELB8A2RbsPfqUAyGApYwFgr5qk62QaQk3/ktK1Aw6wd6FDpinODwo+1YMemHpcAP/Wd2SZ2wZkskGuIcjOnrDTlOqP4JMiGYy/HcLdvUewP43LvYv3HZ1uqyBo2nf2jI98Q9gcXkyYRr1QlKuP9lZb80k76y7ooTgc29vGnu3Qdv9ZEta3hKZq1kngdbN7EFlNLVaUx6CEPZ4YWCWm47S70w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKjoVKjGlciUT4kJtSvqE9os4u1JltdwTd0MvyxmVwI=;
 b=OOi5FWfRvD6a49eSl+yYkwXjPnaMY1Ek+udXbCM/cD5L+KlG9cAioDmEpJwNuk3o8wNL5W3Z7SjzQ8bVCz9QKypD3HZyzKwelinWqGeFzGvlkwJEmkCnFwG4Y1Umr1mHvw+zYcuUNNuFy8yFdezPMkfQj5UNMTkrzGVxn2XqovQRdUm6zwitdZZlq8m9tAy7KKhLFOqoDk2qEWoT5or0vGYZA5+4pTSYH0I/A3Q/50Cl0pvcga+3DNqcWVxp+IjWZwpmx7NmW9HLRemd0KzDvRFDuf9Vu2u3NunBYgOgdzu1aNNwhRcJzX4+K67aogwnnxNC3EvijEstqFp/cqrtKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BN0PR11MB5712.namprd11.prod.outlook.com (2603:10b6:408:160::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 15:53:15 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Mon, 8 May 2023
 15:53:15 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/3] ice: update
 ICE_PHY_TYPE_HIGH_MAX_INDEX
Thread-Index: AQHZeHD+bbfNetW+Fky7j59R+Pg8z69QmQhw
Date: Mon, 8 May 2023 15:53:14 +0000
Message-ID: <BL0PR11MB31220C208BA954F2F9D28E38BD719@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230426185047.725910-1-paul.greenwalt@intel.com>
In-Reply-To: <20230426185047.725910-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BN0PR11MB5712:EE_
x-ms-office365-filtering-correlation-id: 2823787a-4b1a-4cb0-f58a-08db4fdc5542
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pXo3Rh35hSmUAYG3Y0HJUSsWqlaBziO4qUHHLesfVIa8+WTUwtdleksQ5WP0hgrRpmtGMxOJbcS3RmTFFhFq078CW9pGoiftp7fYfiWSlXHqJUzGWbIeev07aFGD6xtiBW4fcGjR7OPgJWOFDHNYOC5sXUFZR0BIRAhi8nK8Ts8feIWwxCZoeP3PWnqUY3gXgkk8zpBuoKKhn7ZKD3EPvhWhPHA757Mc9o8igVWpolqKP6mMjpUWJ3e6LGTkRiZupFqsOBUy6GuzruVHcSCng6jqRoruJf0I7yiOOQCpZh9bnr2FTJOTyQ+gYOv4Prjf/DAuMbe7tT+O6TmLv5ED4fpzpnCSQdrcEdNceXsGBnuKhdiT9gTAPWdOeURpyVoXRdT2ZjfWmWJePlZ4coNYdsM22zZpEsgVD3taAzosptPWYXR2oNJPmsE47tKPL0F4T1Hdd0pYccIDZA7dg5FvHfJRrtFqx5z0ABTVy9CiSvY4ShvVeMHZ8aaGp9JkVxTTUCFHNwJjOMCCo/ixgCNu2tzVAuKY+hvzPiKFNkfsEDfkILM6l5eJmuqaBOIBOqcsJdzmmdMYwCxXHvuhlIMK7EVNQYsd/rY72NIXllZDCyHQL38YX3f1ekn6bb+DBFtf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(4744005)(2906002)(8676002)(8936002)(316002)(478600001)(64756008)(66476007)(5660300002)(66556008)(66446008)(41300700001)(15650500001)(110136005)(71200400001)(52536014)(76116006)(66946007)(7696005)(53546011)(26005)(6506007)(9686003)(186003)(82960400001)(55016003)(83380400001)(38070700005)(33656002)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9/cytDQQ/x7bpHjfE7If4ym28Y2ed8Jm9jyTW6icMGnf5gI/BFcuijjqQNVz?=
 =?us-ascii?Q?WS5QIDJ1XKqUquckEVTaaNJ+7BzGIsWZfrDr9uCLVo1O6JDP9PrXBuGPgDlG?=
 =?us-ascii?Q?Cm7y/1vNasai7bsIAoBKGrgIZHxXTqP7JsqC9IxewWmIMwxWgNGU0GuBEwFJ?=
 =?us-ascii?Q?NEbnnUjeHK1WSaPDoVJ7kbHC41ZRJMsewTFINeNjYIJDXPyPp6zgLEZrVQkS?=
 =?us-ascii?Q?gpwWrxEDhxURUFYDlsX/PCnM4GL++WyNkoInYPJjUgYCL64zEIS8MrRPTAix?=
 =?us-ascii?Q?EWD4Ud2YqWTOPok7b011ZhBEIRzPcV6A2xsmIM8r03r2giYP2hRL3DiaR5mz?=
 =?us-ascii?Q?OCvkaFPG2nZI2znsDoVTb4QlBfMjfESuAsZChBuEQhLrU5gG3CZVBblM9Xhh?=
 =?us-ascii?Q?K6x1Nb+/X6LLzq0cidZEiWnUkyac6BpK4u8228l0dVRRMII8NuhUUoitgSMX?=
 =?us-ascii?Q?Axf0fr7j8Lrzzx0WO9Hid9yb1naWJ+HTiiHI7D+ErgEWtBgDv/1x8oXZW/Jl?=
 =?us-ascii?Q?HrtTYJgfHXNJQp22ruuxHHIM75vAHB1QBcUxtLsjC5h/GxNsUI70y7mkAAqY?=
 =?us-ascii?Q?3gH98GVFV2seFZ2OOFNo8aO++CohznM2jAngiJhZXHxpHvNoS9G3cO/HfXKs?=
 =?us-ascii?Q?SzuahF/TQbERg6i817zUVTCxZCVrOZpxxth0IolkDbp+w2KQfPx/rUDGXF3l?=
 =?us-ascii?Q?K9omHodhujAoQv60NQFTgzMG3hatCANY5kU+c938f41BJsqBNqap6VbCFHaq?=
 =?us-ascii?Q?aQ0Asyd2oBc7qjTAsHKR3Aha4ecJ8gqrrWBho0XktHZIe9J3n1aZaYrm2rxq?=
 =?us-ascii?Q?BD9xPLaWBp/SbUEhGGt3ZQFKMaOlNm9dQ5IRR8+m1/ZdTQlq3OVM+fb/KP5Q?=
 =?us-ascii?Q?i1YYeVe2mO5NdrOSrWSoAxeI5P41iOTapqm7MmiVBR6uz31P4qDLX0HGJDyd?=
 =?us-ascii?Q?PxUneSPpXdrvhdE2AHBNnCbbAb2ef1kFuMl6ds7H7MuB1YvIK0YQysm2JpxH?=
 =?us-ascii?Q?/FpNkgAJDv84yk4KhVbqe4inzrbvhSdqnq2a4fj7Dd8lnaUE3TwKsU5sGHFY?=
 =?us-ascii?Q?1UIV0T/8isxe/cfG1nq5fB+7ls8wUdV1XtluPh3AB5T9xaQpoYSZN9vnPQPQ?=
 =?us-ascii?Q?gUr4iFC4o2Sm0iN8wqAzMZefwJbvHMPwyL4/TWLQI3R/X5iClMLZuVxQP/sh?=
 =?us-ascii?Q?xPfY1ESH0XTGq/uVvdPQgnWsmNVAnxT2uN0a9NHfMGM3FwLTGsuy2KUIY/rB?=
 =?us-ascii?Q?a/dQaTJFZT75fENMVvnTECzhRTkg2zcPtyG2cBGlZErPOv0AvUBd3a/zfcnM?=
 =?us-ascii?Q?SZ8QJ+hq/An2ntHoJeRPpVeKFOd6xpG3ld/uirEAUyjKg/l0ncAQBZPkYtsF?=
 =?us-ascii?Q?x72uzq97bJoNh56Eyg2VMxc+nu/Si2NkcYHhsLviiBSDJrgd/pN8l4jMjYBl?=
 =?us-ascii?Q?RjEPGWV19fWLoh1KI9x8zSFrNhMYk1zrJEYMR6YVwMC6QrXrSKF5nfLLVYX2?=
 =?us-ascii?Q?n0muFBv5sd198WMr8yZjNpuvfopxBZe7rW5a9tRqGEqT1IqzwT9XMLLHVzLG?=
 =?us-ascii?Q?qitZZyAIF4hG7zPDlkIV9MXjBjXv90q57q2ZsGy3vKtj6JHMcytCg4uWmJ9K?=
 =?us-ascii?Q?YQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2823787a-4b1a-4cb0-f58a-08db4fdc5542
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 15:53:14.4427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B5M3xaWFK36TZCcwjb5wmjz7Sr8htZxWKSnwjIwtmkDEQH2ObD//Z9UBfY6l6EG/3bebUFgh8keKio8Mfe0FkgI68aGAip2CbVWERe7y7lwiGSEQVEXif+3GLMhbyKOr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5712
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683561201; x=1715097201;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FKjoVKjGlciUT4kJtSvqE9os4u1JltdwTd0MvyxmVwI=;
 b=CsjMQK+vPce3rANhIuJrBKRHKX3Iq7FhMKRVZjiLF47B2fUQ6j8je/YW
 slEDtIUd1Czm8SqgEbcPLWfkYL5gvJdAaPzlz8e4DniNenV7pAl5Gdcw0
 f2ANzrDxaPfnthZi+1TvrrUalP1qkpDbt5aH0hBaI9fzdU8L6bRKotaMC
 wGQJ45vDGIeDmZVGCZjBQoVtDTBBXOGY3wlcR+0+wwhJZ+a+a0hvqQ+An
 9w6WVpIq3IEVHrkpR5ru62lowGOerg4oeN/9VUQV9o8Qz2KVGobJAkyD6
 s8JkMNctMgxYz9gAJS+BXNu2b/lMIKfVKKIV7IXcoPDbK5riMxk71pazS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CsjMQK+v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] ice: update
 ICE_PHY_TYPE_HIGH_MAX_INDEX
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Greenwalt, Paul
> Sent: Thursday, April 27, 2023 12:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 1/3] ice: update ICE_PHY_TYPE_HIGH_MAX_INDEX
>
> ICE_PHY_TYPE_HIGH_MAX_INDEX should be the maximum index value and not the length/number of ICE_PHY_TYPE_HIGH. This is not an issue because this define is only used when calling ice_get_link_speed_based_on_phy_type(),
> which will return ICE_AQ_LINK_SPEED_UNKNOWN for any invalid index. The caller of ice_get_link_speed_based_on_phy_type(), ice_update_phy_type() checks that the return value is a valid link speed before using it and ICE_AQ_LINK_SPEED_UNKNOWN is not. However, update the define to reflect the correct value.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
