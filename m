Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D313A8ABAF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 01:00:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8EB2614D8;
	Tue, 15 Apr 2025 23:00:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tu2E3X6qF7Ck; Tue, 15 Apr 2025 23:00:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0A9761AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744758011;
	bh=THTEt1A7QvyF3Gko9bOU1tBj0V7RPNqmXVEl09Um4ak=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j7zGFSDUCeiHYyDLl3cYRfOynybZVMCODBQZJBvuReVpwx7zF3jIRlLU9z64onWH1
	 GKlcfbidBe69MOSsDGIS+OvUY9feOZ9GSrdXKPOaFs99Muc/in0ghyJmB9fNDNxzyd
	 YMQUhR8efugWAMZd0GOUNWFWtO3ZWZP7Y8YHzUGsog13NaeG1uEHWCeNzw56SbhozB
	 k7SkrEl0ef8DBoa4ulTtxbOM0weYP0vuQPtVmyQVGWI5YOytLfoeNK2X/fivYXdRRs
	 nAj4rvfjxwZjZjlO1jMgVv+bGWEpsdjuAYaYWizF+9+EiEMg56VUbuGJ+nB2vkEHx4
	 a1ZxAAYHWTQoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0A9761AE2;
	Tue, 15 Apr 2025 23:00:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5757C436
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 23:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B375641E72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 23:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VE5cpPIQSi7r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 23:00:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DDC0441B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDC0441B3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDC0441B3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 23:00:06 +0000 (UTC)
X-CSE-ConnectionGUID: EfdJ6yiPQI6wGaljXFmglg==
X-CSE-MsgGUID: bIl5PuCqRpOuYM93basNtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="68780270"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="68780270"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 16:00:02 -0700
X-CSE-ConnectionGUID: 7kiTj8mvR8iGZPIteBXTyg==
X-CSE-MsgGUID: SY4oakD+QGGQEwDzkZeVxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="130569054"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 16:00:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 16:00:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 16:00:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 16:00:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxoqRdbGL4RmvXhg/syqJPHHDFhsnL6uaqzNh+q3ODgSXS96aqI3UhlOaFAun4PtVAIxZ6O5k9b4qKpgSp6sk9TW74SjuZJPCewhVjDs7p0amNAazD4csVCuUm2+FwXHyo5Gy0xkMf10pAMYQj6hCwVlAUBEL6n2alzl0FWRZ73aNIRjr1HoFERpnZrOQqe1ThQR+O8mJBLBbRg7GXN8BMFXgFPUJytHo1ZSiafbIVjrG7EFHE0InoJTWgWUeyvSAx6YZ59pVfX9Mbaplh8/CnnZoCJDIZm7uiFIQDW6LhxbOI/2PsxR6Tby8EI9WVyZR480PojGU4oCmgTmCIkgXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=THTEt1A7QvyF3Gko9bOU1tBj0V7RPNqmXVEl09Um4ak=;
 b=QcGvImSo3po4SIfT/ri680dUcT5hENDRB1gN8zDBMSKJLGRUTBvZfgM95i3ERNrxvtklsrVp0FeQ4EYWWQtzgH6FsPIMreRYgM0YRHQewmMobQBgsjRhKnnDdlK9yzd114c9VqVinoqcvy3zkEoL71faORUVHG0v2vDlBH31WXaSNteS7tlVql5yiN2uqY5sYZGaYeCymmd//kS4CyUd6kXuUd3utfHEqJ4IrDwKIC5Sk+MqCNIQAQEbBYuoGeyRpyzAGpdkad95e8UdGTWHWwjJR8wSe62RuNU1NErg/WAACR0aG9ORkRmDZRvn+g0TyKS1N79SbVTQTVG7E0q/5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW3PR11MB4586.namprd11.prod.outlook.com (2603:10b6:303:5e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 22:59:59 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 22:59:59 +0000
