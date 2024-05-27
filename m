Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 744A68CFEAF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 13:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3891960887;
	Mon, 27 May 2024 11:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lFQ9AmI3e4OY; Mon, 27 May 2024 11:16:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6823960877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716808605;
	bh=P4YUph0yfB5yj02sXLOE6MmXMtOivTE6z2SJpYIsK7I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U1RpVR34PalU0lQ50VblG73x8r8uwULplBQnuC6Y35nFSt3H5rlzwOcZG7EQpd+jM
	 4aeLN0zZo1I+be287XQEePEKIHXtXHRzp3EiKGFdclxBL2XH6yoF8J83arGY0HATBF
	 5cOS5q123Yi7hOuHbRe0u8/MLFg/e2Xzr6d29fZiJynUieHs/W9lu8UWcp4XVM2bDM
	 RKk5I/hAYnxprdXorVjUrbdICx1VsT8YKwcw1MVORqktQD3n3Ecq0jMzsJae7MIw5a
	 8fIEV7/IYe+ZjdvwM2Fw4LHxp36ECg1FRKSRk4PwD6Co1VDT9qIiLeKo4cYUNUtQo4
	 OgrH2FPFV41HA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6823960877;
	Mon, 27 May 2024 11:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93E111BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 11:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 888C440343
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 11:16:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k5JiR_y3FQP4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 11:16:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3AB45402A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AB45402A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AB45402A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 11:16:41 +0000 (UTC)
X-CSE-ConnectionGUID: mTmfwGnqQ9ix6o4xzV/hog==
X-CSE-MsgGUID: thnkJp3fQA2Bfjt2iUXOoQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="13345958"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="13345958"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:16:41 -0700
X-CSE-ConnectionGUID: FmiqrKW4St+KMC+PCBfwOw==
X-CSE-MsgGUID: b9En8N/IQi2ZyGP9Mwz4FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39724883"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 04:16:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 04:16:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 04:16:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 04:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G5Te6fJs9S/OiygivFxcgFBBi8wIO1z1gkngs9al3JL+6Snzdab1UJY1QZZh5h5tqLaWsJrSb5CZEWA9EpedlzfTeNqEI5qJ0f/T2QUlSfkmBzRQpG3cGMR0dXzsfjdEcoNR7hQkcgnAzXCaUANqncbd1Ui4OjnuQfL2dmV9+r/j6RocM+T01E7JVe/VUI2whEzhFfCTV+k+08tGjrSo9HPHgioMO8iN1MQfUAuiLAwxCxogieJDFdfF/834fMCJW+fbDafOhGXawQwLdQyFib/Vb+n6t9bJCUaAiUMfeBz8wa2/q07M/8zswkT1ZKVcToIr5p99WsumTVZP6rUQSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P4YUph0yfB5yj02sXLOE6MmXMtOivTE6z2SJpYIsK7I=;
 b=Gclot2zH/2atije8qhvnegFU2cfTw806uBeQ2Ml55f3lGrgmEJ78c3a5feZ4gUh+dgExf82INpRMF4bIUgEMfeWYk/aCmXyFMZ+z5/HGzvZuQ3ps7UMr28cqECAKA/2RoxgVuUiV2I8O1Q0K/TLWygMN1+cfU8pEhBeNzMObqYMv9lehrMLhMH+UuD66Rrn0CMzTRWGvQ76B4WwPJVMpb+f6JriGXIMFuWolZQoFer5ieQHsC/Mv6DUNxg6yPZ0KV71j0ln5SJwUWPEcgRdgYOM/yPe/jwI+umQmErCINK4Yy62LfJLPFRv0ne2BSlcdvMFUmSAQCxYRZNn0KHrCIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6099.namprd11.prod.outlook.com (2603:10b6:208:3d5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 11:16:38 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7611.030; Mon, 27 May 2024
 11:16:38 +0000
Message-ID: <f33b3eeb-6ac7-4726-9ac4-7494e33ecd85@intel.com>
Date: Mon, 27 May 2024 13:13:40 +0200
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
 <20240510152620.2227312-9-aleksander.lobakin@intel.com>
 <CAHS8izO7agxQ6nbc=BoK5KuYd_jgVLgJTbZbmEUqarfVn300Tw@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <CAHS8izO7agxQ6nbc=BoK5KuYd_jgVLgJTbZbmEUqarfVn300Tw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI2P293CA0001.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6099:EE_
X-MS-Office365-Filtering-Correlation-Id: d7eb8545-b0ca-4555-dd42-08dc7e3e79fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUMxSDZEVnhhaXBNQmpRVHgzYlVJdDB6WVBZKzVZZ0ZaTE11Yi85R3RqNzNl?=
 =?utf-8?B?TFd6UHFXUHVKTmE0TzJnZTNRKzRnSW5EY01zVHNkK3hCZ2VEOGRZOEJ3ZW1R?=
 =?utf-8?B?ZE56dW1Mc21GNUdOcTJzQ0FsdWpKTThIYXhUSmJUUHRJWHdtYURBL09sYVIz?=
 =?utf-8?B?VGdmMEo3RkxrTzI0bzBrdS9xRjBOMGZ5dU1oSm9RNHJVNjR3V0x3Mkd3OUZL?=
 =?utf-8?B?N0hYSHZUUEE4T2o0RXQrTENKZUdoVFg0SVRrVjgxWmd3UHhBNnRudXIwd2wz?=
 =?utf-8?B?WVRQdkRCWExMbEY4MG9aWUN4RGdvMnNaUnZBSDFuY05hVkFQWlVsVGtIUDdG?=
 =?utf-8?B?NnVnb3hFbFlFZUZ2Y21BUHg3VURSYkoyQzdOMHQwOWJGeG9xelljRlJFV3NT?=
 =?utf-8?B?SmR4Tm1xVmJjTXdyOGhmR0lnRkFtR3B0TWVJVElJdlVVcVdobEhoVHRUK1lZ?=
 =?utf-8?B?ZSt5eklRZThWRGllV3BTVGs1b0s5dzdGUHNsdGdMc0ViSDJSM3FVcjk3d3p4?=
 =?utf-8?B?Y3ZaaEduNVVlUXRCV0xJL1BIZlVKVnpXcE5XQmtFc2ZUN3dlREdwY25EbFg0?=
 =?utf-8?B?a3UvQkczbzJDMERzVkw3WUtmaFNEaXp5RnJBNzRjNjBab3Y4WWxTK0YwWmJR?=
 =?utf-8?B?dlZHNzFCdjdpKzc1SDBGdVFROEY1T29QcndZN0d5YjRaR2NLamI3NmwvaXJ1?=
 =?utf-8?B?alVKV3FIOFlCUm1HdlVoUUhUVE52WExqcVN5Vm9jQ04wczdIUG1zN1BOWURD?=
 =?utf-8?B?eStuamNVVnBZQ0JGQ2t5K0xhR3c1U3Fra2hvSXovdWhuZDJTeE1HaDJvSnYy?=
 =?utf-8?B?ZzBKNWkzWlNHTVlaa290YlVRWVplR0VJMmdKMXgrQTVOYjBEWmFvNVcyZ2Mz?=
 =?utf-8?B?REdQWTJQbk1pc29Ka3BhZHZxdmt0b2tIeUwrU204T0I1VFNwV0FTR3FOckpy?=
 =?utf-8?B?S3ZLVlcwcFhROWErTHEvSmZUVFVaVzh2UDFhaVkrcElDQjg5dm5HajJNdHNl?=
 =?utf-8?B?S0VvMy9CSkpWVWFVSWpVYWQ2TWNnbXFYSXV0VGZNYlIvdnJkNWdaZzl6Z3Nj?=
 =?utf-8?B?SGd0dnhYV2w3UU5vd0JDNUFSTnVERm1UTStEcFlkQWlobG8zaTBkTGMzaVhm?=
 =?utf-8?B?THFSTm0vZE9uRWNueStjRCtoQ254QjY3dEprV21FVmxHQzZEZVBLQTMyVTBP?=
 =?utf-8?B?S3h5dlRFV05IenpIY1dHRmJqVVQ2STYrL3ExK0Y2Q2kyU0dJeThKNytSMWUr?=
 =?utf-8?B?WVpZWkhwQkswWE5zcFdBYVBVQllxaitaMjJiNGZvSXNzQ2J2V0dIUThwOVd1?=
 =?utf-8?B?ZGtnRW9XWmVLMGU0NG92QWZ2N3dwdTVVcUg3angvR09ORkh5dG9lK2ZTSGJ5?=
 =?utf-8?B?ajZZRlRPcFVRUytjTmhrbXVNQ0dtVDdES2VqMDVXeEpybnBON29XdUxPeDhw?=
 =?utf-8?B?TVVsN0Z6RUFMQU82akVhRll0am12M091NjdseGg4Q2lDTEJ1Q1FjOG8vMTQw?=
 =?utf-8?B?cHdReUVWd2tVcTVPZ1pubG5qdHBWeXpQNXZWcHhzM2dpTnRTRXhDNzBqTHg1?=
 =?utf-8?B?RUU1YlpxTmQ3SXNUa2hacDFEVzkwc2RYVXdPRE4vWU1nVzRHa281dGNabitI?=
 =?utf-8?B?SzNUVTR3LzBqRW9KV2pzd3FId3g0b0I5VnBzMjgyT1h6Y2gxVHcxQlU0VWF5?=
 =?utf-8?B?RnpBWE1kUlVZdWVGYU8yT2FReERiT0lEOVE5VFFReDhvUEtoL2VJakFRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amZxYm9wZFZ4U3hmRVRlNjhnVmNYc0xSOEtsS2lBMTZaRlY2b1hWRFJkekhU?=
 =?utf-8?B?ZHRNcDI5eWUva3BKM0hSQVJ0aWZidU5kdEtVZGtRQTRTNkV2eWF6MmZTcExy?=
 =?utf-8?B?OTBjS3Y2QnExWWliNzRrU096ZXhEcEtYZG5GeWNNbnk4V3MzTVgwUm44RldJ?=
 =?utf-8?B?K3ZBeTF5cEx6VTRQNkx3elgrcS9XTndzVURPSHlRYzZhK1pSZmk5dWo0OFJG?=
 =?utf-8?B?YzVzUEFoYUVGREpOQUxtVjNTTnl2ZExTcXdQa2NIdDBKSCt4UWZybkdLNDhh?=
 =?utf-8?B?azFDSGZIZ0hML3BLZlBsSWpjOVE4TjNBU3g2NGVTVW0vSTVKTnpXeVArMGdP?=
 =?utf-8?B?RXNzcGgzcnQweEl4ZkhyS25hUlc2MFN1eHNYNlZmYy9qYXkwMnhxSjdmSEJP?=
 =?utf-8?B?TXhOdkgzT0MyR0dScjl0VVUvN0FyOUgvUWoybzlRbDNNTHR6VFlkd2JHNjY1?=
 =?utf-8?B?QWtWeHQwVFZqWE1YUlI0ekF3em1UdVlNZzRJeGZ4OEpYcEhKOEEzWGpEa1I4?=
 =?utf-8?B?SWlQdmpBVmhUam5LdTd5UHc5aG1kRDFvUFp6ZnlCWWZmNlBuOGthZ3ZYYzhN?=
 =?utf-8?B?SFNMYzFoc29nOFR0UFRoN0pqSmFRMkdaTURDNDlRZG1Ba1EvQzVqN2J5RWRj?=
 =?utf-8?B?M3BrRFFHMWgwQ0hVNHhLNVNYQmI3a2xjQ3lOa2ZMVFhJbzNLZkxlekNReGg5?=
 =?utf-8?B?ZVBZaHFqRzNTdWtWWXdxWUVWNXVpSFBGWkZXZU81ak9MZDhIS0pOclpiSkMw?=
 =?utf-8?B?VVEyWVhvQXBUZ2grdnhSZzU1TW03dWhwTHUrRDgrQXBPaFd6ZW44TVpzdUkw?=
 =?utf-8?B?ZnpCVmNOSU8wQzcyU1JpZjVXOTVSUFFyaExzUWRGSXVIUXlPaWdGcFE4S3BB?=
 =?utf-8?B?TkViV3RJWjNBWVNpWDRtdmFwY2ZHMXBQamVma1AwdlBVVGowRElaazRzMHR5?=
 =?utf-8?B?L0VmV3hEblU4Z3JyeU5xZXFhTkpneWd0cXRyenVYNnRmd2xUVFJ1STVDRWNT?=
 =?utf-8?B?V1krek14SExXcTNDTHZpT0N0Q2F3cjBFc2FTa1NtMmVhYzhJWHNST3loM2VH?=
 =?utf-8?B?b0c0T2grVStod2Vpd1dwdk9ENWpUMjAwcWdUclJGZnNacTZaZ21JaW56WWEv?=
 =?utf-8?B?T3ZFZVp6UGVlTVpENGVSOEZtaW11Wlo2d0tmRUFtN2UyS2lSWE5KUzZ6bUlO?=
 =?utf-8?B?VW5NMTMrRzFvZEZUQWdUVmUxME83QzMzNnJUNjNvWVgzQ1hITkNlTVVSVi9V?=
 =?utf-8?B?dklncGlNRTY1L0pPMVEyaUN2YlZoclgrRDVEQUQvS1djR0gvQVNhS2l4TzlU?=
 =?utf-8?B?UmFsbWJ4TGViZEFuMjcvYmRVKzNhOWtYdzQxR250OE43WEJPVGp3OTZmWndV?=
 =?utf-8?B?cVMrZ0VxMTZJSzJUaGlsYjBJaVptNzM1S1g2NHdTSUNJSmU0bUx6eGl1TUxS?=
 =?utf-8?B?TWpUUWtlRllNMUZWY3E3S3pYTHNjRVhLdzkzRk5jVHNTSFJaRS9jc04vVVZ6?=
 =?utf-8?B?b0wwaWlmRWFQeDBGUGJSVmVNbVp6SUFHR2FCUDRobWk2RzRFc1VLclgwcVlq?=
 =?utf-8?B?dml3SDZRUnFnZzZPelVqOGpHV25SY2FwWHFTdm1RaStCUWxsNURIaE1yNUgx?=
 =?utf-8?B?WXFYWXdxWG5hd0JkSitMdWJGblZQdlQxYzI3UWxHbkVaOFFrVEVDbUErbDBF?=
 =?utf-8?B?NFZzc2pPUFRUaWxnVHplaDhlYmtjSnQ4REprbkNTUVFsbkx0eW1OQWY5Tktw?=
 =?utf-8?B?Mks3NWdOUlpEODFLWjN1cHNnZE1ocEt5TG5rWlVUVXkva1NRa1VKZWtiZkZZ?=
 =?utf-8?B?aG5HN1ErdnNUNk9ybFlxcnU3VXVqbzNxUHBnb3M2NnVPSHAzdWkrR1I4dW4x?=
 =?utf-8?B?ZGlXbWlmaFJmNHZ6TnRMd09LU2xyVDJGa01TY3RwTFAxdGc5YlplQTFBWUM1?=
 =?utf-8?B?V3JIYytMMG1PZWE5VUo0NkwzZ0VZb3RYOXNsZGZBcXd1dVNVUU1UU0dKTzVr?=
 =?utf-8?B?ak5DNlVYQjRmeHdaektsYnh2UDBLZGJ0V2NMdndkQ1NYMktxb21MemtVclZC?=
 =?utf-8?B?elo3VHJiN3ZyazRCZmFUT2IwY2JkeFRYUWtRWWUybFpFT3ByNTJDUGZxTU1t?=
 =?utf-8?B?Z0VlciswU2dTcVBRcmJYVnA4RTQ2QktoTytQVGJNdFkzcVU5amo1cmdxM0Ji?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7eb8545-b0ca-4555-dd42-08dc7e3e79fa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2024 11:16:38.1639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8txVcLaqNDIweGsgh4sfGhHdQ/laUcnpV1YnsA8aWE3f1uZZCc1UH9IiqDN2w5Nkb9ilMRTUP/Euk9Vyd9qNT91e3YT8jfPIaNel1dREL6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6099
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808602; x=1748344602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=49eUQ/kYFvGuldiW7C4bfKkLBhbCwfRDowltyElgIBM=;
 b=HyVB7+5sCqoh0F4Mh1YxsIqz2Vvlx3RZdY5rRSJSug7HKnW5aUsvHnwS
 5zhR7C+vrD73kCa7LMh5NsQAwf8xZl2wDrrF/+SHEIQEO5x9o7ZoVFNAU
 ZEbxjMCgRTEn5PdlPy57qSPQEVB5EDwnA2Z+F+jxzbHg08hguSXQplI12
 ySsWKFRAIEz6j/fnxOScYIWek1NggnK+ckzkCXm0QzIvivDtZbJZeZEE9
 LJ9UHUBJEKIQgzu3gHeWhamniW8x6yZkda2BrlPFDbU7b89HKmgoPXEQw
 oRPI0PJTdPCIgl5TmlEU4Dt9AebXN/LNDJp9DOrr9WqbHDkTsjMsELMrH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HyVB7+5s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 08/12] idpf: reuse
 libeth's definitions of parsed ptype structures
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mina Almasry <almasrymina@google.com>
Date: Fri, 10 May 2024 09:22:05 -0700

