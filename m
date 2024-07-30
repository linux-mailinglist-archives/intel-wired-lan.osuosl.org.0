Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6A694129A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 14:55:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 311D480BDF;
	Tue, 30 Jul 2024 12:55:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HlGQLSfFnynI; Tue, 30 Jul 2024 12:54:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE75B80D86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722344099;
	bh=fGWzx+YYm/+mRB/LpHBHcVwat1Cv77A2JfATLS9LLcA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOQF/mECtcQwQ+oxdhfkl6/1LSOiUd1bcRC3Qt89pXHTQo8YQkX7AS0VPn8X5dtkB
	 xhnKO6ArC5XG69gYv6wnWaAPl1U/1S6dfJCLs0VnqWUCSal1x+t2GaIwf3DkfiPbBw
	 Z8gm9lCni5iEWyR6GsGXxrs3rHaa906m8l0mp7GRyDRNQ5WDYM6716voEWd+1ySeHW
	 XGSeBzJ7S+jU+EeLmiCEsudTyeMYnYO16e8irPu6q3tr6pkfmqcHX/ngVTo5qO4I4w
	 Ue7TfOdAyNSEEeTe8Cbo5SZAtDk9ecnA1NtaskGPdRyXep9Fh/ajvLKtyTk6s9isFb
	 cdQnZ+HKapoLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE75B80D86;
	Tue, 30 Jul 2024 12:54:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D91A1BF473
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A6A4402FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:54:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s4ay4Ogu0zKQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 12:54:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 90FC8402FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90FC8402FD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90FC8402FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:54:54 +0000 (UTC)
X-CSE-ConnectionGUID: /8I2KT23Qs2z82saj6CrEw==
X-CSE-MsgGUID: W+zHXmtRT4Ct2O8UBvzsNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="42682889"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="42682889"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 05:54:53 -0700
X-CSE-ConnectionGUID: //Jch/PdSV26nX6BPh1zDg==
X-CSE-MsgGUID: +Nty1XFsREWJLYDGZCeJzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54019868"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 05:54:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 05:54:52 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 05:54:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 05:54:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 05:54:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j/SSDba3i2WBzYovIdUPswti/wYzvnfkST1SinMeJluTPAD7YNCOUNIUCWqZ2sKtDfxqoIs4V6KFZ/3+fZ1Vb3jq+cVYQMSEFF4Fev9arDlM0TjXKOGyrdVos8peyQypEJ7Fh4IlSpA57MXxWP4U/fDba0uYEJpbWrX5pm1QX9clicmxLM89fW7N0/CuSMSYv7pZA4lYcfNjXkI+L6RoStWhGCgqcCBowQPS5ogNhoXVdqLfQKTIfROYpFaQudsfXQ13fJDt5698J2D0Qmd31KLVDaIud4JXcSvu57eEXHmCSRfaSbQSgClbO3m96ziCSeuQTdeOh0sYegwbLQbo+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fGWzx+YYm/+mRB/LpHBHcVwat1Cv77A2JfATLS9LLcA=;
 b=XQf4FZUaFJ7iZDUX+v0o9OIMAQ8RbsftgIG7aaKgH2+x61vFBhyX3vKz92YlMndwqm5SPCLkuIu8cWu8Jb8/SBn659B/Hhw+fJwbsI0GzRD3salteKikbvG7GqXWDN17PI6wHxu4SeuFyW3LmLGTG2dq0qj7J1CPCOQradryKKvnspfHwB9AZR3TkPh8Txrkj7gaxcXTo5pztlWQ4/e7Hh8FCRxda+a7ipZM8O/lVDldIZNkqLX+9sCl/Jt3BsMnoXN3FjVHMKo5XdVInL8fBeJCIGA66Om2J+kMVXIeioSFlD+1CDRMjmZx8EI/0caEsBW206H51cEb+SxFur9MQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB7754.namprd11.prod.outlook.com (2603:10b6:208:421::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 12:54:49 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 12:54:49 +0000
Message-ID: <12a5b7d3-bfc0-4885-a6b3-229ff3f513d9@intel.com>
Date: Tue, 30 Jul 2024 14:54:44 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-3-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-3-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB7754:EE_
X-MS-Office365-Filtering-Correlation-Id: b5559381-d4ee-43e0-ff5d-08dcb096cbcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RTIxM3ZVcnVBWEc2ZTc1VnZ3Rnk5M2NMK2lJdUdMMC91Q0JZUG1LeStnbW5T?=
 =?utf-8?B?UG8rSFRMcUdHa2VVRmpiUEk5TXlmYUZKVmhYM2VjbStNT3hTc2pkQitsWEdj?=
 =?utf-8?B?Njl1Y3h4a2cwS0o1YVlTRkFaalRCa3FDWTdGb2FFT2tmdUNVQ2p2bDBZTHpl?=
 =?utf-8?B?dlJNZERmRWNjQ0pMWUJtSzBEMnJ1a3FpVGZ3aVU2OVNFMlcyNld4LzFDdEJM?=
 =?utf-8?B?NlJEOE1pMGx4eDVDNnkxeks3enNxUG1OYmJxellVRk5DQ1ZBaW5Id0t1bDg1?=
 =?utf-8?B?UGs5MnVGRWVWL1dVTHo5N0FkT0NvM0haWkZkRVVMVmJWTEJRYXFldlM3T0xS?=
 =?utf-8?B?MGNQOGRxS25ycTRadGh3b0Jvdlh0ZWlIV2MvTVYvOWVTS1VvNEJaTDArN2Z4?=
 =?utf-8?B?ZFAvRU1LejAzalVRUWhqSUQ4aEVoQk84T3J1d3NjcEgzd1ZyQVc0LzM3UE1v?=
 =?utf-8?B?THhqK1BpY2hOZC9HZFIvUnNOUjRsdFVzNC90bGRWcUMzbEs5S1pnWDhYblNO?=
 =?utf-8?B?Z29LdkQ4c2dudUhZd2oySkg1YVp6ZUp4a2FVRkFvMHZISU13NjhsdXphNkM0?=
 =?utf-8?B?d1VwOXRyTlZSbjBneHhVWWpxb1Fhd1JWV0prcGFlWDVJVzRvQXN3US9YYmQx?=
 =?utf-8?B?OUZ1eDlSRHMvQUNKZ2l6a0txeDhubHVuMXJJc1NodFhmNlNyR0ZHbU96elAy?=
 =?utf-8?B?TnZMdHdUTUw5aXQ1MXI1WFN1UTZXQnBDZEVBVjlqN0NVWnVSVk9XMlNZUnBj?=
 =?utf-8?B?ZktYMEpTNytPTkdOV3BLZmRqdndzSVdPcnBpUU1lckhUOTZoZDBJTnRvam1H?=
 =?utf-8?B?cXdEd28yUC91a3VlRlJFK20yRjFSdjdJV1JDNjFTanlyL096T1NNaWxSdUph?=
 =?utf-8?B?REwvVWw4cUVudEpONEZBZFNJWm1qU0E3cDYxUEhvZzVjNXN6NTZxajZPbXRP?=
 =?utf-8?B?c005N21qcS9mMENUY1ovMUpJTGk0eStGU044NTA5ZktROVhrd1M0L1J4RGxS?=
 =?utf-8?B?U1RESEtKbSt1VXdkWG41Sjl2d1pnem9rWkk3cXc2LzZvZmpTRm1ySmRGN01w?=
 =?utf-8?B?Ky9FeUcybmZqelBFeHg2clpUUkh1Q2d0UkM0TGJGZGVSN0VhNU4xenFIUldP?=
 =?utf-8?B?WEVVN2ViTm9hRi81eVEvUUdENUNxeXlMWFlKMDl4WG0vaFcrQ2Q3RUd3cm8z?=
 =?utf-8?B?UkR4eDJrT0RoNFN6WmZwa0hLeUNGSGVLREZXZDQvVldnSnJ2bmZFL3JnN1N1?=
 =?utf-8?B?dkhOOGNUdXJMK21nTjVSbU1hT2RBQ0NMVUl4SkNmSnd5elJZR3llWnMva0Q3?=
 =?utf-8?B?UjR5dHdZTWgvL3o2WGRsbzhoUVNuR0t1R3kwS1d5eEVyMzRKTzMwTlJJKzBo?=
 =?utf-8?B?clczMW1aL21hZjZLZUpOMWM1NG5xVmhIMEttZTJuMTV1cStBcE1vMzlWUlI1?=
 =?utf-8?B?cDhGK25XcUJyVkQydHNNVWJZdVppdlpPSk0yQ2JMb3ArT0FBbVNZcDJuMU81?=
 =?utf-8?B?YS9rVFduSXpqUkxHSmlyMmRKb3M1QUhENTdHOGFHYzdSQUtycUN0WUlnQytC?=
 =?utf-8?B?bDN6SDJpaU8xOXpiMEJxV0cyWmtyTnBHNXJEQzlacHdqdDlSWFJYMzdVU0Vx?=
 =?utf-8?B?YitjdXN1dnBReDRvR2FuUFBBL2JpeGprQy9UTkpjOFpKRXdXSnplUzFyUzMy?=
 =?utf-8?B?Y1Iwck9EVUMxZXpEUHNCcXZtRHFRVkMwOXh1bG9rMHVrd3B3QXVJTlpINlZm?=
 =?utf-8?B?VFducmpVNEpEZm9ZZnFQbFdQakJsdGxsOUFwVVlkUzFtaUF4MEdEWm1PY2ZK?=
 =?utf-8?B?MVRUYnBRNGErQlQzK0FuZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWxZK3JncEdhcjhzQjBBcFZjUTZ2K3liR2djMUxyT1U5eHU0OVlLMnhsdlZQ?=
 =?utf-8?B?YnBOMnAvTmdMaGZGd2Z1aU1oUlExK090WHh6aWtGTENyRmFRbm9Pbk9yeHli?=
 =?utf-8?B?dnlMNXlHejJaWWl0bkNhUlUvOXFaYkVFckhzbUZvekdzSlgwclp0dHdhWDl0?=
 =?utf-8?B?RmtsZ3NsUUhzZ3liVHNQTXNCMnRiRkxmdkFTQVB3SVNiZyt4NkpITHc2bXRI?=
 =?utf-8?B?dlQyY1ByR2RKMkk0SCtMVWh5VkNkUE1YYzFpdWJsSUFZaDRYWW5CMnFsaFVM?=
 =?utf-8?B?MzJQUkRmYnp1d01MaU1QOG9RVTVYVzlTU1EvV0RJcSt5MGorNFowWHlxaDJx?=
 =?utf-8?B?eE9TUk9FTlFTWVdTWXQrL0RSeUJNSzc4eHRGNUJzY0JpWW4ybUFISW52ajJH?=
 =?utf-8?B?Q0FUT2RYRlp1MzdWT3Bqa0RCVlRLV3lRVjV6WVVRVDh0L2xuNzluSHNVbmc4?=
 =?utf-8?B?KzRpUld2b3JNVVNUMnNqVXVGVE5aNGpuaXk2bFF1WE1LcVVGYkF4cmt6V01Y?=
 =?utf-8?B?YWNVV1hWcmh4Zi9ZM2ZoK3drKys2NEJQeWN1UFhCRlFDQXMvcFJiYkQvSXl0?=
 =?utf-8?B?ZUNacHVxQnZuazNObDJBY0tYN042ZWV2WHE4VGxCUy81SjJndmVKTXBmZ2ky?=
 =?utf-8?B?elJ3dGhFakUxV3FhakZWbHJtdjlnUXRqVmdRTXZwSHl2SitBMzhxWkp4M25O?=
 =?utf-8?B?T1RGWjg2M2l6U0tsbWdUUHdqMTQ4NjlyYkQvTDUzbXBmdzNtOXIyYy82cHk0?=
 =?utf-8?B?WWhtczZjd3ZrQlBZcERXT2c1aVRLM0tUajVCSDVLdU42NENmMitvcXpJbFZ2?=
 =?utf-8?B?ZXlZRTcwZCtOZlhWbEhwaWtvamFaVFEwTWtSZkl5QkE0eDNQajVhVmVpbmFN?=
 =?utf-8?B?U3NVWE42ZUw3UUpQT3NyWkUwajBGNVo2ZXh1dlJBTWZVN0FTSWl4a1UzcCtp?=
 =?utf-8?B?UVFHMXhmVWw1RmxlQWdVRVRnSmlOV3JIMHJMaGxVRDRFL09qOTVKNzAweHNr?=
 =?utf-8?B?dDE3NWtINFFqdCt4ZmVUSG5Kb2c4QVM1bVA1cU1sVVNrZmlFRW95YjdRb0tQ?=
 =?utf-8?B?SllVQ1g4bllnOWdObHYvMzU1N1JMQXhhYjB6WGYvbDFLQkF5RWZBTDBRRk9Y?=
 =?utf-8?B?SzAyWXg2NHd6TmdMZHBPZ3M2dzc3QWZ6Z3J6T3VEMUVUV2x0N29NbXNqNGEr?=
 =?utf-8?B?SUJPNTdXNGQrSWdIRUIwRDBlbFdXaEhZL1U0WktLZ0tyT0Jtd3c3YzBWTDI0?=
 =?utf-8?B?dkNBQU43ZUE3d1JjZ2NRLzBvTzRLTURtbzIrTGx0YUtIdFdxVUI3Qnd0dWNv?=
 =?utf-8?B?TnF6VHEwbUZndzgrZThPbFBtVDZxbDlvWHNncnIwcVRhV01hTVlCYVdoQ0ph?=
 =?utf-8?B?alRTS3V0Ym5yMWp5UDNUY3NVdHJRVVA3ekJMcWx0YlhOUFdvaEV6U1p2TkhO?=
 =?utf-8?B?OGU5b2E5L2IzTnF1RlF5NVZDVldoQ2xYYnlqbmdsd1pUOUJTR1FpSGo1dGkw?=
 =?utf-8?B?UmR2SlQ4WGYvUCtVdWJqWEovcjcwZkRCQXJXYjhQUmp5bnh0V0tEbzdlVjBp?=
 =?utf-8?B?Z0FHN21rLzJ4eklELzc3RFBPd1dTZjlGeGJiZGdhRnU2Q0xsbFZqcE9Cck9B?=
 =?utf-8?B?c1pZSE1lNHdPdEROKzE5UHNxT0RPa2hGajU2Wno4RVRLaDFvMHZTL0I3Uy9F?=
 =?utf-8?B?ZC9WTTRkSGsycnRwTm9USHI5R091cDJZL1J4TlBJd3VySzNPSjFkMU4rNEk2?=
 =?utf-8?B?ODZoeXZjU0xwNUh2VGVDTVNuTmlxRkpnNlJFWUIyS0RzNko4WTNKMXVVNkNp?=
 =?utf-8?B?UUU4TEdKbXpMWW9LSWk0VlRwRzZUTEN6Z2xHTDFLTk1GMWFHYVlqRkRQNk95?=
 =?utf-8?B?VHFnZTJRYVdYZDFnd3Aza3ZSaWJHb3JFemlKNURtT09Rd2NoSWJ0S1g3Mlhq?=
 =?utf-8?B?QjcvYkZ0enRpajBnamw2U2RmUVUva3k4Wm1MTElhMkpTTXZXMnM4c3hnU2Y0?=
 =?utf-8?B?dDROdWRqYm9aaEpFb1gzeWZGbzFFcmN4U3BWdklucWZmNXpQanM4ZGhZdDdU?=
 =?utf-8?B?Nk0yMUo5WlN4ZWIzalcyK1lIMmZUbWdLWmo1NVNTbllDN2dvNEp1VGhuVnRS?=
 =?utf-8?B?MVhSQ2NCREExUHBlYlBBR25LdDU1U0h1WjRqbzJMMTFKOWJiWkJVVUdmVW9W?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5559381-d4ee-43e0-ff5d-08dcb096cbcf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 12:54:49.1659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1KHCUTUBUW5Bha2pffCjvFtawCuP/ftlxJ31H5MqFZa0qMValc8EqjjH4V8zjk/4XMui93FILIN6b4UKPfVN3I2KsPUlW9S60UC9GNd8DyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7754
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722344094; x=1753880094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7jl7sg2oP5D0DL0/o1XOZHXQkJh5P4Jgacnzug6jLxQ=;
 b=K0sbVRQQq5RehS/Qd79xu70CiTyxpqexaWLoVTMw+ENqsTpsAVn4gN2g
 CeCCz8tpR/VZSDfELWx4Z63O+T6S4CWYUTVM4/LX6KCA0g9LJyoZy2a5d
 qzVa2/G1zVQp0VbS1rUOtlIhHzs4ZrVyr6d50tk5/rE0qufipMpBt4Ut5
 E6AxRqhhlqGfoMK4nM4uPcBo1sBI+adEtotSJEZWyNJX3hsevFNMGlH0a
 GY7/nPUX5vEW4icQr5QYlEzCDqDx67pVDsgQbB/s1RbZF5ZHsy7kdfSnB
 5L7jbuh/+txRWFSe6JPBm5Rxi/zbzoXrLKbUMzXkfc776xo4lENYls4Bi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K0sbVRQQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 02/14] ice: support Rx
 timestamp on flex descriptor
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
Cc: Simei Su <simei.su@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:14:57 -0400

