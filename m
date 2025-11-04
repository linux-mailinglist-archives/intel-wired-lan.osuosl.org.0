Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE89C2F950
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:22:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9857460EE8;
	Tue,  4 Nov 2025 07:22:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n3Yk3tpPlix4; Tue,  4 Nov 2025 07:22:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EB9B60EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762240948;
	bh=EeObBUqsbbC8LS9YUtixXy1apbwbKDM2JsQIWgOQpJA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hqU6mqtnsdeYTgf8sWlcGWJU7PeUSxityfhHAWGyI8MpSjyigqknKMP98PRiZSh1Z
	 oOjIseZWROseDGzDXW6tNVqJBMWHUosAW0pZpKMSaRP3BQHTymCzzpZQji0ItHW3fu
	 NOM1Zq9MiWgJFuyHq1S4sRppx9r/Sw94iFkUMq0rX9of5bUL2+Mvz1od63nrr7yXXP
	 D4RhbJK0OnaYXzyLUUDMiYhmrRfp3COgbjcO7Wt1q757Jx6U2Sqz0baJ24y20Yzd7Z
	 XCXlYJL8LP/qAJW7yxvZDmpzSff8bMr/dx9N63vi9Wi3fcStGzqo3mHh7t+XAk183b
	 NQyyUhktAOGOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EB9B60EE4;
	Tue,  4 Nov 2025 07:22:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C6FB1222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC5B240BDB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:22:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VDvUrueCV-VX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:22:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0C53640BD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C53640BD8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C53640BD8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:22:24 +0000 (UTC)
X-CSE-ConnectionGUID: RgqA/QoORiG3y3OTZ09jCg==
X-CSE-MsgGUID: k3v2c6yuTq2fcYNEAT2OCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64360014"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="64360014"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:22:25 -0800
X-CSE-ConnectionGUID: vue4hzZ1Tz6Zj2Sl14SEjw==
X-CSE-MsgGUID: UJ+3RKeeSHeos/sJmjHmog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="186772658"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:22:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:22:23 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:22:23 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:22:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s2H1XSZSTrz8uFOrV7zV1ZEknqlAyY88v/L0NwwYjavhgjL/Hc87MnERHWpnBdnm5TT1dJG/AOXXI+AiKlnxHAvBRzC8SkiMt6xGy+TmM7RN/ivxQXCxQ4W9JE7N9I7WjRM+/I6UMeelM6kB28PGa47E894CKlx0zWnD+8fKoRyZ+ymRwXs5eeZ7RCYRzDqsR+0UatL2d2/dmes30hnVnZE4Jk5QjJrPJ19C3XigH0HkHx7wwsb9On2W2yCaia1wvue6DETWmgNQy6b5TgzoQiQixVG7aOUXeH3R3Q7+b72fh7l0KJVqqZmuV7d1tjIREnQ1TS0aeVSiYFEv9GyDUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EeObBUqsbbC8LS9YUtixXy1apbwbKDM2JsQIWgOQpJA=;
 b=zMAgwPs9PUtSKUEOgFFTJAlg0X7T/xZwCqY9MqIviAQ0T0eriCWpLEjzarZ8LoUhuW9S6p1OFhPyoENKWanp7IqE76WFSk0q/gLj6jPRoi7QMLUwaytnp3IgW5C4bj0Htbf5GYtRatYjiUx1XDpYqh1FelreSLiuzittEUDELY1wODuP95Ah5otEUVYde/cllPAIEv5ZejmEG7Tx9W6ZEkMxKjHGftfk2FdGVIX0nmt8uIcacPIVEIh800vVQ3X93HZ0m0xVflaXIrzgrjafYVGIpAr/BSWSHqmnHm5q+NMSD7bHFhMQxhO+eaAOdv+vXbejrnagBTT7WFOoTo+Fkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:22:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:22:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 1/9] ice: initialize ring_stats->syncp
