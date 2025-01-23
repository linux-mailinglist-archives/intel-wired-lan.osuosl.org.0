Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCC3A1AB03
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 21:13:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82F5F60745;
	Thu, 23 Jan 2025 20:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c0mnr17cZ_ie; Thu, 23 Jan 2025 20:13:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 870C36F5FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737663221;
	bh=rxVga7gUL0nuYORbwnW+UmVQEsbN4aSL6cmdmLiynd8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vWKd2RB34h4Gzqfd4ikoeKfW7r30af1CD8Aeojg6tvKYxYHExPTdIQByadrdSGX62
	 vRhaauwc4/Par6ywPXO8432zE/eh4FME0dYLhddXx70VMJL9tBpHcOAFQfT1NnLoDB
	 hnFTBfqrkrJJoJwBNpz9dJ4jKJX0puxYE9UPYrENjjDBDw8EY1jcOV3JHYGxGHQ9uC
	 kS4LVFrka8GRvQy4VO/cjoEHujomGnWH1OHopI45lweWYMgT5Ad8JCajFWXSVc/ibD
	 rbmggakUTLF276SPymFnos6hEaCm/B9TZXrdaiyMYjYNAKe6/nmu1z6brxna7txIA9
	 M5VMzRPWaSGWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 870C36F5FA;
	Thu, 23 Jan 2025 20:13:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CF96C94A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC9DD610E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hnq4oi7ZGKTh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 20:13:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAE6560745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAE6560745
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAE6560745
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:13:38 +0000 (UTC)
X-CSE-ConnectionGUID: s3jBIliWSAe96If8xx5kQg==
X-CSE-MsgGUID: y9UiL9m9SFqHKL4uRL7M/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="37884788"
X-IronPort-AV: E=Sophos;i="6.13,229,1732608000"; d="scan'208";a="37884788"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 12:13:38 -0800
X-CSE-ConnectionGUID: 9vRQH7zET/+f97I4JDOb9Q==
X-CSE-MsgGUID: t6xZgjaMQT+I2faQU6dR0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112698623"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 12:13:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 12:13:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 12:13:37 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 12:13:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XN/0U2lVcA7fuybhKe3/lLsL6RAZCLDUs8XKIB/iOLP+EaXv0bYWVGdKUocnbZ4NAKY+i6TtTq8abugmQn5VxuWiOQK6mdk5u3VbKuQu+dv+B0lkC0vcgKd290OYayPtyHY96mujEUZ133O1NwKPztLv9me2mX/YRn1sGQGsd8f2xRDF9v/U4MGJtJY8ImSbmPQpOjEYGMmWdVD4COVn1mN5gnHV5XUSHizO9AAC/I6NS8TaH0wPO8C9XB/ODXYXowa3u8aV8ZbmQbfpXweV0vOzTJe1TG3nqVlGMPupqsdbbzyeHkKzvcqtVH27NNyoXYiJ45XBjIUVBoMmV4oI5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rxVga7gUL0nuYORbwnW+UmVQEsbN4aSL6cmdmLiynd8=;
 b=KkXnq/d4Tk+nJJY8OOuxoDE3DcFIFYraFYXbVhXwwC+RtMG8+7R0ecReyLFLe0K00BISAs45Ac13BmpFxBjgD5Hdj9GD2JL07gvu2EjayBjgDrLe6JwduqEpFy9nXeSbbgl0WvQUaGET/cUGcagP7K/VjPw4hlXlnptO9dOfJgy6xwvcCk2tz/TSZqHbVpBt4oLAVa1M9Fl+r2JFx71Y4ojc6YTqpZqZ3ouk4mkVG6NSMyAss6My6U+PsSzWkNfcTD/D4J9LimHiKpwGsZte13GBU0ZLIodu+/5xQp6P6Q+jMkTFtJqf+CKsYxLABnwvyDkCt+33LhpcHDUQ9csIOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM4PR11MB6478.namprd11.prod.outlook.com (2603:10b6:8:89::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Thu, 23 Jan
 2025 20:13:21 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 20:13:21 +0000
Message-ID: <414c773d-5b7b-44b8-82a7-da49168ee791@intel.com>
Date: Thu, 23 Jan 2025 13:13:10 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <andrew+netdev@lunn.ch>,
 <edumazet@google.com>, <kuba@kernel.org>, <horms@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>, David Arinzon <darinzon@amazon.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
 <20250118003335.155379-2-ahmed.zaki@intel.com> <Z5KYWAshgRL2GbX2@LQ3V64L9R2>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <Z5KYWAshgRL2GbX2@LQ3V64L9R2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:303:2b::7) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM4PR11MB6478:EE_
