Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D03E795BC69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 18:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E95D40315;
	Thu, 22 Aug 2024 16:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xc3_aGZR0uBB; Thu, 22 Aug 2024 16:49:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E32340B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724345353;
	bh=0CsoHzxqH7u/s/raGL8dKf9A2wamrvo+B+OiIH/oud0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eLpbQ29et/rciZXvK9QVvEaV44Tbl7Xgcdvin2Bq6EK7Vg5WFDUh9hrPqprqWMEkK
	 /C/1Ccqp709ucuLTLO5F45dt/YtCg8YKZBIq0YwewX6d//d00PEH7kAJAkczzxkm72
	 ZPV13JtJ3ZPMYfBGMAQRXKlg4JsP9k04aTfKyQrKELO/05rBQ4eKSJz338n+kgxB+P
	 Cg73jMBwwlBR2uW11Gg+1FwzLAEM4CF6ev0s2nWqI9Q/X7AVN87tI/dCnpa6NpW/Wp
	 yaqhWPBNWmJdxyR+byL5rJKMH81GeB9MbQNsGZwlUx4YrVq/bDklC3NInb/j2pvlUW
	 4mlfy9Ebgbp0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E32340B87;
	Thu, 22 Aug 2024 16:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33ACB1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C30E403F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:49:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNQSYUF4UnD2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 16:49:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CBC9A40315
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBC9A40315
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBC9A40315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:49:09 +0000 (UTC)
X-CSE-ConnectionGUID: nNXrU1lpQ5CgTpbq5Paocg==
X-CSE-MsgGUID: LcnbE/s9S+eKptDzbAQMpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="40243629"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="40243629"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:49:09 -0700
X-CSE-ConnectionGUID: nWQfBjaNSMW8CqD3sZwM8A==
X-CSE-MsgGUID: S5znBQtGR8qzKda1/PcPbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="99027666"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 09:49:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:49:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 09:49:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:49:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oOlneAMVxwVffhhEEK5dLMNNLXoAAuW3dlm3NmkO6fLC9fEGeWniVahz/1okYQ1hmBUL2IjT0AfB5vrORFj8Eo2UGc00FUNC/+PpPvZ1pQUsRMs9ZfUo+hOdFdxShcaAl94DPoIyrJ8mtPYgEtNCagelRgxyv0bqXWjka86+6C2c7oB5iIbiVGxFpHbbNShR3rftFkrPUruf8kkX5al46K02omeZw/dkQAK+/Lf6sbCjhsAwN2VnY/wPK3mv0Hfj08lDHQbZhTU5oq1nbhKQP34BFlZz65CH45mvIB84/ksRZF/YsaIa4nuuSBmtFfeaK4hnLlXU7BW7rhe3Mtwm3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0CsoHzxqH7u/s/raGL8dKf9A2wamrvo+B+OiIH/oud0=;
 b=EPn5oBuwecq/aFFGJXrZQkPXov+Mb6uMC2A6mjcsFqx+cqSPNSmn6paNiEDfICZFPE9ir5mnNZe42eHlQZWwhDgcqBhvfH+qqOMVa1bn/OxPbI/HjQJr1cKM+NaTnWutj2TS0xYgEdiUdCvkZwDd52Gdvph7H6uqXWh16fDDPdVnNFRWIUwRnSgg7N3Ct6Agsoh0ve8mQ7dO6AeW+z8ciwdpav/J+wv5vN/gPtGqzVPmI6HySkRm8kVUdBEiJEo2rP29h+NGP4HvkUMQPBuOyNTF3Js+hwi0Tc5+qvmYJO49XVFg6HMva6sey/eaXmiERyv5PyCFulYKB/O2GnOwXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 16:49:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 16:49:02 +0000
