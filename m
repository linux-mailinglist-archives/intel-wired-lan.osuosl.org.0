Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JgsBrvpz2kG1wYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:24:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D34B39651F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 203538238C;
	Fri,  3 Apr 2026 16:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJWEFnW-pvz1; Fri,  3 Apr 2026 16:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 951268237F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775233461;
	bh=u/ST+pnoLMpUoCIPepSYzahHJL3sF0otqSmImJaAfOc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AJGwWztwr2xDgq44Lfj9F1tiuhV+Ok8x9e/T20h0sdTnocOMOLbyrZ2EPctuaoO6j
	 mVVmzbay+bb5OJoNUT2c8U8BTDxxVxj29D+EVO1ky2oVqT8xxLWhH/QbOkbGpyjSvv
	 6/GH+qEQnC0Zx7yvTwMJs7vjqxYBLkMLK9VBSm0QhTtZyOagZnZKeorNA46pqItiDr
	 9CWvPhXdYqSmpAZZEyaamUJcnckM7CwCltt8q1JEWvnPJt6u0HAL6AHGCtBrl4zmGG
	 V8uoqrNIe9EAsFZaEkgDxeIMOo4E237myCg0RUa1NzbYaf+SlYF5NeGMOvqezvAhIW
	 TpaNOHuDmiC+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 951268237F;
	Fri,  3 Apr 2026 16:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E9FF82CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFCEF40131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLH9SDDdyD8K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 16:24:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DC65540130
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC65540130
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC65540130
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:24:18 +0000 (UTC)
X-CSE-ConnectionGUID: +zaBIB3qQvSrBmRESggq8w==
X-CSE-MsgGUID: bUJckqD1S9Gs7neB4KpOjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11748"; a="87684762"
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="87684762"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 09:24:18 -0700
X-CSE-ConnectionGUID: Xt3KmsOgRP6rPQGwX2BXzw==
X-CSE-MsgGUID: MPd6HV9gSNWltozzqZBuSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="227231914"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 09:24:18 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 09:24:17 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 09:24:17 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 09:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lbd6kUqUhd6nLtrmM+TYCpOPerJ7CxqksDKLCLcfQTduyd6VAuaX9pRYAYZi5Or43beVCcs42SfN85DGgDXadUrxDD8KYzHcgXYYONKCGUvw5Seey1byabqTTg36ZTb9/4iMBXEFDJnGizv5cLWyhxZBoTuZxtVh6LJ1jlLNCZOvyCHzV6Hg5hBtMFkYKaG4OP7FHdrol34CX20bsusaTXg+8fmFZmQrXRyB09wVsNuSGpMikALEvLqIklfLU9TZ9OwO0KwFJa1FktSu5znVGvltXxgzDVnpvTlOSoHqAVSo8pTgLDQin6rOS55KufORu0Qli45tfPfJQEOnJ6gLdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u/ST+pnoLMpUoCIPepSYzahHJL3sF0otqSmImJaAfOc=;
 b=BplP7hrEZJeGAVQ4lFiClxvP9HHisyhfShJ+CCRselgIwe8MmPEmvVLKPJYhu9/+2AK9QqhHafBMtq2aZmELDmFa37mJFO4vuOItz0zerT+tGnmU2FiVUiRFLUlhbSG7B+91P2FL2WYykdV/iEMf2RmhFq1p2OPjFlHTS/dgP+X/FE/IGE2Hvv6w5w+A5rtdmgHcmUrsqwItm/YowYa5M2qunFk6/nUD+qQE+KxYsTWy8Kv5DTn1M5wMSEwluIvoeJdASSmWkFAxEyKEJZSUsFYx/zzLXUBbGmgk0pRc/H2ccw65QIYOpXscODaGCmxleseizsvLZLib0of0PWeFOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6732.namprd11.prod.outlook.com (2603:10b6:510:1c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Fri, 3 Apr
 2026 16:24:14 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 16:24:14 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>, "clrkwllms@kernel.org"
 <clrkwllms@kernel.org>, "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 "sgzhang@google.com" <sgzhang@google.com>, "boolli@google.com"
 <boolli@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: set the payload
 size before calling the async handler
Thread-Index: AQHct+VgTjhac3i79kegkT7/+g/PdLXNnIWw
Date: Fri, 3 Apr 2026 16:24:14 +0000
Message-ID: <SJ1PR11MB62978585C701B03C37F7C6599B5EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
 <20260319211335.23236-4-emil.s.tantilov@intel.com>
In-Reply-To: <20260319211335.23236-4-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6732:EE_
x-ms-office365-filtering-correlation-id: b279fb7a-3c2a-4759-08bf-08de919d7262
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: LDBcZuO2omD/1u2M5BXAWHwGvo4ywQU8dz1h3UboprjSwdWPi/U3wCpQZfOHXGkmKWhBUpzojwEq9WyMnwBnLOEEsVPThd+Fs83xmjbAMqs0w0zfH8Kj95TvfgqOhZI4/Aqpibww3QcQQq9uc+UI1DVI8cPcoitf0TwN0O0zp68j7OEuU1DTQV13K8mgQTuddfG0VSEHyrH/mqNz1x5riZFAYPEUCBGsqnpyry1Iq30e3kdqq3FG5uIPAaNLA+aVAEYWjNKpnYTrTKmITVhJAbz+mvlz87OMF2RIA7KN+flLsA/keM1tJ9h0B3rW7+HjQwzGMho3zSjYvuSNWwYZybDtXUsO0TdXV+kIJHkUlvusQ1WBUD5h1XoEgdkctb7Ip8D10L0f89vT8nZlnWZxkQRZM4cF8N5498mJYsf1sIlFlnR7c5pbf1aH4t7sMj+QNTQTWfPGkq8cO6B63Yi9I9YTezaADfdTD9YTygS+Xzuafnq1ALZfu/u2oea/3OjXHuBOdlDHYIA1Ku/PSk/MORotLo1mTaRyqczW++WQPUalXaVZcL3Oi/02t98VEFdF3nf2K82HBx/sshNQ8NIB/YCr8QoBsLddXwc3PNdj3FFEcISOR6IpjsnrtDdihAamkTpvh5ZmrlCID7kg6jraOQGR/Ij5eIRANe7wwRVIDXx+e3B6K507jv+n5C1mYIFnNtsPTMNOIIyNv+Y43pyMlCYQnOuXTQmBcJ3pYhMuXyy/UkWz0Yuceh7EVCqzGKAD/ueMG3t/0/xnSOQHojZRBv4NnXiAO5AzwLgSzKGOYRE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P1AKufzZob3NgwX87PB7++zNsOHeL41jYiuFegzUusJihv7958RrQtlh2dyK?=
 =?us-ascii?Q?VGrrhc9vmGkyJefMJ76GOo2WbhGhrDFOOFCx/4YfKHEGYHNZ7cZYkju/QZT7?=
 =?us-ascii?Q?TbsfgXVcHLTXEPhryvSxOQHg5m4O4OIsTENNBCxgtsiPj74sT6Ds/M25Q9we?=
 =?us-ascii?Q?KrFaOu0Xy25s8id0j5E+QeJi7XdiOEQVadZO5wh1K0X3ZenWo9NrpY9jo5Uy?=
 =?us-ascii?Q?d5XNQburlY88DJDdhD+zBSZXoQ2nESADle1khZSat6k5ZJiuJWsvmuVeTNR9?=
 =?us-ascii?Q?d312mB0Cjk/BP98bdAkruuveOwM7MEvyPDQXr8GEQdZyaX/B+sQImRh+Wzzq?=
 =?us-ascii?Q?SttcS6KyWr2xiwGa6SdzsPgEZeJt2B71cI1TLilhQ00hJM6vKKnF6+6SY6we?=
 =?us-ascii?Q?A6kcNSrwM4mVuWm8RgyMSGfqnqgPAndGmefW+G8gzvBzHZ1jnmtr5iPm9TQZ?=
 =?us-ascii?Q?T4rETvadtRoPsrYtGdBMe/ftEtWDIxMX6PK12GBYytrCsmd89jHmv4E95HtG?=
 =?us-ascii?Q?0GzvUhe1rxy8D7GxAInAgdESdqDyM64YE09iPhPr6ZKWg6ZIyjxOc6nXHeLh?=
 =?us-ascii?Q?mK6smBYq6gxWg/x0Waa4QFlIz18TncsTQHWLOEnw3hcVbXEughm71THk7yiK?=
 =?us-ascii?Q?0AN0YTyK6Gz/14Q+3Sf4jjMkc/PE78bTJ0PkMBRZXmVIMsVcjJf/ZeoV8gOR?=
 =?us-ascii?Q?Y+QErt6HuJKAVaoD5JVjm2PXN0VzAAmT2wzcTvWXKsLz69qOKRFD5NpxBB9n?=
 =?us-ascii?Q?e6FQ4Fe9LA/lvjb+M57oDhbbSndh/C5PLfxbID5+u1VOs3EAldHiKHcEF+sV?=
 =?us-ascii?Q?8iKwuDU1HKx1W4XJPJWq8ec6Op7Ix+4NvxLoVdqNirbRNdnzuXymDM2tAOgv?=
 =?us-ascii?Q?GvQFvJOLjvPNnickBk0PbWuBDflSXfCK/o6J4/EqYm3fbevRWnxUM/9+V8F2?=
 =?us-ascii?Q?i1kRZdWTaRYpp5Ql+0gwDHXu947Fx/THaGp+1HiJq4AWpDiZ0V1/rBdo3ExI?=
 =?us-ascii?Q?o/oJVJSB/KlKzGyjEPCFJ8HdKII4QtrHF+HR6IRdSHV1LI4VxzBgCLaeyQHq?=
 =?us-ascii?Q?OVWP1vpR0S/m63qSae6b6FdM71G1rjqyDsD7l7NMllfT5ZNq/Uxl/zMsLb30?=
 =?us-ascii?Q?uzuVu0eeXrcNeti450TJnT7SrANkBhKmPBu1R8OMihjN2BQmkyKwp7ibRouB?=
 =?us-ascii?Q?/wc/JSxXLsDLDleUbmhoRgxLv1/aKrPIoTCIZVRZQOwRjSAOpgVOCHXBbr6F?=
 =?us-ascii?Q?H0GHL46d35cVdLlGS9/2OjUmTZOeKd4z/RUhWAQhQOAM1bGPOqVwpxlT51h+?=
 =?us-ascii?Q?FC9JCJwx+wM7SixykVedN+as9RiNG2iaxL/xplI8VrSLVR5j4eSwrpk+wDd9?=
 =?us-ascii?Q?l59mwwRaEEXQON++mbEfToXYzOyw03H1M0iGPfC+KidTmNgonIwxA2rRPrgX?=
 =?us-ascii?Q?FLgUAlzurRjl9ah3mOiGadzcF4n932eeFDGLtfMcuUFKYrDs5iS1W1BHU/Qc?=
 =?us-ascii?Q?r2J8wgzZTY1KAslXbB76M0dZqjaRwk6mZ7LJL1FcCU27cbvo5km6QmJ61BQb?=
 =?us-ascii?Q?NLSx9uxMAAD4mBcO4OogpwC2nJfOim4oGtKAYk75H/jScBAf6lvaJsHCPKDK?=
 =?us-ascii?Q?O9FJUFNEVtBhIVqtPWXgAY89FoQGv1s+d5zeUG4M0jU4BWOEfPfjFJK6vQM9?=
 =?us-ascii?Q?iUUgfZGXe6Opa+FcJSMf0KePH8eB4FW1+nurysCy7zhNre31pi+dO3/JOy9b?=
 =?us-ascii?Q?vakaP39XzQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EByVWztkrzYxtuxSleEw96tb0NBiTTWCkhi/PHxwtBnDPMYuZLZCtpin3a5ZXoo8I7VEN0jKyXouQ4w0Lp64wm4hl9hvmKMIsnn5oKk8AiCwYUYgFtEB9E6sHN8EXg0o+ML7Of4cVmJcmxEnQEBR8OsN1rrfTjr0yL8436oN3NG/WOw7SEqMAVgq/9bOa7CwNdsXphysoHxI4NUm9cVKDLhJEXC4K6YcqwG4harl/klOBl1+ujXS1Y0y19bQYqB4uoBi8ewBkGGW6ZuhiktwPy+FqVeroYL5khCkBWEOsAvLsXiSv8dPkJaPa9+tXkciY90cj0rFV1NKjT3hrPwrGw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b279fb7a-3c2a-4759-08bf-08de919d7262
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2026 16:24:14.7728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9bfLEQF1M2QtipaLnAkmXKfFHJr4sfAzewGYW32bwr9r5rRjPD0yK86Scs4F/YK2Fj2rWSLciydgSAMsek8q+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6732
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775233459; x=1806769459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u/ST+pnoLMpUoCIPepSYzahHJL3sF0otqSmImJaAfOc=;
 b=m1wxIa/tNkIKgKKtb1czfydf2Pvsh+LIhJVKTxhBSBC/Xd/nTP2PBKzT
 iHshwEbc+de1DMJ3IQXxLK+nYZPlmcNYZ7xLx0nlJ24j5abi3/Tkvu+yd
 N3xt8I0X/ps6GQGaLqn+lM8W34wRs6i4yvGFyg4iyyIxJJ5WIbgVL9M8Q
 x3OmMAx1REeNUG3YrdSOm1GoBrwDISnPzw5FOekqsUNzav+cn1yEa9TZ+
 9iZXwWuk23TqyrjRDvZk2ysZj2vkCqCTRNvsuWcGh3XcanENzZmOh6E9r
 BfPZmea85YpicdZv11yPwXwEyxwYzAnBfcYaLIraU1EEFysKE5z0nlE5y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m1wxIa/t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: set the payload
 size before calling the async handler
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5D34B39651F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Emil Tantilov
> Sent: Thursday, March 19, 2026 2:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; bigeasy@linutronix.de; clrkwllms@kernel.org;
> rostedt@goodmis.org; linux-rt-devel@lists.linux.dev; sgzhang@google.com;
> boolli@google.com; Tantilov, Emil S <emil.s.tantilov@intel.com>;
> stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: set the payload s=
ize
> before calling the async handler
>=20
> Set the payload size before forwarding the reply to the async handler.
> Without this, xn->reply_sz will be 0 and idpf_mac_filter_async_handler() =
will
> never get past the size check.
>=20
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Cc: stable@vger.kernel.org
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Li Li <boolli@google.com>
> ---


Tested-by: Samuel Salin <Samuel.salin@intel.com>
