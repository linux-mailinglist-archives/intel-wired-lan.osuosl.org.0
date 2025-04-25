Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2595DA9D3CB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 23:04:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA32D8202B;
	Fri, 25 Apr 2025 21:04:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xfYwDJH0T0ow; Fri, 25 Apr 2025 21:04:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 283A082035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745615084;
	bh=3hUfRd8i2H2kEBjZsmMc7XvMlULedPtr6jvmC4zofK4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uJ9+M8rp+5HF+G4Fu+a3sidOnfYizaCZ/ziyM2dhnAy+Jei1f6nLLqxVEbDgtKIM0
	 e/tzc718NpN9BonRYXN0oS3NYtEwUZvWykkvL2tijhMKLOwLEnxMHDOT2jZdoOAIhj
	 lZ5gRCbF1Dgmcfa2WRyL3gWEVKsrBOCRzIjt5oxXn5M5ihL9ynC8FxPNNqDCmQbLnt
	 RIlvG2fyvjYm7X4YJFccQKCrvKHWwoBb/NDi9m9bDndj5AoiGMCRV9fsmOWgT/VixG
	 TLC7a+1oFpGKVPMEpwDEIeQQj+ma2vbXNSFcf52B3SA0n322jS9I4Wg5qsgqTiCjua
	 I6frMlTk5HIMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 283A082035;
	Fri, 25 Apr 2025 21:04:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 89D8F31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 21:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FA178202C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 21:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0lV83iFgQvS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 21:04:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8373281ED3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8373281ED3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8373281ED3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 21:04:41 +0000 (UTC)
X-CSE-ConnectionGUID: d9d21cCISyWdz68vKlusiA==
X-CSE-MsgGUID: rGOSqDE/TKqlntabDLEOMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="49938840"
X-IronPort-AV: E=Sophos;i="6.15,240,1739865600"; d="scan'208";a="49938840"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 14:04:40 -0700
X-CSE-ConnectionGUID: +RvBJ+aURn2UpZSEei82Jg==
X-CSE-MsgGUID: Qqw5c1JnSHyQJupSo91OQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,240,1739865600"; d="scan'208";a="133492376"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 14:04:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 14:04:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 14:04:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 14:04:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IVATaz1nj0j7BdtKeKtmU2tL5CZTzT3KIp1tvRWf0O51NOsd5AiZ2e6XyJwH/jIAe1OGXsE/t4D+YcdDM7gww8roN2WvpQXB4C+pfLP63TnxRWj0jajKm+sfqz17ZABUVVuNo6w6yDLFYshX9HLqR5MG6ElQ1H+HiYb6zbfyCHbKnYBdcbvLHAvv5KAwSYaBjF17yutOJ4QUIuekrmCB6wY7Zok5tAL5PHcfK1p8u+At6QfqBO4Ubk772F6uFlmPeRG/qvZmvEZvIC2wejgKc/6DkuI22SV0xV/RtquHR7/OWYk5DmA0mWLGTjdsV3syuK67Ffy/cZ+xR5FOFwMsfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3hUfRd8i2H2kEBjZsmMc7XvMlULedPtr6jvmC4zofK4=;
 b=blGNVH7w/GVUCQ8VDGNdMCuZLaul2lLMj1MJHrAlZonxV1z+5FAs+gP9zrCvGoafpNc7pntXBUqdNubTcXXFAFRrwpEf10FKW6ce5DUsJWn7oweLC74iUB1FS5cT1Wx+WqftFmvbh7r96GmvEN1GY0npr/yePt83u7txvbU+8ktacLK6C9x4KiwYXAwLVEiVn8tAWkVMuXsiEjpVmZyf3UNdYmOsf90u87CEUGTJ4CSHFfZpHhFNB6HL7xHNPnoc8s/wq8tul2HFsuzcN5sybq37O3Y0/n0dUFkeP9gVyzPORnzeobCXjCeUWx6sGeBIS2CPxx89MpzJZKiCVHCBTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8485.namprd11.prod.outlook.com (2603:10b6:408:1e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 21:03:53 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 21:03:53 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] idpf: remove unreachable
 code from setting mailbox