Message-ID: <c2627358-cd3b-44d4-b4a3-13b85ddc98e7@intel.com>
Date: Thu, 22 Aug 2024 18:48:57 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-14-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-14-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0175.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:66::8) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB5992:EE_
X-MS-Office365-Filtering-Correlation-Id: c04c55d4-88b8-4479-e0a2-08dcc2ca53d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OGtmQ2FHM3M3ZVZEWEFObWptVWxndVgweS9oZHpFdGFSSmlHUzdJQTdGUUND?=
 =?utf-8?B?T3BRdlM4a0VneW9mdUdISDA1QjJ2NFEzQThqQ1M5UHVsd01RcjUyNUg0OERz?=
 =?utf-8?B?aW1aM2FBMlNLaEU2UWhSWlZsQ2ROOWQ3d3FWN3hFUXRRNVJqKzBqZWxyTGZ3?=
 =?utf-8?B?ekNEdFBiV2pRL09xWVJSTm5PM2JWd2gySFZ5MFhKMUNnc1U2MUFMMHNzbitn?=
 =?utf-8?B?MERXbkJIeEN6ODRKMXNQcVNZNk53WWpUWmtvdWtmMVJxeStRQmV3SitEaVRa?=
 =?utf-8?B?cUgxM2V1Ty9Od2l0OHdSa0xjQTFSY2xYbGZ0K3AxcFppa2tOWVQ2V0xndStw?=
 =?utf-8?B?QXBvRmUyV25RcS9oV2pGeWZTMU9TbzUydEt1NG53YkRjQjhIVHdjS3B4WXhF?=
 =?utf-8?B?eWlWUlpicHJoMi9NNjZ5Uys5K2dIOVFKUkJSdW44UWcwRVdsZUFxcFFzUURP?=
 =?utf-8?B?citKanRvbWt1U21UMEcxRHVINWtaREhYT2VCQUtZNittMWJINUlJYTByOXVj?=
 =?utf-8?B?NVZWeFNiNEVRUG5pd1pXRllZenZMUUhzcWNMUWY3R1hUWEF2Q25rTFEyeUdN?=
 =?utf-8?B?NVNDaUxzWkhlVjlvQ1g2ZWc1OWNyUXc1OWVESm1yYytxQmw5ME9GMXVYYXND?=
 =?utf-8?B?K09Nd1NWQjhGYmVXU2NyUS9VUGJFVnpoQzFOZjdvSWoySVA1R3dtSzA2aEE0?=
 =?utf-8?B?dUZzNlJ0TWkxZDZ2QmRuQkNkZGFIdUIvWHRWaG1lYmxOZnlhNUliZDNveU0z?=
 =?utf-8?B?VzRLQWVqSTNtaXA4a0M3VEoyU0lSc1A5VFkxdDl1V0h6V205VmZJT2hESmdV?=
 =?utf-8?B?aVRSVnRnNjdOcklXeVNVSmZZQTdPL1BQZjNNSjgzUzZSUlFhd0plVEkyU2Zy?=
 =?utf-8?B?dFE3T0IxNEo5Y0NselVseTdablFXbjVzTFJHY0NaUEZpcDVLbUZqYXpMdEtw?=
 =?utf-8?B?RloxQXVxSktCbmdZcWNZdTRJN0YvazVPcWNxQlZPWDN3MjdoOVZqam5tSVdG?=
 =?utf-8?B?Ukl0RUlNRlNyTm0yMHFnTm9qenFQUnJPOFZFTTBrdG92eElVOTBmdXVpNlVJ?=
 =?utf-8?B?K3RWWUxXVE10ZjR2bDZaR0dxSXFjOFVVRnJNVzB5ajFwbTh4eGttRWF0bnph?=
 =?utf-8?B?NGhRaTg2MXdjTE9tb3g2aHpyNDJFdjEvcGJtOHN2M01Xb1B1Mzl5NHNXbjhN?=
 =?utf-8?B?azIzeVc0VnRyN3RQWUFCajFMTTA3WkkzZXpTeTBibGtlZlBzSG5EMXBHNU5n?=
 =?utf-8?B?S2dDWkdzN0gvOWhXcy9TTHpWbmozbktFMzFZMDdEKy9NMjFyN2k4QWNBVzNl?=
 =?utf-8?B?a2JWWUI5NmR5NFlHajdQYzByTWMxMmV4WXVtREkyMldHY3hUSXM2dHFDZ1Z6?=
 =?utf-8?B?cnl4SnU4QVBzemUrSzV5MGQ3YkhUdWx6RFdRZU9PbndseWw3aFJBYlNZaEFz?=
 =?utf-8?B?N3lldXNveGExZkNrR0JlaW40dWt0UkZWOThqcXN0aXlQWUdsWm1VWk1QNy80?=
 =?utf-8?B?NnUxNThKQkxmUXAwWXNuWE9pMi9rN2lzRXJzSzNjM0pBSTRwMG1IelF5NkZB?=
 =?utf-8?B?L0VIR0ZpN1FKdWhudktlUW9FNjdOeXA1bEhxLzQxSzJvbHRlVWJlMWErTXds?=
 =?utf-8?B?UGcwOTltRjUrcG0xYVRtSVlnbDZWM21kMWUzOWhVOTgvTFhHZ0MrOHV6cVd1?=
 =?utf-8?B?WnJReU9NQ3JZVUZBNHRZeFBOQWtVSlRLMkEwU3lFVVpHQjRiVCt2ejk0ZUZG?=
 =?utf-8?B?dTBiUkJUelFWWk5iNXNnUXMxdmphMHR2VmllMWxQN0dFTVlMdlZRN2d3OC9Z?=
 =?utf-8?B?blFlTWU2MUxOOVlMQnhCQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TndZa2V5YWYzWE0yaEI4bnJvVnh0cGo5UWZzYyt6dlR1cW5vUDRGaHpVR2M5?=
 =?utf-8?B?N3lXZXBpUk5scVFwY0RML00rZUY0Y0plbWl1SWVoNHpucHYzSllEWmZ1SFpx?=
 =?utf-8?B?emdlSXJrMlgwSGJWbDVnZlJDNkUrL0NSQXk5SGdZd2ZPTE9kTlk1WWpJNU9U?=
 =?utf-8?B?SEl5VHN6UmlETFMzY3VrSzVtaVlvWE8yZVFaWFZXWk9IbHZKR25BbXI2Unpi?=
 =?utf-8?B?L2tiWlg3bkFsVlRWbkFiblpaZzJiZ0FIbzlKblFOK1lXRFIvTDEzY08yT2Rz?=
 =?utf-8?B?bkJlUk5YQVkwU1hGNDJ3TkNLL2FiUjJBYklRWUsxdVN5Z3c5WEZ4Vm1QUlMx?=
 =?utf-8?B?TkN2UUNHNHZsN0ZaV0YzSVR0VDlPajBpRWZ0emwyaFpqRTZFdGpSbkZyRGhC?=
 =?utf-8?B?TCtDSThpajkvMzBMM0NwQTJKTEVUVTFNM2o1N0ZYR1JVRHRnQ2h3OVJiRGg1?=
 =?utf-8?B?YWtEcU0yQ3ZIclhEdkJlNDdOWExGcWJPa0VOWnQ3NHJ1Y2pxbkxDRnJCUm80?=
 =?utf-8?B?bGkvQlQ4QlhzWUJlNGhRZk1SaytqODREa1JrV3hYQktxdi9XdWd3Wm5Hc0Er?=
 =?utf-8?B?VE9YT1pFcmdGN1dPTEJiN1kwS3N6VzYwOGJCS3l5MUdEQzB2K1JmRnBrS2ha?=
 =?utf-8?B?dTNTYXFhUFcrNTVtb3E1VGltWjdsSnp2ejVLNnJYaTNVRE81L0RHbGt5QXVB?=
 =?utf-8?B?NEJ1aUpobm80WExaall3VmxKUklwNnBQVVNDcVZ0WXNYSHVTZ3RsZ3ZaYlJz?=
 =?utf-8?B?R1BtOTVzODlqKzJ1YnV5eHY2VGlJQ3RQOEhOZjk5QWJENjAweWFLR1BBdXRm?=
 =?utf-8?B?MmFvZ3BndjgwQUpGd2dWUUtRNnlZYlNwS3ZsTWsxT1ZpaTRBMTVyck9TWDR0?=
 =?utf-8?B?eS96MzhteHcvZ3dlT3BQYnFZV1VNWnl2NHRZM2JRb0xkZTJCNmw0WGZmRmFC?=
 =?utf-8?B?MCtoSFZ6eGp1TkFZNXhqNU9sNVhmWjhOc2hqOER4WVh6K3dudEg3VEppV3Jz?=
 =?utf-8?B?WnZ5dktLdVV2aVlsTGdoQlVYMU1mbjZBVngvLzFHYmVNNUN4UzF2T012cmFG?=
 =?utf-8?B?S3FVSXl2bnBrcm9NTTcxSE5DNFdrMmg5cGpWUVZ5UGs0S2ZIWFUvRndMOXhs?=
 =?utf-8?B?aVppVHZNTS95T1NRMEowZ1dRYUhaaXNSeEpOTTdGc1FrUndqeW00RE9ORWhv?=
 =?utf-8?B?UWw3eGoyYXdWYVZ6QjR3dk8vY2pqSUFYbTNESWxVZHVpWXAzTWR2NWhzMzhn?=
 =?utf-8?B?eWQ5U2VWeithQnVDV3RoY25MRnRQSnJBdmlCMWFYQXQ2Uk1Dc0d4UDJGakFU?=
 =?utf-8?B?cS9od2h3R0prZ0l3YWUwL0dZbFV5NExCVVVHbk9FbTdmWEJ4RG10RE5nR1B4?=
 =?utf-8?B?WG5SMzU0ckltaWVyQzErakFkNFVqUlkvNTNXQ3pSaU9mY09ESWpSTGppN3lt?=
 =?utf-8?B?bkxXWkpmZ3FDaUdwUEIydGRrcjRyM1doajFSYnU5MzZ3VmZ2dTUyVzNKdlJP?=
 =?utf-8?B?VVl2OEdVMkxFS25YQ2ZZL3gvT3RZVUlHUFVBRVo5V1NtZnI2MnY3eFF4Y250?=
 =?utf-8?B?RUlCeVh0ZER3UFl2Z0NDT29sUUtiMGhiUnppdEcwbk44ejBTdWpyRzROTWRj?=
 =?utf-8?B?VkRVeVZ6a2pZZ3FkOWNvS21ETTZQQ3ZtenUweVYzS2wrNE51Ty9aeVZRL3VP?=
 =?utf-8?B?TDVUZU5WeHVyZHdkalVUeFNDUEtKUE1BSnNTTTlOaUZHd3Vpdkd4WVJTdm5p?=
 =?utf-8?B?b244Rm1WaWZHMk9TNWhZa0J1ajFnaVlZMWJOMHVKaXF2Qnp1WnJUR2ozczhi?=
 =?utf-8?B?K1kyeXdsaFFqa3JqT1dsMzA3RXNvY1hkak1PNVVpcG42TU5na2IwSnRKQ1cw?=
 =?utf-8?B?NCtjUkJNVngrck5Jb0hJdjBlWjQ3Qmp3VmlaSEs2ai9HUTJWTnM4UWFvemVt?=
 =?utf-8?B?TUdHWHRuSHNlMGhQVUNmNVhHK2x1YlRQM1BvT1hLZmhFbjg3WDdoVHVXWXUw?=
 =?utf-8?B?ZG5HTWJRZENJUm8wSDE4MWh1VXZoYTBoVXpGVVM0ZW4wSW1FTWpiTzUrYVF0?=
 =?utf-8?B?anVXYm1oU1hIK1Z6cjl6ZG1WblVMcU1LV0J3MFFSVElsK0dpU1dGa3BUbEZQ?=
 =?utf-8?B?SldKQnFWVEVTdVF0QjBZUllPcGllVy9DNGpYcWhOVWhCL1NkcEt0NHo0OXhr?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c04c55d4-88b8-4479-e0a2-08dcc2ca53d6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 16:49:02.7716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +PTHf6ZbWYwKQ8T5XqMGAHdethSYuASYEC/+4LUPfAeclhQ/BYxbyBmqnmU3S8x7DulVNdICkNEwDDBCQ+sC2C50QBRE9tDVm5KBkBtpWVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724345350; x=1755881350;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S0bibqQdkx89nz67wVsxt+4mjD0L/MzsPXgB/IjNC6Y=;
 b=nu3G8y/t+OqDWAceSpUj4vSCJXRE+OWM9EBBTK+qFD5gudTC+lRhMkhh
 uI2I4zfRyDfdMrCK5/HLu1wuv9jbfPlo/ekGj+nwCj0r5+UlMZwbYTph4
 poQL1M3PhZoGlD8ceEIxnKeMwi1zpLtiucE6Kv4p3kTn/wWKO7vne/4dS
 3sZ7AckpJrHe/orF/jByRWk/ZY3m5DB93MkaERegDscrDJ4TgOGPns4iM
 DVBkekNCXFBIsh3OR9OU6Zx4JmN4N1tIfICtmObJxiEriBRGg0Y3lpRXj
 NRc8QBf4uC666M+cIxNO+s3TF18p9WFPY1rhM96LTdircMQJHnJ8lZFu/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nu3G8y/t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 13/14] iavf: handle set
 and get timestamps ops
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:38 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add handlers for the .ndo_hwtstamp_get and .ndo_hwtstamp_set ops which
> allow userspace to request timestamp enablement for the device. This
> support allows standard Linux applications to request the timestamping
> desired.
> 
> As with other devices that support timestamping all packets, the driver
> will upgrade any request for timestamping of a specific type of packet
> to HWTSTAMP_FILTER_ALL.
> 
> The current configuration is stored, so that it can be retrieved by
> calling .ndo_hwtstamp_get
> 
> The Tx timestamps are not implemented yet so calling set ops for
> Tx path will end with EOPNOTSUPP error code.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Simon Horman <horms@kernel.org>

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Thanks,
Olek
