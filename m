Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEdVAf10immmKgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 00:59:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFFD1157F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 00:59:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFF9F80D01;
	Mon,  9 Feb 2026 23:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AEcYTmQXHhpj; Mon,  9 Feb 2026 23:59:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4973880CB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770681593;
	bh=VaZou7Ojw0JSLJ0CMYF/WHwgU5IDjjKVOQW0A6K9d7s=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fF2Ed3+6eHA+1k8icuVwT8t4GqlUqbt9Qh5fBDIWaZ8MEAwqRSKv6yTI61wcFx4OF
	 GAVybvqDQVtihDcrmZWzd8UIE/CQvEGm2Sw1l5G/TlJZdxZn26XOpi9MbFUGca8nJZ
	 DoQziOBrtD7851aGzcpdKyFNhFb67bOieRRLitkosbmd34zaj+aYRevpdOI+QZUnZN
	 UYdK7bi2jZittlKRlrJjFRbTnjdFaVWC4GqYRr2jA/QhtAdoSU51LJUISoTyigwnVW
	 LiANyxSx0YEBF9gC9Jr2jJQBQb59eGZJKTK6bt6LcnvkHO1osu3eXg0/dcKgVaQbuf
	 H9G6qTS2NV+yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4973880CB8;
	Mon,  9 Feb 2026 23:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A27921A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 23:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8757240D1C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 23:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GK5ULX9jh-H for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 23:59:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1F28740D0C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F28740D0C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F28740D0C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 23:59:49 +0000 (UTC)
