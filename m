Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86340B22E49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A756428E6;
	Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wgWJI7u8z0vY; Tue, 12 Aug 2025 16:52:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77F7F42904
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755017561;
	bh=5X0XXfJxj/BCEhMNZj1cgtqcGPqg4Fq82Vvq+2iLGTo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gafgMWmrZvFn1m6WygyFkhWAirgdMUtJq6zM82kpFnKiADmVBAE0Q2ZpyidN2uaG+
	 f7oh8SHGNN+ra/tBodfBsUlPAgRUymcVyGS7Jtwhww9SUglYk4Q1L24g1FfNh46a8C
	 uKd9B330c8N0PyWW0/zmu0RAy7k73IDBb9UZnd7Iy6LpWmyrMJOd9bX8jiHsu9GB3u
	 jxN5QMJPgCZ46fmO5TgyMZxbdrMmJJaaDLbY4a1Bj9kfNp8stSX1QTWldAkB/WWilS
	 h0Tx8YGXr0lZqAotqTEj76iJdsdTnpxzI0i5+43tnOq+B72zcBRVgNkAnWavWagn7a
	 MSeXXjrYXkxFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77F7F42904;
	Tue, 12 Aug 2025 16:52:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38028183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A3B842908
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CTMQGtRYfbby for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:52:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 720D841CF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 720D841CF0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 720D841CF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:38 +0000 (UTC)
X-CSE-ConnectionGUID: GkbIOV+1Qz6yqa6/CbC5Sg==
X-CSE-MsgGUID: iRq/GoRBSgSB2Gte5RCEaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57362593"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57362593"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:32 -0700
X-CSE-ConnectionGUID: dcw2StJXTKmobSzU4WIn8w==
X-CSE-MsgGUID: mprFJnVmSbqRsu4hz88MGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165426936"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:45:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4DaMSuBvjvRh4mo798aJNI7GWFeB5wHyqAPfEdrICzK+ZG4HEpuXDVn8DQIYbb8oZWmaXwqRK0be6bPQp0uh2S6mqAgaNS5f0iE4GT2NYqwfsX+/RgjJYwKVwKpvEvdvvkBY2iMGRFhhnhSuCSSsROKeAqAAm9T7yqnaDZCxVnKw9LKE+KZHYJ8ix2wqvz8asi84wNGSRfb+IA1N+Hpoc490vEgSNuOcqMX72oVsMB281ELljqu+KCCQ2P0d/sRaOk6sG+zFOo0Pgt1R/0AvezXOPffw2xUysEA/0IUkwYJvGl37s67ibw9MBEUyhzMpuLU8OYYMS0x7jsHxHv9pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5X0XXfJxj/BCEhMNZj1cgtqcGPqg4Fq82Vvq+2iLGTo=;
 b=WihBZ1yMSH8DhuTBczvkRHCdfLs9TH+SzZTN4JgLx3vJeSIlQ+XutEtwEkqSg6kuODmC4YCQokDhoKVCp+Yxp+FvBH80rxLx2s26Y+Jb0PzFCbYqhYmUataYi7N59UOhotL+pIozrIFlvL/Gs1e0mZiUge1g/hDL9RQEvH3BfuicY+lnTh9lS6+3WPbiGS0LiA/1CcDxWW6qzbH/hJENVDj2igRYLc/U/engAd/tfQxR4dkm78AVtzPTWkQUFONHuqMl8EXke+KlydAWApxUDZIz/ZjFW63Tk3meluK6GTPUnZviD8i/zyx492P2Ha0exGyExwC0QdObzTunB57i9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 16:45:29 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 16:45:29 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 3/6] idpf: simplify and fix
 splitq Tx packet rollback error path
