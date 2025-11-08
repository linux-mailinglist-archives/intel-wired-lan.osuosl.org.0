Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F27C421E7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 01:18:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B24C81068;
	Sat,  8 Nov 2025 00:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gboGwnh_o4io; Sat,  8 Nov 2025 00:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB7F081053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762561126;
	bh=s3u9dT7zqOfAPj6k+wDW/LKkq3xtDh+1LCG6TBICUZU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2IQMAlyBuLxBSXyxvqdpj7OAp0i4ahgxovifVQD4+9Z70GJB6MV93XnzpQhn6krCp
	 r0w2TGvKzU+cWm51h3Ppbk7gT79w9xaz9MwbgGAjALQCe3H7z+46BaV3UgURlM2VW4
	 ghU4YgvAyv44FOeAzpI0lNyQkQ0L8GvdnV2WRLLwh4fNjfPuN19O3kTb4em9WBzspG
	 ewSQjPgL055b+XHQgZloGwTj8+SGzGWEgqCmXPTsaopnUKUvzJGQzMdqtZXvKVDpAN
	 5FATQUK92iCQXU6532Sygbk25GSTbK/s4GjpYf+44MZB4AE1HtKhIlArw94yCG4nkX
	 59ScHtZWpvCRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB7F081053;
	Sat,  8 Nov 2025 00:18:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82C441CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 00:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A52680FFB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 00:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9caYTBInbr-g for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 00:18:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 964EC80F75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964EC80F75
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 964EC80F75
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 00:18:44 +0000 (UTC)
X-CSE-ConnectionGUID: iktbGaP1Q8eyVCPcsQnfQg==
X-CSE-MsgGUID: ZqN3UtLbTY6XSeHbPPgoTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="82116168"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="82116168"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:18:44 -0800
X-CSE-ConnectionGUID: deg3zTfMQRGKzanetRrM2Q==
X-CSE-MsgGUID: ovRJYi/5R86qE+xNBv8ScQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="193346350"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:18:43 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 16:18:42 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 16:18:42 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 16:18:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kw4a9P/bcpxaQ3VuqEVsfrApLvhmp+s8Ed/KVNEarptOWl7GJOfG4cSkybJ2cQPyueyfCt3Zts8aholFfUmf8PbKWLFt82b9Zo02SrIyMChwQl9Y53G8INTOHdBqD+r0Cz5o8Kp/NuMC3JQeaYPEW41hXV6TC7RRkOKvgHQfNR7aKJ6SBM1G4jkxfd6G+a/TpPMQSzWSGdls2zBloJ7ymSImi29R1nyzs9Cr9BFNrikVwmyMNf6sstsidcryPfSiGFcaiRD2bDXBrYhWCHAgj8rlx3GKBfWzvMRn4m3VgsnP4ADuyja5PxABfVzSTDIhVWnWWUFBWkkPmDQA5ibcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s3u9dT7zqOfAPj6k+wDW/LKkq3xtDh+1LCG6TBICUZU=;
 b=hHqK91F5F5KmU7VLeuEhG7wBaudMxY1uG5whEuYO35DHZ+xrLryF+5kxRip7hxsnp0qBj8YoQXtf0ONs11ei6jvVILEAfESA6ezEfZNUTdSafGoL09u6TWfsWiH2vjNP0EZLUsvUkApmba4jlczCuzlUPMB2bHx82Q9LwFUkdZVCOvVy/e8ToxynrzeZcd68iItoW0gGpN258LJSayf1RFxUXxuy/4b/mrk9k0zsh7se/02lQPctKeltpBR48e2LuxsairB8eh46QShje/F0oW9tbHAhTIB+P6xt+JNetBONYzCWmSSR4kUjyIpdWH4YGqfEgRp8YUP8Budy+FnZkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Sat, 8 Nov
 2025 00:18:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9298.010; Sat, 8 Nov 2025
 00:18:35 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Alok Tiwari
 <alok.a.tiwari@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
 correct module format string
Thread-Index: AQHcT+PEIdkIKgU6vEWYOIWkvfWJdbTnMWqAgAC5EYA=
Date: Sat, 8 Nov 2025 00:18:35 +0000
Message-ID: <CO1PR11MB5089BBCB0C7AFDF922167607D6C0A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
 <IA3PR11MB89865DF31695CDC1018DB0C6E5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89865DF31695CDC1018DB0C6E5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SA2PR11MB5100:EE_
