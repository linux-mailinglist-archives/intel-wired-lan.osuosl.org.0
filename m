Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKipIsjE1mlDIAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:12:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E19CF3C3FC1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C9664106C;
	Wed,  8 Apr 2026 21:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pHEb7xO4rFIY; Wed,  8 Apr 2026 21:12:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1EBB4106A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775682757;
	bh=w0OQRSkBofPHmMC6KAZdWpc1EV8hucPny/3PxVkgzls=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L4jv/wv4EC9/+W54CQ/+9YbCzPYNN8t5h3sYseYKApOAGmHK28ZMP771o/oQ1jiI+
	 RTrIiJufzupVoAdczt7DnxDHOQeeF9OvLMefyr4aebESk2cjnWzZ1IJYg/zhpUBoiz
	 eBFlHSqFWuq+HVbTSw624ECR2BVVJ1qnGdXULJmHHzyGdKE75/cjwk4YfqDg+Jsmaz
	 P+V892yXDSxK3Cag8Si3yL/6/9DiajEDAYlcsnFiXZaqi20/FTHrQMlvKsQcO1bK81
	 o6K1wPNohP6rJoN+0V6O+tH7cNkwtkivNM3Y8fc1qbGO0AIbbPWw4j58OcCZU70lop
	 o2AsW61cbVC9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1EBB4106A;
	Wed,  8 Apr 2026 21:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 236502C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDBD6400D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:12:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkj6woutn-MB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 21:12:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F3EFA401EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3EFA401EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3EFA401EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:12:35 +0000 (UTC)
X-CSE-ConnectionGUID: R+h4+Lh6Sxqz2FFR2SqCTA==
X-CSE-MsgGUID: O7f5gXtCQp2iYgoNok/6rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="79270070"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="79270070"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:12:35 -0700
X-CSE-ConnectionGUID: PkYrPDAzREKEbjUxaiC1+A==
X-CSE-MsgGUID: MNNRsZy/SX6OVk7DVlxvpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="232614782"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:12:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 14:12:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 14:12:34 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 14:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XgpUW084YMwMi+m5Yus2+gIX9voc6REHcV9IQG1qw/1QhorZ8cN8IX4RV7eIJZYGYMGFExxTdwxcU4j6oxcpCz9l3RYL7ymE2C1PzcI6cFDCpNpxB9Uk5VwK+BVeJyVXlG/gnCpXzOXkP+x4PAC7npEIbbEQBVSnZYMPGQ7RkLMV+SvsUWzh1IaRX5icvMeJygnJjU78MuuH68itrsXjzRhAWxXBi+l7ODEz1v4dQ3Zbm8JrZC7z7KoCtJmAKjYyDQZTCWSzFULBfSaJkKB9LA7X16gtnHuFa+RRd8JboRKoKNaBdJNVJp/wbEa02lxOzQkIKMjHGmy6v1BKMI4Pjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w0OQRSkBofPHmMC6KAZdWpc1EV8hucPny/3PxVkgzls=;
 b=oQJJ/LWN7cr+pQmEF8QMdivZjXUt0bmlkC11a0WpSze5pFkcFPwaJgTn4EHRvgK+AbIvyNjP6EGW5ZtZGfkmAI4iRccSPmoVOQinBAY+8qAMZEolMbGBLnw2bFhhMyY4c0f43QCsHz1yM9S9+Dd/vEjtaXYLwMlk9dDvA/+8BpV8iI9vQ9fLM9kXqGptUYsF4x7kRKJ0HPuHiVlxwZxy7yZhwHl+uoCQDsn5/IMsHW0kdACnd5BvGSJ8znv+1uq4TFrRZYe/qyPYCemJEaajPgko6/n4h8CQqWgVG3fVqkNrEXnwrpt7fPt1EQwZUhJILpQp4XJqpwecyf51CxD1zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 21:12:30 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.016; Wed, 8 Apr 2026
 21:12:30 +0000
