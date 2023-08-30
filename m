Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A3278D6F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Aug 2023 17:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3E4941780;
	Wed, 30 Aug 2023 15:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3E4941780
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693409076;
	bh=aiiNvA2U7+ERgNsVdPKyi8ffwKbtip2qKklXcG46Kp0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BBPZMFEinKB6nSezsKJjhiyFcjVeANdIlUcgJJbEhePWcKeGt+BlsDoq/tq+e5r4a
	 unFHBbpnXNo3H1mQzR0QchOp+gdc50FQhiD4euBL3spDKqasdqsKyzkRmwjgCMf6y6
	 GcSWfSLvSi1UmJiBdJxchmPF7pd5vdWADkM15AkfE1ouTf7IShB5pfkAmixaYl6kxA
	 10UU/7+Sc0SvXxJPvWPTkhjdMQwrpI116MKWkBNF50xLr4pOUmc7DMYntJEhRMDch3
	 XSCZ5oEJ9wbxfJdn+NPIe62e9A0FplRXOq42tTYVXn1zwzVpYgk0BCvAfDJZncE6e+
	 PJ3mwQMq9KYSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nsInQYMmobVE; Wed, 30 Aug 2023 15:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ED6941693;
	Wed, 30 Aug 2023 15:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ED6941693
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7963F1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 09:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DC5381EB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 09:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DC5381EB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vAnPLqKhww0z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Aug 2023 09:19:16 +0000 (UTC)
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5077D81282
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 09:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5077D81282
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37U86Ia4012554; Wed, 30 Aug 2023 02:19:01 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3st1y607df-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 30 Aug 2023 02:19:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1GcePUdBWzKGMRm0ra9/gtNmwl9gPbAM4vEkz7EbnAzLRwgBrhkMe5vTwYBIkS0zI+W5Cnw6+mdlJCogXLnP0+l7WeqzRBDdcQAni2cyXsgQKAcDwOCgW4Wv1LhO4Db3O1xp3VjGHGQl5IiYLFN7ttCXI3WzMcBFHvD6w3LIMIjD2zK+TEQoO1rmaH0GuPQwUTbPhQDkjmJnHWY5+EPX+kkNzSJGvY8+uiMxYzRsH0crL7MqLlTs7Dah7t7bbt/Mzr3pOPJhZkrEIQGv1OG4yxjWH445XTMKTRubeVdyUKr2TOzJnRdV5z/SIw7lhQzd5wNc1JwBwKQ7QSY4Ywv1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4VEe/KepPXEZf6Qxt3DPukpeRq7RAlQydABldF1E7E=;
 b=hKeb2BMiuFodhA5mZuZ3PpGFOcui4GOrjpX39y+Dao2O6tUriGtgHmwRjtkmt4R5xCWoN3li8GHsw3yCddCfXC4C9nrxDpOGphfOUQsiLfHhwJCJmGhH7D8jL9OgJP9epqJ5f3BM2gxyspk6J6RELoy8hgHY7xreZlnzwzwfHZhOVUL1Tf4wlCPYJ4FveEwxR/lCfl7wAt7oWTabRuR4htx19Sgd1OOnf0MhJydl2rpind1/Da3tGf9NujC3RGRy4Fpo+HRrMVeGOpJ6+9iKCwg4DNkCxsXMCjmX5GCDvN0Cf9T9BInecjvdeOEUVyWawmffDlVZ4AxbDQjYH+uXeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from CO1PR18MB4666.namprd18.prod.outlook.com (2603:10b6:303:e5::24)
 by SA9PR18MB3773.namprd18.prod.outlook.com (2603:10b6:806:4f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Wed, 30 Aug
 2023 09:18:56 +0000
Received: from CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::9caf:dc2e:a8d7:b5c6]) by CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::9caf:dc2e:a8d7:b5c6%4]) with mapi id 15.20.6699.035; Wed, 30 Aug 2023
 09:18:56 +0000