> On Fri, May 10, 2024 at 8:30 AM Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
>>
>> idpf's in-kernel parsed ptype structure is almost identical to the one
>> used in the previous Intel drivers, which means it can be converted to
>> use libeth's definitions and even helpers. The only difference is that
>> it doesn't use a constant table (libie), rather than one obtained from
>> the device.
>> Remove the driver counterpart and use libeth's helpers for hashes and
>> checksums. This slightly optimizes skb fields processing due to faster
>> checks. Also don't define big static array of ptypes in &idpf_vport --
>> allocate them dynamically. The pointer to it is anyway cached in
>> &idpf_rx_queue.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
>>  drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  88 +-----------
>>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   3 +
>>  drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
>>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 113 +++++++---------
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 125 +++++++-----------
>>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  69 ++++++----
>>  8 files changed, 151 insertions(+), 251 deletions(-)
>>
> ...
>>   * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
>>   * @vport: virtual port data structure
>> @@ -2526,7 +2541,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>>  {
>>         struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) = NULL;
>>         struct virtchnl2_get_ptype_info *ptype_info __free(kfree) = NULL;
>> -       struct idpf_rx_ptype_decoded *ptype_lkup = vport->rx_ptype_lkup;
>> +       struct libeth_rx_pt *ptype_lkup __free(kfree) = NULL;
>>         int max_ptype, ptypes_recvd = 0, ptype_offset;
>>         struct idpf_adapter *adapter = vport->adapter;
>>         struct idpf_vc_xn_params xn_params = {};
>> @@ -2534,12 +2549,17 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>>         ssize_t reply_sz;
>>         int i, j, k;
>>
>> +       if (vport->rx_ptype_lkup)
>> +               return 0;
>> +
>>         if (idpf_is_queue_model_split(vport->rxq_model))
>>                 max_ptype = IDPF_RX_MAX_PTYPE;
>>         else
>>                 max_ptype = IDPF_RX_MAX_BASE_PTYPE;
>>
>> -       memset(vport->rx_ptype_lkup, 0, sizeof(vport->rx_ptype_lkup));
>> +       ptype_lkup = kcalloc(max_ptype, sizeof(*ptype_lkup), GFP_KERNEL);
>> +       if (!ptype_lkup)
>> +               return -ENOMEM;
>>
>>         get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
>>         if (!get_ptype_info)
>> @@ -2604,9 +2624,6 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>>                         else
>>                                 k = ptype->ptype_id_8;
>>
>> -                       if (ptype->proto_id_count)
>> -                               ptype_lkup[k].known = 1;
>> -
>>                         for (j = 0; j < ptype->proto_id_count; j++) {
>>                                 id = le16_to_cpu(ptype->proto_id[j]);
>>                                 switch (id) {
>> @@ -2614,18 +2631,18 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>>                                         if (pstate.tunnel_state ==
>>                                                         IDPF_PTYPE_TUNNEL_IP) {
>>                                                 ptype_lkup[k].tunnel_type =
>> -                                               IDPF_RX_PTYPE_TUNNEL_IP_GRENAT;
>> +                                               LIBETH_RX_PT_TUNNEL_IP_GRENAT;
>>                                                 pstate.tunnel_state |=
>>                                                 IDPF_PTYPE_TUNNEL_IP_GRENAT;
>>                                         }
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_MAC:
>>                                         ptype_lkup[k].outer_ip =
>> -                                               IDPF_RX_PTYPE_OUTER_L2;
>> +                                               LIBETH_RX_PT_OUTER_L2;
>>                                         if (pstate.tunnel_state ==
>>                                                         IDPF_TUN_IP_GRE) {
>>                                                 ptype_lkup[k].tunnel_type =
>> -                                               IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC;
>> +                                               LIBETH_RX_PT_TUNNEL_IP_GRENAT_MAC;
>>                                                 pstate.tunnel_state |=
>>                                                 IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC;
>>                                         }
>> @@ -2652,23 +2669,23 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_UDP:
>>                                         ptype_lkup[k].inner_prot =
>> -                                       IDPF_RX_PTYPE_INNER_PROT_UDP;
>> +                                       LIBETH_RX_PT_INNER_UDP;
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_TCP:
>>                                         ptype_lkup[k].inner_prot =
>> -                                       IDPF_RX_PTYPE_INNER_PROT_TCP;
>> +                                       LIBETH_RX_PT_INNER_TCP;
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_SCTP:
>>                                         ptype_lkup[k].inner_prot =
>> -                                       IDPF_RX_PTYPE_INNER_PROT_SCTP;
>> +                                       LIBETH_RX_PT_INNER_SCTP;
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_ICMP:
>>                                         ptype_lkup[k].inner_prot =
>> -                                       IDPF_RX_PTYPE_INNER_PROT_ICMP;
>> +                                       LIBETH_RX_PT_INNER_ICMP;
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_PAY:
>>                                         ptype_lkup[k].payload_layer =
>> -                                               IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2;
>> +                                               LIBETH_RX_PT_PAYLOAD_L2;
>>                                         break;
>>                                 case VIRTCHNL2_PROTO_HDR_ICMPV6:
>>                                 case VIRTCHNL2_PROTO_HDR_IPV6_EH:
>> @@ -2722,9 +2739,13 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>>                                         break;
>>                                 }
>>                         }
>> +
>> +                       idpf_finalize_ptype_lookup(&ptype_lkup[k]);
>>                 }
>>         }
>>
>> +       vport->rx_ptype_lkup = no_free_ptr(ptype_lkup);
>> +
> 
> Hi Olek,
> 
> I think you need to also patch up the early return from
> idpf_send_get_rx_ptype_msg, otherwise vport->rx_ptype_lkup is not set
> and I run into a later crash. Something like:

Fixed, thanks. Interesting how that's been working for me and my team
for several months already :D

Olek