Message-ID: <97602d95-8465-4e74-bbf3-6e70c7e6373f@intel.com>
Date: Tue, 15 Apr 2025 15:59:55 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <aleksander.lobakin@intel.com>,
 <przemyslaw.kitszel@intel.com>, <piotr.kwapulinski@intel.com>,
 <aleksandr.loktionov@intel.com>, <jedrzej.jagielski@intel.com>,
 <larysa.zaremba@intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0017.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::22) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW3PR11MB4586:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ff6e9d0-f6a7-4ff1-b577-08dd7c713f25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFJ0RGRoOWJmT21WK3ovRkFHRm5ERnAwc1RmMHhmbUpXQUJvcWc4b01hcmVn?=
 =?utf-8?B?QkhyVGw3aUM0Q2ZxOXFtT2NMd1dQOGxrYjc5eHY4bXVrVGtnZHFKT2dLUXk4?=
 =?utf-8?B?cmFoU0szaTZKUTNEZE9ONnJRZ09KMHJYVk1waHR3SmlxMGQzMDFLMmgybTVh?=
 =?utf-8?B?R1FURXRGdlBIZWM3TSt2TitkWCs3SkxTcXMyMjg0UFBFcFprUEIzb0Fhdllj?=
 =?utf-8?B?OE5NWmFpcnFHOStrY2ZyNkN5bmp1YzJWeXY5WUpENURkaVJUc2hUZmUrZUlZ?=
 =?utf-8?B?RWlCakRleHpNanVGRnh6VUh0eGs0Vys0RUJybDJFTUZKWHZFYkxsMTREZktB?=
 =?utf-8?B?UnRsdEpZYWs5amJrQTNLSEt1VGxjYUFWVjBtTTJRTWhnYW55alNWMGVNMWs0?=
 =?utf-8?B?RkVOZnhsTU5NU1BwVWk1aHA3UCsyTExjNDh4OFlIQjBCSkVHUEpzWXFCeGx6?=
 =?utf-8?B?ZkJHOWdDNUFDSzhZSVJOL3VodnNheHBVZEVGd3dMWEVwZFV4RDZhOXVCUmdQ?=
 =?utf-8?B?YWpDZ2xoelhmMGtidlcwRFdLT3BOTXVmY0wrL0R1SjFvY0ZtU0x3eUZ6aUp3?=
 =?utf-8?B?cUd6cWxMZE5TVEN2MldiY1kyQzV2NE5ybzRGR0VTV21TUDY3T3FLRFY5TnEw?=
 =?utf-8?B?dWN4VXQ5ZjM3b0h0TGlqSHhCYXpTUURBb1g3WGU5dHJORGErUmp0c0NDb0lT?=
 =?utf-8?B?M3crQnVGd2w2ZVRpaGNyNGt1VEZJakpqSHFaYWNCalE0dEg4azh2cmxUZ09p?=
 =?utf-8?B?cE5SdERCeHhHWWJMRnRucVJiK1JKcFluZ0Z2QzZiYksxWGhFakFzYmJEb1Yx?=
 =?utf-8?B?VnAweENVSUxzZUdjM3EwWXoyU0w0cWFqUFRYRlpEbnhKdnN4TDdKSnlzbk5M?=
 =?utf-8?B?MS9pSFZCdjVxN2pkc3gwOVFsQ00vT2oyZzhmdnFEaTRQMjMxMVk2Qm1yanFr?=
 =?utf-8?B?SjJjN0xRRHdLMzZsRUlabTBIc3pBOVlWK0FrcmZKRXowaDF0dXFmV0dMTjgv?=
 =?utf-8?B?ZE5nSFd6TGxMMHU1THRZMDJJVnJPY29NbE51a0R2eGtlSlRJOEJjYXdPTzJS?=
 =?utf-8?B?c2hqeUt0WStNTkNmaWVjMGF2SVE4amxVQXJDS2VmKzlDWG1EZmdTeXBSVUJQ?=
 =?utf-8?B?UjhuQUlqMFIxRThwdnFQVytSOGJMZThORE1YbUpNUGdhaGx3ZnJjaXVUcWwv?=
 =?utf-8?B?cXJYUEg3QTJlZDU4bXh4Um5lQlVNMlFWVmFET1JrRjhNQVBTT2lEVXU4MThu?=
 =?utf-8?B?bkJTUGtTOWxMeWlrNlllZ3M5alVIS1NnWlQ0Y0RVT2pUVk1nMGoxeldFb1NM?=
 =?utf-8?B?RE94OEpzYjFZb0Rua1BnKzNDSmZ4bmlRN01uNTZUdWpKTHdYclRMNEtKbU4z?=
 =?utf-8?B?cnJrVXc2blpST1dvdUovYWY3b2VSRU12YlA5Vll5S09WeWZUT2RPaDhMNXI2?=
 =?utf-8?B?S2V5eUdKVGphcXZ3QnkySVU3MXlqcnlZL1hkb2dXZHNoZkFyTndEdTNodWpE?=
 =?utf-8?B?bTVJcjRmNTlSVEF0NENnd1hGbG1RSDR4bjRwNGs2TFVUdTE2OVhyejI2aCsr?=
 =?utf-8?B?aEJGSmtoTHlxZU5HVEY0U093alYvQnVYQ1lGTExHZ1lmcU9xRWtSSUQ5em9s?=
 =?utf-8?B?a2xTd3dzTTN6NWpjc1QxK0VJd2R6TW11NTB5aHQzQnZreFlnMFZ2eWF6Rk1s?=
 =?utf-8?B?WGE2eUtOVWNwQnFTbUM1a2dwK2lOZE1wUmZ2Rm5lUm9zTjgrY0twZzR6SVcr?=
 =?utf-8?B?Vno5YUlSZ0FXdSs2U1RJbW5nOWw4MHc1cHB2UjFlVm1ucXM2ZGdhZENmU0w5?=
 =?utf-8?B?Q3M0VlZOQXlyMStJUWJmUlkvYXRnZFFJVU1DcDBtaS9Qektxamk4cEYyc2FI?=
 =?utf-8?B?a3hnZXVkSmRRYzBQbFYzem50Qnhkdmlla1JwWmNvU3Btazk5YWlIb2hqV2Fk?=
 =?utf-8?Q?nFFSIcTCt0Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0xLWGxtbm9WSXpmNjZIcjZLMzIweDRpSkR5bU1jYmJadGV3Qnp1MU5VU1pQ?=
 =?utf-8?B?QXRVRWlPajJMdE1xOU9GWVA0NlJneGJzV3lXbEdvK3ovbDlieExzdy9FR1Vr?=
 =?utf-8?B?QVVmUlBmbDMvWFJ2TUxyQmN5U0FyOVlpNlZBVGVPbVdMc2RHdlhNQTlxUEJT?=
 =?utf-8?B?a0tsbGpxNjg3UlpYRDV6djFlczBjMjQvK2JhZDVvNnF6dzZQNjZSNlhqb3VE?=
 =?utf-8?B?dG9VU3JJWXBtNGZXU3FEOWlIWjNaUWhwMUhWMDZacHdRU1l0c1BLb3NJbnBM?=
 =?utf-8?B?R0dKL00wRk1RbTJ2N284Uk5wczhGRERSRjhBWlA2WkNDRWZMSUpRTklUM1ZP?=
 =?utf-8?B?SjVjTldlMU1hY3lhV0lScUEzS0kvOVVlZjBPTjhrKytyWFdkRnpqVDVHbVNo?=
 =?utf-8?B?RTNDRklxa0w2eXVyeUxDSDNjTU90RWgwTlMyWHZ6cVlEQUZzcU5kY05JUDVE?=
 =?utf-8?B?b1ZyZ0ZkM1BtQytheWJoKzNxSWVFSjVmM280MlVRUFZPdnBWWFpJZndyaE44?=
 =?utf-8?B?U1NwbmgwT0tZcU9NY0NhNGxnVm9SMEQxVXA0L3NMRUVRS3BhVzZONDJucHFS?=
 =?utf-8?B?aTJVbzFsR0NnQUxLYW10U3dmNmlpYnQvNG9RTElRM21IYnVzVEUxbVphV0Mr?=
 =?utf-8?B?Z2VHODErK3k0cVFCMjF6dEVKZWNDaytib3hIa3RWcWN3NXkxOHpwK2NNM1JY?=
 =?utf-8?B?UERrNkpBTmxCMU1pV1hkNTYxdXU2ZlJBV2FtUTZWekVlemtnMTdDaVBUMk1j?=
 =?utf-8?B?cmZGNW1wcTI5M1ZJb3VjaUxMMkZ4bXJUWnNxTkMzODQ2cXZPdUUxa2lqNlBu?=
 =?utf-8?B?TWdZL29iK08xREI4NUlVV2VtOWxyUDNoL01lZW9hNS9ic3RiVUhMOElOQnJI?=
 =?utf-8?B?SmRxTG9FbHhPMmxzVWQ3alJxcGdCZlB1UlExMGxOcXhOcTdrVnAySExWeVBt?=
 =?utf-8?B?VDFsMXJOWVU1aC95VEhZSmp0cEk5QTBON2FCcU1CcjNsaWFtUVI3WjZMR3dn?=
 =?utf-8?B?ZkFMZHdjMjRBQmhBWFplbFFlSm51MkM3VzVMSndlZXl2Z21VT21FbjliNjNp?=
 =?utf-8?B?cTFFdmkwQVdmYm1DQmZaeFJERG1kSktCdTJ5OUxCbTNkTUFBQW1lSGZzVVVM?=
 =?utf-8?B?T1VNcXU5MU1oNk10N0pVWGh2M0dEVzA1d3h1R1kyV3Z6SWtTM2psM1NuU2Jz?=
 =?utf-8?B?YnU3Q3ZKOHRhVFMvaXFxbnpPTmJJTHJCemJMU0N6N0RwZTFuZUl1QzRja1BS?=
 =?utf-8?B?T1NrV24yaHljc0pPS2VWckFIUGM1ZS9XS21wWnZZWlFkcG5CMjFqTnJoVFN6?=
 =?utf-8?B?d2Z2dDRpM3IzeUg2MjMwS2ZYTlpyVkxKSnhrS3JTVHE5am5VOE14RDUyQTZy?=
 =?utf-8?B?ejErczRlQWdrTGN0ckdmV1ZsR1k0QktySzlyQm9Xck1XZGZVTURGM21EeDdN?=
 =?utf-8?B?bTJ4ODJHY2Y5dE14RUVqWFhHVC9mWUdrakNkUnh3VzRlUTVld0l2YWtTamFZ?=
 =?utf-8?B?ak5RU3p2LzdIL1g0TXovK2l1S2p5TWRxU2dFR0d6eUxiTEdoUXV4cXlzRzJR?=
 =?utf-8?B?RWQzTTlvOHRWNmVFR3NuSVdRQTh0RVF4Z2xHYlhnTE1sdFJGWVZjTlhrUFRS?=
 =?utf-8?B?NmNnRXpPQ0w0bzhnczdZWXJyUzFTYktrOXJvNlhPdTNLVDd0Qk9ZOGdUam9k?=
 =?utf-8?B?Y0s3REVVczR2MzQ3SzNMTitVUTJ3ajV5UjZEVEk5WTd0cUFDaWV0cTBYaVdj?=
 =?utf-8?B?elI0T1c3UDg0NEdHajI4YStETExoREVkZlVhQktzSElCRGxOZHZET1FhQUdZ?=
 =?utf-8?B?Ym10OEl4dlRGdU9PWm0rNDNXSXZGdDgrdUNnY1VIRFJQV0pKSHRqZXUrTXQ2?=
 =?utf-8?B?dmFFSnF2QjU2cnlOVjZYVCtEL2svdmdhdGZha0hYZk5TY3dBUUdVeS9OSnNs?=
 =?utf-8?B?bmNFWE9xUGV4Q1VsdEJONmxYRkQza3d1ZDdIeTN4SEdsQnRIbXdjQnB1NTQ1?=
 =?utf-8?B?VTZRK1puL0FNdnFuOGIvdGlkMnZwUzRJcmNBMFlzczB3alFXRGVhYkd3Ym9p?=
 =?utf-8?B?SWR5d2ozZTV6LzVXbXdMSGpaSjZMWDBKRVVKYXh4ZTZwR010RWpGeFQrY3B6?=
 =?utf-8?B?V2tNK1UwYkQrMThwdncyNmNXQ25VRmdUQnhMbVlPR1dsQ1Q2TFpCbjMxUGxK?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff6e9d0-f6a7-4ff1-b577-08dd7c713f25
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 22:59:59.1643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TUcdgBismqMF2qzzLgw6R1VLHrClSmDkY3k1RZYseAY4lqkXnGJpcGrZLplHmzv71a7dS/ZtWubYL0j2mVKNF0lMNkzOUkTOWkh2WAQLN54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744758007; x=1776294007;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BmDTJTAVIJj/qRYS1eKtth1psGOQCtg+GfmY+HsW+fg=;
 b=mq22UgTnAh5uYAru15TLpCVnHKLGocOoWTk1M+aGzRcNURAPWOrYj+kI
 uPEFkbrAks+mvnySl18xVzw3lt5qiHhrT2j7n6JNIbWzSX51SNWzLQ5v6
 w9kptmaWvQlWQcz8nXTSWQKNhf10jaAhT/a3owyv9UtyaN9sZTIxQIIQK
 eG/EG436y0GQtQrdu64OwIVeW2RevKs1uJe/zfrRU1Va8bb1u64u0qvML
 I1LMSWLljcPhlduPi+JNMYsVbZ0wjBsWRYpoxO6DTk/PnKYRioovI8Ivc
 1i03rGcO4mOnalHlL1xuIcxvWh3DJTWzI57xb16fWUvrwFvU5Vw7ODtVN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mq22UgTn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 0/8] libie: commonize adminq
 structure
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



