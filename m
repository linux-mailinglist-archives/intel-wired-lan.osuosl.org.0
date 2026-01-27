Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFoTHxE9eWkmwAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 23:32:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFBA9B178
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 23:32:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11BBA8174D;
	Tue, 27 Jan 2026 22:32:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgY1XTgwTO29; Tue, 27 Jan 2026 22:32:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 533F382278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769553165;
	bh=JmrxjFfBYH5HTXVe2b39H9mRQiA2tEOcxSJOKJWrh5I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fq0hGUfZqUpY3tj8QaF7+NzgrDAH4cEtUxr/M28t2mQfMMa288Xco8LKDm33FxJ25
	 FFSXND5AHJ1WWrG2mSEWB82eIwUaiHATMYt3dVM8vjmOh4sQ4fBvfeoIV9MkR2Glcc
	 o/jsYHB6J5Fgyb0ld81XeyKFuojJAi7RgplQo4KlQvtPDJrCiuxNN3rAThh92dxI5j
	 anLAfyz/wgmaYstky/lnqeu5oGqdxr0YeBf7tkkxWabkO8vmwS8wKjUiVkXfaIbvAl
	 LAxH3wc5w4GKexQbOMUPekzQbHvhVeGElawjvbAPIsu8AVYJ5QIiLx894OlB0+xK5H
	 0jVUvp8xxMaDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 533F382278;
	Tue, 27 Jan 2026 22:32:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 823D4118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 22:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65DE940251
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 22:32:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fC5rNEsr27Wd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 22:32:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0AF1740245
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AF1740245
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AF1740245
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 22:32:41 +0000 (UTC)
X-CSE-ConnectionGUID: eWo0FP4ZTBWoADcZYtvEAQ==
X-CSE-MsgGUID: NE130HeQRBGMFDXmx1e1vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="93418944"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="93418944"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 14:32:42 -0800
X-CSE-ConnectionGUID: u0+JKzLHQXi6TOjByl3CSg==
X-CSE-MsgGUID: FuMKxl3XSJe7dC55yEhG6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="245715187"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 14:32:41 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 14:32:40 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 14:32:40 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 14:32:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eJ5Fs8rxdGcZNVSAqQpM8UhMqiBSRMT31Q+rtnuZTkqvycTsjFZcQ6DBkfX/MPS68JZ4W7ihmyb6Jimof2ytmyJFDmbVs9bfZsaRyfx0jXcReDSjm26wnQDvvNod8d4ovtgyCA25IvdEGbtOUdFvzAzlUWbP+cjlIXqRgB8jE72DntyRzbfG+iEwigPhXm3OdpKh0PxaG+5XF5cov3W8bvwDFB1bpf+2ySr3N5MwD2RVWrrf/nVXqyScZiScJY3B+xU+/1asz8ZF4yXsavfFtDe/6yQpE46YKmwjGcvAF6BzghVBuGPoX1zXwicIKE/3DI6lXhPLkTbtUt6UexL4UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JmrxjFfBYH5HTXVe2b39H9mRQiA2tEOcxSJOKJWrh5I=;
 b=kddrNSPUqRuP0qnzD8hdoNPx1taGWfLEGM0qclIECgcTA3V0ayTmpW6ZChG6iZIsp5HpqoS9waLAy1Fg6k0+/KFlv9iHl+EnBXarsr+HF9SmQf/dvkvmUNwHoIWgwZx0AC7w1sqb48OH5oQIwBLDWTh6EilxKqH1h/Q8yk/VCw6ZSIu70wP/+/bhtCVauhSyo0Yh9gsw3TO9HFADAQjulBpFRk+o+0DoOmR40vJctstvuIra9TgOpG4VgSGUCRmlLUPnq2MeJemMPBqX3lnkYBUhUzMWup+s5OPg0tdl4eKUm6vlRT0DFIFDf55ZkzvkeSGRh1+Z72T2TAsAvjZeNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by SJ5PPF8B3F23403.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::842) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Tue, 27 Jan
 2026 22:32:37 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f%4]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 22:32:36 +0000
Message-ID: <4a771aef-4227-4f83-9852-80105190722c@intel.com>
Date: Tue, 27 Jan 2026 14:32:34 -0800
User-Agent: Mozilla Thunderbird
To: Aaron Ma <aaron.ma@canonical.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Ertman, David M"
 <david.m.ertman@intel.com>