x-ms-office365-filtering-correlation-id: 12dc20ac-46ef-43be-dd12-08de1e5c5b5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|921020|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?I7tZVdUdK40mbZCK0EwfzGtkn3rdYR22Ni/8MYLSpwKEukk5oe2kz4ILWbiI?=
 =?us-ascii?Q?3Pj6m5cz3gTGzhevytVUClKudApDhSkZ760/y+6TJvzcRkd/FspRonyRACBR?=
 =?us-ascii?Q?LNM5JrZN8bxfa74inDXTHpsbfq27zJ5RrISypBfaLiVTCLvLdveuJMVn9McZ?=
 =?us-ascii?Q?yyrOUkZLQTtiPXMKv1rou/vjGqVoVL/yaCAfa2sooN+Eis6pZykfvVKMaX1b?=
 =?us-ascii?Q?u97vCiXxGZryP2LMhJ8qwAaZdtmeXqtMST/zDX9hcfLLHs8CCKRb+G0RBhnI?=
 =?us-ascii?Q?b4LY5y2kxC2M8jh1xo+8xqTrxc0L6mV2lQ/EiXvh9WZzwIzYTzLhgFckmmA9?=
 =?us-ascii?Q?RFYQMeu6bSJkPFdYMn81x7PTTIOUuNgljybCsHXZsjL0mMkBD6lslW5w3mZW?=
 =?us-ascii?Q?1gBIcJWkuTahgig63c07gBu/1wQucFzROZixkNdMEFnGhcMx4Ak6yGnQKFRi?=
 =?us-ascii?Q?rcPe9DmfxR4GFQPiwl5RSoPFgOo+L4dXqsgqgKCKCNY4KJ7oYwZE2mb7bQux?=
 =?us-ascii?Q?AcCYeD6ziylHQdAwkJPlWhWFPHmyKwx3ajUk/bhp9E1WEMvbPlqZO+FKm8HI?=
 =?us-ascii?Q?+4uM/SFlbRqcSHrXHU9OaC9gqcfnAC1Dc4X1gvwdmjS014LAhYbYE5BKIO3y?=
 =?us-ascii?Q?814anzVv9rNVHfcvohhmEagdj+lj2DCPM7Pd6fuHeO9L50JW9tQXbdzmLr6i?=
 =?us-ascii?Q?4R0PeUiaWM7FMggGy+w6kycS/aX8oDTvehPUAie6wepCLdQFvwKQo3P42y3s?=
 =?us-ascii?Q?9A8rKPKAVkjfV9xvXWg83PegqKXmzKkRg5rKMpUKdHqi41St9iATWqaT13sj?=
 =?us-ascii?Q?kZvPceR4j3YzVDSvWqhjot8/FK/SbUi1dYB7dfEMPDtNQZyFshU+E25XCQvj?=
 =?us-ascii?Q?QsmjlYfQswFMWpUbDDKf+Kx2sQCeYKy1q0SvjC5XykqUA1ddWjVW2cs4hj3B?=
 =?us-ascii?Q?tf79RwPgBhXMrRrD3UelN7ihQyypS1IFa7L5y4kHL+ud+aIk+fV2KSsoRpDb?=
 =?us-ascii?Q?m5pArcys18d2dX0iycxiiEn1opzdCsu11/ugjdQhSE4SR42Pcb148kXmmRku?=
 =?us-ascii?Q?Q9jo+bDjju5uNesIbzX9XF9nh4rAZjOZVqaV4CxYanYPoApku3bDVnCiHV13?=
 =?us-ascii?Q?aWFkOWW9kTyEqfBABoawUt26sH1GS62l+fm00cQoE3SvClJnvbCDS4PTOCx6?=
 =?us-ascii?Q?s4cxViXK1O1RRYfJlNDhHrHAzhBqNhLLSJS6R5Ycq9G+lbtSG7nRfd+jtHNZ?=
 =?us-ascii?Q?eoowtAz1U38GnkgDlHk5m8em8RngnMjlWe4ATOlkyyz7ZBiW06Y9zpzCLiuU?=
 =?us-ascii?Q?UZGwRK33ysu+wROFXRtLZRHs1CSVoRH4a222nq51kmPim0rbF9ADri3Gtv6X?=
 =?us-ascii?Q?9pliqMd4RoKek3EHHnJgRmWMb9elLKJXQ3oSJO7joi7DlpoyZPhaD1f6aiDR?=
 =?us-ascii?Q?20xLFvQKyne4vBpTsWNx2gXUSwck8d1Or87sHKLqqKYWb3Cjm97xljq7iqvM?=
 =?us-ascii?Q?MIAA6qFcar8qt9dg6wLwUKfA5Vc2v0J+ekASWLppOJGHaLR+s/+qfLvO/A?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(921020)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mJQjoHOpU4150ovhCuSNUj1VcP9rXzMPU0Wozqam5i/GSHGHmnH4ay0v2KDd?=
 =?us-ascii?Q?JmxAayV+Ny9v9zJAeXpajsX3H+cyY+ORGA0KryGGU6ybaL75zPaQ1o0W38FL?=
 =?us-ascii?Q?k+zhnzKUoAG7H/PCnE1fkkdmsksSFVNsja1ysk/GQ6w+A1AKY5fLRu3sCcXE?=
 =?us-ascii?Q?EJGMy+8gS5fvLHvEpVhBkzsnuC4URLLHe5BpCDmP6jEiCkGP49hn7nMJRddu?=
 =?us-ascii?Q?tBI47KaVnwvnMqrfrRSEvB+VcA75f7KXpksUOxQCHgF839wuMNqQPEUa/991?=
 =?us-ascii?Q?80nakpxm+5DBwKcJS3VTtwU+dVf1JTnuCpkDixkbOtbsKXKGDAMkeWh0Wciy?=
 =?us-ascii?Q?NCVXehL/HbsES8jC2q39aS+SayCUe0IrA74/XptaHva2rrWmziPTDhieiJ1j?=
 =?us-ascii?Q?/pWXfpDBGlvzvU1LOw+PDTSwRwuDfwGU83rFNCxRQMyrFaGALXJluw9O7QrD?=
 =?us-ascii?Q?Teyfe0Ly3DBatM7o36NVRdRJXigwDyDkMYFNmu0XBEEjJ4myzTpJKaMI3X0S?=
 =?us-ascii?Q?/QJxJIdzbfxN8EplV9lXKlFJrlBP5pmqO+NcErvpZCFIWeWOC4N1iuk7G6FR?=
 =?us-ascii?Q?MnujEz9vu4Is7ko2+PFzGJfTfMQlGaGUW+GMUc+zEqj4WLRAios8fIZ+6nXF?=
 =?us-ascii?Q?pv/B5Z/zWNRq4lOqmUlwSjWKbCMQ2YHHT5+qdTnvdK+iGposEf42/U3I+Vqi?=
 =?us-ascii?Q?j2q+03sM3ONxa4bMnhDFbiw9Ff8ndqtplrchjjtJ73YSXHlCjKn/FdJ1+ksK?=
 =?us-ascii?Q?RMLYeVVi9MaeQFtyCmGk9khOVkgeAluOSIpi58PLN2syxy9DZE/4Jr0iM928?=
 =?us-ascii?Q?Z82XwRlP4nsj0PIwwMrV1HYXshQK7QkVlTbwcLOVe0hVJ67I6nrASvRylEEt?=
 =?us-ascii?Q?bLR9zQwdwVDcmXtHyEaG5MS4H02bn8QIsbJ1V0JWzZAA3WAtCdHbGXvJz8dd?=
 =?us-ascii?Q?djUa6/0IfwLRs6b3wV/mSdk8TLPw0C8wbpwsvgi8gtaQ1b9g5rxChyt5/qPC?=
 =?us-ascii?Q?IXaptgEc6+M03weTJ4+DgBmeeVpp+cOMN9W6qKm08NKBlpDbuF2PO7klDtHK?=
 =?us-ascii?Q?HlkeS25yeVNlUYE3fSHhsAgnCLB94pgVDPsLf+YSaw/uBVqUUgkNzvJ5jB5d?=
 =?us-ascii?Q?orBwEPLCCh9DJz4Yw2dO5cpnlG24auAmXcf92fu0g5xRS8xLFA/bpHNgljp+?=
 =?us-ascii?Q?124jzCUTCUJVwMuO9LY0R/SxCh9+lkmw3fVpxRB/Xq531RtDsJGK+MzOka0m?=
 =?us-ascii?Q?lO7rmpcz+T3KQODFfphOMD14fbu9uTdLnFByUCEJlYwDs1iSi/jnepMwOMzx?=
 =?us-ascii?Q?XQyH7V1OLim+VggKaFTBq9tlvUC2aFwGs2fXN43XOVbMSwxlAC8vtrQRP5gu?=
 =?us-ascii?Q?KneB6s6cpn6z48ZbRHI7HMUYW3VKoCqiO2RDLQCX/mgbjHbOiwBo1SS1EkJT?=
 =?us-ascii?Q?R2FvWRlDG/eORVZRJ3aC09cA9L44bgA0xn6LUyr7omXprq8TvezFGCKO6Ovb?=
 =?us-ascii?Q?HiLruE40E6KJMgftTLGYhnnCsrq8x9zKCDRw3D6WZZJRbm3cmyj/K2QCg7Pb?=
 =?us-ascii?Q?D7w3N4EnpQrnJVwiFsrNymcpyATfCL+KbQX4S5Rm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12dc20ac-46ef-43be-dd12-08de1e5c5b5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2025 00:18:35.1514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6a6q6DRTS84UC9zjMD7SnYcJzwVa+p1mUd8fqJO7tuegVvbQI3pbmkrnWM1a17ZTPgc8lVLTMEA/tC5kd2XzwLpcoUpqSsfJ5XvYWE7+GHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762561125; x=1794097125;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wVNqPaDN5+9GMr3FWlveF+RR6tUguQKJOQvxmbHHoE8=;
 b=OZtaKYzH4dnE4Z/Qipv96FgAFeJjOamp1SjjVjn1rgroj7pQgWTfe0DW
 gsHaMUof2vX81ZiLlMYG4lWCt4rAR1clSPEkGTW0BsHS6hbkrj55+nwns
 qY6yzTLaf9j7oD36jClvB2DYb/WwXvlqHVL3zpBdL5D/XozlRRqFwWgC9
 QbeMitw47MLN6S9wEjqkWBTLSeheWoutSEKAfeuMKGppWTWjEsq0FOZRR
 GaNv4nZ1dd748ktQ1ATyWileQUDMEvOFJPb+2PT9ZT3za2TwPo0VH53WW
 DAQIhlyb1DbgOKRRxHUrP6sIUvYANxV1/HtmvGdxQa1pXtFICYFwDf0n2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OZtaKYzH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
 correct module format string
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
> Loktionov, Aleksandr
> Sent: Friday, November 7, 2025 5:16 AM
> To: Alok Tiwari <alok.a.tiwari@oracle.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: alok.a.tiwarilinux@gmail.com
> Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and=
 correct
> module format string
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Alok Tiwari
> > Sent: Friday, November 7, 2025 1:40 PM
> > To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Lobakin,
> > Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org;
> > davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> > wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
> > Subject: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
> > correct module format string
> >
> > - Fix a typo in the ice_fdir_has_frag() kernel-doc comment ("is" ->
> > "if")
> >
> > - Correct the NVM erase error message format string from "0x02%x" to
> >   "0x%02x" so the module value is printed correctly.
> >
> > Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c      | 2 +-
> >  drivers/net/ethernet/intel/ice/ice_fw_update.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_fdir.c
> > index 26b357c0ae15..ec73088ef37b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> > @@ -1121,7 +1121,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw,
> > struct ice_fdir_fltr *input,
> >   * ice_fdir_has_frag - does flow type have 2 ptypes
> >   * @flow: flow ptype
> >   *
> > - * returns true is there is a fragment packet for this ptype
> > + * returns true if there is a fragment packet for this ptype

I know this is a simple typo fix and am fine accepting the patch as-is, but=
 you could also clean this kdoc error up by using "Returns:" here to avoid =
a warning from the kernel-doc script.

Thanks,
Jake