From: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [EXT] Re: hardware filter for matching GTP-U TEID
Thread-Index: AdnaQAvfCeTdf2eHQyWYhWQA4bzW5wAJYYcAAC9EQ9A=
Date: Wed, 30 Aug 2023 09:18:56 +0000
Message-ID: <CO1PR18MB46661D899DFBEE13FA999FEBA1E6A@CO1PR18MB4666.namprd18.prod.outlook.com>
References: <CO1PR18MB46668B13A44DD677B6A241F0A1E7A@CO1PR18MB4666.namprd18.prod.outlook.com>
 <ebb004ea-bd9e-aa42-530e-ccfdb086ec9f@linux.intel.com>
In-Reply-To: <ebb004ea-bd9e-aa42-530e-ccfdb086ec9f@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYzJKb1lYUjBZVnhoY0hCa1lYUmhYSEp2WVcxcGJtZGNNRGxrT0RRNVlq?=
 =?utf-8?B?WXRNekprTXkwMFlUUXdMVGcxWldVdE5tSTROR0poTWpsbE16VmlYRzF6WjNO?=
 =?utf-8?B?Y2JYTm5MVE5qTkdGa01HTTNMVFEzTVRZdE1URmxaUzA1WXpZNExXSmpaakUz?=
 =?utf-8?B?TVRJeE9HSTNZVnhoYldVdGRHVnpkRnd6WXpSaFpEQmpPUzAwTnpFMkxURXha?=
 =?utf-8?B?V1V0T1dNMk9DMWlZMll4TnpFeU1UaGlOMkZpYjJSNUxuUjRkQ0lnYzNvOUlq?=
 =?utf-8?B?STVOakFpSUhROUlqRXpNek0zT0RZd056TXpNVFkzTWpJMk15SWdhRDBpUzNv?=
 =?utf-8?B?dmNsWTNiek5aVFhRM2JtdGljV0k0YzI1UlFrcEZWR2R2UFNJZ2FXUTlJaUln?=
 =?utf-8?B?WW13OUlqQWlJR0p2UFNJeElpQmphVDBpWTBGQlFVRkZVa2hWTVZKVFVsVkdU?=
 =?utf-8?B?a05uVlVGQlRqUlFRVUZFU0VGTFZDdEpkSFphUVdNNFJubG9OR1Z2UlU5d2Vu?=
 =?utf-8?B?ZFlTMGhvTm1kUk5tdGFRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVaEJRVUZCUW5WRWQwRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVWQlFWRkZRa0ZCUVVFNVVtVnVUSGREUVVGUlFVRkJRVUZCUVVGQlFVRktO?=
 =?utf-8?B?RUZCUVVKb1FVZFJRVnBCUW5sQlIxVkJZM2RDZWtGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUlVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?blFVRkJRVUZCYm1kQlFVRkhUVUZrVVVKNlFVaFJRV0ozUW5SQlJqaEJZMEZD?=
 =?utf-8?B?YkVGSVNVRmpkMEoyUVVjMFFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJaMEZCUVVGQlFVRkJRVUZCUVVGQlFWRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkRRVUZCUVVGQlEyVkJRVUZCV1hkQ01VRklUVUZrUVVKMlFV?=
 =?utf-8?B?Y3dRVmgzUW5kQlIyZEJZbmRDZFVGSFZVRmlaMEl4UVVjd1FWbG5RbXhCU0Vs?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUpCUVVGQlFVRkJRVUZCU1VGQlFVRkJRVW8wUVVGQlFtcEJTRlZC?=
 =?utf-8?B?WTNkQ01FRkhPRUZpVVVKbVFVaE5RV04zUW5WQlJqaEJXa0ZDYUVGSVRVRmhR?=
 =?utf-8?B?VUptUVVoWlFVMUJRWGxCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-refone: =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGRlFVRkJRVUZCUVVGQlFXZEJRVUZCUVVGdVowRkJRVWRO?=
 =?utf-8?B?UVdSUlFucEJTRkZCWW5kQ2RFRkdPRUZqZDBKNlFVYzBRVmgzUW5KQlIxVkJa?=
 =?utf-8?B?VkZDTTBGSE9FRmpaMEpyUVVoTlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJVVUZCUVVGQlFVRkJRVU5CUVVGQlFV?=
 =?utf-8?B?RkRaVUZCUVVGWmQwSXhRVWhOUVdSQlFuWkJSekJCV0hkQ2VrRklUVUZpWjBK?=
 =?utf-8?B?bVFVYzBRV0ozUW10QlIxVkJZa0ZDY0VGSE1FRmhVVUl3UVVkVlFXTm5RbVpC?=
 =?utf-8?B?U0ZsQlRVRkJlVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUWtGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGSlFVRkJRVUZCU2pSQlFVRkNha0ZJVlVGamQwSXdRVWM0UVdKUlFtWkJT?=
 =?utf-8?B?RTFCWTNkQ2RVRkdPRUZqZDBKM1FVZEZRVmwzUW14QlJqaEJaR2RCZDBGRVNV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?VkJRVUZCUVVGQlFVRkJaMEZCUVVGQlFXNW5RVUZCUjFGQllrRkNkMEZHT0VG?=
 =?utf-8?B?amQwSnlRVWhyUVdOQlFteEJSamhCV1hkQ2IwRkhSVUZrUVVKbVFVY3dRVnBS?=
 =?utf-8?B?UW5wQlNFMUJXVkZDYmtGSFZVRllkMEl5UVVSQlFVMW5RVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZSUVVGQlFVRkJRVUZCUTBGQlFVRkJRVU5sUVVGQlFWcEJR?=
 =?utf-8?B?bk5CU0VGQldIZENla0ZIZDBGWlVVSnFRVWR6UVZoM1FtcEJSMmRCV1ZGQ01F?=
 =?utf-8?B?RkdPRUZpVVVKc1FVaE5RV04zUW1oQlIyTkJXbEZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-reftwo: =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQ1FVRkJRVUZCUVVGQlFVbEJRVUZCUVVGS05FRkJR?=
 =?utf-8?B?VUpyUVVkM1FXTkJRbVpCU0ZGQldsRkNhRUZITUVGamQwSm1RVWM0UVdKblFt?=
 =?utf-8?B?eEJSMUZCWTJkQ2NFRklXVUZhVVVKbVFVZFpRV0ZSUW5OQlIxVkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJSVUZCUVVGQlFVRkJRVUZuUVVG?=
 =?utf-8?B?QlFVRkJibWRCUVVGSFZVRmlVVUpvUVVkclFXSkJRbVpCUjBWQldrRkNhMEZJ?=
 =?utf-8?B?U1VGYVVVSjZRVWhOUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGRlowRkJRVUZCUVVGQlFVRkJRVUZCUVZGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGRFFVRkJRVUZCUTJWQlFVRkJZbEZDYUVGSVNVRmtaMEpzUVVkM1FW?=
 =?utf-8?B?aDNRbmRCU0VsQlluZENjVUZIVlVGWmQwSXdRVVk0UVdKblFtaEJSekJCV2xG?=
 =?utf-8?B?Q2VrRkdPRUZaZDBKMlFVYzBRVnBuUW5CQlIxRkJXbEZDZFVGSVVVRmhVVUpv?=
 =?utf-8?B?UVVkM1FWaDNRbWhCUjNkQlluZENkVUZIVlVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVSkJRVUZCUVVGQlFVRkJTVUZCUVVGQlFVbzBRVUZCUW5SQlIwVkJZMmRD?=
 =?utf-8?B?TWtGSFZVRmlRVUptUVVoQlFXTm5RblpCUjI5QldsRkNha0ZJVVVGWWQwSjFR?=
 =?utf-8?B?VWRGUVdKUlFteEJTRTFCV0hkQ2VVRkhWVUZqZDBJd1FVaEpRV0ZSUW1wQlNG?=
 =?utf-8?B?RkJXbEZDYTBGR09FRlpVVUp6UVVjNFFXSm5RbXhCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZGUVVGQlFVRkJRVUZCUVdkQlFVRkJRVUZ1WjBGQlFV?=
 =?utf-8?B?Y3dRVmxSUW5sQlNGbEJXbEZDYzBGR09FRmpRVUo1UVVjNFFXRm5RbXhCUjAx?=
 =?utf-8?B?QlpFRkNaa0ZITkVGWlVVSjBRVWRWUVdOM1FtWkJTRWxCV2xGQ2VrRklVVUZq?=
 =?utf-8?B?WjBKd1FVZE5RV1JCUW14QlIxRkJXSGRDYjBGSFZVRmxRVUpxUVVjNFFWcEJR?=
 =?utf-8?B?bXhCU0UxQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlVVRkJRVUZCUVVGQlFVTkJRVUZC?=
 =?utf-8?B?UVVGRFpVRkJRVUZpVVVKb1FVaEpRV1JuUW14QlIzZEJZa0ZDWmtGSFJVRmpa?=
 =?utf-8?B?MEowUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-refthree: =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRa0ZCUVVGQlFVRkJRVUZK?=
 =?utf-8?B?UVVGQlFVRkJTalJCUVVGQ2RFRkhSVUZqWjBJeVFVZFZRV0pCUW5OQlJqaEJX?=
 =?utf-8?B?bmRDZGtGSE9FRmFkMEp6UVVkVlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVWQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlowRkJRVUZCUVc1blFVRkJSekJCV1ZGQ2VVRklXVUZhVVVK?=
 =?utf-8?B?elFVZDNRVmgzUW5kQlNFbEJZbmRDY1VGSFZVRlpkMEl3UVVZNFFWbDNRblpC?=
 =?utf-8?B?UjFGQldsRkNla0ZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRlJRVUZCUVVGQlFVRkJRMEZCUVVGQlFVTmxRVUZCUVdKUlFtaEJT?=
 =?utf-8?B?RWxCWkdkQ2JFRkhkMEZpUVVKbVFVaEJRV05uUW5aQlIyOUJXbEZDYWtGSVVV?=
 =?utf-8?B?RllkMEpxUVVjNFFWcEJRbXhCU0UxQldIZENhMEZIYTBGWmQwSXdRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZDUVVGQlFVRkJRVUZCUVVsQlFVRkJRVUZLTkVG?=
 =?utf-8?B?QlFVSjBRVWRGUVdOblFqSkJSMVZCWWtGQ2MwRkdPRUZqUVVKNVFVYzRRV0Zu?=
 =?utf-8?B?UW14QlIwMUJaRUZDWmtGSE5FRlpVVUowUVVkVlFXTjNRbVpCUjAxQlluZENk?=
 =?utf-8?B?VUZIV1VGaFVVSnJRVWRWUVdKblFqQkJSMnRCV1ZGQ2MwRkdPRUZpVVVKb1FV?=
 =?utf-8?B?aEpRV1JuUW14QlIzZEJZa0ZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlJVRkJRVUZCUVVGQlFVRm5R?=
 =?utf-8?B?VUZCUVVGQmJtZEJRVUZITUVGWlVVSjVRVWhaUVZwUlFuTkJSM2RCV0hkQ2Qw?=
 =?utf-8?B?RklTVUZpZDBKeFFVZFZRVmwzUWpCQlJqaEJZbWRDYUVGSE1FRmFVVUo2UVVZ?=
 =?utf-8?B?NFFWbDNRblpCUnpSQldtZENjRUZIVVVGYVVVSjFRVWhSUVdGUlFtaEJSM2RC?=
 =?utf-8?B?V0hkQ2RFRkhSVUZqWjBJeVFVZFZRV0pCUW5OQlJqaEJZbmRDZVVGR09FRlpV?=
 =?utf-8?B?VUo1UVVjd1FVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-reffour: =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVkZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZEUVVGQlFVRkJRMlZCUVVGQllsRkNhRUZJU1VGa1owSnNRVWQzUVdKQlFt?=
 =?utf-8?B?WkJTRUZCWTJkQ2RrRkhiMEZhVVVKcVFVaFJRVmgzUW5WQlIwVkJZbEZDYkVG?=
 =?utf-8?B?SVRVRllkMEpxUVVjNFFXSm5RbTFCUjJ0QldrRkNiRUZITkVGa1FVSndRVWRG?=
 =?utf-8?B?UVdKQlFtWkJSekJCV1ZGQ2VVRklXVUZhVVVKelFVZDNRVmgzUW5aQlNFbEJX?=
 =?utf-8?B?SGRDYmtGSE9FRmlkMEp1UVVkM1FWcFJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVK?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlNVRkJRVUZCUVVvMFFVRkJRblJCUjBWQlkyZENNa0ZI?=
 =?utf-8?B?VlVGaVFVSnpRVVk0UVdOQlFubEJSemhCWVdkQ2JFRkhUVUZrUVVKbVFVYzBR?=
 =?utf-8?B?VmxSUW5SQlIxVkJZM2RDWmtGSVNVRmFVVUo2UVVoUlFXTm5RbkJCUjAxQlpF?=
 =?utf-8?B?RkNiRUZIVVVGWWQwSjBRVWRGUVdOblFqSkJSMVZCWWtGQ2MwRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkZRVUZCUVVGQlFVRkJRV2RCUVVGQlFVRnVaMEZCUVVjd1FW?=
 =?utf-8?B?bFJRbmxCU0ZsQldsRkNjMEZIZDBGWWQwSjNRVWhKUVdKM1FuRkJSMVZCV1hk?=
 =?utf-8?B?Q01FRkdPRUZpWjBKb1FVY3dRVnBSUW5wQlJqaEJZMmRDYkVGSVRVRmtRVUo1?=
 =?utf-8?B?UVVkclFWbDNRakJCUjFWQldrRkNaa0ZITUVGWlVVSjVRVWhaUVZwUlFuTkJS?=
 =?utf-8?B?M2RCV0hkQ2RrRklTVUZZZDBKb1FVaEpRV0pSUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCVVVGQlFVRkJRVUZCUVVOQlFVRkJRVUZE?=
 =?utf-8?B?WlVGQlFVRmlVVUpvUVVoSlFXUm5RbXhCUjNkQllrRkNaa0ZJVVVGYVVVSjVR?=
 =?utf-8?B?VWN3UVdGUlFuVkJTRlZCWTNkQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFrRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkpRVUZCUVVGQlNqUkJRVUZDZEVGSFJVRmpaMEl5UVVkVlFXSkJRbk5CUmpo?=
 =?utf-8?B?QlpIZENka0ZJU1VGYVFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVVZC?=
 =?utf-8?Q?QUFBQUFBQUFBZ0FBQUFBQSIvPjwvbWV0YT4=3D?=
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR18MB4666:EE_|SA9PR18MB3773:EE_
x-ms-office365-filtering-correlation-id: 31b5b83a-921d-4ec9-8dfe-08dba93a2322
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SvJ5rYcEOZC0IBnKN71T8Mxlz0ZLw41d0LOdvBAorKP8M449iPFv6iLkk8KGPrIckffTXlzOJc4BnxoxMjzAlsnmtXROEZ5ghUBr76roaLkRO++IFOVI9EWYgFSdMyINYaWgMV0Ta5xBOCpU1uhd8IOO2icx7IClMAsQ6G28PhSYLygVkWkHT+xZvItdj0dJloU5UQS2tIkg7pVQ5k0N+j1KWeBg4v4r6VGwkDo4ctChy7TONfZO7u8BvyEfWpEF+V+aiFGZ9O/JlO//sAf87Mc30AgznQep8m51wrXvABkExpRAD7/6ZrHnzKzCyfBdGzYlNBVNZlcLsNXl6RzUngiz1vswI2rnLNPRvauLTFea6Y1sVXkhSl+Cr0MTCuMc5YfCSXKaoiYv7hSwMzG9PWWV+fuTimMIb+iHHwYViGlXZPyEwu6w5NTGldMuyQXAuTAbkJ2ok/b+V0hrZwD2a+sZ40gRi2EjDUfecgE4N1+UvwnfE2Orn5PtEiiAFGi26mpp8hZ3RXYNzwhCk/kSVI4HwPW5r3ziTIKdvE7ee9vQiUyqofHwg4C7NBJjL1Cz95d3+BeiZKnuKKuArX6Arg9yalsaSgtA2JaAgxQ2Zlccp455R41F3PC8Kc9pbBRr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR18MB4666.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(136003)(346002)(396003)(1800799009)(451199024)(186009)(9686003)(38100700002)(316002)(41300700001)(38070700005)(4326008)(33656002)(7416002)(55016003)(86362001)(26005)(83380400001)(52536014)(5660300002)(8676002)(2906002)(8936002)(71200400001)(6506007)(7696005)(66476007)(64756008)(66446008)(54906003)(66556008)(66946007)(76116006)(110136005)(122000001)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUNLTEhxdjM3dVlHbVZaR05BOHFMNW5hYkFTd01ONWJNOTJwRkJLTG1kYkRF?=
 =?utf-8?B?L1RxNEV2N0owV3I4SzFvMnhUN2IzZk12UFJjSXUrYzRJcGo1Rlo3c2l6US9y?=
 =?utf-8?B?bXZQUjlGemY1TVRNVjRWZ0dyblNpNldyZ293Q2UrcmJOMDEzTXdZMnhnRVoz?=
 =?utf-8?B?Sy9HZXd5YlZXSzFYeUxaclJOb1FqTStFVG5PbVJZVEZsd1hwMS8rK2xjQVd6?=
 =?utf-8?B?QnVXT0tNKzZEOVZ2UUE0SkhkcytFa2UzRG5JcUlZRUxKVmpoTzZoQkNlSjFG?=
 =?utf-8?B?V1h5Rk1KNHk3b3B2emVvR0NsWldVVStXK1ZQRmM2Q1pwZWk1dGtNcTZscTBQ?=
 =?utf-8?B?dmFPdlBxV2dxNDdRUW5YYUpLcG8ycWdvMDFQcXdRa1lxN01TU29XY2Z3Qm1k?=
 =?utf-8?B?MkdPZmFqaTdmRlM0cmhtWkMrY3NHMkhKbWFYK3hNVER6aGlwMGJ0eGp4bjh1?=
 =?utf-8?B?OGNvbEY4OFJyN1F1eVJ4NlZuRUoyZ2MwY0J1Z2tvQkJJdnpnZklVbzdKeVN2?=
 =?utf-8?B?YlUwTmZOZGR1TTFRT1VCWmtuSHlET0pEYWdHb1p0Rk4xTmJZVndidnNaKytk?=
 =?utf-8?B?VGFmRDV6Z0lGVE16N0VOS3FvOHdCSWRNc2RxbXNac3lCbmpaKzdROXFyRno4?=
 =?utf-8?B?TXdCZTVOMlp5elRVZXJ5cXRxSXdrWHRaYXZBTGMzS1doVVBrUjZsSXhEK2Zu?=
 =?utf-8?B?MExkSXRkSjZuaGlCYXNLUkJLL29BWTZaMkk5eXFWL1dSUGFxRWcwV2YwZ3FS?=
 =?utf-8?B?RWdXT29KQTR1NG9xbWNGU2l6WElhMTJtVFFEUFMxV2FQeE42RWRsVGdTVXUx?=
 =?utf-8?B?N3Q1M3A3RXk3VnpDZWRDSlkxOE42WlZJaUhtRnFPUEtFZ3pPanU1WDYyL3I5?=
 =?utf-8?B?SWpkZE5waXF2cVoxM2luaGNnTHMwOEczZG9ldHRWVEVvdi9TOUg5NEhUeDZi?=
 =?utf-8?B?QlRJbXdYNCtNMFpzMVovekV1UFRUVGpuVWdvTVVUUGVML01YN1pwMzUrOFZm?=
 =?utf-8?B?ZHJUVFIvUE1lQU9hcHBBalhTV0liVDl2S3dZYXJsYytreXczYXpaQ2FiTU93?=
 =?utf-8?B?TGUyR2NrWU5jdFNST3VvcWNldkZyRTNYRkN1aUlmYjZVWlhyT25LSC9wMlZW?=
 =?utf-8?B?NmpueUE3dTRiWXZlZlNJUjg0YmkxRTU4TTBYT05leXk5R2MyRVcvaVM2UWph?=
 =?utf-8?B?MGpyMDVHdkluWk81TE8xQkJrZzlkekJvc2RIak1zWkxiVzR2bGt1byswVnJ2?=
 =?utf-8?B?b2Q4RVh4RHBISlNUTkhoVUZCTHZMZERvSUtpazRtaXNRbVNQaEp0UTB5RG96?=
 =?utf-8?B?b29Ickp1aUtPMUhwTkVXV29aYkpLaUVGUGpGSDJoejZiOWUxeng1aVhqTlhP?=
 =?utf-8?B?Q05XSVJiaFFNZFhvN3lFRkZQY0lrQlJkemR2L3VDZk1PVUh5TlNCblBtU3pM?=
 =?utf-8?B?L2xXaXVxUUlWOUVaUCtxSDk2d1lyUHJsZG93VWNNT2FZRGw2bmp5dEZMK05I?=
 =?utf-8?B?U2JZZ25GcSs5Q01FZkgvWVd6d0UrTTduNTEycExMWXYySUQ0K1IvUE1XTGxD?=
 =?utf-8?B?TmYxMVdLVUdWQlN4T0JnTmJKT0VHeGZTOHoyMklVdXE2NWtCeEw5dlo4NmJp?=
 =?utf-8?B?UnZDQ3loL0lPTlVCWTlaSUN3cElJWm5xN1MyVGFldnpUd2F5VStBVlp3eURV?=
 =?utf-8?B?U2haMENFOEY4c2xNa3Z5aXdSQjFqWHlxSWRPRXorRW5FMnVnT2RPV2ZQUFpl?=
 =?utf-8?B?VURzUDNPbEhaYVlJMTFiQUloWlUrN0VzZDZiVE1DS1RuWVo4WDMxZHY5QlhF?=
 =?utf-8?B?bXVScmd5QWM4czVMZ1dtWjRjcDFHcDI5NkZscUg5Tk5ZdHNnNGswRExiUG9G?=
 =?utf-8?B?SHFxdE5qNFRnMm15ZlNTTmh5cVZlbk1rOUkvZ0l6cjBVYU5FY2xLLzJVQ1Ni?=
 =?utf-8?B?NXRSZTJRSldpN0Nrd3YzS2ZYUTd3VTFrdTdxWXUvSjJqR2ZGUHd5VnNGbjRC?=
 =?utf-8?B?a3d2SGFmSWpmenROQUlkNFJYbGRMU09SbVZRZ1p0ZlhpNzA0WDJYM1FTa25u?=
 =?utf-8?B?Z2t3NnhxWXNuaEJuWkhsODQvbTFucWhzbTg2Q3FwWVVUekZHeTM5NnZyOGlu?=
 =?utf-8?Q?qQKpr40Mb8qbHis62hGlEwGJn?=
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR18MB4666.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b5b83a-921d-4ec9-8dfe-08dba93a2322
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2023 09:18:56.5339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fLY5YFw+ZMW0hs1HHMbWlsOF83HQlUIpTRtm+FfjhvzcL6HGdgXHN8NgtkAxotUQP88S6r3+Hkfd9Xo9HwsZfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA9PR18MB3773
X-Proofpoint-ORIG-GUID: dcgitZijmo6iBGTy_sx6Lca7H8GLF5pf
X-Proofpoint-GUID: dcgitZijmo6iBGTy_sx6Lca7H8GLF5pf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Mailman-Approved-At: Wed, 30 Aug 2023 15:24:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r4VEe/KepPXEZf6Qxt3DPukpeRq7RAlQydABldF1E7E=;
 b=PhuXAgyno0VL2AnZtDZ2jYMQ2cW2/LtMir37XCKZ2V1s9LVyCifxWTAL6NCQXk0LxD71R+xCHupr+lvClarIwqtl8PMf5FnphyWmRz1SXJHXzUuOdbDYILRRo7uHa9ZIMK6t36UaxCMLKTlnlXttNn835tCrIMEt7imlbFbRxL8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=marvell.onmicrosoft.com
 header.i=@marvell.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-marvell-onmicrosoft-com header.b=PhuXAgyn
