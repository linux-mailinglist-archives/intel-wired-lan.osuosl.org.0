Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50830A81756
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:01:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB34B8206C;
	Tue,  8 Apr 2025 21:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqsLfycpXZ_F; Tue,  8 Apr 2025 21:01:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42EF680DED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744146074;
	bh=h1s3kKpYz/R0fvLa2HcF7Fk0oVf2wUzVcekcUZTmOQg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sv/eFA3TpZZgRdxjtIWgijn1wJohopaa+sCKFSLlFHe3gu7dqtsL3XlhiCiskYaUc
	 CtWCGQHUGvfps9JsJf0IoGeVDOH1ftRDWurqvYqVoVP5IpDnGfvDNUw4UcCapDfa3T
	 RUQHuJx2PLkImGxnQbUEEKZrGOBx4spWNWrNgVUrZG6TFf2lHIzy1tCxmGGZKq4CiX
	 9c7QjnS2ABchAOu0v4zynZGKDuITjN7T3czv1vAmaY86Xpz4Sx1jIjPtpDeRrjdF7f
	 LAbXSpPkPVBmUfr0QQzm5n/kMQ0SGUvIQ2OeWncLEn8Ov4VY292tQFaPRb3uQB2tHF
	 GTWFsSv2ct0vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42EF680DED;
	Tue,  8 Apr 2025 21:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C30E51F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF605611C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:01:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtHH3cvkWGwA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:01:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1192561180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1192561180
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1192561180
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:01:11 +0000 (UTC)
X-CSE-ConnectionGUID: 2BJTmM0YRpiXXfdRTBmcWA==
X-CSE-MsgGUID: /sBvrQzIRvGytXgLDTJJ3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49443734"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="49443734"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:01:11 -0700
X-CSE-ConnectionGUID: Kv3HCnV4RVy4C4WEzhfXWw==
X-CSE-MsgGUID: pymwPG0+Rtue9unBTgtmcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="133590404"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:01:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:01:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:01:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:01:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iwHgkOmZsK/i9XnsnsJ/11Bq3i7aPv8P8GnodcDJ17aFRlkprTOP7sw36SUmDqR+kQ5OWbF67O7WyGK/4NxQDbYl57dXdubPZzE3Jaa14wvZotli3CFL/cSNCaSap+ZaIo/Ji84Pgl4HcHabyVh+2cnKCIXzF50TdKD2KnsWvg4AiWJGmI3l2b3sTAbXGpKcpJqPiCZTHMiSTiF4zQ/f1xRSJV0pnI6fjsfnkq3IGb9Uw7IY8iv0r3kBZtC5GsORRVN5EgNyURqdcylGgkUTtTOzP5iNVCnWwxBdRFO0oi37COne+zvJ/hfwQPN3NJbyYxYYZkeQbJO0TN9ub7T81w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h1s3kKpYz/R0fvLa2HcF7Fk0oVf2wUzVcekcUZTmOQg=;
 b=uL4Xj/2p/hGvpZJ+XG/SxsTLuhurgsDF+X9pE93+cJ0CyPrF7lSR7gI92DOdhlmB5mRA6fb79TDG4uld0BRbVle1PnJRqtjjgGQMUldkdEKAAPiCRTy51auLRnAJHBJyki8X4xkjQM9OUIUucJw8Ui2iqO+GUV2W14+Pm69PXQKTWOEvqkTg4rVGq8nOX7Y1tXPCZ23v/0KZzu0ppTc+r4hJGtfwV4vfJcknFvFizzUJmsOau/5+MraPB0+CcVeN0fEjXSNPAp/WGeYP8WzicYgb9b/fL2a5hXo69qC/DWzIqUBzduKBXTgfzz4PBLz/8CLqbvRjxFl3bTIf36NBkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7801.namprd11.prod.outlook.com (2603:10b6:8:f2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.36; Tue, 8 Apr
 2025 21:01:05 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:01:05 +0000
Message-ID: <aad6e2d2-b1a1-4f01-ab48-55363dd261d1@intel.com>
Date: Tue, 8 Apr 2025 14:01:04 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Samuel Salin <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-4-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-4-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0109.namprd03.prod.outlook.com
 (2603:10b6:303:b7::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7801:EE_
X-MS-Office365-Filtering-Correlation-Id: 66bfa2be-9d2b-4822-67bd-08dd76e07a5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3E5dXpDZGNubTdYVjUxSEJFVWFCejM0UG5qdVFrUWtBZkhMMzAxeTF3S29y?=
 =?utf-8?B?RVpkRVNPdVNZSStvWk5EaFd6Nk00Z3gwSFFJY0l6bS9maGtkK29oZ2tmYVND?=
 =?utf-8?B?V2ZUMkJRTmpJV0lmZ1Rxb04xTGVrY1RMd29aUWFlcWVRMGRjZlFuajVtcXlW?=
 =?utf-8?B?WU5tZjVrMlhBOXNORkE0dnZqbm03M3BQN3V3Q0NYZm1lNWdiU0NGcUUxaUwr?=
 =?utf-8?B?SWlVVTBaRmx4bHM5UG5OWHMyNVQwcGdlNEJaNHhiRTdPZGZCdU9QKzdxV1Ux?=
 =?utf-8?B?SVRTa0M5RS9RYnh1ck1YZVp0MnhtaGpnanpNcDVydUtMZCt2cHMvWWRubmtK?=
 =?utf-8?B?VlBDVVpVM3MwOFBNMFZLNnNFM2xsRmFjc1I1dzZjYnc0Zm5NcDNWaWR5RlAy?=
 =?utf-8?B?SFV1OThSZU02S2JQOWZTMjE3aWN4MFRwakx5cEthbVIrd01lYlhEMnh0OXR4?=
 =?utf-8?B?WUFxcFBwOUpoWDhGaUQvd3VyMTNmRUdkdXdMZVZTZ1l6UkNEVnorbHFvQUpB?=
 =?utf-8?B?VE16YS9TdXhBTUthQXhuSlFxTzRsRVdJbmY5SURnQ2RWQ0liNDh1cHJKOEZz?=
 =?utf-8?B?UHJxa3VjTmhzYTMvZk5NcEF4d0JFc0ZMbGNNOE1kYnRZUktsRkpJaHNFSGdP?=
 =?utf-8?B?a3JIeGplWnVrZEg4YmQrU3E1YXdWdDFVUmFQQWJPSnZTbTRYcFJ1ZjJWQjdx?=
 =?utf-8?B?MWZ6UEluMGlCbHVCWjdsblQ4N2VrRHFKaWphcm8ySTdDSHhpWHpCRkJNMkpw?=
 =?utf-8?B?eTlQdEJ0bk1Jb0tTUzBSeGl6OC9DVW1YTEZrbnZqUitZQk5senpEZWQwclI2?=
 =?utf-8?B?bDI2TUY3MUY4VEVnai9MaW8yWWJGR0FpcDByTnp0S3F4K05yS2lEWHZKWEND?=
 =?utf-8?B?YW1vRUZIMjh6Zm9mR1ArQVdPeWxsUzh4amtrc1RheW5tVzBod3dRTytkN1JU?=
 =?utf-8?B?MWRLZkVGaUhEZGp4NHhubGpSL2RNekd5K0NhSUhVc3FZei9Lc293MlIrSGFt?=
 =?utf-8?B?djllQnNaNGMwTC81a2ozRU10V0VTaXA1SlFTUUZycWlzeDcrTTVnaXdnT1JN?=
 =?utf-8?B?cjZtYzBSZlVtaDRIQStwU2V0amtIOCsrdEcvV1g2eEJHeU44dTJIWjNyb2Rl?=
 =?utf-8?B?czBLU3AvVm9tL1g3MVZZTTdlV0lhSGRTVTFtcWZNM2NCL3dHcER4N0tXZ1gz?=
 =?utf-8?B?b0owaGk3RmEzcUlsekZvWFFUK0prS3NVM1Boa29JdkxudzJjSDJSZGZWY2xL?=
 =?utf-8?B?UC9sYmRpVlVQVHdwQUw3NElFQnhmQm0rRis4MmhQUHZMeTFYZGFhUDNxU0hQ?=
 =?utf-8?B?VWttSzU5NzhrS3ZqTU9CZGVqY0luVUcreDd2ZkpyZC90MVA5L0dDQVVUYWQy?=
 =?utf-8?B?RU5GZ1kwb0J5eC90WEdMd0lla3NWenNGeVZrN0p6dDNrVjFaRUQ2NE9GZmRp?=
 =?utf-8?B?d2xrV1ZvbE1LY2JuNFNtM0ZqbGlXQ1VKbnhrK0swcGlCYWZva0Q2RmM0RDhX?=
 =?utf-8?B?d3FvWURwQTNOSVI1a0JTY0NyYVZwMU9jRWh1STdEUXRMQzh3YVI1T0dTQU5V?=
 =?utf-8?B?eDFac2lQTzdIUGdsRy9UMlRhTXkzMHJ5Q0dtWGVJQVhLc2J5UW85YzZXQTkw?=
 =?utf-8?B?cTdNb2ZMSlg3UTdmc1pxYjR5bi83UHEwdkF2eU1sd1hUQ0ZYYlN4b3RYNHBT?=
 =?utf-8?B?R0x0ZWIxUC9tRlE0WnQvNkxqNWxBaXREajN0TTd4eFFhVys0RGVmV3Y3U21m?=
 =?utf-8?B?Mk5SdzgvZXVhN3VWNEtPVHkzZy96WDF6OWpYdkQ1OXo3MldWV2FORDlaSXlv?=
 =?utf-8?B?b3JLNVBGenlZWmE2Wm5yeFZpMFpXRkVoVkxnS2ZBc1o3UjBBTHNIWXp3dnZ6?=
 =?utf-8?B?WWZtZll5ME85YWt5S1dIaXpFYVJPQVJGSjB5YnBHRTdhSWdnNy8vc09YeVpH?=
 =?utf-8?Q?CF1C3ZB7NhE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVlmaWIzdmIxdVByc29ZanVuVlJ1OUhXUmNsTzU0YlRBZWpGTnVPMThCUjJ5?=
 =?utf-8?B?bTdHTXExaHNjSkZLaTE0OHp3ZXVQdStSeW4xM05qaXJPVkxOZllFOVJtY3kw?=
 =?utf-8?B?eDR1NVhvTEtoRmpxUC9QUWk1ZW5DOU1WZ3NKa1cxcFhFdWM2UEpTclU3a3F0?=
 =?utf-8?B?dVkyZTc0NG5IYU4zYk1mTDJGSkMrR2hRSzNRLzI4VGJPS2k5b0lJd0RFdnFt?=
 =?utf-8?B?dDhPTTZFR0FiMy9WdUs2TXhtaDVnVUxmVGNtcklCdVBqdVZHQWk3NzZoanpi?=
 =?utf-8?B?bm9JaFBjaFBsN0w1MUZ3VzhZYnJzT1lqOHBHRjArV3Y2ckUxbFFYb1Irdk0v?=
 =?utf-8?B?ZVFnS2xHeDhsSzhqd3RHdzVla2phMTZpZWQ0d0s0aWkwR05PYWNtU1dEaitC?=
 =?utf-8?B?bjIxQ3MxQ3BmNkF5QUdwQ2hnbHlWTDhyTERVSCtqNktYUVpuazR1T0w4VWUy?=
 =?utf-8?B?aTE5Wk5sQlVTNWFyVUZVQlhadWpyN2RmbFVZdTN5RTF6bDBZRFhHMFFlKzIw?=
 =?utf-8?B?ei9pQnhYRnk3UDZneVp6Qi9QL1hnT0RzWEVFNVBiTnVhN29sb2cvMVhyV1ha?=
 =?utf-8?B?UlhYWHVLQ3pVOVpzTEdGT0MwTDlCTVJ3c1RHeEpFenhvakFUMDgrTmZnbHRq?=
 =?utf-8?B?NnFpOEdESWUyQ2t6MTFPSHU1QTE0R1p3eGltQ3JNOXQ0V05IVHdNOTZEcXBK?=
 =?utf-8?B?Vm5oc3gyVmFtcitxVFNPc0t2TGZ1U1A3YVVXZWZtTnUvb3hmclNVekRLQ1hS?=
 =?utf-8?B?MFR1NlFQczVoOWJFZXZ5cmJnRE83MDUxaDRtdzdnaVZqRExvMHgyR05yS1JK?=
 =?utf-8?B?Qk5Vci8yS2swbW9Kbm1ubS9Cc1FGZXRPQkExT1FLUXJnczRmZHJkOWhqMEhk?=
 =?utf-8?B?OXIrSmthZC9wU3J0UFRWbXIva3lvQTN1c0IyQ0ZwVWpkNU9vYkRKU1ZlcTRa?=
 =?utf-8?B?VjlyY1hhMHR0dVgvKzVRM255aDMweVNwTWtPZExTNmhCZmQ5TTFKOEV3amRH?=
 =?utf-8?B?VHlhem5BYUZhOVA4S3RYRjJleHduMTJwaWczVE5Gc0pLUitHODdFQkVQeTRF?=
 =?utf-8?B?anIrT3RoUWMxSU56cTVIc2hUUFFOZ3cralB5RXBkQWZXZFJsUXUxL3BLc1hH?=
 =?utf-8?B?NU8zYzAwWTBnQjAyeTgvZyt6cGd6MHd3RkN0d2NOV3JNNUVaWXFETFgxMlM4?=
 =?utf-8?B?SFRzaFBzZ2RTQUx5Q2NJaU9SZTJMajRndlp6TnFvSllkVjBnYnBSR3REcm9C?=
 =?utf-8?B?TXdhVHIvMkl6MmNwM0huM1AwekNYUmRIaGRERnB0QlZhVTBITWludTduWnFU?=
 =?utf-8?B?Ukp6Q285QzZEbXJ3STB5SFRnck5YUjhsaEJXVTJjUUg4TXdyRUh4R2gvQmha?=
 =?utf-8?B?L3F0ZWVuRHVtL1VqMGVwNThPT2V4VVlJaHFIZVNiWFVkUllIYzZTU0dXdzEx?=
 =?utf-8?B?WWlDMTJnQ0tVRE5wcUtIbjhQYjVNd0x6MmFpQkgvRjk5STlkallGazJXZjJp?=
 =?utf-8?B?YTJ0RDNCdGpUZmRPL08wUW5NQ2xIUEFqdDc5TnBEeEhaMjN4SHdTcFhYWG8x?=
 =?utf-8?B?dVQxRkpyK0hhVEc0ZS9jM1NVZXNaT2lsZFBNa1hsYnlZSjV1eDBXNTh1NGxG?=
 =?utf-8?B?SENGSFpmdXM5SnVoa2dSeGUySG83WVZ1RzJQTldhUGtqek1reHRTVm5TZFor?=
 =?utf-8?B?VHdhQmNIZjVUUXRnQUlsb1ljOGMxQkhiZW1vKzF5eUlBNTVOWHpxRmwrbm5n?=
 =?utf-8?B?cjZIT3hrbmZyWkdyN0FLanpub3g1OStBdlZtNVNUK3lUdmtLOWxSL0JYK0h5?=
 =?utf-8?B?WTZnN3JwRHhSSkRzQ3VZcER1eTJCWVlOYWJ3aEhhYUozcWdLRGlIVk4zQlZy?=
 =?utf-8?B?ZmFjSGJLckZsODVsR0JTRDdqMzBjcEZKd0xjSGE1M0JwTTFTUkorUE12Y3Nl?=
 =?utf-8?B?UHVKTU9RSUhiS2VEbmNxckR1NXdnYXZ5YWpyVzR5N0g3KzFhOXp6Wit1U2xF?=
 =?utf-8?B?VWUrSm1FSmdBbWNhYVUxT1BJWkd5OVhyQWsyOWZhNmFMVXIwMlhjUGEwUXJR?=
 =?utf-8?B?bzFiVXR5eHJjOE4zUFYrd3ZMYTlQeDNuell1Z2toNk1idkNWR2lGdjZGQUNm?=
 =?utf-8?B?bGowM2cyMVFQQzhYWnFMbEhnYnBMbm16THJGaVBxN3dQa1llUERmZy9yM0E0?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66bfa2be-9d2b-4822-67bd-08dd76e07a5b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:01:05.6644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3xkNhvw2I46Jwe5XQjjG/pIOfhFzv7V1/jJpHdbTGMqPMPXgnkrEHtvoIwBv/HuG+B1O5Lsk6zsIGsE79TS9D0Gm5ccpNs6nSNMpym4CTuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7801
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744146072; x=1775682072;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/rWknnk945uegNa/G9BMVBO1UtdgU7HuCJb8HVasqhU=;
 b=Tda0/T81WUBnvP1GJeeUQGZ2YdGcgnh/9x9X7ZYu2+fEkk7E0yXzlgbE
 q+ZNafrvR3gm2xRIx20JTIieUeCVt0VHwId8RxTtcy2m6U7pqXQDmNtYf
 8qmWohekDw4ZkGBWIuIxFYulPjPkJbTbLEz3gSooEVV9uypQH+DIEc3nk
 hxf9k+EX9iHvwuPngGTkkW6SPT/5GSbA1IIX2vuPVXYAPclkYwRLCtOIR
 +J6AbDt/zaGgDGTnhv5pkzeKIvjuHaZ52PqJaLXKrGq4JZqIbx8NaSVG3
 5ZUOeiJwpps0TUQO5CUq7Cam0CwYhhK6uk1De4OerfTshvdKoh0n0irTU
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tda0/T81
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 01/11] idpf: change the
 method for mailbox workqueue allocation
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



On 4/8/2025 3:30 AM, Milena Olech wrote:
> Since workqueues are created per CPU, the works scheduled to this
> workqueues are run on the CPU they were assigned. It may result in
> overloaded CPU that is not able to handle virtchnl messages in
> relatively short time. Allocating workqueue with WQ_UNBOUND and
> WQ_HIGHPRI flags allows scheduler to queue virtchl messages on less loaded
> CPUs, what eliminates delays.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
