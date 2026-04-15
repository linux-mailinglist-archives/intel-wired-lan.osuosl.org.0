Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBSOKJQB4GltbgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 23:22:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF50408225
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 23:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82C77605CE;
	Wed, 15 Apr 2026 21:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PEeTpgjfp0ZU; Wed, 15 Apr 2026 21:22:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDA48605C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776288142;
	bh=N6K2llWY0tTWh5edTDllDCI3R8w761wbame1M1c04yo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hKhZc1JJH0rQBj9nDD0nru3L8iKqk7g2uxtt+ar7dSDRWXK7V//hFec+JjB21W5w6
	 J6MZMalmdU9QZwADdTR0eUB9elNzV/bTzqGPR36zVF6h3lUyjaeu4aYoazDV/Mww75
	 e5exlZh9NFncCjdDUxNu3o9EnEeLYSYUI7oRd1Z6Q2iyNDOT+Ey4pV17rbBk+2CNJv
	 eC2nRsACtpJ/5oy6Y8vM1bFToeshn/3S7mhyzDb5iPIJ/gSGenCHyEzvVwM9ZgSN2g
	 /ss57wRQ+qH8OiB3jpuRe6uUYzp2GnKFFNeMiFcoRA0zVePGlT11/VbQ0gjRdEP7lG
	 vK57UCkS9v3Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDA48605C7;
	Wed, 15 Apr 2026 21:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 413D92CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 21:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26B05605C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 21:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PiQn2--pY3s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 21:22:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4808A605C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4808A605C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4808A605C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 21:22:19 +0000 (UTC)
X-CSE-ConnectionGUID: DIH9H8gbQAqwlVSguGjc5g==
X-CSE-MsgGUID: 2+Fup/FtRHCUlxv14ujmTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="81152271"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="81152271"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:22:19 -0700
X-CSE-ConnectionGUID: atfk6SrkSYqRrhkECvLkXw==
X-CSE-MsgGUID: rzvhxu93QHmxrIdwl/Funw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="230776787"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:22:18 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 14:22:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 14:22:18 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 14:22:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bUhHNIWfR+rJOYqp61BO9++ddoAz+ylz041Mmtzi829ScGRqtZqh/PAoJC0QWsEJEXwVPI/4QpJLk85SPZcXcTVGV2gugXVQY0DqX8KlJvxyxDR04BVMJsHTCxkrnQjSqOxlAxdv++TVoxMTeZENTuVDxqikZsdSrLDEUYhtSm3unYl7nrlqSMk7nbOXC38OoaAC0hBtFGAV3csXg24VsdHnOXKCHQQa4WZuc1b0poDRaP2nKz81F6luIUcIM+cz6B4g6mg5Ubru83Te4y4MjfBUJIiQ0mHoIGxXfl29qFH6nFZkTGY8th5Nh8IOvHIzsuAWUaeSyLfMdSH6YtUuaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N6K2llWY0tTWh5edTDllDCI3R8w761wbame1M1c04yo=;
 b=dUgeyMf8yOmaMQyCOZPWhhYTuSbrlh1bAbkMJxC0Y0eaReLrSDmIBy1L+CB6oPJzLfTW2Wazr940XP+DIxMV0w1VwU1hRmyz5RjosnljRWeMQVH/8tYDg5bV8olpoAbvuEXFzJT12QVLzlPCZNNxUp/ff5ZBmYjnnzxsM77dHPu7xGlC6ziZhYKUO1+s0RSTY/duOWHxMVqUn3VewvKxkfw4OFH0nvFEzGULojYnIbpc+xEuCWJaZDXKN8btR2do8gNhjwhI89c3538E9i/uu4jNZig4dQRVcYw1GcGzUFdwHy5p5Sz7a7xESpakmSmaT6PxbwD0Z9/HbLYky6kTWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.17; Wed, 15 Apr
 2026 21:22:12 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Wed, 15 Apr 2026
 21:22:12 +0000