X-CSE-ConnectionGUID: Rm91oJ8FQOm3D0VaMVilWQ==
X-CSE-MsgGUID: PcrxQHXoSSme7BUgOJjwvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71903051"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71903051"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 15:59:50 -0800
X-CSE-ConnectionGUID: mlrUVQxkSp6t7mi8FqTGQA==
X-CSE-MsgGUID: aZ0pTNm2QNqXiiq/4e1oHg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 15:59:49 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 15:59:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 15:59:48 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 15:59:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yRpmz1pflA3XuZR45FL1qd93vIYwzvOrSuaBect8473wb0TtwfaWk11yfd3p/aWqjSx0oQXr5+5XDZXSX+VT6ah0bHEkIQCzgDWWPqJlqcA4H1OzHhNm2H+uhSDQdIhqUIYwh79BCBpyiEg3oDAlpZYsO9dENizt9G2nOKJylKCq6HHd4V6lo6BfTcaCvqsqRRRkcpxuFJNadSg1NcSw+b34NCeTGbg4yL8meAXEDjK/y1qPGX/2gOYi39JREr1dXEm0n7uHWaVj7cgGU2f2kyJ1hqXQT1jVI9mHK0l5jV402XdWr+SPlI2+UAxZk4HQ9uMFM3hPmRa0Dp7JzaXg0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VaZou7Ojw0JSLJ0CMYF/WHwgU5IDjjKVOQW0A6K9d7s=;
 b=d59+BYr0l/b2FynpP0tdvbHEl7+fMjM2NfYf/T2YpAwnkthI4/hUNXCRH/9M6ISOg8uP6ZlLkD460OI4vC6motWakm7OCsdXsKiNPZlqeohbKj0vUqY24Rd7zwxX3PWkj9PPwkFPpQ6KKJXiVrIN7LU2UTpMg8EzBQY3KJNhdR7bz2rn9tarYoNsIRwsze55MX/BeKYEMZfVMMn/gtdG/6ty53M7N7C1M4DcCklsGTY27blLgJTcqxOJCiCIbrUAcEwAqeZZYAMzzyZXxroP7nqqrgeEz8WmgUjKJ77OYvGlFRmsvm6PHDnyZx/1BBhurfipknGZHOt5dK89Ejx8JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB6607.namprd11.prod.outlook.com (2603:10b6:510:1b2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 23:59:44 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 23:59:44 +0000
Message-ID: <27f5f292-dcdb-456e-9622-33efedd831b0@intel.com>
Date: Mon, 9 Feb 2026 15:59:40 -0800
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: <ivecera@redhat.com>, <aleksandr.loktionov@intel.com>,
 <shaojijie@huawei.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Stanislav
 Fomichev" <sdf@fomichev.me>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <20260207102245.812795-1-poros@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260207102245.812795-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0158.namprd03.prod.outlook.com
 (2603:10b6:303:8d::13) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB6607:EE_
X-MS-Office365-Filtering-Correlation-Id: dc925681-b0b9-4e41-34f5-08de68374bff
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmtjYnZBd09zOFFReDAyZEVDUVk4VE5kbWY3MzkxOHVtWSsyQWQyMWlteFVC?=
 =?utf-8?B?ak12c3ZxNHUrZUNlSjRMVFgrOGI4cXJqMGthRFl4OUJPc25XMm5VYzZzK3VU?=
 =?utf-8?B?VHd4MElPaEU1UWtHQzkyQ0txdkZZVXB6RlI4TC9qdS9mQWJSNE9BV2d2OEw1?=
 =?utf-8?B?eUpuSHl5WVZBSWUzNHhQdEw5WGs0aGdVT2FyOGRiY3FMNTF3d0Z1UFV3dVVH?=
 =?utf-8?B?WjNHcW5PVG1BWSs2c1FUSDFZK0VpSG1XbWcwU3A2UGlhc2x0U21uQ3RTUjlp?=
 =?utf-8?B?QnRWVFExa0lqY01hYjlPYW85TWc1dDhoV0RZeEZlVjR1QUl1WGwrR3JVS254?=
 =?utf-8?B?MWRXMWREcys5aUdSVitsUksraEFVUXNRRFVwbFpqcXlqUysyZStubi9rSkZJ?=
 =?utf-8?B?R0hYWkZZYitaa3RWQTIwU0tGdXNxM0NhK1pROGFUb0hzQnYvakF5WEI4WXY2?=
 =?utf-8?B?TUY1Nkw4Z0FaOGcrZkVtZU9vd0JYa1FKdzRkWWg1Y2w5bUVoK285Yzc0ZU9Q?=
 =?utf-8?B?SWUrVTlTemxxZXpic1hXdUVya0lBclRzTFhMbnpjUGlpc3JVTU12VWJkaXlI?=
 =?utf-8?B?ODlVd3V3UU5wMmhJUVByL0lhSnVsTHdVZnlFWjRtNzE3VW95UW9XQ2cvdHpa?=
 =?utf-8?B?STlENDlsVTQ1WndWNzBwQU51eXB0akdaQ1FKUnVpL0NzWG45WENmYWVQUktC?=
 =?utf-8?B?OXlKWFZJYlFLWUlYSklWaFREMTBXZkJsSnVoNUxnQ0tLTmhHNFpVTHg4OUNJ?=
 =?utf-8?B?OFYveXNDTVRNM3V3bDQ1WFdMZ0R0SGZRVTB6SW5HbHVIQkhRQWRSd2djTEZ4?=
 =?utf-8?B?bGVRK0RneGpVSVZmbWlKekNJVjBUYUdQS29OSVpZYXFMUXk4N3B0WFZtamFa?=
 =?utf-8?B?NXExdmd5K3N6cHBqeGswc2Nxbjd2bFFEeDlOc25RSmh1TU9URzNJWXJ5d3JF?=
 =?utf-8?B?dFNnV2w4aXVOaUR4UjhoOHFudkM3M2ZQYnF5T3VkT0hzM01uK2ZaY1JLN1lC?=
 =?utf-8?B?K3FzU3Y3SWpNMGE4MU5BaHM2ZDVuem9JQ0ZNZ3VwbE9QamF2RkpqSDZIZzVQ?=
 =?utf-8?B?SEszYS9OVU4wbXVhL0tnY0VVWWo5QnhOQlBWK3IzWXd0RkNWbEMzQ05uNWVs?=
 =?utf-8?B?UkxNbDlTOU1RRjNiTlJMNjlrMWtQbUtVNEZvL3hpV2NBbnhBcHJCdXVPU3dJ?=
 =?utf-8?B?N2l5RHZVSm9PaHBqWHBObnRFYTZCM0pYcDZLZ3kyWVRQUG5pSVJ6VG5mQnRn?=
 =?utf-8?B?VDczZFZjNDRnSzg4VDVGa3E5THZscXVrcEhGU1l6ZmxFTjV1VitxSVBndlhw?=
 =?utf-8?B?ZHlTQ1Q2c0NIa1dZQjJaaWtTZ0hpZkRUZVRNdzFMT3Y5c1ppTURLMXhUMzlH?=
 =?utf-8?B?QVNLTU5JaFlzM3lDUWpmcEUyWFJQZktMMVFqY1JpVkh2Z2kycFEwK2VjOXZR?=
 =?utf-8?B?R0JBYmhQTzQvbTZCOUMwcmxOZ3hhOEVVaUhBWFdPdWo3cGpEVURrNkxwZG04?=
 =?utf-8?B?SzRvSmVsZTNaNVE3SmFld1ZiZGpvOWl2V1FtZVBZeVlsZWMyeUN5dUhtTkRx?=
 =?utf-8?B?Wmt3S2FXL3JyL1hIcGthQXliQjNUY2lkK1RtaEYzVk1VWWxEdnc5dFJHUDND?=
 =?utf-8?B?MUZRQ1NvdVpuZk53cS9zNGRWTmdkM1A2Tzh4WktNSTdoaU8rVWsxTWk1UzRP?=
 =?utf-8?B?QS9IU1ZtdWFseEkzY0w3cWFYZjRZRm5tS2JOT3FDcGtScDcrMWxwV3BzTnVk?=
 =?utf-8?B?QVFISmx2TmRvemV3SGRhaFVIYTAwa2Q3WTRwZUhlUFRhMnVFQzNyUmYyMHFS?=
 =?utf-8?B?SW1iUWRzVVBXTGlwRXcxR2NwWk43MW1OdnIrblVlSzJlYzhSY0lrVXpZSHhn?=
 =?utf-8?B?a1Z5a1d3eXdSeFdhN3RlcFFNbjAvazBEdG5OekJxUjhzUnZtQlhqSjQxakk4?=
 =?utf-8?B?TWZGS09OYXFwaXVidERFZFdsMFI4TXNRU1I3Ung3UjJhbUJuUnFiMjROWDd5?=
 =?utf-8?B?aXM5QXNzUU92dGJSbitOMUZKbEpTWEdVR2k0SHRxQm0ydTlBUXFaNmYrVkZa?=
 =?utf-8?B?MWpiUGdpblFtaWN6SCtMUUY5L1YxQ0ZVUllISUpWVzNnZHR0a0lXTjBIY3l0?=
 =?utf-8?Q?maX4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFJYaGcvaEFxVXp4aHlrMi9WUHFreHoyK1p6cTlUNkhWZXk2aGVUNkRIbzBT?=
 =?utf-8?B?RXR0T3ErOTUyZzZYc1E0UEpLS3Z6ODYwRnM5bWpPb3R1NzBPbTl4Mm1jajc2?=
 =?utf-8?B?bEtxU3pNRm9xTE85TVFUeHdpcmFTbU5ZR2NCZlFlYVlTdDIyY2h4RUpRaE5B?=
 =?utf-8?B?U0lPbk9RbVlrc0I2MXMwMThEcGgyalpRTUwyZnlTYUgyeVJ5UGZaZXdQOGRK?=
 =?utf-8?B?OWcrb1hzYzBoRTZiTng0UU13T3diUWl1SVlzTTZBWkpqUzkyTTZ4VE1EdGR2?=
 =?utf-8?B?RHdaZnpkOVk2VURFSmNlcEdVdVNnOFFadkhPRk9vcUlvUXc5NDFxTzFxZDdC?=
 =?utf-8?B?RFZZeVF0YXlQcFpJV2ZLdHh1VVJTakF6REJhWmFJVFhHVFVTT2U0dFY4RmIx?=
 =?utf-8?B?WktCQVJSWW0ybXJ1enI5SkFvcUxTT1k0NVB2R2h3VW9JTG1ENWtOcVZMM2ti?=
 =?utf-8?B?dDg0dTMyK2NQM2tRT2pkdjhBMDR1MVAySnZoTU1pV1REelZ0K2xIN0xXWmxq?=
 =?utf-8?B?V0JhVHlhb1lzbjVreFhTaldEVkdETWZTQTRjZFFwa2V6MkxmalcySTdQVy9H?=
 =?utf-8?B?dHBJVmE2RmcxUTkxelVmNHdrdUJEaktaMzVlVFRMRmxiQkxyaXhTeUcxTjZx?=
 =?utf-8?B?K3B6NzBkd0ZmYjBibGU4djhVblVYNGNQbFQyZlNYOW1sYmhZbTdaSmZUZHNi?=
 =?utf-8?B?MENFY2JqK2Q3a1BMbTBLWTdqSjNnRHdnVHRqcXBSMysyRVBxN0hIRVlBU2lT?=
 =?utf-8?B?YnpmY000NWtMdjZGK2QvMytxdm10NS9wMkN1c0xhQ1lFU25NNDhrbWYvVTc1?=
 =?utf-8?B?WkxhTGdlWE41MUFjL3RZSXljK0lTd2srV3U4T1ZZR25mblRBZDRQWTdQUnpC?=
 =?utf-8?B?K2tUbEt3d3JveTBWYjJUTUlMVEE1UG1pZVJVcEIzdktnTGJxZHAxOGlNdTg1?=
 =?utf-8?B?Ym00ZnJvYzlPd2RJQzN5VWZIWkd0UnpzMVFxZmlKZ2RnSldDKzNjRFN6RVpO?=
 =?utf-8?B?M2V6eG1qaGIyeUJSc0hyU21uUG5OVXVYMVhpMEV0OHpNUi9vemt5WU9NMVI4?=
 =?utf-8?B?bXJCOGRzcHc3NWh1N2VXUE04Ny9kakpRd2RuVXBkaDdxbDNUcmNpZTMvM3lG?=
 =?utf-8?B?b3M4Y3oyMnNBdzBnK08rLzcyOGMxd3NiTy9Lc3o2WjNudHM1R3YwNVdvUk90?=
 =?utf-8?B?dHVPeVNhMWRQZUM4akUrbzdOMHZXWXRYV3c2d0R6d05MY2hCbnk5OGJRUXpr?=
 =?utf-8?B?SVBZZnZOQjFRVnlNaHpsbHFOSi9RZVByZXpNRGNMUC9pNlpoYXRpWjI2VGRr?=
 =?utf-8?B?MDR6ZlljcmpCRVFDTDQwRFZTWWVkalI2ejU2M1psYmM3c1FHbWI0VmQ1OWZP?=
 =?utf-8?B?QVk4S3g2ODFhUjhqOXMxOG85YS80eCs3MFRNWUxRb2dlMG04TXZjNlF2Zkph?=
 =?utf-8?B?aXNZSnR2L2Z3L0Y5U3Z6ZWdyZ1NObFVXSmpkeGpRSyt2dERqSTltTE4xS1dy?=
 =?utf-8?B?dllLbEtna0FxUEJveW5Lcjh5SFhCamJVaXJqMVl2YVgxSDVmM1hEbnpPRHdJ?=
 =?utf-8?B?Z0hwT0NjR0drWXdpZHR5QmtaYjBOc0pWR3dNa1kzaDdKZFdpZDBNenZ3Q0g0?=
 =?utf-8?B?Uk9mNDVVeFkzNGFXU3RnS0Z1c0xGMTFFSlJUekFzV05YM0J5MW1FVzNOMXhG?=
 =?utf-8?B?QmVKMGdhNjV1ZEdLNE9ZT2llUkJuMjVqbmFlbWtDM1B3SlRkb2JTN0xEeDFx?=
 =?utf-8?B?M0pTZzRJZk1NVkNpWngzLzlUalZFN1VVR3VqSVh2b0xQN2UxdCtiVkxmK3dS?=
 =?utf-8?B?cDg2UGtZMERSTEZ5SHk0TkhUZUxNTVFrbXFxRXBVM29LenRzZkhLOTd5dC82?=
 =?utf-8?B?Vi8wb1pJY2dPVHp4dkJ2eVkxWGk2Z0VlNTFiWENZUmJ0QTFpU1BWbnJpcDlY?=
 =?utf-8?B?NW03Z0swVVJLZ3pMTFM1RUJzVndSQi9JRmpMK2Vid1MvbHV2WmdXbUREakoz?=
 =?utf-8?B?UWZWWmh4OFQyT0NVTUhmaHcrMUxkMzl4QW10UXhZbWI5T3J1Snh3TTE2YmpU?=
 =?utf-8?B?Rlp1aGU3bHR0cjczc2s3RS9ucFRPSUJ0N1JVSDJ0V1pvMVpUZ1RrZHorZHFI?=
 =?utf-8?B?Vk9kbkNXdWlrM20rUTU1T0FyU0RsR0IwNWhYMDlXMmZMVnhJWlZoRTNzL09F?=
 =?utf-8?B?Z0czMkdSMjJaT21VcUtIcXp5Y2VOM3NDbmN2RzFreDc4OXQvTjd4YnJ1K2o4?=
 =?utf-8?B?cklWSmFWLzh1OXB6UUUzTFNSb2FOdFFrc3R3QUZucXRLUVZlMmJkaVB0M3JF?=
 =?utf-8?B?L2lENmhpNWZjWGtPWm9OYVdvdzJoRkJWOGNsMkZTQStua2ljYmZ5QT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc925681-b0b9-4e41-34f5-08de68374bff
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 23:59:44.2271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eT/cM3EEd01ce0D1jK7G+xC4v67YyJHI27Xu6VOHkyHx58QyAuJ8M6+g/SiKTt7EHZsca+Y7aXURi4llABtSQCY+V/U+QEC7MHNUxo8HBwc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6607
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770681591; x=1802217591;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l/g2NDzEnumFFNZ0djSzbckfekE9AVHuDQtZTyEzsdg=;
 b=HhGb0LECTyvVDf/0VjDmA4d0QgBaVP5ucPDwCQriCFeIUD71dinoZeQY
 3wp7Sz87/TXFRU2srvMdcSGJaKmjJ6AYDZpBkuP+tKUi2zw2Ls2IFq/uM
 /0kzKOCry5eIt/T8txQtge0IbWaA8IGrK7ZAl3wFxrqOknzq/fzEQ2eNF
 yM/6eUjTP5hMBRHwazBlU5EXvwkMIdiWBkWz6bS3OWHC1Yg2GVSDilA/I
 54JNFMnC9uak8ghuBR+WvLdK495rTgEHFaXGMCwQHYdbJBYsJJvQgTIAJ
 0/XqD7gSxevR7rnrWdXjpnPiwjMVXBkLW+7OA9XHDsflbjyaloGsCGQfO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HhGb0LEC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix deadlock in reset
 handling
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:shaojijie@huawei.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sdf@fomichev.me,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: DFFFD1157F2
X-Rspamd-Action: no action



On 2/7/2026 2:22 AM, Petr Oros wrote:
> Three driver callbacks schedule a reset and wait for its completion:
> ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().
> 
> Waiting for reset in ndo_change_mtu() and set_ringparam() was added by
> commit c2ed2403f12c ("iavf: Wait for reset in callbacks which trigger
> it") to fix a race condition where adding an interface to bonding
> immediately after MTU or ring parameter change failed because the
> interface was still in __RESETTING state. The same commit also added
> waiting in iavf_set_priv_flags(), which was later removed by commit
> 53844673d555 ("iavf: kill "legacy-rx" for good").
> 
> Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
> ("iavf: Fix return of set the new channel count") to ensure the PF has
> enough time to complete the VF reset when changing channel count, and to
> return correct error codes to userspace.
> 
> Commit ef490bbb2267 ("iavf: Add net_shaper_ops support") added
> net_shaper_ops to iavf, which required reset_task to use _locked NAPI
> variants (napi_enable_locked, napi_disable_locked) that need the netdev
> instance lock.
> 
> Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
> rtnetlink operations") and commit 2bcf4772e45a ("net: ethtool: try to
> protect all callback with netdev instance lock") started holding the
> netdev instance lock during ndo and ethtool callbacks for drivers with
> net_shaper_ops.
> 
> Finally, commit 120f28a6f314 ("iavf: get rid of the crit lock")
> replaced the driver's crit_lock with netdev_lock in reset_task, making
> the deadlock manifest: the callback holds netdev_lock and waits for
> reset_task, but reset_task needs the same lock:
> 
>    Thread 1 (callback)               Thread 2 (reset_task)
>    -------------------               ---------------------
>    netdev_lock()                     [blocked on workqueue]
>    ndo_change_mtu() or ethtool op
>      iavf_schedule_reset()
>      iavf_wait_for_reset()           iavf_reset_task()
>        waiting...                      netdev_lock() <- DEADLOCK
> 

Only one note: this does not strictly "deadlock" because the 
wait_event() will eventually timeout, exit with an error, release the 
lock, and then the reset will complete. This is obviously incorrect 
behavior and likely to lead to errors as the configuration change may 
actually silently apply even though the user sees an error.

Still worth fixing, but it does not lead to a complete system failure 
deadlock due to the timeout.

> Fix this by extracting the reset logic from iavf_reset_task() into a new
> iavf_reset_step() function that expects netdev_lock to be already held.
> The three callbacks now call iavf_reset_step() directly instead of
> scheduling the work and waiting, performing the reset synchronously in
> the caller's context which already holds netdev_lock. This eliminates
> both the deadlock and the need for iavf_wait_for_reset(), which is
> removed.
> 
> The workqueue-based iavf_reset_task() becomes a thin wrapper that
> acquires netdev_lock and calls iavf_reset_step(), preserving its use
> for PF-initiated resets.
> 
> The callbacks may block for several seconds while iavf_reset_step()
> polls hardware registers, but this is acceptable since netdev_lock is a
> per-device mutex and only serializes operations on the same interface.
> 
> Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---

Great work on the analysis and history of the issue, as well as coming 
up with a minimal fix!

I'm happy to see this go straight to net since its an important fix and 
comes from external to Intel, unless Tony has any objections.

I case it helps expedite things: I manually loaded this on my system and 
confirmed it resolves the issues for MTU changes, so:

Tested-by: Jacob Keller <jacob.e.keller@intel.com>
