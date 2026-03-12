Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLhyCB5/smkcNAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 09:53:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C76E26F307
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 09:53:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A17E849CF;
	Thu, 12 Mar 2026 08:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wHCRC5XO1AC; Thu, 12 Mar 2026 08:53:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CC8D849AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773305626;
	bh=BgX4lmXMzYtJcH8n7mTmC2FLpYNhtpTSVxh2iEJ7Azw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w1wkvel6shT7UEjCGd8V7wqKGgD9ZXE5+FdY2L8F90UaVfRs4/2qcWq0hJMYwsWXT
	 kTOjM9q3VbIgBWfOtqsGn41efLaL/HyDtcDTnIYHFyiwCmMHms3M4QMMzj3IXAsXiX
	 ccaaqLK9K4HfJHCCcRa0C7yDxWrgrc51P13dWEdLe8mb5Fc+OpNkWAS+qKBCi+VHbx
	 87/jJ+EfE5cbmws2gvgAjju9RJZ0FsIk0c/vmKuZ6gxNKF5EWmKcpTEzWy638kCxnO
	 7LAHlLs8SJr1NB2j5YUVYkkznahTM/D/8depd0Ov5plNLZmaNwqwWLBwvvPsBC29HP
	 PoZ7EtZ5DVoAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CC8D849AC;
	Thu, 12 Mar 2026 08:53:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B283B201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 08:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9816061641
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 08:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CUdcok5HoJjA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 08:53:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 47D506161E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47D506161E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47D506161E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 08:53:40 +0000 (UTC)
X-CSE-ConnectionGUID: SF3lSdRtTyGoICG+JqzMAg==
X-CSE-MsgGUID: wXWYTm6yQ8S3OS97kJhAuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="77993318"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="77993318"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:53:40 -0700
X-CSE-ConnectionGUID: S25m8jvARa2ivdXuRxH6dg==
X-CSE-MsgGUID: pKir4z8aSYilcM1crONO2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="246170947"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:53:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:53:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 01:53:38 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Az8MXYG+CEqLa2LymbkgysmMA3hOb5yKefJYv1QDiJTGnJSeg/9lHV4rYqI7PbuJrq9tNrNbzmmYZZEU4EPoIwIrPMreIK/0bkBV7XUXKh9jZp7BHh64KsHl3hpg2sVuiJ9RXlRQuvPY3ml7ZiPu9yT9yGvu6QQA9rDZ52BApmyXRPQqF0jZt1CvGCK7pG8a/Vp8fkhje25uDGaowoHYZKfZu9XvLKXGBG02ccfK0skRY4IqFTQ+3viEu50xnqYP4JUtWXxwlrpFnxXq4vZHfH02WPBMYa8b9dNak8+Rt4dulwg4RI22O/MZqYvuWcCu8GWGMBi5Ce16VIuta8gQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BgX4lmXMzYtJcH8n7mTmC2FLpYNhtpTSVxh2iEJ7Azw=;
 b=S3Ot5kMIrbC/Jif0dmF7TOhWpoMJwXFydAVADYSFqEq1ffPphftSZzCcLbYCdN9sa/vSLQTnI0qhqp/aaAUdAkDsgX7gr4NdDKKwuTWgsqgM/jr36qByu69PvMhRVifSVxVoOv2b/LHRdLaXkfNVcftLvRiIEyxkt0RHRPahEQwdcFRradkM+7it9A4AyLzup3auuFpQ0ZLz/nIaKJ5IWTxwA/eZ+uTDsjP6r+jnEgtNobHRan9x+/F4irXBpvepy0BxO+wrFl8V81eN5jWGuCVZtGPUm960MevzVEvGLzTWHHP8fTCSsyemLngTu8zuB2oy7l2rI0GKFQfYEJxYjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by SN7PR11MB6945.namprd11.prod.outlook.com
 (2603:10b6:806:2a8::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Thu, 12 Mar
 2026 08:53:31 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::21b1:45ac:9e09:c86]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::21b1:45ac:9e09:c86%7]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 08:53:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alex Dvoretsky <advoretsky@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH net v2] igb: remove napi_synchronize() in igb_down()
Thread-Index: AQHcsZgqDmh09etGQ02x5ViiFuSQJbWql8yw
Date: Thu, 12 Mar 2026 08:53:30 +0000
Message-ID: <DS4PPF7551E65520F55DBD20987BCAE3C6FE544A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <abEtQwISGizUXIwf@boxer>
 <20260311204620.15763-1-advoretsky@gmail.com>