Message-ID: <f30ad78e-1eb9-4c9d-9034-c8873966de66@intel.com>
Date: Wed, 15 Apr 2026 14:22:08 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Petr Oros <poros@redhat.com>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Daniel Zahka
 <daniel.zahka@gmail.com>, Paul Greenwalt <paul.greenwalt@intel.com>, "Dave
 Ertman" <david.m.ertman@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <20260413191420.3524013-1-poros@redhat.com>
 <20260415163003.GP772670@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260415163003.GP772670@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0194.namprd04.prod.outlook.com
 (2603:10b6:303:86::19) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|IA1PR11MB6097:EE_
X-MS-Office365-Filtering-Correlation-Id: a36f2c02-89f2-47d4-2140-08de9b350ed7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: hZRx34OqINIDKOE2lrEqITWLY4BnsncLBycGNbrNByANY4W9SZ6KZGSb/2m+kUCwZ2OIEXN1wyZ6cbV4FkkBZbe2JOVY49wp8Z60J7PB3kR3Ppti6zKS62mqF2Lz/iocxPVYkYKyxZsULRfP3PmPO1dDn4uO9KkORJtduKj/06zwaJBTVHN1rbyRETtEVyQgUpCdc9ax37eM74f16mNSxv1yvU0JfjydIdsAVpAvVTIYt/U7ovxXluvNpIhmnnMejqktgmqeppqM1NBS65T2XXjxoMhy8ZkFFrRw7HeRpjE9y1j45nEhnScpB2tnQPb0yXfo+JLBb47F+4BYEZvd3ctvbeqU0RpFf/jZ/vIs00NBlvdij4MWGumJ/YZy+sORbPSBvcr02qElBZw7i4qpVcw6me8wFcmo3ckJsUGnxs8BG5E0jA0RbQt4xiHyUp28LxhGF8B8MI2QuTl7WeweTqPeVQGFQmBROUHHVfGZeng13a9lalugTYHF61nS54bMwzUi2Ux/LTYX1xJnXpNfeSDL93hzwvULlHmAnN5FbfgfWipaMSueMoWRjSt/LCFIj3UxpFLX5duOR023KoJD0Q9QMN2I8o0sHS4a1ed+0LEGXwmQ7+6CUAM00TQeG4N84Ph4ucTB5iiF8NOKtD5M7+LC1/obNrn988yWxmIO80AfS6YS/4u8ORcI8PjC2qNuc0mdf8qoTAHXISSqWcQpOBnQGsReIpm1oqtx05GEtVo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alJiTlI3R1JKL2c5SHVzZWRLZWkvOW5aMUlSY1doKzRFY1Noc0JXK3VURDBD?=
 =?utf-8?B?UVBQUGNYaTdvU3I5M2x4REVrbTZ2cG80S3IvRm1hYjZFL3EvK2QreWVPbGR1?=
 =?utf-8?B?K1BqMVVBU0VGUHBIbDd0cStnQ1hDT09hODVtTi8yMmlTRXljZlIxT1dSSHhT?=
 =?utf-8?B?S1VFSnpMMHBlMkVIU0lzUFFhV09uaXBRZkFQbFVyUWdCUE94ZnVSWDVpTUkw?=
 =?utf-8?B?dHNlMkdzb0owd2V3M0Y5Y1Fnd2xHQlRQZDdJd0tQcmZTK1VJMFlQM2dWWGlV?=
 =?utf-8?B?OWY4akRNZ0ZVM0EvRFNjV2JNQWFGcjc2eDk3RlFrWDlOQmtTY0Y4RGc2Mmhy?=
 =?utf-8?B?RzM0U0p6a285OGlOYms4Q3ZKS2ZjSEZlQ3Y0RjRiOGJuSTIyVnFKQ2tXL3RS?=
 =?utf-8?B?UFRuWENxQ1EyZHZobUo3N29McVdTUUVqenFpMkJhWjV1TWlmNXR2Z0NscDVZ?=
 =?utf-8?B?Q0lyYU8xeWtFWHNQTmZQWXU4S3NkWDlSVldIMStoanVXM09yK3BTYWNxeHJs?=
 =?utf-8?B?N0tsZXRGV3JLME9DSFBOdmRpOEV0bGkzNHZMTVpBaVcvd05IYXl5Wjcvc29a?=
 =?utf-8?B?Sk1TRk9sQ3dFWFNjVUp4eFNQaGxFVjY1eWFJb0g2MWsvd3hBTWh6ZkFVRW9n?=
 =?utf-8?B?KzdndUhXQjMyT01hbVZEelh4N0tEQTV2Zlh0OUpxZGI5SEROMDQyZ2lFaFQ2?=
 =?utf-8?B?MlZoVFFxQzgrbEZTQ3Q0cFVsL2ZkQUFtWnVnOTR0Q1MwSkRWeEJGc0RhVldU?=
 =?utf-8?B?UU84V3NFUmh4S3J5QlZKY3IwTlVGY2lnYWdvcmE3WFlxQVQ3eUhwUzh2a2J0?=
 =?utf-8?B?bzNDWnNrYzVQM0lWSy9oL0I0T2JFdFo2UDBrUE9GU3RIdDdJUEdMRHVENkhz?=
 =?utf-8?B?ak1ZRnFBeEU1SVpYelRoSEFNWUdBQ0ZlajA3OTMwelVLa1dRYmwrK0Z2dmx5?=
 =?utf-8?B?ckdKVWhUN1JlSDV6ZCsvakh2NFRnSkFoVHAyYlllRmo0SnNoZ2prWTFqS0Fs?=
 =?utf-8?B?bmlXZXlFVDRuRWVpYkFCL1pwNWdBVjFWdFdQVXZLbkFpZExtVzdMckRicUVu?=
 =?utf-8?B?U2c1MEdScW5MOHBZZVF4TDZhZ2tzVFl2eVpZandRMXRJMjBDYmY2ZnVtaVQv?=
 =?utf-8?B?SVNKTFZqODFtUW5JRUZtejJ6QlU1UXp2ZUVKQ2lhSm1xWHZOUmJEeVpCdnZj?=
 =?utf-8?B?ZDZJSkM1a0FwYzFwMXVRdlpReGF4cGpGeTFvSHhvM1ZTdUExQ01Mcm9SZjNm?=
 =?utf-8?B?eFNnRFVTZXlheGVaK2ZKR1RqNjhCZ3hxN2dCaVhzNkZZdERzQnhZUENJMGM5?=
 =?utf-8?B?c2RDakcwRklvdEV3dC9TcURva3Y5V1MxZWpPSDBwQm1OWm9kaVNCazA2MmNL?=
 =?utf-8?B?L09lckZGR1RzNG1xcjIvWjhvT1QreVJPWkVXNEkvSFZ1WDkyZU13dzVPSk4w?=
 =?utf-8?B?Mm93MlVjSWpFZlRVSXBIVmxqUGovYWkvaEU4Y0ptdEdOMmRLZ0NIN1NRUzN5?=
 =?utf-8?B?TjdOTkNDNm45emNPQk95M0tqQXVIYm9lVThTU2N6dE01V3c5dXZhL3ljTytl?=
 =?utf-8?B?cDZLczR6RTNUMkJuSmwvZHNNWElhdW1uQVRTUTM3Q3c2cVh0YXk1VFRpVTVK?=
 =?utf-8?B?Nk0zYWtNR0pBR08rak1OcUU0VnpuYmExcTYwQ1hWR3hYWWtZNFBMTXhwMmMy?=
 =?utf-8?B?azViSngrNGtEZ3dRZWg2MGJvakk2aTViVDZIWkZIcHRRcVFSd1FFT3JyUVFu?=
 =?utf-8?B?VHp4RjJrK05QY3hkajkwQTk1SG4zRTJNbTc0QnovbmtzTWZRc1Z2MElvd1Iv?=
 =?utf-8?B?czdKQitCZHVjaWthY0ZCdkIwRUJ1cjc5dE5jVkt0d2hZWHYrRmk3eCtMeWsw?=
 =?utf-8?B?ZEFJTlZIQXh1dlhtV3dTWGQ0aXpjOEEwSk81MURwa2V2THI5TUgzU1BndGl6?=
 =?utf-8?B?WXI2ZkJ0a0RGTXdCL0pHWW8wblhUUkVUK296aWZ0Y3p3WE9wRjltR2ZicEZk?=
 =?utf-8?B?a0lpeWpHTjN0STV1TXVjMHBtMkU5L1FkN0o4dStpZkhmbDR0N1dacEZOUU9C?=
 =?utf-8?B?cDkrN2hiTTFvZGRPS1ZkVC9NSzNQZW9vc2pyVjZvdTZkWnpnNFE0VTVPY21m?=
 =?utf-8?B?Y0pWQXdhdDdJZW91M3BQdGltdFBmSnpGdVpVaFNtbkY3MmVhWGJvem9BNXV1?=
 =?utf-8?B?V2o3ZWdLR1Z0bGFNUHdvZktCVHpHWW1CR1NGdDJZcWhDdXlNUUgreUtrL3Z0?=
 =?utf-8?B?NFhzYlZLc1YzK1NXdGk2bFkvZTEyd0tUZmx3bFlEUmN0UWtHQmJTTHJrOWVh?=
 =?utf-8?B?RU9hbk9xeFNTRE93OEhWNnVPeWF5eGlzRXZaSFAwcTFQT3BURlQ1UlAyK1ov?=
 =?utf-8?Q?5EZheNzuYJq8zjz0=3D?=
