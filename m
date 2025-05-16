Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE084AB9677
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 09:22:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B172407E6;
	Fri, 16 May 2025 07:22:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zn5W2JyF7heV; Fri, 16 May 2025 07:22:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC24B4091D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747380156;
	bh=prxgQ8cXoP/yegZ1reHa2feIKeQyfn8dLQXCPQSykyA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t0pBryAzviQoLDwZsE8BNldz1GgDa8OXXcNZKFTzEnSJ2pjCycBlo4UJdTK6WPFe6
	 Q6uwUio0dVOHQCYHhWhB4xmiTPF2y5El9q6bVEHy689TW7TGpB19JTMySGalcF5ae/
	 FKpIRtboaa+fgUjjeGQQRqW/3RiQi5StGkrLykEH5hzgKb5Vw2G3TAo0Sm2kiqfxyy
	 fnQze1LDWXNoFybIBLynf7UIbT4Ga4gjnEzifoy8UPFSakQsGIzMSYv9hy8vKmKWL4
	 Fj71As+IrbhFZ1mhaomXAfCFkm9822sWTw7GeEwM1seQt8bsx4SAXxeTfJEjJKTf7G
	 Yhjf1oiAB3ZvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC24B4091D;
	Fri, 16 May 2025 07:22:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6C761AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 07:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9819B8332A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 07:22:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lGr7Z_KUOVia for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 07:22:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E0D3832D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E0D3832D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E0D3832D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 07:22:33 +0000 (UTC)
X-CSE-ConnectionGUID: 8afgBQ96Q0CXfewBDAPvNw==
X-CSE-MsgGUID: VEzEPGMZT+mta9nupr5VmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="59997645"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="59997645"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 00:22:34 -0700
X-CSE-ConnectionGUID: a2xaj/9mTjW5WeIdjtBvsA==
X-CSE-MsgGUID: OjbzqPi0Tp6DlpWrBIq2Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="169668548"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 00:22:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 00:22:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 00:22:33 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 00:22:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L7hcLrO+zuuTBE/ON+iSlYg3mmVmuQCiHN4I7hR9r7JdodUf3ciPMUgNHRzL52qsmqYSyGZOWDY/bpEZ4sBd5yamfNFMTkR0Zwlq7yNQ4uEqa2tnczoeheE9qzuJc2Ai/LL+4eJpLiPkPpg3P83kku3B/uz4K5WccXAAl766Ealyr8Yu1oagkhYQOGNO1m6XQ8T4s/2/BGqiDEAPz/IhuxulE2R5x+vjo/NSzYDYm6wKBP0gZUffVP+rleKfkb1omX9qVz5+z2srrH4HA33kaGJD+kB4JmZTXgOjvVrLIX7LsxEcsRQVoi9ejd5DejAjSA4/sGGVQ64NnnQQTMj7RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prxgQ8cXoP/yegZ1reHa2feIKeQyfn8dLQXCPQSykyA=;
 b=B7Pi4O8Q5TQbHWbfNJ6FWWepjbi/uqHGR99fWqvyaRVvPLUhj+vEPnMDCWbAq365rURaL1FMHjVpFuOBCtIQgl/o3LSZWxXAwMJHYZ9dRYBZCHC4D5UGv257gVUAbgDcEGgsi5PnU0xEO1e5Ao+rJmY45ed7FzBEe8X2rdRXq3HRgVge/8RzDcSxsj7RwB5yNIrlT57OpeUvpZOeDQ4NmDVWJG0SkiDCgQEcyl2C5Py/H2/xbFEyr+g3uW9+GEiNIgnhvybP6tyWjZgYNLyzxrgSa/PdHPZhxf3k5vJbuzrYchcRxtPPHWSSxx9KwQXDhzQSFRuFKHeaUvblHHZGdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM4PR11MB5969.namprd11.prod.outlook.com (2603:10b6:8:5c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.24; Fri, 16 May 2025 07:22:31 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 07:22:31 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 3/3] ice: add ice driver
 PTP pin documentation