Subject: Re: [Intel-wired-lan] [EXT] Re: hardware filter for matching GTP-U
 TEID
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
Cc: Ratheesh Kannoth <rkannoth@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Naveen Mamindlapalli <naveenm@marvell.com>,
 Hariprasad Kelam <hkelam@marvell.com>,
 Geethasowjanya Akula <gakula@marvell.com>,
 "edumazet@google.com" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>, Suman Ghosh <sumang@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Marcin,

>-----Original Message-----
>From: Marcin Szycik <marcin.szycik@linux.intel.com>
>Sent: Tuesday, August 29, 2023 4:13 PM
>To: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>;
>jesse.brandeburg@intel.com; anthony.l.nguyen@intel.com; intel-wired-
>lan@lists.osuosl.org
>Cc: Jakub Kicinski <kuba@kernel.org>; davem@davemloft.net;
>edumazet@google.com; pabeni@redhat.com; netdev@vger.kernel.org; Sunil
>Kovvuri Goutham <sgoutham@marvell.com>; Naveen Mamindlapalli
><naveenm@marvell.com>; Suman Ghosh <sumang@marvell.com>; Ratheesh
>Kannoth <rkannoth@marvell.com>; Hariprasad Kelam
><hkelam@marvell.com>; Geethasowjanya Akula <gakula@marvell.com>;
>Wojciech Drewek <wojciech.drewek@intel.com>
>Subject: [EXT] Re: hardware filter for matching GTP-U TEID
>
>External Email
>
>----------------------------------------------------------------------
>On 29.08.2023 08:18, Subbaraya Sundeep Bhatta wrote:
>> Hi Marcin Szycik,
>>
>> Below commit demonstrates that we need to create a GTP tunnel netdev
>> and create a tc filter on top of it. I am unable to understand how the
>> tc filter on top of tunnel netdev $GTP0 propagates to the interface $PF0 for
>hardware offload?
>
>It propagates via a notification from tunnel netdev to PF, and then to driver.
>
Got it. It is done with flow_indr_dev_register function. 