Message-ID: <c5f6796a-66de-40df-9f12-2bc7ff04be34@intel.com>
Date: Wed, 8 Apr 2026 14:12:28 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-7-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260327072332.130320-7-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:303:b6::24) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: 53703faa-0c1a-4e6b-25b9-08de95b38b76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: WM4XWLVDRCLrkrzouIIQrqAtGoAZWXpU8vSKlcVgvBuSBc6wyVearQwxdvk+7x4U2hsFsVTeH/hhud3CJF0tD+99kNscgJBrkuyvO6N4kAAGmL7KsfuCYDSmPLx/sOo97MS6wQ9yxrTRws+Qzw6XIWIAxY7uHQiqfbZGKOBQJOwBxQpjvTkc2/Bi0jZxLDOimI9e9s7PO3KfeiQD9Ujrvp3NmkOTp2VvRgEG4U2GMbqhPbkejTIVjnY/teyisy+aB0DW/UilhGt7tKSf5cRNxp3K4Xy6qs6XY76GBa60CREC9V976xwf0Rg+StGYd85MLjQpI4kU23Ak9zSVliqmrFYIcbzyYg3wco29qyN/1izNAzlWg/vHUsQohznfHlEF/rCv7A8JD9bqs3qSHWoDiaNRz+5ChH+Srtk3jEG3Y6gsvJLYYFpkOVnMN+IM7Xbq+FRpnRbkFUDThe7o07eP7EpmnEDelfbK3hDuDf5p5D5qBYHmN3dTFUlhm2dCTcsRjUZ/qquT/rz9AsaWoYVLiltq3qtj7bE9Gjjqg8+xDr/WDi0masrHR0DpVAw1pg6/4+uz2IjkfhKr5GEFPWfTO+vwdihODDC7Lp9xUdXqlppN18I3/hs4W/EugQYE3aYlKWt4sguB+xtvD4XB6w7Yy62KU3niOg35a6M4GdnwE0W2bfIHobXnIf6a3ubsWt3PJrm/gMJGPySKLi0ZJTRvQ/ECKmjv3wVsBwjtPqQ6OaTNPSuBThlISckAZtMKLp3x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEN1SGl3NldSQnZldDh6dTBvSzllS20vbmhNb1E0cEtDZ2tGY2VXWGtMaVNn?=
 =?utf-8?B?d0NSNzREUEpKSkk3MFFtS2U0dFhEVkdFdEVZdGpSZHFwV1VIR0dlTlYzcm5X?=
 =?utf-8?B?S3FhWVVkbGx5bW9UVDNkeGZRTzQrQkxtQW84NktlMjN0MGpYVmZ1MUlIOVdM?=
 =?utf-8?B?Q3JUNVNDOXhxVTZqTTQvVU54VmpJU21LYzhHeFdaNEJ6WGNCWFJsWmJQYkZD?=
 =?utf-8?B?RHB3dHhhVS9tRCsxMWZpRk8yb3RVV1M4bE90RjFjOWZ1cDZydFlNUWFBdVV3?=
 =?utf-8?B?VlhiYmRLR2RXTUVuQUYxdnd3STA4RUR3aHpHUjd2SHU1MHo5QkUrNXFOUGt2?=
 =?utf-8?B?eHBVemU4Ync0NEhwZk9IRWo1dmJDOGFKUE1OS2l4Z2VyQ1FYcTVnMnUvaGh3?=
 =?utf-8?B?QXlORjBXNXluRzIrNDFST1pyd2g5RmxzanppTEl3blVOR1BGUFFJT2p4RUhw?=
 =?utf-8?B?YVhMSVUxbXFYcmZPbnlTbmdLaWdoNEl5dzVVb2JTZHliWjVmSVF3SUlvWVp2?=
 =?utf-8?B?SGpoZkpIbVF5R0dueCtqZ09FSk5xZkpzbFhsR0tyQWFMbTQ1cnVscExvVWIw?=
 =?utf-8?B?bmNzT3ZmZmhTR3RpUTl5QkRSZDNlZUtGZndaaUVTNGNXV1UrM21BMFlkSVhn?=
 =?utf-8?B?WmpRSUZSUVUyV0xsT2UrK0J6ZjY4ZWp0aUNuUXM3cTAyMmxKdWpQaDcyZWFJ?=
 =?utf-8?B?Y2o3RDcrWW5lanMwLzNHdHA0MjFtOUFsRURwRUwrellTdWhSTElUUk8zN2hJ?=
 =?utf-8?B?TDU4bzZYdHMrdjZrM1NsVFdCUk1rWEgwQUpzVGtnb05FWThEUXBYNnRNYWtw?=
 =?utf-8?B?V090ZGt5N2NyNDFwZFNhQSsvcm84K3lQZ1RCd1N3L2lSKzRSTHhYaVJwRnlz?=
 =?utf-8?B?WHlNTldYeEVlR0R2R29aaVJGTkJ5ZXM3STV4eDVWNEgwOUpNM2ZCOWdGU28y?=
 =?utf-8?B?TE16MWRNL1VtLy9yQXdlQ1BST1cxQnZXd21SRUw5RWxXWE4rT3g1Ym40SzNy?=
 =?utf-8?B?RWE0QWprQk9KMFQ3SjJwMEd5M0JsU3J1eHRQVytlaGRFWEUxR3JLWWxqNk9E?=
 =?utf-8?B?Wll5UkpOY21ZMFJLL0V0RzNUTTJ6bGlwelBSNVByTVpmamY1Z29ZU1F4MWhI?=
 =?utf-8?B?dGRLZ2M3RVhIdGdPcWEwMERPNWQ0Q1lWZlovTTFuYWkrMjlOcUJVV3huQ3Mx?=
 =?utf-8?B?bVZpbER1Ymc1eEttMEF1VWJ2Z1pRRThhMWRlYTdoQ3VkZVhCZDdxbGlveXdp?=
 =?utf-8?B?TXYxSXRSU3lDNStYam1IT0dOdkJ4dWhZQW9ONXZPeGN3YXlXckVzbEY3QTk0?=
 =?utf-8?B?TjM5UjlIMWE1WUdXV0xVTFplOW8zSnFRSHRKSm83L3d4NDNMbG5ZcVd4REht?=
 =?utf-8?B?RHdBVzBiY1U3clZQSWZORUM2ZnU4aW93T05CK1YzS013U0lKbUdCOTJIY3lT?=
 =?utf-8?B?cGE3WU1LOTNpclIzU2xEZU8zUzlZQjlDR1o4Z1NLNkIzZEhKbUEwN01lWDVF?=
 =?utf-8?B?aGN1NnpwMkJFN1Ria3FBM1p2T0NZRG9INzcyYnhoVHlDUC9UOGlSYjhEZng1?=
 =?utf-8?B?aDFqRlJqc3gxdzIvWndhTjBVWmp3dEhBV3dqWk9MRm1NaHB3VWo3TzNqOXpG?=
 =?utf-8?B?M3VBdmw1MVQ3SXdlMDZENmVmNUdGZVRoMjJHSnNYaDM4SDV4QVAvaW5NR3N1?=
 =?utf-8?B?WmRaZEVGeDhDcXlSeWpnbk9aQnkyTnRUTC9peVRLSEZvdzUrV0R2VEdmVVpq?=
 =?utf-8?B?ZC9QU2pQMzB4cTkyN1QvR2lJaGRwblRmZG9IMW5TMmhxZlErNDd5R3N4Tmhn?=
 =?utf-8?B?bWdiZWk5WnhJY2k5UjFTZVc1SEVGcWxtM1pMY215ZFp4NiszWElxd3ZtZnZV?=
 =?utf-8?B?K3BwbDRid2RMRzV1bEUrdnZKRUp4emJhY0p2VFhycVpRRFg0dXRKZ29YRkZ5?=
 =?utf-8?B?czFxR0ZhaDIxY0Q1VmExV3VsME1LRUxjejJZcXRwSi9zSzRQMEtZQ0ZYQnpW?=
 =?utf-8?B?a1pzL1orRDIzMDVyYlI5VlQweGprRWZ5bHRCa092N3IvVS9zNWlhMVQrRSt5?=
 =?utf-8?B?T015S1JzaW5HalpIOGpScU1ncmpDSy9mTXVsdnN5L3ZVVFJKcW5WQldIcThk?=
 =?utf-8?B?MUtrbjVRWEtoMFJNUjNudTFOZmFwRFBIVVlPOTVnaHVMWWlRRXdCVlVlY1Zm?=
 =?utf-8?B?VWdhVlNFR0p3ajdrTVJlZHV2QVlVQUVNMWszWWpiMlpSdDV2RGs1Y3BkNFhz?=
 =?utf-8?B?NWV5YUw2MXJoQkRJRWRHVktKNUdJODJtUUJrN1dNd1ZjTVRRdlYrMnF0Qm5R?=
 =?utf-8?B?OHkrem0zTWlkTXVHNk5DOXlxRVdNRDljcHNHWWg5RDVEaHR3ZHIxOHR5WjlU?=
 =?utf-8?Q?VORW6ESztqfJSpXg=3D?=
