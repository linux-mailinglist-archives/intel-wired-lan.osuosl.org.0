Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9D3939C22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F8AA80CEC;
	Tue, 23 Jul 2024 08:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P81PVD0lu4Se; Tue, 23 Jul 2024 08:01:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54EFB80525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721669;
	bh=WUXLpktkVGpA/0/ET2fcI4dENrI+F8kjxK2OEokUW6w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S1dK0cRclTe4NmeEPVRbjDYAD3cKjHDCJa9B77FWRGyJq3lgn9JDA1oW4X2uUE9W5
	 zlkVZZnVUD9IHIf/dpVF+k/qmRBvH9m51NMy+KPcRUfdGKJ3IhAHwgC33SJ39UoFt9
	 yQU1dJP+FYCoGQdugFpfeUjSpprqXJdyGERLV48egqgRo3hc+n0yZFSNXeQFeIBIYQ
	 YaBvZQ/j4FsqNi8FRhzfzKnAEqkEdYALqKItOgngNygML8IC36JN+CnaIWH4zdIFPf
	 vsrxOqcDr1OU0vdbdz9QALroHGOiWGFpRk+yPLoINII3Nw1TfvkhbUJXIEBc/glq1y
	 tWb5FuxQ3Oy/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54EFB80525;
	Tue, 23 Jul 2024 08:01:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DD5C1BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AC9A6071D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWJ_3MHdVdBt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8FD8D60715
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FD8D60715
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FD8D60715
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:01:00 +0000 (UTC)
X-CSE-ConnectionGUID: pN4YQsyfRlqnO4TAvt5j/A==
X-CSE-MsgGUID: fjpQHC77Snizysn6NRAxig==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29919536"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="29919536"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:00:59 -0700
X-CSE-ConnectionGUID: QMNDuh/SRgij0hUfV3vf5w==
X-CSE-MsgGUID: 2zVBJZc4RNigxXYGaHBkPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="51816673"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:00:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:00:58 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:00:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:00:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:00:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ESXEhGvILb58snFFPPSH4UTqQ68444uIJBo9UaoZrO0aSs3l3VcOkTfZupaF63UIqHE6+nETihFR+ZG2opoAHAHMLLqrq94eftID6jeeQoiEGA0NIIy/WTMry+67R2lM/KdcPUgzmLW1doF8C8kdBBkSH0gJIH6d/NNxqvbKeiymILrrL00opSG1ljlodwyDKmTRWqnnLzP4iQZOb9+jVPi4Sb7B0YQqGFEcorhtC2MMcAu8juXqKa0YH4uRe9Uz4JDIavQ4u6nKYIW5RUMbTox4szXeo5PZLNqw0JvJ5Tdzu5uQ95oagMfv+R0cw+dKgo2vL3CNC+E47d7JxScfAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WUXLpktkVGpA/0/ET2fcI4dENrI+F8kjxK2OEokUW6w=;
 b=DNk/ppplE4l2n2wXckpGST7yrTbCbREcJjxPzSJ2nhvLVLK1j2OewN0anqN9mGZXECsK1ANz/2LdgBh1kNYDtLgcwgIBtD1qxXbhCJx1B2fIXZUjBX/V1IVsMn/sp/c+SsF01y0Kj2WARrgOkyWqY/P5+WrsLDXT4oDZ4IHGtaNkHUtlwtdlczaz9FNsIZ601gJgoCGWnm/AfT+VbAcAlVXYxFpmOK+6xjYPV6ybiDOtmkYbqQq8j6/Hw+JQXtCQH3e4iuIBa48M1tDvmwB1AFpkRwmNnLuTjJrYXTd9NT1IrNTlQxI8O7L4u+3DxQ3jIkdazfSheRYA8BaCcIaE5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 08:00:55 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:00:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 00/13] ice: iavf: add
 support for TC U32 filters on VFs
