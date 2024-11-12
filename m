Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CF69C5B53
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 16:06:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F2DC40181;
	Tue, 12 Nov 2024 15:06:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZ3CxtcA8nZg; Tue, 12 Nov 2024 15:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14B5B4014C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731424002;
	bh=rFVZvk6DkBj1q/nRI4r8OWznQsiUHPP9Fh7EQb7RzJA=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t50C8nMksDJaXpNaOKIC+kNL0ARtM7Gk3V6237piM3tI+/RB/2VFchMv09aJfBGbc
	 ZJREZMKbRr1Ew9X5RTaL9C2pZHEKhUIvUerPLL3vL12sMCaAPNRtERTGvjNfzhJBHW
	 ADGQUwbLQep1KFyzdLNsKWGdIbgDT/SOGCqDtFXrDMdT0wIT3z6+kcHWrzd5rKqBrj
	 8JJAfvjWRQX3dy5qfNF9e5wPTzohKrkeXrTaTUntbpFQPz/OlciHCEbSmt9iTQ+upG
	 E0GPXUGpbItZzcwNPa4nuWv6jKmUm1hyPlWmXl1N4HjcJfa91KBWLLT7uXgnExv/N8
	 0JUei5bABFiOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14B5B4014C;
	Tue, 12 Nov 2024 15:06:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B98E06C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 991CE40152
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vr4dhpJ90Zah for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 15:06:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51BB94011B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51BB94011B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51BB94011B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:06:38 +0000 (UTC)
X-CSE-ConnectionGUID: 5w3YCoXUQbWpUNFwBbRGBQ==
X-CSE-MsgGUID: /vs5RjXKTEGlBfIUPjOFMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="41871497"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="41871497"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 07:06:37 -0800
X-CSE-ConnectionGUID: Y5VZRXhYQla3exixNdKVEQ==
X-CSE-MsgGUID: IoN+1wOvQZy20JwnEBJjJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="87091168"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 07:06:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 07:06:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 07:06:36 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 07:06:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SphtuJKOCJ3354Gi+JRxMfdm4rk0mG9B6/IMXNkXZKi/YgmWSpZUdE0sJWy3fq7EMwkN2a0Q6KNG93heL9TwlPZH8iH+3cD/zRhtYL6Mdv9oBWrBJJEClI1wM3puEXLdlENgrS51GJh6HPlmxxutOlLPiUlvqqR33Q+hmO0j4U6l3mEdEWmaGj9nIWHxGUstVYx0FV7e3v/UzzBn1YoFzkVj4AfB6p9LPLX/MefWUpn0L3tgF6xQgVWWLGdHDtvrVf1uGDY+UbYTeUwjsASmbrMp8AkgLXlqnMzysjijwldMR9/oyM4Hd8Pk4SnV87lPPpw24OI5YyjjPOtBWke83w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rFVZvk6DkBj1q/nRI4r8OWznQsiUHPP9Fh7EQb7RzJA=;
 b=uCbJv/LFxfnUa6tPCEH4myTI4MiT7s4RqsfiB4vJzwzyp2cVbxxrCHPDF+fGZhGzwRClLIkSP0rOc+XMmNmZ9fxMuuhuJNyBSeElndIiK4H4h5322fhf8q0Da8yJgakr7fOlMbauJID+GCStUdTZFSXuS+FqH44I8/P51IRd/ZcqPs99WwA1wC8209alNg4Ce8K71mYCRcd5rq/spIWK11DbHNTXAAPV6tN+fyGMFV7AzSp9VrwbpW4J1BQloeB2XsXvm8sqoUrOQW8nk7AnWNmJFkNUtHzvN+2bNkG0dHZYxAmCfX8nekIx74lDDA7f53Sbk/lCsK1shRTBIXlEsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by SJ0PR11MB4942.namprd11.prod.outlook.com (2603:10b6:a03:2ac::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 15:06:30 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%6]) with mapi id 15.20.8114.015; Tue, 12 Nov 2024
 15:06:30 +0000
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>
CC: <vitaly.lifshits@intel.com>, <jacob.e.keller@intel.com>,
 <kurt@linutronix.de>, <vinicius.gomes@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, "moderated list:INTEL ETHERNET
 DRIVERS" <intel-wired-lan@lists.osuosl.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:XDP (eXpress Data Path)"
 <bpf@vger.kernel.org>
