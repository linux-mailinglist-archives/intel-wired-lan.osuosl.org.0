Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00804A42CAE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 20:25:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38AE14092B;
	Mon, 24 Feb 2025 19:25:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fv7MakmyU0dc; Mon, 24 Feb 2025 19:25:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67F504093C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740425110;
	bh=skXyT80oHx+W02lkXKVVWIj/MS8M+MXCf9N3KgCIUys=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Z5nWQTHL9sV0DMogHesqHbwoZR938PM2xJkgN8FYfm8skGunhOkZMLX8Jk5ySOvQ
	 78nkdJSd9xVQ2nj7zn2iXHjfe6CEj7wJgQgP/EA/MTtsdrvN3yFJ6hyRAv1jyWXHGM
	 KCl7PaXTJv2BGwlJjl0g9cU2TDwfgky+PUIgdOVfZvbTatCkYEqIY9eJsNTxuMSLrP
	 H0yQSH1bwVKdoA9KNqMpPunvVz2ruxfASoE8f663NANQF7ggfhww23JFZCjEtUbhZJ
	 Zroc4brTBDZ5NziJuJUzqfdnX2qWz0Y+Pg/xRaQ18m2pxmjGprzX+iahWLMtLbqjKj
	 0QqHA4d+59ksA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67F504093C;
	Mon, 24 Feb 2025 19:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81D6394E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 19:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 659324091A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 19:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id goXHERy1W_Kl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 19:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6A77407F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6A77407F2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6A77407F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 19:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: Nd8l6qquQiyP1xDsCTlVWg==
