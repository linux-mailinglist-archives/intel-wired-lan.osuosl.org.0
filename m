Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PY3ObElnmn5TgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:26:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B5C18D27B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D58C060BB4;
	Tue, 24 Feb 2026 22:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PFsJC76FR-yf; Tue, 24 Feb 2026 22:26:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 460D460DF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771972013;
	bh=3jfNK2lkOtcNGwb5YzY715uZJvpyN5jv5YKnikcpqBk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cdb3vVG/I8TlxNS5dtGtwjMFpWpNPZCZDXro1iZHSrR+ag2xpo7uDOvBusZlzrayk
	 i1xiUDHFGdCsomykN8VnNFWNz+vy9xpYhZEp/MCaBO0Mk7tQnAfDlHiqqvzDfMhWaT
	 /nDu0UEN2XeWd++ZcdD1FTCco0DMAymgE7KnJUQt24zNHwKq6anF/8EyX4rtvgGfAN
	 rASa+hULtcCeWky+8pQVqJ4fPXqTLi3hJL/nZ6ejIRZhX4iuq4XDz3T0YlLS1j+kR8
	 uSWsJBz6y13cyHi3lKQqih5NiKl0Y+ar8RjQ3PXGxqsBGonlR3r48Z5uDdJTpaYTNQ
	 8lpp9yJf9T08Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 460D460DF0;
	Tue, 24 Feb 2026 22:26:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E91921B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6BB360BB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrPQQTC3p7LR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 22:26:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20A5D60AAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20A5D60AAC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20A5D60AAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:26:50 +0000 (UTC)
X-CSE-ConnectionGUID: WSLP/RS7SQezNYPMlPOzwA==
X-CSE-MsgGUID: DKtjuUMNRlap8ZIeRYkMBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76835891"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="76835891"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:26:50 -0800
X-CSE-ConnectionGUID: dQdbWUgmS1O07o0pcf0wJw==
X-CSE-MsgGUID: sQLPKhKqSo6fHPlSjQwvqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="243919818"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:26:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:26:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 14:26:49 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:26:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wqDJzHRnQ2c7Syp74RGmChEsmg+albNkjEGXo7qa3/WcBLj2kmkm9bIKO/4qFt11TtRBA8iS2KuWaV0397bFt2UCifqYBwg259aCg/vVKyE5193z7bpC0pjDf0kP5Qm8S09t77Dc9CFE7VPmIGXlAGPtF4pMxCK5Q2d4xhNrLE2SrLEGBgv8JoCiN18Bl/vdiLw5VZosJOg5NLtTxlUbdk8p1pv5Sfsl7nciqqaCvUTTKXxPXJQ/nEi9/7/sAkL+3iyg4fivCvLLPKOuWBIaFIp441ZnDoXYLcAyON3T/FeLnQ1tJzCkydAScRvcvJVBb0wLpB1rYcySV8nmznEywQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jfNK2lkOtcNGwb5YzY715uZJvpyN5jv5YKnikcpqBk=;
 b=Ci5Vic/fkYXVJZi1Kc+WJmMX/o9UiWqgnnM7UwBgTtLIkYjCmdh1LSDg1O13o/PGkVgPcENW2ej2BmRg5PyWvyufBrIJsLkHozdeKLycrRud2zApxbbuxNoZOzvXFbOwMe5gXM0jsl90l01ED+Fmfo0pZgC0IHtODvvu88i0gvWqStFneH5xBCjA8gLQoHhCBQbZ228g29shO7QNj8uJhVRgQEcDtQ4EaR+7r/8FjrbNY5kO4cgvWVMBAX154uWDCbHOMK9DyqSW5D16gF/ovlo6zAIwj8wudaTrh3pRrLj2ioiCdPo9z9QedtlKAzHUsJgPWrJvFL0Af2eWEbjY2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16)
 by SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 22:26:46 +0000