On 4/10/2025 3:01 AM, Michal Swiatkowski wrote:
> Hi,
> 
> It is a prework to allow reusing some specific Intel code (eq. fwlog).
> 
> Move common *_aq_desc structure to libie header and changing
> it in ice, ixgbe, i40e and iavf.
> 
> Only generic adminq commands can be easily moved to common header, as
> rest is slightly different. Format remains the same. It will be better
> to correctly move it when it will be needed to commonize other part of
> the code.
> 
> Move *_aq_str() to new libie module (libie_adminq) and use it across
> drivers. The functions are exactly the same in each driver. Some more
> adminq helpers/functions can be moved to libie_adminq when needed.

This doesn't apply anymore after Dave's series [0]. Can you rebase and 
resend?

Thanks,
Tony

[0] 
https://lore.kernel.org/intel-wired-lan/20250407191517.767433-1-david.m.ertman@intel.com/

> v1 --> v2: [1]
>   * add short descriptions in kdoc (patch 1, 5)
>   * handle all error types in switch to allow clean build (patch 3)
> 
> [1] https://lore.kernel.org/netdev/20250312062426.2544608-1-michal.swiatkowski@linux.intel.com/
> 
> Michal Swiatkowski (8):
>    ice, libie: move generic adminq descriptors to lib
>    ixgbe: use libie adminq descriptors
>    i40e: use libie adminq descriptors
>    iavf: use libie adminq descriptors
>    libie: add adminq helper for converting err to str
>    ice: use libie_aq_str
>    iavf: use libie_aq_str
>    i40e: use libie_aq_str
> 
>   drivers/net/ethernet/intel/Kconfig            |   3 +
>   drivers/net/ethernet/intel/libie/Kconfig      |   6 +
>   drivers/net/ethernet/intel/libie/Makefile     |   4 +
>   drivers/net/ethernet/intel/i40e/i40e_adminq.h |  12 +-
>   .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 155 +---
>   .../net/ethernet/intel/i40e/i40e_prototype.h  |  15 +-
>   drivers/net/ethernet/intel/i40e/i40e_type.h   |   6 +-
>   drivers/net/ethernet/intel/iavf/iavf_adminq.h |  12 +-
>   .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |  83 +-
>   .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
>   drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
>   drivers/net/ethernet/intel/ice/ice.h          |   1 -
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 269 +------
>   drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
>   drivers/net/ethernet/intel/ice/ice_controlq.h |   8 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +-
>   .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 226 +-----
>   include/linux/net/intel/libie/adminq.h        | 306 ++++++++
>   drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
>   drivers/net/ethernet/intel/i40e/i40e_client.c |   7 +-
>   drivers/net/ethernet/intel/i40e/i40e_common.c | 730 ++++++++----------
>   drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  10 +-
>   drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   8 +-
>   .../net/ethernet/intel/i40e/i40e_debugfs.c    |  46 +-
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  36 +-
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 240 +++---
>   drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  18 +-
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +-
>   drivers/net/ethernet/intel/iavf/iavf_adminq.c |  62 +-
>   drivers/net/ethernet/intel/iavf/iavf_common.c | 110 +--
>   drivers/net/ethernet/intel/iavf/iavf_main.c   |   5 +-
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
>   .../net/ethernet/intel/ice/devlink/devlink.c  |  10 +-
>   .../net/ethernet/intel/ice/devlink/health.c   |   6 +-
>   drivers/net/ethernet/intel/ice/ice_common.c   | 388 +++++-----
>   drivers/net/ethernet/intel/ice/ice_controlq.c |  53 +-
>   drivers/net/ethernet/intel/ice/ice_dcb.c      |  36 +-
>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
>   drivers/net/ethernet/intel/ice/ice_ddp.c      |  47 +-
>   drivers/net/ethernet/intel/ice/ice_dpll.c     |  20 +-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
>   .../net/ethernet/intel/ice/ice_fw_update.c    |  38 +-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c    |  16 +-
>   drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
>   drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
>   drivers/net/ethernet/intel/ice/ice_main.c     |  63 +-
>   drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
>   drivers/net/ethernet/intel/ice/ice_sched.c    |  18 +-
>   drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
>   drivers/net/ethernet/intel/ice/ice_switch.c   |  55 +-
>   drivers/net/ethernet/intel/ice/ice_vf_mbx.c   |   6 +-
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   6 +-
>   .../net/ethernet/intel/ice/ice_vlan_mode.c    |   6 +-
>   .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  24 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 272 +++----
>   .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |   4 +-
>   drivers/net/ethernet/intel/libie/adminq.c     |  50 ++
>   58 files changed, 1570 insertions(+), 2136 deletions(-)
>   create mode 100644 include/linux/net/intel/libie/adminq.h
>   create mode 100644 drivers/net/ethernet/intel/libie/adminq.c
> 

