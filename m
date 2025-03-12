Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31332A5D64F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 07:35:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E343140837;
	Wed, 12 Mar 2025 06:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rCpKtLditUR7; Wed, 12 Mar 2025 06:35:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EC994082F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741761320;
	bh=bVa6xfAryl7d7fDqM6S2PNGoQXMomXygNtvZP47n7EU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kwVa3eRipYoduRX6lK3LdHGKV2efl8TTVZQU2cNlhc0tti9iMydf4q+MHvnj4bCL9
	 LJ2N288+4ksDg5lu8p+3nmiyDIvRLUph1ebN6KVKcGpXvSwDN9Y+/baYQlBTQaTbrn
	 sVRTSX+HTEIxRG9Axb8vnyAVHsWouF62y/pyqC9S/8Xr+fAD7vvnI6tevr27kboWQm
	 ul52+fW3fsZzi5RNsxuI366kZPhjMDH7TIce3nHEgZdSI7QUNXMrUTIyeWnXJxfksU
	 XmL1vhxmlWTckx0G0RLr7wUaq+9FfBxHJlA1q+8BTFra4yJ9Eva35MRI0l1R8gS+rE
	 JEXEFl5/UKvdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EC994082F;
	Wed, 12 Mar 2025 06:35:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84ACB1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 720096087F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:35:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlN9gxwT6jJP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:35:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B49D5607AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B49D5607AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B49D5607AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:35:17 +0000 (UTC)
X-CSE-ConnectionGUID: jTIJJgIERO+/ckvexSOJnA==
X-CSE-MsgGUID: 1mZU/W7+S62dfXGAQ1Dh0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42738887"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42738887"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:35:17 -0700
X-CSE-ConnectionGUID: cXkOB4wWS/GE7FOo+0REuA==
X-CSE-MsgGUID: QxwK8hs3T3W/RpmkULOMzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120238303"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 23:35:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 23:35:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 23:35:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 23:35:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fTrkceZVsJlfImkf/BqNWJGfGujE50tgk3HfqPG+yWwhP4vjAd9gOr8kwSvoEmbInYABXUMR0YiinIJJHFF1+/jgoF0KOPUVN8yH/NhgToyyedmNrPiN79VxkDfNKRhjmOfxM3fLjxIqCzAWoDoRKwQ8lnTl3br/sDXoRl/P18IuYMYHX2JqXIIUlFszCy/GIBnZ0jNy9eQpQ/Xk4N72IuOCV/db8Jo9WF4/bhx4peAlMaSBHlvqbKSQzmVD4h6/wanfswxbICIavPkcdjvuE7bhmzmD/FeFehLVHz94cwBK7mCX3ePlab8rii54h+BBl8FcJwB7PMlsCUW4tVjfeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bVa6xfAryl7d7fDqM6S2PNGoQXMomXygNtvZP47n7EU=;
 b=jGQlGXwcGRYTpuufswyysPZZ4J3byvP3eTSc68azM+298gBZ3oo8cTHn0Zox8YMN7KQxxd5d7Sv4lRfZjglCwc36/oxwRz4vFIa50yqbO12CQ+Gm6kdF40L3Dd+t/ypd/l41Yx0CqNT+oGqEwQNWLTVQfLjf7ri3KwZaZ4IPpSNhhFaw2nAkHU8FzM8hJVeBhpmcrDAXvJqbv0yclPV3RmYLyPGc/Jy+IOj5OQc4P30KAwVaimD0h7ke++yoWJ3NpxZMgV0weUXzQ5E7gLWqoQNQi5sO6Hzei26TIWQx72QJPbEVS0zlyHxxWaP86AXNetV/X1EphHJ5osvp6YHsWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 06:34:47 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 06:34:47 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 06/15] ixgbe: read the OROM
 version information
Thread-Index: AQHbj261SCfOlPw5qkKds9/PyONVtrNvEogw
Date: Wed, 12 Mar 2025 06:34:47 +0000
Message-ID: <PH8PR11MB7965F1D9CA041931B090BDE4F7D02@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
 <20250307142419.314402-7-jedrzej.jagielski@intel.com>