> From: Simei Su <simei.su@intel.com>
> 
> To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by
> the VF to request PTP capability and responded by the PF what capability
> is enabled for that VF.

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index be4266899690..fdc63fae1803 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -136,6 +136,8 @@ struct ice_vf {
>  	const struct ice_virtchnl_ops *virtchnl_ops;
>  	const struct ice_vf_ops *vf_ops;
>  
> +	struct virtchnl_ptp_caps ptp_caps;

This struct is of 48 bytes length, but only first 4 of them are used
(the `caps` field). Couldn't we just add `u32 ptp_caps` here?

> +
>  	/* devlink port data */
>  	struct devlink_port devlink_port;
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 82ad4c6ff4d7..4f5e36c063e2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -495,6 +495,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
>  	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
>  		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
>  
> +	if (vf->driver_caps & VIRTCHNL_VF_CAP_PTP)
> +		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
> +
>  	vfres->num_vsis = 1;
>  	/* Tx and Rx queue are equal for VF */
>  	vfres->num_queue_pairs = vsi->num_txq;
> @@ -1783,9 +1786,17 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>  				rxdid = ICE_RXDID_LEGACY_1;
>  			}
>  
> -			ice_write_qrxflxp_cntxt(&vsi->back->hw,
> -						vsi->rxq_map[q_idx],
> -						rxdid, 0x03, false);
> +			if (vf->driver_caps &
> +			    VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC &&
> +			    vf->driver_caps & VIRTCHNL_VF_CAP_PTP &&
> +			    qpi->rxq.flags & VIRTCHNL_PTP_RX_TSTAMP)

