Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E08939F7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42B05404BF;
	Tue, 23 Jul 2024 11:13:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GbfBs2J_YDNk; Tue, 23 Jul 2024 11:13:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57D90401E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733207;
	bh=IbCpji69gt/S2NJWG60LwV/intO/y7O5KbIpSOOVBME=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sa+dRKsDYUF2ZQs/GdJ0qI0yg4iX9L8+2K6ArlZpWBqJsWNLjCRhs05QPK2QjMtM9
	 q+4xFBztl/6Hl0n9/EPNkvTkk54KclX4VIB962m51RzwXqDgRgFPkEMODq9WIfKXRc
	 jQfxxE0iHgrsJ43BoNjbpDrr0lhoikMnF5Pq+RuEse3nxFaLG6H3bT48CQFH8RdbN/
	 GJ+qRTdFLNvY4dNBE/1HFBKO6v5k6QGvxJU8FbyKjakf5Drc+3Px0+PYV41DUM6iFy
	 UIOzaL6McEkzDKdABx3wXoXog+zZCj5rga8OedaL3ikyhPbZgMbyhL3S/PLTC6zStR
	 ug8FylAhEJfEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57D90401E7;
	Tue, 23 Jul 2024 11:13:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E8C711BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D308040438
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:13:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4By5a-jDzUtO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:13:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A527D4046D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A527D4046D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A527D4046D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:13:24 +0000 (UTC)
X-CSE-ConnectionGUID: e9ntrW3hQWCyI2sqIdwG/A==
X-CSE-MsgGUID: jyPpShXsRyyd6/IoScB0SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23217745"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="23217745"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:13:22 -0700
X-CSE-ConnectionGUID: 4zOgk2JcSTi3vsHA1lOZZQ==
X-CSE-MsgGUID: iaiMxJmoR9u3nPL2YTtppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52809519"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:13:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:13:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:13:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:13:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s1xg4rDc2uoxRWRBV44nQb5PSqpAyowAETJ6jxwtZfUVMmC1XqpuQSPSVZqLwgAtvSCUPFjJPlUAdhm1MpRG0kJIWUW2GlUbHQobVdcVdPbqkNCttfy0wmbOjTKQrPvZDvCcd1XwNhiDObdYmvLntXhgVsdL/Oh6s91ban6DUK7FvzNab5JkXrgGeJXdxUm8d2N5aMiRkmUrOkDqtfAvv5FicJXRjxCcKsdu0rykBQWGw2qqkhXDl3tyxYwEOwSn9pplR94NqUa+6+5wJAT95YIk2HAjaNWsuvg+Ep4Ig8qsJHmb0yozGfecwzFb9fE0UDoGb0Xwk6VsfL4ISs7IUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IbCpji69gt/S2NJWG60LwV/intO/y7O5KbIpSOOVBME=;
 b=NILU9mHPCTiOXEKgyitVp3P+2ZmB2nImAgkHrRqEZJ4JHaMLh8eknAZoP3GiHEK2xEFenu/vrg3ihch37oAV0ngmSJEJLs7PZzOaz9tFpkJdnFxH2aBGi3BYcrRypJ/Suqur9oMXapm9Y7oKXW3BpPF1IbkkZ+xOpfiBn7qSXtDMN0o9M0xEJdssgod9zFzbav83EV8H3BOyO/HJy05FuY55JxR3d6VQJJhfQZTK3jteGgf7L84hPIJwXamgOyZhJLUXxivrsK7HE1CrIxl4MKGWfa7uFTVuBUJT7LgQZ8A1BjRJ4+mXZSWd2PKSMp9p5n8GbevaIozdJ2Zgsas9oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY5PR11MB6115.namprd11.prod.outlook.com (2603:10b6:930:2c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.17; Tue, 23 Jul
 2024 11:13:14 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:13:14 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 02/15] ice: export ice ndo_ops
 functions