Thread-Index: AQHbqRjZCDBRWbmCMkmTOiw7dLvH7LOeSzgAgBaterA=
Date: Fri, 25 Apr 2025 21:03:52 +0000
Message-ID: <SJ1PR11MB62979EB6E054EB7402CA91F49B842@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250409062945.1764245-1-michal.swiatkowski@linux.intel.com>
 <20250411104432.GZ395307@horms.kernel.org>
In-Reply-To: <20250411104432.GZ395307@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8485:EE_
x-ms-office365-filtering-correlation-id: 5e41503e-61ec-464a-592a-08dd843caf44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?22oBEkFs65BFf4BL7rI5dVk7DokcS4N8R1D+RyREOQobKaK5DsjLRHmnQoe4?=
 =?us-ascii?Q?RFHwyoBzjvfOYuej2k9nqFZTQYbXr1zTt+D2XMjEU+Ouuou/UyRUlB34Nguk?=
 =?us-ascii?Q?+ugGMvoK1bGg4S74RJItbnb4rmcng+NpD3yAxqEMAuDM5J/iPfR24jnglhIJ?=
 =?us-ascii?Q?+oaQV76G1onIVHWbpRg7QlkjnuMFPWmjx5+ThtF60SO8ZG7w+dZ+WWLxaSEl?=
 =?us-ascii?Q?6Dg8vOZzU9dHQPebTeQpu53TyazuDN7jonyDMif+Mw8DqfN4jG4vNHeZwh+8?=
 =?us-ascii?Q?iNI4yfM394ZzlS+53+AGoCgvq+AX9YfK+CNhJQV1ZpVSJjK43n880MqX1H5y?=
 =?us-ascii?Q?jrfTAakYkLiPsmgCzzbRd2N5WkGGRIE1rlUFKDIhaQ9SOnussLD0RG+o79KG?=
 =?us-ascii?Q?u8prL9hTox6Eju1wzcgXX09ja/Xr+DErF08kI2u8MMQ5jDxHK4hoOIKZqW6K?=
 =?us-ascii?Q?82Ne9p0YuHclsHfhm440FFA5yB76UdZlFOIUF3ydyFQL0E4cI++W7BFb00VA?=
 =?us-ascii?Q?uUopi+CLSmGcS0vl5owhkMVMjGnWd7enkqdULpIdwuGLeuWLQf03ZfHRqSH6?=
 =?us-ascii?Q?rZyY6ssDF9yBKJ5BKxvdpjAwTcC5Ao2L50d1xl27j0K+fluApjadw3OsJT16?=
 =?us-ascii?Q?vpmL9cD/EczxerwrcjQkQEZUyG4h3S6LbS+iOFv/e+ltwxGGqmBmwq8QYt9C?=
 =?us-ascii?Q?nqaDvfx422mQN4ByhaLrZZBFLAbQAJwPZg7hrexpV3nkUxljCEhyake7IPu6?=
 =?us-ascii?Q?1V1P8kftNJyw0H5+8DUnf2agB3G5D5mes92obkAa1wJfgOK/FJr0pF0/r8ud?=
 =?us-ascii?Q?fvmXC7xK6RdaF3JEj0NdYlJVYx+odCPgXFoStV3ZYJM9Cr81Iq2sHhZDTJvp?=
 =?us-ascii?Q?jdwXh4JNq0g8+iyb/V5oL/pcNdCJFAROHU3Xu0fooRflw0Z1lLkESFLmNJ5C?=
 =?us-ascii?Q?S6AGrHiF1EzKndlH6ArhXoGVWV8fZtRDAVzpIv6zULYT/ex0pWDBAI+LA6DA?=
 =?us-ascii?Q?K2DyzdNRC28og8O0ECINbFfpGmFto88aKRSjh2N8A/+T3ZNNXxfabb7IC24X?=
 =?us-ascii?Q?jysmmjGSWLOyfioura4RaidXi1AZblxdZ/pPeEg89E1UOnJFWKKl8FCA9lW9?=
 =?us-ascii?Q?49YTMjJBdCq1iRfF//HbC0c6tVLSuYDnfhd8sW11+Q9iN7CwuLShRN/qFgXu?=
 =?us-ascii?Q?ZtALVTXQHOWI0kvI9xEHBiHbSFlKn9c6kWVsv4/j4zpSb2vSLMm0XA4dvTGU?=
 =?us-ascii?Q?KAEYrvL0dwsXpz3pOJqfpU2tCnc3MLgbw3aeD9RtZ+b8mO/Bd7SsNKjOZPZ6?=
 =?us-ascii?Q?sn3EtoKssGlL0HaKNce9vaZwWI8XjqATYp86w/theyOU8uNBcUAXnj7bTna4?=
 =?us-ascii?Q?Dj2a0fvmGnWgOE+F5jXMcsvXdW4Ilz7ojXp/M83fI2htFpTK+GtgOFTQTQAG?=
 =?us-ascii?Q?+PFh1dw2zRNs7lgAL9w0qx0cQVnUL7XBPidAjIbQU1KusIuPwAPBYGOx17Xt?=
 =?us-ascii?Q?CNEnLOl0juGIT6M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JhcTsOnhK3VyMlnIHoaq58qCRDswSk6n8/jJOgBk9pi3uixPcJH7CyaO43Xz?=
 =?us-ascii?Q?0u9Mi4x5M7T8iOtcXhAmCEYomBZx7kjc6fu1+9JLY0MOWMpeV2iELO2FssPw?=
 =?us-ascii?Q?jYRHBfagdntcudk4C4zUD1LCj7iyXUB5UT9DnFvUmc6vlBa1/L2OK3fOQ6aV?=
 =?us-ascii?Q?U81mJK7SGbwOjyOiZf7woRd8nopkEDJPjSa8d+pwb9AR/iqktVVbK0XP9760?=
 =?us-ascii?Q?Kj7yZmu6gsW361BZwlwt9eA0QvEHlxoVrjuLLER3XqYeRM9eZLf2RKe4mEFC?=
 =?us-ascii?Q?zKQ4tLVNBTrYRZtf3XLJWcfxu0V6zmkMenyQx7CVl82n5xPDHNyY54dEOfaf?=
 =?us-ascii?Q?HZumBsBxPmVKz7CwaoyOI0u9HwVAgrSselFetAYhScg+EHtf4CDjFcC8RQWj?=
 =?us-ascii?Q?SvmZ1PF7qwKzVrU/ZHBC2jRuGYaAGpbbnHcOHWKis4+RZPAebaGJBf+MKAPe?=
 =?us-ascii?Q?e0Cv5OkzJJnYQZfB6LlIooBGyOuFAARrHi6ktO5MZXQBUDYQYCIKReURJAjz?=
 =?us-ascii?Q?MXzoyknOf9z0nzCx8LDOEeHKjazORDkawJiSuLm5QRXYBdSHrLDEqB7Q0CO0?=
 =?us-ascii?Q?D3fcBpLC8aBPFp+RCoogHfNax1uBwsmsScVkkbhJi+sU+QG7ZzvqhkNWyzyc?=
 =?us-ascii?Q?xqzleBb+wTBHnNi1OBSSsOv+xCspg2pFr30V5AKTZ310o7H3hFnKV3MevVhE?=
 =?us-ascii?Q?VX9p6Kbij13e69EpZZePjx48k04FLBp67D1LZN6SnAoihfQCONJW2xByRzF/?=
 =?us-ascii?Q?q4tyKogRNXGWW4NdyUYaHmgMldRMXIgc1NYPlG+kG3f6Dz+sHBryjJnqTmLL?=
 =?us-ascii?Q?8cHOp0YdGCeqyTN7zW4veMH22aomvnDCTPyDXKVIG2XpvLHzEE5Jh+n9i/4z?=
 =?us-ascii?Q?lwq+QaPLfqD5mSNMP/dxiZW9/SXM66Jy9HBMQLgpFb4QJ8bMs4alExUhndan?=
 =?us-ascii?Q?KGbC9vAiX8o53GV/uDIdEz/4LWkQ3GIG+UfSZnO56ev2ehoralN5yV9LzQvz?=
 =?us-ascii?Q?8riVrkVBeoA6PzZuxq85MPuxjeU71n4ZK18sWnnunkQlzXSE8f8pKaevE598?=
 =?us-ascii?Q?ULjPtEtCAGkDaYPaGcpypB5bF4ULzYpuLRn+WPNig3MK2EXhGEEcpg9pullr?=
 =?us-ascii?Q?y0Bo6YLiWgx5D4Dii3shdDfgx0WS46+JPUiePKu4C+0YVwNIMKl1xmRo2EyD?=
 =?us-ascii?Q?R9Dstr7dBD39r64WWgKmqFr8GkvgqF++H8tzHuTKuVcRs7n5c78WStchdx+8?=
 =?us-ascii?Q?GhFtNIXkVKmQwqLFV7STPR4LVJvcFdkigbZHLCknzjRPKxWmuar8UDY2wnxa?=
 =?us-ascii?Q?kCClsCHyad6pYZ6pIVOhpL1Sp6ar2lskE5sVnkMJc9U/pMJl8cC9UsUVS/pI?=
 =?us-ascii?Q?DL7AO7KrSCryw/hky3UpAgO4cMyevzqqrQbMck+tPy+Vc/X2j6OZt88M5HEw?=
 =?us-ascii?Q?YKAlCSP72OaMKURNFWnhjX7zCJ9q91HAUFpZL5FTTBBfbTbhA8hjwIGZzC/8?=
 =?us-ascii?Q?DVIpIr3BGizIAvyTbLL7AThcGGHqwoO3FoH0AGLIEgYngBzqG2NrxwUIC8Y8?=
 =?us-ascii?Q?9vdF7WXvl6nbCIiUsvSuKnANP1qpdHBjW4EOki6Z?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e41503e-61ec-464a-592a-08dd843caf44
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 21:03:52.9304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ccZqDnbahPlcdb2BzY6AsjFiqWPjl4H0LmiHisCDS0kU8hIoMgjvCgXDm2oUv7JA0W3D3qq3DwYXsXkuAFLj2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8485
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745615081; x=1777151081;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y3uS9MPkoYPWb74hOsWfflqrmEQsKcWFyZxl5UpV2oE=;
 b=JAFZJ0zS9zXwi1PmxSG8nxvvd0Ab5ZxRW+gHNpp1dm5SqufRtmg5KHwu
 XfkNaA7eHkMSxINQiaVQtP6NaOoMY24MQKpNWv03GJ0quZlFuD7tWcVzP
 /ymFMmSG/hL8MI5BK5ZQpZY3I89SPu5dpKONTdxTxKMIPyOAANUZ5Lbaf
 bDWX8m26T067xkdD/AWhhnHNMEmjb2JGN9TGlBnaTRhTaSK93SdmYSflj
 3OevgKW9MMEX9/Tpq3P5ic38y1r3t1W/2iLuMd4omAzr0ci5vZx5FJoG/
 snWQEvx2RIBcORsT0/anc+6oWoEagSwnJwPAevH9L0V8xem8O7YHayZjG
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JAFZJ0zS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: remove unreachable
 code from setting mailbox
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
> Simon Horman
> Sent: Friday, April 11, 2025 3:45 AM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: remove unreachab=
le
> code from setting mailbox
>=20
> On Wed, Apr 09, 2025 at 08:29:45AM +0200, Michal Swiatkowski wrote:
> > Remove code that isn't reached. There is no need to check for
> > adapter->req_vec_chunks, because if it isn't set idpf_set_mb_vec_id()
> > won't be called.
> >
> > Only one path when idpf_set_mb_vec_id() is called:
> > idpf_intr_req()
> >  -> idpf_send_alloc_vectors_msg() -> adapter->req_vec_chunk is
> > allocated  here, otherwise an error is returned and idpf_intr_req()
> > exits with an  error.
>=20
> I agree this is correct, but perhaps it would be clearer to say something=
 like
> this:
>=20
> * idpf_set_mb_vec_id() is only called from idpf_intr_req()
> * Before that idpf_intr_req() calls idpf_send_alloc_vectors_msg()
> * idpf_send_alloc_vectors_msg() allocates adapter->req_vec_chunk
>=20
> >
> > The idpf_set_mb_vec_id() becomes one-linear and it is called only once.
>=20
> nit: one liner
>=20
> > Remove it and set mailbox vector index directly.
> >
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> The above notwithstanding, this looks good to me.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
