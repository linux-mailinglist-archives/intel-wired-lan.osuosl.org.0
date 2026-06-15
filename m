Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /xPKMfciMGrHOgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:06:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0616D68818C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:06:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="wv/rqCvh";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8619E403F8;
	Mon, 15 Jun 2026 16:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YRXJNNUSSxFP; Mon, 15 Jun 2026 16:06:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 062E640550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781539573;
	bh=hwVwC7SzTEmbJCqmIrjUimyOFbjD2xfaLyJSXRe2t6E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wv/rqCvhZL6MRr966DstyxMlxv/6nPtZCY9P1etFJLzTKK844Zl6xZbhvj1ioLFLw
	 etFKs/dXMzIq8+EYIPawYUetQSqiyVwWPweCIFQEkCKmykkJrD/NRQ+uaZUeEtvOk+
	 Uaokpvqe7l7V1gSbGzSaY/CSE04sArolyFl0Zk5hAiZGZBN00IlnU+UYr6lQdJXHLQ
	 VWR0UJNtq7B+hTWrtbbVmQK3polczRUkUo3nVoABWZ9oDnQ+uup66aL9vho2l8AKbu
	 W6tdoE802oQZCUEot40cqyewmxDtLLodDm3ikVPNZIWecBTboQo9hrvLahxOmoKzop
	 lptbyaZiJFAig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 062E640550;
	Mon, 15 Jun 2026 16:06:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F498DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40CCC40D84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rpKmWBXrWIX8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:06:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 92078402F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92078402F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92078402F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:06:10 +0000 (UTC)
X-CSE-ConnectionGUID: UTANTvlXRJ25uzD8GeF0uQ==
X-CSE-MsgGUID: mZa5AEWyTjOJUmFY4u7Z+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="92844218"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="92844218"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:06:10 -0700
X-CSE-ConnectionGUID: Rwxi3qj6QrqVLOqJ/QLRLA==
X-CSE-MsgGUID: THSxtXdrSMKYIn/ddzw02Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="285628074"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:06:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:06:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:06:09 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:06:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o8gC3nVs8RO/XBRE3tEmEOQexgwW8aT81/5Jpj0Lf23gUaxUy+0uiSVfmMSZtzjBK6BOeJRjTmIo0GoEXJj4o372uZYm+bs10zZ+uRSHZ6gpD2vIt8Dt+O9ks6kEdt7rS4HaBnPrKKcwSUzYnQFnrR93LtEpcpbX+W72rHSQIDz1ZglROFbESpcjER5wbhAENVFLQ91mLj8cwdR1tLcoiVzajcLFjLmVodlzPc6/GPEn2xhSh/sw2+L5+Vg7K8TOIBKQz4g3Wp8VHHtbUAUu294is3GXtYVPqLOLwmEwbebchyisedG4TDtwM7gDDn4CG1RiaRHHzAIoGVR5MPKOlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hwVwC7SzTEmbJCqmIrjUimyOFbjD2xfaLyJSXRe2t6E=;
 b=OiwRDuQB6cwAUtUHpA0KiJ9deLxJJEOs+jnta6aDK/ZvV+FYy4+xvjNPF3a5JC9oUdk6G7D2luglbjXJsi6iJyDynY8/ASDzRYw7qW4ej9blig2I3Hcs7f5WZlgIUni8MEEd0JJO4p51DGBPW9FTwzhGakF6gYrFWwari4w/Ka/IcZ2s3v/EEtbMqjVXKKjBZewe8h/VP3t75afFMZPNE23hh2yqUpZzX0rtbzUEnFQbh5Z7PzxRZnlkAUkVIkILzII7uE12EO381TLJwPWK+J6DForG3/c6iwo0V+Wf47nquSdBKC5k/IezoEEYSZuy5Vqmy6hAb2DhC/5cS0FB1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5772.namprd11.prod.outlook.com (2603:10b6:a03:422::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Mon, 15 Jun
 2026 16:05:59 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:05:59 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/6] ice: convert hw->agg_list
 from linked list to xarray
Thread-Index: AQHc8iUDGoOsJbTglECS2ucBYd4EOLY/0ZhQ
Date: Mon, 15 Jun 2026 16:05:59 +0000
Message-ID: <IA1PR11MB6241F96EED9E678933DE0F4A8BE62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
 <20260601-jk-cleanup-vsi-aggregator-nodes-v1-1-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-1-36d6ecbe5ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5772:EE_