Thread-Index: AQHauAORc/vB+kswkk6yIyqR9dyNLLIEcmxA
Date: Tue, 23 Jul 2024 11:13:13 +0000
Message-ID: <SJ0PR11MB5865A840603A34A0FB63120F8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240606112503.1939759-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY5PR11MB6115:EE_
x-ms-office365-filtering-correlation-id: 0afa7c25-283a-4699-0935-08dcab0871f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/XbtgddBvzNCQL4JihVIpsQf64KGIZZgEJayr1z83YT32yI7YFpZzjEadEK8?=
 =?us-ascii?Q?SiRs375ZTVCidPSruwyV9YKyvosFz2P7QVRpnu4tzvjooqhaT4f6y4PnT1oa?=
 =?us-ascii?Q?2HSk+qjJmjagP7SwrIuNZuH8CsC/b7rlgpdxT9w4DNHjpR1BOffLzhTxfvuN?=
 =?us-ascii?Q?i6ECM/60DsHnwzR9bLsbaUmtmV/vYhV/oA3OoR6KhyPyq7SN04M4wfwc14d5?=
 =?us-ascii?Q?Em7aJ3u2/QNRNWnYsbFH23B7o7et4dAVIqng0gSqnvcm4oD/3IPM8JeBBtHI?=
 =?us-ascii?Q?OOSzc6XWRmTe7kQ55tQiZPaJB6HQEfwT0HHmv7QES8HQnKGdlkZVpD6NCzU7?=
 =?us-ascii?Q?jKerDc1IO7B2/pZxdknJdfb0I3vGvUnrC0JXvDyVTGgHLTzS0S/wvBnquTOx?=
 =?us-ascii?Q?GKZw6sYY/s6w6dFBaBjLBAuqSKiYN9FOO23kABLn8jiP4xLAQ1/658P+HEXk?=
 =?us-ascii?Q?CLlgWeyziDqnZTPdxdbMo+J4k39s46OK25m2w82+4c64ogO+SJbV/BetXpyH?=
 =?us-ascii?Q?MQrtiozJ5KYa7GYOemTNLQ/QPxmZeUiG40MGbiHOiRUTVB1Yr7rl8GhxA9Fv?=
 =?us-ascii?Q?SqWKeBpRPcMTq5O2Gc/wLz8c4AcKxvsXAA2oATyBON+/+ot5UumLxfbILxSv?=
 =?us-ascii?Q?rk96BbKwUQ2bhSdnwoowq+R2nqhJMHquMolHxw41aT/dIlOoHTe5c600kMAZ?=
 =?us-ascii?Q?pAlu6mWQFOw+AqHuRhzNiHv/2KLz+y4ca2Z5v6N0r8GjIZIDeZOd4ca26NrN?=
 =?us-ascii?Q?w0TnCkFTsFXalIT9Xzoi4Q7NmJSootoXK+85R99qTk9tRo3fRIX9hCPDWqNI?=
 =?us-ascii?Q?ltIbwmQpthqdPYJNar3MLrdePKYvX7pvfbaDVeSXplAKo+N4wDzoU/YwdsB9?=
 =?us-ascii?Q?GZpudISI2nveE8viVsNv/ryF0z41lPnf6gWaQ89pdFU4Wu/O3gHnklOV4Cw7?=
 =?us-ascii?Q?yxGa7m4uRQO/GE/oR28zCxeofwd30MJ+jbYJU6HAM7Ob4zVh7ZLqvgXLKqXo?=
 =?us-ascii?Q?iJcqqLxANAtsjFk5tZXSOj+LmDqNhykhDKdFeQMa04eG31nlDZ1PpvmfA6RO?=
 =?us-ascii?Q?66pGfq/oUfN760Rv+pzMN+BeRe5wV94lCyyu7tDISP6wKi3pzsWnhzd/bv92?=
 =?us-ascii?Q?97SZP442Z7nGCQVHCh6YLK/vTC/EbA8Jj3twrWuOW7bQg35qP3p6yEkxJGBM?=
 =?us-ascii?Q?FAL0cioMsd343gS/fWx16tl1EIYAAWKgc/X45NbR+jgrYlUT4aCbwQMCvxAz?=
 =?us-ascii?Q?dCg+rSrBTSaxldT4MLfDb0SNf9TnEC5Z8ZVcvIjPWMX87LS5za2DbLIvZPGn?=
 =?us-ascii?Q?yIq1fgX03a1H3hPo9Nwp10frYpIt8g4U4Nt5KYab0SCMcVAFmnY2dWBHxNkR?=
 =?us-ascii?Q?sGD4t/DkLfCdrhb0C7Cjg5UzKg6VroUOiqhfAyNYhGFAjs0JGw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jVpbJ4nCDSKB8z7a0u1q1v6sDJM/3MGicBFhmNSHU0FSFhABYSL/+i/AKT8D?=
 =?us-ascii?Q?u8WMb0TDKiNqaA8vwxZ0T4yFUaxTBQ/SmqfFMvlEBLQiWQSHfuSlnhfD2xMj?=
 =?us-ascii?Q?b6ETaY2hTVDQUPqoNlderMAimyqVm3byUwUjqcfDpC8u0w9sP26xSC0N5WIV?=
 =?us-ascii?Q?dXWEpaa2/+yh0aZDZcpBzXYcBQbuFIY93K88LaGxaa7EtGlGtORf3if3ZrvQ?=
 =?us-ascii?Q?iF10gKl5fxZoiTHVl5N+RZ/0XgnCtfeE/m5WAcqbJ2GtTnNGqa5GP4nDUkth?=
 =?us-ascii?Q?beJuXqvw3kXqeaBY7i28CJO2GxNy76tLNwvkMC0hik7BB14/X+mII8CwRi0M?=
 =?us-ascii?Q?31j0eSmAzI5Fdhm8vDeWDxlot98BHVJwpPlwwFMtdnNau4WGG6ChbLgn7VRu?=
 =?us-ascii?Q?rDLv5v/46uXGocTA7nDW1fw8NuKCczvU0vJ8hfJDIpnufOekwdZF6mOkbtyb?=
 =?us-ascii?Q?9unAdOF7ZWNp3hYWM5YDhKwWBpgnsJl587cCNWQ6L1nLULjrJA47OQ5SWkIF?=
 =?us-ascii?Q?wmqeO9UFpMuYS8D2m6n+5oLdTqrJwxLeYbJgl2Xp6ZqkSLl59nB1Hn92Ewa2?=
 =?us-ascii?Q?TZPoI0dHyNCO1b8qneUvnx84fSOhAQABYZnpHz5k9okQcNh6V3cNcX7twNlw?=
 =?us-ascii?Q?7PlWbjlLrLDrRLFkEMB7u+LF80IZKDxBZBcsi0HljKOB7zmIQCHt8Rx0nCYi?=
 =?us-ascii?Q?EgC2zoUQRLLYiTaHXfw2IGQUD0SjtlY4dtc22P2uqhaEjVT5PXamcWcSNu+1?=
 =?us-ascii?Q?d6WW15O7jl/4KWJnuHWkA4WbS/VRnQDZv/iej2DGW1Qq290SOA7Q0GKwZn4p?=
 =?us-ascii?Q?f6D1wA5u9UjrJwRNCtNyA1/2kFNenCmy2eoeQCWRHnOLbQc5jN3TIoTNh6IP?=
 =?us-ascii?Q?PKjPYKzzmh6tyb28mhCjrjJ0HNZVwKtyuJfEDKZgCuxV3gF8yu6VBenHqQ8y?=
 =?us-ascii?Q?sYAuChoexeWE6EsOkLeA23nYgxVtnGksQMqrgjjtHWd85Krloib0UD37rK9G?=
 =?us-ascii?Q?JQxmA/84rTzRC72MLSa4gviRs/syBbhD6loouInVqelhUcX+CEeVsuL75NwQ?=
 =?us-ascii?Q?hKSVayCjAa2l/e+SPKkOvTQ292o9CqapgqMISm2JEvFgVXVPYKzrREaS+zPV?=
 =?us-ascii?Q?RFo70sVjxmi6+shCV2g58uU76/SQ5SeDG2eG5R14aY18XKEda7lfWlxdl0Zm?=
 =?us-ascii?Q?DYLRv1My+/2+kAUirpSlb0ewDHzSuPm4iogiOO6fZuMHLQmCHGRfS3bUPLpz?=
 =?us-ascii?Q?bTVpt4Qu0EiwEJEDAJY9vgMKJs3VMEEbjEjvA8JaCdRXZVGQD5GNT09g/7P9?=
 =?us-ascii?Q?sh/zVSKpAXm7bxF6WSQLKSZq9ZFRI434L4Pft853UVwZzoEdsABQZA+Nvzcc?=
 =?us-ascii?Q?gu6oNTBJUFwq46LzDgSyYnou2YNJAeG29VSAg4x8oz6o6SxnF1zFbitNS+2Z?=
 =?us-ascii?Q?1AEag155t1mdYAZBDUgJ7CrEF2qij4vi1mS6LjaOxxupjrvENeqpd6I9uaIH?=
 =?us-ascii?Q?hZWZNlGVAIhO6ktY1MZy62vTCAON6ugZrxAHpFbH+8Ta6otE4NtHCiNLXI8/?=
 =?us-ascii?Q?VFtLLArFrH4TE26JleRHXEQ6EYSQthcmBpJn4zJytD8dJIA4sm9W8vWviSOX?=
 =?us-ascii?Q?HQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0afa7c25-283a-4699-0935-08dcab0871f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:13:13.9316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RpDaXceH7yAJtxgHRHd4qmNgUwkRnCfZIsdPV+ZMNuytXEv8mOMxn7RIDPAdKhERD+phNxpXJTSK25qhiuUqCJVxn/9FD//Sn2exObevbf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6115
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733204; x=1753269204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k3NVJPoubn7Guw7O6nhkfajZ9LFHKjb/rI3d+q4D8+Y=;
 b=CoEdljEKmzV6LF9MkG41K6+E7oNk7/BR+Gop/xl/x7Y245Qt5OVUctl/
 vcF1df96gCCxho14XoiRWvK8qjKVW5eAOMWaRFLWQShGmRBeINHN/WVVz
 UKuqX5FYQwI6yX7NZ5fULANUEz6+HYlIPsuKhQBOh5NIoluLeAtMNmfIc
 oM9sJoLv64AvK4U3/IbXA4+K9q215PXMjZ8i53xLxj+cgaCOLwVLXioyB
 iBUGMchMwCL8IgOemizdJgF2gVilCKpuaKS+zlP/2huYiC21OKgtcRYas
 osE+aoCimtgl4mIEGOfbLxwPhjF5vYpKICbB6wEc9niHM2q132Y9vusxU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CoEdljEK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 02/15] ice: export ice ndo_ops
 functions
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 6, 2024 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; pio.raczynski@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v5 02/15] ice: export ice ndo_ops fu=
nctions
>=20
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>=20
> Make some of the netdevice_ops functions visible from outside for another=
 VSI
> type created netdev.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  8 +++++
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 22 ++++++++++++++
> drivers/net/ethernet/intel/ice/ice_lib.h  |  1 +
> drivers/net/ethernet/intel/ice/ice_main.c | 37 ++++-------------------
>  4 files changed, 37 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 9f275f398802..17ba6ea43857 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -1001,6 +1001,14 @@ void ice_unload(struct ice_pf *pf);  void

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