X-MS-Office365-Filtering-Correlation-Id: 18089dd5-d85f-4589-6d88-08dd3bea61e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SlRSamswV2VjZCt0UmNrZ1pmQ25oVytCOEZBZGZ5T3hoamlGaGliTEU2ZWJ5?=
 =?utf-8?B?UEEydmhtY0ZhTjlxVWNRVFlZZGkxSzIxRjZFUHFrQzNISStycHVQMW42d3lS?=
 =?utf-8?B?VmNsZHFabnpHRWRmY3lVYUt0MFNDbGFCWFFyN1haMGtvZEh3TE1ob01XWVJl?=
 =?utf-8?B?dkZsV2VxdFMwbnZXcWVSeU9pVDBtWE9ROFMvMFFLRHJPZjZSQ0dTNWV5d01D?=
 =?utf-8?B?Tk1kVnZ3aW9nd21aWXhpQy96dXJKYW5YVTVNQkw0RUhpaXNMYjBNK1A3VkJ4?=
 =?utf-8?B?SDd2dFRwd3RpUEdVdGRhZzB6cFpWSVEzbWpFbE51TXBibjA3UTFEeTFJNW9H?=
 =?utf-8?B?QWw1N0JNdGhWbmZ5eUNBVS9jMzBhSXZIRnRqQ3pVaEdBWmZ1ZFdwMTNhSkVw?=
 =?utf-8?B?SEl0UklaUzZaazJjQzUrd1paNVRCUEFCampiM2RsOFFQYkxYTlhobjdobDlK?=
 =?utf-8?B?ekZEb0ZlOVRObGtBTDhoMVUvN3M3bkFvRDQvQnlkMWpLY1drL3Urc1ZBNG5I?=
 =?utf-8?B?V0xacnNLS1lWNEM5d1RuR2w0L3ZXeWM1N3lTSTdMb0JCSW95K0NpbzFSTlJv?=
 =?utf-8?B?azVvQkY0Qitrd1VQZXlEVXMwNnNBMm1qRGpkRTAxaW9IVU8xSWVqWE9DcTJU?=
 =?utf-8?B?bHJwWHIwVURSUUh3MlJiaFB5dGZ1SkFmNUV1aGM0UG1WSHN1R2pQK25oa1N2?=
 =?utf-8?B?UE1RL0lCeVZGRVgyNHdnL1RMUEEzc1pSWFE2KzYyR05xWmw1R3ErMzk4Z2Ru?=
 =?utf-8?B?ODFwL2VSMnA3OEZUbEx6OXhwUGRoek1DdmIralN0Y2g4eVh5aEc5Q2dHc0dM?=
 =?utf-8?B?KzhhM1FUb3Ztb05pLzBDSkRKd2ZJdDQ2RVpvS3FLYjZRM01jbkJrZ0tjZVRu?=
 =?utf-8?B?azNCWVNYT0xGdnFZa2huU3JRZmJDbzEyaFZQSEtCYmcwSUhRSHA1cnBDZUdO?=
 =?utf-8?B?c2xJWGxFMzNyZERiQm0vODhQVWRxbjBaN2FrSlFscUg0Y2JObmlBME11cEsv?=
 =?utf-8?B?R2hIa01PZDRZNzk2V04wSDM1VHFaWDM4NUFRbTU5T2ZEVWxRR1dxeC9Rb2N0?=
 =?utf-8?B?OFQ5SERjOXQ1M1ZLd2FtekRIMFY3b3ZnOWYyMWs3dTUxSGdVbDNFQTg1Y3lU?=
 =?utf-8?B?anJtQTlEMHFlcER2Sms1VVh0RDRjYk00bmhiRUVsWU1LQSs5bzRzcXUyMWhl?=
 =?utf-8?B?UFcyK0Q0c3ZJU3VYUWx0R3Zja2MxczhFcytxM1lHcVJYU3VDWndpdVdGYndY?=
 =?utf-8?B?cW1mUlpYdWoyYlRlNUo2YWEyTTQrWFNZY3ZuNmJXZVB5TG5BT3c0djhpSi9Q?=
 =?utf-8?B?Mi9kVVkrS0JHc0xqSVZxQnBMSHFWOXI3ZGlOZmhuZmJkblc4TTNBWDY3SGc0?=
 =?utf-8?B?UmsvRk9GVlcvdDcyMGpPenQwMkthSjBCMG5iWUtLNnBndFAzQ2JoTzdiV1Jv?=
 =?utf-8?B?czZJR2NoN1NjYllsUHh3RUlQVEhEV2VCKzRBTnlFRjJqRTdBMzBwN1Q2YXZn?=
 =?utf-8?B?eEhlQTJIN3RJTVFsL2I4RitBc3kxelJNejEwclE3ZUNwWUEzMlcrRjlaMUhP?=
 =?utf-8?B?SEdFL3hsY1BwbktsNmZtdXFKcE1KVWwzNk55VGtQOGtGYSttM0pFNjlabHhI?=
 =?utf-8?B?MGVONHEweUlEKzFncVlIaUpiWEZYUkJ2MXczRHdqdW9GUjdqT0Y4RGlOS0Np?=
 =?utf-8?B?UjErWUg2eDc5L1kwZzJVaUZmams4OXNKUitsdTJDSnFxZHhmMVhubzNJYnFO?=
 =?utf-8?B?SjVUUlBZNlNGWFVLeUREekJ6QjVJYjRRNGNra3JTekVQZjRQdm1kbFg5M0d2?=
 =?utf-8?B?MXVvaXlUTGIrdVIwS3M4Tll5VlJjbXVzZTMyWUR3Q2dXVWRieVc1OGRqOUxV?=
 =?utf-8?B?WGpraHNMSVlYR1B0dFlwTWZZY0gvWjcyaDNVbUdDZ2F5M2NsZjhPdGZTemV3?=
 =?utf-8?Q?s98KwRjOoGM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWN2U3RzUmEvZmRRUzFVTzhja3p3bFdsZHdNMEI3S0JORDFrd25rQlVXbEhE?=
 =?utf-8?B?eXRxWTNtbVBhVTBjUjZyNEE5SEhxbVlXWUlhZkJyb2gvSkRqTE5ITTg1REds?=
 =?utf-8?B?d2p5SExvU1BiOEt4MjV0WUpWZDRaVE04VXlVNm9paGQrVEJyNGFDeUlBajVY?=
 =?utf-8?B?N2l1Zmh2QjVnV1RmWVJQOFhsYkVqVW1xcDc3a2VDRlBCb2pPY2RYMlVYSXdK?=
 =?utf-8?B?Y09KcFdXRmVhTGk0SVRQMW9IbDZwYUNMRm0yWVdpWFBkMkFHMjNpVVdHSTA2?=
 =?utf-8?B?bStwTytxMDlhaTlHQVRHSmkvQXFyNzgxWDJ2UDZEZ1pFdjJKWjBYeU8xWS9M?=
 =?utf-8?B?bk9RYUpUNTE2Y0dHazk2N21HYUxLVU9idGlsQjRHUXA5Qjd4TmxJOTNPOTdh?=
 =?utf-8?B?Z0dPcGg4U2pnYkZKT0dkdDN4c1ZaNEcrRUx0Q1RuNWlLZzNOMTdMR0tONGI2?=
 =?utf-8?B?dHRPelo3dC9VM2N2L294L0dlRWlSMnJ5b2U0UWN2RFVoZW1NU0UrMGlPVlY2?=
 =?utf-8?B?bHhmR2ZrY0hKa0dEUW4ralpQNHB6aWE5KzBJYXZnMmFPMzlzTjl1T09oU3Vk?=
 =?utf-8?B?VVlDckw5U29IQmN3Sml2VDNWS1gyL1UxR29wZEQrSVV2NStmTG1DL2VMV0JD?=
 =?utf-8?B?L1gvelRBTUozUXZCbjNYcXZOY0JTR1htVWMrQnlMdVljRG12YlZzbjVWQzRX?=
 =?utf-8?B?UGczVFNGOUFBNmU0TXBMZVR0aGVFSmVyN1hhekJxRzJkSkFDenV4UzV0ZFVj?=
 =?utf-8?B?dVpWZmswek5OcHNkdkRhdXBRT3E5S0JXZG00VUx0aVJvWU5PeXZJQlpVZ3Mr?=
 =?utf-8?B?c2Vmc3gwTDBXVUJaTjBkdmhaSDE3alZENXJMc0swdk9FTzZuUEdUODZQSzJu?=
 =?utf-8?B?bHR3QzFRR3poVGpHUjhzUlEycHR3YU85WEJzaTQrVHdEOW1JUTNoRGlYY09T?=
 =?utf-8?B?MlBoT0UxZVBLK1RielNjYU9DU1VtY1FPMTZzUXF3eVA2U0N5cnYxYmdOY01C?=
 =?utf-8?B?VzZvNENkWHI0K3lKSEZPaGhYVnl6R1YxRlc3OUJqamtqaXBiUzErRkFnQVN6?=
 =?utf-8?B?VGFDandaWHg4dENLOHFYTUpJcjRzSjJHTmZzOWpkb1BXNDVjdG43dW5VdUpw?=
 =?utf-8?B?NlZKNG93OGpkc001OWtUd3JtQjRnT0JwcXVxcSs5cC9WWlZnQXhSWnpSMlBt?=
 =?utf-8?B?R2ZTV2t4MGIreXRCTi90V1dHWElPemdUYUFqVkU2UUtPNjNsNTZUNmQxTm5z?=
 =?utf-8?B?amdacUVPUEJkRGpIY2doY1BUN2craHlqK3pnT0lKaWFoQXRJblcrNVhYeGZw?=
 =?utf-8?B?TkIxL2Q1Qkt5eXY5cjk1TDdTL1RnWDhEeXh5Sm5EVjg4QTE5cm1nQks0Szho?=
 =?utf-8?B?M3NCdDFNUVBjNHVqVDMwS25rYmF1V2J6ek43ZmZIM1YyVFZpZUhvYjYwTU5o?=
 =?utf-8?B?WXd1Q1dIQk9QMy8ySHo2UnBWSGxBQkpMZ2poVE83c0RmbWx0YngxRU9seXNQ?=
 =?utf-8?B?OXJkRzJtcW9rRWd6VjdvdTN2RjU4ZHA0N2hCZmZDcnl1VENWZXQxVUMzbUZn?=
 =?utf-8?B?OG92clhxT3BlNU5JV3hZTmtmaC81WlpNZmZjSnNsUjNtMDVKUVZ1RG9DbnV1?=
 =?utf-8?B?cVR4N1NoR2VCN0I5b1NCdjFGaTg5c2FTUmJSUG96MVBwcEdWdUVyYnBEVGFL?=
 =?utf-8?B?dm5DNFA1RlBoYTRrQVdKNFUxb28vT25uLzlWd25aRENiVUM2emV5QkQwaHZK?=
 =?utf-8?B?US9jZFFVMnhaSTVoTTVCdmhpQ2tjc3RZSHFvQ3g5TTFtRFU4Y3dacmFlUnBw?=
 =?utf-8?B?SzVncEwvbXJleVhnVHNiZEgrUG1QaWJRb1FNeFFXcUMrVEJoY2doa3JIcnox?=
 =?utf-8?B?TnhNUEg0MEdXUUxxa2tTMVZtN0V6RVdDaDVkYXErSUtmdkdOai9xMHdjNnJH?=
 =?utf-8?B?d2FMOThPZGtvN1dqUWtFdEJlMUx1OFZNSVpScEIxZVRrV0owMEl3Z3Q3TWxk?=
 =?utf-8?B?UHJZTWpBTktFSU1ibTh3N1pxOFFXWlh1MGU0Zldta3hWSHVOWWx6cE9uQWZh?=
 =?utf-8?B?T0p6OXkzWmplTVhwaysxejFqOHFBOGd6RFBFdXhLekRWZnh0enFEa0RjUkxk?=
 =?utf-8?Q?7JwwxDV/bOvPeeJLxZeuGMfsT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18089dd5-d85f-4589-6d88-08dd3bea61e8
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 20:13:21.0007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z4EBCXpAswyis8Gf31tgl0HjfzjxeuXC/MIyDqLQH383M/EvVweTtX9MC5YVslvPku//0Ja+4g63NWe8sm8fNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737663219; x=1769199219;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ydz5Pj2oC3VMKMLImHA7uTYkxf5w/vefwVNVQtuYXqw=;
 b=GJG/9Eq0szC9RhfC6hHFOibaFNUWUPaSyVkyd6ZpicbZLv11nIw3MnBm
 4LAhYq6hPpJyp6B7no2ZoE4gSTGr1HLwNOTWYt5gr9FgMbYjOTyx3ksCR
 f48Pcwz8rv6rv51uZB06TWDV1LuHAGZ8RQTdienPSS1jU9zJU3AQHV7zI
 G1yFALp4X2ceOM+EcytIkMArtIoPJf2TtodAcFkVPmGYA34KxAcnwsvEc
 6QxLfMpThOEvFF5BYSpNL6bHNBtAulPidySPBVdL8J5rT0BN02+CP1+3t
 5dboa1mdWsnSixVTmf0khzSTM5bSVaaSdG7fO7JHE2dW70R+5Y78zG/hh
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GJG/9Eq0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/5] net: move ARFS rmap
 management to core
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



