Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKqmHl5Lemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:46:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FABA71A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:46:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84D0840600;
	Wed, 28 Jan 2026 17:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSuo3-n1vaGB; Wed, 28 Jan 2026 17:46:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21579408E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622363;
	bh=6okeO1ku2jRCTb0YGOThfqa9BiUf0KtPqDPZ6OGt9VM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ojjWUuqESLPNs7hfcqKu7DGTj+3qMd7UlcJH00IiPlZHCdbpiU51k2HvN3GRa3cyt
	 Ye6ZZ84QbIZDPyO8ySjiR2SwBvILUa/ZAjY+/vHlM2yOSQLWaUU8rRrwoxMNtCvT8L
	 ooDvkou1KVV+nDHb9sQfNoIQex46W6Sm1KaD2tr7gS9/r3KtzQ/DyMD/pezJ0bkPll
	 ONCTFvlwZkXlhKgFsYCUquPImjtVPPABnAurj4fieOCT2fPQ0NPYHRJWkPvYuH5VOL
	 h82nb14/ZFg5DZFeIQsESI4Z6AF5qneNrmloazIudekxHdunmhMtGuw3F8nCbjn46D
	 mVdSj67FRGhaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21579408E3;
	Wed, 28 Jan 2026 17:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 11BDA1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9D1E400C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:46:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yHh8lhwmQIPo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:46:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C49F140184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C49F140184
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C49F140184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:59 +0000 (UTC)
X-CSE-ConnectionGUID: pDzNevKWRuyO5a2CucycCQ==
X-CSE-MsgGUID: tV3mpvTnRYyecC/6FHjUgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70897752"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70897752"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:45:59 -0800
X-CSE-ConnectionGUID: 6HmQwcifREOiv2UtgQuuJQ==
X-CSE-MsgGUID: MnlDMONvQb+QBlQyhvkYlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196548"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:45:59 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:45:58 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:45:58 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:45:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gy8WmulxRmt2fsXXvNQi7sr8RwxjKO1s+5eGDCCSPDd9CovDWyypw2r3W0FqK+7H/ZriPDKP7rMuYXYzr1sEmzAQj2Xry0VwX1KPHwcamkcemPI0BbyIgYnJPn4qDIAQ6c1XiZW/n4HiVAYBjYiClZPZhJS076C9OudwGdUyjJjLyFc/qBL0TDhvJmTtViC9A0aay5rSDpfI1AFpEA4FxrJUq5vtuiRiUCx2R72+qpVRYU5uwgAELfdZVZ50HhL5Ws/7gkgflfJQzvsnk8sow4+WL1jug7brnt2ISt1UVPTZcrkT9Jd2CON8SZljOP7fh/c40yXJ8FUDBPiUiv6G5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6okeO1ku2jRCTb0YGOThfqa9BiUf0KtPqDPZ6OGt9VM=;
 b=HMY81EjuUBKXoEcRn2M/jPB6lfipH3M2eK7dwN9KAUpu1y0iQoKSEymnVCvJzZ/c0+usm8FY59AoNLTeCFJP7ApqXvn6ubzc/bS49NaBRDBeCrincdXjAZcDfDjUt+imXk9dqFFkknzFqT/IuEwBk/Dn04QsVIXP56xEu2nQwP0MiHpV85sln12x3BbPrP8/79hi0Zzwzdj6ORDSE1V1ZVeOd70j7mtbxHv6lm9TCALbbfGFL9/4srDooNSUFs1yoiOByoKYI/HaN8nFVG3Ezc1IU5O/SlwDLhpxv1+ciqaf45qZ1hzMuHapikpftBtUcIePE+JMJenh6YOJQfj+fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:45:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:45:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 08/25] docs: kdoc_parser: fix the
 default_value logic for variables
