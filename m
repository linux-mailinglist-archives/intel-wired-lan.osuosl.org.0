Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BB1AABAA9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 09:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74AE34054B;
	Tue,  6 May 2025 07:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXlkV0HdfCUV; Tue,  6 May 2025 07:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4EBD4056B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746516343;
	bh=SFmd/NTgQRzyJf6iCA7J1pm8xDIRvbYTlFG4+YkZnE4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4urNb1mFetxNG8SJeOjeM5wFxiVr2Iz/s+bAQAjME/VPmGPla0zbN6oTXMJIFyYXk
	 aFv877fYR8BHBCt6henbceEi47NOYZoG+5M7jMsu7e5fKbbBM3Vw8f9jB9qVyQyQtd
	 HuA4Q2DNCuE7WbQGQI8UyiI+jKmWRCjzf9cYdQq2tyJI2zYf97zlHo8pfCkvDtSuTR
	 0XRb4am4Bp9kIwz42/bUVu5ARCTrGz9jtbXG9bn7bmv5Gptf+fCXeJTvZVLzBHbgXr
	 3RvR5OFRowbBzfwDAwWgiAThn83Uo55CSje+ditrWY9koC8y8ToV/wIz7oUsPzA02+
	 yC6X2JnDExChQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4EBD4056B;
	Tue,  6 May 2025 07:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F8BB12E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 07:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8552640505
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 07:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eHVOyvMXMGz8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 07:25:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D425F404F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D425F404F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D425F404F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 07:25:40 +0000 (UTC)
X-CSE-ConnectionGUID: daVwJEUoRtKUbWwD7FHtfw==
X-CSE-MsgGUID: 0JzTn1S/QgudAUuV6OfcCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48299142"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="48299142"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:25:40 -0700
X-CSE-ConnectionGUID: vff4b04bSTaYY4VF4Ki3qA==
X-CSE-MsgGUID: oVKtplnZTgCsKPk9sOr7/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="136048552"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:25:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 00:25:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 00:25:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 00:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vQ+14+mRgezJqLJfakkvx4k/qua2Gi2eZ3w9pslPoPGZmYGT+4ao5kRsWn4Rv0arKXr2k/hrdEXGEEPqV3uqZHh6ZgQs4A6m0FAw3h+sFdgVCPql84oAFRjeYRTsL8pUXw0MjGQUKuMCguVZl4c/D3ktMFV4f0+WEp+Rqwm7IEj9LutYeNY2jI2awlSRsrwewyBla4rcbaY84mkv6lSA1l66dkxNr/E1ZmNqVIaEPLtPlrC6TDFrvCj5PM1IJCBd2MPQ2XpteATndwLZeh3LiIkN9qw85ef+G/092+CPcPqP4/UUYHAqX5OydBlEHa7UYxXHgudXn9yIuagid9Fztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SFmd/NTgQRzyJf6iCA7J1pm8xDIRvbYTlFG4+YkZnE4=;
 b=lm1LoA5zHv+oTezZ/JpXrGHI3+B4KWNVs8MePctnbrSbVG+6iHC5VIvpeQW7ujBh+MGbBdQBnTbzVviUteD24EPEIXS2FHDOIY1yvnFSPg7HuVVM4Ix3QnHfN4qEqfD5Hy0dxEttTVDFVxA3m8QN3H/134zNDlZkX8NeDSxS/UcTlYreQ7ltLcE9lyPtQtxHToAVoqZRJJjMH9ewO04JN2slyD6pcFbNhgt5CSzbDKxxVw20eIA8Gli419Ic/omZdi06Lt1CKLFfoEzZMb8ii+IfxEmiUdoHNXHxBt8Qz6I+LonvSBHjE9OtXEyiS1zsV89+GJF7DwHqHjvmyZFqnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DM4PR11MB8092.namprd11.prod.outlook.com (2603:10b6:8:184::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 07:24:51 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 07:24:51 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix vf->num_mac count with
 port representors
Thread-Index: AQHbqkRl6iBz13ulGkKQyDzHJQzc+rPFW0jg
Date: Tue, 6 May 2025 07:24:51 +0000
Message-ID: <PH0PR11MB5013AABF94F2A278A4D5AFDD96892@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
In-Reply-To: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DM4PR11MB8092:EE_
x-ms-office365-filtering-correlation-id: 0dba586a-8500-48bf-7bd7-08dd8c6f1735
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QVdrWVNLUmNOdXR5ZmNneXI0WVdEcEI5aGVVcDhhV2xsQ3ZMRSswRUtNcnVz?=
 =?utf-8?B?SE4rUjRZRG96VTVRaFZhRW5DY2Jsa2tzQ1VGY0dnS2RVd21STFN1bXkrY3hH?=
 =?utf-8?B?ZE5NM3ZaM0t6Y2lvVzJFMWpxckZXeGxjZGxob21kYkxmeExFMVNFSGZIS3Fs?=
 =?utf-8?B?WjdpcVM2RTBLM3BqOHBFMWNraDBTTyttbldYYXAyNzV5WHltdkp5Y0FRVUpD?=
 =?utf-8?B?RDJPbmFQMWxnL0c3MHJVU2ZWUXAya2pNNjMyRkpiQnc2YTQ3QWdPanRpbzBD?=
 =?utf-8?B?cGJSL0JEZjZpQjd1Z1p6QkpzUk1DS1I3eFpwNXNzYVlWdy9IdDlUUnRJNktt?=
 =?utf-8?B?YkxjTG9UdkpyU2kxSGtVd2YzSFM5TTE2OCt1a0ozcFFhMm5aKzlrdFVNSURz?=
 =?utf-8?B?TzB6QnM5RTNBWlRzT2xjWitkVFJQaS9CMGd1c09aTWRXRGM4MVJ1VXQvc0Yx?=
 =?utf-8?B?S1lrUVlIdEROOHc3NnFpUFJicFRFellZNXdXZlkrMDBxM2dBZVBTOGtDMWZj?=
 =?utf-8?B?MTQ5OUtlajB1akF0VC9nTUJ3dXRuQWltTWZJUnl6YjJhSjBjQlhMY25FeFY5?=
 =?utf-8?B?eUJBZGJSczcwbVM5V0lyTm5VMG1kaDR1c0tTUnk4dlZqL2JGN1FlRFpRYm1P?=
 =?utf-8?B?YXBIOElsVGc5S2hTcWphWDluSzZzNVlHOHVIVS8rN3FDUG5wMXlDL0REK3A1?=
 =?utf-8?B?N0I2Wm96Vkt2K0p2RnN1Q3MvbVJheVVRR2hLZVh4QjRXMGtOV2czazJJQlVH?=
 =?utf-8?B?MDgrOWtwMWI5QXpzZEhvVllGKzhUSVRBbERJMlh1Qm5pZTJZZzUwU3RCN1k1?=
 =?utf-8?B?Y0RWNVoyTGJPU1dLSDlVdXA1ektGVTBLdEZPQysxYlhNRlF4TXkxb1Y3K20y?=
 =?utf-8?B?UHVHTENsZGxoamdpWitrOXhFb1VDWEdRd3J3MkpJTUNGM2dqOElwTU1Gbmtx?=
 =?utf-8?B?V2lvQ0RFa0pzZDM4YUJaNlNRb2F2Z0lkYlN4VHpkU2VoSlV3NnlidXhiemhy?=
 =?utf-8?B?d1ROcUJJdi8vc0NWZ0JQRzRmTzA1VXRXK21XY0pXWndFV25sdjJpZE5YbDN5?=
 =?utf-8?B?ei9oZzd5SnlDemxPY2NBSzVITHdFbDhOVVN0YVo4UzBzWEt1VEhwdGZvNjg4?=
 =?utf-8?B?blhGUmxBckN2MEFUN2tZalBCb3QyQjlrZXVoRU16VDJzNzd2dm9BL0gzVk9V?=
 =?utf-8?B?dUM1U0szRkM0ejFMNnk2WUJ4R2tROGIzdXl5c0x3emJiZWoyaGpMTGE5S0NQ?=
 =?utf-8?B?MVYvU05heDMvWWZNMHlONTM5S3I5RnBtZ0hFWXZwdU1PLzk1V0gwblF3cXBQ?=
 =?utf-8?B?UjRkdm9jeUp3N2ZtNkNyNC9wQWh3aE5mVWJzbTJZaGtkNmYzdVFrdE13cU94?=
 =?utf-8?B?ZFNxNi9yVDBQdHY0SS9qTjM3R0RqYjYxamVCWHNMMFBzcGFaMEVkeGNHeWdW?=
 =?utf-8?B?VW90dStET2M5K2tXRVNoZXJXOHVkU2pJQ09acHQyVXRmMUVBclFJTlhFSCt2?=
 =?utf-8?B?bTVhMmZuQUpPL2Y3bVF4ZE1QVDhLZG1vWnRLd2ljZjBLSUtHY1FsNVZEMys0?=
 =?utf-8?B?Vklha1h0ZElDcUxZOVlHV1M3YWQwTUVOM2hmR0gzRUhHTGsvNDFoQXhGTDRa?=
 =?utf-8?B?SDB4c2ZIcU9yUkZkSTBtWGhQam9xOGtDazg1NmdCZGdKSG1sWnErUjlVYko4?=
 =?utf-8?B?TU41ai9mVWhvSGZwV3hYZ1VUZGQ1dXMzRlE2Sk4yR2g5R3FsSXZ1ZC9lUnpk?=
 =?utf-8?B?S1B0YllYc1JmWUhFeGh1UUhGUFhBbGd2RlM5dHhuZWpsWE03QXFLbVZHb05a?=
 =?utf-8?B?WW1QcHhxczFYaWJFaERlMlBBNmYzUjYxcW1BcTNUckxSbll5RTVEQjFMQ2dB?=
 =?utf-8?B?V1BVTndJeVZ1Q3pTZHA1WC9hT0ZKSkw0QmR3MUV1Zndtdk1sc0lSUCtlN1FO?=
 =?utf-8?B?amZRZVhDK1JvVk9KL2hPTUwwNVhCeXM4R2VmM0xXRzlYNGQwaDB2TjJsNHFD?=
 =?utf-8?Q?dhG7TJ3qh2is8G05C76TZD+IVMO/Ck=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ek1kQVI5QVpyM1RUcVdBdnF3eGZrdTQxWjg0Q29PS2F0V2I2d25tM0VzZ1pz?=
 =?utf-8?B?dkdrdXU5aUx4TlZPOEc5MzlpWFFoOHArOUt5Yit5amFqZUdGUW5UcEdtMHl2?=
 =?utf-8?B?RVl0V0h6Um9ORDQwSXNqc29Wc2tpRE5EVmlsT2ROQnhqdHN0RnY5TkZFcDlZ?=
 =?utf-8?B?Z3l1Q1dueXhCdzQwRmZPRDdqRDl4d1ZCcHB3bXN5Q0Q0ZmVRNEdVZ09rVjM1?=
 =?utf-8?B?LzU2eC9sYXdsOTZ4RDh6Q2VFTDFNWlFhNDhQRXZDYkhVNFc0L2NsVXV2Tmh6?=
 =?utf-8?B?VElnQUtPMkN1YWVCT0JTUWtPNXBlOXZoak1oanJpY1Y4d2NFc0h5bkMvQzNz?=
 =?utf-8?B?cWM5aElkaTNoTFVIOTdFaTdldnorelZGTGJWYmV2QzBUVUxxeHJaYm5lWUlJ?=
 =?utf-8?B?N0lXOCt3cmFrVzNhNGNsSnpRSjFFRlRlVmN6WWJDdmxaNnhZdkZqNTdraGZM?=
 =?utf-8?B?dXhKM003YStDNHNwWmY2Sy9GT3oyRXNvZk1vc0lJYm1udDJVU1RQV3dnQ0RN?=
 =?utf-8?B?cEluUWcyNkhwTzZuMmVXaXFUZUF5Z2dIMzZSK1YvSmI0bHRobkhLTVZ5SjZJ?=
 =?utf-8?B?dFU4bE5HYUNNMkJyYkw5dTN4VTNrWktxeEJ4YS9MQ296T0FaS2lqeEV6RnZG?=
 =?utf-8?B?RzZuaW03aXNEenRCdkZ1T2JwSXVFT2YwNzZrMm5PNFd2V0VseFo2TjJKVmNP?=
 =?utf-8?B?TGt0OVo5d0tBZFJwcTRub3dZL3I3Qnd1TW92V0FRWVdIY05SMzBRcStmS2xJ?=
 =?utf-8?B?c3RuMXhMdHZ5K1FEdmxUdnFQM0N6SnlaR3BvaERSaTE4SWJ5UlFEdXdxOFNy?=
 =?utf-8?B?RnJ1Rlhnb2dzeHZGWUQyUWJEV0xwVm11aTY5TExVYmp5RHhNQVIzV0NQNUQ5?=
 =?utf-8?B?Sk9zWTV4UEFFcENjS1owblhPMS9nRzU0MEx5eXNLb3lCaGtaNTFaSFhEcm5T?=
 =?utf-8?B?NllWbjl1M3l4ZzZQZTBCM0ZTOVJTZk1FYkpwdFpZYlpZRlNIcDBIOC9zbkZ1?=
 =?utf-8?B?Qkd4M0cyS0FnTHZHT3BWdG1NSHNXaDlZWk9SRDBRWmFWMm5acnp3UmVTMGF2?=
 =?utf-8?B?RFoxZVJDSlYranpFMnc1dnJJZzlHYkZtTlBzZHpHcmthL1RSVzVnRWRzNnFT?=
 =?utf-8?B?ejB4Nnd2d1J2U1B5R2JzRFpxOHJOSU5PK3lJZ2N6bjBBcE4zT25TTk4zcnFH?=
 =?utf-8?B?WmlTSFRMZms0NFJrYjlTU0ZsTXp5RWpNTVhxaVQwbWVZTEY5YXJWUy9ZWU04?=
 =?utf-8?B?N01xKzFwbVNJVGpvdGZvQjBZMzY0eTdrTjVjNnZiamt5TjhwM3RRZ0c1TDNY?=
 =?utf-8?B?V1FUcGFtRWZ4dVIrNXNLemJlTnlwUjBVWG1wanY3QUJrUFJ6UkpMOUVhMm4r?=
 =?utf-8?B?ZW81L3hoZytSK1BjaHB0bk1SZnFMdHRURkVXbWJqOUt5MUJZNWZHakxQREN0?=
 =?utf-8?B?STVLVnNCcUsxZ0E3d3BzM1Ira01YbmdjMHdpa2Ivcld3ZDNsNnNWZEZ2dStr?=
 =?utf-8?B?R2ZocGI4Q2RoT3BockhqeHZnbmF2T0FWdlYvdTBiWTZXek15WlFBRFJuNFpq?=
 =?utf-8?B?WHFQL2dYT0V3c00zYUhtVjFlVEdTaGNETE9NUDEvNWxzczMrOE9yWGE3bzBw?=
 =?utf-8?B?aUU5Z1YrSy9VRFcwWTB5RnBCM3BzWHZMcjNnNmVueWJzNGV0UjJhNmhHNWxS?=
 =?utf-8?B?SEJERXZpVUNiMVhMYXFhbVpHbnBCUzdHNGVhYmxOVlBIUFpEKzEvNERMSlpF?=
 =?utf-8?B?SGpNSitqK3FJNE8zakVCZkxqd2hMWWlReXM4Qlg0YXZyK3FYclNJeEoweU1B?=
 =?utf-8?B?OERKSEE4V2dqaDdmV1Q1VmNndDBjZUJ6V25QcjVLMXFmV09HM2NEdFU5UlQz?=
 =?utf-8?B?T1RXdCt5TWV6T3FYQzUzcUltQ2M4c2FFQlMvVDV0WkZkZ1pRb3Q0RXMrb0t0?=
 =?utf-8?B?clBCSktaOTlHd2ZaMXNka3JGVlFpZWMvNzloV2JrT2hvdUdWNHRtZTg1T0M4?=
 =?utf-8?B?akQ5OUVSa3hqQ1k3bzdtZUF5QVI5K3hHelc5QytsUWtqOWRTQXNoZjFWd2dN?=
 =?utf-8?B?d1phMG5xbkJKUDdLZ2x4YVJaK3Z4YWkrcjNScVlic29MbHF5V1RwZkNBTzBi?=
 =?utf-8?B?anppdlJWN2hNc0JsREloMllDc2pGWW03RWxha3dvYmJYN09tZHhCSUJLWXVI?=
 =?utf-8?B?c2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dba586a-8500-48bf-7bd7-08dd8c6f1735
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2025 07:24:51.4635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3i+RXsmTNS6xBt/5CDfxwxFtleir5Tk0xXtmwZeg+qKYSQQbAC8AXUNE4vV2cLCaflIKDwQwtzIvtLpE0mWTJX8kWRld8aQj7nMWNz2rKhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8092
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746516341; x=1778052341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SFmd/NTgQRzyJf6iCA7J1pm8xDIRvbYTlFG4+YkZnE4=;
 b=GgSDEejhYb5StKyBRIfT2fBjBvXgkICVREvpv/87uq5yT0iolpTxggC9
 BOoz/1Hw8YCPbnMtuFRFtvJ/NVKaFWco7CEsRZ1RkPL77fsNg8W8Pu0Pk
 IXRIWpQeCRwZaiRDQQNuIsrG6AmYtiiSpkNfj3Oxq23YDlkZWjytBgckw
 DiAmJD6btxQudF0t/7ZT483xGXnh0XXeWIdljJBAWPCpQ5aXgLRJjy5dy
 lQ+W86/Xctr7uiCwIZC6aObj3OKSd79FLJWVJCbMGmObp+69xBIuX/2TA
 aqyNo0nE/1fdsdZhVyOeBYPIlx1IOCcXrQanLoRtzFVc01PJX7cC8fDdS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GgSDEejh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix vf->num_mac count with
 port representors
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKYWNvYiBL
ZWxsZXINCj4gU2VudDogVGh1cnNkYXksIEFwcmlsIDEwLCAyMDI1IDExOjQ0IFBNDQo+IFRvOiBO
Z3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJl
ZCBMQU4NCj4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2IDxuZXRk
ZXZAdmdlci5rZXJuZWwub3JnPg0KPiBDYzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXRdIGlj
ZTogZml4IHZmLT5udW1fbWFjIGNvdW50IHdpdGggcG9ydA0KPiByZXByZXNlbnRvcnMNCj4gDQo+
IFRoZSBpY2VfdmNfcmVwcl9hZGRfbWFjKCkgZnVuY3Rpb24gaW5kaWNhdGVzIHRoYXQgaXQgZG9l
cyBub3Qgc3RvcmUgdGhlIE1BQw0KPiBhZGRyZXNzIGZpbHRlcnMgaW4gdGhlIGZpcm13YXJlLiBI
b3dldmVyLCBpdCBzdGlsbCBpbmNyZW1lbnRzIHZmLT5udW1fbWFjLg0KPiBUaGlzIGlzIGluY29y
cmVjdCwgYXMgdmYtPm51bV9tYWMgc2hvdWxkIHJlcHJlc2VudCB0aGUgbnVtYmVyIG9mIE1BQw0K
PiBmaWx0ZXJzIGN1cnJlbnRseSBwcm9ncmFtbWVkIHRvIGZpcm13YXJlLg0KPiANCj4gSW5kZWVk
LCB3ZSBvbmx5IHBlcmZvcm0gdGhpcyBpbmNyZW1lbnQgaWYgdGhlIHJlcXVlc3RlZCBmaWx0ZXIg
aXMgYSB1bmljYXN0DQo+IGFkZHJlc3MgdGhhdCBkb2Vzbid0IG1hdGNoIHRoZSBleGlzdGluZyB2
Zi0+aHdfbGFuX2FkZHIuIEluIGFkZGl0aW9uLA0KPiBpY2VfdmNfcmVwcl9kZWxfbWFjKCkgZG9l
cyBub3QgZGVjcmVtZW50IHRoZSB2Zi0+bnVtX21hYyBjb3VudGVyLiBUaGlzDQo+IHJlc3VsdHMg
aW4gdGhlIGNvdW50ZXIgYmVjb21pbmcgb3V0IG9mIHN5bmMgd2l0aCB0aGUgYWN0dWFsIGNvdW50
Lg0KPiANCj4gQXMgaXQgdHVybnMgb3V0LCB2Zi0+bnVtX21hYyBpcyBjdXJyZW50bHkgb25seSB1
c2VkIGluIGxlZ2FjeSBtYWRlIHdpdGhvdXQNCj4gcG9ydCByZXByZXNlbnRvcnMuIFRoZSBzaW5n
bGUgcGxhY2Ugd2hlcmUgdGhlIHZhbHVlIGlzIGNoZWNrZWQgaXMgZm9yDQo+IGVuZm9yY2luZyBh
IGZpbHRlciBsaW1pdCBvbiB1bnRydXN0ZWQgVkZzLg0KPiANCj4gVXBjb21pbmcgcGF0Y2hlcyB0
byBzdXBwb3J0IFZGIExpdmUgTWlncmF0aW9uIHdpbGwgdXNlIHRoaXMgdmFsdWUgd2hlbg0KPiBk
ZXRlcm1pbmluZyB0aGUgc2l6ZSBvZiB0aGUgVExWIGZvciBNQUMgYWRkcmVzcyBmaWx0ZXJzLiBG
aXggdGhlIHJlcHJlc2VudG9yDQo+IG1vZGUgZnVuY3Rpb24gdG8gc3RvcCBpbmNyZW1lbnRpbmcg
dGhlIGNvdW50ZXIgaW5jb3JyZWN0bHkuDQo+IA0KPiBGaXhlczogYWMxOWUwM2VmNzgwICgiaWNl
OiBhbGxvdyBwcm9jZXNzIFZGIG9wY29kZXMgaW4gZGlmZmVyZW50IHdheXMiKQ0KPiBTaWduZWQt
b2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+
IEkgYW0gbm90IGNlcnRhaW4gaWYgdGhlcmUgaXMgY3VycmVudGx5IGEgd2F5IHRvIHRyaWdnZXIg
YSBidWcgZnJvbSB1c2Vyc3BhY2UNCj4gZHVlIHRvIHRoaXMgaW5jb3JyZWN0IGNvdW50LCBidXQg
SSB0aGluayBpdCBzdGlsbCB3YXJyYW50cyBhIG5ldCBmaXguDQo+IC0tLQ0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubC5jIHwgMSAtDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQ0KPiANClRlc3RlZC1ieTogU3VqYWkgQnV2YW5lc3dhcmFuIDxz
dWphaS5idXZhbmVzd2FyYW5AaW50ZWwuY29tPg0K