Thread-Index: AQHbs6DBhZKjyobQd0i5UiGPNKp887PU/oZA
Date: Fri, 16 May 2025 07:22:31 +0000
Message-ID: <IA1PR11MB6241810C0EFDBF0A831E0CB28B93A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
 <20250422160149.1131069-4-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20250422160149.1131069-4-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM4PR11MB5969:EE_
x-ms-office365-filtering-correlation-id: 525d0eda-a815-4b05-4469-08dd944a6bc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HeoP2P+nLiYqJeQg8JlBvEc3DeW19+MbypGjCTKXlJ3hVFvDXGoZK4P1q/1c?=
 =?us-ascii?Q?FM5SYbEwXJOPwOLu0VoiqsD56SeRAJbteYLYJah1TkCoeAZGobbF7xESpClE?=
 =?us-ascii?Q?8NhVyCqijZn4pJ7ATTBZEx2Um7nsuEif7+HIcVEvQKIHz+Fd6gcN/6z77oRA?=
 =?us-ascii?Q?pGETEIm6bMV7ilXLdKxU80nUsB6UhV5MfBjK35yNUieomH+G+mGiQKZr/Pc+?=
 =?us-ascii?Q?IzUKRo20yyAx0J64YobRrUggEetEQk1ZDHB1pPtVyI1M1iR8aRUxGBQN4DPJ?=
 =?us-ascii?Q?c5sM/q00AXQQtzMsnFWgUjBRk8WlFZX0UXK7Jc4p+xMZswbJ4kJt+w/0lKwW?=
 =?us-ascii?Q?1HTprZrhwhnZkrMh4/QSzHbzb+WxlVpQmRfG48krgyxgSbjgjprz4lyh29lm?=
 =?us-ascii?Q?ozjL97zCN88A169aJMJTzGpFVyJRHVCx2icusypABSjpfkUsYUOXQoCXYM3q?=
 =?us-ascii?Q?gHCtg5RxLc1P5wraP1gkKDduqpEpSAqR7tR9UrUGT8kCngbwhVx56LweTSRK?=
 =?us-ascii?Q?JlqCWPQSJVoQ4IVc3rhQ/wWAw9lNtBV3x3Em3qK9tobv1qe4AQIT34lRvx98?=
 =?us-ascii?Q?RhM/UlySKysKXHR7jtKRm/rIHcMz/lxZlZKxmK/DTiw7Ltlkhip7BBsDqf29?=
 =?us-ascii?Q?I65U4pQ7fOBLp8YE7ajvoDe+eJYDnOBfU2vLCb/gBiypA3uTT1dOOb0icI+b?=
 =?us-ascii?Q?rXKaK+X7kks3zhpK4qAKLmTlYyqhsu4+ndZKFc8QjiLmUdlFaPgsVoe5jdX8?=
 =?us-ascii?Q?F5jlzqwDvpf3lQg5oKZLzy6/VSzduipk8JXOVmnl3c6+0Rw6JQEHgL0zLwEq?=
 =?us-ascii?Q?vs5f9EtHo7DJIKE2BT+zi82XSit/wvp6OhjrJvuDdaHox3wiEXmI/JP+U5B/?=
 =?us-ascii?Q?KomBikPQAGM3YYwaYB7gQg9Qz6CB/VtSKzOLrQ3AC1gKV0ke18mwvXJ+k415?=
 =?us-ascii?Q?fMbCiqHsP0ktoBZAElsxwT6ILq3l0y8LnaYC3wEB1w6x4lZcGobwfuC0XPIA?=
 =?us-ascii?Q?r9Yv/ymW5p4aO2F5tmpbPbYY/JTIYeuNRR8QuCRjapSCIBFKbzvDx07grJ2Z?=
 =?us-ascii?Q?S+BSmZWiHxKay1nAXbgXuaGrwAYUCp4rBJ8n4kaJVNK4RPVgviHK7Tiud/qu?=
 =?us-ascii?Q?2QARflSrNOO+UuYkNtWTssGlva7W5/c8R6PG+jnyWOtkPWMA+tibqvnzq77i?=
 =?us-ascii?Q?czuDblookAvC74ix6+KGPpLp4SEzDwvI4Ph1PiACwrFjZ2wEWcvvvLsBSEbp?=
 =?us-ascii?Q?F4tenR173fYVe5ULpVYvcwOZ5sOgO1GUYM+QJto0GdCi0hGHz0zM7k069r0U?=
 =?us-ascii?Q?IGiab3t9cpRHuFC+lvZsVaA7UQlbCc15LeoZ2qA+3kyWncIW+QigCMFa5yXg?=
 =?us-ascii?Q?VH8GKTIwT2f09hb5njH0yiZ9s4W2sk2n2OE+wjiz6OL9vQh+8RBVF+tpxreQ?=
 =?us-ascii?Q?1JtmZCcuWvt+pGJ3XdIAwOjTaCd4k41kvuwPkxS3rOMEBxS2Tq2X9Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bHWySjwNWnmoVx8tlV4FE6rQUnUzGN8JaJwdApsA0fdpsiPi6wtZgIE5EF8s?=
 =?us-ascii?Q?rGpqISVzGKR+Ii8OQc1QLM/gFQzU0bclj+R6oFFXW0vkeO01hvhx0OpZqm5D?=
 =?us-ascii?Q?X1G0IN+JXBr2a/zkFOyqebHOvqb/EXVNrwg5CVvn3cLCE7LFY+80IlUkwznz?=
 =?us-ascii?Q?P3RJq0VV966bD3OrnW8nZ5w9OLrVfWz4EDC5x2ssxj7nDFfhgx8pBnMgmvPB?=
 =?us-ascii?Q?1R+aaVsh9SVtKxtB8+6IsaoM1EdsmMfNUo0wWibl6vQpoVfdCDpsb/i4ezvR?=
 =?us-ascii?Q?DJwb/50iIipt+WYDcX16UxLPVUyBnNVlTlQDaCC7EuXB0I6WYnmpIiEgY/Mk?=
 =?us-ascii?Q?Bdwqlxujw08fvl74QkI3QwDWmbcPcRX6cQOcRut+TGsog4ZuJJlKNbKZ2IcP?=
 =?us-ascii?Q?7/6MrmGfd+jdzqqIKqcpiBbctFaejqm0DQP1looAvhutwFqMCdbGIBEIdYuG?=
 =?us-ascii?Q?WDdMsWLoutocdZzM5phS61jcgN5Y1eGdbPbYQaGRWB8Md0INEe7R/p0U1NHU?=
 =?us-ascii?Q?rzK11H3qF8egn7gNYokdVedsmH87QAFb9W0yqwwThNuhusph7iWj2iSbMu9w?=
 =?us-ascii?Q?6dSxZ2xa1XEVuDYmU+kWCBOZMjjo6XHazBvlzrMqodg3vwclTdFruHFv4LT6?=
 =?us-ascii?Q?cSQfaEe6en7jUnO3zFCGU34O4UsjixYmVWAdNLvChOaJnT8Wupz7EkbY0MFE?=
 =?us-ascii?Q?kVAlmRrnghj6I3L2R5mZVroZMGekzHEW+WAjLZqPSjY3/xqUU1AAVPqXKFJQ?=
 =?us-ascii?Q?IC1DBt0UN0Xi4jxYIY53FN7Qq82k2rDmU3zqAhnh2bV8Z3oJAFV45VMvzrV3?=
 =?us-ascii?Q?cIvNfwgU8TkcFHkm/hZao5Tp7epAhdOtldbWwMsQRW/JPE8A53vomWffYQSe?=
 =?us-ascii?Q?bqm8L3DG8J5NPKEDr0RpM9yYkePq9EiIBrTQiJEsJhydHUKPVjbbTo7xROCU?=
 =?us-ascii?Q?FK5pvzshrqT7Sh/bmD8a2AD34wd/ZhuaIi1MjZiz4CC4RxlEOiZeedrut4tl?=
 =?us-ascii?Q?f7hc0NabOLOJYzLmXgekh2Lk8BuXgE2/HDMHihG8LRimOsWUbbtUFWiTM5aL?=
 =?us-ascii?Q?HFbd87VsS0ePEPz30Gy4w3fldQ36xuTgEsD1a70gTOH55Dc0Y4NrCL9u5t1B?=
 =?us-ascii?Q?1clFF1ReWb9QbEhkFXVvV1ON4kDGE5AUzZrAkM+xSoPDMpthYYTkcSDG3ZTw?=
 =?us-ascii?Q?G9+4h/Es0SAx5dYwG34bsIsDO1C4DD9fhvqbxC9R7UwLqzmZEtKt5ZyIGjuM?=
 =?us-ascii?Q?gopPQL/gbkXOjvpgeRQnC4wCvjDegtltutGY9FCeuXqQzNwUepwzohrlJXWs?=
 =?us-ascii?Q?K6uq/7DfzYLPdkW13r1s9vecQlphN2CB2ERqm9Ii7Zq6g9q+xb7JU1AZE7Ux?=
 =?us-ascii?Q?KQ9gJgI7H2MpvOyzxkafILKhlZtDdENVMoz6N14Ztp3pCnj4EJT+3UqRv4jf?=
 =?us-ascii?Q?HG7MbM33Oa2Az9OwXTttIPMxIHakeZW6AHw2RlghZnikBuXK4Y9KJGzj1NQ/?=
 =?us-ascii?Q?cBYICx/mbSrexteIqhYeKjB9uNgR2oSrZ/tvZgDvFGxvU1zM+qV/MqBpZu1/?=
 =?us-ascii?Q?/IhH6+TNa4/3BiAVg/66TO7ZXgTR2tH1EFFkbpy7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 525d0eda-a815-4b05-4469-08dd944a6bc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 07:22:31.2249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zspnchg4/Ay14rCHeprFqMXgxKDTWavZXek/gGvVHJudsazbBo//WN9sH61uD1rPK/tgxedIwbtyqHjNtF/WRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5969
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747380154; x=1778916154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uqCbAS9nHXOjIFbVhDWpHKcRmFoIKkEIEbajK0c7fyo=;
 b=MTcJwYoVSNCvjGQ4y4aCyiFRshPwXUv5SBXL84vZADEwANshCZyQAOaC
 9nde7SG920InWhe/mV1dGbIYEk3INEOm+px/cAcn6AcFL8uoLjCI+dVND
 CzucfQuEmj09yaGfaUeJolp00bBu7zxF/j1bxF+GtwC9MOb30AMk7k3cO
 dky++gMCMmvmAAW/KGxlv9btktNlodWYSrmAggCMmYwQCBfZGhHMBlmln
 SlX6HKV5w70QOTi+fm52voiohOHDgVWd1pqO4/7NT+wdZyUHgsI6WWWE5
 4ymApsR6dA1BbM5MdHGInIjVweyY/kzY2viaHk+R8O2qrJC9VRfgnh8Wj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MTcJwYoV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/3] ice: add ice driver
 PTP pin documentation
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: 22 April 2025 21:32
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Olech, Milena <milena.olech@intel.com>; Kubalewski, Arkadiusz <arkadiusz=
.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/3] ice: add ice driver PT=
P pin documentation
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Add a description of PTP pins support by the adapters to ice driver docum=
entation.
>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v5:
> - no change.
> ---
> .../device_drivers/ethernet/intel/ice.rst           | 13 +++++++++++++
> 1 file changed, 13 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