Thread-Index: AQHckHZbLk5EIv2PYUyoFDKY+7+Z77Vn2vAg
Date: Wed, 28 Jan 2026 17:45:55 +0000
Message-ID: <IA3PR11MB8986A289F3C7981D16661FFEE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <a16e78e794b01b68355d472f9e6a4a1d42591846.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <a16e78e794b01b68355d472f9e6a4a1d42591846.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: 095dd379-a514-4b44-dda7-08de5e9516cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dTNTS05wRG8yVGdXNkVNSCs5TVQwM28vSFE1dnUxVmxtU1Z3eG5ReS83Uk5o?=
 =?utf-8?B?RW9zSFFFaFdDY1g4OUZCQXpEcW1tUFdIVGg0a3hwUW9qdWhFN1ZYVUp4eW9u?=
 =?utf-8?B?dlRObmhqVGNkeGhPanVxOUVqQ2hkT3huUndXRktwZXcxYjEzK2l3dlNTdFFp?=
 =?utf-8?B?Y3l0ajZrYjNFU3F3SzlQS1c1cVd1QmtnQWU0WWVxWWdyNVEvOUJMeUVyelN0?=
 =?utf-8?B?UU1MMzh1YWwyNksvN1kyckpJaEgxbXlNa01ydlp2eC9wVmtnL2J5RjhJR0RW?=
 =?utf-8?B?NXZFQVRZdERGMkxzY2ptT09YT0NXM2p2RVJSRzgyWmZFVjdXeU5FWGJFQmtM?=
 =?utf-8?B?MmJGblhLTUxmMjQ2L0FKTTVZR1hBdGgzdXFWUG1ybHhLUkJvbXpoWDNFR0FI?=
 =?utf-8?B?NVFXZDgvNk9yN1ZhTmV6ZGc4UFZOMkkyMVpMWW1uMm9ablNEbWo0R1NsQmZ4?=
 =?utf-8?B?TzZpUFBkUG94WkxaVDNtS2ZEejl0aFo0TVpjOWR5MlZhanJuaXkyTU5OQ1E0?=
 =?utf-8?B?VkVVRy9TZGVWWDFiSmtwMkZGRW55SzY1YzVJRHQ0cEZXUUJ4RDZ6VlY0aXIx?=
 =?utf-8?B?UzBpMlE5RjU0L0RrTTIrN1VpOUpKazZTRWt1YmhoS1ZGNHVrdlB4R2p2djNs?=
 =?utf-8?B?SnpsMmh6OTRPZmxsZjdwOWNtdU5UV1BxaW90cTFuMlNOTVBOeGkycFBsa2hk?=
 =?utf-8?B?cjI2UXM0ZW96Y0RNeHhvYjNmUjFncWZCYS9jU210M3AxQnA4R0tneEg5eDZB?=
 =?utf-8?B?ejBjb3dFYzZaT25Ud1gyS3RHbWgxMTc5bWFOZGpIdXp1UkRyaXF6cE1xUkc5?=
 =?utf-8?B?YUJxR2cwUFpKdXQ1Y0pBbThncDJoTHN4a0Joc1Q2dmlNa3hBMFBveTcrUkxm?=
 =?utf-8?B?aGZnWFZCRGY1TFhtenZHayt0N3M5NXExaHFjSFMyQjZ0eTdPRDNmMXM3WmhY?=
 =?utf-8?B?eU9oTG8xb0xKTU4xTWs5UlRJZUk4d1FzdHVRUldyRlJyRUgrV0V5cXdHbGMv?=
 =?utf-8?B?NFpJZDlYd2kzYTA4ajVJTmhhdndwUGlpaUxQSlhVcFRlZ2t3UldyT1hsYkoz?=
 =?utf-8?B?eVlWcVdCR3F0UHUwYTBzbUwyQjZiUVhRYnhzenkxTmJScjUzMStmaDZGRmdL?=
 =?utf-8?B?SExhVFhYZzRCK2l3TjN3Zk92dmNZVk9oeTBOeWhvaFpmQm51OExEeXNqdlUr?=
 =?utf-8?B?Tk8xdC9McElQcnpXYThqanRhUHBSYlc2Tm5jdU9WQk1HT3dsZ0pzazZOeDhR?=
 =?utf-8?B?Q3c2OXBYQW5CM1hXakhEejJTUElpb2xpaDhnL3h5bzN3Qm1md3V6blJTbUhG?=
 =?utf-8?B?VjRsb1RwVC9RQTkxcjAxQ3dpNndBcnZNZ1NDajRadGFkekZrajZRR1ZhRzcx?=
 =?utf-8?B?bzEydGt0czI0eUI0T2o3dUJFWTdmUjVMZjk2SHFNdjUzM3RoRnVkU0kxUUU2?=
 =?utf-8?B?alp5QTdDa05Cc0l3OGNwNmVNdkhwc0VHK2lTR0d4OFFTMXhxUFBvRUNkeC84?=
 =?utf-8?B?U0VEaTBhM3RhZ3c4Q1pVdWxaZzRTdG5YTXF4YXg1ejgrTjVUaUYzR2Vwd0Qy?=
 =?utf-8?B?R1dJMFhMQkxzUGFrYndqN2FxUFdDM3FhSFVHaFYzV21lQVpBcHB3WDJrTWRq?=
 =?utf-8?B?ZlJ2VG5ENEI4UkppZ2JsM0hQSFNmMFg3S3c4ZmttY1FITGZjZ2xKRUFWMC85?=
 =?utf-8?B?MzFZZUM2MVZXdVdjLzJNM0hEdlFoZ1Z0K2FUaW5ucDlNR0FYQ3E2K2RBd1lF?=
 =?utf-8?B?dmlrcmZ1YWJvYzcybGNxdFdIWlN1NGYvUGVqMnJMZFFXa3RCY0twb2VJbTM5?=
 =?utf-8?B?UHA1OGZkMVkxM1RTaER5WlMxRWZNWUY4ZkYrZUhaZ2d5clJVZVJQdXhocEQ1?=
 =?utf-8?B?Vm5kbW42YVo3aHY1OEFMeng4QnVIaFp3RkR3VlBOUm9NYnJaa2txWkJTODln?=
 =?utf-8?B?eWRZNml5T21YQkhtNE1Da3cxaEtyT1lHb0NtSGxXSjg5YU1jTWh6Y0E1YWR6?=
 =?utf-8?B?Nk9NcHlZZVdhbDdOZk9nMk1uT283anZvVkhpSFFrSlBTOEt2WkwxOVV2MHJO?=
 =?utf-8?B?WWpnOXlGZnFNVENSTVNSWGEwUTBtV0xLT053Vm5IN0dSUzh6Q0lHRDJIMFlx?=
 =?utf-8?B?a0FTV29EenZDcXcxSEZoWEhVK2VDdjJaTjFsUlU5dFFLSXRGR1NzYWY3bEVD?=
 =?utf-8?Q?8sIRUEg+CaE3wqjHlK9W0eM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlQ0VStHS2F3bjRpWHlmeE9mZlpKUVZaQUZLSmY0TGk0QUZ4a1RMakQ1eXda?=
 =?utf-8?B?bmNVMG9MUG1NRkRYWTNvZ09IeU5PMjNuYXU0QVpmZklINUxERUZTczViWUpG?=
 =?utf-8?B?Y3hLcVgwa1huZldvR3VVYkY1RllXZXNORWh6TGRQNzdRR3JPRGQ1NWNrdUdv?=
 =?utf-8?B?ZkduL1ZGY0Zpb2xlaFVZbGo2L0RPVCtQa1VTSlBYTVFab3ZOVHNwY0l6TEVQ?=
 =?utf-8?B?UEhnMlhVRmhQRlo1aXZYeXY2bHdHa0FwU3BwWllzV2UzMVhWbk4yV2RiRDZW?=
 =?utf-8?B?bEpXcWhjS3NtR0pRUUlHUi9yeDZwY1ZWREJsUnA4MUxwZGtmVlgvY1NjS1dz?=
 =?utf-8?B?WTIwY1RYaWJnNDVBZ3NHQkwySGJOR0EzYTh4SWhPYTdldENTUWp2dlRuMnYy?=
 =?utf-8?B?Zi9WQlpZU1h4QWwrV1lsYkFETWFObkczQkxML09ETTNBd3QrMEU0dWFYVDRK?=
 =?utf-8?B?ODVXTzRmQ3hZbjhZVEZ4K3dXZEFmcVgvU1VLUUV3RE1pVWFlS3RjTlVuSWtL?=
 =?utf-8?B?SU9valVVUVJxb2M5akhEVW1vZWVPVkxCb1Ftbi83SU5JOFpVMDRPckJXazlq?=
 =?utf-8?B?b256K2dudE9ITkhMdE5ZUWxnbnAzMHJ3QVhYSjFSVWtmaVZ2d1hnM2g5QStq?=
 =?utf-8?B?U1NHeHkwZzZaeFZJVTBtVExJd2xLZE0rQzBrSEdBNUhjMmZhOXdoZkh0eHgw?=
 =?utf-8?B?cmQ2blNYeFJKYUxSdStXL1lieHp6S0NvVWUvOWMwZUNzQXJqZTA0Z3dKTS8z?=
 =?utf-8?B?eFZUbjZrVzVZN1JXd2FHenZrSnhQbkoxemFwNmtBcGhySHZwdDRkc0RPWDI3?=
 =?utf-8?B?cDZRcEtrZWt0MnBOV01jRURXcUNQRlRkVGxkTXp2K1JEbEIyV1gyb1BaL3Yv?=
 =?utf-8?B?Zk54OUFyVjhCakw5elRTUktwSTVJU2o3MjNKbVRDb3B4TUFxRWFqeEErd1JH?=
 =?utf-8?B?bEs5UDdoaTVMQnBSZmpWRkVOWUJlamZyMVRQWWFZb1pGSFFGTWdyN095cG5Q?=
 =?utf-8?B?NnJueFdlcmIwQ2x1TUtsZk03QytsSk52LzU1OTMrRmRPSjVTNFliZWYvRWVJ?=
 =?utf-8?B?b3kyNG10OGlnVnN3bER3WTl1Nll6aXhadnZRRmo4RGRwZHVyNlc4cFhWV1U2?=
 =?utf-8?B?T05xRlFLMXo5V1lGQVcwL2RmQlV6aXRCSUh1bkYxeEFaQk1HUlloeGhxakpJ?=
 =?utf-8?B?alJZNVdtRFBpRDNNWXBJbXBmQnBzanJvcDdob3ZnY3MzTXJ1NWp5NTRwaTFW?=
 =?utf-8?B?TThZemZZTFIrZlV1TmNraCtWamNVdE1mc1cvTng3azZJenZLZ3FZSDFUaDU0?=
 =?utf-8?B?V213ZzlTeng4Tm9qdXNndlFrZTFhSWdqR3B5QTMxK3o4VExjaElQWk13dDNG?=
 =?utf-8?B?c0tDTHhOYXVpNHFOaHBCazZwQXI3ampsMHVvNUpUOHU1ZWV3Q1owOUpBV0tW?=
 =?utf-8?B?Nnoya3Z2QVBBbE9OdE15ZGoxZW1mNWpIR2VnT0hBUFFGNEZRMUtMSG1KallU?=
 =?utf-8?B?cnZQekluL3VTNngrYVJSMjlFOFh4YXpnK25hWlJ1WUovT2xmQUJvdDJaTXYx?=
 =?utf-8?B?OFRsVGMybVB4RGtEV3gzdmQ0cWl4NFIvMjNITDJxc0ljR1RpMkx2NUZVMVo2?=
 =?utf-8?B?RHlhMmJZRzlSeC9uUDlMekUycjljcjNhWjBGTFk1RGsvRlExMFJVelEwa09B?=
 =?utf-8?B?amF4TnR1MURVZzB3RWo0Wm1RZHJtSFlHSUVrbGFreUU1bzdEdytUdEFIZ2ps?=
 =?utf-8?B?bXJqTHRrcWRhUzRwRXZNVlR5Y0xPK1FpdE5ad3hEcDJBcnUxci9CUUhCTU03?=
 =?utf-8?B?eisxTFpLWDNXRGhieVc2bVpQNXAvZXY4MCtKTWZNVFRhcVBGdXRSTnRCSXZp?=
 =?utf-8?B?UUFVdVgyOWEybkFmMVo4OGZUMUdJZjhlYmh1bkZRR3Z2TWEzbmdBRDlGZnlI?=
 =?utf-8?B?UU5DTHhhNERNV1M5dkpST01PYXlXaGNkbWEwZ2VheVV2d2tBdHQ2d2M1ZGEx?=
 =?utf-8?B?NExxSmJ6VmFuTm1WTkhTbmhzVWh6V2lERUVHR2szY0xydCt4a1krMkQ3blQw?=
 =?utf-8?B?RXM3RnVVRVo3S0ZJeG1hVzlxeUN2YWhvZ2hwYmVTZ09VNWg1b3hYYkh3N0pX?=
 =?utf-8?B?NGdtN0lBamJ3SkM3SUZOMGVES2dRRlB6UUsvYkVEZllmc25NenhIdE1BaGZE?=
 =?utf-8?B?dnVsYmdjZG1xcDJwYmVUbkxCVWR0RDBheVQ4UVplbEd6dnN6ejBjaXJIMU9P?=
 =?utf-8?B?YzlYVUI2ZGsvVlFRU0Vmd1JTUmFlaGFKMVl4OVJhZk4yczVFQW43ZFJpeWto?=
 =?utf-8?B?MWhVMWI1RFZzdDQ2cUwzRE9IS00vUytsdU1mTStWOG9XMDJlMlNaNTlZMitu?=
 =?utf-8?Q?AVMRRHi45JytQazI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 095dd379-a514-4b44-dda7-08de5e9516cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:45:55.8803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WpisWbXi5j7lhhbcDNhQg4nPs9Drj0FOwzYIqw6XMVYtCU7bWmBKNPOqYB/o8XqIoYS2GAaN8/RQDC4ODMU4WXRAUkhpm7gGuXNKif4KIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622360; x=1801158360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6okeO1ku2jRCTb0YGOThfqa9BiUf0KtPqDPZ6OGt9VM=;
 b=W8dNqbK+dPGnPk4KqmcyZ/1yIBnhzBD96sI5LGkJZmyka+ua72krRDyp
 t7p4l6hMna0YmU1aLV5HDfRDQvZGVtMWBKG9Jj297wkut2UhEbZvvikOI
 8zYqymVTM6UiP0XSEbORTTdUJa8ksCqgG4VgDha4wMNGbk7mKxntawHFO
 mS65Sm4wG7Y9MnqpGu9J2v+BWoLouc7THSi6UjnEVQhcvlpaRCnYbsOrD
 1GQwrlAe7i/NUnnQVTKJAirZRMTJ774pgETxa3a1K4I52ub8fqrG7nzB/
 zozkn2qM6UgIuUgQNgUGjUTdHG17u7qFPAtPnt9hpHmJvAwYdsfIrh/8t
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W8dNqbK+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 08/25] docs: kdoc_parser: fix the
 default_value logic for variables
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,infradead.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,lwn.net:email]
X-Rspamd-Queue-Id: D0FABA71A2
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAwOC8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGZpeCB0aGUNCj4gZGVmYXVsdF92YWx1ZSBsb2dpYyBmb3IgdmFyaWFibGVzDQo+
IA0KPiBUaGUgaW5kZW50YXRpb24gaXMgd3JvbmcgZm9yIHRoZSBzZWNvbmQgcmVnZXgsIHdoaWNo
IGNhdXNlcyBwcm9ibGVtcw0KPiBvbiB2YXJpYWJsZXMgd2l0aCBkZWZhdWx0cy4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVs
Lm9yZz4NCj4gQWNrZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0K
PiBUZXN0ZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiAtLS0N
Cj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDQgKystLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29scy9s
aWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gaW5kZXggMjAxYzRmNzI5OGQ3Li5jYmZk
YWJhMzk0OTQgMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNl
ci5weQ0KPiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gQEAg
LTEwMzUsOSArMTAzNSw5IEBAIGNsYXNzIEtlcm5lbERvYzoNCj4gICAgICAgICAgICAgIGRlZmF1
bHRfdmFsID0gci5ncm91cCgyKQ0KPiAgICAgICAgICBlbHNlOg0KPiAgICAgICAgICAgICAgcj0g
S2VyblJlKE9QVElPTkFMX1ZBUl9BVFRSICsNCj4gciIoPzpbXHdfXSopP1xzKyg/OlwqKyk/KD86
W1x3X10rKVxzKltcZFxdXFtdKlxzKig9LiopPyIpDQo+IC0gICAgICAgIGlmIHIubWF0Y2gocHJv
dG8pOg0KPiAtICAgICAgICAgICAgZGVmYXVsdF92YWwgPSByLmdyb3VwKDEpDQo+IA0KPiArICAg
ICAgICAgICAgaWYgci5tYXRjaChwcm90byk6DQo+ICsgICAgICAgICAgICAgICAgZGVmYXVsdF92
YWwgPSByLmdyb3VwKDEpDQo+ICAgICAgICAgIGlmIG5vdCBkZWNsYXJhdGlvbl9uYW1lOg0KPiAg
ICAgICAgICAgICBzZWxmLmVtaXRfbXNnKGxuLGYie3Byb3RvfTogY2FuJ3QgcGFyc2UgdmFyaWFi
bGUiKQ0KPiAgICAgICAgICAgICByZXR1cm4NCj4gLS0NCj4gMi41Mi4wDQpSZXZpZXdlZC1ieTog
QWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
