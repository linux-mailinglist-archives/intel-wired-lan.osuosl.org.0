Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D86BEB591FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 11:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BA1460A3F;
	Tue, 16 Sep 2025 09:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u4k1LKcOxw4b; Tue, 16 Sep 2025 09:21:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA22260892
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758014466;
	bh=sGQpHY0c3bdCcuWNTAH3qoDivHhOzrJt0ziYX2845+4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XoWUvjQ3B+krBCApJwTNZrYKdsWKke/D42nID0Vx6ExALFI4K/QbeWGNrlQOCQ9/S
	 viGU/iZf49Ui9Xa58Z7FWzufGepO48Vdx+Y2W2EV5BQXZQbkgu/VH0BhVUiESW5dzX
	 LP2675xMdiR3p6JJTouHoghsM9XoA7xmKNELQOv59pKy9EQPFIRNwuexV9H5R/eSly
	 jGXdD6L6TsALW5EmUOqVTOcp94BFVNLQEru0gOCCf1Xfrc6dJDJC6nnNp7TOjnVOBa
	 MBrU7PVyx4PFMHHJHVUph01L/YFt+Jg3EZESYr19fwlpZRdlDt/aHzlFZTLjSnv0HW
	 RumX4OtYzmWOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA22260892;
	Tue, 16 Sep 2025 09:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B6FA69DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D9C381514
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f9HlHWBg79fJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 09:21:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 53E8381412
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53E8381412
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53E8381412
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:00 +0000 (UTC)
X-CSE-ConnectionGUID: NFGiocN7TG6ZqnjMeQuYug==
X-CSE-MsgGUID: eVGir04yS/2ZWGIzUCAt9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60345853"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60345853"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:00 -0700
X-CSE-ConnectionGUID: NLXqBSYLToqcLB/e6nOe5g==
X-CSE-MsgGUID: 4v9btvdzRFqQ+YxJMXoEgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174697557"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:20:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 02:20:59 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AgSLGHBPpHZql66ncI4S4M9iNKJ0QoqDsIeAIdur5/1P9Q+HAPy7+W0p5iRSZ5DBqqLH/P80zH4shX92Afx70aCWln0ReFT0bZ/j+ea+k5eHiW/KzaV8COW2qQvGnP88N4qlQ4uMmbWsji6bgvV/zHPYWvYlWLLqgCthM2DEqcSjwS2TIbnc+Jg0AT4zCfdfTYD9NOLMV743yUaTFJyD5fFOrJTpvK9ANU8iiFpJZ4N/um7g3hE4s5qOuy6ySPp1A5K9wOcScFsD5mCJ80mtGwBcV4CqY0fYi9EovT6oUBnJV44MJ+pLJm98RFccg3hkS69dXDXvx3sp1dJoFOJ9Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sGQpHY0c3bdCcuWNTAH3qoDivHhOzrJt0ziYX2845+4=;
 b=yFQ0XbBYmTwi8Kh12sGz4UvswLLnze8v/XocnaXIzUsZr5bRNhSGzvrkY7ROaasBUPyFGbqN1LubNMOxZ9lbh4tHYT1AnQO4ck5TyHForFyopgaoaDh1GUw4qxoIcMZwpLylT6T6uvngK8KLhiHRzzGT3t5f2OA3xKNR75ouUKTpddid7AViqUSQRxAB7hOUG8a4KdPRryw1uccBnWMG0200yPjd0rQToP+aqoDOanVz6S/i6EkiyLFtWyiHE16ZKRXOp07NAOWEeJI3f3mWgwMHA3Va/ADd3ebMd8grUBhX8qfZl5bNC6AbRMF35bj+D5A1H26ueEsXisDr4+ZMNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB7067.namprd11.prod.outlook.com (2603:10b6:806:29a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 09:20:53 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Tue, 16 Sep 2025
 09:20:53 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830 Earliest
 TxTime First Offload support
Thread-Index: AQHcEIRHXJg+5Qknl0+1HyltqS9JybSVWv9g
Date: Tue, 16 Sep 2025 09:19:53 +0000
Message-ID: <IA1PR11MB6241298FC25531AFA45097498B14A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250818132257.21720-1-paul.greenwalt@intel.com>
 <20250818132257.21720-3-paul.greenwalt@intel.com>
In-Reply-To: <20250818132257.21720-3-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB7067:EE_
x-ms-office365-filtering-correlation-id: 435f8447-77ff-4742-33ef-08ddf5025603
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?q14iYJy54W0DLx3o33yFfPfmcYkZiroVaob0xg7jJZH+2t5hTBfeKpmfix8b?=
 =?us-ascii?Q?Fk3pf4BAxuot/QZ09LmykylLq75IrI5NT5+pJZsRRqF5A+hn3F4HNk9j4Cyf?=
 =?us-ascii?Q?7a0qMxeL3GDfSJxJUDSO0XdXhB3H4Z+TJNsjHTdvalYe1W4E6retU3tTVWIG?=
 =?us-ascii?Q?uS+TtMeQDS1RGzJzxXNA+VCd3AGv/ryIkgkWs90NicA2ExXfn7KZl0iEcZpS?=
 =?us-ascii?Q?83F2aDY+8EyPJp0Yv9yHTEiK0ge88j1x6iRHAEymMF5KO7CYqSexSlYRF1SX?=
 =?us-ascii?Q?VNucN3cTOHXvGyz5YlCQXuFLfRZYHTtXlBh243gRxmuoLlEcOQlMwavWPuxc?=
 =?us-ascii?Q?EdYr5eSDOzHDr84VjPE6mkWsgglnh4kOopxTZSa5jU8i0+0atC3ayhR+EW/A?=
 =?us-ascii?Q?fJl20HX+t4f4TaptIs/8aNauQpVgRxid0NMLMak16GMhaPKcotb09e/tTzVA?=
 =?us-ascii?Q?fismYmOv39iMYJpLx4ltEZY65SpM6LOta0W5n+/vMO1iq4FYnGQSo3R/LAgW?=
 =?us-ascii?Q?H+JTfGOkf/6hYfAOSaOWYi0d0dzA9rid+55vnNrrYvcKj+WSDaF+L73AoueZ?=
 =?us-ascii?Q?hS5Xi6sm/EFZoU1QFIqXcMzE+5rjBGSUJRU8JzHja9eUN4GtSUXcuLw4nVOy?=
 =?us-ascii?Q?t02YjGFL7XWxTwzQh7C7hmxjBYHgLe4XOst0DUB9FS/Y3hti/Ou9rK64MqbJ?=
 =?us-ascii?Q?33ZNvTKE+wyamuYvSXMmU9qWr+sWQzDUaQ5K7EzFYraT6caKbB5EVik7ebuD?=
 =?us-ascii?Q?JoJp5CUScp4Mq6z5l+vXUXU3m+YlF5F1AzUvXrXnhu2zdpHjHT7BEdl+wjQY?=
 =?us-ascii?Q?BZSlhQfgcwWFfqao26FvbCBHDf/O6OPhJqWgD5OABAEf4dBm/2+BVYF80znb?=
 =?us-ascii?Q?/mMedhykeFgI9YiAriiEpWwFuKt+gkbcXlv631mR3aQ0VnvWxTC63wew0YiZ?=
 =?us-ascii?Q?y0vFh2UdePiM6qlBwWdal7ZQoo2vJpXvLnCzsL+WB/vMZe3zGd4w38lLNEwT?=
 =?us-ascii?Q?+/Ubr1AVDtKjleMbZ9ciShFU9n7HkrHpeokmXKIHhlAPaQA9z+a1L4RdhxQl?=
 =?us-ascii?Q?I2UEUYIyGH++KIA9qPILtGa4Sn8SB8kJ/Gw1Bo1XNJVWn2+JsX7gun5NUEDS?=
 =?us-ascii?Q?NYm45NPrKHugRN0oUCSJ13Am6K0dkws7qxXOfcpqQh7wT/U+BoNnUGakLn0F?=
 =?us-ascii?Q?csGv22/Jt+83n6BCQEG4LRFZburSDo4jjktDqiBsdnAuQ+zZ2FYnp/SOLk/r?=
 =?us-ascii?Q?+i2DD2Zxep650au+NBnp7MdQuZ1HwH1jx6QeVac9B7bdwkDk0eDjb9YnQSg7?=
 =?us-ascii?Q?S1fkXNIIVkzDitev9TUMfNkkSfcjCGlxHt8zrGQ2aYEsXtEmWanUvZe5+m/t?=
 =?us-ascii?Q?NVZw6sSQB2t4qMENdFtkzDCJtNGMAl6gtNXlL5ra4iPDAWTwns/smc1R5LpS?=
 =?us-ascii?Q?PecuetxKgiZs7Sglqqpc3d98WaPLoka/Rfb2OWiU/+Q/dEL3alwbdCO+jNsq?=
 =?us-ascii?Q?5c5cEAjz7u1nTnY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cXtRhpxS4ELjQD5XLacRR+g/ea+/Mi77KHfFNnz03pkG+YURxtyF+SVgHWFF?=
 =?us-ascii?Q?HNdvIVhImw7bL9DUrgTXmVYzw2iZtZS+AsGe1VdnLtY6xUBFQM3Qo+VepQX1?=
 =?us-ascii?Q?6Nu1eyI00vjWAeYFF5M1BWxHj7ic4+3pBcy3O719rCDz+dWNbsSYbmvmRR4I?=
 =?us-ascii?Q?XszUOiAqV5s0Q7nCTzuJAHZ/NvcM3BnPRfKvVXdnXSio+gVjjdhfPLTrNgDN?=
 =?us-ascii?Q?b8NcKKySuUOVoK3XFY8n0qMKLRG+5WaPwTSlGYVKz9GUR0sPvHibLBI9iEgv?=
 =?us-ascii?Q?d3Uznm+opF0c7fn7AfM/CLDEAEb1DcNidTfO3APruJJIVYOdlOPrC5qOn5wk?=
 =?us-ascii?Q?J0qUbcgRIT3FsvWGAEeAgh9m3s28ToXqeYmAkOU7NUX8hKq3mhEeaqDoII64?=
 =?us-ascii?Q?yVAvhQqVzY4vVc4fLtnhlQnXCKlk/oUFHjwOizJWGdt8raab1SqerAIMe2Wd?=
 =?us-ascii?Q?EZe1yeAn/hCVMgs34Nb21rRc9on4MtT5pGrNpR6VquGEqiVmK24jaj4F0tiR?=
 =?us-ascii?Q?Eg0+vKNdC+jyvWzAjmHRqbmdNxQUjrAKo+L4c4iYHoZj33XbKzwXFpWATUZ5?=
 =?us-ascii?Q?DM8NaeGILGbDnXq9Avbgdj5m6ostjmQKNrjUa8/BEaKl76LI8j8EUQVAUASp?=
 =?us-ascii?Q?H7ZlKv+bffz6pOphN9zB3O83HBLc+jCYd3PMvXRU47sCuVjYLCgDm2ocs/OM?=
 =?us-ascii?Q?gIWNvQNoXaSnPuC4aTcYITTdYIIjpSqJ8J02Z3YAIznkZyRHNtAZfemjIcr1?=
 =?us-ascii?Q?kGz/T+XScsgbSsnlccv55uXY37YCPbska0nAVXo0tT58waX9JiCqhpLswSLv?=
 =?us-ascii?Q?/n4H6m+HPg5bI1+DamwKU1Djl7r2Cqy5WV/8cWe68fGLZTh0LK1dt+nsFC1y?=
 =?us-ascii?Q?wGtQOYzBYDbvea+dwKjpD4DsZwwcIsJLwvOtFiyJdgythBjGcnNVbNMHblSI?=
 =?us-ascii?Q?O84uItEiLVlgNgKjmBn+/8M8pEDn66IzBRcB6Mt9ip6jDxrr10ydgIxaDBUd?=
 =?us-ascii?Q?b77YM/lAkoAPU9vXqtCMATsxlq5+pJ+kUyCwk77lq8vLGeD6ttgteEaNu8dq?=
 =?us-ascii?Q?PIX3Dtkag3lWgL6/ohdd5O9TGLCH97oYXvTqy6/pp3QB52y4EVgp47pJeLgC?=
 =?us-ascii?Q?eUcW/ywv3tVi5seNG8ewd94kzwEW4F9vkNWnRm6j/LCLIoHlpytwIIrrA0hh?=
 =?us-ascii?Q?EMKzhOmyNJ1ruXWIerQaupuDGBBBOjbnbltZ5t3/2CacGU4Srkd2l+T2mmf/?=
 =?us-ascii?Q?isyNvCTS4gBWzdkqfJF8fiM/gJbNlkyz8dDjK+8YEGjg0eZyZI4+MB62MH1c?=
 =?us-ascii?Q?+o9heX78jmAVqPQPI+W3H9tfgF6w36KImLO41gsJh9qFeLRbtjpL6zPWXMpI?=
 =?us-ascii?Q?p/Sq21L5vi0nNiayUzSbpICaysazb2W2QJrWcZBfOv4s7/zZwMB/ufhQXZ8Q?=
 =?us-ascii?Q?KmorIljYprgxWYY6kwRdNs4SN4pJSl4Fh5fUCLBZnWGnLqqTl1j003cTeOEf?=
 =?us-ascii?Q?FNtfFmHZ/Gw+5KrBzrz8rX7E8TBwSZrPQRf+5BqU7WFtSypcKMXKzBIbxwcX?=
 =?us-ascii?Q?5biiHz3/4F0ntxoZ+hDNKmT3BLBMJoalvwUj3Fuw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 435f8447-77ff-4742-33ef-08ddf5025603
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 09:19:53.3730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZAdKZwZ2mILkA8uMPQQIEzBvCWs+gIf/QJ4CZxQQv5JjH3IEjscMAtXxiRAMaHWmWVZbxQvU//hchGH0vheQqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7067
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758014462; x=1789550462;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dhs0Wa9gBtONJ1BxUP62NqIXrf0SoyoIm8Ga70HhHf8=;
 b=ZTC6tmuxsdYbCiYAHzjLJNvUxqmUVZA15BiLfFKtWA9sEtxApry9pf1s
 3qwoNiunUg3rIlpZ/FnDcY1n3Ctxae9qx7/TQKKfkWVue+TbW8WJzfAbk
 wrvjf4zUIZXtYg/O3aXba8uHIcZeTA/K8+vxqLqwxv+JMDrnRTgUa7Ito
 KuemqO06jddMiMbWbodoxi/Lp0F1vGbI7s9nx+Gu0Ql8ziRtv0F3uUhgB
 krjm8MSou4gyedesuYCnIMVVoYmw1QygWd90jVGhzAtniBAkd8D0LWQJM
 QGWhtf8twRpAtLMDf6IxTFV+Nb3NfPRUeB6D+/P+ZRZU5v7FE7AJ2AppB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZTC6tmux
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830
 Earliest TxTime First Offload support
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
aul Greenwalt
> Sent: 18 August 2025 18:53
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Greenwalt, Paul <=
paul.greenwalt@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.=
com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830 Earliest=
 TxTime First Offload support
>
> E830 supports Earliest TxTime First (ETF) hardware offload, which is conf=
igured via the ETF Qdisc on a per-queue basis (see tc-etf(8)). ETF introduc=
es a new Tx flow mechanism that utilizes a timestamp ring
> (tstamp_ring) alongside the standard Tx ring. This timestamp ring is used=
 to indicate when hardware will transmit a packet. Tx Time is supported on =
the first 2048 Tx queues of the device, and the NVM image limits the maximu=
m number of Tx queues to 2048 for the device.
>
> The allocation and initialization of the timestamp ring occur when the fe=
ature is enabled on a specific Tx queue via tc-etf. The requested Tx Time q=
ueue index cannot be greater than the number of Tx queues (vsi->num_txq).
>
> To support ETF, the following flags and bitmap are introduced:
>
> - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
>   support.
> - txtime_txqs: PF-level bitmap set when ETF is enabled and cleared
>   when disabled for a specific Tx queue. It is used by
>   ice_is_txtime_ena() to check if ETF is allocated and configured on
>   any Tx queue, which is checked during Tx ring allocation.
> - ICE_TX_FLAGS_TXTIME: Per Tx ring flag set when ETF is allocated and
>   configured for a specific Tx queue. It determines ETF status during
>   packet transmission and is checked by ice_is_txtime_ena() to verify
>   if ETF is enabled on any Tx queue.
>
> Due to a hardware issue that can result in a malicious driver detection e=
vent, additional timestamp descriptors are required when wrapping around th=
e timestamp ring. Up to 64 additional timestamp descriptors are reserved, r=
educing the available Tx descriptors.
>
> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
>
> - E830: Maximum Tx descriptor count of 8096 (8K - 32 - 64 for timestamp
>   fetch descriptors).
> - E810 and E82X: Maximum Tx descriptor count of 8160 (8K - 32).
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h          |  33 ++-
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  35 +++
> drivers/net/ethernet/intel/ice/ice_base.c     | 245 +++++++++++++++---
> drivers/net/ethernet/intel/ice/ice_base.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_common.c   |  78 ++++++
> drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
> .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
> .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  41 +++
> drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
> drivers/net/ethernet/intel/ice/ice_main.c     | 109 +++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.c     | 173 ++++++++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.h     |  15 ++
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
> drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
> 15 files changed, 722 insertions(+), 48 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
