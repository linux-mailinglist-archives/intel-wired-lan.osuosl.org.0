Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D286AC0DEF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D04346147F;
	Thu, 22 May 2025 14:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WmRbJeL3OXpx; Thu, 22 May 2025 14:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3319061471
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923681;
	bh=zF1dkh/AAJpi+I/TBs+UoVt1uwfBfIiyI0rqvotqwvM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KGnSn+p2x+wB9onKcAFbf6qZxlpOTa/ZyOfxtyCcyfCff+MosYbBkGX8CTJF53ia4
	 YnCrW1YWtGhu2RrLzTSipqzcwaZ7h/RKnuItr4Facm6mAu0BV/v7XDc7o10j1j3esW
	 R9wMAAxN2lModcQc0WV8CArEHMDARc6yWpCeh0HZ+1P8IGIAQ4UVKMTndBDpNR0kt5
	 B1adHUTbcKD7Or25e5CnKIlp1RPpFGh2XbUnW6SOevo08UTCLHJH7ePmGhMvN5JQiH
	 vuhPGH5jAf1DfP+8xnqXDTvdIwew689pkdP+V1ofde7j9fDkpybjnYwBlbIOm022Ql
	 9xjYRljQnOJUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3319061471;
	Thu, 22 May 2025 14:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D9C86221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C035640515
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3iiqKtHJKpQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30022404D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30022404D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30022404D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:21:19 +0000 (UTC)
X-CSE-ConnectionGUID: jLJIYAJuSqSSsF7qSVEWxA==
X-CSE-MsgGUID: t+LeEqmzT1yis4r9XkuRTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="52581139"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="52581139"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:21:19 -0700
X-CSE-ConnectionGUID: fRfiHBWYRh+Ku8JjeInu5A==
X-CSE-MsgGUID: 99xHkdPaTiyYEmReVgLZpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="141557424"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:21:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:21:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:21:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:21:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MwjTvvRj4IS07yGhXNYxgy/zoDYrbGwKdm4psfXdRa4h8/F+FXbZgHjlLVHVd8Bck9fd5RwBtxe0VGEpWeFg4lHjNqKt4jMMHSXQ+gtPg/QefvYEHqzCGVRogLsfAXOczaL/1g1AsyNhZ2o7aJHmKMnfAyK6MAJ5cKt4y5irooJYboAHzNTTzGYdDY1tM5zdoP48gpyn3jLmKDt6QEnUes15YNUPB8z8o68lisfBmhue1+Ds09ECQ/ICLhCrIyYNVuOoB8tDyDqXjTcLLfsvKVvpzwpMGgG1ocbq4NduK5yS/ND2JBKTMeJu0s33lntHtSZ9i3tBbdW/TL9sc1Q4Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zF1dkh/AAJpi+I/TBs+UoVt1uwfBfIiyI0rqvotqwvM=;
 b=hL6lL2bKnldgP8JKzhIIfisgiT5fqgWXtPzDtP5rTcJGbtclxm9pbgeeRHY+0dB8PqallaUuM46gSxsoel19Gj5Pf7W218OljQB59AH00Xo/Bc8YId8LVTyTyAuj96HcsGRa8zJd4I9bR81o4lgpD9aIsvPBnMezItt010AlHSun3B/geVBVvPoVXQjb+rX/VdwGY800rftXkK2Mr7+FjhUruO0erJtOFyBVWZSaCwplLtZ5lwO60HfBJedzjpW+iXbbLcMLQN7bBiIOfb+NypdgOtOAj2xMKfD0pFPpVY5KIL153Iu0019u/31i1BmlRwTvXQ+czALPy+oiEamZRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:21:14 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:21:13 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 05/15] ice: use designated
 initializers for TSPLL consts
