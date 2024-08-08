Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D472794C5AE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 22:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4945380B8D;
	Thu,  8 Aug 2024 20:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wk4fObvAczcr; Thu,  8 Aug 2024 20:24:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A73380B54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723148687;
	bh=icmmPkrUzbFUV06T/ok71L7GTWYkdrsJCSRlCqGN9pc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LfuT23qzADfW1rHgn3pT1sNU2dSHhr2uB/kR7dlAOWE+QdzjV9gPHWRTunFkUiHbq
	 06tPG3xuJm5qUWXOPcqcblquqFHlxOOeUY2YPJo+JJCETfthl/EmjPyFDkX7YvNB8e
	 Y9hrP7mYBKy4Df2afyp8Iz/LFFbTiZGyw8xULAgs33NoVn3+ZaymXt+TmsipsNLMD4
	 n2aaHIoz5EkVPLSSdhPhv9eZLDggYDxuVHpT0CyhWKMvy4Cpp36zVu2Nx6wxnIlbTL
	 8xxWT3qc/TgkumrskLoF5xbC+bugIV5PVeQ0eP4Kzxtyx3+2zJW3kZ6yWZNEZMU/zb
	 BPYD5GLssxZpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A73380B54;
	Thu,  8 Aug 2024 20:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03B4E1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 20:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E428A80AEF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 20:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J7QuzjOPyAzx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 20:24:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA1C680AE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA1C680AE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA1C680AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 20:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: IsC7uMTEQpOxafGYdXHWTA==
