Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 654C8BA9364
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1572181141;
	Mon, 29 Sep 2025 12:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hjvil4Bu74H0; Mon, 29 Sep 2025 12:32:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45EA18119D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759149132;
	bh=b4kyppz4WaPOBl/p6lO6q2wD5fYmB68+0AZaSfnxWIU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BJ4GYZHx1jxqf7JCp8Ldp+qdwEv+9VmHr2BfIXflE6kQJY0vHdQxLCujyP+Cjfbr6
	 vhlKwPu0niGafFc0BK37Nxy+2KT5aTtvpvq2nXE4FUYtC0L031ijJ3aAqZg4GxDq/1
	 V5/OJRz8TZ1PCCeybOEd5dYrTYh2QAC7kbe1CSPLtCd9TDFYl4NsZHFKMI9Fs3vZaK
	 JK7c0WabAgCfRlIx/bBdPuVNdwDAAILs1NsM2IwzKNmPdF+VqJu28ek8rPhqmGS6Uz
	 z4zMT0fAMScwFuXolnEUZXoN3C9DrPj8qlL5zwStF6ocA+yLqvejXwVOMS6lAqQ9gM
	 uTU60dbIXed0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45EA18119D;
	Mon, 29 Sep 2025 12:32:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C82B194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A2A7405F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:32:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lsctBoSVGexI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:32:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5FDD440068
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FDD440068
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FDD440068
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:32:09 +0000 (UTC)
X-CSE-ConnectionGUID: RBCtCn3mQAm9fPpqUnkpTw==
X-CSE-MsgGUID: oQi8MoxYSd6TQc41yorpHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="72751251"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="72751251"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:32:09 -0700
X-CSE-ConnectionGUID: Db+xkkZfRmysYEaTkdM/gw==
X-CSE-MsgGUID: qtEGdK4sRkG6Mv5AEyW6IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182516221"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:32:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:32:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:32:08 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:32:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XH0aWXfPDt8TWClhJ3+g4+OSUcJuorALibH/y2IdV/bWqvPeVnIpS8053f+1/lhZupmN9LpXuLsbc2nRtRVc2dckHQkAH99vae0H9DOr25fnjvjMHPmfSpMvx01WvRynf+2CTLPrQ47C1MZLa4vWyP1zhxKfIiAPqRR8irjhT2ekE72GOXjipuDMkoUUgP2K1IKsvUPNFtN0XxvDPTGO31x8NFCYAxt3QbCiQ0vparUvAh9uc8zuN8Fx+SKmwi5Ckz6ugPA0B/sH9n14Gka9RQYuQDNfUoAc5ZgEb7A5Jbmdr8uM1Hd0RQD8feyAwT50dIeXsl8JjYzR2PLnnX5OMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b4kyppz4WaPOBl/p6lO6q2wD5fYmB68+0AZaSfnxWIU=;
 b=fG/MQsPea6h7XAUw9Z99ObF5CCKzWFOQ2a0MOICQ6fd2La0MlaM0/4wFFyP+LtLU0USA88yVJC4dpO+c0pJvu30rfmIPYYDsebAxxod9jPtZlxtb1ImH19RyE5NLNFsJoV6WAHyWOS/zB64k03MwOLhB+ULCth8g59/tjumO9QmK654is8XvUADNGkKq/kBppeOEsNTgC50G+2wCLhuC8mSz9Spk+jMhLvnauB3O2wj3rrlM8k7P3Fra8sh7oCOftXGNzTDa80lTMcTlJfsYkin+qL57iBgQyvzyj4ZP1H7rKQgxae2YpQtRLQkyXFMpsal6aawOM38E/xE4JTWzDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CYXPR11MB8729.namprd11.prod.outlook.com (2603:10b6:930:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 12:32:05 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:32:05 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate
 call to ice_deinit_hw() on error paths
Thread-Index: AQHcI+egPztbaoyrUUGejH6XaG7kjrSqJV0w
Date: Mon, 29 Sep 2025 12:32:05 +0000
Message-ID: <IA1PR11MB62411B0DAE48D3E2FEC4C6768B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-10-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-10-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CYXPR11MB8729:EE_
x-ms-office365-filtering-correlation-id: 55368cd6-ea23-4b65-47ed-08ddff543308
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?h7tE9yld5oqsCNBKvF0yM8R2USmAs3AH5q+TCJugegeltFYEA5qprLIrrnkQ?=
 =?us-ascii?Q?dZweaf5OnuH0j4Y7xsNru9/kkiGqIEXggpHhUY1Ny/8UvSKHcQaa84C0Wyc7?=
 =?us-ascii?Q?RfOvnOBwcHEVK+s0OuZ3DV+YLtCDTHPe7EnPRdcF8NQ21FoYvrn+T6MvdTGX?=
 =?us-ascii?Q?Nee/Vy3R+0d66foN1KYzlxb1AnsrIY1eqFIH1Fe7LaYAHCGf7W7S9Rbom6th?=
 =?us-ascii?Q?xz3Ee2Gq35QpjTmoVsWqzOEwytw683fW2DBPX4FQQTIkC0OylrFDXnk3Nrc9?=
 =?us-ascii?Q?rGRCjIFk/K7HBjUaZJEc+ufnY4h8nzrq193i0EiB//q1jFwVTvQ47TPo1C0d?=
 =?us-ascii?Q?srSRB1PWozuXdCvDcLZ8llj+gPclLp2A33dXIwSW8dx16nRt5F5pKqyVQxFT?=
 =?us-ascii?Q?K2Yia4dP5UsWfEOpoo8SOBuiCLeoeFnR4RgDqlZWXk5MI7UvN2v7pzf+5mOn?=
 =?us-ascii?Q?m8KkKQWc3+Ig+OOlY+VZrJBhDm/IiNBT9JjGxicimfTo50kC4woXyZSQsWWC?=
 =?us-ascii?Q?tMX95zEeEyG/kPlCbIQsE/qGpImxBFf3Il8leGBIzBETHv+YGlGnp0oDrwvP?=
 =?us-ascii?Q?qTEHZP8uiZF0raMcacgG8mUX0sBIHWcXaF1T79WlfGWF8Rw/Ftu+TwLjeOUP?=
 =?us-ascii?Q?TMOy2lAgAfEgEsILoJ+fep0kJarhbak36cD9jiuFNH/1hgiTL3RujMFmgfrs?=
 =?us-ascii?Q?8cDpghNRV2GUlIQelwlbf/fw8G1TO7Qlw19bfdoIMdIhOOCmouT8gSmBFNn+?=
 =?us-ascii?Q?7J66gaDw0kGcBwtPPZ6aCUFavDMauhjcLrIocupRny7pNj4MXcIJHGmjpq4B?=
 =?us-ascii?Q?GE+o8RwX8kf2LruWtC5Et7NVPsnXMBCDXvsJVsE8vDY1hh2m+Dp3r0B2ASIP?=
 =?us-ascii?Q?N+vJgGUwP/E8OyOMIIe3s5znfeplMB4xMBa/54/UpClpcc1xIXWfzPlE+Ub9?=
 =?us-ascii?Q?dnpdpa+OUu4KQOdAUlMQLWFHQDsFFTPwozd/QDXFde94m7Ozg2e6DU2BQs+Q?=
 =?us-ascii?Q?hOzJaOMEsNFi9OKedEz33a1+RlBFn7B8PdjB96krjHmbFxTrNZ/BdZbkDYlW?=
 =?us-ascii?Q?lAnrgVXuQ8VXj0lcHmVQAHYTuJtmz6o64HRJIwrgFkHnTu0feyATfgmHKIC/?=
 =?us-ascii?Q?3QJQHm3pDCWi49AnajWXj5fhPtr5/BCH2k4lQL6LJA8RJnus5XsfgEGTniD8?=
 =?us-ascii?Q?eD7SDD5A1/BQw7U881RKl1ApoPrEvmddUZGdGsT2phPA2h8fWrgZnKm7uBO2?=
 =?us-ascii?Q?np8Z1RgncUCUBHkeCcHTmZvU0JUjl260YvitV8vbcfcE2ODVLrxZR05gASxn?=
 =?us-ascii?Q?x7Z1esHPrE5tMpgVq8W+ZWfNQlZismcSMuDmCBxbXL70AOMAcXkQFcMLJfpI?=
 =?us-ascii?Q?BFKvfJ28kKyqg23wFvVbFVmkC9GKLkK0nB0qVXG/V+vCCn7oznV0jM2DxeqK?=
 =?us-ascii?Q?4Vr6FhAunuWCzPaWYK95UpaiRSZeIN4i+l0PJcQc8Vph5uSczr7Sd9yP/IGU?=
 =?us-ascii?Q?dikUxgjUSFX849TcIlgfXFGGI4ZkvtnHIo9Q?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jSUvVJ2VXdp9uG4Wu19pnYUK8M3i/GNPRu7U+8wutSLgtDU7j9qBUidr/HJ8?=
 =?us-ascii?Q?J8yrTwXpUu1XtyYR+GhAyX9nAAj+jOSRUYK+bZNgfahH0rFoCrn0w7cxCKP1?=
 =?us-ascii?Q?xqoQbJIypuVDar48y14dzCCLrnZiQC5shz7Vikf8FzExfpYhfXRvc1HZiuYb?=
 =?us-ascii?Q?nGkxe2+VhiPFSurJHZEQo8UJls3meUnwuqqcgubmLQNkTDgX/Iaac9BGT89I?=
 =?us-ascii?Q?Or6goLgU551wwIzfMCS6Fj7rDM0jVdt5ab/wdD4sM51cLOegVQuhAWU4FQFg?=
 =?us-ascii?Q?EU5M8OKLxKrMlNddRsbOF4E7dFJ72rXBodkwwz8IwsWvTPaYFhAmOnXmchY/?=
 =?us-ascii?Q?b+bQ3zLZoYmyWK7lptqbOeLc+e9/+y2Cmc33bHuuHJ41Aj1L/iiDAwvOkcGu?=
 =?us-ascii?Q?iwRYFR1VCxN9sfFPOX2dOULjDV5u6RoS5usmjhty5ceAhKBOH5BDUkq6kSFd?=
 =?us-ascii?Q?DbDutg2Jem02vxJ0bF84RQLaySfeWkXT4ASMY6POLMXFogMk+OUPZMtznnQs?=
 =?us-ascii?Q?DBgbAvIi6jvhzoJpkvZxEq9PtTkz5j8fVkpMIWshaF7/ti0ZpA/X0jr34ATr?=
 =?us-ascii?Q?cQ8vf7i4rQmPgUt7lW7MAes2oz4+ijAnqYy89SeJ0D77eFa26zPNlQj1tMAc?=
 =?us-ascii?Q?ZcKqf/lLmqPFlxIbAIVeWsUpOdOunp0PRcCHnn2iLDl5X92Q6Uy8x1tMtrY8?=
 =?us-ascii?Q?LpkaxhI5wWpcD0bqsaBZbbtKHRhv/dFv/gvIQCYwyFLc8pkwEi6bOxxfvZAg?=
 =?us-ascii?Q?e5HlPu7TYGIe+B1fwlk8RMgn7LeArxWURxWBCWFIWDRGkjmhxhvNvIHWlH+c?=
 =?us-ascii?Q?Z54Y32JCpox/xH/go8IqeWkWh4s9ls2e02s53Chflhxt21TPnmIU07fMwFU+?=
 =?us-ascii?Q?OZ0L0YnXPzlerhDV2ZF6joRVM1Zyj0Bq8ZkYyUNNG8jTq8Y1rLn6GQrnDW8R?=
 =?us-ascii?Q?jpR9DOa6FPhAwDwizfujbOjcxREakbnKqHzzJLXpj9SHJazyJpI1d9RqJiyc?=
 =?us-ascii?Q?iUqjV2Rbcg90m+2jz4tQ1g8ClVGCX3AplEa5kStx+tkObw2vlgjvKMtvjh2c?=
 =?us-ascii?Q?fsscmuEjnA2vLdr7ke2vgNKIq8r5W1LexEw5qsm9KBr7aiUbVId82p6YcwVm?=
 =?us-ascii?Q?54axzLrSQwaTiYvPdvVzvBSkJFB1exUXNqw0kU7YX9GhYgR4pOkv1VPJkVk8?=
 =?us-ascii?Q?ZSsTe4cJqntrLsRk60wjC7aHTH5TxLsUkn0RmG/KPYLYWY+3hJ4RcUV83VU8?=
 =?us-ascii?Q?ugGHPxWnQtKs6kqHcQSiYHoI4xPfBXSyBm0cTZiW18Q7c9FTruEi69lhOBPN?=
 =?us-ascii?Q?wjueapDm7TJ85dREmQWVilmJwqPaAGjqh/HmMP5hlucZj7R8fpUECGwJGAQb?=
 =?us-ascii?Q?ViWuRcetPtqdqiDD5hmtddYDW+v9G9kpl5PDJa7TrBFnAEmWlnN48qsG3JWX?=
 =?us-ascii?Q?QK4xWka1GHVleVychgBYS9s+PD6CiDf3ajPedB3j1ZDYxK5KSBGN94RyCXct?=
 =?us-ascii?Q?+3rQj+7FD/+PXmDrjc7hysFXhU2OBt20wLHjvj+YBpOryYY0NkkO7lf80oCD?=
 =?us-ascii?Q?sNahiyCuepPupfBCBaqfuPEf/SPguGEZxoJOxGY6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55368cd6-ea23-4b65-47ed-08ddff543308
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:32:05.4649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dG1T4TU70sRJ+4VUYJX2+YYRTXQ76y4qJcAuQhKJyGBzVIhGvkcDXHleIDTybDp1ndKwPBlhMA6UwefbzxmfXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759149129; x=1790685129;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b4kyppz4WaPOBl/p6lO6q2wD5fYmB68+0AZaSfnxWIU=;
 b=fXvPmakisZW2hU29CeOSnUz3MJo/y3QNjCdIinI4D18KgcuVtbodCY90
 mfUAhUnCocVGrr/xowSb2HKkB7y/olMpJSOOugfV0a8HKhhGNoaEyFPWf
 vSP2356Z7shbkXbUGUgyH734KQP4d2OIQpR1cbubcUBkOTfqDmxkLMAyv
 iFL+Yr2cRePi2ZAKG3LQT0XwuyyqABlbPTV8qX7cUUtZua583PXff4mvt
 AjnijJlbJFEee3kB397OPt6iq//9+DInfu6XXpRlMHsbO/qcJ8RK4BZHW
 RCYGe/1YLlQe70B+yNd0HJd4lCAZT0UOg1WjJDlJ90Auo6DAynWLnIpKM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fXvPmaki
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate
 call to ice_deinit_hw() on error paths
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate cal=
l to ice_deinit_hw() on error paths
>
> Current unwinding code on error paths of ice_devlink_reinit_up() and
> ice_probe() have manual call to ice_deinit_hw() (which is good, as there =
is also manual call to ice_hw_init() there), which is then duplicated (and =
was prior current series) in ice_deinit_dev().
>
> Fix the above by removing ice_deinit_hw() from ice_deinit_dev().
> Add a (now missing) call in ice_remove().
>
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Link: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250717=
-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com
> Fixes: 4d3f59bfa2cd ("ice: split ice_init_hw() out from ice_init_dev()")
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> This series obsoletes patch by Jake Link:ed above; already removed from o=
ur dev-queue
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
