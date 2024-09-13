Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E39697790E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 09:02:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB46F611E3;
	Fri, 13 Sep 2024 07:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JT17NJNWh5pj; Fri, 13 Sep 2024 07:02:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C775611CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726210948;
	bh=4eutdftR5eS3XgJyVt1Lwkr6ItxpIO114FROj0zcFlM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ez/utjs8yrr70vqjMaG7+khaKAZiWbNdGYkrNZgURsacHhFO+xdXP9EZSBjS11kt4
	 VamFhrBr1q6UvB8Vwm34NOiKY3X8pAv1c7EGGk+GCE6n0i+GjpX6bs2MvMjyDPfNZ+
	 I7g+xuDqxTuFRAI20S9zwEskku5c3zrUokYqEcaOzx6MPz7+S9M1iJG+Xj/7v2l9e5
	 8fPf/bZfHzkMDm7wYw+C9x0RWKco32q7UrPZwcjSE3kH6Fs9fVzWrVyK08mizeTzUq
	 BzhMGhsBC6x5XvUCKFGGDjw72gqBeP/TsycK9FYa9mq071R4QSo3aeuvBMhF+bMbzn
	 G57px/ty9qbgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C775611CA;
	Fri, 13 Sep 2024 07:02:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97F8B1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 07:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85A1D403AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 07:02:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmsxyV30A8Zy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 07:02:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5547640377
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5547640377
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5547640377
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 07:02:24 +0000 (UTC)
X-CSE-ConnectionGUID: KxYaG5RbQaOC6AhkYbGKKg==
X-CSE-MsgGUID: ZujS8xOlRLCaNfr5dOZ8kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25253356"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="25253356"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 00:02:23 -0700
X-CSE-ConnectionGUID: oHcTf75mQyGUpTUYD+BO4w==
X-CSE-MsgGUID: KDwXdn7xTrW2gqLaxO7rPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="98654844"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 00:02:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 00:02:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 00:02:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 00:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h4aAFBJ5It8zcSsPmxRej9zH7gsGKGeFiAluo3Y3cZT7t0M0/IwRNqP7XSgJYD1GEKa2zUQvToE7BdZdMZhNNAfZOOWyqnBfYODgRL+e6tpOjZvna9S2Y//P1LBgsZ6W8PXLMJ4PWKfiYtelqO7PfnFhdSEmgnZ5R5MgvQpjm4po0y5LHqUN4lmzSHTkYEYnP9kkgQ8tcUt9A+z+i0Jm1QIl86L+cjCleyB5BDEv4as4S8ZlCJwxSgzTAZP2BNzswcqQVCz4SxobL98rz+M2JVRt7bN0mNkSxZ3RMw6Yqp3d0T82eCyr1ExNedLy/sU4EukANEkRm7PAiBItmxYXcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4eutdftR5eS3XgJyVt1Lwkr6ItxpIO114FROj0zcFlM=;
 b=uPzdwxbsDYOYcZ4B0FyNsQbrx4jGABmiw8288egG7mZewNP4FlTKohxKUGWjBUW3O/1Uhk5FALAwDKBxHudFP/cupTuJOsPFq58Za/W///PTrmfZUcGhdO+fSoDD0W6qbX4v78qkrYXRLEqr2o7I/MHvB0t/tMi4SPBgEzBG3zPrklxUBTpIol0DhLGnATHiaSF9ZbK5pfrSBwKfm6aGwFWn6QpN+skbmB/Lc/R4D3LOBoBN6EJG8kYttB8Z9dIXrnLYRs+IoyxWPNMFQzIabfNPmIaV1oEHPJjo8TmOX5DLynB86uKwcYKEwvp1PTDS0HIgWLEEUAcOxRPRlBOOwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Fri, 13 Sep
 2024 07:02:21 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7962.018; Fri, 13 Sep 2024
 07:02:20 +0000
Message-ID: <656a4613-9b31-d64b-fc78-32f6dfdc96e9@intel.com>
Date: Fri, 13 Sep 2024 10:02:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jesper Juhl <jesperjuhl76@gmail.com>, Jakub Kicinski <kuba@kernel.org>
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
 <20240912083746.34a7cd3b@kernel.org>
 <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0081.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ0PR11MB5069:EE_