In-Reply-To: <20250307142419.314402-7-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH7PR11MB7026:EE_
x-ms-office365-filtering-correlation-id: 861ce928-5dce-4bd2-76e5-08dd612ffbb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8N/scmHGrfR57DORItpDWB4mnuS9s9n4QVNNoXNHbVmXgaRdYwgSy9DGSXs5?=
 =?us-ascii?Q?3sNNg7RI+7g+cPg54eXBWrgtCWJSOW8HmiAD7HeOQM+5200l2eY3dLcDwBWr?=
 =?us-ascii?Q?YbJexzCHjKWkI5GsGkVDGftHcus4r9dAfzMtjhxjssqHr2GBNfKl24R/PcyM?=
 =?us-ascii?Q?0z8eiS+Jr2iwdUiAwFvzqwZmkfEa8vhqnUy9uj+1SeuhSmK2McjoFbGV3Hgq?=
 =?us-ascii?Q?eQyda04RyzQIElk3LEvIQD+uZ4dqm/AGeGWMkBMtmZTzxmDYKe0mhDGitroU?=
 =?us-ascii?Q?ViACRack1SaxWg3P8WFsL3fYqBUqImOaRDQd7Kpj8v8wdKpoGEA+y2P2JhSU?=
 =?us-ascii?Q?wRHjg7kFkImpZr6LJe4b/zoiKDorOkhdiwCVJUd15OIm1qZZQAFH/W/9PaMS?=
 =?us-ascii?Q?O1HqzFIKlFE5copGy/TgB8d6RS9RZaqlR7Cjy3xzyrM0YID/HAPF5OSEYR5u?=
 =?us-ascii?Q?HtVbjkEvxnTkQGeOrfRLZt71fF6/093qmLl3VcNbSAqmuXXJN0i2Upl1ubb1?=
 =?us-ascii?Q?iGtjsUCWwDY+HFf0be38/o2es+D/HbQ1E10gbEGc5Dro0NvSrBQtwdS4Ln1A?=
 =?us-ascii?Q?rxRFImlOVaCvVUMiVeGyw1FvK5AgUScdfy7oxm1rlrcuBneC8+kTqyJgrjbS?=
 =?us-ascii?Q?BC8/tl1J8t/DYp+7ob0XbZAWOqvCf1kUwI6F+8HY2ZcYyRCFmnmNe8Yp0koc?=
 =?us-ascii?Q?PThqmFxsKih9FCyXykpwyOt+3YCD1h7pmtuV+PURd+RmW9ZA5BBLM2sVe7O4?=
 =?us-ascii?Q?16hIRDfGNOIp7mq6fvlQSAoyPAVZMSPzMpRIlZC3YBkBuCsAjVG1MXhyra3R?=
 =?us-ascii?Q?OJ+H6/97CTb0SZFBWGaMas3gA5ydHPkOAYD8eFjJ5o0FA2l6/SbBDJOcjgMn?=
 =?us-ascii?Q?xV/mASrPwircXaG5hwv0gb8XAbtTd7skBN0dyQTS+mlHIOwLrxAQ4t4xzqmE?=
 =?us-ascii?Q?+5bdV8ld4zvpbGnPdAGIGfCNzrHEl2Jn8tFpocCnKx+2xsMrAsHyiX04ACSm?=
 =?us-ascii?Q?rn240mQByp1pw1LruAM73azD70XtPVy7TKJCb4NEJfbI01IdI5N+iB7oLyYr?=
 =?us-ascii?Q?+m5Pg8nNgIX6zcTEBuZUVT63SDRL16SDaWf8Bc6Z3HnN4Ymo+Ok9rY95+srn?=
 =?us-ascii?Q?YyBa8C0iciRwp5cBieytMro95Y5MaZz/t41BRjNF/aMCiC+7l8gKZ+X2qjhb?=
 =?us-ascii?Q?rUtwf+C2VN1nYklAwMqfpCsBsvRXuW1vj1GVy/bLdDN4pIH6YZJ0HBOBpWyj?=
 =?us-ascii?Q?G02cxmcCWRZSvVfy+4s866uygfShpGQ1bHEU8y6zL7A+em+0OqbjCeT5TloA?=
 =?us-ascii?Q?okzRWJJPsXdh4cxI8r0qI804UQ5T5jpoiIGSL5KiqbPqjp9YffrisZjtsHhw?=
 =?us-ascii?Q?H9Kbu1q5DCTPrIYM/HFgJ6QHqwezTP0FtLTznupfNAgWZndz4u709SlvyKLq?=
 =?us-ascii?Q?s0u1ZWsSuto=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ve+r8xoPoGhc4Px09n9SzPjRfrbsMMN3rbjsBsaNEmDw5oqI+UdpIL14dQYl?=
 =?us-ascii?Q?TK+MUSM2lPR3rDhw/nz/bguqHySQlft2wJ9V612ZVgg/zEbVf3lPKJ1AM6PE?=
 =?us-ascii?Q?r/OCmp36v8MBkJeicW9G+FeZMR1tl0UlGJr2CcC7q87NXEI1jfKH24tJcyjf?=
 =?us-ascii?Q?OAHf0KIm7Nb+sklXjFIdanjK9psmgTBxGK+pGpKSLHHkZlVfFIyb18XZhms9?=
 =?us-ascii?Q?yyl9wIvP6XwUWJkmfaDlCuQyCwAC/qNmD3lOlArsgCKGj8PVU/Yoy+3bmHT2?=
 =?us-ascii?Q?KsVoBltLCYXXsFI+QFL08NuSiXB773km2hPEwGbsH3q9PhB3HbOnRABuxWUp?=
 =?us-ascii?Q?Za7SCwmbJ89DNoLf3ZwepnJTzwryrgTXTpN0xBLejFPZI3tU59WUoTVvKsfw?=
 =?us-ascii?Q?2/qXREO4u7Sq7zfM8SuRF2fyULrhF3d5PrIwlQzVoD3kKiM7RATuOSi7O+W2?=
 =?us-ascii?Q?P02LCAwf0dXLwzUz9SzCyopSPT+tHgsTRo0lI3TiIQVKMOmvv1WDfyqFjxfa?=
 =?us-ascii?Q?3bXO756y53s4tG2lltaE2bA7/6A4EixR4LTrB/CA4OKiZBCNNB0gnod+7ezM?=
 =?us-ascii?Q?7UzpkthQfGnETgJRvzbI4l9Oqj0kAdt0YKNW92D3/TtbhdhZzTCQkrSwV51O?=
 =?us-ascii?Q?hZKVHgrnx0pFW6TTLaY8xOsVqD6U9JBlhFOEjsuG3YNEVpqhXqAW4z8Rq/uy?=
 =?us-ascii?Q?ymbnT3rJa4Z89LvOyBcEEkX8XJMm19941b8OUatAPw4FBYBFDHOWFpizdtbY?=
 =?us-ascii?Q?i4WeXJU1X1zoGFAeoce4WQBEs3qwEoGJi+Vb378SiVT04ma4ZeSA76hCbaf/?=
 =?us-ascii?Q?Pb2dURVJVJSNcch9EoVmqWyxEuIeiIKQmcdMQocWqEfXIrJ4dg5+VtG2PpJr?=
 =?us-ascii?Q?cIPVDpQ1r+sgVTftbYSyyNFnh+6Si2wMNc4HtcRk4EFXyWFiHm5EaX91kfX7?=
 =?us-ascii?Q?BhnMeBsqQsHIF7SfI4Sp0166PeZebURdOiypIo08y4k/EEeaMsHinMr96/XJ?=
 =?us-ascii?Q?rSZGQV61FT177zJmL9/PqvObW0A1VIa0nadwhwf86PcK+5iLf/CV/mX1PfRR?=
 =?us-ascii?Q?OMezY4SZy/c3HQyJqyM0QKlvT+VDDDKlTF2L88AQEA477OwMsla94oczTPH9?=
 =?us-ascii?Q?n4Vv2WYpTZ7qa3YfQiRzH65lslbybckcn8k/z3qJcppfrXNuVqnTOe9UUxhj?=
 =?us-ascii?Q?HEVSmeVvfoTuh1q96OvOn36SN5mT0hxxq32gwN769JCzHLRyP2dNT/6GegBM?=
 =?us-ascii?Q?FG7rCw2yUuHmcUFB7wsPk3AY/YXNsX6pPEfNQlzNc4IoiGojcITDvRJ3r9sD?=
 =?us-ascii?Q?hifu1YeSDM2rRcAd8tC5b3ejFX2gE8YvS6mFgUBDceZk8Y92/+TKnfhsjvH+?=
 =?us-ascii?Q?9YSSxTENdHKHkE9bsBVPHWWFcHhOZRlGhh/hLgmE5NjzvNhCmNt5OUHPr2gP?=
 =?us-ascii?Q?kwLxx+GliL5DaOrDiscqMNJBFXmEp7momdu7yo9Yf8KYpWRN2K0+gIlyGDrH?=
 =?us-ascii?Q?ONKVlPRoy5FWZSnPvQEs4ruvjmjzX8GXWuO/QvSsNVthCj4g9cXHeeLBBU9U?=
 =?us-ascii?Q?rvqIhasiorJxNt1cJGdNExWvPA60PvaVwWeCCjJT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 861ce928-5dce-4bd2-76e5-08dd612ffbb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 06:34:47.0570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pbk77PzGXMW+daZbelkyFi6Ci0tt4c8ZyOHAxaXaOmBS2R5dtEDfoWDIz/f75TYgThUAZKFUx4WDhuFOH/rz+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741761317; x=1773297317;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eFNgZcIxjx/1pVQkA7MRICsryumdgx3oTra6gPOTECg=;
 b=Zu1iuZWw4IFcBW8W8SboPuPuEDlRvbzBW9MgFJpcQnwt9WUwehJV+VGz
 /vcWDm5acvrPaWSLvw1/hMjYhVICx2EBwiCCBREzNlk/jjwX0VzvFWvfE
 JYd1GRj2L+J/leVyW/jzLMxITiX9g9yT6IyVaNSOO1SlGJyLo7Qnx2T4V
 wL2trZqByd7v5zhVegLpfvk8w2nuabOgid2ByKpv3C+tA6cwMkTSuXfGd
 kFqeQgMqkLsbgkfI6GZ+cXorBnFbG4ZN4l3QeKi3PAq+La7SzbZ6zeUNI
 +erKOTz1LNleFQ+o0LM3VOQdWkMf+z1CfEYotjcJBcdUD1FZ65CYnkmtX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zu1iuZWw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 06/15] ixgbe: read the
 OROM version information
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
> Jedrzej Jagielski
> Sent: Friday, March 7, 2025 7:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Mrozowicz,
> SlawomirX <slawomirx.mrozowicz@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 06/15] ixgbe: read the OROM
> version information
>=20
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
>=20
> Add functions reading the OROM version info and use them as a part of the
> setting NVM info procedure.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 172 ++++++++++++++++++
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  15 ++
>  2 files changed, 187 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