Received: from PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3]) by PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 22:26:46 +0000
Message-ID: <d3709fce-b94f-49fd-ac12-a75d20180d86@intel.com>
Date: Tue, 24 Feb 2026 14:26:42 -0800
User-Agent: Mozilla Thunderbird
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 <linux-pci@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq
 Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Richard Cochran
 <richardcochran@gmail.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
 <20260224111044.3487873-5-mika.westerberg@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260224111044.3487873-5-mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0040.namprd04.prod.outlook.com
 (2603:10b6:303:6a::15) To PH0PR11MB7588.namprd11.prod.outlook.com
 (2603:10b6:510:28b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7588:EE_|SJ1PR11MB6276:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a357d89-4e04-4cdd-3892-08de73f3cb9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzlVL2ZIKzBjSmgrUVZZd25iQjVYSDc3K1VUNHg0K1FCcTlaSHhNcUNEZktM?=
 =?utf-8?B?cklaN1djKzZKMm9ZVjZEaWFOYlhhVlJHRFQxT1A2Rk0yRVljTk9iMjV2aDc2?=
 =?utf-8?B?STJPejhCMVQyOTVCQzgyZWlaWWN5VHlOaEFWMXZjUzVOcDh6S3pkdzk5bVBT?=
 =?utf-8?B?cTR4NVBveTVkcTZ6Q29ZWnlQaURBVWQzVjJrUHltcGpSTHRJSVg4VVpHeW4z?=
 =?utf-8?B?QXVjRXZtdzlJZHhQRERPWUN5aHdEZUgzdUY2bXQvSWNWcnlQWHdZSGtEMjNH?=
 =?utf-8?B?dmdCQkFsNmRKc2tKTFNMM3p5ODBkOStvd1hZbU9vUkJES1U1bUhpZisyWFF1?=
 =?utf-8?B?aDBpTXdzS1VYS3FTVEh1WGIrU3VnSCtEQjU0MXFTV1M1L3FMd3k0KzZQMzBs?=
 =?utf-8?B?OXhvZnlqYjVnVTU5QkhVaGFiZEdwNmR3ME9GMDBTRzNVQXRObXJ2NU4wNE1y?=
 =?utf-8?B?WEN6RllsdlVHSW9HSlhPYmpiUnF2VktIcUsybk56TGlUUFEya3ZsTVdyYVJm?=
 =?utf-8?B?QzVTY2NMRmlrWnBYNm1MMERoTkRta3JrcW14U1FsUlB3Y2ordEtpZzhkS3B6?=
 =?utf-8?B?RC9LNDZIdm9kUUczb0wyZXRSTFZCVlZodk55Z3kxRVZOVTdLeDlNbTl0UG5P?=
 =?utf-8?B?MHBEcENDaVZDVUh0QkhrTmg1eUNqNUJBVVl2QTh4NFo0Q3RtS3h5b09LWnJs?=
 =?utf-8?B?aTBzR2VaN1VsUFNYdjlpei90cHJkUnhBWmRlL0NGODIwVDlIRUhrSXpxQ0xa?=
 =?utf-8?B?dldlT2w4eUxRL0xnbGVrZ2IxRkNJT0VYZTU3QitSTkdZb1FRVU1xM1ZMbmVQ?=
 =?utf-8?B?aTAwRkkyRUxQTno5WUlMN3gvSTNkZjcyeFM0MnR0TUNrTWlRbmN0TDhjaXcy?=
 =?utf-8?B?MExrTFc2eVREaHRMZ0VJQmNPU0ZlSms3OVhyYWRwNlRlYjFDNHN1cGF3cUp6?=
 =?utf-8?B?d1JJcFdkSUZBcGVwK2t1NFZram10dXBVOGxpWk9WL20vS1ZlZU5oclRWZ2Fz?=
 =?utf-8?B?NUsraW9CVS96dHdMM2RSV2lvdk0rN2pIMkozaDVlVmFNRnQxamdXMDdnMzRs?=
 =?utf-8?B?bzB2RWdmTmtLazlnNGpRc2lUeEV0Mm80dEVUQ0EzSVBkQmswTHNKbVhYcFBM?=
 =?utf-8?B?akRMVWRvZVlJRHcrcjBSTHRDblljRGxEd3RnZDBCK1NGaktZM2V0TFVoSklw?=
 =?utf-8?B?R3N5dENLYm5aZkQxbkRJaDIydVkxUzlCN0FGT3dZQUtOY0ZnRTh2aEUrQ1ZL?=
 =?utf-8?B?WldMd2lvMUY0K0VyK1RYd2Fqb1lLMVp5ellMeGlHcmI1Zk01U0NvMnhXRERo?=
 =?utf-8?B?dmpmYVV2cms5QzJlVzMzaTFqUnJ1VTR2SHFscW9EK0J0ODZydGhMeldYQlNq?=
 =?utf-8?B?NUE2ME1VMzN4aFFKQWtYOHV6R0lDMldyOWpPcFYrazNlaUNFZEVDdGhGQVNS?=
 =?utf-8?B?bitEak5lbDl6dmdmbFVYS3QwUTdQWENmNU1LcnhPZ1k5U2luV2kzTzdHcldh?=
 =?utf-8?B?SStDMWtBbGtYak1Tdkt0aHpBbUlVMDNHVk1XN0ZFYU8zTjRhNm9ycDl5MHcy?=
 =?utf-8?B?UnFhdUlzdzdlMmJrdE81M3hBTlllZ2pTa2RpNnI3SEFFK2NHUnVtbSt5LzFw?=
 =?utf-8?B?bDQ5RVJ0OFdRNVdmUkdFTHRoZTBLcTRpanloMHFRM3E0TitTWGxRWEVMQVNl?=
 =?utf-8?B?eVF5emdHQ3NEVzhBaWs2L2toNVl2SER5TFFUK0xNS1F4c2hNYjg5d0FmbU5J?=
 =?utf-8?B?cE9KOTJyR01KVjR3ZmV1c0k2d3lzQy9QeVpyTXRCZEl5M1lNR0F5eGZ3c0ZB?=
 =?utf-8?B?VzV6dFR3VmoyMkMzZUVpdlI4ZHpMcGxmZ1Bzc3F4TTFYMkU5VitBWFk2cm5W?=
 =?utf-8?B?WlNCWU13bXNJbjdLRXJXZFZuNkMyWVVlYlA3T0N3UUVzSHFSUEQ0UUQvTVNz?=
 =?utf-8?B?aWk1aTR4VWUvSktXdmJUdUs2aXk4dVRCTlNjQUN1MWdhLys4UUplc0tWNzcv?=
 =?utf-8?B?K29zWlU4clVkL1dmMVRuT05vdkMvRWx0WE85S0lxbUhUZHNZOXN1M1ByWjJi?=
 =?utf-8?B?a3QwSjY4QklMb2pveE92ZHd2S2xTMzZiRmRZRWtIVk5oSm03SmZyd0ZmcUNO?=
 =?utf-8?Q?tlQs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bC9iSW8vOTVwV1l0T2VEaVFRUkVMd0NHNExONW9PWjNpMys3Wk9paVNkSkR2?=
 =?utf-8?B?UlFxeDZVRVU0R2FjYm5JbjFNaTJkL2dSNFRsa3A5Q0dtdUIwS2dPM3I4ZEsx?=
 =?utf-8?B?Y0pLeE1yTlBPM0ErZGhOMmJPYVc0TkRpd29Sc3IwdnlFNjAwazFRS2FDZGc1?=
 =?utf-8?B?aDlTeS90YlRkL2o5blB1SmxtNzRSMTZRUFFLdkFqNFpZMmRJOEtRdWtKOWdT?=
 =?utf-8?B?SzNPYzlPdzl2anN5REpoTU9YVEdjZTdDMXBSM3dhNWxlREg3MjZNai9yS0hp?=
 =?utf-8?B?WXd0VzF4U2FyWlgrcW8zWU1DY25OKzhmSVRBSllPNUx5WDhudlM0U3A0dkp2?=
 =?utf-8?B?UjNWVWFHcDJMUVNFTHpiMXZIUG00OXZtUUpzWHRoTTBudDJ4VVQrV0ZqQXFY?=
 =?utf-8?B?SHMzeXBzcU9OdU8yREU3ME5Kb2p2YUtxTGdMbGJYOTZaQzVMNDN1SERqRndi?=
 =?utf-8?B?Wmk2enVYZUxoblBVNUFlNnpucmxPeGQwK1U0ZmUzellzbEhHTFpMYzNyZVRw?=
 =?utf-8?B?d1hpaDU1anFVRmkzK04rNlpOVnZZVzYzRldzQ0p4RGJ1UUFVYVk0VTlXeGp4?=
 =?utf-8?B?WU9MOEhlRi9rS0V1MnZ6YjlZMVRYSUpvZjB6MVd6c2RpWkNnaGI1dWV6bkE2?=
 =?utf-8?B?QTczczNycndyUFJHcUQzeTdXV2ZYTnFTVFh2bzJuc01GYzhYaUQwU1FIcGRV?=
 =?utf-8?B?cXE1bWZaTVFra0JlRUJuWUZ2cC9lQ1RpS1c0a0pNa1doY050cUFuUno4ODZk?=
 =?utf-8?B?emI1S2hNcFRKcU1rUEtRRU5sVUxGY0RhWmFVbWhzNjdXUDd1SThKZWZTOGZh?=
 =?utf-8?B?Y1NEQ3J4OUdveXcyL0ZoY1dTOEF4VXpkR0xjWkFXRnRkWUJUSi9oWCtJSjU3?=
 =?utf-8?B?Z24vNy9STGNrcUthS2tCSnNMSy9tZ2dVSmwyUEdibm1SMy9DVWNpYTNBYjYy?=
 =?utf-8?B?d2p5aGhCTGw0TWlhREw2ZkczNkdldlI1UVNmT0pRMXVsRlVpV1Q2eTZudEJU?=
 =?utf-8?B?NS9WREh0RkVHQ2FIRkNKSExPTmtySE41Zk9nemNzWS96eHBHRXlybWNPQkEy?=
 =?utf-8?B?Y2hYamNqY1RwTUJaQjdNcklMaEQ0TUNDOHNoS3ZkaEYweTl6Q0RDcENGUm81?=
 =?utf-8?B?cXJZMVpJOE9mSlJhcG9INE9ISThUZUJaKytXanpIVWE1MS9uMUF0SHFZTmRm?=
 =?utf-8?B?aUV2WUVaSGxpcCtvR2QvQitENmZja2VVc0RUMSsxSDZEV2pTUC9NNEMyZGNx?=
 =?utf-8?B?VlBIczlBNCtKNVFtL3pSdXRYWENTMGZvS3BRcHVRL3NReTRibGVyU2hYMFNx?=
 =?utf-8?B?SjJpZk85cjdLdXF0c2IrWUJkdGtIRjhPMVNLSnZkenpUcVM2WHBrclZzTFJS?=
 =?utf-8?B?TWRLZVRSYi95eDVFODE2dTE1MmY4a014MW9BbnhLckVTK3hnK3E0L3JWWFNr?=
 =?utf-8?B?bExqYm94RWoxSzFnOXdYVmc5T3MrUytudVd3S2RTZmUrN0lKdzNkZTU5QW9S?=
 =?utf-8?B?MGNtSnIxL0EzbWdxQ3VOeFg2QkMydkNWRi9DU2M2SVdvcGZpVmJRSjFVZjl1?=
 =?utf-8?B?YlUxZWRua1F3S3FmYzM1RlJOa1o5eUxCcm1IOXovRWR4SlBQQVFLUzhrUWdL?=
 =?utf-8?B?SzlFbmdsVktkY2ZFcDdqejRPSDBUdFZtZXBkWU9tdldPc0hCWW5RLzNEUU5J?=
 =?utf-8?B?QmJubzlwUzNseGZxOEVBOE5UMDl6c0hVOGFlbWkxbkdxM0xjS0FzKzRtamNS?=
 =?utf-8?B?M2Y0SmRwVXpwYnljd01kNFFTN1hTSmo4SEpTcUp6UjdiTE5hOTBqMHRyK1dk?=
 =?utf-8?B?cGZvZWhSREIyaFA1Ui9INXJHTFNuakI4RWVTM0RabVJWK3R2OEFCT0RRcGJi?=
 =?utf-8?B?eDdqeThJa3NoYnpjWFNCU2xuL2dSOUovUGt0VXhNQ1AwNVZ0cjRzb3hxY1R1?=
 =?utf-8?B?bzQ5d0pTcXFRQVJueXdWVzVVTklYcHNUYU9Uem5LOVhLYVdaMU1ndVlaeEJC?=
 =?utf-8?B?RVFoaTVKSWQ0Vnl5ZlUzU1AyL3lRbGpHb1g1emxCaDRtZjNuN2NjZkR1amx2?=
 =?utf-8?B?K1Rrc3BsQmlabjBDMlJTWFRrTllMOEtHNEoydGpBcnpvUkdYR1MrdVFjN3VP?=
 =?utf-8?B?T3ZsY2NCUFBQci90ZGl1ZUNHZUszK2VlUk9IRkNNSC9TejIrR01adHBRckRR?=
 =?utf-8?B?VXdkeEdWNzE2SEFKL3IxeHBiTzM2RUFuSWJ3WG9QdVMzcEtnaENlemEvZDJ0?=
 =?utf-8?B?a21QZ3RDNm9OakhFWFFrSHNSM0E0Zmd3eTROTzJwdEV2eXl2dDlONUN3YW5r?=
 =?utf-8?B?S2Q4eEJxR09xOTAzUEtmTVlkQ3YwUTdLZm5NK1JxcUw4UkQ5bG9qZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a357d89-4e04-4cdd-3892-08de73f3cb9c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7588.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 22:26:46.4861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BU9ZT9dcmpNHggT64N/wQuRP1gpDqjEAitDGw64o5VFo9ksfy2gKxozyStN80CZfLrIkGjYieFYleriUeRldL8XP9lAGf91YDRWSv5E28lY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771972011; x=1803508011;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eD6tLETiN4/GW0R8OJpJzmASA8oO3RWuTYhGeMOmUCE=;
 b=CeMhYMJF9heSMfTGWTUIvPEkksdMpF5jDH5YRasXi7YjD1wdQeVSjm1B
 ry3CQMcib0EFC9C/AkMM/BazX13XCOYSDksxGViGHI1LXrbJ0mbSPrW7j
 4O8OPsw3+4uuAXjEGRJra0RDIoB7v2xFTbZb57BfPrmOIRZt15QUAWeiM
 s9xC0AUxhj9Sj4k3dqrCzvhwF7vMYp2MwcswHgg0WpjaMtS+GWzvJ2Zbu
 yZO+ynePSNEm5cVXnc8Zxqr8f0TzePdk0k6kR2VCUVi9eXo3US4Fimcq/
 +wAVMrfcpzkT+0Aktr7cV6a5oLe5CE5CkVDsNx5V+unIc/YmdRVfZ+SSV
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CeMhYMJF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 4/5] PCI/PTM: Drop granularity
 parameter from pci_enable_ptm()
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
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	NEURAL_HAM(-0.00)[-0.948];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 96B5C18D27B
X-Rspamd-Action: no action