On 2025-01-23 12:28 p.m., Joe Damato wrote:
> On Fri, Jan 17, 2025 at 05:33:31PM -0700, Ahmed Zaki wrote:
>> Add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting ARFS should
>> set the flag via netif_enable_cpu_rmap() and core will allocate and manage
>> the ARFS rmap. Freeing the rmap is also done by core when the netdev is
>> freed.
>>
>> For better IRQ affinity management, move the IRQ rmap notifier inside the
>> napi_struct. Consequently, add new notify.notify and notify.release
>> functions: netif_irq_cpu_rmap_notify() and netif_napi_affinity_release().
>>
>> Acked-by: David Arinzon <darinzon@amazon.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> [...]
> 
>> diff --git a/net/core/dev.c b/net/core/dev.c
>> index fe5f5855593d..dbb63005bc2b 100644
>> --- a/net/core/dev.c
>> +++ b/net/core/dev.c
>> @@ -6862,6 +6862,141 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
>>   }
>>   EXPORT_SYMBOL(netif_queue_set_napi);
>>   
>> +#ifdef CONFIG_RFS_ACCEL
>> +static void
>> +netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
>> +			  const cpumask_t *mask)
>> +{
>> +	struct napi_struct *napi =
>> +		container_of(notify, struct napi_struct, notify);
>> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>> +	int err;
> 
> I wonder if this generates a warning with some compilers? err is
> defined not used if !napi->dev->rx_cpu_rmap_auto ? Not sure.
> 
>> +	if (napi->dev->rx_cpu_rmap_auto) {
>> +		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
>> +		if (err)
>> +			pr_warn("%s: RMAP update failed (%d)\n",
>> +				__func__, err);
>> +	}
>> +}
>> +
>> +static void netif_napi_affinity_release(struct kref *ref)
>> +{
>> +	struct napi_struct *napi =
>> +		container_of(ref, struct napi_struct, notify.kref);
>> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>> +
>> +	if (!napi->dev->rx_cpu_rmap_auto)
>> +		return;
>> +	rmap->obj[napi->napi_rmap_idx] = NULL;
>> +	napi->napi_rmap_idx = -1;
>> +	cpu_rmap_put(rmap);
>> +}
>> +
>> +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
>> +{
>> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>> +	int rc;
>> +
>> +	if (!rmap)
>> +		return -EINVAL;
>> +
>> +	napi->notify.notify = netif_irq_cpu_rmap_notify;
>> +	napi->notify.release = netif_napi_affinity_release;
> 
> Maybe the callbacks should only be set at the end after everything
> else is successful, just before the return 0 ?
> 

I believe this is needed before irq_set_affinity_notifier(), OW we could 
have some racing. I can move it there if you like.

>> +	cpu_rmap_get(rmap);
>> +	rc = cpu_rmap_add(rmap, napi);
>> +	if (rc < 0)
>> +		goto err_add;
>> +
>> +	napi->napi_rmap_idx = rc;
>> +	rc = irq_set_affinity_notifier(irq, &napi->notify);
>> +	if (rc)
>> +		goto err_set;
>> +
>> +	return 0;
>> +
>> +err_set:
>> +	rmap->obj[napi->napi_rmap_idx] = NULL;
>> +	napi->napi_rmap_idx = -1;
>> +err_add:
>> +	cpu_rmap_put(rmap);
>> +	return rc;
>> +}
> 
> [...]
> 
>> +void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
>> +{
>> +	int rc;
>> +
>> +	if (!napi->dev->rx_cpu_rmap_auto)
>> +		goto out;
> 
> Maybe the above if statement could be extended to be something like:
> 
> if (!napi->dev->rx_cpu_rmap_auto || napi->irq < 0)
>    goto out;
> 
> then you can omit the irq > 0 checks in the code below, potentially?

I am afraid I don't get this, the checks below one is for the new irq 
(could be valid or -1) and one for the existing (nap->irq).

> 
>> +	/* Remove existing rmap entries */
>> +	if (napi->irq != irq && napi->irq > 0)
>> +		irq_set_affinity_notifier(napi->irq, NULL);
>> +
>> +	if (irq > 0) {
>> +		rc = napi_irq_cpu_rmap_add(napi, irq);
>> +		if (rc) {
>> +			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
>> +				    rc);
>> +			netif_disable_cpu_rmap(napi->dev);
>> +		}
>> +	}
>> +
>> +out:
>> +	napi->irq = irq;
>> +}
>> +EXPORT_SYMBOL(netif_napi_set_irq_locked);
>> +

Thanks.