X-CSE-MsgGUID: qqcaXdhYSOOIM5sjn6TrXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="38758609"
X-IronPort-AV: E=Sophos;i="6.09,274,1716274800"; d="scan'208";a="38758609"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 13:24:41 -0700
X-CSE-ConnectionGUID: KMqHQouDQiaPc4OmGNushA==
X-CSE-MsgGUID: AZcgVDAEQ4WTglxVZBkHvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,274,1716274800"; d="scan'208";a="57571601"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Aug 2024 13:24:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 13:24:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 13:24:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 8 Aug 2024 13:24:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 8 Aug 2024 13:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WwFJWw/CnL9jSfQH1a2BMLM6sE0njGSGSUKxXT2tx9C0ynprDve/kKCpDG3cHCkiNDXRcwldda3TWKur3zojbU5oCyhaLBaYUvoyq4d8Q8E6SEh9jVxJK1EcCDcXwTrDxLyKUezQe3bdV1HZk3NpAHh0ebEBm2qxe/3P1dK2D7szc3WtvtDffeQ28vA4Y6F7/TSGAZmhfJ0Bcyax9AqOLZOERQId95a43NIPv8hMRF1732EeNpHwWwW2U+RfQebxJ9DS+wsAup24uddemPncAjBIfiruLqmovJJa/Yqf+EejKsGetyXU7skuEJmMvAVY1nvEANpe0z6A0uF21SeRjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=icmmPkrUzbFUV06T/ok71L7GTWYkdrsJCSRlCqGN9pc=;
 b=IxheIjRGWLz1M9RIQCfE8UZzvBAvalecFose+7kA91qwrCRvaksbkspqc91bG1aOIXW6pr6b5N2GDSWMfmcWBjgScMT/2HRnw3jmDk5ivpC5fb82SB8PQWmwMBV0/s531ppz28imU5sQSKfdTcHRIjzPofeHt+bCY/KO3orj4E2y7rHD3mIJLPb69IUz3SiWMzVSxIEk/znRemkWJbSlQXhtWO7hGik5BLuLbkkWowAZ+YvptGE5b5DwuZKQgxG7EBGnv9z+kZTD8lfJOi4/YWb9In84lVv6pQkXOSVJo30o3br7UMCDUkgbxwrM1LRmfP5ThUsO9VbJ1zcnbSLwtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB8082.namprd11.prod.outlook.com (2603:10b6:8:157::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.30; Thu, 8 Aug
 2024 20:24:37 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7828.023; Thu, 8 Aug 2024
 20:24:37 +0000
Message-ID: <c183cae6-865a-5669-5dcc-0081645ddc30@intel.com>
Date: Thu, 8 Aug 2024 13:24:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240806132348.880744-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240806132348.880744-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0015.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::28) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB8082:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d978f45-127c-4c55-1352-08dcb7e81f78
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTkvR1o2ZFdQZjBQUU5rekNZTDkrNGZ3OElLUUFkbWhVTUxtaE5IYXpKcUZ0?=
 =?utf-8?B?YnluT2RoQTFpanMwQW0wV1JLdGVZMjNEUWkvUHVENzE1WDZGaUpxZ0NiS3Az?=
 =?utf-8?B?Mnl5VTdxUXNwTVlaOVNaODJTRk9DY2JPNVZWb1lpS2IyQ09GUGEydVBnelND?=
 =?utf-8?B?VGJyaDY1VDlEamRHVDZvL0YwOFpOR09jNGNUZFdRb1dBYVN4YVdtQWx3VWM5?=
 =?utf-8?B?alJzSUUwWVcxMEhFRnRtbTdJcjBuanpzckRSays3a3dZaFo2eFJLa0Ftalkw?=
 =?utf-8?B?L0IyQ2FqUk1VRExTNDFLUWpSK2RGTUdkSS8yTmR2V0VyenBWaE5BRnRBbjRZ?=
 =?utf-8?B?TXZEdXRMb2U0dHF0by9KNDBMdmszL0hxOHpPR1dsN0cwMUc2MlN1V1FXL1Vq?=
 =?utf-8?B?UUJBNWZURHRXQzN4b1Vydm9LZnBQcXlUQmJ3SEdRSW5CZUlOcG9td0lhWnNp?=
 =?utf-8?B?Sk9WckdtaVBWQmkvVmFUZWI3cnhtR0RJTGdmbDJsS1JyL0pjc1dtYzM3V25D?=
 =?utf-8?B?Wm11bGNhVVoxL2xyZkJzaGVCZHJ4cndaeXlsOU9wMldvWno2SWgzckR6ZnRB?=
 =?utf-8?B?d0hoVEkvR3c4a2E2Z1FSQnhUcVczdlQvNGRtN2hWZmdhaDJpVGlXNmJkNVNY?=
 =?utf-8?B?ZW5YUjdpVWxpcTBTOUZBa0JuV2U3WWVLVVRwMytVNEc2VnJLTTIyS1ZORTY5?=
 =?utf-8?B?ejNsVG5pb1I1TnI5KzFINzNjTlVad1FlRFUxQmVMb3IvcHpIRHgvWnEvMmh1?=
 =?utf-8?B?Rlh5QjFRbUI0OW1SZU80Sk1WazVoMXE3QzZvQkJuajF2K09lSnY2Rk1UZzdP?=
 =?utf-8?B?d0w5SWtqd3RXbVYyWkdMcmV4SEdadkRFdFJjUWZzZlBnd3g3QS8ySEtPZ1RN?=
 =?utf-8?B?bjZzNGFTa2x2dExJck5zd05Cb0tjdm5vaThBWHJOR2hKSlJ2OTFUUThQUXpG?=
 =?utf-8?B?Z3JBK3RVK2xmcDFrKzJDanJuR1NiQkVRK0ZMcmRmNm5KNEkwM01MTk9oa1hT?=
 =?utf-8?B?Szcza05qRG9Bd1dZZ2dsbmo3YzFHTWFjQVJ5VTYzSUFUeEQ0VGhnQnVpOUJG?=
 =?utf-8?B?MW1QblJqT3dzQVlMR3BpaWI5WkU0WlIwOXJUYWhWcTY3WWVaMGFhQVdqZ1FR?=
 =?utf-8?B?OExHQm1GRU9hR1JoUGNiMkVNd0FaWjNLVXd4ZmJtQ1pzSUgwa3VQdHBrUm40?=
 =?utf-8?B?QkZZWm9xNXJ6dWs3YTVXdUNVRFZTTDZPajQ1dWJPWTNOQWZZaEdDZ2RMMm1Z?=
 =?utf-8?B?ZGxOZDBKTUx6czk0dC9BVmNrMUNTV3FTZDkyTUx6MnNKYlRra2RFRHh2Y0pj?=
 =?utf-8?B?TlpiN2U3ZGYwUnVLVFFXd3U1NUc0cTl4dlMwT3hUem9DUFRHWmx3bUU1M1hm?=
 =?utf-8?B?QlV2cTIwMTJSd0xzZ3dVSU80eHpVakV5UXhJbndBSy8vSHcvdlltWDdqbmpL?=
 =?utf-8?B?TFpKRTdDS05rajdrVXdwNlpxb0MxUWIvaWVCbnZxU1VDdkZpT0hWYlNNRnJN?=
 =?utf-8?B?RFJKZlRHQmp6a1A4ZEtRMzZobE0rUFJER3VpMjh1L0R1QWZDak5yajluR1Ba?=
 =?utf-8?B?Nm1MWGRGNkxlOHhkb3kyQkY0N01FN2wvVHVaenVsY2VMaVhTaUhMQUIzYldu?=
 =?utf-8?B?Y0RYN1dwU0tWYmdQR0lESzFHZHZ0ZE8yWGhjNnpQRjArWEdEeVJCbGxDR2Qw?=
 =?utf-8?B?SDhoUjJtaWx5bnBEamFwWStRckVodm52bGhEdG5lU1NEcU9JN04wSSsvQ3B2?=
 =?utf-8?Q?QAOzpehp2FroUUeXwo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHJMUnVoV3EzUDdLRUJTNjNEVmQxeHltWWtZU3FmVE9HQW05NE1ONWVXcWdl?=
 =?utf-8?B?bGo4bS9neGFUcGw3K0ZaeWk0MFQyZnF5YVc2amxFU1NYOEgyaDc4Ym1obHRW?=
 =?utf-8?B?dUxidDJQOWZralFZc2VKQjhuQnlTQ3JpUElMU0ZPTFB5YXFDZnpjYkFxZXh1?=
 =?utf-8?B?SGM0eStBbFVaSlhYSUlKR3RNZUJOZGpLUzZ0MzdGczJMNGU4STZrZS96MDhM?=
 =?utf-8?B?WmtyeHZkVlFSN2RUWXVzR0ZCbDlzelhseWVBeFZaT3MxTFRTL3JwWHV4NWxC?=
 =?utf-8?B?bHB5RzBqR3FaSm1WMmEwdk8zd1FFWnJQUFQyWVc4WVdTeGZnZzMrekVTYXNF?=
 =?utf-8?B?Y2loMU9wNTMySW9sdW1xSEU2QnJoSkZzVG0yK2d3T0VWTEplOSsxWUl2RGVt?=
 =?utf-8?B?QXl1Mkt5R0RHRDd6U3NwTllpSGsvSzdoOEZ4U2V5NUZKRUlxN1dUazQ4SUNz?=
 =?utf-8?B?Z28rWWY5aWxGdXQ3R3Bhbm1oU0xyeFpRWUdWUDlIdUNEMkIzeDBnYzBFdSt0?=
 =?utf-8?B?U2ZvazFsK3h6SXZoUFZrK1F1dnFvSWhBUG5vQ2F4RmZTVnVKeTIzVFZRaXA0?=
 =?utf-8?B?MHdXZGFaZE9lcWthU2RQQVkxNHhKbndYRUpkalhoY01jVHpHZFMxS3JYWk95?=
 =?utf-8?B?WlpndTlMWWZJaFpsY3hNN3dYamxZTngyODJTcDV1Uy9RKzVNd0l2V1hkN1Zr?=
 =?utf-8?B?c3MrRWxNTEp2OFBtWjBvdW1YRUQrUFpRUURxVThkdFhNdHBZbHd1cEFxUnhz?=
 =?utf-8?B?UnQyMWwydGJUWG14WVhNYmcvWEU1Q3J0WGh1ZG5jU3FvUWdPN21veXhHV2dD?=
 =?utf-8?B?ZWJoSjdqWGpLSlZvZ1VtYmVuODVyQUNlcXZON0Nudnl2cFhwTjBscDBGbThM?=
 =?utf-8?B?R3Nna2w2SEFxWWZMTHNISFd3THdGWDYzQ3R0SVdnUmErVzZmZElZRjdBVHBk?=
 =?utf-8?B?eDg4QnVVOE9qRzVQWFNZZjNsMVdVUVZRL05HVmNwZmpUVkhvVlZRb3d6dlJW?=
 =?utf-8?B?R0JPaDZIZjE2TS9TZkJXNXVqY3N0RVk5UW82WVhaZGVEbVUwbTR6SWlOd3Np?=
 =?utf-8?B?WmIxWjd1dUZQb2NyaUU4ZFk0M044dUMwOWFDTzJ3aFRYdWJEZUkxS1AxMkVy?=
 =?utf-8?B?ZDRSRkRoeGU0Y2xUNjZoUXpPY0l1dWhHTDRCZVYyeVhtcmN6VEVRKzhyellJ?=
 =?utf-8?B?L0lXVkN0dTVTNUJtWEovT2RBaVNlRkZUZmxYSWJEY3gvWlZERmNJTENnYTJr?=
 =?utf-8?B?QUw1TnVCM0h2WkN4MTlBY29aNjNyUmpIbis2Qll5VUZKa0NjQU9jdFlEUWlO?=
 =?utf-8?B?eFdGNld5MEFGM0psOGo2eVpxcjBsUUoxemF6aC95UGwydkl2WDl2U012TkVP?=
 =?utf-8?B?ZVBqQ1YzY2g2VEc4NHdWK3B5aXpycDEyd2NFaHQ2YkVqK09pZVd3b1JzclZJ?=
 =?utf-8?B?VEVmT3VTSTYrSlV0dGpHN2hzN3FIUGlZYnNZWkFYSkJsUEtQaVovditVRVlv?=
 =?utf-8?B?QmFHaFphMExlM1pSdjlBdCsxNGRjTDIwRGc1ejg1ZGllZ29kMkJ0akVuTDkx?=
 =?utf-8?B?RngzblpaQzNYQzdwYlRlOFRnQTNlU0Urc1JGa1dGbEU5Tlh3YmovdWVhUlVF?=
 =?utf-8?B?SVJkN1ZKWXNUZS91RWtVZXU1YVZlRUNDdk1EYlZrSXorbGdHTEIzeC9BM3pY?=
 =?utf-8?B?ajZ1MkVRR3ZURUtUYlV1YVorYnY5dzN2eGRCVHZlY3FucjJ2UVFoczFtbWgv?=
 =?utf-8?B?Y2ZwSTd1ZU9hc2RrZEd4QUE3ZllscEQ3OVRiWG1PVFdCTzg2VUFHTmJ0cGJk?=
 =?utf-8?B?WGJIcG1JUmJ4OVlBZmdQc1Y5blZhL0pwSDFwZWtHbXlEckhvYzZUMTNYWkRC?=
 =?utf-8?B?NTZtSEdmY0pEWk5ybGdBam1ZY2ZKSUhuSkNrdkxyeHRBMXBlbkR3NHUzQ0dS?=
 =?utf-8?B?ZlpOZTBONll1RXE3ZlNkSVhmb2dURExYc1dxbi9hTytXTzY5MmhEZmo2VDNt?=
 =?utf-8?B?YWo4QUFPcVBaZGVrL0I5cmdOU1RkRVBlUkU4MXRMU0p4ZnA4RSt4MGRKT2ly?=
 =?utf-8?B?NEtWVUNCN3Bxd1BXNm1aSUxSeDU3MytQOXdnMXFhaVY5eWplWFhCaGVYdC8r?=
 =?utf-8?B?aHU5ZVJzZVBOSXBYemsybGt3ZzM4ZUsvR0Qvc3lYL0NIL2pCeWExNmZaMGJZ?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d978f45-127c-4c55-1352-08dcb7e81f78
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 20:24:37.0344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QtiSdEx/miMMhX+fdvkIndUDkYIqFtqK/SizUWliRzhmAHMNFB1E9rfMWduSEkdH0mnZnXa0RYS06ZpJ8tCm9cc/T3BE3gk3KkHm7Z+2xg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723148684; x=1754684684;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2LxT+knpMy7xsps+SPLShQK8sPOKLsvZf3a8zGcEYfU=;
 b=EZAbvm0bjS4mU+caoDzilBP1bL/V4KgL1HZZ72ZOld+7A2Kmm/k04tse
 Wb03N10snTZAiJ660w4QEyqzbpIoV5VEmtUbWgZDVw5YrG4Q1P+BrvbwM
 WCZPMBXEXEDnf0CBYHreNuTR6w7P/rgqP1dtJ0QtU79qi38vqtQIKE5TZ
 UGjUEy/vqISrmpYCTpI8Hgi4y32boe2oOVh3Ocxj57JHTrwSZENDUbaBe
 087XdjMgUw08mNXuyZFKH15A1fcHVyNm6TtJO12tsM6WEzTKi1tSQWr95
 HGXWyYx0kKoRcxejqQpDtnW0jOMIjsEF0bK8Sh+kwNnXpuqxrRVVLurRO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EZAbvm0b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: avoid failing
 the system during pm_suspend
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
Cc: yu.c.chen@intel.com, todd.e.brandt@intel.com, rui.zhang@intel.com,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, lenb@kernel.org,
 venkateswara.rao@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/6/2024 6:23 AM, Vitaly Lifshits wrote:
> Occasionally when the system goes into pm_suspend, the suspend might fail
> due to a PHY access error on the network adapter. Previously, this would
> have caused the whole system to fail to go to a low power state.
> An example of this was reported in the following Bugzilla:
> https://bugzilla.kernel.org/show_bug.cgi?id=205015
> 
> [ 1663.694828] e1000e 0000:00:19.0 eth0: Failed to disable ULP
> [ 1664.731040] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
> [ 1665.093513] e1000e 0000:00:19.0 eth0: Hardware Error
> [ 1665.596760] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2975399 usecs
> and then the system never recovers from it, and all the following suspend failed due to this
> [22909.393854] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x760 [e1000e] returns -2
> [22909.393858] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x160 returns -2
> [22909.393861] PM: Device 0000:00:1f.6 failed to suspend async: error -2
> 
> This can be avoided by changing the return values of __e1000_shutdown and
> e1000e_pm_suspend functions so that they always return 0 (success). This
> is consistent with what other drivers do.
> If the e1000e deiver encounters a hardware error during suspend, potential
> side effects include slightly higher power draw or non-working wake on
> LAN. This is preferred to a system-level suspend failure, and a warning
> message is written to the system log, so that the user can be aware that
> the LAN controller experienced a problem during suspend.
> 

Could you please provide a Fixes:

Thanks,
Tony

> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=205015
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 19 +++++++++++--------
>   1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 360ee26557f7..f103249b12fa 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6671,8 +6671,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   		if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
>   			/* enable wakeup by the PHY */
>   			retval = e1000_init_phy_wakeup(adapter, wufc);
> -			if (retval)
> -				return retval;
> +			if (retval) {
> +				e_err("Failed to enable wakeup\n");
> +				goto skip_phy_configurations;
> +			}
>   		} else {
>   			/* enable wakeup by the MAC */
>   			ew32(WUFC, wufc);
> @@ -6693,8 +6695,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   			 * or broadcast.
>   			 */
>   			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
> -			if (retval)
> -				return retval;
> +			if (retval) {
> +				e_err("Failed to enable ULP\n");
> +				goto skip_phy_configurations;
> +			}
>   		}
>   	}
>   
> @@ -6726,6 +6730,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   		hw->phy.ops.release(hw);
>   	}
>   
> +skip_phy_configurations:
>   	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
>   	 * would have already happened in close and is redundant.
>   	 */
> @@ -6968,15 +6973,13 @@ static int e1000e_pm_suspend(struct device *dev)
>   	e1000e_pm_freeze(dev);
>   
>   	rc = __e1000_shutdown(pdev, false);
> -	if (rc) {
> -		e1000e_pm_thaw(dev);
> -	} else {
> +	if (!rc) {
>   		/* Introduce S0ix implementation */
>   		if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
>   			e1000e_s0ix_entry_flow(adapter);
>   	}
>   
> -	return rc;
> +	return 0;
>   }
>   
>   static int e1000e_pm_resume(struct device *dev)
