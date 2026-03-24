Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBWpBNjCwmmjlQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:59:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F315F319876
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48C5141069;
	Tue, 24 Mar 2026 16:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KACYrh3IlrD9; Tue, 24 Mar 2026 16:59:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CD834105C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774371540;
	bh=q3rbo/6SA1YijHuEvCgiDaPNVDxjL2AfMyKPulVCW4I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RXdmlbe/e38GtvAbd5SNTRSqnuOCkcOHsXRquhx+pkN4GsmSnxWtldIZ+32S/MX3V
	 M6Z+bYlIBl6uJneojBI/CLXOusJol1MEa2z3BTLAP0TSRGjURVYnc7oqO9QpYIA68v
	 Sitt8n5SorIMd22XkETAMI0mH5dOnpTt6HAWlT5y0dlnPpBdjo6Qv/M5k+N40mHiV3
	 DAOUiQEWZ3Rx8UbWDg/46bLtLO+UQYaFb9SfqnOAcFZ5Rydkp1TGwq52DMbst7+mse
	 XsI6s4OQPhOGN1ij2Q2BWWEHM7eJKQ33rj4gOIV+3nWSiLnIkqR5llRURrIPYC5fsS
	 1z1kJwvGEfNqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CD834105C;
	Tue, 24 Mar 2026 16:59:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 92D42F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 808A9814C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:58:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MPnUl8uFFemk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 16:58:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B578981496
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B578981496
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B578981496
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:58:57 +0000 (UTC)
X-CSE-ConnectionGUID: 1KcbqNAQR26/H5f7Xur/hw==
X-CSE-MsgGUID: 85pMzi03R0uon0K+YaFdsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86471675"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="86471675"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 09:58:56 -0700
X-CSE-ConnectionGUID: gA1VFVpXQFCd4fh2EcL5bg==
X-CSE-MsgGUID: LoCu7lK1QPyuMl9pdjet/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224422043"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 09:58:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 09:58:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 09:58:55 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 09:58:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/wmLnV4QvDGdiWNxQerSWKo1xDnsEHS0YBeGPj27pZ3dBHXWNw68W+MJpxYhuNTSk4MAWLFP7LVzaIWRY5glKhCYOmZFHTrXSSVTrfsMvuJ7DnOwl88lAN6Y4xJEdNghXkkly5hg3ug7nsM4uIFEVhxgo1f5p9AE5Vs18DpyZtsTPjTsDFYt7zKmWxTWg99Q+CBJUR5i4atV+ij3ItfrsSrD2AKZpvvlxIEwk7YUAz8vjIkdum445Fo3b2CrndCIpNX4k+GDZPrzjoDmqvOOekhwCUAWUdhmtYS6OhZG6FpP4iVpZhKDWiFsxpvYBjKosRufOiUgRi+/1qyfTvnYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q3rbo/6SA1YijHuEvCgiDaPNVDxjL2AfMyKPulVCW4I=;
 b=HUDmPIa7xhHN9A4Gs3ZWb+VGS9Q3/NjSQLzj7BGILPI9OFIHwJ4z8qBgr1r7TkJkIcyajF86trstLpKKcbdK8nX3lIQ5Ht2jvN2a3RcCCItHy05hBvYQBznoEUxvxrvQarnzCff3WvMDITcG5tX4RRPvsgMhNU1j4lTygoN/Y84z5B8KuZyfbGr/dOFJZfuGHqJZFfUJ3KMMdBdaXdf5DruKrZgBB7xvuk0m32mNOmN8YUTAtlJeK/t9ipHPFriOlQx+zky/Jp2bmBd3Kb9MpLBmSzwxcFqtUnVkMYycRsMgOTEC6ODUAcJZgTG2awrHy4Gx/vU/dhPhKjcSDCCuiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5055.namprd11.prod.outlook.com (2603:10b6:a03:2d9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 16:58:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 16:58:52 +0000
Message-ID: <1ec79e7b-50e8-4c64-9e79-fc377a505cfa@intel.com>
Date: Tue, 24 Mar 2026 17:56:51 +0100
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
 <20260318163505.31765-4-aleksander.lobakin@intel.com> <abripOPt4oVu-Ksb@x1>
 <abrzq5_S7p-YjqhE@x1>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <abrzq5_S7p-YjqhE@x1>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0233.eurprd08.prod.outlook.com
 (2603:10a6:802:15::42) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5055:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bd5b76d-f34a-471a-f36a-08de89c6a029
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: pddtDNN+k3vVRuR/cuZB6yblOxCt1lTp+ew89gT2RnRf63ns149Hhf9FZoQEnC0VQ6wmZWyuqwVL5chgpTDLYhYa6gQgKMwfi2M3evLIwnKqdhBkRU7EKhDE8YPq5v6cfiYSNlilQqQHM97s2i40CWP8WlmH6NsWo1IWt1c+FhySmxrlTzjcqjXB0xCw24GmPRcUKIuxoWSLixIa1IMmIqNgC8jnhHjSAiOvJbtCrKLmX0Z4c+tPydbA3evM04L2fWamTYNiOiyedP95+VSnwNTIY6hp6vkwgJ5xx8arMa25Sogt6viZMT2AwycRdXNd//djb5QOjtdShvixRTHgO0qksKQjabKLA0dDTFJlIRn8DR9cdvQlQcE3nfZM5sH1gexP/YuRNk9Fl+a71pRro7FX2apmGtnfuHKEPPFAFwwWoCy2Kjk2qjfi60i8SLxQVZOMBQPzuEWlFf3g5jh8NJY/U08HB0QF0IKhhC0K2eKALJ/zgN1t7CEJF8F7QAHmmXMHH9SMtSb9DGg7gfFoRKL59X5i+3DD5B3ZWWBQhg90dVTz5UVu1bYCMDLPW0noU4n7pf2AIYpcwHg34pIHY5PsBDb9o/iL7iy/yOo/lPtsi3/cbss2igGQ7Ew/6dlZjqWpt1xzBVRxsz+l4lAQ+bMnNUR1/NY94ptDlTaTJWobgculvGaZHvgR5B6lBrSE6yLQIwatuXzg39CQShB+TaiACN+ioESwu74pJXkKvbA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjRhMzUvM2RGV2JmSDlDRHltNkNiTTRSS2RrWnFHZUVGeFNiWHNqaHlKNWFM?=
 =?utf-8?B?RHlBTUNpdHFEVVBvTGRXcnVzZXhBd2VzTUF3dmo2b1hiKzRxZElpWXJINXVQ?=
 =?utf-8?B?VHZrM01MYXRnNS8weDZteUd6ZjFqc1M2SldkMEFZOWNUQlhKenNuS2owaWZr?=
 =?utf-8?B?c2dmTjc0ZmNIWkJXUXJDZUhWRU9GSVN2bDNoN1NLL0F0VEs5dFBDU2hnV3VO?=
 =?utf-8?B?aS8xWHM2eTBJVzBYNUNxYk5lSm9MdnpDNXBBMVZNQmNFWDlVazdvWHMreVUx?=
 =?utf-8?B?TTlaT1pONWdrUk9jOW1kUlR1WTArRkE4TzRUZldnWXo1RkxQTnY1b1hveGFZ?=
 =?utf-8?B?VkNXRDNIaEhFak9GVktORVhUbHJwaGFPTlhFdDliRDh1TE8zMm50cUNRR2Ji?=
 =?utf-8?B?cGtaaEJDYlNhaHJOYllhaDU5RHRxY1B5eUNnYi9WMElza3J0UUFkUG5hMytm?=
 =?utf-8?B?Q2FFYzZ1bnp4RkhlSFUyM2I1ZmEzTUx6QlRnMm1ydkliMlpVTWQ4cngrSWxT?=
 =?utf-8?B?RU05cTZSODZVc0Rpand6dnovSERwbUFMUitQSjdRK1FkWE5JQTJPYTFxL0dj?=
 =?utf-8?B?czBldU5LQjErNVVOU1dVYndqY2w2UDdCNTl6K3RSdXNmWFRyVFFZU1kxYUFS?=
 =?utf-8?B?eGo1Z281bjBxMDNiVk5aZUhGQnFDZDlYaExhQ29GZXV0L0Y0Yjlkdzgxamdi?=
 =?utf-8?B?SEVBaFptNzJRNzJ0VldsTFZwR21kbks2WlFLNkdKRVVITSttT0ZFeUk1MjZL?=
 =?utf-8?B?SVhsQ3FSNUIwWmFXRDZPUmJSVitXV2djNGxUUFZhRTlhbm5IK2pHTVc4NHRQ?=
 =?utf-8?B?em9WaTR2UXVGakVwOUlBSWRIeVVrSTc2L29oTU5SU0tQZzQ5ZTVQYjhvU3dx?=
 =?utf-8?B?MmwxVjVIMno1bXErUHdHVmNQRVZ1ajVXa2RaMkR2YnFya25CSXdDNjNUYlN1?=
 =?utf-8?B?WkdXMExianhZVWJFek1KQkJ6U2RNcHBuRWNEbXBVRTV6d3BtSmtWWVpDNmZQ?=
 =?utf-8?B?a0h1K09mR0k3QTVwbmo0dGQ3alRSc3lBMXU1SWVMSkVXc2R6RllZU3Q1bjVQ?=
 =?utf-8?B?Q1pCSklWMlpTWFh1WWViVGg1SVRnVzc4NHVUUTFYbjJ6TGhvYmtMV2R2VWlM?=
 =?utf-8?B?czZSWkNHdnQrdFZwN1dDWUtGamZ0c0ZGSStXNkZXeG9NOEVNM21DTGZ1K0hD?=
 =?utf-8?B?TjR1QmJNczVKR0toOFc3Y0R5U09LSWRzSnlMNFB3RFJJLzU2YUR6ODFnRHNC?=
 =?utf-8?B?ZU15MGRIRlhpa2VTRHlTcnV3clNDVXFNWXliUmh2eEcyaFRzQWhGUTNEWEJx?=
 =?utf-8?B?b21QdUkwUmo2dWRCRmwrZEN3d3Q3ZXZVVVdTbkhYMUIwY0ZML3kxOUErVmto?=
 =?utf-8?B?QzVWV2t3Q3dmaCtYaVg4TE1KSlhhZEZBRmhsMHNvR0c1NXdZV2FCWk1mT25Q?=
 =?utf-8?B?UXp0amd5TXVpWHRmaVBSNUltWS9yb0gxMmppL2xNK0xxZ0dVZEJjYjBpMUUw?=
 =?utf-8?B?a1Jpeko0L00yVzh0RkMzNTE1YTZxMXpJMXlXWGo4OHhjcUkzNEpLYnNzZ3VX?=
 =?utf-8?B?RzEvUWtORmxjQ21uS2F4alVpVzhzUUdKdXR4QUlxZFRHQVFXTGd6eUhnOFFq?=
 =?utf-8?B?UURhN0JYY3JYM2lXaDRLU1c4RWdxaFRTbmwyNERPbm9yV3dDd1d2NnZkVUJj?=
 =?utf-8?B?V0pWaWd0bFpTQUUvMzhVTCsxQmFuUDlWSE1IYUtYeXpSRTBSMFF0THRhRDRy?=
 =?utf-8?B?NTA0NjRmQzkxbnI5Sm5DSy84K25ENHlzN1Y4cjlCTmxMQVRZUUVRNFhsQm15?=
 =?utf-8?B?dlFwWmV6ZnE5aVlaV1RyUi9tRU11d2FiY1lqSGpaOVFTcG1XNzV4YVg2bk5E?=
 =?utf-8?B?UHVQeEVlQVhSWUdOcWZvY2M0alNwQ0RyUVhZTU4yNXVVQ0haZnFsTjgvL2pH?=
 =?utf-8?B?MnVlRGtlLzdueFRPbXNMUVd5NFpzWmhSVlJHOTdWNzhjU01ZVUp6QTlmRlAz?=
 =?utf-8?B?aUFLOVJwQ3V5L3lYdkFkM1MrVjFuQXB4RlZJc09uMkRwZzB3ZGRUVzBERTJt?=
 =?utf-8?B?cmI2MXIvdDE3enZQSWEyOGxGNzF3UENGb1ZDd2FmMEJ5bWNKYm1OWWNONGRG?=
 =?utf-8?B?U1hEbFQ4cy96bzNybHJ5aC9UUzZOeUNhVVh6THdzMXowRGIwYURCVXZOb21s?=
 =?utf-8?B?K2VlUFBoWkNGb3pvOWJMVU5KbWRxRWJiblBDYkZWUFg5SjRaMWRGQm56MXkw?=
 =?utf-8?B?OFZNRy9xRGFhM2pSYVFFb1hLNmxXeTlCb241R0I3eVAwNlgydWNuckxyT2dS?=
 =?utf-8?B?MmFRMWlpWCtMRlhBamR5YTVsMlVPaGcxMUxMSGZkN0tkZWQvVnVISHpGb2p4?=
 =?utf-8?Q?a9fzcb4BDS7yUaUg=3D?=
X-Exchange-RoutingPolicyChecked: BJixJ29nujYGv4HLrdBglYCBxDuJETglwL1e+3ekmvEssCJHiYHYhdgo6yHcbjnbsh3VdiJNNEEaVpqDH3t9732JjW/IC2CRZj+CPmV4AK7DJxo/M1zDMLov0JNFKKy4exbVz2TwlZkLF1cU0LS07OUw7STlQMlKQJ9MjiR+3CzA86MzpXfQBlXmECkM3NekXfNgGHUkjQmiyrYOES7VnTYVtoS8mZrECuexiga5RY0jCEJ4mULSaZ06VZcJmCW841kccOSsAWk2kVeOr5GPPwrNG0CTBJf0wkFFGSqukQf2fzwWG3V2fW4mOsgu7vQudI+GmUbMmbn+P68vpiEXgQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bd5b76d-f34a-471a-f36a-08de89c6a029
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 16:58:52.0317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iKAT1e0AcRvDBuaKvr+jNVZfO527C7fxCU3UxIC0sA84xsiE2yV4UTpVUfUxk7xmJat6jvKdfafphdgtpDr/df/6TjW0GwNC5uUXnUOHfm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774371538; x=1805907538;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HpKS/0/1ao6vUwQ6FKZkUZz4nekPqOFpyTG9tMfxwbI=;
 b=WCP3p5x7UxJgio8sm3JmMrLj5ww+IgNq0qBklgQtXl4Rd2P+Elfe8mgm
 +Zru9Jpdb0ddAJulbyKtjJeq6fowaIiNcBIHZEdw0QFn8gOB5Gnb6WbY/
 moUbvg+/oNw5erimYUY8/7SleSPr4Wxn+ChONtQB37DJEe3kBJ3nj3mn6
 Q/TMvVoY2NU7etwQkJLyDSFVWMq/vf4gFq6oo3Ub30qzqcLfQ3ZWi2U5x
 VH9A48PiL8yGrY9tyvE5YmX9i0+d9S5+9jAQbo7JbrRFqG/V2ZxLaOPC7
 wOkfdEd7Tev4Wb7O+fHAHs4hdJJ7PIPv9AkashPVoRGd5eu4IlhF2K3M0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WCP3p5x7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: migrate to
 netdev ops lock
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,enjuk.jp:email]
X-Rspamd-Queue-Id: F315F319876
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Kohei Enju <kohei@enjuk.jp>
Date: Thu, 19 Mar 2026 03:56:19 +0900

