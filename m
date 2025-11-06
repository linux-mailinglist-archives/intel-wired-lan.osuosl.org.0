Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D09BC3BE7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 15:57:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90E79842D6;
	Thu,  6 Nov 2025 14:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-d0jOkZhia7; Thu,  6 Nov 2025 14:57:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BEB9842DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762441046;
	bh=/s2WUA8e6sqQ9Vz2jCVUoopNd7ALyWtUauCtBVbfdjU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D8ZC0zyGAy5ZnmTfKSZvi0ZsgFLDYKPZXy6bg9LjbXjWY1d1NIY5wxNprmU/LNkeq
	 aNyn/S5BaCbKjjcKtWpt6QGXP4+mCNjpdt2qhpRg22DUxEA0vVj/opVg5jddI2EkYY
	 RhEAsBSO3DToy7Y8f27FMwlDet1tTusuTM+uzWPz8OQzbyrH1BtIMWU4N1IywcqQ0R
	 eU+Q1JbB/9ICDNEsF4zJ/l1IJ9iD/Etx1PLlpuZaF11pCxunAkxKgZxZ72SD8Vf50r
	 NqUius4TZmvm7g5Fxg075kK8s7wzTw3+bfia+2gli/SQ83CYZit53fZqNL9VJQnRAF
	 jnFfQUxLFXtWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BEB9842DA;
	Thu,  6 Nov 2025 14:57:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B603CA64
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A817D842D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WK822bpfpMOA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 14:57:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DEAC8842D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEAC8842D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEAC8842D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:57:22 +0000 (UTC)
X-CSE-ConnectionGUID: T9h3A3NkQ5qiBARtSFyMIg==
X-CSE-MsgGUID: HFUwRhdwR2ae4EaGaiHm+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="63589708"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="63589708"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:57:23 -0800
X-CSE-ConnectionGUID: pB8qM0p+R26x2iOAUmxOiQ==
X-CSE-MsgGUID: YB7FAFyTTKa7jnBsFjAdmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188493602"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:57:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 06:57:21 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 06:57:21 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 06:57:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j2oZ52Q3mH0ty4UQOk15rjh/Q8DF4w+gWJDAx67c9kdNpN+jCU0RIrnqtQKr/wrBLY3fbyRjABjhOqO+k0lTtOg/hztysqng6dNtCHaU/othXi5UnUv6CV8Y7qWJmcwbSvHjrJh1kZp41ZkVdZM0PXWx0AWHF7huT3nzPF2CipqECMzXYhoHvCrZGWDfGTLEv62hNnK6bBDOea3MfSNQBdFhM38lyYN7xmxQzdV/8lA+qqatInahLnl3fH8ZHfiZTSc5arc7VjvzXR5XFEJ8DcN1ypd6FQ86XihfF24lHYD019xU9hia4adph3GpFXzDowto6PiSf8FW8OBtLrgtLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/s2WUA8e6sqQ9Vz2jCVUoopNd7ALyWtUauCtBVbfdjU=;
 b=CyCSo00Em6ZGeWlB685nK8IRr/HHUHvOfp0P7ujFq4SHe/mH1ZoVbWtdCqnBYti95YGyRGV4cZkHva5pENdT4ObFb0U18tt2HkoghfYzdzcnUbk7tew5oJt834zgFGueMbUU2EkbgA/qufuv3r0Do7dXzaTOAVxTPPSDSCaE8aXAuiALv3eZm4fl2GdSD0LxOCi+QaNom0Uh7X3a2itLGLevoZ8QAHF+AMj0Nz9IfUuLa4PLoNXmzkDNjXN1VBB0JtWIHufYxikt50UEJHLl8EPpMf46F5zpEl+7FWTUPxoDKT8gE/t5N9+9UUIEGgV0Lrgx6cRBjPMyyCCZEB3r+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5952.namprd11.prod.outlook.com (2603:10b6:510:147::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 14:56:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 14:56:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v2 8/9] ice: shorten ring stat names and add
 accessors
