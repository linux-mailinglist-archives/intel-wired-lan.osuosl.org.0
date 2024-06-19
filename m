Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE58C90F0C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 16:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDCFB41503;
	Wed, 19 Jun 2024 14:35:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I3fgE4DX-oiM; Wed, 19 Jun 2024 14:35:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E27FB41514
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718807746;
	bh=H2/4VLNJAGc65W1HcD+tke5w0gdxBIOeomOlREX4TVI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2FIPfvCYEgsmZZJESIK2G+7OtjDGbZE7hxlTK/JRLTDPZUBy1RjwE3ZqV9tgMMpVz
	 KfPIMubxemfClzFF/iYuYTXZw2zt6KvAldJ/vXE37Sz/2bx11TvZVAgXEgygQLiiV7
	 23f+ChmUBuBc+3hNalM0ZcXiUgKBevg2hCjjRlTuCsjaJxmdjyTh0qJ+w2omxsfUs6
	 r0q8/VokcZM1tgX90oVq6hbxwvkU3ybo1pZaMg+ERsvlsvzRtlGTfQhpX+nZ7qBxkD
	 B27jp+0lSs/gab1Hb1iyQEJ0errZ85P7cOjTPeuoDc659qsihoyfwT+QpFr+Na2UQH
	 6HHQLd2jU74Uw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E27FB41514;
	Wed, 19 Jun 2024 14:35:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 470431BF27C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 14:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F19B40355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 14:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 415x92p12y6F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2024 14:35:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E57214028B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E57214028B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E57214028B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 14:35:41 +0000 (UTC)