Thread-Index: AQHb/ZLjaX5xpEkf/Ue8IgowdTEeGLRfUbog
Date: Tue, 12 Aug 2025 16:45:29 +0000
Message-ID: <SJ1PR11MB6297271020911282AB5F71399B2BA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-4-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-4-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: 7b7a6fb9-1275-4bce-d329-08ddd9bfa580
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AAno4KU7VS0TunvZCf5AMpXepchm6xdOivEuJjS3/nwij26mlJueXkls3+ei?=
 =?us-ascii?Q?0oMu4gQbxjdjzSUr35WSi0DyNTcWwGlJK78QZqP23ooDaO4fq8FWEGiSSuko?=
 =?us-ascii?Q?wS1x1izMXtIEWKCQcJNE4+xTuVw49UzoHHWVCFa6RuxhsP2Xw1TesTbld6KD?=
 =?us-ascii?Q?lgDDFgqdOMPtRGNfAQnhIgsbDzkIB3k2P/k+p5JxLnPL0ydyEG6b4giBViEL?=
 =?us-ascii?Q?n98xkN1AcXBFhYRlmPfPGLQ6n5gIjVOza1QrXwi0lGM3BLznj1/xT+klXslU?=
 =?us-ascii?Q?atEgpPA95lZ/mc+yATJ380U2xaCmow2K2p+ysxvTHc5SW6XJJFI0HSecp6/3?=
 =?us-ascii?Q?iek0oZxk3HwkiVQIQlHbe+itwf1kYWY5H4jCjJ/4ineTixQHIIJuYolZ0rVf?=
 =?us-ascii?Q?lNxBmf/QxgPhP+pZOoqRRhxVoH6dYKLK6MS5XMyjHXTfBfaP2Df1FthUqM4D?=
 =?us-ascii?Q?0uSVrKFHpUtP/oUQQctw7h9NyDwALztne4cQaoyV0W/H6eJzW075fAS/iCJz?=
 =?us-ascii?Q?XJ1Hb4Xwne7X24+VE5s4rX5OL0lWuPMNd91+vgh1WURtpQihzVza0O2Ohqjt?=
 =?us-ascii?Q?9BeCzWI/XefrGZZIUqYU3b+1x70GTZbx5ykwS+mk5nGXnwQNvqRggQtdKlr5?=
 =?us-ascii?Q?B7aVmd6ZHNIx6M0tWzXppGbHvyGsKftFWlVJPLrM+U+2E1ougYoVm301Tfp3?=
 =?us-ascii?Q?B1dyyL7iDTGF21Pz2nqaX3I7dDmI9JTI505DoQJ5WOyATp9+yVmYUWdmcQAk?=
 =?us-ascii?Q?86GORt8peSo1csm+4oLfMv7j0Hbm7CD49/TRFErg+jhR1omvrSO6XQIwlUT+?=
 =?us-ascii?Q?8GZZKCZPOwUeQDGhbg/1toZxp/cDgu1b+McM0UrV2mY0XTOJqlH3vmISZ7V1?=
 =?us-ascii?Q?SEZi1sflmj4QtcS7E3xRVoSwETI64dhPXlEwmCKrOMdAWuVBZlyJ8iCD0oL3?=
 =?us-ascii?Q?cIUCoQ5TRK8iRon7bS3Ockpw9J3wVHBzSWvVPDTb/r3kBok/OxjlB0sucpql?=
 =?us-ascii?Q?kiUqA9wvLlP+k057Gle5cnx06Ebzl0au4y1oAeRoQAoMgSBchbA2fEFYA7aX?=
 =?us-ascii?Q?dSjHZh35vjAO2//hh3DYy+wUXij4oePsiksnlNPs3YCzkxzJoqvHry7mnrIA?=
 =?us-ascii?Q?JQl4+jPkEOt+HxjRDuqZeKj7yBrwBqL7QAaHToJTgmh08WPD9DQD6gIITBqg?=
 =?us-ascii?Q?psr9yeszVMyXAijXuqOI17NWxsriwOJMa4rh4+KEOdrslLvnUox4OWRzo5vq?=
 =?us-ascii?Q?vP8fxQHVCSVje8JDKhINtfsdQb5o9fr4rqvsCOU7k/x0yUurqLiphPkInK/0?=
 =?us-ascii?Q?bFIBx6irzbfFx/x/NQqzBclTeh/ELzVpVgUE486UiwJqK5hoB1C1ChyMq9C5?=
 =?us-ascii?Q?9Tb15EOh57X0OwAq4H5dbj/5d3n0yGUuNUNADkgAW52lt7vM5+zo42JcJrUO?=
 =?us-ascii?Q?lm6ao3EXVAceBXP80lMMG2bxRrve0wpI3pRqaedtCM5fCYcJc2RK9+iSbmgJ?=
 =?us-ascii?Q?7eVkY3Em/bNC1ok=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SPYVffvf8u8OUKWtbkSGePoCisoJnGpXQIeW9PNsK5aFx0/9XwOGFxvw8t0J?=
 =?us-ascii?Q?zy+HIa83IQtdzDGtycPioGhYOOLYiV9Z5Q4htHZkEIGK857RG6dGJHLC84CH?=
 =?us-ascii?Q?kENQIZ/s1T2XJsgNcpWCfTj9ywxPRjMXNaU01+LDAVag0Q9zx9b/ixpHSxye?=
 =?us-ascii?Q?Njd4N9pvt9NG+pqKBvS4vVstE3eOZ3bdBGhUp9RkQh8+eJ1Qh9G3rQdWHMeX?=
 =?us-ascii?Q?A58B2G4zPPB+PNOU2vcG03nG+vQiis9rs7PYmMbAvqQ+4wwiFG0SY71FVAE6?=
 =?us-ascii?Q?DKuNRiT76rG5Ey3pyEuVyfrAxzLyotgdrfuW119f0B6DlhGaWAiE8sUqEfOC?=
 =?us-ascii?Q?t27ZrFmyRkDCB7RyNw4oPQ50NPpsOFr/h/XJltJPl4v0+K8tXY9JLiNbarWW?=
 =?us-ascii?Q?pL2/p3SUeIvkfa+iR0TsOqz2GcjZwEauLTi1V0j1MHWMYePqVeQ/Sv8nLlhq?=
 =?us-ascii?Q?tomCvBOR/NUCAaEcQ+7U9mxmgh7QmZ1jPL/HKlMUuNq1wUS5pehTWHSti5ET?=
 =?us-ascii?Q?ueLNdblvjh8/12clpFJA3QKVFWa0anZXJUE3nAQmcb4+dX8KjlIgddQznj31?=
 =?us-ascii?Q?+kUN8GkIjbEy/S+NAXVv5A/J2qFRJ7C/3uuDQWysmPxLFhi3fIkT3lUn+oRZ?=
 =?us-ascii?Q?iBB8x06F7BREfpTrCtgaUqRyIWmsfWc2THY0wcTCg9CYBOetCXxkWpP1W+Ft?=
 =?us-ascii?Q?slhRH2STzD/2NYeu1BIy38weAeuqxG76U1z8uE8JLQQbpUfbbiBiD3KZ5Bdi?=
 =?us-ascii?Q?Vg4bQt0v8019DsjS54DQtlc5qPUVxntpHSvquCMklW6r0RAO4slivB0v87XP?=
 =?us-ascii?Q?3h5zVlPR99e9jaB9Fv8aNSOrKdge/Z6/XGUKnwcdMGLPhrxCpknsiqIjy5S0?=
 =?us-ascii?Q?7Tc4PuqA0JV7FHr98+wzDZ09K9DxcZeiSbNr0eePW2uvOfUoFVm4aqAaZGZK?=
 =?us-ascii?Q?lBVa8HpZoOoOCkATt/pH417loUvXRanGPzA0opqGM46YQ7kcMpmYkP4+hAcw?=
 =?us-ascii?Q?f3ew+PxuwZFrRLhDgggWhniUopc87ej4oUBx5GWZ3k5/eHc/204t92VTLDeY?=
 =?us-ascii?Q?PGxuM8lu94zWL72HSdPgwkWx1HcwCnSB69GQ9w/UPOHih3vIsZqTk4jXedGX?=
 =?us-ascii?Q?NzWgdZmJyle/0rDHM0F3tQ3/DK1Tbpw74d2mj+rzk+wTdJdEt92hRI4q3wan?=
 =?us-ascii?Q?t58H1aXJbNaRV1apptIhaf/2kL4JxN0cDlwSike4eAo1x6zySJOC2qbbp+6X?=
 =?us-ascii?Q?lB3Sr/S9oGxdUcyxOqx2TMRTEjbX65HNILUIx9ozbEQSFF+LN/sGI7VhDCA9?=
 =?us-ascii?Q?Zu+pVDwId2iYAsw3+kp1Zn36SQeVAs4uwLDJV9UxRVhBQK7hIGS8FHtWrjrU?=
 =?us-ascii?Q?54V9OyqalWYtVBuLv9q6CuozS1YC0ctOyNCn0UBkTTv14ugJhsiZf4GyREaZ?=
 =?us-ascii?Q?NDbh4TnPhjDLbsAAz72y60lFHCkn/23BDaKW5LydHF6MIGs8+3yYLMmAdsgp?=
 =?us-ascii?Q?cRZ8ScbLohf8rKefLT+ZjOGzM3Jw3NvN7rZKhTgz7rlPXNkSBI2aeog2jBqk?=
 =?us-ascii?Q?2tGHzjbO0uGsX0Ii92RbWfhFVOxkRAayOlja9D/Y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7a6fb9-1275-4bce-d329-08ddd9bfa580
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:45:29.4761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GJAfX49Pnuf5U+WxVvnNiktonnEsQW22ecP/xKRQtINvYZQAS7USOgxpgiUF82EsztuwnrddzVARhKWZGXBd4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755017558; x=1786553558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5X0XXfJxj/BCEhMNZj1cgtqcGPqg4Fq82Vvq+2iLGTo=;
 b=I/rcMmwOAf3YaF3XtALXIkctPBqUnoF7o49wFwuQhBGs2sCzszE1T54s
 nrTGd9XAdHhlBf2P6GnMoTpk6DMGPptNUqgNgb7n0L7IXKpNCeo+NbZRv
 M7Z9ONI/zGAqC1vpk4i6zMQ1SOMYu99TIB7DZQKtozrTToz1FL454oGPP
 KowztES7NLL7EPF0gtAMDP3gPxMAnLJAcxxzoNwGceC1rwFlweCKZAQlm
 F2FtSgMRgZ/zsnT2w/CvyoqMQbuMQsnOxlZmBoh/+vcT5TphNk/JizGnP
 D3o1DJIvvkLcQkQsL2Bab4aDfS4D4hu9sQu297CzOhTAWSSmDHjkhTOdk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/rcMmwO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 3/6] idpf: simplify and fix
 splitq Tx packet rollback error path
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
> Joshua Hay
> Sent: Friday, July 25, 2025 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/6] idpf: simplify and fix =
splitq Tx
> packet rollback error path
>=20
> Move (and rename) the existing rollback logic to singleq.c since that wil=
l be the
> only consumer. Create a simplified splitq specific rollback function to l=
oop
> through and unmap tx_bufs based on the completion tag.
> This is critical before replacing the Tx buffer ring with the buffer pool=
 since the
> previous rollback indexing will not work to unmap the chained buffers fro=
m
> the pool.
>=20
> Cache the next_to_use index before any portion of the packet is put on th=
e
> descriptor ring. In case of an error, the rollback will bump tail to the =
correct
> next_to_use value. Because the splitq path now supports different types o=
f
> context descriptors (and potentially multiple in the future), this will t=
ake care
> of rolling back any and all context descriptors encoded on the ring for t=
he
> erroneous packet. The previous rollback logic was broken for PTP packets =
since
> it would not account for the PTP context descriptor.
>=20
> Fixes: 1a49cf814fe1 ("idpf: add Tx timestamp flows")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