X-CSE-MsgGUID: Q01eqsEITXKf/sDoMLME5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41080509"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="41080509"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:24:59 -0800
X-CSE-ConnectionGUID: CloZhbN1SgObSDs43/Si8w==
X-CSE-MsgGUID: P4x8oUidQmWEGUpsK5mkPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="116780903"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 11:24:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 11:24:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 11:24:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 11:24:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RpQFHnvU5y0JAinEjyi9bgSMPi922tz5qTosNHrpAVA6BXGaU0etyS6Y9pVO3A9FUu0f27QvgtpL6kIyB+dxNsemzKLd75L5Es1nf3FqY9PtwvRRcCbfzL1IQOAtM4nX4YcFc3hAFWEgui6a835AOpysRJ1k7ftjNVLQf2hwBfdACZgElWnyKeVOEkmgNjKosv3+KVwfjXfUPC2+YXR/2xAGr2L/wqDH17WRA6/daYNsUh5HK2+JNJSGfdY3jfbOaTYR2uHhuiCogokjFKiVv5q4jjbsvmF0Q8HOaWoPD+15TQoWlbL/nt4KI/xBXLrcjN2jYo3hLJ/tfVW45UcgRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=skXyT80oHx+W02lkXKVVWIj/MS8M+MXCf9N3KgCIUys=;
 b=EoK4CEVOaVIdCVXTHeVxyVsEiWTjNDApQqtwrgYFeuZzxn207VSxkeKsr7K7rzkS8OX3zaDyOeUiyNFfctun7GXZjPkxatCS2e0dTGrzhXz4mOXfimgoT/HXgyqEQM19A1icAtZN9cv86xdmxQnUO8KryD1rtl0LjSbOgVoNPYld5S5CfVvOrmF+CVym3HlkdhMcvvlkaG5H29fKwZkEzBIEBXkj0u4IgLPX9SLIOpD+SV72KacnKkS9Jn0B/IGbt3n3aWk+j2PoDxVLXXJXzshoKwJan2UuHIGh5rFboat+En0/JQC6vdT8c0SnMxIWo2agAya+nIdPFmEiYDNsrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by LV8PR11MB8771.namprd11.prod.outlook.com (2603:10b6:408:206::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 19:24:22 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 19:24:20 +0000
Message-ID: <3c26c81b-455f-4cff-82b5-5f38ee602c71@intel.com>
Date: Mon, 24 Feb 2025 11:24:17 -0800
User-Agent: Mozilla Thunderbird
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <pmenzel@molgen.mpg.de>, <andrew@lunn.ch>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
In-Reply-To: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0365.namprd04.prod.outlook.com
 (2603:10b6:303:81::10) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|LV8PR11MB8771:EE_
X-MS-Office365-Filtering-Correlation-Id: f09ea50c-43c9-4907-350c-08dd5508d643
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWFscndkK243eHlzTVF5d2ltT014aEQxa2pzTVhFend6dCtsQmtoM3BGdHpN?=
 =?utf-8?B?NTA0Wnl0bStTcDBFOWVWVVNpYVhWWGJBVHZiYXc0TUZ0TkhTMmY0NlNqeGFQ?=
 =?utf-8?B?MkhUMVNENmM5MjhHbFEyWWtDVG9KRXRoWCtOYWNubGlhYTRvL05tMlpzeGtu?=
 =?utf-8?B?Mjl5Z09UQjRiUFhNclpZZFpSUnYwWmhFRm1oVzJpZjU0eStjWWR4Z2U1NjFW?=
 =?utf-8?B?NDJVTEREYkhQTFdUbUYyQ2hncUhuNGVhR0FqZ1ViWVlERXl5WDM3cG9TeUdZ?=
 =?utf-8?B?UmFRRzgzV014bVNpU2xOYTNqcHdzbGpaSXVyV2VocUtVREJFUVF5QklLdlZO?=
 =?utf-8?B?ZnJNWG1VUmJjTUJ5bGUvZVcrWWdKOHVIWUZYWmE1RHVBVnM3bVBpWG9TdHBG?=
 =?utf-8?B?VWpnZUt4VjdIZ0tGTUJ1cmRISmMycVROTlZnSXhtY0ZGM01nNjljeEs3UWNE?=
 =?utf-8?B?c1FlQWRUNUFhcDhTN3h0b1JnYythT3pQdkxwOFZURTlmQzFFMGhaRUZYTktR?=
 =?utf-8?B?UUdPVmFrNkNqYW1JekkwbWVpODFEK2FZK0g0N0FLUytvOTBqUFVtSThYRE9o?=
 =?utf-8?B?d0FOVUtwNnhJcTI2NTlySjVoNWFrMTVwUTFoTEhDU1J4SGZyV1g5ektZTUt2?=
 =?utf-8?B?Z3krTDlPZzdSZ3VIRmo3Tm5lcFFPVDhUQXZJNnJ0UENIR29zM0dEUWZTSXlL?=
 =?utf-8?B?OEJaN1FncHU5WlZaZHpVRjhFWTJGWVJMR3FSNXMrUVVWdmQwemtyYjFnNS9Q?=
 =?utf-8?B?a3FEYlJMQVBqemhBZjNmMXlxaE40bjA1RDVwK2hXRjhjR0pnUFlmQVAyaWhS?=
 =?utf-8?B?S0ZGcUZhNEl4RVhwYkMrUUp6bi9PN21iVUpJaHI3ZjQ3RmFIYVRNOEk0U2V5?=
 =?utf-8?B?Z0VYYjVVMVVubWxxaExwVUtTTUFITHN0eGF3MllUNG85dWp5RjY1K2MwUGR3?=
 =?utf-8?B?UjdDdm9GS0dmdklTNFI3VzVJMzZ6RzZEYlUwRXJGdEpTUVdsOFlIcE1JYmFI?=
 =?utf-8?B?WGF2ZkEvSEp2QjlxL0hjUEpweWNsR0RBNUM5dng1YUFYUm1HTWNyeW84MkEy?=
 =?utf-8?B?cGVsQjFpZHBwdlZ5cXFzcW5pazBKQ0YycHgyOUppVVlTejFiMHRxdExvOS9v?=
 =?utf-8?B?NXVIZkNiTS9MRkpVeTBDOGVmcjY3dVVoMUM0Lzd4cVZmMlE3VVFXM1g3U2NZ?=
 =?utf-8?B?RHd6RFJRTzBMQ3VCb0hjT1UzbGIrOGpqdDA4Tkdib2JiVXVLYk0xdEd4RWVQ?=
 =?utf-8?B?WjVMa1BQNXJYTE8xZ3FXOFpzV21DZVVGWUtxYXBENDFLaXU1UGxUVFVJRFVm?=
 =?utf-8?B?aVlhbnJZZCtCTWN4ZVNiSCtNTlhtKzJYOFduaE41WHlGeE1ybHk5QkNzK1g5?=
 =?utf-8?B?c3lDYWJWcU9BUlo1K0VIQXpJZGlXSmZKa3J0M2VPN2xMT0lkWlAzTVVDczRz?=
 =?utf-8?B?V3BIZlhIYzBUUS8xMlBHSzdCT3dKVUxGOU9jVWQzSG9TZERTME4ybkQxR2F6?=
 =?utf-8?B?MzlMTk5sdkY4MTU2V3VpRldlNldrN1NPVEtoM2NnU1llS2hsbDNEVHJPcDFM?=
 =?utf-8?B?UGRXdk41UGtXdjBXOFlOMFdiSXVCNWZuQ2ZxL2R5Mzhja3hWaWx3eUY0MlhK?=
 =?utf-8?B?aktCK3ZEZk8rVFdlaTJHeFV6QmZQaE43WFh4VnFVdzAzalY1ejNBemdwV1JE?=
 =?utf-8?B?bytNbmY3YkVDQTZyaGduWk9HbnhHRVdsK3JXVmo5Vzh6WFQ0UlhIMUNabXZl?=
 =?utf-8?B?Z1I5cVN1ckdmUVNMWEpMWXV2a1BDZENsRnhEckk2b2xBRGd5MmpCMGRVQkow?=
 =?utf-8?B?b2k3NlRyUWxkYXVrSURkQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Uk1xZ0lPU2cydmZ6NUJOYVpqQWN6a1VtUGtGZkwyQW5hUjRoc1pud0xTcXVa?=
 =?utf-8?B?WU82Mnp3V1ZLVys1MElxeGtTb0xzWlVKd1g2LzlQRWdXRmFnd2ZRNUtIQjNU?=
 =?utf-8?B?Z3p0bW1iU01IRWRscVRwM04zNDZOanZtVEdtWDdRbmZRK3RWQXdBOXFqNkF0?=
 =?utf-8?B?N29Sak1EODJycG9YaFFvM09nWllYODVqQlVybFhYUGNMTTJuS1RJWG1GQ1dR?=
 =?utf-8?B?NXNwWTRRRnh0SkVzR3pjKzFua0lYR0ZWR1Z3bGpLUlZSZGEydi96QUJUekVO?=
 =?utf-8?B?T0prTk9jREhlT2NkdXVRS3JIVGY4SXIzbzUvVEt6QlhYdFo3NTk2dFpWSzQw?=
 =?utf-8?B?UkIycGJVSUhMZ3ZPalJwMVRDa1I5QkJ4RGxhUDJBb2U4RXJEYkNvcDNrVkd6?=
 =?utf-8?B?YlA5L0Z2MHhBSVJBWmVpSW5yT0pCVGtWRlNWZWpHUVlJUVpQeW05eVNEVnRK?=
 =?utf-8?B?K1p4ZDN3eHFvNnRtV3BQM2xxTXJWRE1uc3kzSnNqZzRSWkdhZjVHQzNKVHI3?=
 =?utf-8?B?NjNiUlkzRjFBQWppYSt2Q0dLUUgxcUw1MXkzNTlybTg5Y3EyNy9uVjFDY2J5?=
 =?utf-8?B?c3lJcm5QZHppbTVra1NkZ29qRVZkbG5lRENkbkxkUjU3TFRucnkyUDVSZWpu?=
 =?utf-8?B?NVBNU1lKTnRvam52eVVLYllrVEY2V3JaYkVGbXFmOC8zaGZqU3hQY2lKOVND?=
 =?utf-8?B?cVRuUU5jTU9FQ0syazI4TjEwTXZ1MEJyVFR4ajhJV1F6RnR4SVNweUZPSkMr?=
 =?utf-8?B?ZVRRTlkyRHJuV21ZMHgyK1F5NUJ0eHlsWC8wWERhQXZnZDVCKzkwODEzZnA4?=
 =?utf-8?B?N1JOcHBzWG1JSVFRSmN1bVNyc2tFdE0zZnRpRnRzWkdhczZsQWRqU211THZy?=
 =?utf-8?B?SkwycXN6emk2U2lSZVNGeEw2NlZ4VUkxRDB2QUNJZ1diUVJnS25LVm1Nd0cv?=
 =?utf-8?B?ajJ3eklHZTdrK1dxUzdheVpVUlRvQUJQYzhzK25kRDNtQ1RlRm9Nei8ydE41?=
 =?utf-8?B?QVh6L0xLaGFhRFVCd2xFaC9TMkpKaUpUelhzUWNJUkU4UERZNTc1KzNxcmNR?=
 =?utf-8?B?VmcxV1RnaVFrWG1tblh4WklTQlJOMXJsaEFQSUg5VVdjUUQvR0RaSG1ZTUUv?=
 =?utf-8?B?ZWo4WmRWekU4V05XdzFWUmd2Y1NJVFg3U1IzV2VCQVBzVXdBS2dUTDZQRnpY?=
 =?utf-8?B?cWhUZVhYUjRXMWVlMEtJZUNoT1Z0dVUrTTFyakhlc2htc3F0S0JhQkpsTWo5?=
 =?utf-8?B?UE5SRUYvMkFsTXRuaHY0OG5aSWFtYTdnYyt4ZE1mRlZLWjk5VUIreEIwRDhR?=
 =?utf-8?B?aTYxVzFmRkpIWXBBeG1ha3Y5QnhJVSt6bXFHV3RIeGxTZmY3YUhjNUlzM3Iz?=
 =?utf-8?B?ZFo2OWdMWVpmcHE3TlZrV01LWHYzbGVzN1UwRm9LR0dNb2ZRYnlMaGNwTHFa?=
 =?utf-8?B?bDNFbC92SU1tcXZ0UTZQd3RiZDZ2V09BWForNU1lS0p0Wjl0bUU5clcxN0xr?=
 =?utf-8?B?QmZxRndjbnk4MnNHaW9jK3ZFUGVsbFdidXo1bTJRQjI2SVpDMDh5Y0Vxb1pV?=
 =?utf-8?B?dWt5dFpXNlJOMTB3RDF4T0ZkZUNCajJ6Y3c2MU4xeGVCcC9SckRUaVNKam9h?=
 =?utf-8?B?cityZmY0V1k0RWxjRmwwN29Pc21PZHlUZ3phOVlTT3Y0TmlvaFc3RjYxVUUr?=
 =?utf-8?B?cEt4OCthVW1zc3JXL3lsRjJnSEJqM0tVT0RIT0NIZmY0RHZtcDNzOWhCRjRD?=
 =?utf-8?B?YUlvakRhWGwyUmxMZ0ptV0piRnB0bjBvSlR0b2lsSmxkbVY5cEZ6Rzc3K1o2?=
 =?utf-8?B?Z3Bvd2N1L2REWk5oQmVIdkZ2ejlzNzV6aVhGV1duOVZhd0NCekQvNmh0SkFz?=
 =?utf-8?B?THdpTDV1L0I0QlphNUVsNFdxZG9BbDFwR1NmSG8vSEl4TktrWEZhb2JTblcv?=
 =?utf-8?B?TmQwN0VET2ViL2JjM1dMa2NGVnQ1Wm9TUkxKVXc0bVp4RjVteCs5N3hNSS9w?=
 =?utf-8?B?eXAvc3dyQXkzYnBadWxIeW03OEZoeEtYRTJUYjhWTkZLc0ZnamdvaGI1WlZy?=
 =?utf-8?B?aTBCUGF6NWsvM0xtb0R4dVQ1UFV3a25ieWlrOGVQQnhOSjg0OVVHdmF1WkFq?=
 =?utf-8?B?THpUUjl2VUQrM0hnMXF1Z01OZ3VRbWFiQ2R3QkJ1cnNCK2NnTmIydjkvaVRS?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f09ea50c-43c9-4907-350c-08dd5508d643
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 19:24:20.1201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mUzR+1LQGshtYJtvaixGBR7x+ZSkM5B0KpV73UYss2mOznHQF+WzEuBogU5E9xzB5jeZWnV7qGRzssUxf+1wcpoFlIXsBTvVcIYO1GYR4lI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740425107; x=1771961107;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XhdQ3EQ5rHmun4UfkiQJVWV/W3rPY7DCA5nXbbeWcFI=;
 b=h4wF+U0zpj5wGuxWbXVN4n0xGD14Q4+k/CKxgKiRKghzvrTSFHm+xbfQ
 0b+6kc0h2yWkXdaGNgLNB2ufiGgnOhcaEE1pSC/GDxHUGdxRZ+AhP6Ya8
 sfX89Z/OczD8r6MV0xGQtMRT1Yqb6XaPHFfLGqSHnqqiuaCyYecRWFcy5
 LWAAn2jxCa8PKUWqA9XDoMyA9VrF9TS0nMPKh4ImDH1J9GPUdtZkUCtjl
 DZo3BvF5fJacS97J9Ew6UzXj76kZOvWDC8T0AbSNznGu6ObQJW2wB9nON
 wkc+0VIyT8RBEDrNow8+QV6Cgb+oBEVbyB8RaNqhqMhw8Nq+0sz28QZM8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h4wF+U0z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ixgbe: fix media type
 detection for E610 device
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



On 2/21/2025 7:49 AM, Piotr Kwapulinski wrote:
> The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
> device") introduced incorrect media type detection for E610 device. It
> reproduces when advertised speed is modified after driver reload. Clear
> the previous outdated PHY type high value.
> 
> Reproduction steps:
> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000
> modprobe -r ixgbe
> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000
> Result before the fix:
> netlink error: link settings update failed
> netlink error: Invalid argument
> Result after the fix:
> No output error
> 
> Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>    More commit message details and reproduction steps added
> v2 -> v3
>    More details in reproduction steps added

Please remember you must wait at least 24 hours between submissions that 
include netdev
https://docs.kernel.org/process/maintainer-netdev.html#resending-after-review

Thanks,
Tony

> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 683c668..0dfefd2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -1453,9 +1453,11 @@ enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
>   			hw->link.link_info.phy_type_low = 0;
>   		} else {
>   			highest_bit = fls64(le64_to_cpu(pcaps.phy_type_low));
> -			if (highest_bit)
> +			if (highest_bit) {
>   				hw->link.link_info.phy_type_low =
>   					BIT_ULL(highest_bit - 1);
> +				hw->link.link_info.phy_type_high = 0;
> +			}
>   		}
>   	}
>   