References: <20241029201218.355714-1-jdamato@fastly.com>
 <20241029201218.355714-3-jdamato@fastly.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
Message-ID: <5febc201-0bbf-bb08-2bde-7ada5b356740@intel.com>
Date: Tue, 12 Nov 2024 17:06:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20241029201218.355714-3-jdamato@fastly.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|SJ0PR11MB4942:EE_
X-MS-Office365-Filtering-Correlation-Id: a430efe2-f7de-4b7d-5cd6-08dd032b969b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmpSNEs3ZHlDM08vazBhdlg2Zk5PdVdkNS9Yamg2c0F5RXppOFlGMW85enN3?=
 =?utf-8?B?VGdNdjIxNUxNSGRYdDBMUGExYmxucjdCVnhXKzZFM25SN1ZGVERVdTdmMzlB?=
 =?utf-8?B?Mk5MRklxQXB3L0tpMTgxcDJIcjhXdSt5bmFQVFRKdU53OGVzbWRNQ3Jwb3ZB?=
 =?utf-8?B?QlpxdUxwamJnOEwxTTRJbEFxdzY0QTNtUHlSc0RkRUxjYWcweTRqU1NNVGpN?=
 =?utf-8?B?cnRVcytDWGw5c2tURVppa0FQeUZCcWxzQkhtOWVMZlJweDNnTW0xZmJ0dzFU?=
 =?utf-8?B?bWlXTU0xR0tkUzFidlgxYnV0em41NWpwdjRlSGRCa3pXRkxYSEpqdXNSVUgv?=
 =?utf-8?B?amJrMVNQVDNxSHJiUVIvVDNTRzczQjNZQWlJekxtVjNYWGpvWHAzL2x1ckUy?=
 =?utf-8?B?ZGxlRXIvUXBGUW13UTFYdE9FMDRDMUFaTkswZ1U0VjhTRTBjL1E0RDJQa1dG?=
 =?utf-8?B?U0ZBRHN2ZVJ4WDVJSU9teFVzZkFYSUkwRUFMNUxDeXVGeENoUnppUDdxTjdt?=
 =?utf-8?B?VmFFT2VCcWdKcGFiN1JHbHR1T1lQKzQ4VHNNeG5iK1Q3SXZyWVFiaW8xR2Vv?=
 =?utf-8?B?aWpndlorU3RKdjg0UXZvVDhnVUUzc2JYalBIN20zOVZyejV2d1hWSlJaWjZ5?=
 =?utf-8?B?aWI4RkpqWm1hTkZWZnVNYU5VeUVVek1TVXBTR1VqeHVqM2pMSExuWlo3U29r?=
 =?utf-8?B?VFpDZDFmR0VmWmRYYlpRalZqRFhWZ0ZxR2pPbEoxRkNKZVRGOE9TM3VNR3Vi?=
 =?utf-8?B?V3BFQloxSndhTFBhM0xweEttV0NTUDFWOWNndVhNN3RiUkU3djNWcy9PVnho?=
 =?utf-8?B?OFc1QnFnVEhjUVZLQzhjOHlneTV3b0tzMkRsSzA0TVcxSFk1bFJxZ09LQnhW?=
 =?utf-8?B?cUpkUVcxNjZDcFhDNTdMOGxBRTROOENWbDRzcFZQMWd1NGdsVnZKUStTMUU2?=
 =?utf-8?B?aE8zdkhOZm1ZbnJocVU5ME9lRmg4Z0h6UUNpNkZKbk04UFIxSFpDOUlOaS9t?=
 =?utf-8?B?R3NMM2J6Q1JMb2lQZ0F4ZW9MUDBBUVpzSVlZSkJhV0xFakZRbGI3djB1ZWdP?=
 =?utf-8?B?eDVpbkZRWHBYVnpFTHJwSDVoemZwNUlhM2J0WnVMUU9jNkluOGNNODRqQ1VC?=
 =?utf-8?B?UjJJVEIvTldDSllPWUtTZmpMdWNFRlJja1MyQ1FOOVV5WCsra1NjWEdtSWVZ?=
 =?utf-8?B?RnkzSS93TUd2ci85UFN6aU5TM2tYVUJnSzYvZS94WWxLNUxyZlZrai9melpi?=
 =?utf-8?B?UFBSdWlXS1JiR2ZBdzFGYU1ic3JIVWczSm1RenhISVJEY3JFZXdLK1FCV3V5?=
 =?utf-8?B?VHA4aXF3bXowVDRRRGozMGZ0andWN0VIM0NBMk5xR0JMNU9pVnY5TUI5b0U3?=
 =?utf-8?B?UzBOcVFaSjNDN1dCaDg3OUMxdWYzTDJMbUtlWjY5K1VsTmtKd3dMeUgybENV?=
 =?utf-8?B?RmpDYlZRa1BBNGF6VUw3TFdoNWZqNXMxRHBYWGRFWmgrN1ZLeDBpUHpWcVFR?=
 =?utf-8?B?U2NZd21KQ2JqUXI3cGxWVWoyd2VreXI3QnRYc2pHRysvVlhsK2lkL0xIQVMr?=
 =?utf-8?B?VlpoQnBHdFc3M29lZW9nZ3dPUDJZY0VGVVViK3V2VEtLellaUncvYXpYVDFa?=
 =?utf-8?B?RCswaFB6eG55bVg0bDlNVTJkN0VhU1p5L2VhanZmaXZqcW43TXM0YnVRYUh1?=
 =?utf-8?B?UlNEZjAzWnVhYnN5WVd1UmVYWkVoS01nN202TUpFLzlrWXIvdWhJYlQ2c0ZZ?=
 =?utf-8?Q?D+Ao8HbtcZ/p8vfj/dfJqEKI4H2/YMGm+yF2dZ0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmpyNVh6NGZoaWFsbytRT3ZuUE9TQk1lWHFGWEw0ZWJJNWMweWJsd0xBWWQ0?=
 =?utf-8?B?eTgveUlyWkhlbXdYVFQ0Q1JRMU9UMERjditWSHJvWGc0RFJPWlJyUVNrMmZG?=
 =?utf-8?B?NTc4SzgwQWU5NURtbUc1RGMwbjNsSFhVb3dqeVlMaUtkSStyb2NpWk9zZWFE?=
 =?utf-8?B?cFYyaHNpa3BwcTFsWjkvbjE2djV6TExrNHVJOFFOUXFydVpWc1M2cHR5dXJM?=
 =?utf-8?B?djlXdGsyNVc5d1ltTE5Na3ZreStrR24yVThTTmcxUFNsTmZCRHkyUWRaMW1r?=
 =?utf-8?B?QUd1SW9qZFh6c2lmaGVVQk1Ma1NtYk1pOTZYSzFwOENaZVNzd0tnY3ZFZzFn?=
 =?utf-8?B?Ky9DaUcwWGhWajRJalRBbFRCS1RsWW4zM3FTcHo4NGZKeFEyLzk3ZXhFTXUv?=
 =?utf-8?B?Qk93TnFhSDB5amtJcWJ3K3FESDYvc2RodlBiR011NHR1STg0ZVBPa3lodWla?=
 =?utf-8?B?WnpMOEdIZXc0L1NlTFBzRTAyNStxOFZUMDk1ZE1pU1Z3WWtZcEZOVU1mQjlX?=
 =?utf-8?B?QW5Pcmh0SFZISkFxY2lzelJTd01HY0tTSlIrMUl5aWpLSStJNCthd3doS3lm?=
 =?utf-8?B?SkdreFVLZXllbTc2V050aXA2SmRSTVZyVDhDbU5XdnJxR1M0UncrSjZJQ055?=
 =?utf-8?B?R0w4L0pkOXQ2VzkzdmcxeFhkNnM4RVhkTHpvb21MWVpFU2dyOFgyN00yLytH?=
 =?utf-8?B?SCtBRHlwT0VXKzd4TG5iM1RJb2VEc0RJNnE3SDNNNkdUV0p0U1hvN3UvcHVh?=
 =?utf-8?B?ZVI1NCtNbVlST0xEZGJoM3dQekZWS25CNE5GbHRzbjlleWVQTDk5REg5REJT?=
 =?utf-8?B?Z05BR0hTK2VYdEM3c3lZMTc5WlRvR1BpaHpiYXNEeEZxaG1sQThVTTN1YUl1?=
 =?utf-8?B?ZGN6ditIR28wY1c1d0lIK1Q1K25EMjRNSjJZU29NTjBKcG5PQXFpSmhDU3BE?=
 =?utf-8?B?MmdnbFpRa0k2Wmh5TFd5Q0Q2UmNYM0QrZVd5REpYeW1EYVNKOG5rUFhiUFpz?=
 =?utf-8?B?N3RXMEJneVhObzBBL0w0UmRkYWIxRld3VUpacmhLMlhoVEpmMzJ5WnoxT0pw?=
 =?utf-8?B?SXRVWHltVm9KaU5FTXpMbEZrSGlFL1BxSmVxbE5MNGtOUzdRTzE5YjBWMjNT?=
 =?utf-8?B?c0pGTHhhNjVUOGhyM2VvYzRvMU5SZTV3U3phYVU2L2lCWlQ5b3ZYelZhaWFu?=
 =?utf-8?B?cGwvVGZNM2FBMGM4MHdMVmlyOEhsZnNITk1yMlpRdWFLN3ZwYXIyQm04MWJ3?=
 =?utf-8?B?VUdYTXBlRmVDVTJjeHlHdDh1ZnFlQ09ueC8zVSsvVld0a251QjJsSGQ2Y09x?=
 =?utf-8?B?OGR1S2JDTEVGazFCcXhqcE9SLzR6ZFZjUzdDaE5KQU1JTm9yNExYbFQyR2x5?=
 =?utf-8?B?MDBpUDJYRTJGekk4dWxqOFZrSXlEWGQrQjVaU1d1bUZWbTdkVzZvem9wWER3?=
 =?utf-8?B?Q1pwWmFiUGp0bUJLR0RhTTU3MmRWKzcwdy9HclJLNFJEL2JRNFNUQWI3VnQ2?=
 =?utf-8?B?VHF0aXl1U3dLMVhyRWdtZ1d0ckFpYmFENG5qR3plMmYySXpPL1hoM29BbFF4?=
 =?utf-8?B?Snk0OWhKcWFnWmtaSkZpajJrNlo2OTlwdFNKeFNsRmkrS2MzOXpqNmZ0VWs4?=
 =?utf-8?B?Y05LcThVbTRBTVNPL1c0cXhKZys0Q1VnWmxhRDMxYmd3NUlzdVJsS3BKWW5J?=
 =?utf-8?B?WmpIa2N4RGFNRlRDdDJYVzZPNkwwZUpBWkk0ODB5bTk0SGFYZkhlRS9JQ3JX?=
 =?utf-8?B?amc3RHg0SDd2RUNnQmEvVXRjT3BEZU9mZGZhb0hTdmhiUHBmYzBNVkVUV0Jo?=
 =?utf-8?B?ejVwTktHVlNPeFo1YVk2eHJlS05YNDlMRnhtZmJqdUpyMHZ1ZHorSXZyNmp4?=
 =?utf-8?B?SnErQ21nMVFXaVJBLyt1UlppQ3dzOS84dFV3Rll3WTEzMzR5RjQ2ejhWdVYr?=
 =?utf-8?B?MUlqQ2kwVmN1dFRMRUJ4eEFEeEJ0OTRMemh6R09JbWZLV3NJSWlyUi9GR21V?=
 =?utf-8?B?Zmx2QUdkcUhONGRlYlcwL3htMVB3MmV1b05BWit5UVlmd3JGaittcWVDOGtF?=
 =?utf-8?B?RmVkNmMrRU1yUzc4VWJDeUJYNHJqUHFlMHBUd2orOUt2YnBCN3YxS3dzS1pG?=
 =?utf-8?B?WmNCazZPTjc5NWw5bTF2SEFTYUVYTG9DZFpLejQxajFhcEN5UjQ2R0xDb2Vt?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a430efe2-f7de-4b7d-5cd6-08dd032b969b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 15:06:30.5385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LOOymdGxF6NJRATcPJ/TKtmKc+moeOxJLIKx3GhrzoIhpNUp5UVA2bbXvbEFrwVFpE0tDpRidIoyAIzekDOiCA4B8sNWVmB4EqTLJlgAJP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4942
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731423998; x=1762959998;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OpixYVVKZnUiQVv/7cQyz8dVQ/DdzFqKTFba6PV0nLo=;
 b=j7Zc07kgTwhnPor+2yidPApk3eilRccb1nB/06Tqn8AKTLvtu/S4wd2m
 rhrdzPf+GqkXkE5Dx3qZ8Lu5EMKX0WuU5f1ecgGU0ENsXR4+Dg06J7UFN
 X6pJ4/TzjfvyqJTlXFcQU10Y3KMWg8AL1Ivi5gro0hL68yabAltxWPYuE
 C2qXpPpGnythq68XMkwiLkMcwffEzqkkbQeRy4ZSKN1FutdrxQa6qFwV5
 FS4Yes52lTFuUlhEzjWHcwnmoal7fN29flJfrzdvLL69RVaBRtvNzdXxC
 Fsd1mqNMncFpmfu5XnMDH4CNWOL9BN9e9RtVfB4aJpVqyWvMckcjIlFmq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j7Zc07kg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/2] igc: Link queues to
 NAPI instances
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



