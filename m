Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7795E9D4405
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Nov 2024 23:43:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABF10605E8;
	Wed, 20 Nov 2024 22:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qU2EoL2Unew8; Wed, 20 Nov 2024 22:43:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAAED60617
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732142615;
	bh=bE3fvOliHS6TWCIA72eGV98KaqgyCGqGggFfF/pt9qs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zbpry1u9Pd6/uVhlkAF109czYqW0U60hEDC8YGZjWheyzDnNJDjPbol4x0lg4J9Fb
	 RGyl+FeBY49cHo76kItn/UorOpUWswMoeZOEjExYCxW2rJN0ytw2OZnd9DhTuCStXT
	 UiZC4i7qyaRhtjEPljtGrnjYSOprnWS1BVcxnYsQopQFpiLSPSXAvIPHVnUuh3s6yT
	 wvyXbQ/ookXeb+KTJTxqRKM7jqlvxD4CbQ2sD663PsbBUKbopowf/iLTrKotkIez9x
	 yvXGhCXt8rx0sfKScPP+kiZojYXTzyFALubBcxAFGSXx8Sy0BHqixhk8wq0fq6i+Wu
	 XH3JxMqn7+fSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAAED60617;
	Wed, 20 Nov 2024 22:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A4C79970
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 22:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92DD0846D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 22:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhTXIQ45QmYH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Nov 2024 22:43:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6215C846C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6215C846C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6215C846C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 22:43:32 +0000 (UTC)
X-CSE-ConnectionGUID: usZJSjdrRn6sMrgD9vfKJQ==
X-CSE-MsgGUID: GxGPAMpFR4+iKVplMzH8sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="32083854"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="32083854"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 14:43:31 -0800
X-CSE-ConnectionGUID: 77+/WZZCShyP6R2pIBbYhA==
X-CSE-MsgGUID: +VORfsWhRdeWQmCiOmK2uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="90047131"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 14:43:32 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 14:43:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 14:43:26 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 14:43:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PgfLFpYTe6TteEvE+hrKcjTdrpNZxaoTCdzpXvRuW81K/VE4x5wwJzz3XoA3TMp1AqWuJkvtY/82FW4rmn8yi7Ecq2qKdyKRsyr3SU162ViiKnrTU6CwB8HDDxfdUzq2aNXPWQ0nMcvs9Dq1x83jOSdNqZt5l7oc7Ym5QSH4JWREuasHk5m5GquIyLyREo2uf+8059Uh7zY47NuWRfQsJXBJ9Xk8lw5DN6yEXM1VxS+s10Fq5Pgk8nljmN45mwCLnvunYRu+kB31fmwc2qOMSrQAp/q2E54tECGdVtE0lW0YhdFIJmT550rpwsy2EnOPRoeiRsLGyoUuZ11nwqeccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bE3fvOliHS6TWCIA72eGV98KaqgyCGqGggFfF/pt9qs=;
 b=DZHYE1eZV6w94Tdl0rSG3234gb5JZXmKp34whLtlG+GaBgN4iqY7h2ti0Y48ZD97LxnNTczwwD1l+iCeub4Q+RFuEd1KIyG+frBi8H2lm6z3Kd1DcpRYXyeDrSfiI8BrgsxVOHdPqE2WXLu9hy07tf2Pp3eyMxFNqkHDCeVxmwOZ+wDYmOqNfgSNP7vkOr5BKZKPirH83/fakj/fKZGMHqAOizVimGiwIVIcni1jnvXsZVBheed8FXKP4IcVuViRqTuwK5lkEm2P4HsgTNKk/UU7W5oJe+JW4gQ9ond/Nzm6zQRvQwH1N2oOSJyQgANGE9CjLlSqLNNS+OOsPGCpmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.20; Wed, 20 Nov
 2024 22:43:24 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%6]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 22:43:24 +0000
Message-ID: <727be6b0-02c0-49b8-bce2-8ebfccd08dd2@intel.com>
Date: Wed, 20 Nov 2024 14:43:22 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <sridhar.samudrala@intel.com>,
 <rlance@google.com>, <decot@google.com>, <willemb@google.com>,
 <joshua.a.hay@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