X-Exchange-RoutingPolicyChecked: Ob3UcFLjqZoGyEK/idlYnrumRLDW135w9drnm0169tzO/EQ6awNYQzMhNmCKWjKY6ct58HsAa3ek56omYmnnfOtciVns8L1Tx8csQNslkVPKB7Amd22Xn0W03ffeyFIgUBg5Ogv7YxAtYe+l2/noqAg8T1eIvxm863ruqPq2LnuMSFrJUAfe4ZxVeuhlL/yUZ0OcVSFPfwnD6CL5g4IMy8WV05T6N02TCV5jSeq2mP/olnJI/nYE6L8yRPjnBS2jyytYn/k3WeRAOITIfQUl6pAuA75YmdoodtTP750zskZzMmoe6BnF4vYFc/y5qnpWOgA5DCJM6mul+J2jtYGAkQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a36f2c02-89f2-47d4-2140-08de9b350ed7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:22:12.0931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ySspo5xDq9md/HDrJa0kXsdo6tDc34quqyW8oxm+PBRnvvTz0fx6h4jAGcX8lASyChay3OyQecFOpuiVtTtWQB7d9KWGrJEoCTquevAw2NQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6097
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776288140; x=1807824140;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wOGIyK7IiwHlM6WYHbn/I6t6QUpO+YOjlB9YY6+9sB0=;
 b=av8AzkPbu3XZ9QMWIn0BnDbD/WjRyxrJghyRcqDF05DM7b4aGYy15Hco
 OtEaH89ShO1bzWTAm4MKzdeF7w0uXbvq4jJIgbO/waA2hmTWHQauDkXJ9
 yjTcqBIZHRRnk1RbmU7lfY1s1bjkYY9bg9v/EUnQMA09FOEtbkL7rvrr9
 yYKtyq15N+q/lps2eyxZNPpXGAbvPCYcx+xHAibqSw38pQBwhbecOf+am
 yI2/PQ2RWkQ2X6kFo90sHoTN2VrqCNAea7yivVrjdwHcl3KjkYxofqg3b
 w2JAsJGtrR9VSBihg68gto1JBcS/iJJsWZ44XdKwR/kuTPF3ZAeeXY8j0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=av8AzkPb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:razor@blackwall.org,m:daniel.zahka@gmail.com,m:paul.greenwalt@intel.com,m:david.m.ertman@intel.com,m:michal.swiatkowski@linux.intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,blackwall.org,gmail.com,linux.intel.com,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: 3EF50408225
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/15/2026 9:30 AM, Simon Horman wrote:
> On Mon, Apr 13, 2026 at 09:14:20PM +0200, Petr Oros wrote:
>> On certain E810 configurations where firmware supports Tx scheduler
>> topology switching (tx_sched_topo_comp_mode_en), ice_cfg_tx_topo()
>> may need to apply a new 5-layer or 9-layer topology from the DDP
>> package. If the AQ command to set the topology fails (e.g. due to
>> invalid DDP data or firmware limitations), the global configuration
>> lock must still be cleared via a CORER reset.
>>
>> Commit 86aae43f21cf ("ice: don't leave device non-functional if Tx
>> scheduler config fails") correctly fixed this by refactoring
>> ice_cfg_tx_topo() to always trigger CORER after acquiring the global
>> lock and re-initialize hardware via ice_init_hw() afterwards.
>>
>> However, commit 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end
>> of deinit paths") later moved ice_init_dev_hw() into ice_init_hw(),
>> breaking the reinit path introduced by 86aae43f21cf. This creates an
>> infinite recursive call chain:
>>
>>   ice_init_hw()
>>     ice_init_dev_hw()
>>       ice_cfg_tx_topo()         # topology change needed
>>         ice_deinit_hw()
>>         ice_init_hw()           # reinit after CORER
>>           ice_init_dev_hw()     # recurse
>>             ice_cfg_tx_topo()
>>               ...               # stack overflow
>>
>> Fix by moving ice_init_dev_hw() back out of ice_init_hw() and calling
>> it explicitly from ice_probe() and ice_devlink_reinit_up(). The third
>> caller, ice_cfg_tx_topo(), intentionally does not need ice_init_dev_hw()
>> during its reinit, it only needs the core HW reinitialization. This
>> breaks the recursion cleanly without adding flags or guards.
>>
>> The deinit ordering changes from commit 8a37f9e2ff40 ("ice: move
>> ice_deinit_dev() to the end of deinit paths") which fixed slow rmmod
>> are preserved, only the init-side placement of ice_init_dev_hw() is
>> reverted.
>>
>> Fixes: 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of deinit paths")
>> Signed-off-by: Petr Oros <poros@redhat.com>
> 
> Hi Petr,
> 
> I don't intended to delay this patch.
> But could you follow-up by looking over the AI generated
> review of this patch on sashiko.dev?
> 
> Thanks!

I'll take a look as well. I recently included this fix in Intel Wired
LAN update last night, so hopefully nothing too problematic...

Sashiko says:

> While this code wasn't introduced by this patch, the restructuring makes it
> more visible: can this cause a use-after-free if the nested hardware
> initialization fails?
> If ice_cfg_tx_topo() triggers a topology change, it performs a CORER reset
> followed by an unroll (ice_deinit_hw) and re-initialization (ice_init_hw). If
> that nested ice_init_hw() fails, its unroll path frees hw->port_info and
> destroys control queues and mutexes.
> Because ice_init_dev_hw() returns void, it swallows the -ENODEV error and
> falls back to safe mode. This allows ice_probe() to proceed with an unrolled
> and freed hardware struct, which would result in a use-after-free when memory
> like hw->port_info is accessed later.
> Should ice_init_dev_hw() be updated to return an error code so the caller can
> abort the probe when base hardware unrolls occur?

I think this suggestion might be good. We fail in probe if ice_init_hw()
fails regardless of "safe" mode, so having init_dev_hw() also fail if
the reinit fails makes some sense to me...

Thanks,
Jake