X-Exchange-RoutingPolicyChecked: UMkTE0BOfvPN0k+7x+4+ZfC/3NgUnGUxUjnWgFA0kufsKwdvVwYh08uwRSoViEnxGyCyQloOaCZuhNtv1AqQI3mprpsQZVDYR2cBBiKHaK287Te/Rn1n64aEE+oz1icyaDgwqFngb+CbJLf6XtNWPvPD5KyJ+FYpkNy70vOiPauQpIGauLKa+8eb16ueHZghMnMAPpX0O3Ajxuzz0x8dVm+gxCIOuLrPu77BYSQuo2IWwr4uZTxnPsNir5aVeIwTC4inv6SNP6jhWNeApKEtBZ3qGkx9i8P6lnyxJCFnW7+7HSTSabVoU/yyW5JNSzrGaMr4Bc3hMvYcWXUDOH66ew==
X-MS-Exchange-CrossTenant-Network-Message-Id: 53703faa-0c1a-4e6b-25b9-08de95b38b76
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 21:12:30.6387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Miy3J/znyAwf4O+GuVU0PwCJv28jZ3ZlgoyYvavSI/cCRV2wzhQbitfZWY5JtkcnLY4g3Yu+WkDUC3OPNGepgzPBnmnWhknYNjZ1YmA398E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775682756; x=1807218756;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1y6hs8bbYU70R1IWG3dYkZBNRJzhmNbL8dKezjgVByI=;
 b=mO6Clv1+Plvc8m4hxQpvAyl6B3JbUyFwxs0P+aO+t96izmKLhT7dPl/S
 Qdrdf1778Y7Fhtqv7KlKJKqv+C8YA+xrUJ+lkttOqpOb5LL5a/RJdY05s
 rAFkyzQ2sb5/0JFJ5JFish/ZFRzsM7Hw2TTJ7WMZVA7q36kmBl6q9ov9K
 KhnYd/7No0+y83VIB2Rv3SAi1PtEqY6EjAzM0AnAGkF5UHVL+5vVRjrfh
 DGpsJwz8xfPcvFXabifhCXm0kp4JMcb//hSBzJzviAmSJsDn4ozbBPLAs
 GdyAGiNchwwqXIrN1Pk5oXyeIfcre8qQxAle0fHvatgQ/QSsVDmrxvNi8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mO6Clv1+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix netdev bring-up and
 bring-down in self-test
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
Cc: netdev@vger.kernel.org, Konstantin Ilichev <konstantin.ilichev@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:konstantin.ilichev@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: E19CF3C3FC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/27/2026 12:23 AM, Aleksandr Loktionov wrote:
> From: Konstantin Ilichev <konstantin.ilichev@intel.com>
> 
> When an offline self-test is initiated with ethtool -t, any ongoing
> traffic could get stuck because ice_stop() and ice_open() are called
> without letting the OS know about state transitions.  In most cases
> a write() system call would block.
> 
> Fix this by calling dev_change_flags() to bring the netdev up and
> down, which ensures ndo_open()/ndo_stop() are called and all watchers
> are notified correctly.

