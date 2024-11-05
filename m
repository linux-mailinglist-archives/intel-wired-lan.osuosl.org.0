Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBDE9BD91B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 23:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51147608A9;
	Tue,  5 Nov 2024 22:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ocI-1OchX3Ml; Tue,  5 Nov 2024 22:51:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73F97608A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730847068;
	bh=XO83kgQSfjd1EqQJZZMJ7GxI7IN8tF7hacLtMI9QSB4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vhBoc/n1QerbS38WIfHRFzJJ5E7FeiXqqyvFVS6CD6nu+X3fWYTNDWOaLbW0g/iz3
	 JWBDc2vo6Cou404v8tkk3OVwKxnHl1Sod+DMqE/LL7JqvjMmcrS3FSs9N1K3EdIU4U
	 xp0vyK0X1iy1rs0unIXvqKzUyLEY3aCCMjP+Oa13G6fiPh5LCA2hW1UvL6igom69fr
	 yDbz6JFZqC1I5ofDS0kmvLLgQLRYOgqo8v6b/ERxG6gx23Q9/GeKlhvIZLmZa9dpOB
	 mTAfhuVFE43U40UoLb97BVkTZNOEzXIO+c4lwW5uDs8Uz6hZv7aOj4P+z1gKXGKSSE
	 OkiVpbns9XpWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73F97608A1;
	Tue,  5 Nov 2024 22:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0015E27F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D31ED81111
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:51:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PQUKh9eBFNpo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 22:51:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6DA588111F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DA588111F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DA588111F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:51:02 +0000 (UTC)
X-CSE-ConnectionGUID: sMjYiy0QQE6XkF0dH7ik2A==
X-CSE-MsgGUID: xFTnHy+QTHyI4eEeVYwYXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48085255"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48085255"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 14:50:47 -0800
X-CSE-ConnectionGUID: Wh2naD/PRgyeI/8/NYSUgg==
X-CSE-MsgGUID: RRiGqEVPSFihCrL/gPpypw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="115004486"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 14:50:24 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 14:50:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 14:50:24 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 14:50:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mwSsHKpeX+oy0UnpTH0iiPdyv8bhe4ZlKGknc16g8phnv76isU13ko7BhRCTphJ1sDQs3oOohwvSaVyJY4g+ZBtw5b26yW6W87GpFUPU/iFKImTqiZZ9wztXOr9+Ze2vDshjW/AsO3PPM24rxCauJFqSBu/WcoI1xGCILSIbEi9h8IJBD8v7IaJ/HRGgFMozAe7fOsebLdE3PoDEY2n7dEPM8s8rzJW5IVjXCRq76eVo7g1LK69dKdZoInJJvy1ZjrL3Xh4C5rLy4Pg998C0f9K7/jDlenSzxm48JWhcP1UxFnuXtmW9N3n783FrJKH9ttNICDKRIOela/4gvL4OCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XO83kgQSfjd1EqQJZZMJ7GxI7IN8tF7hacLtMI9QSB4=;
 b=qahPnsuSNNet6BvAwOyE/+mw3CQJvWZ9ZRgXFNFDJhirmZkhqVPDTD7EHliOornXbtm/qiDG5EWQ27kKZkPM7SZ8z3jgNpKWxY6ZD/lPZioX7/hc2sCAu0QalUtMw2EuTVk9NqQEMQD60NYW3UA6P5Er6lurjhqRigokutYE19qP8hxoCdJRJZvzuyg77WkLINmv/7g3ee6UaLjr2DAa0aMKbnNFGNzraarYcjQEW7mxHl+QgmTsAviVQ+BulXq7of7gsRuqvdLgfHKCPKccRCxU/uFaPjZBGhmp/wGSV9Z4gfna2PAU0kFjV5IkId68MMk4Bgs/iHmoTMnSG5KPqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB4953.namprd11.prod.outlook.com (2603:10b6:806:117::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.32; Tue, 5 Nov
 2024 22:50:21 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 22:50:21 +0000
Message-ID: <4bffa148-caae-4004-960f-a4d09e82329e@intel.com>
Date: Tue, 5 Nov 2024 14:50:19 -0800
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, Yifei Liu <yifei.l.liu@oracle.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
 <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR07CA0084.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB4953:EE_
X-MS-Office365-Filtering-Correlation-Id: 029725e3-4f58-4f1c-bce9-08dcfdec3a50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmVTQ0FHQ1htcXQxdVJJcW9IeWVnRHV0Wk1FYkVzOXNybHEyRFJIY1UvTHNP?=
 =?utf-8?B?Y1JVcFh4bXlJOEQxalBraVU4YmdiS0syRTZMZGpDVStGQ1ZPWHN3TVltb2FG?=
 =?utf-8?B?Y0ozNnI0WWlCM1FXMldVaHplSU11bUtmNkZvTmtVaEJmdXJ2MFBrUzA1ak9P?=
 =?utf-8?B?NjBPR2dGOUtnTlRyOVh0MXVJSkd5aU1acXBzUDlqckxxWHl0TXZzaXAvREN6?=
 =?utf-8?B?dHdmenlQVW9WZG90bDM2a3NFcE43UkpFV1FZLzdRaXRiSzI2WktDejFpMjc0?=
 =?utf-8?B?bG04WUdLYmE0aDViNTV1RENjWDBkdTREWjVSWmQrM2tTUVY3eXVMeC8xY3h0?=
 =?utf-8?B?TWd3Y05kdlR2ei9zODNXTFZ3ZDM4WTY2eUJqZFgzdXUzdVorVXZwekZJYVF0?=
 =?utf-8?B?T0UrWjd3SmxwaC9xSEtTbzUwSndCb2djNGlWbm5YZngrYjd0T2h2RUZtclE1?=
 =?utf-8?B?Uy95OFJuWHhYWFBnSXFVZjgvMmwzK2gzMkNkTURkUm5OWFVaMHFLamFFM1p6?=
 =?utf-8?B?d2FjVEc3MmlZd0JpSi9vS1hQRTNFYzdnd3dibWNsS1RlMzBydnR3bWEzOWt1?=
 =?utf-8?B?NTZYTWppWHlnZ2dLblRDeUFrUzN3Ykw3N3N5b0pVRTR4Ry9BUTN6eFVmRGRj?=
 =?utf-8?B?V1ZPb3dvbVBaNFhQazRnMEZPQTRDYysvbnExZTB3T3VXSENIUWRLRkZPZ1R5?=
 =?utf-8?B?RisvRHpEV0hhSTA2VXo1a0MxSG9RbStFS3RUNGZVRlpTZUtQdGMvYlJpNWov?=
 =?utf-8?B?eUpWaUxvSjRaOEh1R3BNTGFaQ01SQWEwMXZWd21td2h5N29aZ2p3SlZ4VVpU?=
 =?utf-8?B?WEVYb2hOR2hyODNmS2FoY2s3VmxTOGdpU2FWNmNtZmM4bzNQaGZJWWRML0R4?=
 =?utf-8?B?VWM5L3p5djFlVWluYXU3WHpMbFoxWkx2MnV1R3dvMzFOT2p0TTNTbFZDbTl0?=
 =?utf-8?B?cXgwT29aeFpndEF2VUVIdkJsbnhDYys5dDFpSjFReDVBWXdGMm1IOWxkbzVQ?=
 =?utf-8?B?SGZsemxRazRya1EzNUNZY3Q2ZC9TaHhUNlEzdEs3R1lmQWhhSDRnV1ZvMEFM?=
 =?utf-8?B?UVVqdks4MHNIRnRqSVJqMlJhTmJzQnFaVU16WEszYnZMQWNVQm5LYXRRcDVx?=
 =?utf-8?B?VjBuN1kvMEh3Sk1xTDlOUWp6T3A2bkJvWTZTY2VEcFZMZHBGNThDTTJlb0Vi?=
 =?utf-8?B?cEV4YVZJWk1oRkRTT2haRWRRZTlWY29Dc3IyaU8rQjF2QmFTYkhNYXZ4Nkdv?=
 =?utf-8?B?aU1Fc2YvYkhtMldaZUJYaHk0L1RkNk1jZElac2NONXdhMFJQOW1QQk14VTZW?=
 =?utf-8?B?Z0ZLM0VCaEUzZk14SnpuVnpwbHB2NVBkZ1BvMVgxWGRnM1VuVFlFdUlvOTdW?=
 =?utf-8?B?enRzYTJESWRyS3pJeGVwZXNsdnFtMlo2S3lTQVFTeXJ2RW5TNjJVNFQvcTdP?=
 =?utf-8?B?UFhjL0dnSVJObU1kc1RPNnVjc0x0S1lTV0Q5N0NnaDcwUkJNeWFRWTNsd1hC?=
 =?utf-8?B?RzlnVHovUXhQb0tSUHpDb1V6MnZRbWpkbnl4ZHEvazFybmxraHh1Z0FQSm80?=
 =?utf-8?B?a3VPYmRlY2ZvM1ZaUGE3RVcwdnJIcFB6WTc2ckRwTEUxN3I3K2U4YmF3VmMv?=
 =?utf-8?B?dDRtNm8xZzJ1ZFhEOW9kVDk0aHoxelR6Qlc3R3VlK1NUTnNPaVBhUFVXQllq?=
 =?utf-8?B?T0l4T2hQMzlaL3ZpTG91MExKVnBqNUV3NGh0UFRNRlNPTHVubTJ4MTQvaFdr?=
 =?utf-8?Q?en04gecfyglkyGDCEw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUFkNjhVYXIwMHR0VUVPN2lrM1NPREo2Q1dsTVl4M3kwUnZoU2xNaDNkWVBN?=
 =?utf-8?B?RkxKaTh4QnZtb2o2QlJDVjYzRWZobzNRb0g5bGE4WXhvcXVUWndBMkFicEsx?=
 =?utf-8?B?U1ZJWXAyRi8rdXFjbW14ek9NOXB4a3YwRDNzOUNnWmRvYnN2WUxXRUtqTE4y?=
 =?utf-8?B?R29VNm4xVGUyWjdsbEE1eEZZVGFNSzlPdVA1eTVWcFhBTTZvc0pHTzBlMXNK?=
 =?utf-8?B?WHVHQi9UVFo1VGFvTGs0VkdIUGZvUk55dll2ZGROQlBucm11RmZ6eXRsSHBD?=
 =?utf-8?B?VXZ0WnIxbS9udGFsWERYSysyNGFmRzlueGJ4R1FNYlJicXRwdzFlZnRDSzNn?=
 =?utf-8?B?MDlTMnc2TVd0RnhGb0xYMGVCWE1pZWI2YlVuRXV1Zlo4TU0rSmdwcVpudjBN?=
 =?utf-8?B?NVphY0g3U2d0eDZwbUJGVk1PcTNtZjJiWmdPcEJzbWlheTBrWVI5Qzl0bDUv?=
 =?utf-8?B?UDRLcHh2cVNyNmVhaHJ6T1RaQWRubVFUQVZsK3ZVL1drYWN5cHdWclc3VTZB?=
 =?utf-8?B?OU5QSExmQStsbUJnTDlXdWNEYkJlZ0w2dGhnMHJaVzFMQkNIL0dZUlhCMzZQ?=
 =?utf-8?B?OU5rNGFlNWtGeitZU3FqQS9GVXEzdStCYmxaYklFWWJnVEE1eDAxd3h3Ty9B?=
 =?utf-8?B?VDlsbS8rVk9RT3QzZjd2MytWN2gwTGZ2MVh3R0x4V0oyQWFsT0lnZDJHUy9F?=
 =?utf-8?B?Sy81Q3N5RjFKQjAxYTI3MTNkbE56d2ZkT0VQN2JGOWkzWi9LRmhYczNKaGpm?=
 =?utf-8?B?bmFyU1Z6SWpvelRtVXFRUFJmSnhBYlNzb1dvTHgzQ3FObVVnRDZDSGE1dEJr?=
 =?utf-8?B?RmNwUGhEeU9ZTndodUE5M0lTY3A1UGt1aDdReTZMdHJiSkp3SjFra2tvQ0VS?=
 =?utf-8?B?MWwyRGpuZXk1TER4cnFHOWIrNDdielY2d1FrRUovd1BQa3dLc25HMWFBL2dN?=
 =?utf-8?B?THNKa2hMZFUrR2VMUGFNV0hJcVFGMm14R1lteE5VZEQwTXhXUjVkejNTalVK?=
 =?utf-8?B?VHltVmxQZXZkZ2lzZFNCM3BSM2RId1I3V2FaeG5IUndZRzBiOFMvNE4ydGU2?=
 =?utf-8?B?V3hsUUlkaWZPaitkTmwzdFFjeEhVSWJCWitjM254SEY5MGdCcXA3bjV4cUdT?=
 =?utf-8?B?TG1lMkp1NEdmSFIzc0pER1QyeC9qV1FjVlFoMHlXZVQ3VVZrcVJVU3ZMNC9p?=
 =?utf-8?B?b0pFUURLNXhCTGRNeHhYSXhYY0xuQVpZbkhZZWI0NUg1Z1piYnF5TXBxSGZ1?=
 =?utf-8?B?dGlwa0wzbW5EZnRRZjVoRFBmV0dnY0NjUkpFSXNDTzNDMDJJeE9jTkliSnl5?=
 =?utf-8?B?MWwvMEdxd3hMTDd3YkFsaVVtUXdocTV5MDFwbXJQUU9HZmIrRG1SQzFZM01t?=
 =?utf-8?B?YzlqTnJnMzNUa01QOW1jeVo2YUR3RzRIUGVNV0w0UWFnMTVJM3Q3aGRGdnA1?=
 =?utf-8?B?bWl6MW54UXA4M3hQZXZtdXNzd1Zod1FPVU5UZUMzclg4eTVOUkVmUVBUVS9R?=
 =?utf-8?B?bG5ObndCaTk1TFl5TVdJTkFRbEt6YjY3QU1xNHlvYmJRa0xDYlZLWHM0UlU2?=
 =?utf-8?B?eU9SQ2I4MkhjR2tPaGRQSUhOWms4Y1M1ZSthZW93VWVhU2tlK3pHWFBpVGJ0?=
 =?utf-8?B?VytNVExkNVl5OW9TdFo4cjZVZHY4bHo2L2hDMExMQVlhbFpvazhMMHdEQU5a?=
 =?utf-8?B?NFBDNW03ZkNuZGUvczdEaDV4bmttWTNIMXBiQ2lEamx6Z1g0TThZcWNNNmgy?=
 =?utf-8?B?ZzdRdnhzNmdsbmRmTDVlOUNwd2dhM3J6NGxoOVl5dmIxalhwcWE0ZEdheXho?=
 =?utf-8?B?Y294RU41dlAyeHhlYmE5WTJLa3NrSkdoeVNEVFE3aTM2WFRVL1RIeEp6WXNG?=
 =?utf-8?B?WjNtamdqZmJ3SEtWOVVMRldSTlcyTHJyUVk2bHh2NlQ1dTZjQ3BuQ05yanlo?=
 =?utf-8?B?Q2FXMkxMRGxocnlIU3ZJL0VuUlRFNFRqYmx3VVAwYVV2amZzMmd1T0JhL3M4?=
 =?utf-8?B?QU40RjRtSnc5SnBmOHBvSHF6dlFaQThESWdKTnpwaVpUeDk5WnI0YStOOHBH?=
 =?utf-8?B?d2NqOGcrelBrdW10NFMxWVk5VU9HMHhNNjhnekE2b010WTdmVUZCckFaQTN5?=
 =?utf-8?B?czJVU3BQR3JvRmxRR3NDRDY4L1FEZmdjRFZNTFF0OWN2c2NQL2VTNzB2N2sx?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 029725e3-4f58-4f1c-bce9-08dcfdec3a50
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 22:50:21.4678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9SEneOxj6B//ZhhC9hifH1SJM3MO/bkICnGQHicrKj4HODT4FtbrX4jm3Ab6IWdw6YvTDmj/rykc7BWDTmufJ6VRmZaJoPjrtvgdQpncQPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730847062; x=1762383062;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NPgmAQsnQJebPjpZJ5wiaDqVAdMU8DBoYKBYTnhQcJQ=;
 b=cOzU8dHn6lGSIKgMEKTTgLKDe0g38gPRhpJq9NKmKQsEYqzm1vqUfrKH
 FeAezeypfMVdc/C1gAPp5UKCV3jraQFUra4J8XrBUJXnx0St4TMsRYwYJ
 QUUY2kJyF4poyxaxXGyTn3ZJiWQnbrWWsQlvPAA9mZKACjalQFinKhF7J
 gZeL9zz5GkDdb1BlBCcaCHvg8owDO/7ut22mefgosqKUgUav/2xVMq07O
 u/yVYNktZ6Lc2NY4A6oL+ycQsPKq0QIJZe5lRwkKP8ZJkFlDYZkJdxnk5
 malwgERzhH3QGyr1ckfsrZCpvOXGKkC+IiCq0cFPXCQTTeocB684q/uvV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cOzU8dHn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
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



On 11/1/2024 11:53 PM, Paul Menzel wrote:
> Dear Jacob,
> 
> 
> Thank you for the patch.
> 
> Am 02.11.24 um 00:05 schrieb Jacob Keller:
>> The ixgbe PF driver logs an info message when a VF attempts to negotiate an
>> API version which it does not support:
>>
>>    VF 0 requested invalid api version 6
>>
>> The ixgbevf driver attempts to load with mailbox API v1.5, which is
>> required for best compatibility with other hosts such as the ESX VMWare PF.
>>
>> The Linux PF only supports API v1.4, and does not currently have support
>> for the v1.5 API.
>>
>> The logged message can confuse users, as the v1.5 API is valid, but just
>> happens to not currently be supported by the Linux PF.
>>
>> Downgrade the info message to a debug message, and fix the language to
>> use 'unsupported' instead of 'invalid' to improve message clarity.
>>
>> Long term, we should investigate whether the improvements in the v1.5 API
>> make sense for the Linux PF, and if so implement them properly. This may
>> require yet another API version to resolve issues with negotiating IPSEC
>> offload support.
> 
> It’d be great if you described the exact test setup for how to reproduce it.
> 
>> Reported-by: Yifei Liu <yifei.l.liu@oracle.com>
> 
> Do you have an Link: for this report?
> 
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_common.h | 2 ++
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c  | 2 +-
>>   2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
>> index 6493abf189de..6639069ad528 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
>> @@ -194,6 +194,8 @@ u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg);
>>   	dev_err(&adapter->pdev->dev, format, ## arg)
>>   #define e_dev_notice(format, arg...) \
>>   	dev_notice(&adapter->pdev->dev, format, ## arg)
>> +#define e_dbg(msglvl, format, arg...) \
>> +	netif_dbg(adapter, msglvl, adapter->netdev, format, ## arg)
>>   #define e_info(msglvl, format, arg...) \
>>   	netif_info(adapter, msglvl, adapter->netdev, format, ## arg)
>>   #define e_err(msglvl, format, arg...) \
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
>> index e71715f5da22..20415c1238ef 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
>> @@ -1047,7 +1047,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
>>   		break;
>>   	}
>>   
>> -	e_info(drv, "VF %d requested invalid api version %u\n", vf, api);
>> +	e_dbg(drv, "VF %d requested unsupported api version %u\n", vf, api);
> 
> Is there a way to translate `api` to the API version scheme used in the 
> commit message? So, 1.5 instead of 6? Maybe also add, that only the v1.4 
> API is supported?
> 

I would prefer to improve the message via a cleanup on next after this
is merged and next merges with net.

Thanks,
Jake
