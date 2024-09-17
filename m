Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 181AA97B5AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 00:22:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD5D181E0C;
	Tue, 17 Sep 2024 22:22:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KMxIE_H_T1wR; Tue, 17 Sep 2024 22:22:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 134EA81DEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726611749;
	bh=0oHctr9yPBXBhuuTAZr6GmpmOtBVHKdRH9oVD4Sk6mA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hCZc+xEgYJ3HpGHgtscY6fpNSHm9VfmItClTVh0BB4jLmXlXMiD3k6ahtAap2RUk3
	 +4zGfIsFE0nolll7LLijVOSL9c35/VlF2d9cVJv50BVxQoue2jj0qnQ6ZScN+wQrq6
	 gNyU5RsLUBxwAWd5acnbj4VHDPYKe0uQSElU8Gthnqgler3FdqVBni40b0zz3uoEUY
	 4RirL7WkeVuYDHr2I1rD4ynSban0t96829oYC1el2t1FGRyIxc2+jqsGGQzoGF/eW7
	 SKfyHYFSS/IKPfKmpn6jlYPd3XtEJoKLFJPpIcF2NkL/ZJZK2NAB0aYRZKkLzgz3CQ
	 +4ZV5J1yceqMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 134EA81DEA;
	Tue, 17 Sep 2024 22:22:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7CB31BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 22:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95BC4610DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 22:22:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V_IRMdHp9NBg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2024 22:22:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A052460D8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A052460D8C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A052460D8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 22:22:24 +0000 (UTC)