In-Reply-To: <20260311204620.15763-1-advoretsky@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|SN7PR11MB6945:EE_
x-ms-office365-filtering-correlation-id: 51a23dd4-e234-4aae-7334-08de8014d5fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: hccuOVexvN/6+kbYYAGJND0qvmK8Ti2HNSBpyqFIJmjVZCbB9kd+G9tHevgWs75ryIBBRxbvNIjqLBQ6w54AVUyWuq4/KfHFwntx8DdbsUTGr0bQLPb+RZxKVxY4GDNt0DWjGveR7AOj4zlYG2jaLZ2tzpNzCIcdGz0M8HIhKex7r3z3AHRC1qzgKFgnjxAwLWxe4tLlLGGyCsP/0tbfonYRNsD6TzuKZTTgM24bcXYCYGkaOhsRVP3G0S0WhAOXOsmytcMN762bJNRZz6xRvKv1MlSnNSJBDJ4lFHNKVFI5ywDenvujm/+Lqau+btV/OveWSY0u4DwFPeDVV935+9LZUuYFt5FDbo88Bca6/xcbOOu8cBdy0+64yEEMdi1X1f2E6P+kAtlhER5QVfwhuswwECqVRILn5OplJIa/KWbqN4L7r9gwc03NC00RldTPqOlF/FB2J/Qz25L6Tj9dSBeEq1RJXKWdtBpIu1Hq9s0ewhm04E/FzEAK/t6gYRZQtzwNyqZWWbPEzTuuJ5ZuX9CFy+3I78MnRAb4J25GbcNb5sYa9lNqww5+RKkHPDOsNI7cD/NvDVgwF2/EH8w7WuXW0dRX4IKsxfzsXN49JygU8byj7g1uyhZwZR76iO6QkWZ3/qeVXexPOPFJpeNchUHCoMByeP6rqH7cOh8KV19N9QrtCllNjjdcDV8ti7WzyJKU3iKU/tgKr4qc/cyNIiDHedAO9/n6U9Ew1qcGDGUb/s38XKsCavnbNEGxg0MQKeLpntKDiPN3wVpBsHoTzX/1nzjQzIW5TqqFoEF0/x0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2dDSTZ6UlAwNUFMQ2wxWk5HZ3REM212dHphR3NiZ0grcml2MDEyS2xvWjNy?=
 =?utf-8?B?S1dEMzE4VC80WFU3MmhPY3NsSGs2alo1Y1VDOUFPYmQvbkFTSGV1NkoweXEx?=
 =?utf-8?B?NXBLV1AyYmVFWStrNjdxRFlxbHlrQWd4NGNMNWlvOS9MNkZZbGRDaFBqTzJl?=
 =?utf-8?B?ekVWWlNuUVRHN0hVZDQzY2NkNk9iL3d6WlF2eW1LRVJzMjJGeTVGS0xsZVpk?=
 =?utf-8?B?MnY2WmlUYzVLUDR3YlN3SlZZZFF3bEFublBDOE9lUnpkZ1AwMDZ3eHAreFFJ?=
 =?utf-8?B?SytvemRTNkdSV0thaTNCVkdadHBTelBJWm5URS9abUZHOE1YMVFTbC9YRmcw?=
 =?utf-8?B?dVUvV1FnMzNBNmsvblZPOXF5RXRJdFhMRmdNcjI5Z2k2QitSMWNKTjVtdVFj?=
 =?utf-8?B?WEw2cTFKd0wyb0lWS3pMK3NFWTRRNWJZSGhmeURmcGRDTms1Wit6VHBEWEIr?=
 =?utf-8?B?OHF5THQraUxIMmJzaFVLTjRZZHBSQm1DeWg0SXA1dmowcCtpWjJsL0VnUVlq?=
 =?utf-8?B?REVLb291dWV4K1d4eHJXUVNPejUzU1NkUm9RaTVIMEpydU9pVmtEN25Bek14?=
 =?utf-8?B?TnZkMWtkaVVMd0Rlck9VUElIVXhjekJYeEo1dzhrY0pSdndQb3ZiWFhCWFpF?=
 =?utf-8?B?bmlPZUlpWUdHNmViMWtsR1VSUjBlM2xBOEt3Nk5sT1Vtd3hoZDAzbVpNK0c0?=
 =?utf-8?B?K2dTU21ObVNCYTRvNGtpbURwUThuSG4yaTZ4Nk9McFI5YUg0MjFFNXV0Mys1?=
 =?utf-8?B?Vll5ZFd0bm4xa1o3OTJDVnhIYnI3RGVhVGlhcnZFa0NKQkZkRWp3Mkx2Ulht?=
 =?utf-8?B?THFJWitHSDFqWWc4dHpyL3NhT0tyRmM0RVBjbmxMY2ZMckRqMnh4TUtYZEdl?=
 =?utf-8?B?Q05oK0dkUDNsOWVVWVk1Z2tGT0JmQ2xjRzNUVVlCZ09wVE54Qk4wcWNMcmNN?=
 =?utf-8?B?VXhWckpOLzc5TEFJeUhHQWtUbThLZmZWKytQMXhBS013N0VkZytaZDZBa3hi?=
 =?utf-8?B?NmVpRHNtLzJGaE5zTWxPYnB1UktmR3lyZStNd2V1K2VzZjI0c29GQlBvYXlL?=
 =?utf-8?B?cVhYT2F1MkNnZmJ1bFdxUzMyZjhKNm5QbS9uOWs4UVozUWd6Tkx3aFZqek1a?=
 =?utf-8?B?SGtZTTBzOWJGRHBQazNkSVRZR2FBaE9SN2pEMEZRbHhGejdyU1dzVFgzWUpM?=
 =?utf-8?B?ZjVuZ2lnV2JZV3pieUdZR3BxMkpxMDBCWDg0c2tVbXBvdFlvczJRY2d6TlNT?=
 =?utf-8?B?dXp4eE8xZXVNRGdYRk84NUxaN0pGbEFMdnRWeUo1b3QwWXRCR3N3bGd0YzdC?=
 =?utf-8?B?MjFWVEI4ZTlUMkxZNlNQUGhseUJxZGo4T3pHcEozU1lSY29SNGpjNmNtdHR5?=
 =?utf-8?B?RUF6T2pvRENVWS9qZDVESE5lRG1LMzFRc0dWTk1lWEkwNFh3blVqcWhqc0lC?=
 =?utf-8?B?UUJFb2JubjByMUVPc0hYZWg3M3JrVy9XWk1BQ3JCR1FtWjN5b2w2T1Y0RUxz?=
 =?utf-8?B?OTdyWlZyQzEwd0hGTzAwYjRTL0syTmFiTkQxZVhxZ2lCMk1QZFJlRzZ6eW85?=
 =?utf-8?B?UlRjUjBSSGx3UE9tSXZybzlOTkNIcFFCdDR2SUYxdGtoa2V0WTN2c0hKbVRk?=
 =?utf-8?B?cUt6T1cycnZlbERVaXN4bUJFK01UL1dUNlArYWExVDAyRzBhc0N5MTZMa0Rl?=
 =?utf-8?B?cEpKdkhmdlhlaTFNdnlmUHZUOXNYSVF5UkQrYjVjZzhORCtlRW83ZzRydnRB?=
 =?utf-8?B?NFhrNzl5L2lxNWZISGc2eXk5aGR2Zk1ZOHdnL08rRHJXNHJybTRCRVFWa2Nm?=
 =?utf-8?B?ZWtBQWZCTUx5UlRubVFoQ3RCMDVvWVJpSThzcXFqdHQxakVNQnJjT3ZHQjAx?=
 =?utf-8?B?YXYxbzd1MmdoOHY1WTREYlg4TEhJVlBSNks0VTRwdVI2SjdsYWNtM0QxVURw?=
 =?utf-8?B?MDdXSnFGK0FueWVQMjQyK1RSOEJMRnNCa25EaU9nZjhjRm1hZWlabENYNTJB?=
 =?utf-8?B?WjcxblNKNzJZZHFIUXQyZXplV1QxUS9NTUZwRGZEcFVjSmRhK1laa2dWeElS?=
 =?utf-8?B?NmZQZk9MNjcxS092WmJxdEY0ZmxnbklHR0R5aFRyZ0QwTC8zbTBPSm9DaHVo?=
 =?utf-8?B?TWZaZjMvNGVHeW14QWplNzBEOXdqYnRQenB5TWxjeXExdkdiWitYVnlya0hL?=
 =?utf-8?B?R1lsU0x4YVBoc1krNGxETEt2dm5rRU1KODRFNmdiTGUwbWswUmIyTjJKcy9X?=
 =?utf-8?B?ZHRqbEFhbyszZXorcGsrdklXSUs2YlA4M3FMVDhtV2VIVlVseVF2VDZVcld1?=
 =?utf-8?B?QjV6QjFYQ0ZiSTltWlhRSGordFIxYkYrbys0akx6YTBLYVkrRC95ckxacFBy?=
 =?utf-8?Q?o+i64ygWVej0S2jM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: twM9U+rgsOS2Me1NItqo++wYHcJq5ogARygMZ0UwWti14DbqX3c+rWzLRkPZo6/owI3yrrO6sbJeKaFvBJdZ38iWRIGPlBkSWcPUyOIV1UtMdS9tmi2hMXRTbSTbrQT6ARSel5WzbIQ/EkD2n5J1mCzVwqpodjCiHqMihQzmH0ccNhIuqWmZffhNsbAzxxlaf5ywUxlGkQ/9rJG406+I/kbHHvWEuc4/rsr8kPv64rPGQ1VAFljzwNikbInn5cwIQLJ2bAxk1q+OnJkNsNVbO0mueduU5pEFZzkw3Mz7a/dptIl8p5srzNfs/s36id2tEwwGNl/r/a7wYO+Dyrq8ag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51a23dd4-e234-4aae-7334-08de8014d5fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:53:31.0592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1/OxHVe4gdulzk7bfGgZJwHuqimip56SDrmkRycC8mzu2gKaFU5V1ORHsdlYCt5hmLiarbBoDouokIdtudkkPaA1KxshqyrchYM3064K1+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6945
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773305622; x=1804841622;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BgX4lmXMzYtJcH8n7mTmC2FLpYNhtpTSVxh2iEJ7Azw=;
 b=A6GzfNm/mEeDJhZwIXk7GgNwTt4Fd30kUDAaioP8+BFw1mpMMjVEsvVl
 VRl+czQfxHyLfbBcw1xbEyJW5285h1miugoykCOyCTFlqgNGZLdQOh91H
 MkcnBwWrBnPQkBEv36ibWPvxz9dqyX4iFC98nALDHFM4jOaOLpT7IIBiD
 DxULk9uejgbEPQadf+n2ZE62p/lRHKVFlh8BHyuTGgYqI6y2aLDqPucDP
 Kj8LFnGzpKrN8K/puRMJ8QpOcuVD4mR77z8FtGGr1JhqbajtUGjNPkWC/
 MtzxQKonbebRwrwmadetbo8iQeQhIi15N1/uJH9Z7UDBk3nBTDumQLDHu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A6GzfNm/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: remove napi_synchronize()
 in igb_down()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:advoretsky@gmail.com,m:netdev@vger.kernel.org,m:maciej.fijalkowski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:kurt@linutronix.de,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0C76E26F307
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWxleCBEdm9yZXRza3kg
PGFkdm9yZXRza3lAZ21haWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDExLCAyMDI2
IDk6NDUgUE0NCj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnOyBGaWphbGtvd3NraSwgTWFjaWVqDQo+IDxtYWNpZWouZmlq
YWxrb3dza2lAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVs
QGludGVsLmNvbT47IGt1cnRAbGludXRyb25peC5kZTsNCj4gc3RhYmxlQHZnZXIua2VybmVsLm9y
ZzsgQWxleCBEdm9yZXRza3kgPGFkdm9yZXRza3lAZ21haWwuY29tPg0KPiBTdWJqZWN0OiBbUEFU
Q0ggbmV0IHYyXSBpZ2I6IHJlbW92ZSBuYXBpX3N5bmNocm9uaXplKCkgaW4gaWdiX2Rvd24oKQ0K
PiANCj4gV2hlbiBhbiBBRl9YRFAgemVyby1jb3B5IGFwcGxpY2F0aW9uIHRlcm1pbmF0ZXMgYWJy
dXB0bHkgKGUuZy4sIGtpbGwgLQ0KPiA5KSwgdGhlIFhTSyBidWZmZXIgcG9vbCBpcyBkZXN0cm95
ZWQgYnV0IE5BUEkgcG9sbGluZyBjb250aW51ZXMuDQo+IGlnYl9jbGVhbl9yeF9pcnFfemMoKSBy
ZXBlYXRlZGx5IHJldHVybnMgdGhlIGZ1bGwgYnVkZ2V0LCBwcmV2ZW50aW5nDQo+IG5hcGlfY29t
cGxldGVfZG9uZSgpIGZyb20gY2xlYXJpbmcgTkFQSV9TVEFURV9TQ0hFRC4NCj4gDQo+IGlnYl9k
b3duKCkgY2FsbHMgbmFwaV9zeW5jaHJvbml6ZSgpIGJlZm9yZSBuYXBpX2Rpc2FibGUoKSBmb3Ig
ZWFjaA0KPiBxdWV1ZSB2ZWN0b3IuIG5hcGlfc3luY2hyb25pemUoKSBzcGlucyB3YWl0aW5nIGZv
ciBOQVBJX1NUQVRFX1NDSEVEIHRvDQo+IGNsZWFyLCB3aGljaCBuZXZlciBoYXBwZW5zLiBpZ2Jf
ZG93bigpIGJsb2NrcyBpbmRlZmluaXRlbHksIHRoZSBUWA0KPiB3YXRjaGRvZyBmaXJlcywgYW5k
IHRoZSBUWCBxdWV1ZSByZW1haW5zIHBlcm1hbmVudGx5IHN0YWxsZWQuDQo+IA0KPiBuYXBpX2Rp
c2FibGUoKSBhbHJlYWR5IGhhbmRsZXMgdGhpcyBjb3JyZWN0bHk6IGl0IHNldHMNCj4gTkFQSV9T
VEFURV9ESVNBQkxFLg0KPiBBZnRlciBhIGZ1bGwtYnVkZ2V0IHBvbGwsIF9fbmFwaV9wb2xsKCkg
Y2hlY2tzIG5hcGlfZGlzYWJsZV9wZW5kaW5nKCkuDQo+IElmIHNldCwgaXQgZm9yY2VzIGNvbXBs
ZXRpb24gYW5kIGNsZWFycyBOQVBJX1NUQVRFX1NDSEVELCBicmVha2luZyB0aGUNCj4gbG9vcCB0
aGF0IG5hcGlfc3luY2hyb25pemUoKSBjYW5ub3QuDQo+IA0KPiBuYXBpX3N5bmNocm9uaXplKCkg
d2FzIGFkZGVkIGluIGNvbW1pdCA0MWYxNDlhMjg1ZGEgKCJpZ2I6IEZpeA0KPiBwb3NzaWJsZSBw
YW5pYyBjYXVzZWQgYnkgUnggdHJhZmZpYyBhcnJpdmFsIHdoaWxlIGludGVyZmFjZSBpcyBkb3du
IikuDQo+IG5hcGlfZGlzYWJsZSgpIHByb3ZpZGVzIHN0cm9uZ2VyIGd1YXJhbnRlZXM6IGl0IHBy
ZXZlbnRzIGZ1cnRoZXINCj4gc2NoZWR1bGluZyBhbmQgd2FpdHMgZm9yIGFueSBhY3RpdmUgcG9s
bCB0byBleGl0Lg0KPiBPdGhlciBJbnRlbCBkcml2ZXJzIChpeGdiZSwgaWNlLCBpNDBlKSB1c2Ug
bmFwaV9kaXNhYmxlKCkgd2l0aG91dCBhDQo+IHByZWNlZGluZyBuYXBpX3N5bmNocm9uaXplKCkg
aW4gdGhlaXIgZG93biBwYXRocy4NCj4gDQo+IFJlbW92ZSByZWR1bmRhbnQgbmFwaV9zeW5jaHJv
bml6ZSgpIGNhbGwuDQo+IA0KPiBGaXhlczogMmM2MTk2MDEzZjg0ICgiaWdiOiBBZGQgQUZfWERQ
IHplcm8tY29weSBSeCBzdXBwb3J0IikNCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4g
U2lnbmVkLW9mZi1ieTogQWxleCBEdm9yZXRza3kgPGFkdm9yZXRza3lAZ21haWwuY29tPg0KPiAt
LS0NCj4gVGhhbmtzIGZvciB0aGUgc3VnZ2VzdGlvbiwgTWFjaWVqLiBJIHRlc3RlZCByZW1vdmlu
Zw0KPiBuYXBpX3N5bmNocm9uaXplKCkgYW5kIGl0IGZpeGVzIHRoZSBpc3N1ZSBjbGVhbmx5IOKA
lCBuYXBpX2Rpc2FibGUoKQ0KPiBoYW5kbGVzIHRoZSBzdHVjayBwb2xsIHZpYSBOQVBJX1NUQVRF
X0RJU0FCTEUgd2l0aG91dCBuZWVkaW5nIGFueSBob3QtDQo+IHBhdGggY2hhbmdlcy4NCj4gDQo+
IHYyOg0KPiAgIC0gUmVwbGFjZWQgMy1wYXRjaCBzZXJpZXMgd2l0aCBzaW5nbGUgbmFwaV9zeW5j
aHJvbml6ZSgpIHJlbW92YWwsDQo+ICAgICBwZXIgTWFjaWVqIEZpamFsa293c2tpJ3Mgc3VnZ2Vz
dGlvbi4gbmFwaV9kaXNhYmxlKCkgaGFuZGxlcyB0aGUNCj4gICAgIHN0dWNrIE5BUEkgcG9sbCB2
aWEgTkFQSV9TVEFURV9ESVNBQkxFLCBtYWtpbmcgdGhlIF9fSUdCX0RPV04NCj4gICAgIGNoZWNr
cyBpbiBpZ2JfY2xlYW5fcnhfaXJxX3pjKCkgYW5kIGlnYl90eF90aW1lb3V0KCksIGFuZCB0aGUN
Cj4gICAgIHRyYW5zaXRpb24gZ3VhcmRzIGluIGlnYl94ZHBfc2V0dXAoKSwgYWxsIHVubmVjZXNz
YXJ5Lg0KPiAgIC0gVGVzdGVkIG9uIEludGVsIEkyMTAgKGlnYikgd2l0aCBBRl9YRFAgemVyby1j
b3B5OiBmdWxsIEUyRQ0KPiAgICAgdHJhZmZpYyBzdWl0ZSwgZ3JhY2VmdWwgc2h1dGRvd24sIGFu
ZCA1eCBraWxsLTkgc3RyZXNzIGN5Y2xlcy4NCj4gICAgIFplcm8gdHhfdGltZW91dCBldmVudHMu
DQo+IA0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgfCAxIC0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiBpbmRleCAxMmU4ZTMwZDhhMmQuLmExYjNj
NWU0ZjdkMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2ln
Yl9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWlu
LmMNCj4gQEAgLTIyMDMsNyArMjIwMyw2IEBAIHZvaWQgaWdiX2Rvd24oc3RydWN0IGlnYl9hZGFw
dGVyICphZGFwdGVyKQ0KPiANCj4gIAlmb3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVtX3FfdmVj
dG9yczsgaSsrKSB7DQo+ICAJCWlmIChhZGFwdGVyLT5xX3ZlY3RvcltpXSkgew0KPiAtCQkJbmFw
aV9zeW5jaHJvbml6ZSgmYWRhcHRlci0+cV92ZWN0b3JbaV0tPm5hcGkpOw0KPiAgCQkJaWdiX3Nl
dF9xdWV1ZV9uYXBpKGFkYXB0ZXIsIGksIE5VTEwpOw0KPiAgCQkJbmFwaV9kaXNhYmxlKCZhZGFw
dGVyLT5xX3ZlY3RvcltpXS0+bmFwaSk7DQpPay4gQnV0IEnigJlkIHN3YXAgdGhlIHR3byByZW1h
aW5pbmcgY2FsbHMgc28gd2UgZG9u4oCZdCBtb2RpZnkgYW55IHBlcuKAkXF1ZXVlIE5BUEkgcGx1
bWJpbmcgd2hpbGUgdGhlIHBvbGwgY291bGQgc3RpbGwgYmUgcnVubmluZy4NCldoYXQgZG8geW91
IHRoaW5rPw0KDQotICAgICAgIGlnYl9zZXRfcXVldWVfbmFwaShhZGFwdGVyLCBpLCBOVUxMKTsN
Ci0gICAgICAgbmFwaV9kaXNhYmxlKCZhZGFwdGVyLT5xX3ZlY3RvcltpXS0+bmFwaSk7DQorICAg
ICAgIG5hcGlfZGlzYWJsZSgmYWRhcHRlci0+cV92ZWN0b3JbaV0tPm5hcGkpOw0KKyAgICAgICBp
Z2Jfc2V0X3F1ZXVlX25hcGkoYWRhcHRlciwgaSwgTlVMTCk7DQoNClJldmlld2VkLWJ5OiBBbGVr
c2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KPiAgCQl9
DQo+IC0tDQo+IDIuNTEuMA0KDQo=