>> commit 97aeb877de7f14f819fc2cf8388d7a2d8090489d
>> Merge: 4d17d43 9a225f8
>> Author: David S. Miller <davem@davemloft.net>
>> Date:   Sat Mar 12 11:54:29 2022 +0000
>>
>>     Merge branch '100GbE' of
>> git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue
>>
>>     Tony Nguyen says:
>>
>>     ====================
>>     ice: GTP support in switchdev
>>
>>     Marcin Szycik says:
>>
>>     Add support for adding GTP-C and GTP-U filters in switchdev mode.
>>
>>     To create a filter for GTP, create a GTP-type netdev with ip tool, enable
>>     hardware offload, add qdisc and add a filter in tc:
>>
>>     ip link add $GTP0 type gtp role <sgsn/ggsn> hsize <hsize>
>>     ethtool -K $PF0 hw-tc-offload on
>>     tc qdisc add dev $GTP0 ingress
>>     tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
>>     action mirred egress redirect dev $VF1_PR
>>
>>
>> I have to redirect GTP-U packets with a TEID to a VF which may be in guest
>using hardware tc filter on PF.
>>>From my understanding current TC and ethtool cannot specify match filters
>beyond L4 header fields.
>> Can I add new command something like gtp-teid to tc filter?
>> Please help me understand this.
>
>You can specify TEID field with the enc_key_id option in tc (like in above
>example). Meaning of that option changes depending on tunnel used, in case
>of GTP it's TEID.
>
>>
>> Thanks,
>> Sundeep
>>
>>
>
>I hope that answers your questions,

Yes. Thanks.

Sundeep

>Marcin

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