+ Olek

AI review reports:

The ethtool core acquires the per-netdev mutex via netdev_lock_ops(dev) 
before invoking the driver's .self_test callback. dev_change_flags() is 
an exported API that explicitly re-acquires this exact same lock:
net/core/dev_api.c:dev_change_flags() {
	...
	netdev_lock_ops(dev);
	ret = netif_change_flags(dev, flags, extack);
	netdev_unlock_ops(dev);
	...
}
Because dev->lock is a standard, non-recursive mutex, this will result 
in a hard deadlock for any driver that opts into request_ops_lock. While 
ice might not currently set this flag, introducing nested lock 
acquisitions of the same mutex guarantees a deadlock as the subsystem 
migrates toward per-netdev locking.


With ice netdev lock changes in progress [1], this would soon become an 
issue.

Thanks,
Tony

[1] 
https://lore.kernel.org/netdev/20260325200644.2528726-4-anthony.l.nguyen@intel.com/

> Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
> Cc: stable@vger.kernel.org
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Konstantin Ilichev <konstantin.ilichev@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 96d95af..2a4f06f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1416,7 +1416,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
>   		/* If the device is online then take it offline */
>   		if (if_running)
>   			/* indicate we're in test mode */
> -			ice_stop(netdev);
> +			dev_change_flags(netdev, netdev->flags & ~IFF_UP, NULL);
>   
>   		data[ICE_ETH_TEST_LINK] = ice_link_test(netdev);
>   		data[ICE_ETH_TEST_EEPROM] = ice_eeprom_test(netdev);
> @@ -1434,10 +1434,12 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
>   		clear_bit(ICE_TESTING, pf->state);
>   
>   		if (if_running) {
> -			int status = ice_open(netdev);
> +			int status = dev_change_flags(netdev,
> +						      netdev->flags | IFF_UP,
> +						      NULL);
>   
>   			if (status) {
> -				dev_err(dev, "Could not open device %s, err %d\n",
> +				dev_err(dev, "Could not bring up device %s, err %d\n",
>   					pf->int_name, status);
>   			}
>   		}

