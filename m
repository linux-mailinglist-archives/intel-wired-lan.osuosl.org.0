Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH5EGHbG2GlQiAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:44:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0933D51F4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 11:44:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE8F640D78;
	Fri, 10 Apr 2026 09:44:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dOEIrTRY5-53; Fri, 10 Apr 2026 09:44:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 289C540D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775814259;
	bh=nMykzzTtFNAuEK5OLvLfULn8JaALgunHoxbQ5RbfZUU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YMH/Z1KIfNOA3dQFx3nl9H5afY7fq8U5IF51lG6hrYrlz+hFCJ6kigj4g9IjlNR7M
	 gDN4xQBAJVHJt045nffZSstXR8xwFlRBojyP7aBeS/mzxqLHKbTLEQCvp78doaNCYD
	 kmiHljFcxed9Foe/UF6jyjWs8aHqMAClplwMiPXOZyW+B02q6F+2BmLdJeFDL8qVLG
	 KRCQtRU3bnDbViKeTKv4l/WGMiZOWZCpYwUaIu9A1sgB49QSGhakHEkOuxz7tn3i2P
	 zC1kjyMdsdt8DC38ZC0HVhFNot6DdkRPtEA8sIBTC6MkYReCj8c1uYxt4G53GrX6D4
	 Kk6LgC7hlOc2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 289C540D4E;
	Fri, 10 Apr 2026 09:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A66281F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9766B82C21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UwVLDuPpcjkw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 09:44:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E96782BBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E96782BBC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E96782BBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 09:44:15 +0000 (UTC)
