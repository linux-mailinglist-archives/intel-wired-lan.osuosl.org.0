Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 006578C8182
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D43460BE3;
	Fri, 17 May 2024 07:33:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4nAQ1hIT1zI; Fri, 17 May 2024 07:33:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D443612A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715931209;
	bh=YS36uZx36xEqYUDp6tmkd49a+aNuYpoVfgZyD/JLfn0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d5UDsuxjaPBYiLdorVYiirN2FRCHBoDZowvMQScbNzjuiAwfqTofjTV1X97jH1KNy
	 kfYRP1EMya8D+DQIDuVxgK40yA8NJpl8XL4CxkC8ILaSgdxbe8MHTCYK7F8t7m4vdl
	 9s9MAKx6wu2lgNEOfT8dSi5RHAIq/hRjcVuuBol0fSHnHGg1kaBrgiiV61H4oi7Va7
	 3KGBxLoETGjBKg2pc2Xww++pTPQ3r/Hv9HIkd5YKZ7OinQpZgMp5x4y+lP1Eu3POS9
	 Avu6lG8pqhFBaqZ1rNOgv4S2k0rv5MI3mI5Ryc1mw5eRhcwB9ZYdtUsorrzDb6iJDa
	 iQOcecyEG88Xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D443612A9;
	Fri, 17 May 2024 07:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E8131BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79D0F40567
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lwytZtXEcGoC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:33:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F131D40137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F131D40137
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F131D40137
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:33:23 +0000 (UTC)
X-CSE-ConnectionGUID: 6mSV5ACQQ/2AwGyCpX2jgw==
X-CSE-MsgGUID: KwhHZvVWSj6WDWu5bGZ53g==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23504774"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="23504774"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:33:24 -0700
X-CSE-ConnectionGUID: FIM0g6GDQ6e3xG+698wTEw==
X-CSE-MsgGUID: gCQLIccvQw6csgEpZHb5FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31694265"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:33:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:33:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:33:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:33:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:33:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HPXEZQSR5KFGOWKCZXivFg7AiRcBDU4Z07+ZeZuxxL1jnoVSA9DOEAyGBW+cBr2W5aXBlm/L1BpbqoAFuW45Sp0Wl2zX/v/mvJJ2/L9LNzk6xwC2/j22Ydf2SEWSPBO/dREzgNuRdHuu0taeyHODxoyPRiKT2tV+fM5KieDl7u7SbkysNWrem8sl35sM5vKo8Ps5NAXSBJ+x5/RtbFRjqvjf4RMJp4m0TcDv4Efa7lfPErFaNT/g41qLdY9WPe9JlpLRIqcyVfNFdKO0+8SHKzFGzBodrUciVbb0GvFhkj9E/1JcMyPw7o6l6Mfq7thd7HvzymG2fA7yNJopcdAZ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YS36uZx36xEqYUDp6tmkd49a+aNuYpoVfgZyD/JLfn0=;
 b=aqZdEvE/2giNvcrvuJpJ3RSVfAx8Trvg3y2DrnYPY11UrSswlfkEfMDZ+VlZlc0fDvnfim4LB/XxVBprWMhgvz3df+uXiwDbyUCoWj+PCxK0iiY7gw1qtVWtlrQDos6v1g2Cxn+feb+Cne5xfjU6stIokBMwg508aQJxyOlxMjxABW+cl1K65W4tWTPTph4kHMmtdlKxG7UT9JX1VcgcpOUhMg2pBW4U4pcHiz51dnn2yTdX3eaHadWZM2ZD7xrT9gdzolomzQdVP+BD0WnG9cVVXNtZxbl7P6Xdb9BgluWnTDv2wTMzwR063BTAPowoql8mmcx+4KQ7zv5NZ5FokA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5156.namprd11.prod.outlook.com (2603:10b6:303:94::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 07:33:21 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7544.041; Fri, 17 May 2024
 07:33:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 03/12] ice: Implement Tx
 interrupt enablement functions
