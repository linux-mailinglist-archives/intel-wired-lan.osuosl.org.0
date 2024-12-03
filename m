Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 569F49E234C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 16:34:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E87D844D5;
	Tue,  3 Dec 2024 15:34:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h27fjb7cKTEd; Tue,  3 Dec 2024 15:34:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E0F7844C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733240090;
	bh=FOR0SrnLFT5iXoFIaeCaf+M6dYnrevOilJEKRVhQu+s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=neXlptSC3uo+irqp0LvfTXESeROhdsjAO7aqmh+txIWGC/li9EOobSFlrv1btg1qb
	 OxPSiSObDuIvu2naxHYAxgLh+8JB2OgI2pUl+o+p8w8RV7/lTlqicpW9kM0KT77THq
	 RRB2LehA8AHX3pzt/blS2T3Y7eQElDN/cf8nAk+9mWMguEP4/mzK7kI652vE9rMSr3
	 CtqboeqkWG9hJZMZ8LBWMetREhG+sOgSqEryV78nNhaFM/IL72+6F+5NPUolwvZ32e
	 Osif8CI2Q+/p/IBRzyn1sQLRHla64HhKbsoWhanBOTNi+owPP8ZEtIja67ec0/RdJE
	 iLnY9lvFqjcVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E0F7844C2;
	Tue,  3 Dec 2024 15:34:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EACC1DAA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 15:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F17C610B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 15:34:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RLyEkAXa6eJD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 15:34:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E23B5610AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E23B5610AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E23B5610AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 15:34:46 +0000 (UTC)
