Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPKMCSTqqmm8YAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 15:52:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC0A2231D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 15:52:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08637607B6;
	Fri,  6 Mar 2026 14:52:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nfswwQWQ-gfT; Fri,  6 Mar 2026 14:52:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7515C60821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772808737;
	bh=74cv3X0/TmDQht3y7+vWpDhB1RH5etQUqvUAHkfHg14=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t/p4Xr046nSXFQGzSqaBIaOEKuLh1/QN+gEiAJ/tM9oUbfDPq3rnS29TfDMcEcc4G
	 pa8Yan4XJyQP2MOZiq1LQ+kGF9q64l7rNHq38eZRrdZ+scCbvuaQfrCufoBG+xOWI/
	 1K+8YCZzMD2NocFgiy/Tce22SwEsHCRwTM/qU0ktkoTufAdo878GNxF9pN6dL3Zgj+
	 zrLmdY7NDDH90jG5G23mCaqMlgrAKD+Sw6YZzHLw9r0BWI9LXZj4OA2r8YrVNtE6hu
	 2fPFJs05DS50YsHGM7n4cCOe6lR0ZapZ6RMCPxy4EX+gEJBVYqsTbuwcm20WEoEv7H
	 b9W4CPX60I0TA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7515C60821;
	Fri,  6 Mar 2026 14:52:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5A6C339
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 14:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B3D7607A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 14:52:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7N6V_knfOzeG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 14:52:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D81216078D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D81216078D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D81216078D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 14:52:13 +0000 (UTC)
X-CSE-ConnectionGUID: BWHWUnZGT1KdZwlX5lLMxg==
X-CSE-MsgGUID: aUtRhbJfSXa68VlosoO+Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11721"; a="84628895"
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000"; d="scan'208";a="84628895"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 06:52:11 -0800
X-CSE-ConnectionGUID: Pw7HsdlCR4yDnPmLIDWSKg==
X-CSE-MsgGUID: pjVPJkzVSTeuaoz7FAywzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000"; d="scan'208";a="217218491"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 06:52:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 6 Mar 2026 06:52:09 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 6 Mar 2026 06:52:09 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 6 Mar 2026 06:52:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=euEK/iiBK1ciW7JAb7Rs7aB5pG+ytujnmlxTGwh9nXGiKAbTKoCRGYWngIkwsThqMJffswl4s4d2FfqIBcScPkCxY9XU3RHj6gNCaSCU34PdSOPqPSLlXizgEMVCsxZqtgarVjZLNXBTO+3a/rfNrw2PCaMbUvaPqo7vnP7Jsuetlwy8Hq+dwU0Xho8UMK5pfhWNxbu0UQl9uc6bXXGLRQWKMfXvJYIRSv5xqNeI+hiEhrmOimNfnwqJkRWa3Wm+3Q15gXzw/D8dx7bEjAYRR7qvxJ/KeAM0Da/4eDZ/hOAgsQdxU78/3baPPxgtOVAtg+OOJkFrQK925SuS9Acw6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74cv3X0/TmDQht3y7+vWpDhB1RH5etQUqvUAHkfHg14=;
 b=cK9JYhaB2/vF0lRF9TZWRSHkEIEpUVF8vrX4FIZXIV0uHkT62N0Ck3mqNCKJogU60XxMkAFqp07+PnJ5VgGOLp+jDBZYiJ6dYKWD717cA8G9/XoLVD/wSY4P1S6LK/WGiJL6/JBwVjST8B1Tr86+Fvz4rn+ctvhMrMKzsL3A6/Jb7vUuYS5BuFBBMHI12Vt1ErudWzhQmeFLPziNud20pQOnN4VEa1r+/7prKi/CpK2xbcE2zw/y7m41kqHp178MTDaWy8F055NOcP8mrOUOg6VjZ/8UaXnMmzMwUVS8tF2KKY7Y/Wz/TMIbPn32EQ6SW0nZ0P0XUZVA10ZUum5hOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5136.namprd11.prod.outlook.com (2603:10b6:a03:2d1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.5; Fri, 6 Mar
 2026 14:52:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9700.003; Fri, 6 Mar 2026
 14:52:02 +0000
Message-ID: <7c8ed118-d3c3-4bdc-913a-14f5537c44d3@intel.com>
Date: Fri, 6 Mar 2026 15:50:19 +0100
User-Agent: Mozilla Thunderbird
To: Steve Rutherford <srutherford@google.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, David Decotigny <decot@google.com>, "Anjali
 Singhai" <anjali.singhai@intel.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Brian Vazquez <brianvv@google.com>, Li Li
 <boolli@google.com>, <emil.s.tantilov@intel.com>
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
 <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
 <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
 <8b43d234-867a-481f-90e6-e155132100a5@intel.com>
 <CABayD+crjO3S2cC3=9HqSH+kngE1=yKp_MnKZmAdW-YwJH1idA@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <CABayD+crjO3S2cC3=9HqSH+kngE1=yKp_MnKZmAdW-YwJH1idA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB7PR05CA0004.eurprd05.prod.outlook.com
 (2603:10a6:10:36::17) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5136:EE_
X-MS-Office365-Filtering-Correlation-Id: 40704ee1-3ed5-4c8f-121f-08de7b8fed1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: B1LG0egOhANDLcH75dLdnVj4gLEy8APnwkZ0Y5rRTazUGr8p4hmryuHgh9+CoZXF8YQxAe3flizov/bpy0uwQhDm4vPcndShKtNEUcgwvCHb+2EupR1Oj3KJuM9ZstR2hxZd8+h56WFlDVTrVFxxz4ExCs8bdRCZZV6NYU4X4O1tPt3HbLWSPinyyqq68gsud1IP1XKW4cFaVKNxdRyjbzNisC1UwGji9BuA+9ysUbBzHB1z6NA2SPG1hB6vHYMUH3uuX7J3D4erlADRZ2FLZuSElOCAA/nAKt0t+nLJBn7hsPLh0wsxHIM/wdhaZCMRH5ruSoTYa8876Pl62VC3a20A7TLtmSPMpVoXWpClvs30lOcQu2M6m7ecos30xv7fhIGQGpgObn0vX417spoTGqrcCF4vgwwd2T5Q3K4ZX5KXqHTAgmBd/z1tOyz9gYF1VzGs0yg1tw8mT7BX01Y6uDju2aLGl/2B1lbIcUVW/GGUURq2ACYhMOzPgr8LnqcQIzbRldD//Cajh0yd++yAGOSdK+z7J0PDllODvR5qleRnddx0kGHB17OFJDtpZRbuJ8tK+LBwleb/aUlQnzvPwpgUR15TXd8T7Jowk15i8btjLEmwXcPPNwYgqp3xhaOExI4rto2b5Uf6g7HtmO6uUc4A0GwTu/gUc+cDd1OnhEYwmSSONoKzsxR3mqmYMENgzvV1ErpwZ7dbIyLxWwXUPlKwusil/5+DkRx4r2PHUpc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEFyWHVUWXR4UFdwR2JIUjc5L1pBR3VJbEI0UitaVzdVL1NJUG9yRkoxR0Zi?=
 =?utf-8?B?OHh5YU1kbWt0UnE4b2FrZ3lVZEVjZzJKdC96VmpMYWFaUEl4cGdUUmt5dFZi?=
 =?utf-8?B?M1NSdEZpS3Jwc2lhRHdHMnh1OEl6aWJ1Mk9rZVM4RXpiRVJEWVRPZkJ4c25O?=
 =?utf-8?B?b0VOWDhnL2JVRjN4WWFPSklRc1V4dkh2KzFzSWtYbmZTZ0xpa0FOOVA3b1Zu?=
 =?utf-8?B?ZWZpZ3lmbWJjbjZmL1hEalpTOTNsSm5LOWNTdnRnek5RZU5GTkEvN1BXOUpj?=
 =?utf-8?B?eFZ5QWpjK29tWVpBM0V3ZTA4UnJhV09yVEc5TkR2MjBnZG1MTFpHU0FlVVk3?=
 =?utf-8?B?bG5UdXlaVy9kR1R0TVVlOEVHLzFObHVoSE13SzZqRnJ2V3FickpFc09JY25u?=
 =?utf-8?B?OTUvMHA2a2xwSk5UcVJ3Q2MxRDhqZlZINGtjVzJDU2VGZWpNS0lHK2JsRkY3?=
 =?utf-8?B?b0FZUGlQZnlUaWRNK2gyQTMyZ0draDBtbFo4cDRrWjNsNXF0dTlJcTFueVhE?=
 =?utf-8?B?Qi9WZWE1YVc2UktEeUJtUy9UQTdKTkZmcTN3U00vVlJweXByV1YwNnY0UzFa?=
 =?utf-8?B?RWFXVHJlZUFGa1k4TXZmbnUyUlcwa0JXT3lONmJWUjVTaDVqbEFtWlJ1UktQ?=
 =?utf-8?B?NmRXWG9vM0NVWEhXWG5WN2hGRDhSZGYwb3Q1QURhNnhrYW1mYXhWQjlWMmo2?=
 =?utf-8?B?UkdJKzlGazdCazhCU2RnR3cyd2IvTTlMNUpFVUVHNjVNN0hTTmtPT0lQNDh6?=
 =?utf-8?B?TVRqS1VmK25BNlNKakkvMjhiZzRJaWtJNHZ0aXlRak9zcm5tbzRjQmhNbmxJ?=
 =?utf-8?B?QldMWkJ2UUJNbjFldzdYQTNtRUlMVmdWMnh0c2MvNFFWY2lDcEhFcUNNYUlI?=
 =?utf-8?B?NzVreGYzRlZkenhsZWxyVElBdnN2R1JqZGJDbkhrWjVjSm8zRlcwTjdJc0lD?=
 =?utf-8?B?cThlZkUzV3F2MTRCakJFQ1QyMGdFajFrMktnYWJ0MU5QZk9tY05waUdPM0dj?=
 =?utf-8?B?VDhHTVZTMzUxcG9QRXI1Z2ErbitrUC9mK0cwcHVQaTlQMHZMSStpWkZLVFJN?=
 =?utf-8?B?QWxOelU5SGFnUk5GTGRham5qQzBhekRUS051S1l1WTNtMGZGWDdobktuZVNG?=
 =?utf-8?B?VXVJMWNyMFpmTVpiNTRHZWo2MVRETjQ2WEF0Ujd3VjlqUkdBTDRhU202MjRw?=
 =?utf-8?B?WEtCcFBESVFnMTdCbkFKdVhXZ1JGc1dtSExCbHRjY2FEM2J0eTRZajNJc2JK?=
 =?utf-8?B?bDlndG0wdVZ5b0FaVnpvTlVRbVQ1SlQwWlllbStMMEZFalNLdFRRVlFxUlpz?=
 =?utf-8?B?KzdGcnU4Tjd3VGgvZVgzRE5kYnlqMjRlblBxcDUvQndGRkJaNHlBMUpoZUZM?=
 =?utf-8?B?ZmhWRXlzTXZ0ZndSMjErdnoyVGJ6b0JuRnFGNWJBWks5Nlo2NjA5am1DdkJU?=
 =?utf-8?B?QzFKaERZMUpiZW8xUDhMTlpIMGFTTE5KZEtvYXdjOG1UK1lnV0E5TjByeFZz?=
 =?utf-8?B?SXBSbnEzeElCVVNwYkxKOTVhNG9lV1RNaVpBMEszVlE2dGk1VFd6a2dvVDJq?=
 =?utf-8?B?M3oybFg3YU1nS2JqcVdRVzhTNlV3L0NrTWpHRTh2SUdmZWNOMUJQZ2lPQ2Zi?=
 =?utf-8?B?cG5LZFZNOTNVZUkrczBJTXI0V2tpaUlzV0xhMU1LcWpKUlJFdGt4L1IvaURV?=
 =?utf-8?B?UndSYXdmalplWGN3QXhzT2RkOTBFSzBMWlZlcjVCWmhZUXdhUTZZUzZhTWZG?=
 =?utf-8?B?VFpBL2NuSDNCVG9wS3JYejBVTkRtZlhjd21zNm5DQTB0TDM4VUxCeDcvWFNp?=
 =?utf-8?B?NTBDaVpoVlJBSzM2K0U1QnI5aEtLa3RodStIS0lvUnNVa2dOekt3S1BsYVMy?=
 =?utf-8?B?cGZmVzNkVzdFb2RHNG9YbFpIU2tpcE9OL2tmM1RaNVhaQ0hDUHE5SmNwU0N2?=
 =?utf-8?B?TFZBOXVrMTd5TnlDY2pHeVdYTnE5NFk5SnBhWlZ2RXAxdDdSOUEzVnFyaUxu?=
 =?utf-8?B?KzNkUGhjb2RnOTEvMFBhSnphd1lWeHhraVlNTGk0LzFOSENubUtwdUdRMDVo?=
 =?utf-8?B?WDVxK2dyNHJZNGMvVS9nMnBGWWU0TE41MDB5UzJObHQxWm5VSC9vVk82eHFW?=
 =?utf-8?B?MGJjMDBLUGI5SS9aL1J3azlvT0V4U1ZFMjFkUjNNVW91b1oyUkVlQ3UxdGVT?=
 =?utf-8?B?aVZhWTJEbFNNUnY5YkZFaStyY0syeS9xOFd0VHN3Y3RvRGdiWjhQWXF5TEJr?=
 =?utf-8?B?NzU5cFdBME5FcnkwdXRDR1ljeEVXdVE5RVB4elhnalgzTlJJODV2OWdiOS9G?=
 =?utf-8?B?N2pIaVNGRTROSGVMOVIrSmJsbDJodVU3NFNmN3dPVG0xWk9hWTJrNmRRMUl6?=
 =?utf-8?Q?lkBIpBZM8w3w9SAI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40704ee1-3ed5-4c8f-121f-08de7b8fed1a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 14:52:02.4500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p7lzelpKNuNhQTkog9bPFk6KRiP16cfd+wJoN4GmbIaT2eW+/YGXr3Lxp+f9Stz4J82+c8UIzSnmzrZ18wf9YydlXKt0YICnbW8XsPZPQvY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5136
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772808734; x=1804344734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CD4dY9dRCDYB9CFE+upjF4AA008rulJ1dobgtGPbAmI=;
 b=O0AvDshxUwH1bbbzhlMccJNM97242+fhVBurnto6G6HVNcQVqQFS2P2P
 LIKKmjmOp6uWBITuakg9WI8RD7j20ou/Dtwu+nrRJNxHP+cxYUcKe0iIj
 mnpSIHwu7e1fzx8+PAFNwQgAFuJ7vvxA6ruY4A67hw3hKreS2FVgp4VKh
 tmzCSKC9nLAYZzGfvtzWNonMJrXJOo1h4hjam23h7WvYM42lL0kp4W5rx
 iZqGVnjfb1ptN4PJgPVrDpryztCwMGmwXaMReH/fdN3swttnID6+s8Q7o
 2x1aVrLadt6rR+yeZbFfc07PviQUZE6dfFfAnOAwSd0csglSbXtn9kdSv
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O0AvDshx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
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
X-Rspamd-Queue-Id: 6AC0A2231D4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srutherford@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Action: no action

From: Steve Rutherford <srutherford@google.com>
Date: Wed, 4 Mar 2026 14:01:46 -0800

> I believe syncing twice isn't inherently wrong - it's more that you
> can't synthesize the header via the workaround and then sync, since it
> will pull the uninitialized header buffer from the SWIOTLB. Outside of
> SWIOTLB, dma syncs are more or less no-ops, while (with SWIOTLB) they
> are copies from/to the bounce buffers.

Ah I see.

What if I add sync_for_device after copying the header? This should
synchronize the bounce buffer with the copied data I guess? A bit of
overhead, but this W/A triggers mostly on stuff like ARP/ICMP, "hotpath"
L4 protos are fortunately not affected.

> 
> On Wed, Mar 4, 2026 at 7:13 AM Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
>>
>> From: Steve Rutherford <srutherford@google.com>
>> Date: Tue, 3 Mar 2026 11:44:19 -0800
>>
>>> On Tue, Mar 3, 2026 at 7:34 AM Alexander Lobakin
>>> <aleksander.lobakin@intel.com> wrote:
>>>>
>>>> From: Steve Rutherford <srutherford@google.com>
>>>> Date: Fri, 27 Feb 2026 20:34:57 +0000
>>>>
>>>>> When SWIOTLB and header split are enabled, IDPF sees empty packets in the
>>>>> rx queue.
>>>>>
>>>>> This is caused by libeth_rx_sync_for_cpu clobbering the synthesized header
>>>>> in the workaround (i.e. overflow) path. After the header is synthesized by
>>>>> idpf_rx_hsplit_wa, the sync call pulls from the empty SWIOTLB buffer,
>>>>> effectively zeroing out the buffer.
>>>>>
>>>>> This skips the extra sync in the workaround path in most cases. The one
>>>>> exception is that it calls sync to trigger a recycle the header buffer when
>>>>> it fails to find a header in the payload.
>>>>>
>>>>> Fixes: 90912f9f4f2d1 ("idpf: convert header split mode to libeth + napi_build_skb()")
>>>>> Signed-off-by: Steve Rutherford <srutherford@google.com>
Thanks,
Olek