References: <20251225062122.736308-1-aaron.ma@canonical.com>
 <20251225062122.736308-2-aaron.ma@canonical.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251225062122.736308-2-aaron.ma@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0064.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::41) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|SJ5PPF8B3F23403:EE_
X-MS-Office365-Filtering-Correlation-Id: ceef2035-6f4f-44e9-f6ed-08de5df3f8be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TkVxMjExL1NYSGtZcVBjVFp4MTB5T1E4Zy9mRGlxLytxNWJ1OUc4dUs0bTNu?=
 =?utf-8?B?TFdFbnRpWm5mMGFrSkdaWm15OVdENkUxOGRHRVRzaXl5bVlVR3REMjZGNUVS?=
 =?utf-8?B?TVdUbWo2YmdmVnpxTS84NlFYaW0yYXJQNVM5Mm9NcFZ2ZnpwOW56LzdKR1hJ?=
 =?utf-8?B?eksvazFEbmxpaWtHQUtxSnVmMzRGVmE5dEpJY3ZuWTg5S3pDM2lvZEFzK09a?=
 =?utf-8?B?SVNvMzlZU3VFWkJDMVJ6R0w2Yy9tZk5ISHovblVIdkNWaEN2SzJYb0QzQ1pv?=
 =?utf-8?B?bmFGd0J3V1V4T3FJQyt0Y2hVc21pSTlXdVd2Ry85cVNRdXNES2lyZlZYYnc2?=
 =?utf-8?B?MU5MeWNJWVFMUGMxVVIvYTh6R0pSYXB5MEtZbUhDVk03M0ZQZXdlOE11bk01?=
 =?utf-8?B?VFU3bU4vUHN4cGVqaGpMUkJ2eENVSnpBY2JSTjhYUExVQTZNUVBrZm40R05i?=
 =?utf-8?B?clFlbTE5TVZEQStqOXFYQ3VYVEFPRmxSODMxMzB1MmxzSTFnbE9GYUMyYzBH?=
 =?utf-8?B?NCsyZ1dMSUVDREFrc3VvbDI0ZHIwOUh4ZUNhS0xUVUpmTmxGbWpod0pEdytW?=
 =?utf-8?B?S1NUMytCREUvOS9BUU9semNKVzgxRHRrZFBWSWRUZ0hyb0xETk5nSndhRDFC?=
 =?utf-8?B?YUhvc3ZpeHJ6NWYzR0hJUDlKTzBTWURlcTlGekJCL2ZXdjRrVVVXYjV1M0lh?=
 =?utf-8?B?dVBUT1BSV1pVbTFic0VvbFFaN0ZCdDhjeTdTK2NVMjdVYm1lNGx6dWpWbmJi?=
 =?utf-8?B?QnVxZ2VGWGFWdkdEbi9pdmVHaEpDZjc0MkpET0x0VFFpMGd6Z3lNbjZYRG9l?=
 =?utf-8?B?QXFwTlRVcjlQejhIV3phWjZHNnpGaUwyTS9tV2I4cGlSMG13UC9taGh2VnFU?=
 =?utf-8?B?cVczTXRORUFJeVFVZFZ6SWJHbkRNc2d5UzNlYllLbElkeGFubW1kbm9MVUMy?=
 =?utf-8?B?Z2dnNTY1WFZ4ekh2QlhZT0lHSUNhVFEzOVZwb3MzcUl4OEl5OHRMRmdlN1hu?=
 =?utf-8?B?RFpCNDNsWm5CMHh3OGJac0tSV0dydEdmVi94bHhsYzVJekwrbWQvWkRXN3Q2?=
 =?utf-8?B?cmdoNGh3R3pmWFF0dlNmK1dXYUNKMDlweVNSODUyaXJ3SExFQkZuK0JwSEFJ?=
 =?utf-8?B?Kzd6UE9WQjk2ZUxCOEp0QTE5ZjExYmxueTREZHhlL1Q0VTZORkR3R0NwMkpD?=
 =?utf-8?B?U0drMG9Yc3h4bkI0RDA1Ymt5b3VpWXlIVGgvN3ZreGcvQVpVa0ZIeU9KdjRq?=
 =?utf-8?B?Tm9zaE1Wb0FBTkZ0bzl6ZU55U2xaSGxxNzZaT2xsYnptSmVya0dUbCsvMUhQ?=
 =?utf-8?B?ZVFyZjJuancvU0xKaDJvU0tzT3Zwdko2Qk1Tck5SSngzM0hvMHhQajhuNjV1?=
 =?utf-8?B?clZmZEdOcTg5Z0pleGRkSXRwOS9HN2hDdGZINkExVmVySE85UXhmbXhBbG9t?=
 =?utf-8?B?Z1p5NjNXUDJzdDdFcDI1Z2dUZ2wwKzkxUm8rOE5TbmJCWklSYkdEUWxWbVhr?=
 =?utf-8?B?RnJ4ZTFTaHpsWGg4azFkZ054bGlDWFNCY25LbzB4bjZXUnl6bGpGZkRZdnY4?=
 =?utf-8?B?MXJUblBHQTF4NDRJb3RYUXp4bzkzNzI1Wk02dXQ3Y0s4WW4rRnBYUHpRSXVa?=
 =?utf-8?B?eHg1OUk5ZDZMWU4ya1ZjK0pDdFR2N0FmbVNLV25IeUovN2Jqb0VsWkM4MlRV?=
 =?utf-8?B?ZTZialcvbldZZnFsUHBCd3hkNE9SdnYyci9sRWtrL3BKL0FIenBUekJuM0JS?=
 =?utf-8?B?VXBXR3p5eml6eGhQOWdvL2lsSUxvOW5wOUVtSU5uMHlic0YydDVFSkYzZWs0?=
 =?utf-8?B?cWVzRElzVUdOZ2Ria0MzWnRqSXJiL01uQnZIVDFUdzdyd1htUjVKR05QYVdW?=
 =?utf-8?B?eDdPR3hTbHZNKzc2WmR6a1I5MGR3S1B4c3l5NGt4VUJDWmxYZy9oZEtwcEpr?=
 =?utf-8?B?cVoxNCt5MmtZUEl3OVJNVEdxTmgwVWdYbzJuV3UxQy9lU0ZWOXBiUWloclNK?=
 =?utf-8?B?Q1NhbE5vTTZQcWt3eHJJUmFtN1dDL1N4NGwycHpXWTVlZXU0Q2h3dWpZKy9H?=
 =?utf-8?B?YVlHMktPYkZhaE5JSVZGVUpZbzY4UldDYVllSnFsQ1A3UGo1d2o4dEQrNzlC?=
 =?utf-8?B?QWhYdlc5bG9acUQ3NWZwd0FZVXU3Y0VZT2hkTXJ5ZGFwT0d1VzZuUUJET3JB?=
 =?utf-8?B?N3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(921020); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDZwdS9hNm9ZUzUzWTZFQWRZcDNyRXpzbEJOb2xOQnVrT2pDUlYvUUFpMkUz?=
 =?utf-8?B?MDFyekZhdUhQcHZ0eUpwQzFLQ015QlFVbDNDS3lSZm52NGxjei84ZG1yaW5O?=
 =?utf-8?B?MGhSTjY0UTRzclY2ek5NVHBlQi9BUlpOQU5mYTdEdGp3YUtFWjJjZzNxalpk?=
 =?utf-8?B?T1kxaHA1WUVtUy8waGFEaHhIZEZENDN6cnRDK1hxemF5SmZFUUZacGhBbWsv?=
 =?utf-8?B?VGlQT2ZCNmIyQVpINlZ3aWNLL2tBTERXWnR6RmRwdllvUE51Uzd0am4xdTZv?=
 =?utf-8?B?endiZWZscElzaVh3T3U2WVBpMUxSMWoxUFpEelg2RGVpY29lNnFORkt1Q0hs?=
 =?utf-8?B?R3BnWFhTVkxzR0xZMlZHdVlsNzlpUWpsZCs1TERsd1BGSk0zU0NTaTdLanQv?=
 =?utf-8?B?bkhNVHE0WWltWCsyMmhadlVuZ1p4K1NHK0haSndqYnlVYW9iT1lwdmhaWndp?=
 =?utf-8?B?emIvZW5QQ1IzQm5lUFhUU3JVbGh0UzFqL1Ywc0w0UENPNGVDMys1cWZVZldy?=
 =?utf-8?B?S2U5VlU3aWVhWWE1TXdVTHQvMkxFaDdPT1dYVTNRNGJtZkVoN3pueWJWaERF?=
 =?utf-8?B?WGFWa05CUXA4R0lCR0FWYkcrRzZLbVNBUXlEZWExTlJkL2UyZHB4WHgyUHZy?=
 =?utf-8?B?cnlsTmVGUk1qaDM5WXdXRTcyNkdpS0x0NHkybXFPWU9Jc0dEU3BiQjdQbFB6?=
 =?utf-8?B?ZjVQOWJJN1B3S0I1dUZQVjBJNTY0U2ZVR2R3UDZmT2ZLYm5TRm5qM01hSGRp?=
 =?utf-8?B?NTJQSlBTU05ZTFEvY2F2eWlNdFIzN21SNEtFWHhBd0FMV2hiTzFnMGxheEJ5?=
 =?utf-8?B?UWhXMldhQTJQdEdRZHZEVDNydVVFekJrTHJ2aXgvRUVLVEdDQUp4cWIrUkN2?=
 =?utf-8?B?NVZuQ3E4b0l6VGo1V0hWUldOVndUQ1FZRlN6cys4KzFSSmRIZEk3NUFXM2dj?=
 =?utf-8?B?cDZjVDBZeDRVd0EzclNxYUZscklGQiszYkJLalJnc3lMM2J4ejlBK1pQSyt6?=
 =?utf-8?B?M2Eyby8vZ3FIOTRnSG0ydTVHYnBGNmcxVTFIZnBpaVBYNVRTM0hnbk5EdHRG?=
 =?utf-8?B?ZFFNSXUxMkgzc1kzcEJ6ZzR0Y1lPRXdpU1grYWg5UWZwc2dPTXRoV2h5YXpx?=
 =?utf-8?B?Vkt1QTRxN2JhWnFvTDFvKzE0Tkw0MDNCRThJUDRJd1ZtK3NmNnJRVE9LWVRF?=
 =?utf-8?B?TXEwdS9lVUphUms0cDJWOENBSlVCVGJ1aVM5MEJWdHgwUkdza3dMVHZJNktE?=
 =?utf-8?B?eXB2d0lsK2k2ai9QOHQrNDFaM0hCQWk4Tk5CNm05MjYyN1FZV1kxbGlhYnJF?=
 =?utf-8?B?U2dmenZ2SUtTTG4vRURWbVptM3JoZWtudHFQTzVmSWxHOXU5aHA1aTIvUUIz?=
 =?utf-8?B?WDFkU21SNEpHUjlDNkxicWsxeHkyYnFMUFNNdFpzeTRHbGJWYk0xamRBSHM4?=
 =?utf-8?B?YmcrdFVQc0IvOUVHRWRNVE9ObitIWTNWVWs4OVBVQmQrYjJJc3lkdTBNOTAv?=
 =?utf-8?B?TzFiMVFnRDBDSXVrTGYrRUhLNk1TbVREazU4TWtnamJKc2NQRGYwQ09JY1du?=
 =?utf-8?B?d3pId1gweWhGYjdPcm5jSU5EMkhBMTJBK1hPTUtwZzFYOHNCUnNnOWp4cHlN?=
 =?utf-8?B?bUtWc09YUUEyRW1vTUJMY2d2ZXNWUm1OMVRSSEx0U3RNRHlkS3FnVWdwcElU?=
 =?utf-8?B?QTdaMkFnakdxVUVpSW5TMjJFYVkySnBtUzUydDA3b3VyN3lBR2t0dEkzbTF4?=
 =?utf-8?B?UWRKNm5JbGVvcWxDSVJra1MxOGw4eHdBVjdad2xpeW9OWDRXMDNZdmRKdngz?=
 =?utf-8?B?dUVqSTM5TWtNTkJ2MGFBaGlydXgwUFl0QXFVaXRsUTEvdlpzUTVSQ1R1Mjgr?=
 =?utf-8?B?dG9OZ0JhclUybEI4bzBWRkY0YlhqQVpyRzdsQllINkJBb3huZHVIYVUyZXJq?=
 =?utf-8?B?VnpMUnE4NHNLbzg5SEpkQXNhNDlTNTFKeXVDbU5RNHUxbWNvcnV1NzdJbm9B?=
 =?utf-8?B?MFlmY0RhRE10anNGYm1zTzgxdlA1UGtwbGpiUldyTk1NSUJrQXhSdVY3UlYr?=
 =?utf-8?B?TjhFcDZMNWwzVDlMOGV6a3VuOTFRSitGc3cyRVgxSHp0YUhmVUgyTFZHN0RU?=
 =?utf-8?B?RDdUUEZsOFdPdFM0M1BsYU93KzB1dDl3cmRldFRFU21wVnpkME1hQ2VTUGV5?=
 =?utf-8?B?VERZSVl1UTZZeWVqVFcyZ29DS3VMdU0xeDNManRNckdsNDN4OTl2RU82SnRX?=
 =?utf-8?B?NW0wQkh6bUZBWGR6ZzJnK0hHcWdKNjRPcGRwUVd1R1U2enNuVmpwK285bHc3?=
 =?utf-8?B?RENVUkQrOGpoNHdyTWVNdWtCcGhOM2JIUTRPN2YrcnA2SVljTStKOUdWQ3hZ?=
 =?utf-8?Q?WCB9SSI2IzVGr8QM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ceef2035-6f4f-44e9-f6ed-08de5df3f8be
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 22:32:36.6641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HT2wUzlcD6zMNUyE9z/CwoYIFMMM0eAqI3YUcKDF6nv3/xZPD7h4drX0iDhir5CiFeGzcPM1wRQfwFZ1uYeTGyLsPFXTuwg4B2bt/Y47wsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8B3F23403
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769553163; x=1801089163;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o8kBWusG7fyR/nf4S5MXr1BcaWGwOaHzdbDpiXbqhq0=;
 b=Sd0pGs0MQ/2bCn7D03be2eCJcV89X6ZN+xs7gCdK7ste+BbJrOEKvnIJ
 /X93v/x/MicSFWCzjTL5Z1fbYbyfPwk4s9sW+/pFOFEMH2Wz16SwESHMW
 wkLqadgPu82vz/3V0Nsyt27rIGkPRYloZM0SV4BHoTM3poH5sxoKCv0n/
 ZpFCmm2I5XqDZ0++wJuSg4LkEBzjODDiJW7XISGar2hqy0c5GpR0geERE
 buuxCy+Tf1TPdcVPm6UnwJsxYPUhbTH/koNLSmgpx2D3+GIMKiHlS/zHg
 lSsfK0SL36YJtjhgcbiFaLexNN5rVMLP6KUc59z1Zy3V4bhrsVIAo35nb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Sd0pGs0M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] ice: recap the VSI and QoS
 info after rebuild
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aaron.ma@canonical.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:david.m.ertman@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,intel.com:email,canonical.com:email]
X-Rspamd-Queue-Id: BEFBA9B178
X-Rspamd-Action: no action