X-CSE-ConnectionGUID: xCK66jWlTwa0riDDU93a/g==
X-CSE-MsgGUID: P1+tXnuLTGataKJEtzGRQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25653956"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25653956"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 15:22:24 -0700
X-CSE-ConnectionGUID: HBzjqQFBQgijbl5/IX9X0g==
X-CSE-MsgGUID: 3jKxtzscSE6zLbwvbd3Psw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="74332669"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 15:22:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 15:22:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 15:22:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 15:22:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Emno6ZnL4+SIz7UEfjCNGrdeHYO4rspivMr5qcqcqJuA5ctcGzoQZLnFeBS8OzQp+w6R7J1Qg2IHgl1VsfvWYlHvzNMGuMMO1UpBVijLIWQrsAJZJInCDcokDxVxSBcU4sgdzKTiM5q8d4fuh3DyKX6jI+WhanYOMRvXYPNxelrZ5vEDu6G8MaxDh/UDIK4EIHP5nTcPK8IH1LqiYWIXWvimApwbbv/9A+tRYluKvUmzMiJtlQAZi/oAT2PfLhSJYIt9dK8fSuVNXMSSsXekRhn3IdwgTtd4qnWxxUJwJ4NiRjo5lrAKF54Y9rIbMRQJIiqL7MQfsxDkK6iRlOd+Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0oHctr9yPBXBhuuTAZr6GmpmOtBVHKdRH9oVD4Sk6mA=;
 b=EaK2WIhlVGnhPrGS2AmmiBMkWEunBdLtXR37oq9yucMB3gDotrjBeIfoY9GsfQdx/shdeRVxHWZvg16XAQgOoBgMpZR5hMRLXZ75jiQoDBdxx6BSOoUE5nXOFrgluPG3zqrYeh6jZAp00Ph2KPq6pqkfkSxzVc9hT121VI5Tbeqm3xF+JCIwXEW9lYFRX/Dg0FWHWlNmjl5X4ewtDT+WaEt4fdGErQXQtkxv1+iNwwb422xlFFX5RFi3OQsmnaGjXAb6pgf/5Np3McVKOqMEbTmVU/SvTCRT7/mJepKo+YSX0MdgLRvPk8sOPXdmiAbaRcfLcSt9Pz8IBm7cB4p5cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB8453.namprd11.prod.outlook.com (2603:10b6:510:308::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 17 Sep
 2024 22:22:21 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 22:22:21 +0000
Message-ID: <bc8f8703-2917-4da0-8df8-e361213c0781@intel.com>
Date: Tue, 17 Sep 2024 15:22:19 -0700
User-Agent: Mozilla Thunderbird
To: Hongbo Li <lihongbo22@huawei.com>, <anthony.l.nguyen@intel.com>
References: <20240902131407.3087903-1-lihongbo22@huawei.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240902131407.3087903-1-lihongbo22@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0112.namprd04.prod.outlook.com
 (2603:10b6:303:83::27) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB8453:EE_
X-MS-Office365-Filtering-Correlation-Id: ae509b72-f9a8-4f9d-926f-08dcd767327e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a01GM3ZMT3Q3b1RpR1hSNklzd0tEZnJxY29JaXJ0T2IvbjlrZWFuQnlVYWJ2?=
 =?utf-8?B?T2JGTEFmelJiZlFTdVVHclg4cUllOVZNUHFFdm1ocWVqT1FPK3h0c2FaYk5W?=
 =?utf-8?B?ME9LdzZadUYvcU81V0ZrVmcvMnd6b0RoaXNjWHJvYk5BWFRwajdGTHhpR0VD?=
 =?utf-8?B?d3JvUVBKR0pJSGltRDNINkVvT1kycE1NcVlycndnQjRjUUVDdUZiN0NHUzBX?=
 =?utf-8?B?YjJPeHl1c1hPckZRNTE2QktUL1dEWXY3WkdRdm9DcHJyTG9oQWlYS1JoTytk?=
 =?utf-8?B?bkIwV095akdJdUZRVDVYTU9ZTlIyMjJVZXZpdkIvdlBNeW8wbmRaU2NpMGNs?=
 =?utf-8?B?RnpCYlZaMFZ4N2ZydjY5b2ZrUTN4MCtaQ3FFMFVzRjdTa3V1R2RlSzJhMU9i?=
 =?utf-8?B?d0JKMWFOUkd5ZnA0S1NtU2E0U3Z1cm9QMXI2RVlsT3Z4OXdFbkRHcnp5aThu?=
 =?utf-8?B?SWd4MllxbjhTRm8zbmdZRFBOMVlsOTNGOGdxWEJCMTJwWDhHUVJmbXJ6by9I?=
 =?utf-8?B?bUsyR0czTm9KTTZJbHhOdFVRem5GTHl1elhtUDA3S3I2WTFML2hhQVJobVFT?=
 =?utf-8?B?aUJnSkJWRnhMR0dBaHYxQlRmUW11U0VmMmVBTlU0MXZRMHl4b1pJZVQ5THRO?=
 =?utf-8?B?VVROaFh1ekxzNlYxMmJ0VWtQaXFHSXo2UUhJbGM4Mmp3cTM5TTRsQTMwNU9X?=
 =?utf-8?B?ZzZLdWlHRU1zWTgrZ1JZUlJqU3hGMDdIV2xSclRLOHBaMHpieUFPQis3cmlD?=
 =?utf-8?B?MDZwTlQvdnpRNTBUZE5JcXFKUERrMUxPSTd2SnJhcUFQb0lMYzk2K0N1ektB?=
 =?utf-8?B?Q1lGcnhtaTI4US9MWmJqclZvSVZ6b2k4djZRZGZ2N1V4N3R3UUYvN2RpODl0?=
 =?utf-8?B?Vlg0SFJHNGxXWGNWczNkdytzVXBZNk11MDd4QU44azBNRlJ4aUpRVjBGdmNp?=
 =?utf-8?B?Qm9ONWZ4Y1lGRHk1N0VZTEluVUZaN1ovdk5RRTVJUTlrZ3pPN2E2MittU1RL?=
 =?utf-8?B?RGxCOEtYQWhxZWY5bE9GK0V2Z2ZRZmk2V280dDFqN1ZVY05YU3hja09TNzk5?=
 =?utf-8?B?V2ZUUzNKWlNaNXI0UlJnZTNRMTFPUnlydjBYQVZiUFV2eEtIeWo5VEsxOGxU?=
 =?utf-8?B?SGMxL1dZRnh3KzlOL0kyRVBjVjdlOEdmdUNpUVZKQ2VrMFZVUHZGR0JkbmZ2?=
 =?utf-8?B?MTR4cWNOWGtQMW1JMkJiRWxwcy9kb0dlaWNkWk8xSHdndkVrSTYva3FFOTFZ?=
 =?utf-8?B?aHVobkZ5MVh2K1FZYzRhTWM5NWhCdTJ2eDRSd3dNLzM0amtzUGVtYUx2TTRu?=
 =?utf-8?B?YWhuQ1JFZDEzbnhDNzN0dkxhempmQWw1U3o3RHp0ZmVkS2plY0dSU0FydjNr?=
 =?utf-8?B?T0M1ZTBRSHM2VnZhZ0NNMmhESTV6NXNhdnJHWTByM1VvOW02Mjh6anhyOU9V?=
 =?utf-8?B?R0ZiU2JORzYzMGdCdTU0MEZDMm91aHg0ZXY3Sm5vUGJTK1h2eCtldUZYMmZs?=
 =?utf-8?B?TjI3Vzg4aE5ZeTg5azhiNU5kbHQ1YjEyWS9FSVV1N29uWlkzbktkbFFPd2xD?=
 =?utf-8?B?YW9relBXc0hqSTdkRWRjQXZOMU1zK1JhSUl1Y3pmOXB2VkVneEpIYWNpUnY5?=
 =?utf-8?B?OVFNUmZqNHRqNWcwZEdyYmJVd1R2eDNmcGJtMGh2NTNrMGE0aEttODExUzhw?=
 =?utf-8?B?MzJzcXFzVjhGUzNTMG9qVDF1bEtLTVEzUGt1OTVVYzkvSVZUbXNTTURuZHFS?=
 =?utf-8?B?WFEwV0VWUWxIK3IwWHppN0xCeVVrUlpheWExSnV1SFByOWxWUXRnUkgydW9Z?=
 =?utf-8?B?a0N6MlVzZUdzamloQllBQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEhrSzFWbGNtM3JZLzYzcHd3SGRKR2NKTDN6UUN3emVpRExyNlphWi8rQVFw?=
 =?utf-8?B?WjRDWk95OGRWY2hlUmNiN3AxVmV5d04wempFMjM2VCtTcG1pSWhzN1RKMFJu?=
 =?utf-8?B?UE5RUk1Iam8rWU1uQTVibGZtUGovSG15VG5odnNrNS9VWFpGV0F5cXhEdXow?=
 =?utf-8?B?Z1p0ZXJ6b0ZEUVVDbmRNdGh4QXJUanlOQUt6eDVVbi9wRVB2MENzOSsxcm1r?=
 =?utf-8?B?MGlRRzJlM2w2eUR2eW5PVm4wK29MOXZMOTlzcllya2lycE1CeGpCaHhRWGJj?=
 =?utf-8?B?cU1FRmtPZ1NWTGZJQUFYbXFFVGNocXd4Ky9KaFl6S2JPZFdhbGUxeUNOMi9m?=
 =?utf-8?B?aHZoM3Rzem9nZUpQTFM5WjVtYVJPZ0R5VWhzR00veVdUcVM0SU9pK0J4OFYw?=
 =?utf-8?B?bTVEYU5IcUhuSUc1NXk5dlIyTytGL1dPRVF3clR5V2lVTEF3T1Z4N0FabDFa?=
 =?utf-8?B?eWVxYzVpd3VKWnBudVMvQWxEanZham8vVUlsQ0Yra2w3VlN5bDFvV05WeldB?=
 =?utf-8?B?MmQyeUxLVmE3bnFRYUxkRXg0SER6b2dGcG5DS3JpYVZqZXEvdnJLTDF5My9K?=
 =?utf-8?B?cDVKQ0NZZTJzMjU5OUxjczFydm50MFNyOUpaazBSdkdXZ1hTTkZxdjBmbUlJ?=
 =?utf-8?B?VzkraVdpR0svdnVjMVAxcEppTGdSaCsyN2hxNThMd1NKcGt1NFI5Y3RvMnVv?=
 =?utf-8?B?ZW9udloyMnEvQVRjMk8rcG9VczAxMkl5UTMrblJxNjFRb0pKWldYOXdhQTAz?=
 =?utf-8?B?R0tMclVLb2hwZ05WSXNLQzJ3dkNjY0tLL1FFUGxqNnoyRVFQaFNsVWlGUzVW?=
 =?utf-8?B?ak95ZUx3Nnk4WUxRQThJSDN1aENBc090ZkhHeC9sci9XSjhtclAwYkV3cEYv?=
 =?utf-8?B?SVlZdlJmOWpyNkxPc1BiUnh5eWZMZ1YyQlprMWZlb1FnaFBoSDM0U1kzbkYy?=
 =?utf-8?B?bTZQeHIybVFxY2pwUndhNy9WaXJhK1JuUXZZSjNIR0RmelVSdGtQRzhpWnFV?=
 =?utf-8?B?bHAzS2tCRmx4alhsZGI3dkFBaUNZa3crWE1idlFiaE9WaXpiSW9FNmhlbGNC?=
 =?utf-8?B?M3F0TXhnVnM3OUc2Z1pGQUdvbVdEVGpxRlhSY2pGZGVRY2llZmV5YnFkY09Z?=
 =?utf-8?B?M1J0aUYvOUZWVHpacGhYTWw0Z2dKNDR3eWZ5L0R2elNNbGFTcnNsMmVlZHRT?=
 =?utf-8?B?UkF2azZJV2tqU2twYWhvWURzMm1jRFhZeTdIK0Vma0F6cVVFSmNGbnY5N1V0?=
 =?utf-8?B?RnBudEExRjcveVUxemM1NDZyZnlGWUNTMmdvdlpPL04ySzZ6NkM5UDB5TXRS?=
 =?utf-8?B?b0pNQ0ZCMEFBeXZyK3VvVU9KcFFoMHB3NjRUdEptd2tBeTBMQXR5UkN1TGJN?=
 =?utf-8?B?MHNHUWNzWWl3aEI5SXg3Y0grb3pNTnFjc0ZlNjJxRWw4czZra2dmOUQ5bEp3?=
 =?utf-8?B?RjErZmtmQjZEUTBBK1lBbnNmcnh4TE9ZQllIMThnQ09ZRVNVOEZvdFpEbU5L?=
 =?utf-8?B?c09NR3VhWHU5czRjaW1QY3pISHRURzZFdm44ZVNKbWxHbjhDT2Q1ZmlSMis0?=
 =?utf-8?B?MDdOc2ZIUnNOSFBuTnlpMC9CQmdIWEVGY3Z2VnZtMDhSS3NLclh5Q0JOWEI1?=
 =?utf-8?B?WXNiM2MwU01FNjBRUnV6T1AxMjVXaWJSTTU0TWxoa1YrT3JnbDZnZUFZMWFM?=
 =?utf-8?B?YVdKc1Q5bDcyTzlzWmdVdEMrNmNmUHRCcWwrT01NZVVGOFFXVllEU3dlcGor?=
 =?utf-8?B?VnBxRHRlT3BGdkNiSlZBbmM3U05RNjFLUXVXaFFaWXJaMlp4NktPVlNQeElU?=
 =?utf-8?B?aEJnc3RrenlDdXlGRkhTV2grR290UDFqVVBiUWlrTUk5RkdRSm5wSXJ5a2h1?=
 =?utf-8?B?Yi90bUw4MFNTTThGV3ovc2hXK2FDY2N1REJHMHpJWmlQK1UvWlFTR3NWUEdY?=
 =?utf-8?B?L3JuYjlERFVNSXVTcXUySWFQRXI1dndvZHlQWVJTS0x0MHRQcTJRVXA0WHVZ?=
 =?utf-8?B?NHFqQjZpck1qOXE5WHNJRU80YTJqUW9vOVUxUFFNa1JaVndIbHpid1ZLUUJS?=
 =?utf-8?B?NHRBTXhQRm02TmJQamRWN1k5SFlPcHVCRHBaK2R3a2RmaS84MFlnZG11azBZ?=
 =?utf-8?B?aUxDMmN4L3FlbkRqUlJnMDhmL0U5RHR6Y1VQcDVsaE1VRkw4eU1UbXdPeVRn?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae509b72-f9a8-4f9d-926f-08dcd767327e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2024 22:22:20.9697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AMI/4sLhmHM92zDQLdY+ScfHX6fWzGyRQq0YMM6uXGw53aj8P6+eWCjEyQE1vnScJrKbgYWehDAzbB0Cagvrdpn6EO1LXa8uDGfQGjkxxic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8453
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726611745; x=1758147745;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h41+ydJvBfu/zsZnita1IMXqSAyoR2/iY2+kXt4iK9k=;
 b=F3uVtvwq7xX72eAwynpJruc/JxVjotcdcBKXu+jDxCjvMB950TQVD6pp
 nlWwuyciFymgQlJh3ISNM3hfy1NXuw1yXXWjvix0mGpQa0fNovlMS7T92
 dmhOifs6mouUs8Ek0UK9l3CUuuRAJ6ggE21QCQ1zMwkgVI09qeH64xgh6
 QYveFGQXmxB6+KW4aKhhMIdu7HliuObB1rQhlOST5QAh3i4TcbtyRFaoD
 lv59G17AZbIypYrzCT99EVrEKozfeYjLRZk59Ct6KoEEv0AbN4nwLIBC9
 CbOA7tYDyU7oq+7mfaGbL2NJGggRDLT8iw8rk+pG/eBEA+nfm8ZNa1fV2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F3uVtvwq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Make use of
 assign_bit() API
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
Cc: przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/2/2024 6:14 AM, Hongbo Li wrote:
> We have for some time the assign_bit() API to replace open coded
> 
>     if (foo)
>             set_bit(n, bar);
>     else
>             clear_bit(n, bar);
> 
> Use this API to clean the code. No functional change intended.
> 
> Signed-off-by: Hongbo Li <lihongbo22@huawei.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 46d3c5a34d6a..e3ad91b3ba77 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6522,8 +6522,7 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
>  	if (changed & NETIF_F_HW_TC) {
>  		bool ena = !!(features & NETIF_F_HW_TC);
>  
> -		ena ? set_bit(ICE_FLAG_CLS_FLOWER, pf->flags) :
> -		      clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
> +		assign_bit(ICE_FLAG_CLS_FLOWER, pf->flags, ena);
>  	}
>  
>  	if (changed & NETIF_F_LOOPBACK)

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