Thread-Index: AQHbuuwS/jEs2xf7T0ahYsH7f/iFCbPe01rw
Date: Thu, 22 May 2025 14:21:13 +0000
Message-ID: <IA1PR11MB6241960B0AA8EE3F3C2556518B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-5-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-5-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB5891:EE_
x-ms-office365-filtering-correlation-id: 1d3ebf96-d042-4fcf-1424-08dd993be817
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d1dPa1VoTTRNT3RvSkNXSEw5TEs5Z01rQnJFa3k2Z0JkdXdmYXpiaXo3NDBH?=
 =?utf-8?B?RmdhbWFySzlkdW40cUZRTGVpb3M0VXlEVDdVMFpUbGlzUHhkeENqZEdObUJJ?=
 =?utf-8?B?dXRFa1pFNllYU0NTdWE2THE1RzllMDAzTCs0bmNHOENheVN5K3ExbytUdTlS?=
 =?utf-8?B?cHZXckJhdmR1b0NMNVJySmlybE9ZMzM2bnBsUERXd2puWjlZWkkrYlNQeVNR?=
 =?utf-8?B?ZHZzUUxja2xlMUJNZWN0N0xIYjFjdjJFNDRkZnowYS96cUxZR1FvM1AyOS9s?=
 =?utf-8?B?dCtxWjQwUTNsdkV6WVd1V0ZEc2hPcU92Y2hJOUJxUnpOcjNKaldPZUJzLzZ2?=
 =?utf-8?B?TkZKVHdiYUpmNjFHamdKU1dqY2JNWlFBMDQrMkZBUW1SNnFDT3EyWkVoaVJs?=
 =?utf-8?B?ZVYyQURYSGtnN1BUZlpUT01Va2pqMFk3SkE1c0Y5RnVtSU9aeVdUYWxvS2g3?=
 =?utf-8?B?emVkL0UyOHgxNXRZTTVybCsxc0dXQlU5VXBnV0ZVZVdPeXZRVlM2YkJEMWpx?=
 =?utf-8?B?WWdUdmNLLzMybmhNM1A1dVFwYlJvMXJoeFpSZ09abnJHZnlFS3JSM2RSTzQx?=
 =?utf-8?B?dFZXT0NtTEkvY3JBZ1ZyNXF0dXFtRUhjYW43WWE1Zk5xMFdvS2J5Z1FqWklk?=
 =?utf-8?B?NjFvYUZIalFyZENNSEFwejgzNjJ2RkJsa1lzQW5YdCtLZTMvd1J5UE1aVjUv?=
 =?utf-8?B?a1RRTThvTWZsbUN3MkpqZ0pUSE52MnMwTW5UQ2lTNC9TWnV2WmZIS3lMYktN?=
 =?utf-8?B?T0YrUjVBTFR5d3UzRmtLTVp4SDVDbTQ5UlNNZ1hQK0ZvM1J2ZTBtZjdyckxh?=
 =?utf-8?B?TTJqaXpOZndlbUlQcUlvS241bXVOOUJwUHhXOVV3TTUyYk9BZ21JNUVGR0tz?=
 =?utf-8?B?N3VuUDI5TXArQjBIcHRvQSs1YjRnOUhWZHM3V0VXU3d2dDdRSFV3eWY5QktV?=
 =?utf-8?B?UXlhTzdZWjgva0NVTUNRRDQvQkZUT0hGTHJJN28rdE5IZEJTM05oYW1SQURh?=
 =?utf-8?B?UDVGa0YzbzhDYTBqQkxLNGw0MzE3ZzE3V2ZDZHdzK1hOcWo0NjFpNlV3cnZi?=
 =?utf-8?B?dkFTQ0N0SFhWVW5QakJvLy9NL0xsOWJudS9UaW1oeXVxbUZ5UFo3ZUNxT09t?=
 =?utf-8?B?OGZvNlpYOTIwVVUwT2ZlRXZGZGQ4OHRyMnBYOERBdHEwZkJzam5XTTJsaFVJ?=
 =?utf-8?B?TTJtWnRaSmZuamhiendROWdsUFc2cW5vdVlZVkpQdjMzRVFSdnMzSTFuN2Jw?=
 =?utf-8?B?ZlkvRFczcXV0NE9ESk9UQmUxZUo5MUxmL2pGQUs4K2xXL1JHQUdmRTFQOVFm?=
 =?utf-8?B?OHNnVDN1U0FZQ1FYSUY2M2pKNmhQcUNYRlRDVWtFMGE1MDlGM0hYczBXZ3Nz?=
 =?utf-8?B?RTVxRFRNYmhxOFR1VmVkY3JIcGZFOFcyNGlrdXhvVndXMWJjNHplaWFXVWsr?=
 =?utf-8?B?N1RkYjJ0K201cnRwRjJaVXB0L2JDTTlIVTRrRk12Yjc2ek55ZWNNc2M0UzMw?=
 =?utf-8?B?UUg2UXZBdjdQKzhSTE54TWRmb3VIN043a1RNUy8rUnpjb2NxL0tJU2hnTzBU?=
 =?utf-8?B?STMzUVRaSXN0N21MdnZNYUVyeXBzKy9ySXZtL0hGRkhGL3ByOVdrVWdtTDY2?=
 =?utf-8?B?TU4rYjFaakJXS01VK0FOVFhJMVZYcnErU0hRUEMyYzV2U2RwZDBYVUFEbkw1?=
 =?utf-8?B?VERzTkNYL0ZJRFhqNStuR09RdDJKUG5Uam1HZGpGSTJTdDhMVkJpVitwcW02?=
 =?utf-8?B?eWJBNXNQN2o3VWxNLzM3WUpwdzgxRjQ2VXRkZ0RzbU9CU2wrUi9vSjAwS2h4?=
 =?utf-8?B?Wk9YaklVTG5ieXZZOVBQdjJPbnZnRll1cVRVbm9hZjBKYWJSbFBMSEg3ejBE?=
 =?utf-8?B?Y2pIVDJqR3VXZCsvSzlVYksvR3hybmFFUTAxZitQand3S3krT0pEOEt3MXZH?=
 =?utf-8?B?MzVzUGRSTDlyUXplcFh2MVBBb3h5bFF1MHNiN2g4bG93c2VBVU1ZZmNMZVg1?=
 =?utf-8?Q?lrL+39wzirIk8gzQl6OG16GdfDjdhs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yi9qZHplbitCZjROaG9UT21JVjRscTV0cVIwL1FhaGlrelRiaFFsV2NBdXpw?=
 =?utf-8?B?RUdQMHVNWUx1Y284ZFcvZmRoZXFiUTh2TThKUHBMOU1YcENaWllsMlVPTW82?=
 =?utf-8?B?REJWU1hDTGdPclQ5VDFvNXhpNDFqcWNha2pqaU9oWkx2UzVJVnZSMitoM1Rl?=
 =?utf-8?B?ekRtVDFRa3g0cVFoZHJKTjF5dER1cENPMzJRZVU3VXhGeHZkNzdHcUJ6TUR3?=
 =?utf-8?B?VWpxd1JRdGFKNkVzdm1BUVVLUWo2SXZ3UHJ6dXpURXBVSUtkNHFUYTB1L29r?=
 =?utf-8?B?a0ZyZWlZbXFNdXNhTHF6N09Qdm8rMnFsODlvMmFDOTUrMGVNM2RUeExoVFJs?=
 =?utf-8?B?Z1FKaDc2WVVYWjZ3YXNwdnVWTEsrTStHaGsrdFRFSm1pdC9IRHdlVktwcm0w?=
 =?utf-8?B?RW4zUzBtRXErT3hCNGduS3FXVWRQY0NzZ0RhRXdHaFpBbHN5dlg4VVZsd2pr?=
 =?utf-8?B?Y0RuMWxuRXhDd0xGM2NPTjJjWlZBSWswbm1iSVVBSGV4cnU5VkxyenlQV1p1?=
 =?utf-8?B?K2xCUXBWWXplOCtaK3c3TWh3Q3c5aENUem1tOTRvaVUwWmMySjJwZElWcVN0?=
 =?utf-8?B?VFZsVlZ0Nzl4cUhNR0RLeWhmZGlxS3JLQzJ1TFgyV0VTWFM4MFN3TWMrSE1I?=
 =?utf-8?B?TFNmaGpnMkVxcXVaQjI5TThFRkdWeE9PWlVTK05NQUloejV5Z1VjcEhKT0Jv?=
 =?utf-8?B?UWhQQTAyczl2NEpIT0Q4dkxGRUxMd0hVRFBXUWdHcDdsK1pjajZpYkgzRGQ1?=
 =?utf-8?B?UlVHS3BPamFnQXUyU0pGT25VNUo3aXVZMng4YVdXM2xQVjZPdDZUR2orZnlF?=
 =?utf-8?B?TXR2ZUN6OE5YdVo3RTAzTWRnWDBybGRQZzFFWUVFbjl6V3FSLzlnTjVPU045?=
 =?utf-8?B?My9HNXgyMWwyZGI0cDQ4b2lsWFV2UE5IV2dEQ081RlVSTmx4MUs1VTBOZ3Mw?=
 =?utf-8?B?Wi91SVZVcU9DVDE2NS9VQk4vMlFTS1ovS1BjQmVoODl4ZFdEMUc4U3BYYVZx?=
 =?utf-8?B?V3VuN2krdEtiVHlJTXRRUUM5TDRJQ1VpaE13UkZCOWdubXEvY3gyb1dwK0VP?=
 =?utf-8?B?TWs4U2oyYnJDTkNoZGZ0RG9TU1c0UDMxZjNPenRsaTBic2ZYeGRNSWZ6c1ZS?=
 =?utf-8?B?VnZDK1J0cG5ycy94RGZJaVlTNlBLSWFNaTNCVFBLVUtubVNrWkhTTzNkdVpa?=
 =?utf-8?B?MnVBL0R1ZWZYcGVmRGlCU1gyMElRWXlCTDEyR2t1YU5rOXNFcVN2R21WKzVK?=
 =?utf-8?B?U0M3cFkyL29jUjdLSGZTeUlsMmc3S0lOQmZ0dnpWOGVGRVora0VEaksvZGVD?=
 =?utf-8?B?U1dPeEdJelpMVlM1NDNsZ3RGbmRzNjZ1dmFEVG1od25lU2Rpa1Z0ZnArWVl0?=
 =?utf-8?B?Zm9lL2h4WXpuOG9kalcvVjJBd01uYUk4bGYxVlBWNWxKTzUrMGNSaGhYQ1hT?=
 =?utf-8?B?S0lVK0pVYURnaG00VC9LZHVYd3A1L2xGYk9ycU50Q2tNT2wwMWR4UVZRazFJ?=
 =?utf-8?B?UmhFU3BlVWNkWFJrdmhNKzVDeGt1Q1NNcE1iTnhhNVdkbXVnVVhUa1FIeFZT?=
 =?utf-8?B?MzlNS0tDS3oxNUlQOTA3RlZCdTdJRk5sTmU4em83Q3U4OG81TGdZdytoRUxo?=
 =?utf-8?B?UDYyWWkwNGx1S01kU1FYYUxsVkZsL0NPeWNYT3pMVXRFckJFK0VQci8wNEt3?=
 =?utf-8?B?b3hTSzR2S2lWazNwQzBNaDVHSEFqNDBTQ2I4MU5hRlZEWVhXRWVPRVZTc294?=
 =?utf-8?B?MDJFcVFIZFNtZ2xkdHpEWU1uclRRaVJJSUQxOTZnTlFvZkJJNHZjem5uRi9O?=
 =?utf-8?B?UGxYNGdBYkk1enJjSE5iSXRJVWVJaEtXc3lxa09XYzV1MnFyNXh0cGxNNWk2?=
 =?utf-8?B?R2lWOCtFajgvQkpFSGR1TjhtbHdFQTVYY2wyeUk4ak1qaEhZTlZ6enhpN1VI?=
 =?utf-8?B?UDkyUERuNEVEMXowOFFTZHRnMSt4Q2dzdEcxTnBzSStEYkUwMmp1UGZTSmJz?=
 =?utf-8?B?bUVpOFpxOWgxOGNicjBwWlh1MGxTL0VlLzJOY3IvM0RoOXpaUVhFZGNHLzVh?=
 =?utf-8?B?VGtsTjVuak9Ia1NNQjlvNWk1OUNaancyTGpLVXBtczVpT2ZBWnBQdGNRTXNt?=
 =?utf-8?Q?M2YPxRXIIZwSqFoEfs5i6obrY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3ebf96-d042-4fcf-1424-08dd993be817
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:21:13.2300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yLif23F0dta3V3RfP6LBkzJhTICo4D3VYbd5LJIB02YSA8+gJREP6g4rI55a9oRR0f6+qx0EJuZFdxUhD5VBbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923679; x=1779459679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zF1dkh/AAJpi+I/TBs+UoVt1uwfBfIiyI0rqvotqwvM=;
 b=gSS41QiOW1+q+qiBrbL30qwK04Vp9nYr5/3lZIr3W6MF+nYOkvbrpJ5c
 TwZLuB50Bx6wkFEykHpyim72BYkjQX6aNC+ySEaS3+Wqg5fYMijPpFhz5
 x6tlxGkJRCwr0k1T9DpLE5b9PFilcmgP8hJ3CzW4QMf5tKMR/+ZkxJRvW
 A/SWP3vdHLlimkhG4vFFfo1RAZvJNhtecU/7/D5vgH6OL2ZNrSEfaEIl8
 ZWA2f/j42tlx36o8R6DhHP9JkaYP0998tBO+1Huo0Yv/2fGhyoSDZRTxM
 S5md62YZTVzxst4Y/qVnk5odhziagKb5UinZEuxMo0u64+TotFxG/ntbG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gSS41QiO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 05/15] ice: use designated
 initializers for TSPLL consts
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDA1LzE1XSBpY2U6IHVzZSBkZXNpZ25hdGVkIGluaXRpYWxpemVy
cyBmb3IgVFNQTEwgY29uc3RzDQo+DQo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtv
bGFjaW5za2lAaW50ZWwuY29tPg0KPg0KPiBJbnN0ZWFkIG9mIG11bHRpcGxlIGNvbW1lbnRzLCB1
c2UgZGVzaWduYXRlZCBpbml0aWFsaXplcnMgZm9yIFRTUExMIGNvbnN0cy4NCj4NCj4gQWRqdXN0
IGljZV90c3BsbF9wYXJhbXNfZTgyeCBmaWVsZHMgc2l6ZXMuDQo+DQo+IFJldmlld2VkLWJ5OiBN
aWNoYWwgS3ViaWFrIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IE1p
bGVuYSBPbGVjaCA8bWlsZW5hLm9sZWNoQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogS2Fy
b2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3RzcGxsLmggfCAgOCArLS0gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHNwbGwuYyB8IDk1ICsrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDY5IGRl
bGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5j
b20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
