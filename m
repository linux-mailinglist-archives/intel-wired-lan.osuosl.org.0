Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIJYNSNSvWlr8gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 14:56:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 351E42DB733
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 14:56:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED4F812E3;
	Fri, 20 Mar 2026 13:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kZoHWGpFQgKr; Fri, 20 Mar 2026 13:56:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EF78812CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774015008;
	bh=ihfMnv7Ivhkyc/fZJjQbuCQpmluT9u8OVKLnlR5a5C8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n9/WebuOm310byVtfgJexZBFy7sLVnHdJNvCMLgaIV9D47uFFdrZ8SqZdEjbpeGVV
	 EzwDR3SmSs9BnTzdDcaiC0cl3xou2o23UXIJxtV/jx8Ep6ggj6sIc8vaZ8Z6ccZoqo
	 0Bad1i6ekzn4NMKV1dLo56PM3XaxwnnDon/rekmDnqmPSHPkPIggq4bfpcUY0mrLDQ
	 YmM394yrqL8vBDAdWS6L/LQz91WnimecxBZbJHwsyMAy26o20MNL4I7JBOCGPU5BP0
	 mUrWkr70WBS8kV4t+bP9Y93nxtgHU+iJg9dmoav9AuD6K7nKCr3l9XPfUM3g7U9fdV
	 mJ0UDTCkD4UWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EF78812CA;
	Fri, 20 Mar 2026 13:56:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30B241B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2227540283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:56:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sJV4G32-rg1n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 13:56:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1634F41E09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1634F41E09
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1634F41E09
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:56:44 +0000 (UTC)
X-CSE-ConnectionGUID: GyJJCG1NSkKHSeqPqmxXrw==
X-CSE-MsgGUID: DnQf/1e5TsqNFtwoFMddRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="75285458"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75285458"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 06:56:45 -0700
X-CSE-ConnectionGUID: RI8WAEV+QVmUqDvluiyn2A==
X-CSE-MsgGUID: FWdI5e4YRT+YEMzBkNOBYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222518609"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 06:56:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 06:56:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 06:56:44 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 06:56:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1hbgwjsjWiXu/JHAVpEhUMwpzJiYOkYBMu6XuyI0Zih58Q5ftc1BpUAWmpX8SEStrTVfLPjajlOsdR3DU9nWVP4df7bSlQ7Znksc7GHcxJrpmDqmmBDc12S1M7pgi37vd4uI9pXIcv9g0r0WYmzJaenuwcaduqENvDxUOHS4O2bTm9UF+QL8D3hJNF/dHrc/ti9kc8uhi/QJi0ETwaDPees4YvpYMGiaj23zOWJPz0neMTsmKAcTz+W/0hUFD772g1HZE4CBwRj8VClZIOH8+3PS/HvMr8ufSaiowqrF5LSVO/GXRl/WvL0g4QP4R1Tl6qkd9ZmbOeEl2gJjGIqkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ihfMnv7Ivhkyc/fZJjQbuCQpmluT9u8OVKLnlR5a5C8=;
 b=nGHSSqJh81gORTpmvoD97FrIiOS4qJz3gPki+YdJqy6IG7gSgkbyjXD19c8MvKa7MIl3EpjZsl7Efu7gIj37QQ7j/lmfpMFOjAeDz/je6fWS3IfSkNcmIYe4d1JjfDtPFJW7QMP3C/ltandtQq7VQxWeJVlfo85Bp53zlf+AglFP8iBebh8RGlOVk/B/bh+eB2Tru6sqyD8QJobEyhtFxY08FB5MtcDPZdocO03xlOZAvybEny++JKgT1mM64/29yPGfMvXnRd7h7PKJicJ7LNUKr5CFngVuVMtiUTT06lc3P5TI8nAMf2EPYUU9fxVo7RCfZL+O8fvzVLYsODLR3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5007.namprd11.prod.outlook.com (2603:10b6:a03:2d2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.10; Fri, 20 Mar
 2026 13:56:40 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 13:56:40 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: fix wrong VLAN mask for
 legacy Rx descriptors L2TAG2
Thread-Index: AQHcuHED437zNC0DeU607LfgDtzn6rW3ccpQ
Date: Fri, 20 Mar 2026 13:56:40 +0000
Message-ID: <IA3PR11MB898608E068B8745868452D70E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320135326.1171433-1-poros@redhat.com>
In-Reply-To: <20260320135326.1171433-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5007:EE_
x-ms-office365-filtering-correlation-id: d11f4c93-b22b-4e2a-aba8-08de868882ca
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: G/t9bJfrNkjfWlGigJ279pTsYmLoEEn89tmtzUvUvKQINLheZZdyCoBexxi3SsnjvHwQi45L3RY1vPVRDigRJRCwPHe1V36LgMZUS7/TolB3cA2W6bKzsDTgeYr/YN/unwKvUGA0TB1uY3X+ycuW4/poK8UTvREp7CARe3ILtzXkqI2/fynF+GdQqPzbPB8Qqs4qpv7NqqoyCBFVGKIs5/b59xFe5FRghOKXfvger+q5saQG2PnrXqSSYIfow5Tay5WmGl4MS/ViHADP39hWaFPbGxEypuhqYAgc+KcGl6NHaeeYKVj88mcDAyboV+JDxr1YSxAX7VEBzGEHkjV5zO7YroFtbsi1tQQrR+M3Ri9Jg9mi83/d6j5Q2lF//sigQOmnngg2wrKut365lbjmO1z4JbJylZGL90HXH0zir+6Cyytpc7MyO2f9kZhPytp6EUDLmfaTkP8kEkwRg9c9xQ8n8JsVICGU4eM7kebbCoGEBcMD5nQRB7GwN6MKmuH/Lj/HvfcX+wnZyxw424Elnm7Sf/5uLzws4jir25DILn+gOoVRga8nUGuVbgMWfyrQlTX6S6XkihHMbJjDUQUbwMlHbpUz1mp7U3xrmO4X+R0qOTW4yqY/mdyh4fo2bEK6WEk9lcxZJpzdKUot0R+V1ZR36x8N+DkR7O+PrtnQ6e3EngoCYgzpkIw6N0fK0WN9CKJ/5O44bAoOz9/IS8w+JezqL89/FH+qc4yhZjlXfjgODNgAgYaDcFFJEGa1hcY+kQCC2z1g7TULlXC6Ek5fHdjsh7zcsgUCYk10XPWQSr8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c0WDa7ISZaIrlTDPEQhmXUQfKafpQNwG/ag4MAVJanjOnarZu/AfIwKe0CdL?=
 =?us-ascii?Q?gxFyLdRdhZaFtTmom3IEmh8G38XB+vIm69d6z4lxXpy/hSf4536HGH+KrsyC?=
 =?us-ascii?Q?fHsCPX4mfUHJ4terKDdpOdmN9lWOoOso4dePcQSPCiLTArvOcVbEqq7Ahvvs?=
 =?us-ascii?Q?dxq4727LZ6mLk5dY2giJmDJwvu56bvPXQpeoTZ14l1WT8cKNMJ20e2UuSjX8?=
 =?us-ascii?Q?QhEwiM/5VfSO1egtqDtMx+kvzPsW0NeupChsRMvF3flPlTRO6EO7NuJm4Ane?=
 =?us-ascii?Q?MR+BAIVHTRipCpU3/za2Vc6YtUrHuo7egD1PqrP+3MyyahniVPkhB/6NH+79?=
 =?us-ascii?Q?Fhu30TQGrd6M4Wzhf0mTwuCXBUR3isCmOdhi9BGjnB//EUQRy4iPv+SdNysJ?=
 =?us-ascii?Q?Lk0MWuva8wJ5HmP0zzIAt3BF+/0Bb7D7ObpPJ1SnlOtH/VVJ22KDEIqq9ynX?=
 =?us-ascii?Q?juftpR+7HnaK33k7ypfxULY9OJWmKYT2o/gk8y06fjmSmR5bRIJCCknQeN10?=
 =?us-ascii?Q?Yeu+4bUJd3EQT4jX1sXOtN7wiax4vx6IniDpLOF29Vw1qxPnfByRrfwDakAy?=
 =?us-ascii?Q?vhqlBT42mse2SYgxF4GaMEXeYc4JB4fWPaMhhWZx27vNrhvA4qFfKZhnGod+?=
 =?us-ascii?Q?z4PRn/i0EOVIC0VtGWqzN8ZAnmsOQaBs9Z0uV8SG0HtNieFw7p/iBDdQJI1Y?=
 =?us-ascii?Q?MZ7MIOgN4LQmRF7W78AtLnxOzqV6sjhOnACBGMPefyT8nUaSaWJm2nz4lSHa?=
 =?us-ascii?Q?mcjkx2q1GGFv6DNW/UGMWOA0I/PQs6tmX6gIdPfHD1YINzHHLv2zDtX1Sfzq?=
 =?us-ascii?Q?CxJ2rNE3ybQjQBlf7SGCEqOQ9TIO3NeQ/8iAcEBcacFnR3q2LNKTVbVF9gnj?=
 =?us-ascii?Q?VslV7EnNBxxdL3tfJe1ZQ6yExmaaNfWcBZ7vjo7w5lsg2FVUrgrK9fWkhVZH?=
 =?us-ascii?Q?vGhVKvQeeOTnS+WOjNZ4jpR6bMcvmXyqLaffdJek3QVVTL90KnMRBETNJ0by?=
 =?us-ascii?Q?AV2NIrHwumnDJumr282tOmgL5h72cx2w9fnI+1a+ChRzGPwgvocE6OJhmRp8?=
 =?us-ascii?Q?PqaHLbxmyH6sDbJT8A7pXXzRgKbrVlRtyoJKfPMX1W98I/FRTSeUaJy74hhu?=
 =?us-ascii?Q?6nSHPQDTMj0SWdqY77wqT/s78TQYSHMIx2SHePSjRLwUerB4UHCK3FcYYg2M?=
 =?us-ascii?Q?GK5r1tGyTiH9o78X8nG5PGzAxmr5AwDBKHUB+wZbSgYJIP8eWttFPAU/pZ7V?=
 =?us-ascii?Q?asWEuFEj70uiPYqhofpZs2p+0knGt+t7USYN/ERkZlX2xVvGuRl6GuTwpf3S?=
 =?us-ascii?Q?9dU8iETCOligLoOu7S5EeCMmb/BCAOF4idUxCJNLdtD9LftaBa58f+UKd1A5?=
 =?us-ascii?Q?pRk64m9t6jn98ZZTF/5Hikhjoz1nwjUErlGUxaFCYBn0Vfu6hC4p2npfubvb?=
 =?us-ascii?Q?Vbw9q+io9HWY2R3V51p0DU9bLjGjMWnRp57IubATzT+ODenvEMnbX8FIjFee?=
 =?us-ascii?Q?fj4DjDNGLiZz0hMDl+Mrws9ViVVIRHmIFdVBxjcT9/I0KME6jdO/ShDP3vEi?=
 =?us-ascii?Q?o7MEk+XNn2/0NRoDhbTW95O7l861TiU4OLkqyX1QiMLMg7ZT83cTplYg6Ihd?=
 =?us-ascii?Q?y11+8HBF3/E+HJtGmrYQ94+kZGsfrs0k3vY5Kkb4V0SF8c4maPB/23T9qx/I?=
 =?us-ascii?Q?I32nWjJIr12qNtIIIQv5m9TbjmkZNRq6aLIqrf17GDsMuYJ1WL+4BBYkrhnl?=
 =?us-ascii?Q?etidqWswc2oP9Fym6SKFmIqP6MOTgqg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hTQA0JCpwKLss+UDJZxg7k7YCc9mIIdnkPD1rUrkb0CpsCJRPjK0YnvjJBvS8vUnv/HAygRsPEN2QQur4rJAfKZq83MGr/r1IprPSjtcqO/67A5ltVkHrWCJGL8ifxji4fj2oy7PnD/UZM2/eu3jWXb+uCrkaGJqQ4XeptNs5RN81fJx3CHAtHbNGkufySzHph45DzMDL0XgaSfLYCYKxd5TvOYwegCWEh2PxQ9d8Uzq7fV9Am54qWdBFN7/0nYe6NahmspTmAzfRSWh6p6lWCZ+l5p5JyRvzJx5oHeWrWr9pSFXkdIxZMp6U4EeOfonI2H0qXk8yw/nSO16wSSTrw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d11f4c93-b22b-4e2a-aba8-08de868882ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 13:56:40.0828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RniKnXMGm0A5zv9sClD0PASBdyRdU2kJBfFKTQHYfuMwNsPYsqEqmD9YN9SqW0yPFnt2PAfOm6oJAW2Lw/DYJ4K628H6ozVvVc3Nq8x/JlA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5007
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774015005; x=1805551005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KuwWReCk3UKukgyRP8LJqV2OMGWOyN4b8SD/+a28A9Q=;
 b=IKTKsL9EcUFI6Q4ExKtCfyKb23P1jsykD1qaMo/XOabsfyvzS3D6UwXT
 ARBMhyjpDrkziwG3ASq9EdvDiYY8kMg45IZ0VQGJ3zArcxxk2UE88ejNR
 U4c/pDs60iDvwFH+wmzmQBve+dZagqCvfLX0n6yfFs8uynHfo/64UVKqK
 HXrtas/49AXy6tdhnlixlBOwJn7dV4Au6xwVJ08UUBxMhUdLdNByy93Hi
 NpuMRsEnrMPv87JOby+aN7if0t/z/eabcmta3SasGh3Gb0xwXcNj3G05T
 WCt3bqcgg/q/Sv+uXo+MKOlQQC986+Iag3vtyby2uJuAmyYH8+nZO+Fhh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKTKsL9E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix wrong VLAN mask for
 legacy Rx descriptors L2TAG2
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,osuosl.org:dkim,osuosl.org:email,davemloft.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 351E42DB733
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Friday, March 20, 2026 2:53 PM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
> intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix wrong VLAN mask
> for legacy Rx descriptors L2TAG2
>=20
> The IAVF_RXD_LEGACY_L2TAG2_M mask was incorrectly defined as
> GENMASK_ULL(63, 32), extracting 32 bits from qw2 instead of the 16-bit
> VLAN tag. In the legacy Rx descriptor layout, the 2nd L2TAG2 (VLAN
> tag) occupies bits 63:48 of qw2, not 63:32.
>=20
> The oversized mask causes FIELD_GET to return a 32-bit value where the
> actual VLAN tag sits in bits 31:16. When this value is passed to
> iavf_receive_skb() as a u16 parameter, it gets truncated to the lower
> 16 bits (which contain the 1st L2TAG2, typically zero). As a result,
> __vlan_hwaccel_put_tag() is never called and software VLAN interfaces
> on VFs receive no traffic.
>=20
> This affects VFs behind ice PF (VIRTCHNL VLAN v2) when the PF
> advertises VLAN stripping into L2TAG2_2 and legacy descriptors are
> used.
>=20
> The flex descriptor path already uses the correct mask
> (IAVF_RXD_FLEX_L2TAG2_2_M =3D GENMASK_ULL(63, 48)).
>=20
> Fixes: 2dc8e7c36d80 ("iavf: refactor iavf_clean_rx_irq to support
> legacy and flex descriptors")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_type.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h
> b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index 1d8cf29cb65ac5..5bb1de1cfd33b1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -277,7 +277,7 @@ struct iavf_rx_desc {
>  /* L2 Tag 2 Presence */
>  #define IAVF_RXD_LEGACY_L2TAG2P_M		BIT(0)
>  /* Stripped S-TAG VLAN from the receive packet */
> -#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 32)
> +#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 48)
>  /* Stripped S-TAG VLAN from the receive packet */
>  #define IAVF_RXD_FLEX_L2TAG2_2_M		GENMASK_ULL(63, 48)
>  /* The packet is a UDP tunneled packet */
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