Thread-Index: AQHcTpgwAvdtXGsnPEub3482CIBgC7TlvWFg
Date: Thu, 6 Nov 2025 14:56:55 +0000
Message-ID: <IA3PR11MB8986B8D2BBB751E4F7DD7412E5C2A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
 <20251105-jk-refactor-queue-stats-v2-8-8652557f9572@intel.com>
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-8-8652557f9572@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5952:EE_
x-ms-office365-filtering-correlation-id: 8fe92053-02fd-4118-64f4-08de1d44baae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?U0Y1TExPUmNrcVpOMXppM2tZZFRKS1NUcjhPT2NhY0hEWXpBK0JBZ1lRUmhh?=
 =?utf-8?B?OC9XVHN2QXE5U0NDajRvTy8vRkhlNWRmTmVtc2ljRjlsWkNVelNwYUZhWFhx?=
 =?utf-8?B?cmtqdXJKeDU0d0tqekNxdGxuSmlNL1A2OHM5aGRUaklzS1ZiekluVkZaUmR2?=
 =?utf-8?B?Um5PYmxYOTZlS1pTYVpoMVJmYjRMT2l1MXFjSy9ERUpJVDhMaVdDTVNjQlJT?=
 =?utf-8?B?QTRMaFl0RmQ3dHVEWWlESGVQc3VlSFdpZk82VnRMelV4bTc4Y2RLUmgwOFl3?=
 =?utf-8?B?Smt2SEZScXJaN09PdUU3N0xuN2hxaENXaHk5b09oRGJrTDE4LzZQckgzN3pP?=
 =?utf-8?B?c0RHbmdVcm9MbThpZ0tCdVFNZnArcDdjcFhOUG9lMkh3NUE4dExCdWNzTjRw?=
 =?utf-8?B?cXZaZU0rQzAwWHQ1UmxuTitYbzlBYUZXaE45Vkg0TExnR3VJcVh4MjRDV1RG?=
 =?utf-8?B?dTdnZGNJSEQrVUoxVHZpUzg0d05jbzRTdlYvd0tXNVd2ckFJS3JpNXFrZEtS?=
 =?utf-8?B?N3Z0eWlRWlJxMGlrb1ZLc3RDejhiRTIyK2VOOFA2d3RySm4ydDlWNnpiSHB4?=
 =?utf-8?B?cE5HVjg5SG1kV3lpNGxIWVFlaVRjZm9uV1BreU9meTd5TmFQdUMzdlYwZlJl?=
 =?utf-8?B?bjhycVMxM25WSTlsdjJpbEdtUmtXSHE3NE11aTlmTDVGT2dwV3RESHFoQTUx?=
 =?utf-8?B?Uk9DQkRVT1NBdXR6bXAveWNDamtVdTFPSlpIc2VsME9LNm12bzVDeElLdnh4?=
 =?utf-8?B?NmM5VUtDdXNNTFB0ZDZsYlB6bm9KYi9Ia2JHdUgvVEJhY3NieVM5REh4RDBP?=
 =?utf-8?B?VFVsSDJjcGFVRm1QMHNyZm8wVk1pSVJNVzhtS2xFb1Q5bExHVGRRVTB4Y1VZ?=
 =?utf-8?B?Z1RBSE02LzF5d2lsb0t1L3NoeGJkWUZRaWJzSGNuc3RhN2pCWW1jSDNocExX?=
 =?utf-8?B?RFRDWGF2clJrWldVc0NOVGZIRXp0T1JiYVRJeWtacVR5UmFkdUgwNUI0Rk55?=
 =?utf-8?B?bVhQazVhMVdWd1l4UHBWQktOb08wRk42TXVzWmFQcVhiZ2gvakJ6R1h3UTBB?=
 =?utf-8?B?ZEpBQ0prY1BXT2puQU1qZERWRjREenFiS1dSQ3M1R3V6bnJqeVM4cmo4WHVY?=
 =?utf-8?B?QXdLZEh1WHV2Y3RXdFgvNkpKeWh4dk9uWVUwVmNaTTZCU3NaUXJtTlpnT2Zz?=
 =?utf-8?B?R3duTkQwM1AySzZpMXVpS3EvcUU2TkdXMytVSEN6dWo3WkVQbUVrRmo3ZkdK?=
 =?utf-8?B?a3B3SURBV1R3RHJwQ2M5TWZyckZ2NjRwRk1nM1ZneUJ3VXg1bnlZdHhDQUhq?=
 =?utf-8?B?cFZEelpvdXEwM3FLV3hhWHJ5OGFkL1pPa2JRc21hZG5ENTZ3SjhVSm9qQmFY?=
 =?utf-8?B?VXdOdTllcGYxOVArQ2hOSHRxdjVqSGVyVDhNdlBmM2tCMS95MFhMZ3NvWW8z?=
 =?utf-8?B?ZkJ3dDJBQWtpR3hBVnNKblVNK0tSZEdZYVM3bm92eFJhQ055VmptYW1rR01o?=
 =?utf-8?B?ZjZ2K0VsanQ5eENiL1FmaitrT3Zqd0dGN0RGZzdlOGZJV3RmaDIxWFNQZjYw?=
 =?utf-8?B?a1ErWmVMeW5FL0Y0bGNHS2tLTFhoYUpPdGoyaTA4anJVdXhqbVo0VnhrZEo5?=
 =?utf-8?B?eHkrTi9FTGVqOTFOcEw3SU41UHJTVDhmeC96b25icWZuNER1dHB3a0gvSEtl?=
 =?utf-8?B?MklrdUMyTVFESm9iUnNLclJPVjNGWTNUSmNvdUlWWlVNNkpESXZ4NGd3aU9R?=
 =?utf-8?B?dTF0L2xWZHdsRDc3a3F6N0ZCRTBPcFJ0a0ltTngwZnBxdjh1WVRFbUpJeEh4?=
 =?utf-8?B?MHkwQjRwTHpuNUIxaFBhNStJbk5Qa2sxVkxPcmRrTW5KSVZmSk5pNStCOEVk?=
 =?utf-8?B?STIxRituWHc5cmR2eGRxUk9WWklDdVVUMjhiTXlaN0g2Q1VUZE9JUEdtTGp6?=
 =?utf-8?B?T3BXUTRPM2V2UlhYRlgvMytLSEVJVzBwRTVtWTB0dHpFZ2IzZmtVaEFBMWt4?=
 =?utf-8?B?cFY0ZzRMeHBBVjlnZ0xRSUxvREJQSUw2cEN6MFhVTmVNOXBBUHJCeWIvNVhi?=
 =?utf-8?Q?idXntI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wlk0Qmh0Uy9NTXQ3SitmcC9sT1J2R3k5cjFTbDdISnZtZ3VNVGdwOWdXTDlD?=
 =?utf-8?B?R2psUE5wbWI5RVhyOCtCL3o1UTZYVEtrNmYzY3UwbWNpYjQ0VUNvNW1FWjh5?=
 =?utf-8?B?L25HQitHK205SDVCZnRlOGxDR1o3Vk1IOXpwTUVJUFZseU5WUG1wVGlYSkQ4?=
 =?utf-8?B?UUNwOFUzdkE5elZRRFc0Z2E0UWU4VlJ0OU0rMUNKY0E4a1Y1enV4WWRzbDh1?=
 =?utf-8?B?cUNKb3BtZXRCaldNdE1GNXJrMmc4MmtvTHhDMFFMZ2p2MHNGUGxKVkt1Yzk4?=
 =?utf-8?B?cWdXdjZBTkhwTlF1TitMWjl3QmNyWmZSUFh1Tk9ISFZTRkdjMTYyN2docVJi?=
 =?utf-8?B?elVDbnlPUEp2ZnlaQk54R3R2YzJWdnZrQjhCeW1uZE93VkVUbXJqc3U3VnN5?=
 =?utf-8?B?dXZQRjU0T01yRmFXYmRXWUd6WG5KbmxJbFdGZXdjUmlZZWVTSFArMXNqYWta?=
 =?utf-8?B?MU1ZMlA0U2w3eEJhOCtIbjdmQjlGQTYzWllwYzN6eE9mdm5xdG4rYldKV3ZJ?=
 =?utf-8?B?STVjcGFQM2h2OSs1L2xQSDBiYVdWeDg1dXZycVdIWUlaU2pXZG5rSTVyMWlC?=
 =?utf-8?B?WGkrRkNSOGJvaktPdHJLekZnOWkxenh3NHZkRjNTMytOR29NMFU2RExzNkJX?=
 =?utf-8?B?OVJkY1AzNlNIWjhOV3lXL3Z3UktGZWxJQ243TTRRNWlzTXdkWlV5WWxacllP?=
 =?utf-8?B?WmlCN2Mvdit6YUlmeFNoK1djc3NvVnB4dHJ3emhBZlJESm1xVjh3K2RPd2Jp?=
 =?utf-8?B?cVJhZ01wcnBTTDJBVCsxOGl2ZEFNMVZYUXNFN1l1QXpEL0E3eE91L0x2OWJU?=
 =?utf-8?B?NlRuQktNL3RwYzVweGc1NTVTVjRINGxXeGlsditLY0JzQjl1bFpORWdESDhF?=
 =?utf-8?B?S3NpclNWRFJGZDUwUFhYTjRmMzZtL2pkRHBTUFZrempEM1plT1VldjQ1OTZX?=
 =?utf-8?B?TFYvU0VrNWxvN3EvTURQOVJ3Wjk3RlZtOUVISzJucFpmaCtweUIwYTM2cmJY?=
 =?utf-8?B?Y1hHbGVTWERuVVRObDdRb1QyVThzdXZ3QXBER3l1amQ1T1ZPZUJidUJEYit0?=
 =?utf-8?B?MENkSWI3RXdGb0FhWE4yMVYyTmZJc3h5S3RQSmxmTUUxcGEraU5ucGpPaGRz?=
 =?utf-8?B?eTdaZHNnQ2diVzhIM0ZMcTNCVHNUWHNOL0xadU1UUFQxNWxlSGFiRU5jYmt6?=
 =?utf-8?B?cGhwSGtZNHFPRnQvcVBXZWFhNk5POUtYTXUrYVRlV1VjUmRCVlB4OUVCekc0?=
 =?utf-8?B?NXdyVzhqMHB5NHVXZHhGV0poblFyZ2oydmxsK1R2cG5uS0ZNVlRzYzRwS1BX?=
 =?utf-8?B?cGk0KytXekZVNWsxV1ZjVGhSMlFNUlhHa1JuUjRQMTM5dFFuVlh0TmF1VjBS?=
 =?utf-8?B?cUNkNE81RXhWNnd2cjczdUZ4anN1MTQ3OU5WUjQ4Nzh5Qm1zRnFtTWI4YS9E?=
 =?utf-8?B?TExveUk1ZDZyYXF3RFRWelVBbFlTcWh6WW1Say9ZWFhUOVJiVDJVUEJsRHd2?=
 =?utf-8?B?V05iSy9JQmxtcVloVXZyb0d1UVlDUjlzYmtHK3RkZVFSZUxUcCtSMmt6bHNI?=
 =?utf-8?B?SUoxckxtMGdBNmtHQS9iZ2VZWmNLUldlcXlxM1FVTkovQU5kZGx2NjRBcjB6?=
 =?utf-8?B?b2NYMGU4TE9GK2hJc1lJRHlXUlNKbkFjczQ1QkRwSlFRelNLbVJaMXdxaUhJ?=
 =?utf-8?B?ZjE1a2xMT3BITmtzbFN0VEFYRHp0ZWZHbUx1NkpjbThvTk8yeFRWSzY5QjdS?=
 =?utf-8?B?RTRXdUNxbCtCbkNkbXU3L1pOeUtCeWdTWFFMTTRIOFNyUzdFUE83cEIrNSsy?=
 =?utf-8?B?aE9vZDN6dWxuNkJKay9HcVgxTGcwZFRDZXlHTi9IL3l4NkorYWhDVWNoKytm?=
 =?utf-8?B?UEViTTZFRFNHS0xjMHV2UDAwWUR0ZGxTUklWd0NOQlYxUXBqeGdGSy9taXg4?=
 =?utf-8?B?UGhoZWJIazd1UytWVk43K2FGdlcxcXI0dkpYdlVGZGtNVGl5aVN4eHRRWmhw?=
 =?utf-8?B?M0w4K0FFcG1OQ1kwdHdwQktJTVVZV2FtM1F2TzVWMXhMelBRZGpIcTlhbnRG?=
 =?utf-8?B?aTR3akNOSXlOS0RsT3pJalRPbndodW1qbWFFUG54bTdydE5lbGE4SnlNT2xV?=
 =?utf-8?B?QytVdklab3prdGEzbitIbUN0ak8vbUI5TG50Q3MyYTN1dVZaUW14Y0JMcStv?=
 =?utf-8?B?WWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fe92053-02fd-4118-64f4-08de1d44baae
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 14:56:55.9646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Txr+sQsfcP/NpbKXDK7x9c75GA5vyC8S+BSNLTE/JObrb//lZVAYu3SSvT4rILQNTbEunBwplfnfMCErfMQ/LJqwgwaPAKkc+kmfCgtL/To=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762441043; x=1793977043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/s2WUA8e6sqQ9Vz2jCVUoopNd7ALyWtUauCtBVbfdjU=;
 b=gYHh1mZLUUPvnGE7nCqTV374aqUraMP2bUBS5qdiZM/LWS8vQ0xQQH0z
 KsaXIO1xJUFKL8Q/T2ybzj4e6a0oEejYKyndLGzVM7JMM2CZu4Lbt5w7V
 jN6cVNsHKjQXgum20iNVwGr3wijqesyPdvzus3qtIGcqWOU3KiHG8xwsd
 KxqKcBZFqgzFOh4SRZ5+CfKOSaHunBaTM7OY714HK8EyX+pKsGnNNGTuf
 TWJRYnx8SFeAxxoIYHrcpevogtoUq1t+7doDm9tc3Bgou4RZkD7Dcvgxb
 D2ggG/R7W46lAnIrmYNC9xTWg3Vs7DQLqhJyFU/faRuPQr+n3IAhhZpfa
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gYHh1mZL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 8/9] ice: shorten ring
 stat names and add accessors
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
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIg
NSwgMjAyNSAxMDowNyBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5s
b2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVu
QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCB2MiA4LzldIGljZTogc2hvcnRlbiBy
aW5nIHN0YXQgbmFtZXMgYW5kIGFkZA0KPiBhY2Nlc3NvcnMNCj4gDQo+IFRoZSBpY2UgVHgvUngg
aG90cGF0aCBoYXMgYSBmZXcgc3RhdGlzdGljcyBjb3VudGVycyBmb3IgdHJhY2tpbmcNCj4gdW5l
eHBlY3RlZCBldmVudHMuIFRoZXNlIHZhbHVlcyBhcmUgc3RvcmVkIGFzIHU2NCBidXQgYXJlIG5v
dA0KPiBhY2N1bXVsYXRlZCB1c2luZyB0aGUgdTY0X3N0YXRzIEFQSS4gVGhpcyBjb3VsZCByZXN1
bHQgaW4gbG9hZC90ZWFyDQo+IHN0b3JlcyBvbiBzb21lIGFyY2hpdGVjdHVyZXMuDQo+IEV2ZW4g
c29tZSA2NC1iaXQgYXJjaGl0ZWN0dXJlcyBjb3VsZCBoYXZlIGlzc3VlcyBzaW5jZSB0aGUgZmll
bGRzIGFyZQ0KPiBub3QgcmVhZCBvciB3cml0dGVuIHVzaW5nIEFDQ0VTU19PTkNFIG9yIFJFQURf
T05DRS4NCj4gDQo+IEEgZm9sbG93aW5nIGNoYW5nZSBpcyBnb2luZyB0byByZWZhY3RvciB0aGUg
c3RhdHMgYWNjdW11bGF0b3IgY29kZSB0bw0KPiB1c2UgdGhlIHU2NF9zdGF0cyBBUEkgZm9yIGFs
bCBvZiB0aGVzZSBzdGF0cywgYW5kIHRvIHVzZQ0KPiB1NjRfc3RhdHNfcmVhZCBhbmQgdTY0X3N0
YXRzX2luYyBwcm9wZXJseSB0byBwcmV2ZW50IGxvYWQvc3RvcmUgdGVhcnMNCj4gb24gYWxsIGFy
Y2hpdGVjdHVyZXMuDQo+IA0KPiBVc2luZyB1NjRfc3RhdHNfaW5jIGFuZCB0aGUgc3luY3AgcG9p
bnRlciBpcyBzbGlnaHRseSB2ZXJib3NlIGFuZA0KPiB3b3VsZCBiZSBkdXBsaWNhdGVkIGluIGEg
bnVtYmVyIG9mIHBsYWNlcyBpbiB0aGUgVHggYW5kIFJ4IGhvdCBwYXRoLg0KPiBBZGQgYWNjZXNz
b3IgbWFjcm9zIGZvciB0aGUgY2FzZXMgd2hlcmUgb25seSBhIHNpbmdsZSBzdGF0IHZhbHVlIGlz
DQo+IHRvdWNoZWQgYXQgb25jZS4gVG8ga2VlcCBsaW5lcyBzaG9ydCwgYWxzbyBzaG9ydGVuIHRo
ZSBzdGF0cyBuYW1lcyBhbmQNCj4gY29udmVydCBpY2VfdHhxX3N0YXRzIGFuZCBpY2VfcnhxX3N0
YXRzIHRvIHN0cnVjdF9ncm91cC4NCj4gDQo+IFRoaXMgd2lsbCBlYXNlIHRoZSB0cmFuc2l0aW9u
IHRvIHByb3Blcmx5IHVzaW5nIHRoZSB1NjRfc3RhdHMgQVBJIGluDQo+IHRoZSBmb2xsb3dpbmcg
Y2hhbmdlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KDQouLi4NCiANCj4gLS0NCj4gMi41MS4wLnJjMS4xOTcuZzZk
OTc1ZTk1YzlkNw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