A separate set of parenthesis () around each bitop (& | etc).
E.g.

	if ((vf->driver_caps & FLEX_DESC) &&
	    (vf->driver_caps & ...))

> +				ice_write_qrxflxp_cntxt(&vsi->back->hw,
> +							vsi->rxq_map[q_idx],
> +							rxdid, 0x03, true);
> +			else
> +				ice_write_qrxflxp_cntxt(&vsi->back->hw,
> +							vsi->rxq_map[q_idx],
> +							rxdid, 0x03, false);

Looks a bit suboptimal to double the same call with the only difference
in one argument.

			bool ptp = (vf->driver_caps & FLEX_DESC) ...

			ice_write_qrxflxp_cntxt(hw, map, rxdid, 0x03,
						ptp);

Also, this 0x03... I'd #define it somewhere 'cause for example right now
I have no idea what this is about.


>  		}
>  	}
>  
> @@ -3788,6 +3799,65 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
>  				     v_ret, NULL, 0);
>  }
>  
> +static int ice_vc_get_ptp_cap(struct ice_vf *vf, u8 *msg)

@msg can be const.
Also, I'd make it `const void *` or maybe even `const struct
virtchnl_ptp_caps *` right away.

> +{
> +	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +	u32 msg_caps;
> +	int ret;
> +
> +	/* VF is not in active state */
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}

Alternatively, you can do it that way:

	enum ... v_ret = ERR_PARAM;

	if (!test_bit(ACTIVE, vf_states))
		goto err;

	v_ret = SUCCESS;

> +
> +	msg_caps = ((struct virtchnl_ptp_caps *)msg)->caps;
> +
> +	/* Any VF asking for RX timestamping and reading PHC will get that */
> +	if (msg_caps & (VIRTCHNL_1588_PTP_CAP_RX_TSTAMP |
> +	    VIRTCHNL_1588_PTP_CAP_READ_PHC))

Bad identation, READ_PHC must match the parenthesis it's enclosed to,
i.e. the second pair, not the first/outer one.

> +		vf->ptp_caps.caps = VIRTCHNL_1588_PTP_CAP_RX_TSTAMP |
> +				    VIRTCHNL_1588_PTP_CAP_READ_PHC;

Also, hmm, can't that be

	u32 caps = VIRTCHNL_1588_PTP_CAP_RX_TSTAMP |
		   VIRTCHNL_1588_PTP_CAP_READ_PHC;

	if (msg_caps & caps)
		vf->ptp_caps = caps;

?

> +
> +err:
> +	/* send the response back to the VF */
> +	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_CAPS, v_ret,
> +				    (u8 *)&vf->ptp_caps,
> +				    sizeof(struct virtchnl_ptp_caps));
> +	return ret;

1. return ice_vc_send ... directly.
2. Try to declare abstract message buffers as `void *`, not `u8 *`. u8
   is rather for cases when you need to actually read some bytes from
   the buffer.

> +}
> +
> +static int ice_vc_get_phc_time(struct ice_vf *vf)
> +{
> +	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +	struct virtchnl_phc_time *phc_time = NULL;
> +	struct ice_pf *pf = vf->pf;
> +	int len = 0;
> +	int ret;
> +
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}

Same here regarding @v_ret.

> +
> +	len = sizeof(struct virtchnl_phc_time);
> +	phc_time = kzalloc(len, GFP_KERNEL);

1. __free(kfree) for @phc_time, so that the function will auto-free it
   and you won't need to call kfree() later.
2. Since @len is trivial, just open-code it here:

	phc_time = kzalloc(sizeof(*phc_time), GFP_KERNEL);

then later

> +	if (!phc_time) {
> +		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +		len = 0;
> +		goto err;
> +	}

	u32 len = 0;

	if (!phc_time) {
		v_ret = NO_MEMORY;
		goto err;
	}

	len = sizeof(*phc);

> +
> +	phc_time->time = ice_ptp_read_src_clk_reg(pf, NULL);
> +
> +err:
> +	/* send the response back to the VF */
> +	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_TIME,
> +				    v_ret, (u8 *)phc_time, len);

(same regarding u8 vs void)

> +	kfree(phc_time);
> +	return ret;

Since kfree() won't be needed, just plain return ice_vc_...

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> index d796dbd2a440..7a442a53f4cc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> @@ -84,6 +84,11 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
>  	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
>  };
>  
> +/* VIRTCHNL_VF_CAP_PTP */
> +static const u32 ptp_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_1588_PTP_GET_CAPS, VIRTCHNL_OP_1588_PTP_GET_TIME,
> +};

I'd make it 1 def per line, not two in the same line.

[...]

> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 5edfb01fa064..c4e7ac19be7c 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -304,6 +304,18 @@ struct virtchnl_txq_info {
>  
>  VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
>  
> +/* virtchnl_rxq_info_flags
> + *
> + * Definition of bits in the flags field of the virtchnl_rxq_info structure.
> + */
> +enum virtchnl_rxq_info_flags {
> +	/* If the VIRTCHNL_PTP_RX_TSTAMP bit of the flag field is set, this is
> +	 * a request to enable Rx timestamp. Other flag bits are currently
> +	 * reserved and they may be extended in the future.
> +	 */

Make a proper kdoc from the first sentence and leave the second to the
end of the kdoc.

/* virtchnl_rxq_info_flags - definition of bits ...
 *
 * @VIRTCHNL_PTP_RX_TSTAMP: request to enable Rx timestamping
 *
 * Other flag bits are currently reserved and ...
 */
enum ...

> +	VIRTCHNL_PTP_RX_TSTAMP = BIT(0),
> +};
> +
>  /* VIRTCHNL_OP_CONFIG_RX_QUEUE
>   * VF sends this message to set up parameters for one RX queue.
>   * External data buffer contains one instance of virtchnl_rxq_info.
> @@ -327,7 +339,8 @@ struct virtchnl_rxq_info {
>  	u32 max_pkt_size;
>  	u8 crc_disable;
>  	u8 rxdid;
> -	u8 pad1[2];
> +	u8 flags; /* see virtchnl_rxq_info_flags */

Or
	enum virtchnl_rxq_info_flags flags:8;

-- will do the same thing, but with strict type.

> +	u8 pad1;
>  	u64 dma_ring_addr;
>  
>  	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */

Thanks,
Olek
