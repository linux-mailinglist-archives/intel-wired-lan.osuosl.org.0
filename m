Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADDAC7BBE8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 22:27:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E8DB42B9D;
	Fri, 21 Nov 2025 21:27:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zeo6yxMaZnPQ; Fri, 21 Nov 2025 21:27:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AC8E42B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763760460;
	bh=9FORQQjjKh0chhr079NCM0r3u5gdLmzng8aEvl/OoEw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6zSu19lGZQOquIZhyEC3D/iMIvCcXz2+/B+4a34MoYacHJ0r/AaIMn4l+XhPvSWuW
	 janIisEyinc7jmnAMZs6qeKtBRhr1KyvHQk5LpMY6Yby68Ej7DEkqfFDQ3bggHKez2
	 6Vc4fQziY/izvhcjXd/Yt7ac9B3SRJFlBu7fkMqUnhytQ2FCdUvpi6Y2tGEQR9qyYL
	 V+ZTfVHJpZVJO3eYPa6fLuMR1QQUaKrtAytmjWzhuc7YsbfZfkUwuh5kwadH8/azPG
	 t4Zh5xSZkq+N2gbBrnX2VcD0dWbLzsSPdietazm85M3tte3oDKT8uJUKvv9da5DKX0
	 w6rQcy0x9ymGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AC8E42B9E;
	Fri, 21 Nov 2025 21:27:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 842D7122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A58760B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QYLJClU5t3RQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 21:27:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8C94C60ACA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C94C60ACA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C94C60ACA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:27:38 +0000 (UTC)