References: <20241115021618.20565-1-emil.s.tantilov@intel.com>
 <cb341586-b8df-419e-9280-4fa0010ba2e4@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <cb341586-b8df-419e-9280-4fa0010ba2e4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0078.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::19) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|CO1PR11MB4883:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b2a0376-b813-4c4c-e89a-08dd09b4be27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eDlZcVdPZk9MVEhkZVJOKzJxdVIvM0pzYy9VZ1ZxWXlQT0NVTktRTWJiWmZJ?=
 =?utf-8?B?TGcvNm5PdEd1RGd2Y2I3VnhNSk55eUowWXFLcUdLak1EaWxQOHBMRjU2akNj?=
 =?utf-8?B?Qk1nYko4SWsyTlp1eUQ5T3ljTWxwenIvTGNLQVp4UEQxRHlrUWRQQU5lMXRD?=
 =?utf-8?B?Si9aRXBaSmk0a1hBVVROV3FGSUtvUUUwZHFMTkxsL0IzNExNM0t5bXdJdXpC?=
 =?utf-8?B?NmNYd2xXYXFId3lPZ3A5ZEJXd2llQzQ2cFJURHY1Z2hoY0gxVzdEeTlRU1N4?=
 =?utf-8?B?UG1hc2RqcVBzbDhmUFBlOCs0Qit5TVk0K3l4SUlNb212Z1VJa1A0U0huS0h4?=
 =?utf-8?B?SlR6MUhZNjVYWDlvY09QbnVmeDd5UjBGa045dnpubkIvdVlESHBwVXdLZFFN?=
 =?utf-8?B?MjQrZ1V4WkIyYm5lZkFDL3NrbDFoZTNLSGdIbXMxRmhxeTZWdHR2eGlxYlky?=
 =?utf-8?B?eXRrcVYraXVlYTRvSER6RG0rdkZKWXlQbTlCelNzeXM0WStaY3JmTTgzeFdk?=
 =?utf-8?B?WkZVWlZMei92TEp1K1dZOWFBenVwSldRQWpxMjBXOE5kNmVMMjl5Tm5mZFFU?=
 =?utf-8?B?WktwaVBaS3c0b2NHdUU5UG90U1dFSVBDOWJTOU02aTJuMUZrK3BWQ3RWaElh?=
 =?utf-8?B?TmVZU0NxUjIvSmt6bS9XY3NTYW0yemRvZmNDWGgzY29uMGxwN1o1Zzk0N0Nr?=
 =?utf-8?B?ZlAxZlpucWY4RjlHSlR4aElsdFhNZWdPbmpNajhOaVlKTnE4YXJSZEhDSDB2?=
 =?utf-8?B?alB2YVJsOEVCSy9iUitNY2J4UkNZRHZpZUlMT3pzMEIyMDVYRERqeEVKVTJ6?=
 =?utf-8?B?Sk5nTHYwOHNwQzl5MXVvNGlHdXd6QklMMnhMYmdMUzdNNmJMblptajNxU2N6?=
 =?utf-8?B?WVVHRXpkYWlzWGdSTEpjdTdELytnUGRlMXpreUx1S3UyU1lKMFRybEFDRUZm?=
 =?utf-8?B?aVYxMldsTXRLYldMT1BDeXp1VXJwQkE5M2tJeTFiMStMVDFicHpSSmVMdUo0?=
 =?utf-8?B?RUIrTTBlRFJkNzQySHB3dWVOQUxzK0FWQ0UwK001ZTk4WUZDa2w1Y1dudDJl?=
 =?utf-8?B?NytwTEo4M1RuWE4rMXVtV0dPaStFeHZCelRWWjduZVVkbDdJaEtsbjZIWmlw?=
 =?utf-8?B?UkJzMUpWK3FYd1dMWHpRZlhkcjd0S1IyUjVuaTVJMFJpQm1uaHFnSlRMbVR5?=
 =?utf-8?B?ajlLbHcxeGZlQ2s1cGp1TW5zQ0toWWtRald1cWlyVXNRNjI3MlpDVXlnbjdC?=
 =?utf-8?B?QVJ0dkdCUGQ0U3ZuMFlUUVhILzNEV2xRS2lET2JtUFVTLzd0TUpnVkpvOW9j?=
 =?utf-8?B?MkZXd1NRSCszWHJlcWFPL1hjc3dOc2V6WEhzd084U0w0SVkza1J0Z3FOcUha?=
 =?utf-8?B?OTRqOHVJakhsUkZTOC9LQTRsVWZLczhRZ1RrMDlYKzQ3Ni9KZysyQk9WbEhO?=
 =?utf-8?B?b0ROSjNhR3JUTkpEZU1yY2xMOWNibzJlTGRaYWlNRGk2TE53dlVDTnp4NFZS?=
 =?utf-8?B?Zzc2RWpNYUxscGpXU3E0MWxESUNvc0Y3OStCSVhCL0hKSWRneTAvSndIWmpZ?=
 =?utf-8?B?QkNnYmI3QTNKekdsek1XSDk2cmZYdGh5dDJaU1FKekdXV1ZueWRYR0FoSWdl?=
 =?utf-8?B?TXBYZDhVSUk5VTZoNzFUOVU0SGF3Z2p3QnpDMWJNMnkyYmJYOUFGVW5jTmlW?=
 =?utf-8?B?cHZZK0ZLbVllMEdaVHdCT0QwV1BmOVpBbzBGQzF4dmRmTUwvdWQ1K2NFcGp1?=
 =?utf-8?Q?WUdz14T/fhHUw1b2cbg2Rm8LX5RCt44oOPTAeJe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUVBUzR2Ynh4QXQ4dlhZN1dSUE1kRWlRRTVSOERORERqbTloQ0dWeVM4UUJD?=
 =?utf-8?B?RTZNbVpEa3d2VzZRQVRZNk02NTM0bCtUQjVtdTc1WnIzbnEyUHo0KytESXB5?=
 =?utf-8?B?VXljb3V6VFdSM3ByOWZSeEZoRGl6cWJVSC8zb3o1OWVobml6RS9MN0VBTmxB?=
 =?utf-8?B?UkhOVndQSVlPNm5BZi8yK2p0ZHN2ckd0R25UNmZ0Qkh2T1FpaDlNUitjcGlG?=
 =?utf-8?B?VFhtRm04b012ZW94Ri9HOUQzVlVZZmlIa3R5Qm1TTnJiRWVvTnp6cExmeldQ?=
 =?utf-8?B?NjFWK2RLMkFGRjVsMVNmcDRxQm9GS1JDZUdiQk1jTndESTM0Z09DZ2s0cVc2?=
 =?utf-8?B?YjI1VUtYVVZBSVJXdXdWSDF5aGl2Z3BYeUQ2NkNFc0lDZ0QvTFNXL0NPNld3?=
 =?utf-8?B?bGp3Vm1adlJicUhFZDJBamxNUzdqVVBhWXJGSzNWVVUzZ0lCQ3NTUU1oUzFa?=
 =?utf-8?B?VG5ibzQxVkNIWGNCd2pzMWwweEFDQ2xxK2RiL2FBNmZMY3I5RW8wUXR6bTFB?=
 =?utf-8?B?c2ZkdUh0WHBxM3pNODl4OXNZei8xQUxYNU93ZXV1U25wVDkwOE82c0Z2Q2FX?=
 =?utf-8?B?Tk1xcUpPQ3BEV3dpWGFlcGk0SWY4VVdtNVlGOXcyNDI4VkUvOFlCUUNHNUd6?=
 =?utf-8?B?QjlTMWpOMDVIYnF4OWprd2FPaUl4Vk5GUFEzM0Z1c2lTd291VFVzaU9UbXU0?=
 =?utf-8?B?T3B5NXZtM3lob1ZDWVdoenVwc3FCYU5Ec2diVjZpNVRjaHZIZytWcWtkbTVU?=
 =?utf-8?B?TGxEUWtLV09VRlFtK2NEL2dLSW9aTjJDOGJYZ1dzRVFQak44TCsrMlhpbThP?=
 =?utf-8?B?S2pkS3NzbkFQM0xDb3RneWpjZVJzZmZKUTRoNmM4NHlseFF4d3VhYXFnUVRq?=
 =?utf-8?B?SkRzclY0Q2EwR0txcm5HRWNxM0xsQnVRZ05aVlNwRDc5WURlVFNNVk1IUytY?=
 =?utf-8?B?N1J1bWd1TnhINHBaYzFLUTArb3lxYUdWK29DYVJjelYwdno3TXg0MlQ0aFNP?=
 =?utf-8?B?ZmZodWhyQ0ZSMGw3T2RGQU84dldaQ1J4czFrOEdWNTJRWmxDamZYUUQ0TTNT?=
 =?utf-8?B?ZUg1Z1JnMzhoS2o5YUVIWUpDSWNrNU9JWll3MzdIUEVsb29KYnNXd3hmWHBG?=
 =?utf-8?B?dGpOWHUySXlueWRINFc3eHpscG9rbVpxekFYdTBnMFBBL3ErVDhHNkNqdWlB?=
 =?utf-8?B?cVJlMU5hTTN3cS82eXRreFUzWFcwbW90OHRaajVnS2YxZk5vbTZoa09UM21u?=
 =?utf-8?B?Y2hLZENHaW9MdmxDcldoekFmNWdjbEIweXZuZkZiZ2NDTWI2anRSWG5EOHpx?=
 =?utf-8?B?bFl6SFJ5eFFwVlpzY1gyaVdIbTRWRSt2UmNKM1dKd3JsaExxTHpjQmNnQU9x?=
 =?utf-8?B?TFpoOXlMUGtrZk50VkIyVHpiaFQ1aFlEcDJFQ1JuRGw5aEkwMjJva1F0QzFR?=
 =?utf-8?B?ZHk4bm9jenpkUEl3cTJQK2lQTnQrNjkwZnZXS3QzVzFGZHFJdEtuRDhwSjhH?=
 =?utf-8?B?S1NTUmd3UTFGZHpEazduQXJsM1lERGpoN2lCeEYxTXJYcWN3ZzZlcFRmSjRP?=
 =?utf-8?B?bHNqdUVvNTJhUXNvN1o1dUhxdVVQQmJBVWgxV2VWTHNuWHErS2o1d3NTWVc2?=
 =?utf-8?B?MlIvS1FUTUxDZ2IzWVFVRXhvSzdqbjh4UjgxZWphVlZZT3NEQkh2YXQyQkNN?=
 =?utf-8?B?dnNvWHA3VUNsblNnSzF0VXFsWUltK0I1dWQ5ekY5NkdaZXl3OW84a2lvb2Vs?=
 =?utf-8?B?VGIrNElYVHJSTTZ0Zk8ydWtqdGRVd0dOTVliZUdUVTFwQzI5OUU1ZlJreEt4?=
 =?utf-8?B?djMwZEdrUXZ4Qi90eWJqVUMyc0lPYnRGWjdBNFRzY01rVzFEWWRCSTlqVnN2?=
 =?utf-8?B?ZytSd2xZWDY2UHdhaXZWM01XZm9vUTJ6ZEVPZTlSeTRGZ3RBbzhtYkxJVUhF?=
 =?utf-8?B?dWxCREdFOFV0T0VDNGl1MGxDenhJaC93UStGMkV1V3h5TW5tblZXMGowRFZt?=
 =?utf-8?B?dEMyWHVSSmQzRWVLalh6ZElHOE1oYzhkMXF3eGZZOWl5Qm1zNEZXSFg0aVYy?=
 =?utf-8?B?bUpzeThLVHBpSVBnbjhSWGlmc2EybHN6S1hnaVJQM2N6SFBYazNGbU1JSWln?=
 =?utf-8?B?SlFhaW5qRGRLNWxVeUlZMzF6enRnRVhHQjIxWVltVHNEUU5tRVBNMktHWWJv?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b2a0376-b813-4c4c-e89a-08dd09b4be27
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 22:43:24.7028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bVkl7buJPUVbcINQ11+0wMJ7gRWfKXJt+9/WiuFjEobtgLdynOIcP2TGuf9yeYoDX5nOrw6Bl6DZNQDEoY4M59kBn569c8MrzwCCLSfWYP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732142612; x=1763678612;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a/RGeranGIlw6m3IH+4EOgJnjW5ZZnmOvTLXn9c/dYw=;
 b=V9Y2fxWffedbzrxMJETWVjqBTydJ74x/sUeoXiFmu8BKZrjtEpUnNCnH
 GttTfF8pellcZ5/9Fcc/8qbjm9Ek4u2NaTgHidMpfD7UxtNSqGB60CWoa
 A8QdJAaiDJT/1Cy5BwwBWYuxqp2aRb9RN09EJhDTTFIerEM3iJPeAJpOX
 OMaDclihFmjMuiF4394CZYHYtYcBXM1DuL1LqGYBQJau8LkhMK7ijivhv
 Vg/g63JSEZkXdKNht/FQfAgDAZP+8S7IW77WXKomSr1NQNE5gLedA9aaP
 QMsXxe7cfkgAtu9wdtApOpYuefof7ZOhm8Q2wvra8PmfkjP/8LkZ/oY3b
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V9Y2fxWf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: add read memory barrier
 when checking descriptor done bit
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



On 11/20/2024 8:29 AM, Alexander Lobakin wrote:
> From: Emil Tantilov <emil.s.tantilov@intel.com>
> Date: Thu, 14 Nov 2024 18:16:18 -0800
> 
>> Add read memory barrier to ensure the order of operations when accessing
>> control queue descriptors. Specifically, we want to avoid cases where loads
>> can be reordered:
>>
>> 1. Load #1 is dispatched to read descriptor flags.
>> 2. Load #2 is dispatched to read some other field from the descriptor.
>> 3. Load #2 completes, accessing memory/cache at a point in time when the DD
>>     flag is zero.
>> 4. NIC DMA overwrites the descriptor, now the DD flag is one.
>> 5. Any fields loaded before step 4 are now inconsistent with the actual
>>     descriptor state.
>>
>> Add read memory barrier between steps 1 and 2, so that load #2 is not
>> executed until load has completed.
>>
>> Fixes: 8077c727561a ("idpf: add controlq init and reset checks")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Suggested-by: Lance Richardson <rlance@google.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_controlq.c | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
>> index 4849590a5591..61c7fafa54a1 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
>> @@ -375,6 +375,11 @@ int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
>>   		desc = IDPF_CTLQ_DESC(cq, ntc);
>>   		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
>>   			break;
> 
> I'd put an empty newline here.
OK

> 
>> +		/*
>> +		 * This barrier is needed to ensure that no other fields
>> +		 * are read until we check the DD flag.
>> +		 */
> 
> Are you sure you need to copy this comment all over the place?
> If so (I don't remember whether checkpatch complains on barriers with no
It does, though it does not seem to check specifically for the dma_ 
versions (bug?) I think its good practice to include it.

> comment), maybe we could make it more compact to not waste space?
> Like
> 
> 		/* Make sure no other fields are read until DD is set */
> 
> 4x less lines, the same meaning.
Not quite, since the barrier does not guarantee DD being set, but I can 
change it to:
	/* Make sure no other fields are read until DD is checked */

> 
>> +		dma_rmb();
>>   
>>   		/* strip off FW internal code */
>>   		desc_err = le16_to_cpu(desc->ret_val) & 0xff;
>> @@ -562,6 +567,11 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
>>   
>>   		if (!(flags & IDPF_CTLQ_FLAG_DD))
>>   			break;
> 
> Same.

OK, will update in v2.

Thanks,
Emil

> 
>> +		/*
>> +		 * This barrier is needed to ensure that no other fields
>> +		 * are read until we check the DD flag.
>> +		 */
>> +		dma_rmb();
>>   
>>   		q_msg[i].vmvf_type = (flags &
>>   				      (IDPF_CTLQ_FLAG_FTYPE_VM |
> 
> Thanks,
> Olek