X-CSE-ConnectionGUID: ui/TaQheSBa6TEX4xPxfAg==
X-CSE-MsgGUID: 9zGsoJK7Tfe5orXEiRhKaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15983209"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="15983209"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 07:35:41 -0700
X-CSE-ConnectionGUID: YYu+BTtyTmWhwg7Bukr9uQ==
X-CSE-MsgGUID: PQmzItmpT+G+PIXF7dboBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41892723"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 07:35:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 07:35:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 07:35:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 07:35:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TYyAetTLIVtCOE9syMqY557F5tY2zD3GzKPfvtFOdpdjuoxRSrIstZhlZId11eDgBDOh0vZ9H7h7/p1m3GamAqtr61IZvG4OzDb0CQArze4D+qmzKcZ+wC4whrEQjQQB3Y5G35z2stYtMbzYiHk7fQErH9n77J8xO1QbTq/KqxDgf8B9A7zjjXAXtVi4+mj2fALn2cuzAnhXCcZHUQC9KCSonASSggukGtym/hJLJ+eA/eG3PKu+YmJiLoEyssZ2aAvWKsg2WRfopfuNNNkadO7gTI4zwxrKZ9wtlWsBpMYo0BeGJHPy1z2mDUa/aRcqtr7j433Bxx9Bgo7ZumSaPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H2/4VLNJAGc65W1HcD+tke5w0gdxBIOeomOlREX4TVI=;
 b=T4/Ww+/wuDF3a/4DvTcm1G16IMx0SD6dqhuobIreN8u0hi3Mh5aM1yAQrgpTJs0zW/TOE5kObn70sGX88mzG+D6VXGR5N+9E94HVlc+sc0IlQhMcYyGqtBbePjcZJXxrLEU/M/UxTikcKrPCGg0LJiHLAaMGnFuW4isGIrINa8WD5oPgwTXHV4jI9Zw3Y6bb0tA3XOLp9LZStjQqpQMbO9JQMyRsx47nWWW9FgaBi9caUIzPQJKWa0zooCygFLmx5QZgrcvbX3f4Kv2+7khU2bFsK55SlrKvgZtj4QtpXCX8e0S4b/yde6nEL5jURViy84uwiheGGb4oyudGV1++yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB6167.namprd11.prod.outlook.com (2603:10b6:8:ac::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Wed, 19 Jun
 2024 14:35:31 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 14:35:31 +0000
Message-ID: <f98cf542-ca67-43e4-8a26-a809294cd1d8@intel.com>
Date: Wed, 19 Jun 2024 16:34:15 +0200
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-4-marcin.szycik@linux.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240618141157.1881093-4-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0001.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB6167:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a3300c3-517e-4dae-d46b-08dc906d127b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTVyeHc0Zk01T0tuZ01ZTVRFWVh0Y1AzV1drbWpXVzR3RUcrRWx6WUFLeGpJ?=
 =?utf-8?B?dmkwaml2RW5iSDJ2bTN1VmlNMGRoSk9DaVpwekRiVmoxQUd2eGswRTFDbG9V?=
 =?utf-8?B?ZkhmWStVVnVzTHR6dytHVXBrWkNDQmluamJ0NDhYNGNoczFiRkhUWm5ZSlY2?=
 =?utf-8?B?eTR0WS95UTBxVEErcE9kVzJwQWFDYjhyU2hoWVR6cmh2M0VJTDFUNUE3Qzhu?=
 =?utf-8?B?OThsNHA2ZEVtbG8va3djRndwZFdRQ3dIWWlEcHNiNjg5Z1l0blAvdXkzZ1dC?=
 =?utf-8?B?Sm1JRDVYNzJ0aHBLZ3hzMTIzOFhYWVZOenN5WmthbW4vV3pMZUpmTS9lZmdp?=
 =?utf-8?B?a3luZThXNmFPUjJNTkh1RFpCeS9oY0lENDhYOFlwNzUvaHJoenlGN2g3d3Ry?=
 =?utf-8?B?UjkzV2g5czVyd0hBLzluN2ZrM2JCV2ExS0V5WVhWSUcrMUhkU3J5S1BaaXR1?=
 =?utf-8?B?UU9zU3NyVG56SElDczJqWGZ4aER4SDRKOXEwbXArYmZ1Rko1SSs1QmRyUTlP?=
 =?utf-8?B?V0toZGEzUW9SaGtrdXJLK3U3VzZnc3ViQmk4TXBVVktPeGVrN0ppWDVNMUpU?=
 =?utf-8?B?SXkyV2pFOS8zWDg2MHlpZCs3K1FmWWNMc05nU1cyOHh2T0hTRlZvMjdNU01K?=
 =?utf-8?B?c0crN2tuTUE5NHZhRXJKRDgvNTZFVTFob2piQXhKK1FheHZlODBYMWRBTEhT?=
 =?utf-8?B?bkJnK2xXQ0ZrWndlY2lCU2NvMWREUE1Qb002WExnWkRCQ2IwNllEdWR0S0Q4?=
 =?utf-8?B?bk15ZWFYaHdqVk03QTFKbDhVdzNmRHRtQ1ZkMzRGNjdKMUNmVlhMUW5CT0Rz?=
 =?utf-8?B?MjZIT2hjczBLdlhHWEpkRGE0dWFCcFR5QW5DOU5hOEtESG1pYU54SVlPSnhm?=
 =?utf-8?B?YVRseGlqMVBtNGFESUFiTkRkZkVpYTRBL2R0cHkyZ0xNSk9jeVo2QlpPdERs?=
 =?utf-8?B?THVvdVI5UEdWRlFYU2J6emZRM1RCM05CbW5Rc3hGK25JdlhxQ3hSOVZZRXdv?=
 =?utf-8?B?aVArWERxRU1KYUtIeVc3MThjYlJZZzhMYWNZYU9kYURpTFV6TDJ1c2c0UTM2?=
 =?utf-8?B?dTFHYkhmK2Uzek9PTUhFL241c1FQc0tBQWNQUFR4SFN3SHhvcitKK3BPZFl3?=
 =?utf-8?B?TkVOaUwwS29mNXdxL2VSN3dyWm42RXZnbzRyS3h2bCtZcDdIaU11YnRYTGdq?=
 =?utf-8?B?aXQ1aFptMnRnY3puV0tTb3o1QlM3YzJ1YnYxV0x3emJDVXo2Q0xxUTFOMmQ1?=
 =?utf-8?B?YVo3cEVXNlR4VUY4NXhlMjhoenR6c0owOWdTZUJtM0FRckFXeFFvM1ZMODJC?=
 =?utf-8?B?cUU3Qnh0bjdIRjluell6RWVNMjlpbFQ2WVM0dmxGU1g4ci9ubTZnTVRPMkgv?=
 =?utf-8?B?Vm1ZM0ZTNjNrVzVZTGZoZXNtYkpPZExqWEd1b1lXK1FVdkh3YUtJRVN6eHVm?=
 =?utf-8?B?RDM3c3Z5Ym9zUDVxb2NESEFGczFmOHRXcTRNSC9KVkNNZ3FwSWh6Wk9aZHQ5?=
 =?utf-8?B?WklocEFmRjVnREtDeVFWdVpYSE9NVUpOSmhocDgzV243TXlkN09VWjNhbHVu?=
 =?utf-8?B?VnBZa2JNTlQ0QURCRitQQjh0a2lwNExoYzB6cVBFMkl2MThlbEJlQm9IY245?=
 =?utf-8?B?Szl1cFNSY2M4emI2RWRwckhmdmUxTjBnbFhFQXgzQ04xVjB3YlNockRjemdh?=
 =?utf-8?B?Z0hYUXdaZ3lQMFhPb01qeHRMNWNTaC9iczgzYTg3dk9tcDRjZjJYb1VmUnBR?=
 =?utf-8?Q?B6NUx7dyjo0UBijQfIxpoT3Y1vOiwoB0ZNoxfUE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWdyaVZTZ2RKVlhYOWJxQUM5Wm82elprWitoK0FQZ2dDY092Qk9QTWw5YWZz?=
 =?utf-8?B?djAzV21uenZ5K0RCRmcwVHBlZU1lWEtDb3BrcGdFUTh4bWJtbE9qQ0dzWDhF?=
 =?utf-8?B?MlBjUFJ4NWZJb3ZyeVczR3ROYmxNbGJzQ2d2VDd3UzVJZmRGc0tFTVp0cUhD?=
 =?utf-8?B?elRtWDgvL25oK0tLRlR1Z1YzV2tOcU1VUWkxM0FseFpoZ0o3cndFRDdRZHd3?=
 =?utf-8?B?SmFaSGhUZURKSVFCdHNYcXdmRHhFYmltM3ZBYTVaZUhwS0MyQ1FOcUNSOTBZ?=
 =?utf-8?B?YnN3dHVPZjFLSWNINC9BT0REUnlRVGtBbjRra1BEcVhJODh4RitjYUVsRFYr?=
 =?utf-8?B?dVgyK1A4YUdXdFpJWlIyTFNhQk5XaE80R2U3eGhORDRTaFlCOEZ1M2lVTmRB?=
 =?utf-8?B?NDFVWW54eGdDZlQ4anZBTVd5Sm9KZU91QVpCVXdMZEFYNDhWVnRiN2F6RmtJ?=
 =?utf-8?B?YWhWa1F6R011c1ZYcThRbGVUY01UTjZLM1h3VDdoc2JTSDk1eVpNRXJvU2Zr?=
 =?utf-8?B?RXNnRkZydC9tZkxIbjNsOXJ6NVFES0FFNmRTNnZkQmtycEtsQW8yaStNQ04r?=
 =?utf-8?B?QlFoRmExWjFndCtBLzFaQ04yank1ZXJtSlBwTUVJMzhXS294UXNUVWpEbkpx?=
 =?utf-8?B?T2tRTTd4N1cxc1hmUjJVbDNBcHQ1aXhTa0ZsY3lSdEdVWThYNVo3REdKSDJ2?=
 =?utf-8?B?VUlqeWczb2JCUFRuTjNiM29sUkl6UkFXMXFHenUxSnllNmdxT2g1OU9TN251?=
 =?utf-8?B?NDJPNDdUQlNFK1IyR3dYYnhDMGszOXFKcmo0WjJIVURKckg2VVdJMlRIWHBv?=
 =?utf-8?B?eW5nZ21KaHdsTDRRdkZCcDRPeUx4WkpnUHNYZEc1M3JhOFVoSnBzVXprYUlm?=
 =?utf-8?B?UHNHZWpxNkxkaVB3QzhGeGJzN1RLZ3JVMFNqajdlYlU3WER1VW9neW5zUVpx?=
 =?utf-8?B?U1U3WW5nSThmaUJUTmxtank3UkdURjZFQStjQVdDTlAvZkdTL0Z6eU5uanFm?=
 =?utf-8?B?Y3pTU0VsMzcxVEx0UnF4Vzh3SFlFMWM4cUdqRzQrQzJNcHVkQUdvSTd5cFU5?=
 =?utf-8?B?bFR0QnZiNUxPRlcrOGtLRkZCUEJDWjZKL011TFhyVU1RVW5tbkNCbkV2dVUy?=
 =?utf-8?B?eUZnNWd6cXA4NlNmb3lZWHJKaDV5UXRGZk1OdmVvRkdrYUEvbmRmQ2FrU2JX?=
 =?utf-8?B?SnNnUXF4VXZNYlcwUTBIaVM5K0lyQWJ4SjNEVGIvd29VYTdpTSs5UzM2UUpy?=
 =?utf-8?B?SG5XSVh6Y2hwS21hb0NkTWQ5RzA5amRwU3Nsa1BLaVVkbTdkaThjMTY1a3FE?=
 =?utf-8?B?V2JDQWpobXFzODluWllGK0dqaHJ2d0haalNWN01OdE5QOXNPMTNMdEhPOCsz?=
 =?utf-8?B?dWZ2ZFZNMkdhNVR1aHVybFJuNUovZm1WSUtNZ2pVT2kvdDFMUk1VemVSSjU0?=
 =?utf-8?B?UHVyTTQyTFFneDJQUjZJaWlQS1lYZThjTUZNV09jaG5zSi8rSURCY1FpSVgw?=
 =?utf-8?B?RDFEWU4zV29vc1FVV3o2WWFJR0VJZlJkVHIyV3Iyb3BEVHIyTXI3ZXNkejh2?=
 =?utf-8?B?N3NuR1g3bkxFZFNVdnF3WGpsOFVNalpjNldOV0N0UVlsdW9RR0VRZ1pqWURB?=
 =?utf-8?B?OWs1MGlraDNqdXFveTI2K2dmeC9QL1haOHRWeWlyZktYRm1EUThqdzJGS2xK?=
 =?utf-8?B?Y1FNblA0K0lHUENNMGc1aDJJUC8yemwwYjJKMFBYNFJvZFdzK3kwZDAwTjdX?=
 =?utf-8?B?cU5xb1B4Z3BleHZ1ZXFtUWdtRWY2cUZBV0I0UVU5YmdJQkhJWW1rY1FEMUxs?=
 =?utf-8?B?Mk04NEJkci9CcE15eXdncFBGdFJDNFNwWUkvZkI2NmRvbW9XeXMweEVyTkpK?=
 =?utf-8?B?dWFxVThBTWs4MDVsRUprVFcvbjQ2b0dNbmF1WE5yR0ZUWEd2UFJUa0pJSjJI?=
 =?utf-8?B?dERrME5nYlA3UDFFOGFJVHE3bkc2R0hQWDU0eWF2aHB5eTNqK29yQkNGVjdP?=
 =?utf-8?B?R1ZXUzJmMzZLUGFkMVlGMlBBbjZ3VHZQSndNaFhNb0VaR2hQZmxUZVh6LzdE?=
 =?utf-8?B?aElaZmN2c0FueitzMlYwN3dRdjV1M3BTL3NjQmZRZXdGZlJla0E4Q2thVkhk?=
 =?utf-8?B?Vk5DeEJhQUJkLzMvUXV3aU90VGE3RzFJWmxjaTg3UHdZaGE2MDNCc0FyQnpL?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3300c3-517e-4dae-d46b-08dc906d127b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 14:35:31.8141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AWLzKJZYGMLf91sDkInbec4NTR/jpAeMwruO4ap2ay8XoUuZo1YAYYkCy95GstYZh12cPen0breTYK1mO6PnWOmMROnFkFS57uPziEuQLOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6167
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718807742; x=1750343742;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YLSXGnSxPxHQGaUX1GU1hpIHejlTYz6eR3TslNd+OO8=;
 b=HNeWcijUcD9+M7FkfBIO/vf32WolJTQ116VKkv4mZmONUrrthUuEFkQw
 K6uJKuQkRoJWpXNyz9VrTSwpDEVAT4+m7uHJNrHWhTIsJ2CSKeotBuvOj
 k9axSQ4hVbanRuJ55HXNg7dOqRJV53RBQ75t0FjgYYoB7Pe+LAQrpaGSz
 v04Eb2y96Q6iIj4b0TExTPvQTxS8yARfJAHGUrrCmmpylPDwyTt9JHimx
 NinU3cycDjk2M5onq9FxUSjCh3FXUcfkeqO2UXt97fPbwUgd2EMyxbjhM
 wY50tnKTSikFZb3L/3/LbrMBd3mm0YQ+x88SAUvQoy5rpZQvmlxkdkGaH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HNeWcijU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/6] ice: Simplify bitmap
 setting in adding recipe
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
Cc: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Tue, 18 Jun 2024 16:11:54 +0200

> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove unnecessary size checks when copying bitmaps in ice_add_sw_recipe()
> and replace them with compile time assert. Check if the bitmaps are equal
> size, as they are copied both ways.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 24 ++++++++-------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index da065512889d..2f67fbb73fd1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -5067,6 +5067,10 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
>  	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
>  }
>  
> +/* For memcpy in ice_add_sw_recipe. */
> +static_assert(sizeof(((struct ice_aqc_recipe_data_elem *)0)->recipe_bitmap) ==
> +	      sizeof(((struct ice_sw_recipe *)0)->r_bitmap));

sizeof_field(struct ice_aqc_recipe_data_elem, recipe_bitmap) etc.

> +
>  /**
>   * ice_add_sw_recipe - function to call AQ calls to create switch recipe
>   * @hw: pointer to hardware structure
> @@ -5187,13 +5191,9 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
>  		rm->root_rid = buf[0].recipe_indx;
>  		set_bit(buf[0].recipe_indx, rm->r_bitmap);
>  		buf[0].content.rid = rm->root_rid | ICE_AQ_RECIPE_ID_IS_ROOT;
> -		if (sizeof(buf[0].recipe_bitmap) >= sizeof(rm->r_bitmap)) {
> -			memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
> -			       sizeof(buf[0].recipe_bitmap));
> -		} else {
> -			status = -EINVAL;
> -			goto err_unroll;
> -		}
> +		memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
> +		       sizeof(buf[0].recipe_bitmap));
> +
>  		/* Applicable only for ROOT_RECIPE, set the fwd_priority for
>  		 * the recipe which is getting created if specified
>  		 * by user. Usually any advanced switch filter, which results
> @@ -5256,14 +5256,8 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
>  			set_bit(entry->rid, rm->r_bitmap);
>  		}
>  		list_add(&last_chain_entry->l_entry, &rm->rg_list);
> -		if (sizeof(buf[recps].recipe_bitmap) >=
> -		    sizeof(rm->r_bitmap)) {
> -			memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
> -			       sizeof(buf[recps].recipe_bitmap));
> -		} else {
> -			status = -EINVAL;
> -			goto err_unroll;
> -		}
> +		memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
> +		       sizeof(buf[recps].recipe_bitmap));
>  		content->act_ctrl_fwd_priority = rm->priority;
>  
>  		recps++;

Thanks,
Olek