X-CSE-ConnectionGUID: GlnfiNOKQ8a2J5K8xroRZg==
X-CSE-MsgGUID: Es/yw45ZSFes28dsJcntGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="83482664"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="83482664"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:27:38 -0800
X-CSE-ConnectionGUID: FygtOW47SkyJhJc6lwvY3Q==
X-CSE-MsgGUID: Ei3K9igrTuKLlES/252uxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="196079273"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:27:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:27:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 13:27:37 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:27:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W5w1CWKgvKu+vt7YO9MPTpJSIR8Cipuu1OJ0B9HutCHgCYA7P2eP8chtraFmsX0J5WiiV9qHyoVNv0j6IR7rP/dmZaVXIqAiHCLl5CipkKvqvOMoEP04lqrvAJ1gS71ja8sFPVi7kFy1zCgVuzi1ctLQkNpqU0gMMY6i7A4G3dmw26ExyytgQHAvQyVAPOJipKknzlDdYtJ6anC0x9Jv2r1BtRybn6S/xwmj42FsFwkpN7V+LSJc6GOuZPfoFHMVP2ZryjoYcrG1wI2WoZ9F2XibF/AwONVE7r4YAPBuwOVA+K3SzB+lJRXseERafLOnhkw3qXijmwNoKdd1smDHbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9FORQQjjKh0chhr079NCM0r3u5gdLmzng8aEvl/OoEw=;
 b=w2tK6Y89erSMiLk4fZvIh9feIUYI+QgYJWTJ+ojM+xlFmIK/vyj/jaD/HkYiNxOKpHCJUtdOO/uezz/Df1AicQGSYqbp8g16R+bSdjVU6zC9kmzDooYMK0kI8BbYOav37m2LC9Ymo11B6XW8hYh/kMBaRP+FUWZqcC3HEW3FNSoTohSrYtHEHdP6x9K/C4IsDsrRa2RYSYazRkO59Im+naffBBp3RRgMdPFx7hu/pOth53OmU2KFlE3dyWyOoE3wyCaaCIEEORMTjDZDMooM0/SiPmXw3bAO2z6RWyqAGhO3bhnml9mIlRyxCYVvAvpPcMiKjJsUoLrb4G6rLSmsIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB5996.namprd11.prod.outlook.com (2603:10b6:8:5f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 21:27:30 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 21:27:30 +0000
Message-ID: <f5ec8890-c2e2-482e-a913-8cf943f5966f@intel.com>
Date: Fri, 21 Nov 2025 13:27:27 -0800
User-Agent: Mozilla Thunderbird
To: Sreedevi Joshi <sreedevi.joshi@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-3-sreedevi.joshi@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251118042228.381667-3-sreedevi.joshi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0151.namprd03.prod.outlook.com
 (2603:10b6:303:8d::6) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB5996:EE_
X-MS-Office365-Filtering-Correlation-Id: f4492ed3-9292-4598-9bcd-08de2944c661
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmV1Ni9idEdrNU9jMkwvQ3AzTW9tQmxnL2gwSDZDZ09kRjBkQWhpVjNEZEFV?=
 =?utf-8?B?UkZzRnNhUFhiSnhMZDdZS05MYTdRK1FuOFlxTTVvNGpYN3FVMXlDL2ZjVGk3?=
 =?utf-8?B?V2JrbG1rU2ZKS1NPaXZZSmphK2hZK054TnZDNVMzRjhZd0g5Q0RFakVvTkIy?=
 =?utf-8?B?S1dmclora29QN3lTK2NUY0xXZHQveWpVVGw2Q3VtUWR3KzZ6ZFRiWjBqdTk0?=
 =?utf-8?B?TWpNRFZLWnpqVVliQkpudTJrajdaYUF4SzBMYkhvRE1vd2Z2VjNNdkhkb0J4?=
 =?utf-8?B?TmQyeGtiRm56UjFUTWI1SjdQNDRiQXRPVlNGbE12VS9ZSk9yWERia1A5U3k3?=
 =?utf-8?B?Rm9RalJSQy9vWDYzV2dqUSs4SjdYTEtOTUZiYWhCSVV2dVhzakVTUjdEdlp6?=
 =?utf-8?B?cjlEQTNoT043WHJuMW1sRFl1QTVHNTIwc0w2M0FUUjBmK3Baa0V3YXEwbnNG?=
 =?utf-8?B?c2pZUThaL2ZsZWhOTyt2cUZNbm5LeTJrOFErcitxdjM4ak9GQ3NUMStGQ0ht?=
 =?utf-8?B?Yk9ZMmpFR1E3b1NxdTFZSWxUa0FVSXZQUnZQaFRuUGpET2ZHLzRUQjBQLzFU?=
 =?utf-8?B?dytUOWJTZ0x5MG5ySHpRc1JqRXdISExERWdNcmtISlBGNjRuTDhwVFhiR3FI?=
 =?utf-8?B?ZXNQUHpHelEvSlhIWnpNaCtXSTFUOGEweDJXT2xNWXhyYWZHemdzeEVzcG5Y?=
 =?utf-8?B?Rkx6dkNnZjQ3Y1NGcFVldEdWNkVyYlFUQktPYjVYUkNBeVJMdHUyUUJBL1VI?=
 =?utf-8?B?c1RoZEtyUVZBTXVNWFJ0SG1heWhVQjV1WmEzQ091K0lJWHduZTdqa3RWd3B0?=
 =?utf-8?B?Y0lheGFvWTJNNjFxdDd1QXh5TWk2eGFiRzJpQXlTejdOc0ZHRStZSmRqcUgx?=
 =?utf-8?B?eERuOFhKR2RuQWVqSkUzU1Rhc0wrSmVCbkpvY3lYVEJvN2oyNGFSb2dTOTh3?=
 =?utf-8?B?TGcvdGd1SEh6Nm1EOU9Dd2tBSVlvWnlXU1hSQklwQ1dSOUpua0E1cVFucGRU?=
 =?utf-8?B?Mm85VzQzaTdjM0JqR3IzbXJ6U1YraE43WCtvYnYvTUE1TFpHazMwUFBQSGJ0?=
 =?utf-8?B?anpIWHRKcCt1c3B3OGZVWGxiVTB4VHFtaVVtbm9JUWVQeHJ6VTdqYUVRdm5s?=
 =?utf-8?B?NmJtNFdLdFBUZDhSaHlrcVZRcVBtZnk0d1daTTQweVQ5WWMvRk1hOHdBZHRN?=
 =?utf-8?B?a3hFU1N6N2gxQkFpSVcyL0dRRkhoczh1UjlmZEo5YXFMUENjTXBKbEJRbU5u?=
 =?utf-8?B?T2kvc01YT1lkemhyWEZObnlUTjJielA4cTViZ1B1bnczK243ZjRiaUxUSjhJ?=
 =?utf-8?B?alU5NGd3VmtLNGxCVXM1T1QxeC9keWt3QVNObDl4V3A0ZnFYZXlqT1RHaWtE?=
 =?utf-8?B?NEhKVzNqN1J1dG1Ec3VyK0NtTVlvMEo0NW1NdE9iZEd5ZHZRRFljVlp2ZEVI?=
 =?utf-8?B?QUxsYXc1VndyL1hNWXVKZk5KYXJuL1pKYTBTVmE1ZU50RzFka2x4SmpoOWY4?=
 =?utf-8?B?U0M4UThZMEtEQWc4cDJNcEw5NThLd3pWYzBTTzY5c2c2Snc2UGcvL28vSEZW?=
 =?utf-8?B?RFFwWlFzZXIwZmdtZk5kSGVmUER3RzNESUJZWGpzQ3ZHbDFhTVBhMnd3cVhU?=
 =?utf-8?B?WXZCN1FyZDh3ZmU1OSsyU3UvdlZJblROdjFzZjgxVTdIL2dmYURuY0h4d0pV?=
 =?utf-8?B?SGsrR2hSdXJHOEFpVTVRZ05OZXJYWVBKdU12OVhyV09LTlA2Tzd4Y0I1WUQy?=
 =?utf-8?B?ZHcxY3FhTWY2Y2ZtRXhxYWYwN2NVY3dyd0ZST09tOUsrdElvVWlzelRzZnZp?=
 =?utf-8?B?blpEaXZRTnpYcXU0NWJFMW9qNFdxcHY2UlZ6K3gwWW5qN1hDNjZHKzZ4dm1H?=
 =?utf-8?B?M2dxKzREaWdYV2RyR2tQV0x4Mlh2eW9Yd0tRYWo3bVJNRDZpLzRqOFB5TXA0?=
 =?utf-8?Q?CvBBijvspcCMSIHtTUMkyS6+D6zsC/q8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aE1zcy96Z1NqVXBMdU8wTXBZK0JLOG1YZng0cGRTMS84REdqVlVtd211OWwy?=
 =?utf-8?B?bDY4c1JEajV5YUMvRGpMaHMrcmlEcWU5UTR2bnQ0K3JUeHlBOExHekZFUTRr?=
 =?utf-8?B?cW9DVWo0YXZsWXJkVUNtRlgrdHk2L2pOZE90SXdBUWNuWktjeXdJTzdZLzRU?=
 =?utf-8?B?UzJEc0lxb2ZnZDdBOXJabnppMHh2aytHOG1zMnROS1ozUGhoWEwzREVSNmY2?=
 =?utf-8?B?ZEJBWnVEaUxJbjR1eGtnMEtaYkZGenpXTmlseEdmTEltaGg2ZmJUWjZGNXFP?=
 =?utf-8?B?VEZ2TXE4a05RUEVWZEEvRHlmS2JNS2NZakxDSUNoOTRsWWY3eS8ySU5xWHJP?=
 =?utf-8?B?Z094aXovUUNDeEN2MTluUVlORHUxOGErT1M4aFZBUG1YU01Ea3NhTHEyNUhC?=
 =?utf-8?B?Q1l2dHUwcndQc2xQc21CTW5tUDQrM3ExR2FWRG1xbjl6blZ4Q3c3MHlNSTFQ?=
 =?utf-8?B?R21wUm5ta1hFajZLSTAwblBIT2tneXY4Rk12Y2NzMWNucFBkTUZRZFZzZlFt?=
 =?utf-8?B?bm0xdUNLMkhpZ0o5bnNXMkRJajVCaEVJVFFXMlVFVFQrRTdzYjN1Mi9UbDJY?=
 =?utf-8?B?S2dGMlQ3eEVxRFVVMnJQSTVMWnRXOU5GMmJ6ZWVjM2t2Y21LSi9rQ2xsYVpD?=
 =?utf-8?B?WVlXY21NK0JKQUFNSUw1U0ZydmNhRzZnMjd3MXJLVjBaNndBQXpreU5KeEl1?=
 =?utf-8?B?dGsvY1o4QkVXN0RYVHNTM3Q4ZkhvUTdBbWE4aVRWOC9KV1VyeEdES0Urb0l2?=
 =?utf-8?B?VHBTbDN4NWxpUVd5ZTlhTE9JejhIZ1ZnYytQNWtqajhRcmVZMXBaVzJ1OXpX?=
 =?utf-8?B?OElmNU1ESENQR3lWN3JIVVlIc3lITjRYUjZsc013b2dXRVJPRGFUU1ZMRVYx?=
 =?utf-8?B?TWV0cnlwRktwUmxqdVhHYXp5Rnphc3dwRHpPMm02TVRlekVpMlp3WmtFVVk1?=
 =?utf-8?B?SnFiVkVDaDFIMGpXeUxpaWR2c1BEWmZsYmlTMkNXWWo1c2VDQkUvZFViOGdq?=
 =?utf-8?B?bG50cW9jS0p5blI5SDczdFhZVTNTTktFTWdHa1pYdFJIejZUNVhBZHNNZTdR?=
 =?utf-8?B?bnM2VHlRRVNVMlErRXlaOFVvS2VvQkhZblBTM01KZUZvdHlIaTZaa0lxSU1O?=
 =?utf-8?B?aUxFNlhtbjQwWDdHQS81NHlMTzRESGR5YnMvOHUxTDhGdlJmSUxnK3crL2VR?=
 =?utf-8?B?Z3BFay81S0tsQjNCYTlGbVhpWnVRaXg1RTEycjJ4OGJqT0JGRkhuWUdYenBO?=
 =?utf-8?B?bkttd0NFQkxrTkNWUEpZNE41a2ttYjEyS2ZISTlFOXBQTDVxSWlSUmtHUnRU?=
 =?utf-8?B?bkduOFNSRkUwMWlodTkxNVVmNk1lNHhpb1V3Y04zcEh6V2E0MlF5SGNadlY3?=
 =?utf-8?B?OHl1T0RueDNEbC9LamlXdTlHZlFlQzVXcHh4S1ZteVNxVlJ6UFF4Q01oUnpC?=
 =?utf-8?B?NjhSQmEzUEVqMUpxWWpDbTFiQ1NEeEF0clZuMERkUzB1RnoxMEVEVFJOUlFk?=
 =?utf-8?B?Rzl1WUc0SFFGZmNGQ3NLajJwdEt1ekNycU9jNTlhdjJjRWp1c0JiRkRYMmU3?=
 =?utf-8?B?K0xXZ0o5ZWdKVWlrenlNL2psWW1wQStOSVh4MDFiT2k1d3pYY01tdTJYQzU2?=
 =?utf-8?B?Y0lMUTdBN2I4OXYrbkJxQUdrTTRwL0dlTWt4dFZNNVkrTlVDWkxMWXJxSm5m?=
 =?utf-8?B?ajBNVzgzWHlBbTcxYkFnMThZNmpGME9SY3Y4UDF4TFd6bGdjMkJBZFBrQ2sr?=
 =?utf-8?B?Y0JLWVlLWGh6b3hwUmNBRTAyL1FEc2wyblpJKzBHS1lhR0RUVEZwQWtqMVFw?=
 =?utf-8?B?SUR1dUNzR04vK25WUkhDZXVLQXdhMFJybXF1WXhRZGUvWXhXWVI1d3VkVFNn?=
 =?utf-8?B?VHppUVl4NjlLK3gzbm5UZytXQXhiaXpjK25STEVkSjhoUXhqZHlVVE5STG80?=
 =?utf-8?B?anJZQVZKVGNRTFViUmt0MURFWGcyUk5PVHVjaUNRODFIaE00cVhMYkZwL2tU?=
 =?utf-8?B?ZWxyMWhpSUxkY0FEbDF1NTRiUkJadG1aekw1ZkJ4M0Z3UEVTQU9TZGZpTGl3?=
 =?utf-8?B?a1JRK3dpeDZWOGhaSkZid3JhbTA1M0wvTHZLb3JWdERjRHg5M3gzanAxa01s?=
 =?utf-8?B?eUtrbHVRam5VUWtwZGI5VzhnelEyaVQwZEdlVm5CS3Q0REM0QmcyT1VPaEhY?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4492ed3-9292-4598-9bcd-08de2944c661
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 21:27:29.9795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fkUsqTbzrrWNECoZ3yyUrX6b0zgxddjZSByZ/knrLlkrvxuGBy2FL05cdoOOkBQZuZR/82yGOnhSNDew3Gj2zKW/XP45nUf5FDv0aQi8HYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763760458; x=1795296458;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IV4RDV6MwUnTT2DDd6VWsjDxD7AzggTKN3VwmsP2xZE=;
 b=iypv480argj95lRCtNxaG74FxYuEPoqTV/9c4oDtEH6ihczf/JROJ7Gz
 BLHSFuT38cFjURCFETet4cfDOzH2cAb6cnEZ/Fjuqck1XdceNYYMFOb+B
 k7+IRPOKAPISG/2aFd6eVNVe6WtFsVsb0bSbBOQgBQ22jNdepsdf8GmCs
 IV6p5t7XHhz8QBUNKw94KtNfM1edqQxjMZ6F5UmRiCESzln3hxkt6H5GI
 2h27maCFuhC1mn0hKhzn266egFPgUjyHmdnT8rXZy8AOkZUjq7xyhXQS2
 wsAAbmm83NO1j5kiFCU5Z3VSt/WZvVC/hX90YfBbn4B0689GxH1LKIbrG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iypv480a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: Fix RSS LUT
 configuration on down interfaces
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



On 11/17/2025 8:22 PM, Sreedevi Joshi wrote:
> RSS LUT provisioning and queries on a down interface currently return
> silently without effect. Users should be able to configure RSS settings
> even when the interface is down.
> 
> Fix by maintaining RSS configuration changes in the driver's soft copy and
> deferring HW programming until the interface comes up.
> 
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 17 +++++++++++------
>   1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> index 4c6e52253ae4..d9903a21972a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> @@ -393,7 +393,10 @@ static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
>    * @netdev: network interface device structure
>    * @rxfh: pointer to param struct (indir, key, hfunc)
>    *
> - * Reads the indirection table directly from the hardware. Always returns 0.
> + * RSS LUT and Key information are read from driver's cached
> + * copy. When rxhash is off, rss lut will be displayed as zeros.
> + *
> + * Returns 0 on success.

Can you make this Return: to make kdoc happy?

>    */
>   static int idpf_get_rxfh(struct net_device *netdev,
>   			 struct ethtool_rxfh_param *rxfh)
> @@ -401,10 +404,13 @@ static int idpf_get_rxfh(struct net_device *netdev,
>   	struct idpf_netdev_priv *np = netdev_priv(netdev);
>   	struct idpf_rss_data *rss_data;
>   	struct idpf_adapter *adapter;
> +	struct idpf_vport *vport;
> +	bool rxhash_ena;
>   	int err = 0;
>   	u16 i;
>   
>   	idpf_vport_ctrl_lock(netdev);
> +	vport = idpf_netdev_to_vport(netdev);
>   
>   	adapter = np->adapter;
>   
> @@ -414,9 +420,8 @@ static int idpf_get_rxfh(struct net_device *netdev,
>   	}
>   
>   	rss_data = &adapter->vport_config[np->vport_idx]->user_config.rss_data;
> -	if (np->state != __IDPF_VPORT_UP)
> -		goto unlock_mutex;
>   
> +	rxhash_ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
>   	rxfh->hfunc = ETH_RSS_HASH_TOP;
>   
>   	if (rxfh->key)
> @@ -424,7 +429,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
>   
>   	if (rxfh->indir) {
>   		for (i = 0; i < rss_data->rss_lut_size; i++)
> -			rxfh->indir[i] = rss_data->rss_lut[i];
> +			rxfh->indir[i] = (rxhash_ena) ? rss_data->rss_lut[i] : 0;

Parens not needed

>   	}
>   
>   unlock_mutex:
> @@ -464,8 +469,6 @@ static int idpf_set_rxfh(struct net_device *netdev,
>   	}
>   
>   	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
> -	if (np->state != __IDPF_VPORT_UP)
> -		goto unlock_mutex;
>   
>   	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
>   	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
> @@ -481,6 +484,8 @@ static int idpf_set_rxfh(struct net_device *netdev,
>   			rss_data->rss_lut[lut] = rxfh->indir[lut];
>   	}
>   
> +	if (np->state != __IDPF_VPORT_UP)
> +		goto unlock_mutex;
>   	err = idpf_config_rss(vport);
>   
>   unlock_mutex:

