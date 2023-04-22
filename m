Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD4E6EB796
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Apr 2023 07:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B58EB4285D;
	Sat, 22 Apr 2023 05:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B58EB4285D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682141199;
	bh=/YT2I8tWqL/KpFY23KwKvr/W7KUaB/YQrnSN/o6Bqwg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wCaeLSX8UKUBBVk8HK/k7qHDYYilU7HeXYjbe0NOe8uxVOFCDvA/BCoAAXcNheY5d
	 GHwtPSC3U/s1+ROsQ2KfJpGt7iK2d63ey4ZzdHt1lWUkhr+m12+Kc9oFmpN9/CF1AB
	 4L+KdSbiex1UAAuLarg9HcvyQnOmln0vPQg51ughzG5Tcgv21CG1XVBbq1qNDLAw/z
	 32o+8Kn7A6E+jhL9/GMB8uZ9txOuiH8/vmSvpxxIqluO54O7I7YmfIIzisRCSpBGZg
	 NQD7t0QOJ3iaA7UiF0MRXcoBcELzdUJQO5/ylyK9gWoBRhIRdLvmi3GbVy5nQuv4xS
	 r8ExBtqrvcc6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CS2b_o3qVPug; Sat, 22 Apr 2023 05:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B98042847;
	Sat, 22 Apr 2023 05:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B98042847
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1B9B1C2999
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 05:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8911384033
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 05:26:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8911384033
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TKr3hyweiwNW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Apr 2023 05:26:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 225418402D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 225418402D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 05:26:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="343615832"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="343615832"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 22:26:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="669920845"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="669920845"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2023 22:26:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 22:26:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 22:26:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 22:26:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 22:26:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvfN3GLqta02uZ5cBO0s2z06CZHB3XmHB6vf147hAGwgkWbLQXZxu+WJh8SKPWDbNJb29aCJ1cXCdZwQ9bz6lssask5+nc/FsTYUPra1IRuADEjkWzXQQI/dcqD10wk8AjqyIK+gt+cQzuq1lYDpzA6igAZl8ZDjH/q4+GaNfawnGveH/O3njc3Y6ewR/lIwknrn4S0D9PVtROVFioy5jdFDiEIu9tXDn9mUMpSf6Qmw1GP9tLbLnlQjqSyIyMC2wvE1Ht+toyPMkHOjXqBNr/BBGarVI8qMDNTu5+wisi2vqqzjzecdubvAlM+Df0evRj9qqgHt94DG28ztdP44gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gpO0eDlQdEcflEKS16Zekq7J6MijbaXoZFN45O5hGqk=;
 b=lNRjyQ/m7tEhU9vDZmt+ExyFQR/2I8sF1+rMjMYgmT2zyzFcMrmzXUCvhKVxlwUXAPnCLifbju8Np6B9Q/6WrdEdVlt8gtRNTkSjOY7rwNAMuoQPUOW498Ra4fvIxRb5fZZb8yofmhWsKEtrmC7PmbqKWc6bAiXXx+ymqTpaW8DgdaLkso1wLAv7zpAgGXWYhPIq/gTb3t/1JUbgbyxc6pzIYP83K73X+Ow86f7hYoMxuKzqZfczz1TlYhq+VHpxtKMPvWuK0e2eSLqWU4+S0m4TZpHVfPMWZzc6k4T8FZe4eYYOsLm8xAhcMeAxPD+I4X3i/eueVCfjQNF2Ne1NiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Sat, 22 Apr
 2023 05:26:28 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::aae6:d608:6b8d:977e]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::aae6:d608:6b8d:977e%4]) with mapi id 15.20.6319.022; Sat, 22 Apr 2023
 05:26:28 +0000
Message-ID: <2fdd6fe9-9672-8bf7-f8f9-e9906fa25167@intel.com>
Date: Fri, 21 Apr 2023 22:26:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
To: Simon Horman <simon.horman@corigine.com>, Pavan Kumar Linga
 <pavan.kumar.linga@intel.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-15-pavan.kumar.linga@intel.com>
 <ZDUunmuPmM0E3Rx3@corigine.com>
 <bc8457a8-28d7-3c79-9272-314f8be5cc09@intel.com>