On 29/10/2024 22:12, Joe Damato wrote:
> Link queues to NAPI instances via netdev-genl API so that users can
> query this information with netlink. Handle a few cases in the driver:
>    1. Link/unlink the NAPIs when XDP is enabled/disabled
>    2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
> 
> Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump queue-get --json='{"ifindex": 2}'
> 
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>   {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>   {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>   {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> 
> Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> is present for both rx and tx queues at the same index, for example
> index 0:
> 
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
> 
> To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> the grub command line option "maxcpus=2" to force
> igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
> 
> Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
> 
> $ lscpu | grep "On-line CPU"
> On-line CPU(s) list:      0,2
> 
> $ ethtool -l enp86s0  | tail -5
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
> 
> $ cat /proc/interrupts  | grep enp
>   144: [...] enp86s0
>   145: [...] enp86s0-rx-0
>   146: [...] enp86s0-rx-1
>   147: [...] enp86s0-tx-0
>   148: [...] enp86s0-tx-1
> 
> 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> report 4 IRQs with unique NAPI IDs:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump napi-get --json='{"ifindex": 2}'
> [{'id': 8196, 'ifindex': 2, 'irq': 148},
>   {'id': 8195, 'ifindex': 2, 'irq': 147},
>   {'id': 8194, 'ifindex': 2, 'irq': 146},
>   {'id': 8193, 'ifindex': 2, 'irq': 145}]
> 
> Now we examine which queues these NAPIs are associated with, expecting
> that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> have its own NAPI instance:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>   {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>   {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   v6:
>     - Rename __igc_do_resume to __igc_resume and rename the boolean
>       argument "need_rtnl" to "rpm" as seen in igb, as per Vitaly's
>       feedback to make the code look more like commit ac8c58f5b535 ("igb:
>       fix deadlock caused by taking RTNL in RPM resume path").
> 
>   v5:
>     - Rename igc_resume to __igc_do_resume and pass in a boolean
>       "need_rtnl" to signal whether or not rtnl should be held before
>       caling __igc_open. Call this new function from igc_runtime_resume
>       and igc_resume passing in false (for igc_runtime_resume) and true
>       (igc_resume), respectively. This is done to avoid reintroducing a
>       bug fixed in commit: 6f31d6b: "igc: Refactor runtime power
>       management flow" where rtnl is held in runtime_resume causing a
>       deadlock.
> 
>   v4:
>     - Add rtnl_lock/rtnl_unlock in two paths: igc_resume and
>       igc_io_error_detected. The code added to the latter is inspired by
>       a similar implementation in ixgbe's ixgbe_io_error_detected.
> 
>   v3:
>     - Replace igc_unset_queue_napi with igc_set_queue_napi(adapater, i,
>       NULL), as suggested by Vinicius Costa Gomes
>     - Simplify implemention of igc_set_queue_napi as suggested by Kurt
>       Kanzenbach, with a tweak to use ring->queue_index
> 
>   v2:
>     - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
>       disabled
>     - Refactored code to move napi queue mapping and unmapping to helper
>       functions igc_set_queue_napi and igc_unset_queue_napi
>     - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
>     - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
>       igc_xdp_enable_pool, and igc_xdp_disable_pool
> 
>   drivers/net/ethernet/intel/igc/igc.h      |  2 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++++++++++----
>   drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
>   3 files changed, 51 insertions(+), 9 deletions(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