X-CSE-ConnectionGUID: 7RvYA1mzQuaTzMZrb4LDOQ==
X-CSE-MsgGUID: mR/KambmR4Wtx3ndGs5bow==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80423575"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="80423575"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 02:44:15 -0700
X-CSE-ConnectionGUID: An+1Xj0uQs+puX4yY0v1zg==
X-CSE-MsgGUID: ht7MAEPYSySIYu4rnyYrjw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 02:44:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 02:44:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 02:44:14 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.20) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 02:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nAGI0PfHS9Fde6s70eIIPFz7Wn1L3zRKTlXf05cZSifBrjjDLu65tQIT+5W1tBDZ8YhtaEMVPJhP/7NVUkXNqsqa5IqhInIs0JR3vscphi1DVLKN4HwnwfmZb4NKo7f3Dn/0Q/TJOyWQwNzfgiBLlBFsB5RH8bXi/tLrGYisR139L0Sv46t1KBBvI1uMGvv7QLb20OehQ7evOYc5oviNx0g/OWWSzbk+WzNstOsr0nRtl8dbXxyk9+rDo3WrkAfY0Vf/jclI5KqzPNwFvaCebbuI2IwCMNWDS8rT6sSP24J7cXwc/kJfGv7SvLjblezZOYOjVQ6ldYEgB/V7E0iH3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMykzzTtFNAuEK5OLvLfULn8JaALgunHoxbQ5RbfZUU=;
 b=SrBJz+SfdeG64aMz8PfxQZ5KQbl9T/4B4z88gW9icv4+IihFnr/O9lj1DgxyG2kx3wZMUlidtqj2E4YDugkjFYRPS2HIK0bohCGpFUIR2yOMRlxWrx3sitmIjqg24o7toQYpS9Gss6VtdsG0r4Ye4rVstLu9rmzIKwI6YlEYnb9w/loq9xKy4vD8sq3K+SX/LSUgeXcMu/tQ9w49WQReJQ/RJGFmzyVqYTghf+wChrcLurF0anpTDvor79vgtRn3xvpo1m6SNJVYrUKr6y+vTxpmcMladI3urWtp0CjRzKynrj1S6sjjDCiWkYXe8i631JlCi5zRj537oCYtj4uSIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA2PR11MB4940.namprd11.prod.outlook.com (2603:10b6:806:fa::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.33; Fri, 10 Apr
 2026 09:44:06 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9769.020; Fri, 10 Apr 2026
 09:44:06 +0000
Message-ID: <1180bb81-ce15-4b3f-85aa-23f95915e3bd@intel.com>
Date: Fri, 10 Apr 2026 11:42:10 +0200
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-7-aleksandr.loktionov@intel.com>
 <c5f6796a-66de-40df-9f12-2bc7ff04be34@intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <c5f6796a-66de-40df-9f12-2bc7ff04be34@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR07CA0156.eurprd07.prod.outlook.com
 (2603:10a6:802:16::43) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA2PR11MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fa1cdca-35f4-4b91-f6f8-08de96e5b4b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: zlGOk/E5PvbsB6Rdj7/h0vAoYDwfbMcA/r57+dRY/iSdl5LrPxjiRcjotYGTibZQypO1jfpm7rTAskT7ggxyoO44+atjUT6JH9IMV9rwytZoi4dECXQgIE4kGuM/sObO4zb3t0tI5VXNNZh/yiAwetgCYufP7uuX+C4zJZ4J0DxoBIru0skGsyQVm456tGaBHrQiDRxlzBHpPxZXBjJNU4rSZNv4UQuT/maLj7a5TGBJTjdXOtxa84lovUo3Mumr7JAwE4xtYBgPi7rnI8dNDSXFw+9DRmnKBwQuJF5MHj9hWi1RfafgVSEdBxqjk8vjTJdBEMhXmnm6SG5pqIe5gzMdjbSVC6Zrb6PEAyhqgsOS5C4e87zpOI4KDBxPVRxVCIEuCf+4Id+DJM6rNbeDgnUXhmgOaKBcjjD+UqlOH5MssczWWko0eWYnV+PGPC0qPCrKquYzLhzN9raCt8D3p2oE7iovpobVZxjkI41pMVO4MoU0IY075g5Lej9HBWWCdyYwHFu86oDVijX7snTr8MwZhCY0LBDek4oviPjfoNHhTBQpL88KzpipOZIYI1w5Fw58cCHjlH9AP+iazJxLW7P5gClOWw11Ny+q6BUwefQajXp8viudZiULYZuoGFocyYaAxIC8uzYYGxzwtFm6fR0ofaei0Xlhy+epVWoViUHRbRJ+g4M/zEVD5ONocyopbZQigqUNPE9PhUvWupVTgjifq5qIPNdqK4AfDMplLlA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHVLRHdneUd1TnhaSkRXMWJ5OE9xb2h3cHNMZ3c2N25SeVBlNFM0b25IZnZp?=
 =?utf-8?B?UHBnb2htclBHVEFTaUpJWTcvV29EbjE4eHB3cTZtMnhVQ1FveFBkbTdTNUZa?=
 =?utf-8?B?MytvVTFnei80dnpqazdVL3p4b1djMXdXazRESll3Nnp5d2twdkN2Y000ZGlo?=
 =?utf-8?B?dmFjek9pQy9yQkY2dXBQeGkyQUsxazlyYzhyMkdwamF6TVo3MzRveVdBMFJr?=
 =?utf-8?B?MDhJTVBaUXJ0WlpaSTdmMnBNS1phV1BCamNDOEZxU2plNVNGTUhUTVM3SHFn?=
 =?utf-8?B?VUg4aVpnVWZTMXNucE56aTM1QjJpQmJaUmZ3ZTNMcjJsenBLVE95VlBSbGtw?=
 =?utf-8?B?OTVRUnpQOGxkUkRhcmJ2VDllbmRYdEZTRzEyTXc5VXIra1BxSDQrRmVFTWlm?=
 =?utf-8?B?YkxUeGdTcGQxK3lkOGZSUmNISkd0ZTBZckJVUnE1bEIzdEVCR1lEaHp6T2FD?=
 =?utf-8?B?QlZqVVE5RUdxYVVaelFXRkIybnk2ekhNQ2V3TVo5dzVTejV3blNDbEtZVFh4?=
 =?utf-8?B?WEF2UC9xWDB2bHV6VDBlZEpmNHA5UEwyU2RESE15SWFZZHFtSS8zbjJPR1FZ?=
 =?utf-8?B?NmRzczdOU3VQY21DR1JFdUNyb1RqcWQyNksrQWlwL2p2OHJXcmVmRTdPcTZC?=
 =?utf-8?B?ZGdzTVJSeTF2ME1kSDlVUmlia0IyT0dqMG05bWh0Z21QVlBqdlEwSjNzRXEv?=
 =?utf-8?B?KzZSdXJndUJqMXJGa1MwZkdhMEQxdUtsc3RTcEtKNk8vWFRSdldudmxNOTR6?=
 =?utf-8?B?NWlUenkrVlRWTzExRy9EU1lPaFBNbFEyaHVCVUcxMy95dEpOdWc4eVdiTGJq?=
 =?utf-8?B?VFFYdUNicE4xNmZ2NHVLaGRVT3ptNzd1aGNQNGQ0SzhnSDQwb0E5eFU2NjZj?=
 =?utf-8?B?eC9DdXh6eHg0dDFDdGdxT1FBb3NyWVNvOFJkMWpJLzhCUFN0cWFseCt0VkhN?=
 =?utf-8?B?RFVzRjIwWFpUdzZWMGVXSm9jSG56S0NPZGZKT2g4YmNXMFo2Nkh0NjR0Vi9O?=
 =?utf-8?B?WXArTGNxeWZxMUpuZ3NVTzhXSWQybDFQVm5sSmUzZzNUM1lnRlFyN0tEaU5h?=
 =?utf-8?B?SWN3WmxsNElIQTU0VlVIUUlKYVRJRGswbFFLWDZlMERaMHh2dDlZbElQTlU3?=
 =?utf-8?B?YWhvd1ZxNm5FQ1RqNVl1TXc5Z2FOU2RYYmRUaWMzKzdwRk5FRXZ1MVZueDc4?=
 =?utf-8?B?cVg5c0hlVlIzMWxIeW83ZFpzN2Y5YkV2ZzkrRzIwU0o1dFN3ckxUNWV1VVZT?=
 =?utf-8?B?QTdoVDNxSzJieDBqdzhHbVlEOW1KRGJYeXJKM2VwV2tMbWtFdW15aXpBaUR2?=
 =?utf-8?B?eVNNUERPL0RiaTFoMzhMUitBeUN0dlpQWFRyTEVOLyt3dHVVSWxPdm5yZHgw?=
 =?utf-8?B?VGNidmw0dUtoMU9HVWJDdGY3TzkrYTRtMGtwVWVvYVllV0xkYldZeWlDbzc5?=
 =?utf-8?B?NHdHSTAwcHVQbHAzalZWSjN0NlBQUFNHM1pEa3kwc0ZydGgxb2FUTFFLTjJF?=
 =?utf-8?B?WldtT25rRzFsWHBXcWVtUHJrbzdUSGNjSzYrNGtDYVV4dncxc2pDeUM5M3dz?=
 =?utf-8?B?RGNlNm5hcjE2T3BkemNKUktZblc4LzV1Y3l5U1c5Q1FIRHpEZW8wRVFhNXNS?=
 =?utf-8?B?K0lxN0hEYzczZVZiWlZOYkQyNWJIQXVqVlR2cXRyR0dXbitUcVRFaG5pNjNV?=
 =?utf-8?B?Y1loak9xSUZXTDlFOXhRY3N6MFZUbTZEaTUxOVA3Zy9CQTRTbVBySC9pbnQz?=
 =?utf-8?B?MVlJVWlYRW9vbGcvZlFxWXBqNlNyUkRsdXFQcXQ5RVhtRzh5MjBMV3hxSFZ3?=
 =?utf-8?B?akR6bHVwblAyZjFCUitmN0l5SkxIaDFPbk0wOUNvTWYrQWVpMVh6UHFZZnpR?=
 =?utf-8?B?Y2ZCcW9JejdyejJQbjZHTFlUanBTOGFqNkFwMG42cHZhbUdOd2F6YXZvYXZB?=
 =?utf-8?B?Z25YZzRFYXZUUXYzMWdZRnpvOE5CYkhOL29ySVNpNG9QTy9DMXl2V2xlQlJ4?=
 =?utf-8?B?WXdwbDkwSnAyL3NaZzBiVkhUdnNvQUZxd0VlTElMSGxTajE3OUZkWUNUTTh6?=
 =?utf-8?B?SzB5N3B6aTRzZVBnMlYxalQ1OW0yVS9sclFDVm1qeDNrb280UTFtRmpLeWtE?=
 =?utf-8?B?dGNtdTFHN08ydEtzWGlUMGY1d1h4NzU2NzJNVnJtcnZ0YS9PQlpLMGlLRkc4?=
 =?utf-8?B?RTFsM1JiSGhlQlZvbkxGZThGZ0Z4WnY3MklxRHd6cXR2YkY3WkhFUXdYT2d5?=
 =?utf-8?B?QWZhUjFOQUNLREo3Qy91Wm9xV2U3Q3p1dU5nUWlrY2FDQW4zSzF5NklYVlNj?=
 =?utf-8?B?dmlscWtNUTFiNHhFSkYwbHZDVyt4QnJJMU5xekhlamg2MjQvaDlyN2VkNzJX?=
 =?utf-8?Q?KG5cBvla/JjVenBA=3D?=
X-Exchange-RoutingPolicyChecked: hgxnd8XVNNE6zVjou16dANon+7RpNf3vSJbR7BFn8YV4ysVyjR7WmiORj2DlbA6s7ENZPvkhYd84ftMXbEH7QYiawE1ppzVpUrniy1MnzWT0AyW+aNLADEPCK1s+EKhltjp6zMqhpLHHm/vzggNjWN/KOyhiXVmcUktIu1WnbpWn1uITLp1RWNnfIdGiW6SJyD6GnGKZyFmR2wiU/pqbxoy3vN1C6rZQuDpBFXFTNsgMnqp7DxBI7IfmBwGLuZJeE1dcKEmOEfI0KX5g7oFl5/5ti4tlZhKB4iy1gn9HnbAaI1A3s/ZWvO9kxMcpvqNU+q5HbgnvgCtmGUmqjs9Tuw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fa1cdca-35f4-4b91-f6f8-08de96e5b4b5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 09:44:06.6262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l1kzC47wDILdgoyHc2MKl54aoSzM7b8PIPbyuKfl6LUXkTLgEFuxGk9bCh0eVjHk8zRqB8U9SrVu4PLdC3ZzfKAmv7C4HS2gJk8blbD0080=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4940
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775814256; x=1807350256;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MJMnxm8IP2gq3h5352ko5ohVSFTBxPbA9Ql3n3HH/j0=;
 b=LDyVh7QYo1ivmI5ZR/4+AT/nPZAZAEQ+XbOenAArWL7iiS/Odrp+hOTu
 IgRT15kgfbFSbw4TQBO2xOGm5rlZP9UgG0OjRthg3fw4oOX98nyifpbG9
 NOz+CgdnWRSQ9xTrNQeA/6RtRVoJgC9VYkTfNz6u0rueGNZeh+7FKJCvR
 TWFkeEjN9X0lTJ/+GckNFVOjlW2DbwWjeIeUsMPux5jjhlAVYUhmdcnm4
 ltXXiFBSFbBtD+69ZVZMGb2Ubx4F480XVWDukuQkqf5lRYUyhKo987/xz
 LaT4wjkY4l+2esv9AWNl+F8lVmmxXNEaAhhy+Li5wPp5HGYyMTk7SqHK1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LDyVh7QY
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Konstantin
 Ilichev <konstantin.ilichev@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:konstantin.ilichev@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: AF0933D51F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 8 Apr 2026 14:12:28 -0700

> 
> 
> On 3/27/2026 12:23 AM, Aleksandr Loktionov wrote:
>> From: Konstantin Ilichev <konstantin.ilichev@intel.com>
>>
>> When an offline self-test is initiated with ethtool -t, any ongoing
>> traffic could get stuck because ice_stop() and ice_open() are called
>> without letting the OS know about state transitions.  In most cases
>> a write() system call would block.
>>
>> Fix this by calling dev_change_flags() to bring the netdev up and
>> down, which ensures ndo_open()/ndo_stop() are called and all watchers
>> are notified correctly.
> 
> + Olek
> 
> AI review reports:
> 
> The ethtool core acquires the per-netdev mutex via netdev_lock_ops(dev)
> before invoking the driver's .self_test callback. dev_change_flags() is
> an exported API that explicitly re-acquires this exact same lock:
> net/core/dev_api.c:dev_change_flags() {
>     ...
>     netdev_lock_ops(dev);
>     ret = netif_change_flags(dev, flags, extack);
>     netdev_unlock_ops(dev);
>     ...
> }
> Because dev->lock is a standard, non-recursive mutex, this will result
> in a hard deadlock for any driver that opts into request_ops_lock. While
> ice might not currently set this flag, introducing nested lock
> acquisitions of the same mutex guarantees a deadlock as the subsystem
> migrates toward per-netdev locking.
> 
> 
> With ice netdev lock changes in progress [1], this would soon become an
> issue.

Hmmm, seems like we'll need to either export netif_change_flags() or
introduce something like dev_change_flags_locked()...

> 
> Thanks,
> Tony
> 
> [1] https://lore.kernel.org/netdev/20260325200644.2528726-4-
> anthony.l.nguyen@intel.com/
> 
>> Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
>> Cc: stable@vger.kernel.org
>> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Konstantin Ilichev <konstantin.ilichev@intel.com>
>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 +++++---
>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/
>> net/ethernet/intel/ice/ice_ethtool.c
>> index 96d95af..2a4f06f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -1416,7 +1416,7 @@ ice_self_test(struct net_device *netdev, struct
>> ethtool_test *eth_test,
>>           /* If the device is online then take it offline */
>>           if (if_running)
>>               /* indicate we're in test mode */
>> -            ice_stop(netdev);
>> +            dev_change_flags(netdev, netdev->flags & ~IFF_UP, NULL);
>>             data[ICE_ETH_TEST_LINK] = ice_link_test(netdev);
>>           data[ICE_ETH_TEST_EEPROM] = ice_eeprom_test(netdev);
>> @@ -1434,10 +1434,12 @@ ice_self_test(struct net_device *netdev,
>> struct ethtool_test *eth_test,
>>           clear_bit(ICE_TESTING, pf->state);
>>             if (if_running) {
>> -            int status = ice_open(netdev);
>> +            int status = dev_change_flags(netdev,
>> +                              netdev->flags | IFF_UP,
>> +                              NULL);

BTW are you sure there's no other way to do an ifdown/ifup cycle other
than sneaking into the flags? Have you checked whether there's an
exported generic function which calls .ndo_open()?

>>                 if (status) {
>> -                dev_err(dev, "Could not open device %s, err %d\n",
>> +                dev_err(dev, "Could not bring up device %s, err %d\n",
>>                       pf->int_name, status);
>>               }
>>           }

Thanks,
Olek