Thread-Index: AQHalkymXvk4wme72UCS1VkE4jQFi7GbK8EA
Date: Fri, 17 May 2024 07:33:20 +0000
Message-ID: <CYYPR11MB842965B2BF372495C5642F9FBDEE2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-18-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-18-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5156:EE_
x-ms-office365-filtering-correlation-id: 97a4f9e8-031d-4499-ac1c-08dc7643a0a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?qP28eWi/oZA9KLX6aNpkYFkFl6/PONUe0znk4UuQuhNJYgLBsOk/0H5179TI?=
 =?us-ascii?Q?TWAKvOZui8CxJCZGxSWF2IltQ589nDmev2KrKaaAy1sCxkYZnQ8m/F2AV9vH?=
 =?us-ascii?Q?KntTVEzeJ1pPHzEJyiJRoe0WQVBRkuGWQGJuX6BEnP+TgLKRARtTr1NeB+aL?=
 =?us-ascii?Q?ntX4CKeIsjo2TcL1p1Q0sLW9gnxXnt8SHAE+V72hy9h3664RjNb+P7su/+Ua?=
 =?us-ascii?Q?q0SQi/wtdhC+qOOA4+naDLkFQ9dxHrQShzts+bDcNo2PoKwutLQP0q+3BEsf?=
 =?us-ascii?Q?a032Wn5j8JnxJiiNcJKovhNON8yYx4IFVb2D96Tc3kmbIqx8wurR1PkTXoev?=
 =?us-ascii?Q?/Kl06ENTwtgVGuZdNSa8M4VpUNKLQEU6xyGEp6DNUuS5pyjhTwXwaT3xWlyu?=
 =?us-ascii?Q?j7IeiqvcNZdVw2hgzwaako4K47/eKEDwc+3olU031gCG4060T5EbSMLIXVBT?=
 =?us-ascii?Q?2cgu74if8lg3YhAMOY/vvUFLNocc06AYCq1m7Gt29lboZkbMEgh1JxsagnLB?=
 =?us-ascii?Q?V+71IoU730GOboTLRyKv+DOACKc+qBh1QIAH+YVw7zy+0PgVVBzu8o911q3J?=
 =?us-ascii?Q?gn050G6G1qiRAB+IJq5Ng9Gwp7beHiwjC5tv471eJcS4uScW0mr5G4OmWI7/?=
 =?us-ascii?Q?6Gm7o2A1d12jQAGkwJPP4Q+lElGZM/jyhWxvA8eaMjcv2JjdOSOhG5oIPbaI?=
 =?us-ascii?Q?eZAt28pOcmadlDpi2EGZJugJojvAykLNtgP7IbLiQuILmQy3cQ14Pe+k5G8U?=
 =?us-ascii?Q?jn+6EAf09bB4UELyIVIVukn9apnghGzgwwo0hnfCKJlhdAaVUn32UJ4m4NvW?=
 =?us-ascii?Q?OMUSR4EwtuH6t4RWyTyfNR+oSRIGvKMnjWe0iIlVu1/yeLaBm82n18Ey01tZ?=
 =?us-ascii?Q?UQTBMrBTiu8fXc/F1yTL1ciTe3iHZ0OZaX4jAUYkPGybud5GLWXqDHFpRAHb?=
 =?us-ascii?Q?2fg+6xFBTh05ujfgkHtgPJHS7bLIwRv/LLUTYWUIlHbi6Kyy1qWj7a2vrSm2?=
 =?us-ascii?Q?3zn0WYhP0UarLuActjZbX2HKmK8HFtsI8AN+xedZGZXn86yh339bzHx2bK6H?=
 =?us-ascii?Q?nvwrncRZd9Hf6piiDdaSRFfVRBxNXjWGWj6F8/gt9ShRgt1A4ebaQ6LoAYZi?=
 =?us-ascii?Q?670vKAjU0CnDh4Ub3kKxhU8Mp3NHZGb4kPysbRY2B9yvEOcxhPSaWUuyxS+G?=
 =?us-ascii?Q?EApRWnwZtYXTT888RwRhiHsLHHMmXH8yOrI2byBftJ5U5Z9saXkQEIQuKZqz?=
 =?us-ascii?Q?KC4HkX68HaFKY0PMF4xQewE6YVFdJSqZBmq6+SGArpn6ACCSRns5dZvDHQqQ?=
 =?us-ascii?Q?sJitAo3YbvRVob+BbKM4Hprrc1l/m8q7xiuEt3Q94+GJbQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j0f3gLoDIeIVKw1XuFgNmxp49OymL9Pr2tHyhBOBQq3q4E+LDdRBrjhhhshe?=
 =?us-ascii?Q?Ik005tqlt8gbtRscvVdxb0gqic3xSL2kHV21cPDuTdlJvPdXczwRoiyXLbNt?=
 =?us-ascii?Q?XFEjAPnIbdK4H4k0aTzq457L3CSBHkn0URYlfKF9U1wMja46k/iw4p2tnFQ7?=
 =?us-ascii?Q?KDP1/1P3/G0UlP5Ktg7E3FSvL1w7pdpjU807MjqYfa0Y9HW2+58ZnqWr4PYf?=
 =?us-ascii?Q?ZTwZMNQK5f8t8N/jrcHS0qZ7zD9ETL/V4xCW+8+B75fp5vKfietzxNR3A64a?=
 =?us-ascii?Q?9Jo+gqptVqPHDlPB7al8ELO0Rdh6L9vfSg+H18fFLppfNSrggVnxiKDfdqdk?=
 =?us-ascii?Q?dN8D1Bo6JM2TfgUwHfiQFW2JvWWem0MisjUPR9bfz7rMkUm2mmi4RS+tXz7L?=
 =?us-ascii?Q?2zIbhHQehAsdU9W84MkSUczxXSxLwdVB5NYPgOkwHV3quh4NWtzuepd1LkzJ?=
 =?us-ascii?Q?DtQPb2nI8qWRQRMjee5QSEpT/ej0fZDJtVRBKYEgcntQ2uTxNabF1ZV6vaXy?=
 =?us-ascii?Q?NizZacXKglsU9MeXVK17MixIazdI9L1erZlUhWS33TmB8wT7ICjHDQ4DqLa6?=
 =?us-ascii?Q?skQQC+du18BikE0GN6dMyT7skPUSU352KYfARogDmGaQ8sR6to0NlAcpuWBs?=
 =?us-ascii?Q?px2k36/P7CMfUBXLRa05impai7fjcxpHuXhwXXIDhA9qtWV93WYvvc9HjlLh?=
 =?us-ascii?Q?KZf31l/ws8tfWnSJ+c8p4zi6a6g6YMK1ATAKgchqmptVS31/ZGfu4+U1G+0l?=
 =?us-ascii?Q?6S6vSeX4K2kwAm0CEK7Hqbi9KYkqKoDTMA7GeKWAvjR50Vbeuk1f1aeBtFmO?=
 =?us-ascii?Q?tqoN0SJtqcqxrbbo/vNySlBiOUflKHxDG37f+kNuKQPrY8Y10GgvVUoB0Q7t?=
 =?us-ascii?Q?Lyjl+M8IV+2Cw1OK0n0WXep6YxPWS9HZ0GT8k/FcRY+19GJhb+yKUuGYU/65?=
 =?us-ascii?Q?SfpWvSIwxqiZR/SpihON6R3M0RsZHzlr71NnNZq+ZabLkp1maHstrQGJOpAT?=
 =?us-ascii?Q?WNCYy2GFOmGhbOOxCs/fk6ug3Yuleo0vNLXF58mS1JhO6Pi9CxQ1Pj7/3I1r?=
 =?us-ascii?Q?C1PZL0N6Uo5cSc7Y972EYLf2zDaCC/vz2QhExhzKKA7Hamy4yquVGLYvftZE?=
 =?us-ascii?Q?M7cIDBQ8EO0ooKNPCvxqcrpiUIz13N3J8QMS+gppZayr2sSZ3lmsujqBYCSd?=
 =?us-ascii?Q?6NS9geCnAPY84E0d/dvy9T10jcPMpdoGn8JU+F8/m/ItPw8dgJvwys93LMFW?=
 =?us-ascii?Q?0hlWYpQ8N7HCrcJcdHvQJS4ZW72Tc93M7XGPRxT7FrLY8zV4TNyugtp/EN1o?=
 =?us-ascii?Q?Mu5wjPUjVmTHS2VW35EkQKEusXB/mMXaRns1NJhzUMQvRrjMKa0T2KlxkUQJ?=
 =?us-ascii?Q?LTOUlQiML3G136ec5vUAGBsyB5yE36afau548ysCjB9Vf6AzaOG6YP4u1GX4?=
 =?us-ascii?Q?Mytk7XrKaKyFWAlGsMhlB/DUQmlQ6pmP57DkzpeUWmfPq2oHYwBnWbSms5Bh?=
 =?us-ascii?Q?ZRRVja5hqInBN4xs4A731d2kxWkDQ3JCWSgEQPtg9beCEaAb9hSeU4cBKJH4?=
 =?us-ascii?Q?Sy7UmMy6txiyG+59vDFH0PAJMsTPvq4CWKnb61TrFAhf0ueFPQuYAnTLGBfg?=
 =?us-ascii?Q?gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97a4f9e8-031d-4499-ac1c-08dc7643a0a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:33:20.8908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQUdKUghvKxvqv036cTkInwhwtDt8aBaurqx/wZvrEipCEvEIdzJLPFmff19X6lfPlQFxO0VCys/V9RSQVAFhGxPSZaU8LEfy6ug/kz1/35qMrwoQT5jiun87wFsptzL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931205; x=1747467205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7UPhlJzhcIqHl14IWZsWHUN17SEP8zoHELHKhSpp0Xg=;
 b=CnYcUMNA1mQuNEbFxiYhG23Kf+p/ojK0MLo0awJ7k/qieLFhyx6FZmkD
 kqsagMekBTo9xXq5ZkI5wSsjaYKTz8TTfZeXDLU6hDFZqx54nk6FiGusx
 dkqcElMBKfaOHx3AXfoCwivwwxgENyBQsv0p16KKTelgRwFHhXjGqCrfo
 dQfmpfwLURiDs6v6BNaQjkvd3Jb6XY/6FLpE8AvdR9wvGBLNVHs1bN97/
 npHiC/YljTSWxmrkOaqMEkE0T5GaqcKWwDavrY8Z2ZkzqAzVinF1HilW7
 GkVGs7jZV2kyVKySafM9py88PYyT+zQ1j8+UcjkdhSuKF2T4X5krqHeEG
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CnYcUMNA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 03/12] ice: Implement Tx
 interrupt enablement functions
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Kolacinski, =
Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@int=
el.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 03/12] ice: Implement Tx i=
nterrupt enablement functions
>
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
> Introduce functions enabling/disabling Tx TS interrupts for the E822 and =
ETH56G PHYs
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V5 -> V6: Adjusted return in ice_phy_cfg_intr_e82x()
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 66 +++++++++++----------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 31 ++++++++++  drivers/net=
/ethernet/intel/ice/ice_ptp_hw.h |  4 +-
>  3 files changed, 66 insertions(+), 35 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