Thread-Index: AQHcTSdnuN2JDt5L5E61PzhjOPmuGrTiHR0A
Date: Tue, 4 Nov 2025 07:22:21 +0000
Message-ID: <IA3PR11MB898681EE5525D6B02D8FAD15E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-1-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-1-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: 1f5959b1-3abd-49eb-e5ef-08de1b72e4fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Wm5tbnFzaTlod2tPSGVBL3FUdy93QjNKcytqZWFCMitPbGVsQUIvTDNrSExa?=
 =?utf-8?B?d0VCTjNZLzhKWDhySUVoa2tNNEJiVWJPcUdSWGxubGFOOC93aFpHMlpvZ3FJ?=
 =?utf-8?B?VG9zWUNYd0h0aGhMdTZmWTdrMXBwQWlleG9oWW1wY2N5eUpJQlZGNkVwVVlE?=
 =?utf-8?B?TXhxRkVEWkcyUkFRNHkvUnIrakUxMFRLYUpveEZXR1J3bUFHMG1NSnZndEhx?=
 =?utf-8?B?T0ttMTgrVUs1Q1MxNnIvbTFnQ21CbWFmUlp5QlpwODhqNlFtbUJPOXFYbG5R?=
 =?utf-8?B?T25vN0xDYUJGcENRRDhWZm5NN3ZycFJzMDBkQklKL0phc2RsQlQyOU8rb3Mw?=
 =?utf-8?B?d0xtUWsvYzd3RkNsVG9QbVV3TmI4dEszcnNxWkl6Vllmc1JKUFlvdnVXOEY4?=
 =?utf-8?B?SEE4TUxtaWFEK3llMVVld3VkdTZaYmNBTkYrbkdPdkJoTzI0NU9sR2xDdUZz?=
 =?utf-8?B?Q3pwRlNnYkNCMnBsVDhST2lEU2xQZS9xZEJtSkMwMzZDTmN3cTlkWVJYY3pD?=
 =?utf-8?B?b2gyL0I5RG91TGViM21oVllvQVpVb1hKbmlZTmR2dnpETktlRktpS2VnUlli?=
 =?utf-8?B?M3NUTkFyZEtselRYOVZzUmhROVJzUGVtUHNHelo3M3V4U2NpWWw1RTB2VWln?=
 =?utf-8?B?dzhWeDBKcGpYNFAzSS9uQVlmQ252SGdMWWVOWmFxWFpnSlZIdFFKdVJQZGZX?=
 =?utf-8?B?bitGcFNLTUtxbzVRbUhUaGpZbHc4RldqU1dxZFV1K3pLRzFHTzRiYk9OU0Z2?=
 =?utf-8?B?K3JrdThLa2lhdEc0M2R6NXpxUUh2azBySWpOcDlJVm9mNFJrNEl4NkhvWllF?=
 =?utf-8?B?eHZTNjU5cWZYMk5LTFlLTFhycFNCR2J0SDk3elROdXhtN2g5OGo5ekE0UlZK?=
 =?utf-8?B?WmlBbDJHRDhIeTR0NTNscWdKdjRNcUhDY3Zhd2lnUXI4NE9vdXdkejJvSWE1?=
 =?utf-8?B?TWxNOWN5NFVMWVNHNDBScVBtempoZVE0OW84NW1pWWZrSWRWM1RGdEtVVVYz?=
 =?utf-8?B?dzRjR3lLNnNNWEJzUEhSZ05iTGsva3FVd2xzclJiYjM1MjhUNUIxOWE2VG5z?=
 =?utf-8?B?VGRTajM4eUh0QXJxWGpMaEFmOE01UnkvdTY3WFRNczY3cXZDcFFDRllHNlpU?=
 =?utf-8?B?Zkw3QWtTSUhNc1dPSHJZN0VNME90SG5rRnZGUGxnNW53bTZZR3BiOC90YWFV?=
 =?utf-8?B?UjNiNzA4Ni81b0tYaDFZa2dMbnZraW91SVpBZkMzVVB2V0JicU9nZW1aVncv?=
 =?utf-8?B?eUQvTSt6Szg1NW5oUzJXdGd4UzR2MDhCbEg5NmxhVjRISXYrbXlxb3hFL1pi?=
 =?utf-8?B?WmttaFVuak9BcEp2TnpFYWVVQkZCdEhORmErd1FWNzNIUHVvY1NkOVBsMUhW?=
 =?utf-8?B?bk9VQVQzcFdVRGI0UFQrTjdob2tNNWxMK0orcTY3UW5HK2xpMmtuWkY5N0ZQ?=
 =?utf-8?B?UXpWUEZ5aS8wOXFPMGs1diswUzRWYnUyNGdTWGV2TTgvN3N5NDU3UUd5T0t2?=
 =?utf-8?B?bi83a25xVzF5eXRtUFBnaVpYb2FMTUdoRDVtbi9nRm5Zbi8zUEJ1QVI5dFJE?=
 =?utf-8?B?MVBWdGpPSTZBM09YZEJxVnRMRVdwS0FJNVBzdDVVRUZkS1A2aEM0cHJ2aGE2?=
 =?utf-8?B?WjlEYzE1VzkvdlA2RzVzeiswZDAvQTI3M3lWd0lQYWg2UDVaZTFxRDc1WmVa?=
 =?utf-8?B?U2xqVi9yMStCOXdnWGQ0QnpNSEt1VFB6d2l1UDZQWHdFYmJaN1JNUjVKcWJD?=
 =?utf-8?B?Y3crajZpMjZUeThhYU1wUE41RWQvcnBvS3VYWTJhbXpaN3d1YmJ0WUVuUVpw?=
 =?utf-8?B?VElnd0NGTGZCSGdHL3g0ZzJYSGExN2lNR0gxa2tGaEMybTlURzRpSzBxUVE1?=
 =?utf-8?B?ZkM0a0FvVGNhalNQaDMrcEc5TjY0QjBtNm5DRTYvaGpCajFmVGR4eDBrM2hS?=
 =?utf-8?B?ZHFFYXFJaDNDTGtFeUQ1UTNMaHREMElNU28xYWxzT2pIZWNKd3J3T1lhOGtN?=
 =?utf-8?B?eTV2REhmTVAzSXN0VE5RZXdDYXNUOWNWVjk1L3dpRVhnTFg3c1FmYnhPdWdM?=
 =?utf-8?Q?fCuh2T?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHRRcEZCQlZxdUJkRWJNU0RJQ0VDcFR4QmVJWE9KQlZzSElCdWhyRkxJcnp1?=
 =?utf-8?B?NjFsWVJlc3FMeEF4dTQ4RDdhSzdlb054WExsU0lyVzlEWnF6L2p0dWc3UHhX?=
 =?utf-8?B?VW01QVh4V0FuZ3ZWLzFiR1IxMlN1QWlYUWV1ZUViRVRUelVxaTFQc0cybldm?=
 =?utf-8?B?Wk5qcHlCZGo2L1g5VTNXQlR1ZDZDSm5lNDNmYmJraVhvVkNWb2pHN2FCQU4r?=
 =?utf-8?B?ei9wOTRuZXpaR25RMWJHTHRpVU9SZ0ZSTStYQmpodDRLdS9Ccm9lQWZ4cThO?=
 =?utf-8?B?ajR3WHhTQUd6d1R0VmZYYWVrMzZxOWVPdkVRbllvWUYxeVQvRWlhR0pDdjhl?=
 =?utf-8?B?K0l1NE5SQWR1RmdTUk5RemU4OGMwSzBYNGRBS3M2ck85TStYWFVGQ1RkcUNK?=
 =?utf-8?B?S2c0eVdwWmU0K1VhQ2JGdVEwdHI5Y1VWdmJ3YTJFdEtWNlAyZk1NYjgzd3Jo?=
 =?utf-8?B?bS80RVJWQWN1R1pnU2JtQ2k0anhMelo3bktMUGwxWUN2c0dyb0lxWUNzYXBl?=
 =?utf-8?B?bHY3VjV1RXR1dzk2MXphOXZnWE83TFQ3dlBVWmY1c3R4TWszd2tQd3pxcWFV?=
 =?utf-8?B?NkVUemRCcWsydm5rYkt5YklXRzFOY0NIT1ozM1B0LzN2UEIxbG8xaFpZL1Yw?=
 =?utf-8?B?WDAyNHNqUW81Rnp4M3RUTHJYcjBWSlYyMmdhM0VhU2lrMHRiUkJjUzhzYytK?=
 =?utf-8?B?QmNGelptSG5ONTM0WFlUQnlURk5nV2xyOEt5QkdlZ0xNN0pWbWN3b2lac090?=
 =?utf-8?B?M2hLVlBmWmROVVBzeXR6bUI2aEs4NkxrU2NISWVGZ3JoUzJtRTVraGdRcHhF?=
 =?utf-8?B?cEFPSkZhWmVMV1crRytRbTRiUEJFZEU5dWNWdTdiell3Ti9NVFFkd21meWw1?=
 =?utf-8?B?MDlUTGFSR3oxWUd5aXc2US8zN3FFQnFCR3hQOU05cmIvTkVXa1l1T2lPTW1v?=
 =?utf-8?B?UURQTEJoa3pBWk1jTTZWeStpRVRJcWlud2VtbkNrbXlCOVJybSt3amdKK1hQ?=
 =?utf-8?B?bjBxY0RadXZkQng4Z1FtYXJHbXg5MWFqYU1wVVR2amRzL1MwcDBIaTVtaDRL?=
 =?utf-8?B?MU5XSWVJSmN4ak1EVkgxcGFJSzZvb1R5SE9iYmVYNGZ6a2lSK05PZUJoRXkw?=
 =?utf-8?B?U1BmS2RYVVpTOGdwZXF3ZmdFL1V6d3M2VzY2QmNaVk8zR3FiMThBaFkrZW41?=
 =?utf-8?B?Q2NsWGRaTmZXWVduemFsWnczMFpVdDFPQ0dWWFdGQ1ZTRjNXM1A2SjhFU0VR?=
 =?utf-8?B?WDJMUzQ4N2IxU09vR0p1dFpyUHVJZFhDVEZrMmVzc0NJZ29ZSnY3SHRyOUpB?=
 =?utf-8?B?MUlrN3pMVEY1VmV4U3g4S0ZXdVlDWlNQRnhjeVp1UHJBVmdYMXdjSmRXR1hp?=
 =?utf-8?B?UWpiRkNaKzYxZ1lDL2VXcnd1eVZ2WVMyOXgwZ2Rvb3IvZzlBaGVHSXh2eE9r?=
 =?utf-8?B?c0J3TXl0aHpqRUt3L3krZ2pwdnlycS9qTDFUejNITWZJQWw1VEFSdWdybVAz?=
 =?utf-8?B?TTlJWFRPa2JLZTk0QlUxUXVYV1RlZlJGcm5HeTVhUjBtemhNUjlMT0NUbUJr?=
 =?utf-8?B?Y2J2YkJnaGdtMitmMlQ0YmJCbTJhQ0hmTmMxYkh0a2hkRzRzSkRYVnlmSUw0?=
 =?utf-8?B?aHpMS2ozUE9DazZlRVUwWHU2cWtvVWFWMHZZYVBXb2tTY1pESW1hUmt2K084?=
 =?utf-8?B?NUZuMkt5TzhLNjdEZ0xFYklhOTB5SHFGcmVhMFl2NkxrMklKZC9RWXhHSUMz?=
 =?utf-8?B?Z2laYVc1Z21rSnpmTkpFRmVheTNZTXJtaXZHQjJGUGFWM2lLYXJmUkQzVUt1?=
 =?utf-8?B?Q2p6Z3VUUytUa0s1UFRZSnhTNXNETC9GS1JsOXBkOVM1QjAvYlRsS1ZtN0c3?=
 =?utf-8?B?Y0lJcWgwaW93V3ZIYjV2a25ROW01eWsxVURMMXNVVE9sci9menUyN2FUWHVx?=
 =?utf-8?B?WWpvOWxtL3pqV1d0MXRwZHczK0NZVkZ4S1NleGYxWDNwNTJlODhvM2tkRktm?=
 =?utf-8?B?K3pid0tNRm5LUU8zZlZKN3VBckhBRXpEcnRDWTJNbHhHRnlGOWN4bWlGeERw?=
 =?utf-8?B?S2pTa0cvR3NlbEJiWVFoUXZMNkJHdWtFQmdJcHJiZWZHL2NWM3AyVE5TRFNW?=
 =?utf-8?B?c3B3NCtVeGhtbkJmYndqM1BmNjliT3VHOWhPbjJuMDBKWFB1YUswQmxFQjR0?=
 =?utf-8?B?RHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f5959b1-3abd-49eb-e5ef-08de1b72e4fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:22:21.5052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jYfhaGwJZKZBEY9K0kDDkLjLQhUzo9MnKMKB2AsopI12GM7eGa5ww3nWiCoT4oLhAbtQeAImrcSHiQsNISoplqOAnbFDvFCehP5HQ0xxSqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762240946; x=1793776946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EeObBUqsbbC8LS9YUtixXy1apbwbKDM2JsQIWgOQpJA=;
 b=UnJdEi707thtul0V8n7HAU6sA8d8L1BGhTvoi46j/R2bhV3vFpxY9Ll3
 AQoSbJxrnS8xhUMcvqxza/HmcBF42av1IQGYM/pUf+tmbtxiIxIy+4sL5
 Ci9/nuKr6xYQmGXOs2EewNl6d+FzSpVbns6dYEBnV4fi+xxvEmUJ117Pp
 c94USuvGMIkxIkN6qVnu+SA8Wy08Xh/20whGstc0/nP70TwY/3e2J0A+G
 6vnJ1JFYEJQLApmDRpOGx0KPwwOMpspzEj/RrothB662lXXibrHcrUW5S
 uF7lN7eTUbHeKzqPI0GubT4YTDf6WhzTtep60TwFRS3WIuYDvGyaH3QKI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UnJdEi70
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: initialize
 ring_stats->syncp
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCAxLzldIGljZTogaW5pdGlhbGl6ZSByaW5n
X3N0YXRzLT5zeW5jcA0KPiANCj4gVGhlIHU2NF9zdGF0c19zeW5jIHN0cnVjdHVyZSBpcyBlbXB0
eSBvbiA2NC1iaXQgc3lzdGVtcy4gSG93ZXZlciwgb24NCj4gMzItYml0IHN5c3RlbXMgaXQgY29u
dGFpbnMgYSBzZXFjb3VudF90IHdoaWNoIG5lZWRzIHRvIGJlIGluaXRpYWxpemVkLg0KPiBXaGls
ZSB0aGUgbWVtb3J5IGlzIHplcm8taW5pdGlhbGl6ZWQsIGEgbGFjayBvZiB1NjRfc3RhdHNfaW5p
dCBtZWFucw0KPiB0aGF0IGxvY2tkZXAgd29uJ3QgZ2V0IGluaXRpYWxpemVkIHByb3Blcmx5LiBG
aXggdGhpcyBieSBhZGRpbmcNCj4gdTY0X3N0YXRzX2luaXQoKSBjYWxscyB0byB0aGUgcmluZ3Mg
anVzdCBhZnRlciBhbGxvY2F0aW9uLg0KPiANCj4gRml4ZXM6IDJiMjQ1Y2IyOTQyMSAoImljZTog
SW1wbGVtZW50IHRyYW5zbWl0IGFuZCBOQVBJIHN1cHBvcnQiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBK
YWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jIHwgNSArKysrKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2xpYi5jDQo+IGluZGV4IGJhYzQ4MWU4MTQwZC4uZTcyNjVlODc3NzAzIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jDQo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMNCj4gQEAgLTM5OCw3
ICszOTgsMTAgQEAgc3RhdGljIGludCBpY2VfdnNpX2FsbG9jX3Jpbmdfc3RhdHMoc3RydWN0DQo+
IGljZV92c2kgKnZzaSkNCj4gIAkJCWlmICghcmluZ19zdGF0cykNCj4gIAkJCQlnb3RvIGVycl9v
dXQ7DQo+IA0KPiArCQkJdTY0X3N0YXRzX2luaXQoJnJpbmdfc3RhdHMtPnN5bmNwKTsNCj4gKw0K
PiAgCQkJV1JJVEVfT05DRSh0eF9yaW5nX3N0YXRzW2ldLCByaW5nX3N0YXRzKTsNCj4gKw0KPiAg
CQl9DQo+IA0KPiAgCQlyaW5nLT5yaW5nX3N0YXRzID0gcmluZ19zdGF0czsNCj4gQEAgLTQxNyw2
ICs0MjAsOCBAQCBzdGF0aWMgaW50IGljZV92c2lfYWxsb2NfcmluZ19zdGF0cyhzdHJ1Y3QgaWNl
X3ZzaQ0KPiAqdnNpKQ0KPiAgCQkJaWYgKCFyaW5nX3N0YXRzKQ0KPiAgCQkJCWdvdG8gZXJyX291
dDsNCj4gDQo+ICsJCQl1NjRfc3RhdHNfaW5pdCgmcmluZ19zdGF0cy0+c3luY3ApOw0KPiArDQo+
ICAJCQlXUklURV9PTkNFKHJ4X3Jpbmdfc3RhdHNbaV0sIHJpbmdfc3RhdHMpOw0KPiAgCQl9DQo+
IA0KPiANCj4gLS0NCj4gMi41MS4wLnJjMS4xOTcuZzZkOTc1ZTk1YzlkNw0KDQpSZXZpZXdlZC1i
eTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