On 12/24/2025 10:21 PM, Aaron Ma wrote:
> Fix IRDMA hardware initialization timeout (-110) after resume by
> separating VSI-dependent configuration from RDMA resource allocation,
> ensuring VSI is rebuilt before IRDMA accesses it.
> 
> After resume from suspend, IRDMA hardware initialization fails:
>    ice: IRDMA hardware initialization FAILED init_state=4 status=-110
> 
> Separate RDMA initialization into two phases:
> 1. ice_init_rdma() - Allocate resources only (no VSI/QoS access, no plug)
> 2. ice_rdma_finalize_setup() - Assign VSI/QoS info and plug device
> 
> This allows:
> - ice_init_rdma() to stay in ice_resume() (mirrors ice_deinit_rdma()
>    in ice_suspend()
> - VSI assignment deferred until after ice_vsi_rebuild() completes
> - QoS info updated after ice_dcb_rebuild() completes
> - Device plugged only when control queues, VSI, and DCB are all ready
Hi Aaron,

Sorry for the late feedback, but I'm working on getting AI Review in 
place and when I ran it against this path it flagged a couple of things...

> Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on ACPI S3 resume")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> V1 -> V2: no changes.
> V2 -> V3:
> - mirrors init_rdma in resume as Tony Nguyen suggested to fix
> the memleak and move ice_plug_aux_dev/ice_unplug_aux_dev out of
> init/deinit rdma.
> - ensure the correct VSI/QoS info is loaded after rebuild.
> 
>   drivers/net/ethernet/intel/ice/ice.h      |  1 +
>   drivers/net/ethernet/intel/ice/ice_idc.c  | 41 +++++++++++++++++------
>   drivers/net/ethernet/intel/ice/ice_main.c |  7 +++-
>   3 files changed, 38 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 147aaee192a79..6463c1fea7871 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -989,6 +989,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
>   void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
>   int ice_plug_aux_dev(struct ice_pf *pf);
>   void ice_unplug_aux_dev(struct ice_pf *pf);
> +void ice_rdma_finalize_setup(struct ice_pf *pf);
>   int ice_init_rdma(struct ice_pf *pf);
>   void ice_deinit_rdma(struct ice_pf *pf);
>   bool ice_is_wol_supported(struct ice_hw *hw);
> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
> index 420d45c2558b6..b6079a6cb7736 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -360,6 +360,35 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
>   	auxiliary_device_uninit(adev);
>   }
>   
> +/**
> + * ice_rdma_finalize_setup - Complete RDMA setup after VSI is ready
> + * @pf: ptr to ice_pf
> + *
> + * Sets VSI-dependent information and plugs aux device.
> + * Must be called after ice_init_rdma(), ice_vsi_rebuild(), and
> + * ice_dcb_rebuild() complete.
> + */
> +void ice_rdma_finalize_setup(struct ice_pf *pf)
> +{
> +	struct iidc_rdma_priv_dev_info *privd;
> +
> +	if (!ice_is_rdma_ena(pf) || !pf->cdev_info)
> +		return;
> +
> +	privd = pf->cdev_info->iidc_priv;
> +	if (!privd || !pf->vsi[0] || !pf->vsi[0]->netdev)
> +		return;
> +
> +	/* Assign VSI info now that VSI is valid */
> +	privd->netdev = pf->vsi[0]->netdev;
> +	privd->vport_id = pf->vsi[0]->vsi_num;
> +
> +	/* Update QoS info after DCB has been rebuilt */
> +	ice_setup_dcb_qos_info(pf, &privd->qos_info);
> +
> +	ice_plug_aux_dev(pf);

"
Does making ice_rdma_finalize_setup() void lose error reporting? The
old ice_init_rdma() called ice_plug_aux_dev() and propagated errors to
callers with error cleanup. Now ice_plug_aux_dev() returns int but
ice_rdma_finalize_setup() is void, so the return value is ignored.

If ice_plug_aux_dev() fails (kzalloc failure, auxiliary_device_init
failure, or auxiliary_device_add failure), the error is silently
ignored and RDMA functionality won't be available. The old code would
return an error that ice_load() and ice_resume() would log, helping
users understand why RDMA isn't working.

Should ice_rdma_finalize_setup() return int and propagate the error, or
at least log a message when ice_plug_aux_dev() fails?
"

I agree that logging a message would be helpful to inform the user. 
Either here or propagating it and printing a differentiated messages 
would be nice.

> +}
> +
>   /**
>    * ice_init_rdma - initializes PF for RDMA use
>    * @pf: ptr to ice_pf
> @@ -398,23 +427,16 @@ int ice_init_rdma(struct ice_pf *pf)
>   	}
>   
>   	cdev->iidc_priv = privd;
> -	privd->netdev = pf->vsi[0]->netdev;
>   
>   	privd->hw_addr = (u8 __iomem *)pf->hw.hw_addr;
>   	cdev->pdev = pf->pdev;
> -	privd->vport_id = pf->vsi[0]->vsi_num;
>   
>   	pf->cdev_info->rdma_protocol |= IIDC_RDMA_PROTOCOL_ROCEV2;
> -	ice_setup_dcb_qos_info(pf, &privd->qos_info);
> -	ret = ice_plug_aux_dev(pf);
> -	if (ret)
> -		goto err_plug_aux_dev;
> +
>   	return 0;
>   
> -err_plug_aux_dev:
> -	pf->cdev_info->adev = NULL;
> -	xa_erase(&ice_aux_id, pf->aux_idx);
>   err_alloc_xa:
> +	xa_erase(&ice_aux_id, pf->aux_idx);

"
Does this error path call xa_erase() with an uninitialized pf->aux_idx?

When xa_alloc() fails at line 423, the code jumps to err_alloc_xa which
now calls xa_erase(). But if xa_alloc() failed, nothing was allocated
into the xarray, and pf->aux_idx contains an undefined value from the
failed xa_alloc() call. Calling xa_erase() with this undefined index
seems incorrect.

In the original code, the err_plug_aux_dev label came after successful
xa_alloc(), so xa_erase() was only called when something was actually
allocated. The err_alloc_xa label came after err_plug_aux_dev and fell
through without calling xa_erase().
"

Semi-related. I sent patch 1 of this series on since it seems like it 
can be independent of this one so no need to carry that one with this.

Thanks,
Tony

>   	kfree(privd);
>   err_privd_alloc:
>   	kfree(cdev);