X-MS-Office365-Filtering-Correlation-Id: 87ea38c5-933e-45c5-9791-08dcd3c202f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTlnd2UvTGFLU2g2bURhVXBiUENrS2QxRzB1QlN3dkMzZWptVnFtalF1b3Vh?=
 =?utf-8?B?aTZpQVppWW5HaFVDZjZ0SEllaEo2RXFQK002SlV5WlExNm12Q1c5c2Y5QXgy?=
 =?utf-8?B?VUZoN3F0ODlPMWZVSHFpMDZUcGlmcEZxeFVsN2h3VWoxcVAzeHNnTllPN1F6?=
 =?utf-8?B?cXlBUlZMTG5TR0VTQ2twZnVlVXp1Q3A5eXlIL3pxR0RoT2h1QWI4YytaeHNx?=
 =?utf-8?B?Z1YyMlRNbGtLZUUydlNGS1JsWER6eUdPdnFQbGtzZEppMFBZdGlBYWZOdEhK?=
 =?utf-8?B?UnkrRC9rSzY3VTdwNlJuZEkxaEVSNG5CRUxQcEd1d1AwR0hidWkyVXlGcnRK?=
 =?utf-8?B?VWNLMWJiSkdsdlRYM1VDRUVueXNHSWd5dUNGU1dpaHE5R3NhSUpsdTY1cXZq?=
 =?utf-8?B?TDJpSUZ0R1VTQkFJMmR0QlVqcXhBTC9ZaDVYdmpkQ1p1TjdnY1FUTXdHNHpJ?=
 =?utf-8?B?WUlLY1lObm1qZ1VuNFBKazFWV2FFS1FybjMvTU5FSDBLV010RWZmU3o2NkF5?=
 =?utf-8?B?c0lqRC9CQ2hhN0pkWGdUU3V2cFRoV2dKVUp5SUVjUjVHSlVIOU1qTmFJUThW?=
 =?utf-8?B?Z1ZIeHJ6czhVdWl1Z09mbnkyRHJpZGVPWTc0VWVJbStxejhJa2JZU2JIOVZ6?=
 =?utf-8?B?eTBQbmU0MGdaUzByTkZMOWxNVVZuL1UrN2hINjdDRHpGcGJVZlJkRkVCR04x?=
 =?utf-8?B?R1V6ME5JdzlpeXNxNmFaWTdBSjVQRzkwdE5uQ3FBemNEU0l2cWlCTEJSMTFk?=
 =?utf-8?B?R3F4ZlhVTnhhYi9MNWhTRmFuWkR2LzNIOEtOYnlZOTlNTzd3cWljVm1XWFJm?=
 =?utf-8?B?bkpLQXlET0NWVVBGS2Q0VFJMUWZFNytSTkhCdHczbUdzUndjcGZ4eE1yWGx0?=
 =?utf-8?B?c3pIeE4zVDg2YXA4OUdBTG52cERId2Vxenh2ejl5YmJudFVJUFRna0lhOUJ6?=
 =?utf-8?B?cGlFK0JCeGIxSlZsM21LVFloTXY1UUpQUlZTbnh0Z0NNWi9zV1UxRUpkS08x?=
 =?utf-8?B?MkdDY3hoTHIwbWx4M3BnVWVXNGV5UkRKN2N4TWxyajJmamtaQ2s3Q3E4MHV1?=
 =?utf-8?B?Y290ckhHc1NIcDZYRDRUb0xQR25aTWk0VHhHSHFlc3kvS0phdW5pRlljQ0JI?=
 =?utf-8?B?NHFTU05ldy9taWVMMDhNRnRDRmpCUndBOWZZeDk0Y0xLbFVMQTBVbzJPUm1N?=
 =?utf-8?B?cysxSmkycW5GUDZoTzlJTjltOG93djd2R3RnRDRXWHh0VEsyUVJpQW9FTkh2?=
 =?utf-8?B?TG9YMGF0cGhwWUZwTnRockY1MVQ0V1k5OWlyU0hIWlI3WVQvbWVIeUFqb2Mv?=
 =?utf-8?B?WEJaUWswakZ4ZGlyN0J0VGh6MlM3UW5raTVTb3h2b21zRXc4OUZZZEtSZjl0?=
 =?utf-8?B?VVlNY2ZHb0VLY01ENmVKdENoTVpLcEFUeEhYQXZPcVVjZmFRTGhvSS82SDRM?=
 =?utf-8?B?M1RwYVZTR3BSTitiUW9IRUlHdWxMMVdGRkozVTJ3blFUdnRqOUdaV2Q0Zjh0?=
 =?utf-8?B?aW5RUStySlNCY29ON1IwNHJ6NGJJa1BiVU52M1R3NnVmbnVTTVNpTEcrdFNr?=
 =?utf-8?B?dVV2U0VuaG1UWnpJc0lrQU5EUkQ4UnhnbTFoVTU1TkRHd0c4bjZpUGxNMU5E?=
 =?utf-8?B?VncrWDJqSEowUitMbCtGY2hKc0t1WmM4aDZUY2ZnZ21ZQUtJaWluT0djbENx?=
 =?utf-8?B?dnBPNlpWT0NqTEhKUFZDYkM4VEx4RTQxT2l0aTdEYmdoK2ZVZE56TGVyVTJD?=
 =?utf-8?B?UllITW8vZFZ3VTNkWHIyVXRmYnVicTdqV2ZOa2krL2J5TU9KdFpXMDBoRDF0?=
 =?utf-8?B?TmFtMlFFdWJLUE83YndBZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUllb0JFT3Y1WFZLRy82aTMvQXBaS1NFUklVZFlSTUJoeTN5dWorckY0QUxm?=
 =?utf-8?B?NkJSaUxhYWc1bWpYaHo2S0E1YnRkT3N4TjNoR2I3ZU5kRmxYd3RIMHN2WXda?=
 =?utf-8?B?clptbW9JOGg2VXZVNTV4bEhybGplTHZESU1tOUJFc3hiYzZoWXNWUWxhYVQy?=
 =?utf-8?B?QlRSZDN6eXlHVlJyZGxlVFpRUHNyTTE0K2JpUHhjTktCZDRtdHVOczFQREpQ?=
 =?utf-8?B?Ti9CcytTS1ljNlI3eDhhNzhpb3hJR0FGOWlwUkIxdUZaRzJvNy80WWZUMEl0?=
 =?utf-8?B?R1IydC9DYloyRDdISjFYOEtrZm43SEhzUXNJRFg2ZHlpaEdKdkQrQXgvQzJD?=
 =?utf-8?B?WUhBbko1QkFiV2huWTJIWnN5NTZLdVM4RkV0RFZEM2NZdWZWRlpKUlp4Tk9R?=
 =?utf-8?B?REMxVkRHZitpRjNtRjF2eHNSRUxyL1Fia0pFaTFwZzJPQXE1ZWwyb3k1VGd1?=
 =?utf-8?B?aHAyemVOaFZXb0lYU05JQXZVeUNOQmhjSjNnRUNpTkc1RlNRVWRKTzA4RmVB?=
 =?utf-8?B?NjU1MnBGblNJcFpwOHYwUDVXUEgxaXBOenMwOUs4eDVwLzZyYjlEY1lJNkxy?=
 =?utf-8?B?QlZvYmE5UGtoVDlVQ1lsMkVUREdDWlVhQ0E0WGF4enZRWUh0YlZEMDFLbWp3?=
 =?utf-8?B?M0thQzZ1S1dUSHRQWEk3cjBQcVJXRUZBYTFjKzNlVXBaN3VjWnZDaDBiR3lC?=
 =?utf-8?B?em1jdVY3N2JQY3Q4OUVnRzM3NEl5L3BQN09XaTZBc0N3cGxKM2JzMmpvbVcv?=
 =?utf-8?B?cUhWNm5zWEhhS0RXWFRyQ2JLWWFIanRIUjRGbDZ6MmppNUwxUEdPWmV4MWQ2?=
 =?utf-8?B?NVVOc0UwbU41Zk1WcGxKaDcyWG16WEE4dlliZzE5MndzL3YwSEJhNlFpdlFM?=
 =?utf-8?B?dFlhdGcrSEhZTTRxeklDclNtNDBiMzhQdFgwdW5zQWcxNEpJRXhibFhHVHVL?=
 =?utf-8?B?a2NqRzRsaTdoYWFkMjhOblpPWmQ2dFlMODkvRjFaeHRMZXhIeEJoN3BqbUJR?=
 =?utf-8?B?cHpCVmVkbUVQN0hvcmx5WVpQOE5DZkdQQ2RTeHNaMjFKWDVnMDJoVkNMZVB5?=
 =?utf-8?B?TjF1dzBUOHNvZ3JhKyt0Z1Evb3hDdk5rRkhRbE9lZUNLcnV2TWdLejcrdjkr?=
 =?utf-8?B?b29BcHZRai94RmczNGJUa0IzN2sxdS9lRFNzNEV3THZpRTA5TmhVam90eG5m?=
 =?utf-8?B?azJYd29SNk43ck5mbm1kQVI2ZmU4YmpBL1h5clJaTTFPeTRTODVINVVJbm1I?=
 =?utf-8?B?UzJjNlZqejlUdDJlV2FaS2NiR1hGaUs5WnN5V0FmeVVXQlBtZTYyMTNxVloz?=
 =?utf-8?B?ZzZXSm1GaFlkTm96NDJsZlhncnp4blVvM2ZXRWtiYlIxL1d2aFZySHozaHMx?=
 =?utf-8?B?MUhkdStmcHgrYjFjM05pMXNQbXBSU0dzK0N6NTV4R3RIVVNZMnFXOFhvKzNt?=
 =?utf-8?B?dDJ4b2tXMVZmVXN1cm5IZzU4Q3kvTURDM0NnRmFJSHJmb2hES2RzNGU2Mmg4?=
 =?utf-8?B?VFhwcHl4cG5qNU9jMWlBdEpuNHgzVmpiNDNsQ1dWMEdKM3dEZThBa0xoYWdy?=
 =?utf-8?B?a1V2K0FBWTNhanpIMXJwSXcvZXBJRktLeCs5WnBNaE4xSnN0cmhvNkY5TXU1?=
 =?utf-8?B?bE9TVnFobzdHdHNxbnZrRXhMeGpCTTFReGNpczg5K1Jzbm9ZQ2doMTVsTjFi?=
 =?utf-8?B?YktEMEpwYzFxM01aN0hjMXFyT3NEaks0dUhFT3Fya2RvSndwRWNjTlBRTlVl?=
 =?utf-8?B?aUwzTm9IWDJIZVVMQ3FESFhNam1qZnlXaUNBeHNMYXBDNWF3L0J1amYwNFJa?=
 =?utf-8?B?ajRVdjdLeVJRRUZ2OGlSMTdoak1aRUI2UnZQaGxoMk1qQlJ1RTFUdTlqMUs1?=
 =?utf-8?B?VDVHbnlMMkRzRkRJMHduUEpCZW44RDVUVGFBb2ZFYjhvUGJHNmIzQVJTUFk2?=
 =?utf-8?B?QUNiNXpvRlNYWk9mQ3hGVzBzWEk2YkZ0UXFjUCtOWEJWMDZJejBNTVZ5Ynox?=
 =?utf-8?B?YkhEM1FsVVpiSnRyWTZrUzJFbWJ4Nzl2VWJIRVpJMGp2N3ExQXJ6TnlhVlZE?=
 =?utf-8?B?T3NlcW0xWi9DQnhFK1NZVEtSQU9lNkpXalgxODluN1Z6ajFPdzdvS1BBeTB5?=
 =?utf-8?B?dGl4aVhBN1JqcDd4QTk3SjAzeDhZSjJPQ0pkL25QcHIrWkEvYXRVVTlndWJj?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ea38c5-933e-45c5-9791-08dcd3c202f6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 07:02:20.9153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Jqc/EvZt2FgPCpgDv18pqCr5P72v/bRVyEH7OnlQhjObn8oNFD+7be3Zizg6g4iEj/sgeMY/o21+9ya8hfNn4v1iw4h9F3obmh5sRzB1rM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726210945; x=1757746945;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mbAenVzmtja7A8hdR4+VyMcq+kPrfJ/56GgpFZA5WiI=;
 b=fqM2asOTBRLxT39diVqDob6+mpgqGbXx2gQR6+QtwpumvqWcVq8dXSc+
 KfgQ+tRy9s/XCrO+xfHRFQEMY6pnizGrDxhwavH8nz6cwGfoCi4f8y7ER
 TmyksYXzf4hrZQ9F4nw339tYrbdZ/NrT82j1MilNNpY1LhzSqxcY25kmd
 qYYmMeLNsYjqhGZsu8JLIApP/ztl3D5Pq8HhQHf/xotwRmh6XmeSji11h
 zIeB0G+cIdBNF/f8Geodlqu0C/2iR15HYHBu2prL2txfxbhKN2ZFi11Gu
 SXLfnBpndCjPfgauk78QkoNHidH02OWJI6ZDBKkTwLwMwyf4yxzoNsvBx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fqM2asOT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/12/2024 10:45 PM, Jesper Juhl wrote:
>> Would you be able to decode the stack trace? It may be helpful
>> to figure out which line of code this is:
>>
>>   igc_update_stats+0x8a/0x6d0 [igc
>> 22e0a697bfd5a86bd5c20d279bfffd
>> 131de6bb32]
> 
> Of course. Just tell me what to do.
> 
> - Jesper
> 
> On Thu, 12 Sept 2024 at 17:37, Jakub Kicinski <kuba@kernel.org> wrote:
>>
>> On Thu, 12 Sep 2024 15:03:14 +0200 Jesper Juhl wrote:
>>> It just happened again.
>>> Same error message, but different stacktrace:
>>
>> Hm, I wonder if it's power management related or the device just goes
>> sideways for other reasons. The crashes are in accessing statistics
>> and the relevant function doesn't resume the device. But then again,
>> it could just be that stats reading is the most common control path
>> operation.
>>
>> Hopefully the Intel team can help.
>>
>> Would you be able to decode the stack trace? It may be helpful
>> to figure out which line of code this is:
>>
>>    igc_update_stats+0x8a/0x6d0 [igc
>> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]

Hi Jasper,

I agree with Kuba that it might be related to power management, and I 
wonder if it can be related to PTM.
Anyway, can you please share the following information?

1. Is runtime D3 enabled? (you can check the value in 
/sys/devices/pci:(pci SBDF)/power/control)
2. What is the NVM version that your NIC has? (ethtool -i eno1)
3. Can you please elaborate on you bug?
Does it happen while the system is in idle state? Does it run any 
traffic? What is the system's link partner (switch? other NIC?)
