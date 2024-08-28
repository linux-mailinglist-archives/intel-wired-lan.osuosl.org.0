Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E81F9631F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AC8960A93;
	Wed, 28 Aug 2024 20:39:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XLIWZ8LqLfKg; Wed, 28 Aug 2024 20:39:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A39760ABA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724877593;
	bh=samaoLSoCY3GWw/ZNP4VByAmnSxfIqDFr/oRGap3V5w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B0oYbd7hz56YHBAOOGvN+n6qeiBrhGqykBljis5FZ6yngwmEKG64LmQbpby00r8tH
	 +qbV5VTIuDH7YrZogImO4VQC8jh82ldBH2UggCdEN2jdZmdl0xVu/6r6Njlyk7Hrub
	 fCfKK8qr5YbpTNFJKgjm8sRb1h+PnHeeB9cptzS81RQZ26iYF3dP4viT5RGWt4Yo9z
	 qS4XN4eeC4y3PpkCE/in3DZsLSM8LmC7AqIheYoiFJHr9y3datnBc1gEDTlKcrJIYo
	 HabXSOVs279VxsRFe5dutytCwZW79p45DdIhBbzvxOS5B4M/fhVXwEMlNeusDlF4sR
	 wKBWGnA6Utk+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A39760ABA;
	Wed, 28 Aug 2024 20:39:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DE5B1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4948440B10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:39:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OvL7N3G0p8tQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:39:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9C4BC401EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C4BC401EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C4BC401EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:39:49 +0000 (UTC)
X-CSE-ConnectionGUID: UA0xMRaeTOGiwwal/LUGWw==
X-CSE-MsgGUID: qB/JSqsjSKWhSCDRYk9dDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34093086"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34093086"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:39:49 -0700
X-CSE-ConnectionGUID: H+c1PQdYTRqJxFaWAC1V6A==
X-CSE-MsgGUID: bn3aj/LyTEmEh8SX/b/FAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="63297400"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:39:48 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:39:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:39:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tUZajoTqPrptkDy0VxrQmsJMQBla/xkz857rjs9r0MM2Qr5TE7D559cuzJZ9miYx8ulI8wqajjeEtyVjTV6q6YvGehSltDbAf2zA+xmgXezu8IzSnXDV8Kaj1cJDqYCluCm1Qd734TagJfQTFPc1E+NfUGfaT1avAGeSMLXRPzS9t7k1QPmPS20i8UMGEQ5/XAK1fnFk0Fa8YC9O2qw0BQWYG3X2UDJiUuj2+J4kSsBPZbSNKgu5bMHByrqy/3BNb6goBhIuFM+wEQqYYEJNARTqG0X4fJAl8CzuExEz4/8pXJIhUIp8tXFtZhEM2cJJz3uYuyWJnqDWnjhc/IrdBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=samaoLSoCY3GWw/ZNP4VByAmnSxfIqDFr/oRGap3V5w=;
 b=bKPtd453vJolayg+ktxhrY72F6sOrsLAtA9KhpJaQybirtypiXbwOEeRuh1ugA2A47Ju1qK/Tzd8BrUKTL/mP9ZYXN/os3I4jJnj1J/ls38th8oSPSJGsg2kIIYfAiOTa3ND5zqL5pTLehHDd0qUgnXO/7U2tuMctkq34StU7xoXXMasL822p/RiL41kCM/URDc1xR5ssaymH1eOvbl+8f45Vfzj37y8yJOoK/1mOBO984VNuXSWo7+LLSMZ2o2CggBDo7gtdUT5WgiL7Gz0CKT1sIKZdnTZJI7G2gSoeV/OfhZu3oervfODBJueWo8XK/w/qISG+R9Od7ZL1gXYIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 20:39:46 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 20:39:46 +0000
Message-ID: <9fcdd7fb-27ad-4bbc-984d-703cc113ba61@intel.com>
Date: Wed, 28 Aug 2024 13:39:44 -0700
User-Agent: Mozilla Thunderbird
To: Jeff Johnson <quic_jjohnson@quicinc.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Vladimir Oltean <olteanv@gmail.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 <"netdev netdev"@vger.kernel.org>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
 <20240827-e810-live-migration-jk-prep-ctx-functions-v1-6-0442e2e42d32@intel.com>
 <ecbc8cf0-94ae-40a7-b55f-5008b9486123@quicinc.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ecbc8cf0-94ae-40a7-b55f-5008b9486123@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0249.namprd03.prod.outlook.com
 (2603:10b6:303:b4::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4783:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f13637b-5ad3-4adb-71d9-08dcc7a18db4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VU9tS0VhcjJ0MWpMSjFQWTNVbzZFRXJYeldCcjNQRWdSZi9UK1ZMcnVwdE9S?=
 =?utf-8?B?NDJ5YlMxaGFqaDZlY1JjdkdJelk4QjBiMmNUdVByV2l5ckNrZ0p4bVViVjJa?=
 =?utf-8?B?MGo4V29oYVYydDdiaDB3c2d2ZGQ2dTB2NVFqN09PK3A0K0luVmNodXZJdFZk?=
 =?utf-8?B?Tkx0N0c1Z3R2VUZ1NHFtNEc0eFk2dURsb2xZTXFGby9ieXlMZTNFMERqNUR0?=
 =?utf-8?B?cXNtQzFHYmNVaEsxOEg2L051TVZRTkVYODY3aVQxRTZoMWRFU0tjUkJEZnFk?=
 =?utf-8?B?VDM5SHdxWHczaklGZGpEK293bSsvR0xkTE5pWkp2ekF2NlZ3VjloMzEvTFo1?=
 =?utf-8?B?NmhxdUtESDEvWklLVFpzRVJmTEJOZ0QxVzVzc2tLZWpvZjhtcnRCbER2T29R?=
 =?utf-8?B?R3VJU2psM2FFZWtKS2FDYjcwOFd1bnB3R1praFdyYktLOXpsaU9kY2NrNW52?=
 =?utf-8?B?WFVSZm1GT01LZ1FBQ2ttY3B2LzVKY0xpeUd4aC90dG96V080K2F4NVM4Q2Nh?=
 =?utf-8?B?eGJrUDZ4WmVBMm0za1N6aGRnWDJEVzNWQW9oczZxbnVTMDV6TElxZm9RcEtp?=
 =?utf-8?B?NTZLUE16NmxMZ0J5SzBzLzZUT0JNZGFBb1VDSDgwV3NHR1pXRmQxb29OS3Z3?=
 =?utf-8?B?N253MzNidEJsSml5aE5VTWNXTXlyY1gwV1h1MGNlWVFXMnYybVFOVEdiYUli?=
 =?utf-8?B?TENxUUZhbEk4eURzYnZRaUZmOWdsV05CeVlZL2FLZkFtRUpHd094V3Z4TDlx?=
 =?utf-8?B?bHNoQ08zamQxellQS0x2aHFPMkF2cGNMNXVWL0FhMmlEUnVSZkN6eEIxSEo4?=
 =?utf-8?B?WWo3bHdzZmw0eU4zTFl0bHBvSnY3cFZ6V3JpcEFJV1JVWDJrSW5sNmF5L2p5?=
 =?utf-8?B?L21rallyQjVoRDhaTS9Rc1hYQTFvOCtXUHhuNUVISXJvNjNrcU1kNFNSRUVE?=
 =?utf-8?B?aWUxd3d4RmNRRUdGTmlZS3hoLzN2MmJtcmtBMDdhWnV1Z3JpUjRzTXBVYUhi?=
 =?utf-8?B?NHJ2dkZvZ2tWL3pUaXoxL0lYejZTbEdrdFk2L1pQSnFpeEFOSjJJQlhzcmJL?=
 =?utf-8?B?SEN2WCszU2MrOG9rN2pib3g5bFZ6bkpsRVRZTU8yK0JLbXpCcHRKNVJnY2I4?=
 =?utf-8?B?RFhTUnNXREQ5Yk5OTUp6ejdoS0ZGRWo2TE9EeXNlbTFPQWFpNjRwdlh5RXJZ?=
 =?utf-8?B?aGNOejZlbmRaNTBsekNrcktVREkzdExUZTFtNTRwYlJJbGpPdmRkUlZveVR2?=
 =?utf-8?B?SnNLRzNIT2psYmxyNHhWdzA5UnNHNkpvR0padlhMNU1yd1YzWEtOYXdkREU3?=
 =?utf-8?B?MFFXR2Uza2Z6ckkzVHd4STZoRUFERG9TU0hPZGVXTVZGemxiUFJOSkVRZkpq?=
 =?utf-8?B?Sy8zY1JBUmRZaWNpU0U2aGhaQ0NsREhUZWpSUUhMdU56cXRDT0ZocnlvRzNC?=
 =?utf-8?B?MHZJelVRTzl2TTlwOHlKc3JzZ2VWQXo4anVRdC94YnNObFpVQTBZZFcwWGRK?=
 =?utf-8?B?NWdYbFRxeWdlOW9tNVJhQml3c2tZT3Q2dHFpcktRYVFERk5pMjhJL1R4SmVC?=
 =?utf-8?B?ZUZ6Rmo1b3k5Z3h3ZFFuamZ2aDlKaVdEbkFKbGQvOHFhRmhtRElibkNpL0Fa?=
 =?utf-8?B?cC9mM09ySzNCL2d6ZEZWblR4SzZVTko3VjNjQUNuWmJMN1F0TFBGTGllSkw2?=
 =?utf-8?B?M1pnLytvZkcvK0cvOC9FejBEdnBWdjF1L2Z3bjNIbU9laUVRWDF4eEJtOFpY?=
 =?utf-8?B?QURUaTg1c1pVL0VmaGs1eXVUZEM3MHJWSzRNclZOeFp0c1poSmI3a1p5L1ZH?=
 =?utf-8?B?aFhhKzdXazBUVXM2cU1pdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTYwTFNoK3pxQWVUMXl4SjBIajU3WXBYdTNESy9ZTzFWRFF6dkMvL1BURmth?=
 =?utf-8?B?dzZKVk9wdlhaT0FaSUpJMHk3Qk5PNDl6TUtYcHdsaVZ4VDhTdis0MmNVM0Qz?=
 =?utf-8?B?S2lvVit5ZkxBQTFCamxRdmI0UGxlWWhMZU9DblIwRExrZnpDdnRXNUhUVGdk?=
 =?utf-8?B?VWw5UlFwWjMxRVJ2RjNtK1cwR1hlUTBGOTF5Smk0TS9OUU9vbjRySko0b0Zs?=
 =?utf-8?B?cURiZkZPbU1iT2pJcjd5SDNCUTJMQXRsUVVEQWZTL3RqdmtrRjcrSlBGSGpW?=
 =?utf-8?B?cDNGTy9jTmNzS2VMNnRJUUlPOC91YSs2cU9mWnUwOVM0SEc3NHJIOW5MWTZG?=
 =?utf-8?B?TUtiZW5UYVJHN1ZmN0w1K29kYzg2eEdGdUxpMVlHMXFtTmd2WVJZVmxYd1ZY?=
 =?utf-8?B?YlZWcDRESzNHUlV2TUt4cGpoRElIMWtUSUVFbG5vVEZnTHZ1dnBLME9sNFcx?=
 =?utf-8?B?ZkdwOFJka2Fxa2FrOHZ1c25hVldUUXVtenV1YTJ2bkZLdXhLNmJFeTErRnE2?=
 =?utf-8?B?NW4wajJJcVVIZGJEUCs2OEpyaUhmWTF5WXkzemxJQjdCQ01zT09pMHlHaysx?=
 =?utf-8?B?c0syN0VTZHM0T09BbFFENFdxblFnaHVDQTNXTFFKZkVqZ1FrYk1BWUtOY3VZ?=
 =?utf-8?B?bkdIT3Z6VmRvc2NLWHZNN1VtRXpUVVBjK1h1UEpBSVlOeElVZzhVQUxpT2lP?=
 =?utf-8?B?aFhOK0dUQU5ZUGRVUGszL1hEOE1qL3I3Vld6b3lzWUdYODE0L001VjNEbktx?=
 =?utf-8?B?bUN6K1FkaW1yZUtDM2ZPRXh5SHZPTHFxdVg5eEVMY0R5TXFSWVN6SkhaNFBE?=
 =?utf-8?B?UDFtUDlnQkQzUE52WjhKdVFURUZOUXdFRmo0b2swNmxYVWxhU0NBN29zMyt2?=
 =?utf-8?B?dEFibU41dVBpVVh0MzMxZUtxalY2Wkt5ZGdvck12bjlHRjhMM1hldFVNdkpO?=
 =?utf-8?B?ajdYWXNiZjZxRVdVM0xKZXViQkdOeTR1M1pOTFA0UDBKOGZLSkRMRmtvUmRT?=
 =?utf-8?B?VGkvZ2E2MXFXMUl2S2I2bkFUbC9xWVpYTGIwSFBORkx4eGg1SGJQZFpLa2wv?=
 =?utf-8?B?aFFmbEF1eVU4VHF5TVVZT0JrNFJGK3lpK0tUSkpheVdYdVgyZFArbzhCSzk3?=
 =?utf-8?B?N1pJdjdWYXZZcDROTXBQakFNcGZ5OTQvVHkybmg3SXMxTTJ1d1E2azVpRnd6?=
 =?utf-8?B?NTlRVVdjNTB1T2VZSmExaVNxQ1ozZEpBN0xSVWI0ZFB1WTRRU0hkM2RRTWhO?=
 =?utf-8?B?NTIxQWlucld5MFRBMHE2eXhOYm1MRS9WMUVSZ1F5OU5zTk9KU08rWFZSRzBo?=
 =?utf-8?B?cEpZbHdoZ2xzUGZtYWNzUURrYUtLNExVQ2Ruc3MzSzJtV0RsVE95NXZGamdy?=
 =?utf-8?B?SjBKbk4rQWRPdHloRnZTbE9qNm1oNFN3bE1kM3pMQ0hkWDJiVzlCaDVuSnA0?=
 =?utf-8?B?aGZyd2gvOVdZV0UxT28yUHIrTXY3UUh4YjhPYnlGL0UyUjF5dDl4Y1JZWDE1?=
 =?utf-8?B?aDRpTVFXTmRmeXlUamd2akx6cjlmTTJHVzkvellPS3pFb1VSWkxwTUdYUUFz?=
 =?utf-8?B?R3VlYmUwMGQ0UkIzaVRQZUxzTStNQStKeXZ6M2JUUWpYK3RkODJGS0k1ZENW?=
 =?utf-8?B?Y2dHNnRRTHJJUFV4MlRhS01uVENYS1Z2cXFhSFJHVG8wcVZjaFBRZ2pIbnJr?=
 =?utf-8?B?TWhwNTFHQWZPSjFQS0ZKWDAwS3EvVUdoeWdGZ0hLSk1ZSDFXdUViNDdNdkkz?=
 =?utf-8?B?ejhPYlJSYU5Nc3k1MStydy82RWNrVy81R01NM2ZFWFN1bzJZZXNaMUppaGNY?=
 =?utf-8?B?NWZGeE1qMVpZZDN4VStSZ0FKQm1VYjYybFhiNlRyeHhrc3FrUDN3YTQ0bTB3?=
 =?utf-8?B?dmF5S1lmSm9BZFRIS3J5dUdpYkhTYit3NExqTmpQZnFMbmZ4Zkl0dXJQVlhu?=
 =?utf-8?B?SWd2aGY2d1JKQzBvZGtiZWNzbVFkcHp4V1NkS3JrbEY2cjliVTAyUU9oMmpR?=
 =?utf-8?B?cWdPRjFFbGR2dDlLU0FYVGlWbWpFUCtZYkxJRmJOOXpBaUxtaG14d3lpbGRz?=
 =?utf-8?B?c2ppdEVZSWxYbFVXSXQxOVdJWW5oTVUxeWgrcnVpd2hFZ0pZeGJhbjFQc1lr?=
 =?utf-8?B?QTM5RHFIS3BJSTVBWE5aWXRuZGdiV0xjMnlsQSthQm9ONURGR1A5L0JIazhP?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f13637b-5ad3-4adb-71d9-08dcc7a18db4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:39:46.1789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hb7323BT44BV13Z0OuCw2kXAmMq2no6H4EmFaoTyiMK7LnOaMsQJFm7oKvMrXjG/4FXq9ciuTyjVg1YO47GO+bN1si7CyL3TDL+Cs0oRiVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724877590; x=1756413590;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cio19CGOef7k/8BFDoLak/bdedn/bpwHqOHzSoKqcOY=;
 b=SAv48jVM2ZxbCCfex/ZpTWSNmsR90c2trRIi9I+8qbQGVSVBsjv5M07Z
 scQaZKzSbmqOwBIdL+ST8pus1KegM2DPME6c2dHLbSKZxhopbcitB86fV
 0UT0HyRqLTLVHEp1gGtmrxuCdRECqNSMGSJGP6QVBrsQe5bacmJqBz0/N
 1+QpQ9kLAcvWQ7GmIjLJwFbb85hsNeEg4uS+om7XwUK+EFQKt3RsXxGSD
 71zyD3FMvinlfsVIWDbQA8JjCoqJCL00bVX5ICzhij3dZf9YBghgP19sO
 6KPVmirVCb5C4GOEb9hjmU6a2ZNIwr4M0OtT08ggl+QM+04i/z2lVCHxz
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SAv48jVM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/13] lib: packing: add
 KUnit tests adapted from selftests
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/28/2024 11:47 AM, Jeff Johnson wrote:
> On 8/27/24 14:52, Jacob Keller wrote:
>> Add 24 simple KUnit tests for the lib/packing.c pack() and unpack() APIs.
>>
>> The first 16 tests exercise all combinations of quirks with a simple magic
>> number value on a 16-byte buffer. The remaining 8 tests cover
>> non-multiple-of-4 buffer sizes.
>>
>> These tests were originally written by Vladimir as simple selftest
>> functions. I adapted them to KUnit, refactoring them into a table driven
>> approach. This will aid in adding additional tests in the future.
>>
>> Co-developed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
>> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>  lib/packing_test.c | 256 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>>  MAINTAINERS        |   1 +
>>  lib/Kconfig        |  12 +++
>>  lib/Makefile       |   1 +
>>  4 files changed, 270 insertions(+)
>>
>> diff --git a/lib/packing_test.c b/lib/packing_test.c
>> new file mode 100644
>> index 000000000000..52e039e2231b
>> --- /dev/null
>> +++ b/lib/packing_test.c
> ...
>> +static struct kunit_suite packing_test_suite = {
>> +	.name = "packing",
>> +	.test_cases = packing_test_cases,
>> +};
>> +kunit_test_suite(packing_test_suite);
>> +
>> +MODULE_LICENSE("GPL");
> 
> Since commit 1fffe7a34c89 ("script: modpost: emit a warning when the
> description is missing"), a module without a MODULE_DESCRIPTION() will
> result in a warning when built with make W=1. Recently, multiple
> developers have been eradicating these warnings treewide, and very few
> are left, so please don't introduce a new one :)
> 
> Please add the missing MODULE_DESCRIPTION()
> 

Yep, we caught this with our NIPA CI too. Will fix.