X-CSE-ConnectionGUID: KZ870ktLQg+dzA7O6LrmUQ==
X-CSE-MsgGUID: JSgWWiKOQpentbu+edjMmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="37117477"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="37117477"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 07:34:46 -0800
X-CSE-ConnectionGUID: TpL3lKqnTLefnUjmCUKwYQ==
X-CSE-MsgGUID: X43Ojm8ASp6NbsQW0CjcHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93565967"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 07:34:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 07:34:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 07:34:45 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 07:34:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fkPQ5aVdZLqeeX0Et5qrDt7Fnlm3P2KB297+l0CHy7zCytffWKH8FE018WdCTPwfM6j3cIIVtQahX4wTfRt1I7ieSN1w3roG7+vDqil/Depcb3vmX0eYPunC83oW/sWUU7OBh8QogvSNCpGoPGJwvUdjh0tCaG0jdRQgyBMWWZ+LavZCiDcdep38ipwYCw0R4Iqkm9ExSFOTUU/xz/n5YbACsguHmhqs2kNjCNm0Wgi1f1QChUtCo0ckeWhFG2JKLcjcX3hY7kDUWj7wW92AZ+wu/KhVafwmtX2CeY/+FwNvwDpeedcr1KGnyGi9iXqJrWI8rpMR1ksL+o9GTi5hvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FOR0SrnLFT5iXoFIaeCaf+M6dYnrevOilJEKRVhQu+s=;
 b=tc2XUqpDvFSAH6rtESgip+bjrekI/67EKUgx253QXUSnuaJKdcA3MCclvPJFB8zglRrv2AQP1pp+I+ltloEUWsLD3ViSa6q1qdpZhL/7v1ZnQQMhKUpi7Pwuz2dsjWHQAGq3DuRw+aXs9vqdr0H0nRWnpnUfSg2+4jFVMlP4aAqns99OT34mxW8SwDjomjm9qSJ3QDVENTuC2QjQu4jYbZ8t4ksSeSL74ZoqC9bhdP9a5SbGd+T6w6YVtIJQrbcxrIdf18EH+32Zx+977RFq3Jobtn4GfzeJqJRrwf6aK8zDjbSRTCp4VKAu3AL+MURdFuA+gukXZrsNYYpyMYWO8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB5246.namprd11.prod.outlook.com (2603:10b6:5:389::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.19; Tue, 3 Dec 2024 15:34:42 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 15:34:42 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix max values for dpll
 pin phase adjust
Thread-Index: AQHbOyGsEyur4W5EAkiWR3E2hrHTKLLUX2+AgABXV1A=
Date: Tue, 3 Dec 2024 15:34:42 +0000
Message-ID: <DM6PR11MB46571F6CC1A2155C957A44B09B362@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241120075112.1662138-1-arkadiusz.kubalewski@intel.com>
 <20241203100515.GB9361@kernel.org>
In-Reply-To: <20241203100515.GB9361@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB5246:EE_
x-ms-office365-filtering-correlation-id: bb6e02ad-c18b-48c3-08d0-08dd13b001e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FF1CnYEvGFA9nh2wf1OKsXz1mZ2ZFRTXzFlTM+P8j2kJxsxg+oDhMOAlRFY4?=
 =?us-ascii?Q?2nhGJVHR49Ypg2Pmp+qdr92HN7xNKkmSOUBex7Om1YpnWGmF58oaP4Ci/wi9?=
 =?us-ascii?Q?ka3nwgVjIgemD4KO/nlBbM4HUCoNJOajrehv102CyVK5/AcEaKWBEEpVgcit?=
 =?us-ascii?Q?o0Q5LvkLTud/rQvmxLsdw0UtWx2c/YC/j/KksMGtxnMSaNmHexDDl/di2Qz4?=
 =?us-ascii?Q?4MzlXJEgTdzwJq0EoVRj8Da2zb4HkYAL+MI64czfeB+XkoTrFbiBB3YHoPUW?=
 =?us-ascii?Q?OP63DUfbFsFpubNh6C5YvRuOvJI9Or4VGCkZStFdjY80IMCkj3PmodfvycAe?=
 =?us-ascii?Q?+uSA5afTFAxvJjaJGR2p/MoippXj6fH29pH+wsxfH25uE1k14sYz1MA3eB+B?=
 =?us-ascii?Q?Li6/hmdk/dz2rCTpTxf61jsktlwN+rV4ysgQkKeH0PyVj+RG67hKmpLb1vyV?=
 =?us-ascii?Q?MU6315sgWOwZYhVNyjvYJ248o+p8gykgZTXJmYta/DnK+3N6pK7753nK2TX2?=
 =?us-ascii?Q?Td5OP4SZQzW6Jeg4/3E6aRMiNnVYCXkPQRfo6j6slTmwcsbzyN4sNE/vuVhm?=
 =?us-ascii?Q?DNFZnZLBzmtcKQQ5z2kdaLKyVBZP/LxVwu99+5bHiMjl5P6drgawkk0+B7n2?=
 =?us-ascii?Q?8FWvxwb4NxANEWNw5cYVVEOz/rqAX39qSIKjSAVuRLJ6ijuRIiqljcuMzj0I?=
 =?us-ascii?Q?nT2EwJW0JEIbrhYR2K5/Aeab9rGfToTIQtxya81fIya0x5zayZq+aaN0Y31y?=
 =?us-ascii?Q?V3/blD5vam6FY+GjEhWasm5MltCjYHerCN0H5pifAhPbati9x6FqjgUHseao?=
 =?us-ascii?Q?w+jPNdAwV69Bt8CI0xhQxOiZfz1CowArJfAKcJKP0YNqyv72vAHmQ4MnByLJ?=
 =?us-ascii?Q?PVPMBxu2orQtaM10WWy9Ok0tYR10P0TmGcumuASM/VJqTgxGpwF+9nB6GUdS?=
 =?us-ascii?Q?ylAuv1d4u6kZW8O2CShm7cP3z/rjemBxPBJo3dZggFm9krTgz3C2UsULURW2?=
 =?us-ascii?Q?nkcxEhYhe+OiSMHhDUt1fXnYcJH7aQxQnwKlLSygylloqsErcngx1CMb8On1?=
 =?us-ascii?Q?QDoWgaLqQrDAz7+EDSNxpHF5f+b186lhEuap24ZhpqNZoCIuAqWlcQYdpsIE?=
 =?us-ascii?Q?wngiNA+bGVZUJqxePsvoxwDx4xusj9h+4boOu6fWddxvUt6iUzYuw1NbPyBp?=
 =?us-ascii?Q?Hiz4V29cgBKLw7EL+zLxVGW5ku4g4qmZ0zvISaMaPgGhi6syEV4InDA+vs25?=
 =?us-ascii?Q?IWSEEZb7bE0g3l8C31u1DXjir6Z1bt5WFfuQYpkoMkWKNZRD+Q7O1T6BuJai?=
 =?us-ascii?Q?+EicCVdLOKOuPc44asTE7zmD155VNs86/nmX33XRFXfEMViYmhbZ4kUYiUrZ?=
 =?us-ascii?Q?CHmQvyngfXsaoOHYemhTcMOIbcU0BOS9kJKiB+/E5x2ZUyeaHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PQtVXNcJmR+zBuwbpUxcwihg61lPRSuGXgPQff2F8eVb6rWBXAIJFTFWbyFF?=
 =?us-ascii?Q?47229W/E1QHyLjE+ai24CHL6T0gSiGxzjkjyN8y2ucsQNVCeJToJHNWPoXhm?=
 =?us-ascii?Q?XpXebhIz9kvtKxd6p0PAHJ5tezbE53MBi9SQdKLnX2W0k7LlRdar41IXiwHQ?=
 =?us-ascii?Q?w45q7zNYXUpRraia5SqrtQNG4SWdomwiKNOwaFQjOajv9ZHIuids/jl3cEhR?=
 =?us-ascii?Q?Qvvo5A59pFEJXlbFrT7eej/bIKarMlgYb/2ZR0IZcSYUNm2RqQ1oQFzahXXE?=
 =?us-ascii?Q?PZeE17VfYAwFhsslTodddvDB8xXS8hPoxFz1AvDICIetY9qUP3sDmDG/1diz?=
 =?us-ascii?Q?toWVXhW7GaDgxcKXl7SiRkDQ849cxos+3RfggvbHyT97ylFiPBeuXwWibpWI?=
 =?us-ascii?Q?D59CX9aWmVQO/UBhexlVjmZNyVOQLCG2inpxE722cdC3TqVrZgjjln/94Rb0?=
 =?us-ascii?Q?B1hF29Ca8KDB0eLVoy5xA8KswiN0ApyM2tslXK4V6T2wxLkqYLgHOtz9uSIV?=
 =?us-ascii?Q?hP8AWrE4UBkcC7I1F1G44awa35si4nt7zC8dEMqhaDvL+xRKEPtzRJeDSvpN?=
 =?us-ascii?Q?KRiFZcDiIeX8x4xWw4wtnOD08Rl/SrIroGZILdzHtYZaXI3pIlMxYOoykcl6?=
 =?us-ascii?Q?i8/FMnA/g6mHZ3SMFw2BKqcjqsCZ/RZKWaousYOMXsxsYxVJBFQS9892d596?=
 =?us-ascii?Q?SGQ2BQt63lIyrpzTZyRB1N9DWXvdpl6Fv9KF2Xxu5MRQnqAsd7HIVowhzJxk?=
 =?us-ascii?Q?QAGtlGY/phfyOT7q6yrCT70Y5lp6zJt0XgHF6uVQ4HLftpMi5iENzbu8WWSA?=
 =?us-ascii?Q?ieL4T0f1Zt2TmxuA6zv7pmfPr80P1X4b+2elrvxxs8AlQry1txp+ni1akQwe?=
 =?us-ascii?Q?H8LBmk4LEKlwPN6T32IgrnNKDY8QNn8ULvn3Vp2tDVZlNjyjDpy1of84/9qz?=
 =?us-ascii?Q?urWYlvasM2Y9vP9XERwhLFFRU/E0BIZkf2rTL8GvUGJd9bro6Wp4EvteImra?=
 =?us-ascii?Q?+Zxw5wMbO7coVF7r3vcYhhWpvgUBtWiOptYrF62JmHbZwzNmFua8m0GHmtCs?=
 =?us-ascii?Q?X0ajIzL11M788CY23QYY4j6eIn/rnwxv4Bv0QfyOI5kgo5Roe+jgOul5q1p/?=
 =?us-ascii?Q?DhkkAxyabco9DjeMAdAqSD+DnuCNFacPn2pxNHB4TJmehFUXQ0E4ZvcRHHVq?=
 =?us-ascii?Q?iFIF/ij27aNaU8KXWT3RQBn6fw7wHkvvOIIv9yeUiYPUri67fd0ysuWuJbF1?=
 =?us-ascii?Q?nZeeCj9ZLya4x1KcllxcGq5X5e/VYbzhlvK12OUG/on8tnLrrW0uA4kQDnyV?=
 =?us-ascii?Q?6mNcGhbLfTEdnTjozexAOoVwjsFmc6NZLr8xNkd4c7g4KGUwaYvfZGXNpIuk?=
 =?us-ascii?Q?D1nfFI891T7v6IsmAxIb4p9z3M+W0W1sQQ1iqYLA9d/asqnU28aNBvkuVWpP?=
 =?us-ascii?Q?M353sdu2ylQsPil1bjx/ACpQfalSILMbz+qBoyH8+SSUKPyNOuVtnvkcJ12+?=
 =?us-ascii?Q?KZX6V9KFzdr563In7tB8TfIh0wkyKFXIycZUugzhqZN2BDlKESR5EPAHttng?=
 =?us-ascii?Q?o+6iNdItQZ9eK/S0aEHn6t00TmNESlvFncAsyhNSNEgHFxck+X48oxEj2+U3?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb6e02ad-c18b-48c3-08d0-08dd13b001e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 15:34:42.3123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IuA3tzDggQ1BZBAdnG0x8F7vR0uQbAGZb7HsIQF43QJvUqV8+KcZio4V2mzUDEh8wHhAXUtY0tgu2Ogb7xYwb2kq9ZBRfzFvhQ1Q0WBh4lA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733240087; x=1764776087;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4x45gqDYmGEyqiwSIvDFoX4E2Ko4G43OOAsdot8PMC4=;
 b=ZvOeG2+Q0KeSR3Ro4Prs1XlpyEG7z5+OT0L4QnydRn7MPb6G1/NGJbeX
 Wt37XtXN9nTBOmfT4J9TTuLVw+wEEfbZolkAbV8tjkCvNvZ6S9gcq01+K
 ETlGwDs9e2FrjOPXQ7/bOI64PLuD979aRfrBX1O7z9yQXVeh+8wSEQPj6
 CUdekJTMMQ5lVEnixrR0Ahz9gxkVBlqnVTXeJ+359qtbzpdL1WGE+LZbD
 lwNE2Neqp/0rtg7DOst39ELMcsgPaZQNZ3GnMynrrCgOGcW44o8jsouQP
 0SVv/OtNCbrsWhID7rrnw5Fl2mVcvzPvuNL5PE+aDSBlJf635GXuHqxrz
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZvOeG2+Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix max values for dpll
 pin phase adjust
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

>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Simon Horman
>Sent: Tuesday, December 3, 2024 11:05 AM
>
>On Wed, Nov 20, 2024 at 08:51:12AM +0100, Arkadiusz Kubalewski wrote:
>> Mask admin command returned max phase adjust value for both input and
>> output pins. Only 31 bits are relevant, last released data sheet wrongly
>> points that 32 bits are valid - see [1] 3.2.6.4.1 Get CCU Capabilities
>> Command for reference. Fix of the datasheet itself is in progress.
>>
>> Fix the min/max assignment logic, previously the value was wrongly
>> considered as negative value due to most significant bit being set.
>
>Thanks Arkadiusz,
>
>I understand the most-significant-bit issue and see that is addressed
>through the use of ICE_AQC_GET_CGU_MAX_PHASE_ADJ. I also agree that this i=
s
>a fix.
>
>But, although I like simplification afforded ice_dpll_phase_range_set()
>I'm not convinced it is a part of the fix. Does the code behave correctly
>without those changes? If so, I'm wondering if that part should be broken
>out into a separate follow-up patch for iwl.
>

Hi Simon,

Thank you for the review!

Well, the extra helper function was introduced as part of review.
But the logic shall be fixed anyway (negative is min/positive max),
as implemented within the new function - different then original code.

So yes, we could remove addition of the helper function from this patch,
and just fix the logic in 2 lines function is called.

I believe having it is simpler to maintain for the future. But won't argue
about, please just let me know what you think, if you still want it
separated, will do.

>>
>> Example of previous broken behavior:
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>> --do pin-get --json '{"id":1}'| grep phase-adjust
>>  'phase-adjust': 0,
>>  'phase-adjust-max': 16723,
>>  'phase-adjust-min': -16723,
>
>I'm curious to know if the values for max and min above are inverted.
>I.e. if, sude to the most-significant-bit issue they are:
>

Yes, initially they were wrongly inverted in driver, since the driver was
also using the most significant bit made - the value was negative.

Thank you!
Arkadiusz

>  'phase-adjust-max': -16723,
>  'phase-adjust-min': 16723,
>
>>
>> Correct behavior with the fix:
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>> --do pin-get --json '{"id":1}'| grep phase-adjust
>>  'phase-adjust': 0,
>>  'phase-adjust-max': 2147466925,
>>  'phase-adjust-min': -2147466925,
>>
>> [1] https://cdrdv2.intel.com/v1/dl/getContent/613875?explicitVersion=3Dt=
rue
>>
>> Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>
>...