x-ms-office365-filtering-correlation-id: cb9e9596-74c2-47c2-d032-08decaf7fd89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|56012099006|4143699003|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: XJaCfLbrjTdCymuqV6oxvxwIgUXovuS3M+zkRi1FcokFhN7nu4YdAER5FE2S2SVUVuY8uXSmUboi991nZWQcrP6zpg8dxxOadALNiY/Mk741+JASD4UZB5EH6JD6qdF6AU8ZNlThpEtw444cUVz68NSB/VZR3twNuhEBt+bN8TNT/cGMv4z4pKe3Ddm+p+ZdGzJ9hxBo7+Gv0SmiyLtBoytoy/NDqFUN/EqTDj/NFfLM2lhpSRwMT7Dp7qnzuEf2vfrHYzBRzgDBqMV2lp7NOtcHYVjl7o1wy91FlSQfj0fDXXB/OGD4eBxK4HNREX4DgIyObxwRh8Z3ym8Cx7PQ7h8qSrmWza4SsQv+BXelK0HVcDStiEOxEslEl3G1Eor6gohHxCDc31FvBfYLtBt5WaS6YxcIJKcOolHGJ04iy5tedNuaSDyUxR6qVdSj43UAuNK7mztjVo71ZStoNKrhXeNkjjKSaNZqW0Gh7zGf3EoHid74UXJWYVivOB9YQUzstc8lUJlFYkMLaIeraktKVU4Cv5aJcT+e/QJZZ6RjDeyGDQH0j06fMutL6GcmtsXI3tI6uIEiiGwD9CvuriugMpmvmpAs++tLyuIzyqlL6TKxYMfkAaLFGh6EL2xQe+iQX4Cz/lGCEhrthZldZlc/11td6Zd92W/IgJgarIhk9MWjfuiVVnAWemqE/DdrAD+BtWl1hQF1IVOEenZpjmkbLNbfFOBJcqJih4FUn2LVmlEttqu3ONnYV4acUVYcJ/6G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVFuaHZYbDFGZWxKencyZ09PR28rZDhpL0dhbHNOdlRtZWlXZjBLR1I3Y1NP?=
 =?utf-8?B?MXcrTERoY05PUWUwUVZOZlBKd2ZEdktFeFh4WjVQOC9zeTNhVUpPS2FvOEZp?=
 =?utf-8?B?TWRveFY2QmRja1piR2p3M2FSZFdmWTBMK3hhQmNTeWZXNzNEMHFpZytwNlZn?=
 =?utf-8?B?dVpDMUlCbXVoVlJ1dzBpUUp4N1oxUi9JM3kydXE1dWZqSHJ4WHhIOU5JdVVY?=
 =?utf-8?B?YkhOTE5DUFlsUlZjVTQrVzRnMSt0QW9HY0RhNzZlVExKR2Z2MDVjdmNQMklS?=
 =?utf-8?B?VStaVTBRU3k1RURyci9rYk00SFZUZ2V6UEZMaThFV2JVSC94RWwrelJad1ZQ?=
 =?utf-8?B?OUdTZzFtczFGcXJ1eXkxRVh4cE5KOU8xNCtTMjNnK3l1NG4rM1dBa0tRVUZr?=
 =?utf-8?B?U2FoOU03YlFPRlI1VEk0c1VLNkRacjhsVUg5dzBuR0s4U2E2ZDAwamE4eXZK?=
 =?utf-8?B?T1FMOVo0SzE3YXZsQm5McE4zUnZpV0VFdkk1TkhqZ3NpN2J2RkVxYm9uN1Jh?=
 =?utf-8?B?d0dtRGlaaEVyd1VjTCtlbmN1Y3U1cVZ1ZzFkUzFtQU9BUkRseUh4akR4RXJv?=
 =?utf-8?B?MUVmTTRvU1RPaHR0NWxRaXliUm5QWU12REFBQzZxR0xRRHMvNkxybEhOTjUx?=
 =?utf-8?B?T3BrR1RDblkxNUJpZy90ZGFycmthNk5KNHFRTHRUZlBEZVRKN203QVhVdTFW?=
 =?utf-8?B?ZnFyMDlLTlNqdC9FQmtFUVFneUxJZHJzRUxObEdVKzJMVDJxZnp5VUtwOExH?=
 =?utf-8?B?bkpQYWdqL2FYZk9xdXBMMXZsckFuOXpveGF4dUZMaEhrd0VyUUl3aG9NR2Rj?=
 =?utf-8?B?Mmc0eTZoOGluTVo5SEU1QSt0YzJwQzBPU1paZ0x1eEMzOE9WTHlHcERvZUx5?=
 =?utf-8?B?SXpZRjhscC8rcTZwUy9qNmY2eElVWWVycVA4WDg5eFZ4clJDeGg5d2J4SElm?=
 =?utf-8?B?RlU5QU82NTBCblBzTHZmbm5xekFLbDVJVHR2NEJqZzluR3RlTFR2VDNzaGQ5?=
 =?utf-8?B?M3I1Z1JVa21oZlA4dVFIM3ljaVBNVE1BRTRWd0J5S0U5L1FaYlAyeE9VNUg0?=
 =?utf-8?B?NVNQazI5c1NkQ3c1Lys0ZEhnOVBQMW5iNnZWRllpeFc5TzlQSnJLMFh4VHNE?=
 =?utf-8?B?M092SkgrU0tYQ0Y0ZHlyeHpTTmZTVXcxc2xhWCsvY3pHdStocTRFeUFMVGhJ?=
 =?utf-8?B?QitwYWgwMjlnSEJhVzQrbUhvRU9HeUROMjdqYjBQSlIyNDJSaThaYXNGMVE3?=
 =?utf-8?B?WWI2Y2gvY2JZV091Zk4xSHo0MksrN21CdXg5bXNGOU8xdjlhTWwyQ3BNOEJL?=
 =?utf-8?B?Vkl4QXBiaTZweVZWL3dWQzZwbFNGNDhRZlV5Y0hrK1RuV2U0STA3Q3FYWlpu?=
 =?utf-8?B?eSttOXFCd1ZZb0FhaFlYY0R4SDBoWGlWUStrc09TZlNDRFpsaXlic1RJT1d5?=
 =?utf-8?B?cGNpcWllZWdZblRjTEpnNURGazAvUzBManppMEgwVFRJNkJuU04yRW1kNW9l?=
 =?utf-8?B?WVAycGRjeXlKTGpJdHFJRWhONC82TjJ4cGg1UUQ1eVZSa3BOaGpCeEpTekJV?=
 =?utf-8?B?amkvTlpnc0E1QjllN3NoUWdlZkhVZFhKRnlkT3pHYmRRRU5RaWVGSUhrQkhD?=
 =?utf-8?B?ZzluS1R2RDF6Si9uUWsxY3BDc085dDJYd3ZNZzMrdC9pRWxRUlJGVkNTUlJZ?=
 =?utf-8?B?Unk2aXlCVlNWRDBOSkZQZmpXZTFWNWpTcnhjQUw2NGhCVnBNSTNMUnp2WDhU?=
 =?utf-8?B?RXUyeHVXY1VIVWswaHN4SERuWTV0ZStDc2FNaE1QTUs4OEwyellYUGZXRStK?=
 =?utf-8?B?OWZCdUdJdEN5ZmVHMktkVmEwcWgyWldydm9IOWsrRjBOSXQvNkdRUUxGWm5K?=
 =?utf-8?B?VzdHOEdwUEdNRmlaazBTTWtJQ1VTR1FEN2M3SE8zQmVSbGRSQUhBZzBsYlk0?=
 =?utf-8?B?ck1lc1FPdGJaUG1JVEZzWXMrMTlDUXZ3VUhoN0NnOHNNQmlqN3JQR1h1SFM3?=
 =?utf-8?B?aElpdzF3NzB6N3F6MGpNZUtwMFBXOVlNNHpURGhDY1Jwc1ZxUEQyYmFrSXJT?=
 =?utf-8?B?ZEJpOE9vWjh5MGdaNGpNdDNNcklWZnNBejVCckJ2ampBTmtUdXBVR2JiWEZK?=
 =?utf-8?B?S0dxdW1HT2grb2JlMitmMHBqbkwyQWZVZmViMDNjeEtHT0pUQldWV0szRmQx?=
 =?utf-8?B?UlJBR1NKVStTUXNlYmxOaGQ0dXc1K09UbE1QdHlKK0dGVHZKTkdKSFF6SmFy?=
 =?utf-8?B?SkphSjUvL2JCVTNEMGcvMFBlRmtsTExod254ZFlBSTlYWXNxOFZjMzEzVUpi?=
 =?utf-8?Q?qb6LBmim2JPfC620H2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XS61AF6S4fGwV70nh17a8KAtmOKXi4Pm5BWM1Twfvq6OPFuYn0QaHWCLbFmfTW/YlBdKIZM5iEMv+G7spJrDHwUMMvagH4a0LsfQ0/KLLC5pj+Z3n4kWhVIyxhhvk0dJh9JWD0fqe4VK3QNcPvtLh/6YOgq7IUx6NWF6DGx9yOEOE2OiBDwFaQu/dO10T90e1c7UoLgmoIMfAAMiMvGVh2R58YEwNzcR5UW2GVkK6CcCn00hdA9TbDQlwQkB3tL5RlxEYRk5rTRBw0mn5DRrwU8eDgZ0GDdHAaiNWm7e5rozVZP7DAkR0ntTa7ok26IDLcTcA6iyAQ++d5T/w/YTQQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9e9596-74c2-47c2-d032-08decaf7fd89
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:05:59.2075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zt3fM7Rvz7kG/MLZFd1NmTuJ+fPgV8SQk/E7WNubpV6dTGU/NSBv6GzYsf/MBHly0RHJ4BueSn7W8MmQycEn7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5772
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781539570; x=1813075570;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hwVwC7SzTEmbJCqmIrjUimyOFbjD2xfaLyJSXRe2t6E=;
 b=ivKu37Se7ZYsRjDEqbaTrC1wonBKCdgVZt4F+9q9SNRgbRcceCsZVd6Q
 Lob4Ss+B4ct1DALEBq74BPrEUNM+fhwysRJCFS87AvzpQjtXM6z7Dtvqr
 b6J/lXmAyUkROrKQ5iA31reSez+E9TkeBIv/KGw/N4zzTSp3GZ/TYhzPt
 hfEcQfWe2Fk8UO8FNABDaVC1ZqJBkjrgsfn4UIbibxomPrCPDBDO63tBd
 A+9MlBdJQq4Ged1134z+7pvfT5UJF0otwoJ//mji57ikz4s15Vlua6Vs8
 cmX8iFmzqXL+3nl+69FwMFeg7H57yoLI1OlBuQTm05R5xnhtjK/xWW9GK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ivKu37Se
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/6] ice: convert
 hw->agg_list from linked list to xarray
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,IA1PR11MB6241.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0616D68818C

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgSnVuZSAyMDI2IDA1OjQ0DQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgMS82XSBpY2U6IGNvbnZlcnQgaHctPmFnZ19saXN0IGZyb20gbGlu
a2VkIGxpc3QgdG8geGFycmF5DQo+DQo+IFRoZSBzY2hlZHVsZXIgY29kZSBzYXZlcyBpbmZvcm1h
dGlvbiBhYm91dCB0aGUgYWdncmVnYXRvciBub2RlcyBpbiBhIGxpbmtlZCBsaXN0IGluIHRoZSBo
dy0+YWdnX2xpc3Qgc3RydWN0dXJlLiBUaGlzIGNob2ljZSBvZiBkYXRhIHN0cnVjdHVyZSBpcyBu
b3QgaWRlYWwuIEluZGVlZCwgc2V2ZXJhbCBwbGFjZXMgaW4gdGhlIGNvZGUgaXRlcmF0ZSB0aGUg
bGlzdCBzZWFyY2hpbmcgdG8gc2VlIGlmIGEgZ2l2ZW4gSUQgaXMgcHJlc2VudC4NCj4NCj4gQ29u
dmVydCB0aGUgbGlua2VkIGxpc3QgaW50byBhbiB4YXJyYXkuIFdoZXJlIHBvc3NpYmxlLCBzaW1w
bGlmeSBhZ2dyZWdhdG9yIGluZm8gbG9va3VwIHRvIHVzZSB4YV9sb2FkIGluc3RlYWQgb2YgaXRl
cmF0aW5nIG92ZXIgYWxsIHRoZSBlbnRyaWVzLg0KPiANCj4gU3dpdGNoaW5nIHRvIHhhcnJheSBk
YXRhIHN0cnVjdHVyZSBiZXR0ZXIgbWF0Y2hlcyB0aGUgZXhpc3RpbmcgdXNhZ2UgcGF0dGVybi4g
SW4gYWRkaXRpb24sIGl0IHByZXBhcmVzIHRoZSBjb2RlIHRvIGFsbG93IHJlbW92YWwgb2YgdGhl
IGljZV9hZ2dfbm9kZSB3cmFwcGluZyBzdHJ1Y3R1cmUgdXNlZCBieSBpY2VfdnNpLCB3aGljaCB3
aWxsIGJlIGNvbXBsZXRlZCBpbiBmb2xsb3dpbmcgY2hhbmdlcy4NCj4NCj4gU2lnbmVkLW9mZi1i
eTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5
OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4g
LS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQuaCAgfCAgMSAt
DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHlwZS5oICAgfCAgMiArLQ0K
PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIHwgIDQgKy0gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2NoZWQuYyAgfCA1OCArKysrKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLQ0KPiA0IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyks
IDM4IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBp
bnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