Thread-Index: AQHasGfrUBk90/HBo0e3S/jTO6P1zbIES/3Q
Date: Tue, 23 Jul 2024 08:00:55 +0000
Message-ID: <SJ0PR11MB586519CCB54A72D910E5669E8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 883efdd2-bacd-4d3b-3b4c-08dcaaed945f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WnVDVXZhQjhIdFVwNWNlVHlwNzlHRUpSUmM5OWJTQy80d1BXQlJqMEZ4TVVi?=
 =?utf-8?B?MkxOT2pRNEpEMXpHaW1TMWhDa1hKOVFndG5Qd1dxaDBuSGVFV1JQN2ZoTnZy?=
 =?utf-8?B?QzJyaUxrU2hRRUlhVTJsaDlQOFBKWmNuY3pKc1FWdHJ2SkpKdXFndDNtZEpY?=
 =?utf-8?B?VzZibEZFeEFrQ0ljTmQ5ekF1SFZXMGVtQmZxVjd6Y1VCa0VreEtEOUV1YTI2?=
 =?utf-8?B?aTEyWUplSjE2YW9ZeFhScDhkTEtocGdMQkU4OWlFVXVFUGZHWmxjYjNOZUFu?=
 =?utf-8?B?ZkFONjNvbFlJZW5VdGpVS0c5TzhadCtETHdCbkRESVFHdVNQQmM4QUFqVk5J?=
 =?utf-8?B?N3JzV2VJS1hnazRHRVFaSjNCVjBPY3p2emRJdEdGR3p6SWFOWWJGeCszQzVn?=
 =?utf-8?B?bzhybTN2cWhWS0F5Z2t4RmhOeEw4WDNvS0M0eURKbUJCQ1haSmZLa0I0aXNE?=
 =?utf-8?B?N3l1bmNoS2FUZ3dUZjY1VlFMazdPMHphRm01V0EwK2dTTnQzSXhJTkxaek1Q?=
 =?utf-8?B?bGI0SVJEMllKYkxoMWJxNFJ2dVBuS1ZhMjBFVGhYVUtMYXhRYkNpbUNVSjhT?=
 =?utf-8?B?cjBIUUNBbGNFRlN5bTVUOTdVY2JieHFabFNKY08zNi91T1A3VFEyVUxDQjBW?=
 =?utf-8?B?UVZxQWFWZ2o3SnhUTUdieFBkRWQ1QXBGdFRhZktaTlZLRnNUNkRUUVVqaUgz?=
 =?utf-8?B?MXBkVmJBUVhreWhZU2NPTnVrc2VzOVNHVHBlZDBLVVU5dXRsMzRadURtWkhl?=
 =?utf-8?B?Sk8rN291MHRiLzNEak05eEZvWEVSWEcrd2M1SmFId1oxQ3Nya3U5SzgxL3Fh?=
 =?utf-8?B?bFNCbzZIaTdsdWF0RTh0L2pDeUNCOVVzYUEyR3g5TjlORzh0MmREL3psa2dK?=
 =?utf-8?B?dHlVVGtUWG4ybmFNckdReWV4YTE5TFNTZ0lMb2k2a3RDaHFQNnBZVUNDNitq?=
 =?utf-8?B?aEhla0E5aEVVb3kvSXg2Z0ZNRHRyYlZ5Zm00djhQbEVQTUJmRGVrOCt2MENI?=
 =?utf-8?B?MUZlTGo5UHE2MTNHeW9lbXVidFpvVllZMy9UampjbEluV3AyTFRhSGlVVm5w?=
 =?utf-8?B?cndPT2JDbmVid2VsTTFsbE8yWDZqVnVYQkN5bmJQd2dnN1VmVU9GdVo3MzJ3?=
 =?utf-8?B?bEYxYjlBT2YxU1Bva2ZwV1RkQWV1R3NMY2V2OEc0cWNGNXZnV2N2VGllRS9Q?=
 =?utf-8?B?ck0rMmhMaXV6eUplTGR4aDV2TUZIOUNvR28zR1EzZ1hJSzgwQ0lRR2k4QzlH?=
 =?utf-8?B?TDJJYUd1YjVUaUxEdlozOHFuKzVsZE9wbVh0eTdkSHhvY3N0b2Rrd29vckNH?=
 =?utf-8?B?RE9WRHVIU3JEME00Vjl3Q1poNHhNSkJHOWhwblhxbGMyVndKcysrRzY3Zmx6?=
 =?utf-8?B?L1ZEbGp2LzUxWXRKdDNoZFBLcEowclFIUG9IejE1dCtrdXhSRnZJYjlxU1Zu?=
 =?utf-8?B?elV5YjNia2ZDKzNJK0diUnBwajY1RG5LSy90UThtK0liTndVeU9xWGhwQ0ZN?=
 =?utf-8?B?SnNMeFp0c2VpNExEMVQ0M3RocjgvanZ2ZUQ2Wkt2SVlTUzM2SE8rU21uTDZH?=
 =?utf-8?B?VFBYeVEzMHNqQ1pBWkI5eU1RTERScjdWY01HeW5qTFExQm0vbm5FOG5sam95?=
 =?utf-8?B?VXZBSzVLdmhtZnFkVjUzTkVubHRic3hKaDcwaWdVS2d4c0loL3ZQNDJBWXhV?=
 =?utf-8?B?L0FHZ1VuVVJKL1JnR2hXNTlFaFRhRmZNWkxjMkZPNTZNanN1cDZCN0xtcGFt?=
 =?utf-8?B?VDRrMkN2UFVod2pSczB5YklBTkl3SURIOUJOcWdBNTlNMlN0MVhQOGhsWVhV?=
 =?utf-8?Q?ZmJjiVOiB6Tjg6y25ccVa59lC6nxMuYvZhOK0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2dneWVWMjMyMzUrOE9JSWFTT0tpeE5zVitpVCthZFVUNERBTC9CeGNnU2Rt?=
 =?utf-8?B?Q1JLOTNHNTg1OU4zUVJiTFZaN0VFQkkvcy9hTE9oWEU4bWIyZmFVc2NBR0Fy?=
 =?utf-8?B?a3o1Z0s3YUFrOXArRm9nall0UStXOGkrakoxOEI5VVYrUjN3RGhDRVkvY2dQ?=
 =?utf-8?B?Uk1xeUhiODdOTUxaOTdzTGpHbUlPWGlVU3MwVEtwNXIyRDdsT3V2SVBtRVFG?=
 =?utf-8?B?V3BUZGVMcXA4N25rTlRCSmhlTmNoK3ZLQ3Fna2JwMHBqelpOWGlhMFBXc1d6?=
 =?utf-8?B?ckJxSExyQTAxb25oQlFDbFR5MFg2S1BXa2w2cUhIVi83dEsraFFpZXptTkZR?=
 =?utf-8?B?NGQ0WThiUnpubW5KR0FMZ1FwVXZOemJheitXN0RLOUN0OVc3L1J0VjFtaDhz?=
 =?utf-8?B?clBodUtwdXRTakVFYTVjVllodDNzRXBPeCtDSnZqRVZBR3BlMTNiV1d5Q0ow?=
 =?utf-8?B?eWFKbUxhRXBOM0dlSmFjNytvR3I3UDJCTnhIV1FQNXFwL09rNUdoYmVKR3FI?=
 =?utf-8?B?c0orV0p6bDIvRVhFNDVSU24yczRueUNKNE1jWnEvTTZKTG1PMEU3dDhHS0Fv?=
 =?utf-8?B?bGVXbitSU2k1UThuUEcvQzRnU2k2VGdpSlpYS2ZZT0hIa2gxUnIrL3IreUhN?=
 =?utf-8?B?eDBsR3F3WXNBajc1dVNmSEd2a0pIcmtDSWY3azZSdXlYSEVmME1ubXpGTDk4?=
 =?utf-8?B?Y2p3NzlocEN0a2xnMTIxVGtqaENZaXNGRHFpbEVnNE5lQzR6aFM2WjRMNHp1?=
 =?utf-8?B?ZFZPYWpkTnVVMk5TaUhhRDdEb3hPb1JjQnYzTXNuTjBheXB6djBIVXh2eWpT?=
 =?utf-8?B?bjhiTDBDck9OQjVYcWdiZGxPaWZDTVRDSUVydm1oU1RrRjZaNWdvR2U5MDNR?=
 =?utf-8?B?OUpsR0FabGZVNlR5WkVMOXp1NzVCeElvaGRJd1h4Y0ZsUTkxNlpTdnJoMGtN?=
 =?utf-8?B?Y2JTdjlqeHJCNmVmeFNVb2pRVVJ4blFURHpIemhYZCs1QUdneTRTY1o0bzc2?=
 =?utf-8?B?SW5Kbm1LbG5xSHVXd0NZUFBvWHV0bmxJR3lRZ3hxWGFwVFRHaUl6UFBjc3lq?=
 =?utf-8?B?dW1nUDkzajhDbTdVNnhvT3h3amN4azlCMkQvYjdJenV1WHAvZXVNNDNWTmJn?=
 =?utf-8?B?VG1ZdmJSZnBPMzZzeWFaZnZVV3hDaXJ0d1Mxc0Jvcm84RmdrZ1hIaXg3M1Nw?=
 =?utf-8?B?aUR5a011VDNRSmF4elBRNUl3MndodDBvOEtvTXdkUno5akk3Ym1ya0E0ZUxI?=
 =?utf-8?B?dWZaUEU3aFJzbThTb0VZeFFYRjBaZDlxaXh6VWxhTHJyRTVucHpMcFAwcUV6?=
 =?utf-8?B?bnZGbmNPQ2lJcEJmVEZld1FET1FXUTBmVS92eGpYL2JSSGJZNER6cUZhKzlh?=
 =?utf-8?B?Tk1RWFRxUENoUHhyLzF0ZjV0S21WZEcydnFiRktJWE9nUEtMelNFOU1NVndx?=
 =?utf-8?B?N2lWdThnMHVMcjVQemxxeVkxcFFWQW5jeUwyVnVxM2FyZi9lRFI0SWFiczB1?=
 =?utf-8?B?SlFuZ0NMVDFRQjA3R2VOcjIzNHUzZDFhaytCaVNlaitNSVUvejRLNnFRTkty?=
 =?utf-8?B?V2VncDdCT2o5aHpyMVFxdVlIcE5NRm1TY0t2RWM1ZWxodkFUei94Nk03THIz?=
 =?utf-8?B?ZndoV0tRRmk3RzNlVFpEbVgzN1EwUWUwUUJxWDEvUXJnSXlpLzdxNnJ6amlB?=
 =?utf-8?B?ZlpxbmVkRDd2WnV5bFVvZmRwUFpGTkFtQjdlNEExUnY5UWRwci9oeTFGejR6?=
 =?utf-8?B?a2E2d0NBb1JIc2dHTVA0ZmZhdVFwSU10Q21aNmJtUEFQRWlaNythWUVPTnNx?=
 =?utf-8?B?NVhFRys2a3ArNHJPbzVaUW9Yb09wRURhUjVPSjFaTXFLdHZDZ0o0QTVveTlW?=
 =?utf-8?B?bFlSQUZzUklRVlpuQXo3dlFYU0JjR05GNFpEOWJQNUJ4WFlXS3lyaHFQOHY5?=
 =?utf-8?B?L0IzaTN3NmZoL2JVdHRRRy9uNi95TTNUOU9qdE53aVhZZVRGcHVHM253VVln?=
 =?utf-8?B?bHZOaU1QcjRZeER4MFIvWDNSL21zTzRENmxFRTBEZGF5bmhzNVY3R0pTQzlM?=
 =?utf-8?B?UjJxS0hLczY3dWNSVGlRekE0TjRPZG1ZSUlJT0M4NHYyQmJDNkV6eGxZVDlV?=
 =?utf-8?B?VEMzRVl6b2p5ZGxQd3JvS1YyNythMkFsWFZ6aUN3M2FMTmNaQW1ucGJ4SU50?=
 =?utf-8?B?Umc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 883efdd2-bacd-4d3b-3b4c-08dcaaed945f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:00:55.2793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WQJHAKz6NA/jemJJ3tNZ9FPkSiodGqgVjQ7tF3A5H7Is5g2ET3pYpjjWkEUf7tG3lfDfehzpoPUpbEmHiYk2wQfJTzTbLi5RzY2euKgIpLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721661; x=1753257661;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WUXLpktkVGpA/0/ET2fcI4dENrI+F8kjxK2OEokUW6w=;
 b=bZzcT00BNgjYkZPtHzTTBzyhNnYc8YoR61di11c8fkyWSNrnwz52Vi+g
 J0EROhfS8m4qyx/DcrG+jZpT8DwogaARfXOkAZs7C/XlwMpbei2budCVR
 G+EVGmYzaPk+27q4G30pmth7Gl+QvidOUAeOHOzjOQqdCzTI8YJ5l+oNd
 0oskmDTDlX1fBaLlL9MXS0i9NqA7e7K3MLfQh8UOW/YJdIuF2m6YuLasG
 sHatUYKm5b32ck08Mft3bmIN37x7IAJMqb9z0sO2uOmSx3AVSWyhSUQHi
 oL0yGoXJjPcuAiRXxntqewSsR72jhg4Op9/Z3qm/HiaUIbUZBxqQoraHQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bZzcT00B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 00/13] ice: iavf: add
 support for TC U32 filters on VFs
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBaG1lZCBa
YWtpDQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0IDg6NTggUE0NCj4gVG86IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUu
a2VsbGVyQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IE5ndXllbiwNCj4gQW50
aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IFpha2ksIEFobWVkIDxhaG1lZC56
YWtpQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1u
ZXh0IHYyIDAwLzEzXSBpY2U6IGlhdmY6IGFkZCBzdXBwb3J0IGZvciBUQw0KPiBVMzIgZmlsdGVy
cyBvbiBWRnMNCj4gDQo+IFRoZSBJbnRlbMKuIEV0aGVybmV0IDgwMCBTZXJpZXMgaXMgZGVzaWdu
ZWQgd2l0aCBhIHBpcGVsaW5lIHRoYXQgaGFzIGFuIG9uLWNoaXANCj4gcHJvZ3JhbW1hYmxlIGNh
cGFiaWxpdHkgY2FsbGVkIER5bmFtaWMgRGV2aWNlIFBlcnNvbmFsaXphdGlvbiAoRERQKS4gQSBE
RFANCj4gcGFja2FnZSBpcyBsb2FkZWQgYnkgdGhlIGRyaXZlciBkdXJpbmcgcHJvYmUgdGltZS4g
VGhlIEREUCBwYWNrYWdlIHByb2dyYW1zDQo+IGZ1bmN0aW9uYWxpdHkgaW4gYm90aCB0aGUgcGFy
c2VyIGFuZCBzd2l0Y2hpbmcgYmxvY2tzIGluIHRoZSBwaXBlbGluZSwgYWxsb3dpbmcNCj4gZHlu
YW1pYyBzdXBwb3J0IGZvciBuZXcgYW5kIGV4aXN0aW5nIHByb3RvY29scy4NCj4gT25jZSB0aGUg
cGlwZWxpbmUgaXMgY29uZmlndXJlZCwgdGhlIGRyaXZlciBjYW4gaWRlbnRpZnkgdGhlIHByb3Rv
Y29sIGFuZCBhcHBseSBhbnkNCj4gSFcgYWN0aW9uIGluIGRpZmZlcmVudCBzdGFnZXMsIGZvciBl
eGFtcGxlLCBkaXJlY3QgcGFja2V0cyB0byBkZXNpcmVkIGhhcmR3YXJlDQo+IHF1ZXVlcyAoZmxv
dyBkaXJlY3RvciksIHF1ZXVlIGdyb3VwcyBvciBkcm9wLg0KPiANCj4gUGF0Y2hlcyAxLTggaW50
cm9kdWNlIGEgRERQIHBhY2thZ2UgcGFyc2VyIEFQSSB0aGF0IGVuYWJsZXMgZGlmZmVyZW50IHBp
cGVsaW5lDQo+IHN0YWdlcyBpbiB0aGUgZHJpdmVyIHRvIGxlYXJuIHRoZSBIVyBwYXJzZXIgY2Fw
YWJpbGl0aWVzIGZyb20gdGhlIEREUCBwYWNrYWdlDQo+IHRoYXQgaXMgZG93bmxvYWRlZCB0byBI
Vy4gVGhlIHBhcnNlciBsaWJyYXJ5IHRha2VzIHJhdyBwYWNrZXQgcGF0dGVybnMgYW5kDQo+IG1h
c2tzIChpbiBiaW5hcnkpIGluZGljYXRpbmcgdGhlIHBhY2tldCBwcm90b2NvbCBmaWVsZHMgdG8g
YmUgbWF0Y2hlZCBhbmQNCj4gZ2VuZXJhdGVzIHRoZSBmaW5hbCBIVyBwcm9maWxlcyB0aGF0IGNh
biBiZSBhcHBsaWVkIGF0IHRoZSByZXF1aXJlZCBzdGFnZS4gV2l0aA0KPiB0aGlzIEFQSSwgcmF3
IGZsb3cgZmlsdGVyaW5nIGZvciBGRElSIG9yIFJTUyBjb3VsZCBiZSBkb25lIG9uIG5ldyBwcm90
b2NvbHMgb3INCj4gaGVhZGVycyB3aXRob3V0IGFueSBkcml2ZXIgb3IgS2VybmVsIHVwZGF0ZXMg
KG9ubHkgbmVlZCB0byB1cGRhdGUgdGhlIEREUA0KPiBwYWNrYWdlKS4gVGhlc2UgcGF0Y2hlcyB3
ZXJlIHN1Ym1pdHRlZCBiZWZvcmUgWzFdIGJ1dCB3ZXJlIG5vdCBhY2NlcHRlZA0KPiBtYWlubHkg
ZHVlIHRvIGxhY2sgb2YgYSB1c2VyLg0KPiANCj4gUGF0Y2hlcyA5LTExIGV4dGVuZCB0aGUgdmly
dGNobmwgc3VwcG9ydCB0byBhbGxvdyB0aGUgVkYgdG8gcmVxdWVzdCByYXcgZmxvdw0KPiBkaXJl
Y3RvciBmaWx0ZXJzLiBVcG9uIHJlY2VpdmluZyB0aGUgcmF3IEZESVIgZmlsdGVyIHJlcXVlc3Qs
IHRoZSBQRiBkcml2ZXIgYWxsb2NhdGVzDQo+IGFuZCBydW5zIGEgcGFyc2VyIGxpYiBpbnN0YW5j
ZSBhbmQgZ2VuZXJhdGVzIHRoZSBoYXJkd2FyZSBwcm9maWxlIGRlZmluaXRpb25zDQo+IHJlcXVp
cmVkIHRvIHByb2dyYW0gdGhlIEZESVIgc3RhZ2UuIFRoZXNlIHdlcmUgYWxzbyBzdWJtaXR0ZWQg
YmVmb3JlIFsyXS4NCj4gDQo+IEZpbmFsbHksIHBhdGNoZXMgMTIgYW5kIDEzIGFkZCBUQyBVMzIg
ZmlsdGVyIHN1cHBvcnQgdG8gdGhlIGlhdmYgZHJpdmVyLg0KPiBVc2luZyB0aGUgcGFyc2VyIEFQ
SSwgdGhlIGljZSBkcml2ZXIgcnVucyB0aGUgcmF3IHBhdHRlcm5zIHNlbnQgYnkgdGhlIHVzZXIg
YW5kDQo+IHRoZW4gYWRkcyBhIG5ldyBwcm9maWxlIHRvIHRoZSBGRElSIHN0YWdlIGFzc29jaWF0
ZWQgd2l0aCB0aGUgVkYncyBWU0kuIFJlZmVyIHRvDQo+IGV4YW1wbGVzIGluIHBhdGNoIDEzIGNv
bW1pdCBtZXNzYWdlLg0KPiANCj4gWzFdOiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9u
ZXRkZXYvMjAyMzA5MDQwMjE0NTUuMzk0NDYwNS0xLQ0KPiBqdW5mZW5nLmd1b0BpbnRlbC5jb20v
DQo+IFsyXTogTGluazogaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL3BpcGVybWFpbC9pbnRlbC13
aXJlZC1sYW4vV2Vlay1vZi1Nb24tDQo+IDIwMjMwODE0LzAzNjMzMy5odG1sDQo+IA0KPiAtLS0N
Cj4gdjI6DQo+ICAgLSBObyBjaGFuZ2VzLCBqdXN0IGNjIG5ldGRldg0KPiANCj4gQWhtZWQgWmFr
aSAoMik6DQo+ICAgaWF2ZjogcmVmYWN0b3IgYWRkL2RlbCBGRElSIGZpbHRlcnMNCj4gICBpYXZm
OiBhZGQgc3VwcG9ydCBmb3Igb2ZmbG9hZGluZyB0YyBVMzIgY2xzIGZpbHRlcnMNCj4gDQo+IEp1
bmZlbmcgR3VvICgxMSk6DQo+ICAgaWNlOiBhZGQgcGFyc2VyIGNyZWF0ZSBhbmQgZGVzdHJveSBz
a2VsZXRvbg0KPiAgIGljZTogcGFyc2UgYW5kIGluaXQgdmFyaW91cyBERFAgcGFyc2VyIHNlY3Rp
b25zDQo+ICAgaWNlOiBhZGQgZGVidWdnaW5nIGZ1bmN0aW9ucyBmb3IgdGhlIHBhcnNlciBzZWN0
aW9ucw0KPiAgIGljZTogYWRkIHBhcnNlciBpbnRlcm5hbCBoZWxwZXIgZnVuY3Rpb25zDQo+ICAg
aWNlOiBhZGQgcGFyc2VyIGV4ZWN1dGlvbiBtYWluIGxvb3ANCj4gICBpY2U6IHN1cHBvcnQgdHVy
bmluZyBvbi9vZmYgdGhlIHBhcnNlcidzIGRvdWJsZSB2bGFuIG1vZGUNCj4gICBpY2U6IGFkZCBV
RFAgdHVubmVscyBzdXBwb3J0IHRvIHRoZSBwYXJzZXINCj4gICBpY2U6IGFkZCBBUEkgZm9yIHBh
cnNlciBwcm9maWxlIGluaXRpYWxpemF0aW9uDQo+ICAgdmlydGNobmw6IHN1cHBvcnQgcmF3IHBh
Y2tldCBpbiBwcm90b2NvbCBoZWFkZXINCj4gICBpY2U6IGFkZCBtZXRob2QgdG8gZGlzYWJsZSBG
RElSIFNXQVAgb3B0aW9uDQo+ICAgaWNlOiBlbmFibGUgRkRJUiBmaWx0ZXJzIGZyb20gcmF3IGJp
bmFyeSBwYXR0ZXJucyBmb3IgVkZzDQo+IA0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmLmggICAgICAgIHwgICAzMCArDQo+ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2lh
dmYvaWF2Zl9ldGh0b29sLmMgICAgfCAgIDU5ICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfZmRpci5jICAgfCAgIDg1ICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfZmRpci5oICAgfCAgIDEzICstDQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jICAgfCAgMTQ4ICstDQo+ICAuLi4vbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jICAgfCAgIDI1ICstDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZpbGUgICAgICAgfCAgICAyICsNCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmggICB8ICAgIDEgKw0KPiAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuYyAgICAgIHwgICAxMCArLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuaCAgICAgIHwgICAxMyArDQo+ICAu
Li4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmxleF9waXBlLmMgICAgfCAgIDk2ICstDQo+
ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmxleF9waXBlLmggICAgfCAgICA3ICst
DQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Zsb3cuYyAgICAgfCAgMTA2
ICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Zsb3cuaCAgICAgfCAg
ICA0ICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyLmMgICB8
IDIzODkgKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfcGFyc2VyLmggICB8ICA1NDAgKysrKw0KPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3BhcnNlcl9ydC5jICAgIHwgIDg2MCArKysrKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfdHlwZS5oICAgICB8ICAgIDEgKw0KPiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYyAgIHwgICAgMiArLQ0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuaCAgIHwgICAgOCArDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMgfCAgICA2ICstDQo+ICAuLi4vZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMgICAgfCAgNDAwICsrLQ0KPiAgaW5j
bHVkZS9saW51eC9hdmYvdmlydGNobmwuaCAgICAgICAgICAgICAgICAgIHwgICAxMyArLQ0KPiAg
MjMgZmlsZXMgY2hhbmdlZCwgNDcyNiBpbnNlcnRpb25zKCspLCA5MiBkZWxldGlvbnMoLSkgIGNy
ZWF0ZSBtb2RlIDEwMDY0NA0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Bh
cnNlci5jDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wYXJzZXIuaA0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyX3J0LmMNCj4gDQo+IC0tDQo+IDIuNDMuMA0KDQoNClRl
c3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoN
Cg0K