In-Reply-To: <bc8457a8-28d7-3c79-9272-314f8be5cc09@intel.com>
X-ClientProxiedBy: SJ0PR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:a03:332::8) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|PH7PR11MB7499:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c39c645-6ca3-4ca2-7f2d-08db42f21f32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pTEtKu6TSB7Ey0/mR+ncwwDvpLDmVfPuaFFtfNqdsdD/v+cc2AdjrohdWLvAWww+k6NDn9qsovhRzX05/Iq3E/6CJGkbsK5ySNr0F7PAt/wtZpowIZpOViKGqPqv9c8pkC+68PlqyfI79OBiU68ETAJ1cBfIglTcC2+p8WMPdE/QBqWB+u3mfDYRQIeuEDLmEhA4+58ehsoau2t391Inz2roYitF2SBU4TTAJ+r29svZuXUHlrRR4iL3UmQs619kC0p2cmMnoNXSPylf8fA5891TZeqfxjVXXRYdEU+z28GvLAZX6GGrMHN9bTn/B5yBvnnT5/az97a1OHZaMTcBv6iDqsht9SRYSbPtO7I62PXAsr6ntvcYbIsbXe19kmuX+xicgMet98cTsNRnvDzFi8+raA1FAlMIerSrYVs4t/mGwOw5PDVBehwA721upaARkAM7ovZXy2gwBKz/QMqETyCUgfBk9I5OHtS2n1seYDUFzWRGyeJ/JmNTDGRVnDzvsv3LHydFIq9Gk8a/UjdGAxUkiF0G1Mr9fUN3XPx3b5kWECk6z/i02y36PkIybEIXg4BVTeLfNetZNjjwuXTtUI3RNVOkTfb6+JCDhl4ELCLQpZYWJ8TALBI2qrzmBGP0pg0jMZ1C6HVbGhulV3N5WQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(136003)(39860400002)(376002)(451199021)(38100700002)(31696002)(2906002)(86362001)(36756003)(31686004)(6666004)(6486002)(53546011)(186003)(2616005)(6512007)(26005)(6506007)(66556008)(66476007)(66946007)(478600001)(4326008)(41300700001)(110136005)(82960400001)(6636002)(316002)(8676002)(8936002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTJLaVhoeGV4SzhYQTRXMjFDWlk3S29RSFV0QVpEdk1KRG1vdG1Kb2lVVDVK?=
 =?utf-8?B?LzYycU9EQXJwcURHaUhSZmtXZWlZUWc2NHdrL2paay84VFV0b0JvUHJacWNk?=
 =?utf-8?B?eW9HSjF2UFFxUC8rTzdJVjFLUTFTeTJCUThubHJtOE5qVGhDcHFod2dubWdG?=
 =?utf-8?B?c1h6MG91ck5oY0VSOTdGTDNCSHZvZ1pjWHl4dGtUUXNUTW9VRWU1ZjVTNUc1?=
 =?utf-8?B?clc1RTRrdUZhdGF3L29lTVlSRmZOeG1ERGplQ013eWZ5SVBrR05WcGNsWFZT?=
 =?utf-8?B?Q0JDa3d4b2xUK3lYclFRc0RKZUhlWWVKK1liRU00VzFPSzd1MEIyS2l6blJi?=
 =?utf-8?B?azRKUm00dDZFU254ZjV4eFFCbzFJVzBJNzFhZ0YxbkV0TkpiMk9LQ3hrR3pJ?=
 =?utf-8?B?N2lkVlcvdnU4UXIwdndoN1ltS3NxWGd2ek1ob1I5WkE5VkZpeE0zY2Y5elpG?=
 =?utf-8?B?d0gyOVUweUpFcS9MTnVyclBnY0RhQTJHRGgyNHF2M21YTWlWM3dZOC9xVWhY?=
 =?utf-8?B?cW1GbE1JUVRyWGprWjlaQmExQnZCR2NIWldRQ1YxdXJ5eHY5NVJPaGxmenRJ?=
 =?utf-8?B?bExnOE9Ydzl6RUFTc1ZyM2RWR283ZEZ4RHJrSG1GUVJnai9EZXZmRTBmS3Np?=
 =?utf-8?B?TXAyYWw3WFlQNnpkOFByelBTNnN0ZXFPamsxSHFJbCtmTjN5SGlVVU53Mnlw?=
 =?utf-8?B?R2krSVRMQkhPYjVabGlLN25rZmtFb1NrbVVkbzMxV3RIcmdnby9EWmw3NjBm?=
 =?utf-8?B?aHJwMjBmMVZ2cm9qWlVieGpFSzJTeUVvM1NzWXFpSDRlc1dIQklRK0RjNkRB?=
 =?utf-8?B?eUVjeVlYV0lucGllSmtwTGZaZ0krTFVDQVN6K2cyd0FMa3lIOGN2WkgxT3ZF?=
 =?utf-8?B?R1J2Rmo5eFZ4MlM3VHNJT2tnTHdpOFd1K0E5T0JjeHIyT1hDTjFYY0N2bDJH?=
 =?utf-8?B?VXIzZ1Z6eXppMUp4TDFHUUZUdHNUREhEaGJ5czdPb3haQWdORjArWW9RZUpC?=
 =?utf-8?B?QVVVRTVMeEJSOFBqRmhqRFhFd3l6UTV3aTkrRmpUdEk5bTl4K2pjbUJWMk43?=
 =?utf-8?B?U2kvVXROYkxqcmY4eEZXWlRqQjNudWtEZnZtTTVKbnp4dmtSKy9tL05vdjZ2?=
 =?utf-8?B?eUs0cEI4Q1g0VUtUUDhuVXZJeVpJaDdhWG5URG90eDlJQTdYS3J3bG82Ulc5?=
 =?utf-8?B?WnY0dFFhVElWMzZMdURCUEt3Vk1EeTU0eFEvbXR5bjRnUmlaWEsvNUF3ZFgy?=
 =?utf-8?B?STNPaDlpVnlqNy9BOGpPZHI2dFdtQVNQcUZReVcxWnZQWFEzczRuM2FBaDBY?=
 =?utf-8?B?RzVVNC8xOStReUxZekRweDdFRXhrekxzRGlRMUhuRVNBMWFYWHVrQU9INFNi?=
 =?utf-8?B?Q1dmNGttdkQrMXNRaEo5Q3M5UTRrZEhRdTRmK3VIRWVZQWpGZmt3bWU0OGdt?=
 =?utf-8?B?K1l1OWJTcWpNQW1WNkVraElQUk05RFlZRmxZYkpzbmRoaHJ4TWZKcTIyQkF1?=
 =?utf-8?B?U2tHbUNmVXNwM2RtUUpHWWFEOTZqSFZadUpBdktyMzNaYjBjWlBWNUl1NS82?=
 =?utf-8?B?WWxwdFJaSitaS1pBME51eHpoNDhNYUJFdWYwOU02ekZNUU50RlJURWQvVWZw?=
 =?utf-8?B?ZmxFaWtaSzdNNUErOENrNzBjVit6RkhMcEZWZVpZQUlPRnc2bExFM3k3Z1Z6?=
 =?utf-8?B?MVBFSGxZTUR6blhBWklFRERkalJYckloNzJKeHNjblAzNTNRQVhnWk1wcTRp?=
 =?utf-8?B?SDhvUnNUdk8xelVNRms3RkhyVURIY2NEWmxMQWNyRjBTemdRYmR0eVRvMy9h?=
 =?utf-8?B?TTJHc3Q2RUtUeFI5SzFpV3pKUHBGMVhxRG9VcHRweWN2K0dhMWEyK2NWUzlW?=
 =?utf-8?B?R1pmb0lKbnRoM0ZscFU1UWlFOGlOYlJwQWhtRHh4S21kSHV1UzBHSWRUM0xt?=
 =?utf-8?B?ZlZ4ZWZPQ2Jza0hVRnNvMFhiRHVLR3RsQVR0c2JabDRVbkFJVzFrUWo5N2Yw?=
 =?utf-8?B?dUFCcmtYb2RkMFlWZTU2TlJsL3NzZ0haSWxUUzBQS3BDR2k4ZG1GQzJhSlRZ?=
 =?utf-8?B?UHdzVk5IVWRRTWNyUzRDek1RL3lzc2t6cGN6SHlOUU5PK1Jmd3lPaU1mRWJl?=
 =?utf-8?B?cXJMckh0ZHp5bUF5TGlJUktFVDltczhydzE5c0lwSldCN0RvT1lvaUtwVXIz?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c39c645-6ca3-4ca2-7f2d-08db42f21f32
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2023 05:26:27.8386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PvMAtH59n395armRNRTFlXUKn/Ma0OuBXxfhPEJzW7kuvef3lgMDWefzQkNauIxiqCEF8ZuPWMu55d5RmzNkTJfddvqvgFkuXFoIzw6dK/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682141192; x=1713677192;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1J9oDIJVV4SptTxSnMb3RktT5nWlyQxEeWcHvnJVG8o=;
 b=T+KSe3vAk7zcQPGQahWJNrLOjT8KpeCgiD0KPWawiCrDu6YYe2Dzx8GF
 LnMUS8p8BliNT20hGxPqwZ/jsWlEEUxcvaaS85yEiCdZ7DPf9lUdMwYqV
 8wqHU+V7z9sHHCWHMoMqk0j4I9spfw7W+LZ+wejRMYWisqixtp8bbTXbN
 2rQ1x2qtOVeW6EruttRt0CnuHM4S5FAuSiNzQioSlwtf2OXUsfuJs+I5Y
 tT1MWINJfqaSY6m62FiT2UHbT9j/4eMg6yQsBqVdWTjxke4gARNS9WJO1
 cv3uOjpUB4xvAxqVum2GT1XkdvttB7RO2MgcuARgxYvxrdNTjO/N5O/0N
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T+KSe3vA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 14/15] idpf: add ethtool
 callbacks
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
Cc: willemb@google.com, decot@google.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 Phani Burra <phani.r.burra@intel.com>, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEzLzIwMjMgMTI6MTEgUE0sIFRhbnRpbG92LCBFbWlsIFMgd3JvdGU6Cj4gCj4gCj4g
T24gNC8xMS8yMDIzIDI6NTUgQU0sIFNpbW9uIEhvcm1hbiB3cm90ZToKPj4gT24gTW9uLCBBcHIg
MTAsIDIwMjMgYXQgMDY6MTM6NTNQTSAtMDcwMCwgUGF2YW4gS3VtYXIgTGluZ2Egd3JvdGU6Cj4+
PiBGcm9tOiBBbGFuIEJyYWR5IDxhbGFuLmJyYWR5QGludGVsLmNvbT4KPj4KPj4gLi4uCj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRv
b2wuYyAKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wu
Ywo+Pgo+PiAuLi4KPj4KPj4+ICsvKioKPj4+ICsgKiBpZHBmX2FkZF9xc3RhdF9zdHJpbmdzIC0g
Q29weSBxdWV1ZSBzdGF0IHN0cmluZ3MgaW50byBldGh0b29sIGJ1ZmZlcgo+Pj4gKyAqIEBwOiBl
dGh0b29sIHN1cHBsaWVkIGJ1ZmZlcgo+Pj4gKyAqIEBzdGF0czogc3RhdCBkZWZpbml0aW9ucyBh
cnJheQo+Pj4gKyAqIEB0eXBlOiBzdGF0IHR5cGUKPj4+ICsgKiBAaWR4OiBzdGF0IGlkeAo+Pj4g
KyAqCj4+PiArICogRm9ybWF0IGFuZCBjb3B5IHRoZSBzdHJpbmdzIGRlc2NyaWJlZCBieSB0aGUg
Y29uc3Qgc3RhdGljIHN0YXRzIAo+Pj4gdmFsdWUgaW50bwo+Pj4gKyAqIHRoZSBidWZmZXIgcG9p
bnRlZCBhdCBieSBwLgo+Pj4gKyAqCj4+PiArICogVGhlIHBhcmFtZXRlciBAc3RhdHMgaXMgZXZh
bHVhdGVkIHR3aWNlLCBzbyBwYXJhbWV0ZXJzIHdpdGggc2lkZSAKPj4+IGVmZmVjdHMKPj4+ICsg
KiBzaG91bGQgYmUgYXZvaWRlZC4gQWRkaXRpb25hbGx5LCBzdGF0cyBtdXN0IGJlIGFuIGFycmF5
IHN1Y2ggdGhhdAo+Pj4gKyAqIEFSUkFZX1NJWkUgY2FuIGJlIGNhbGxlZCBvbiBpdC4KPj4+ICsg
Ki8KPj4+ICsjZGVmaW5lIGlkcGZfYWRkX3FzdGF0X3N0cmluZ3MocCwgc3RhdHMsIHR5cGUsIGlk
eCkgXAo+Pj4gK8KgwqDCoCBfX2lkcGZfYWRkX3FzdGF0X3N0cmluZ3MocCwgc3RhdHMsIEFSUkFZ
X1NJWkUoc3RhdHMpLCB0eXBlLCBpZHgpCj4+Cj4+IEhpIFBhdmFuLCBIaSBBbGFuLAo+Pgo+PiBG
V0lJVywgSSB0aGluayBfX2lkcGZfYWRkX3FzdGF0X3N0cmluZ3MoKSBjb3VsZCBiZSBhIGZ1bmN0
aW9uLgo+PiBJdCB3b3VsZCBnaXZlIHNvbWUgdHlwZSBjaGVja2luZy4gQW5kIGF2b2lkIHBvc3Np
YmxlIGFsaWFzaW5nIG9mIGlucHV0cy4KPj4gQmFzaWNhbGx5LCBJIHRoaW5rIGZ1bmN0aW9ucyBz
aG91bGQgYmUgdXNlZCB1bmxlc3MgdGhlcmUgaXMgYSByZWFzb24gCj4+IG5vdCB0by4KPj4KPj4g
Li4uCj4gCj4gR29vZCBjYXRjaCwgd2UnbGwgcmVzb2x2ZSBpdCBpbiB2My4KClRoZSByZWFzb24g
YSBtYWNybyBpcyB1c2VkIGluIHRoaXMgY2FzZSBpcyB0aGF0IGl0IGFsbG93cyAKX19pZHBmX2Fk
ZF9xc3RhdF9zdHJpbmdzKCkgdG8gZ2V0IHRoZSBzaXplIG9mIHRoZSBhcnJheXMgcGFzc2VkIGJ5
IHRoZSAKY2FsbGVyLiBJcyB0aGVyZSBhIHdheSB0byBkbyB0aGlzIGlmIHdlIGNvbnZlcnQgdGhl
IG1hY3JvIHRvIGEgZnVuY3Rpb24/CgpUaGFua3MsCkVtaWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