On 2/24/2026 3:10 AM, Mika Westerberg wrote:
> diff --git a/drivers/pci/pcie/ptm.c b/drivers/pci/pcie/ptm.c
> index 91a598ed534c..2c848ae4f15f 100644
> --- a/drivers/pci/pcie/ptm.c
> +++ b/drivers/pci/pcie/ptm.c
> @@ -88,7 +88,7 @@ void pci_ptm_init(struct pci_dev *dev)
>   
>   	if (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT ||
>   	    pci_pcie_type(dev) == PCI_EXP_TYPE_UPSTREAM)
> -		pci_enable_ptm(dev, NULL);
> +		pci_enable_ptm(dev);
>   }
>   
>   void pci_save_ptm_state(struct pci_dev *dev)
> @@ -182,15 +182,13 @@ static int __pci_enable_ptm(struct pci_dev *dev)
>   /**
>    * pci_enable_ptm() - Enable Precision Time Measurement
>    * @dev: PCI device
> - * @granularity: pointer to return granularity
>    *
> - * Enable Precision Time Measurement for @dev.  If successful and
> - * @granularity is non-NULL, return the Effective Granularity.
> + * Enable Precision Time Measurement for @dev.
>    *
>    * Return: zero if successful, or -EINVAL if @dev lacks a PTM Capability or
>    * is not a PTM Root and lacks an upstream path of PTM-enabled devices.
>    */
> -int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
> +int pci_enable_ptm(struct pci_dev *dev)
>   {
>   	int rc;
>   	char clock_desc[8];
> @@ -201,9 +199,6 @@ int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
>   
>   	dev->ptm_enabled = 1;
>   
> -	if (granularity)
> -		*granularity = dev->ptm_granularity;
> -


Presumably, if a driver ever actually needs this ptm_granularity in the 
future, they can just read it from the device, or we can add a helper to 
access if needed. Makes sense.

Thanks,
Jake