> On 03/19 02:55, Kohei Enju wrote:
>> On 03/18 17:35, Alexander Lobakin wrote:
>>> Queue management ops unconditionally enable netdev locking. The same
>>> lock is taken by default by several NAPI configuration functions,
>>> such as napi_enable() and netif_napi_set_irq().
>>> Request ops locking in advance and make sure we use the _locked
>>> counterparts of those functions to avoid deadlocks, taking the lock
>>> manually where needed (suspend/resume, queue rebuild and resets).
>>
>> Hi Alexander,


Uff, sorry, I didn't notice this thread for some reason. Maybe it landed
into the IWL folder in my mail client and I haven't checked it for some
time... But I read LKML online on a daily basis and missed this reports =\

>> After applying this patch (3/5) along with the preceding ones on top of
>> net-next, I got some WARNING splats when changing the admin state
>> (up/down) using the ip link command. [1, 2]
>>
>> Since I haven't looked into this series in detail, I'm reporting the
>> splats anyway. 
>> I'm wondering why I haven't seen anyone report this type of issue up to
>> v3. Maybe there is something wrong with my setup or devices?
>>
>> Device: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)
> 
> Ah, I think I figured out the reason. My adapter accidentally fell into
> safe mode. When the adapter is in the safe mode, netdev->queue_mgmt_ops
> == NULL and netdev->request_ops_lock == false, so
> netdev_assert_locked_or_invisible() complains about not holding the
> netdev lock.
> 
> Setting netdev->request_ops_lock = true in the safe mode path also
> worked fine for me.
> 
> ---
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9ef258d5ab48..3477c53316ba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3519,6 +3519,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
> 
>         if (ice_is_safe_mode(pf)) {
>                 netdev->netdev_ops = &ice_netdev_safe_mode_ops;
> +               netdev->request_ops_lock = true;

This fix looks good to me, thanks!

>                 ice_set_ethtool_safe_mode_ops(netdev);
>                 return;
>         }

Tony, could you please pick it up to patch 3/5 when sending a new PR?

Thanks,
Olek
