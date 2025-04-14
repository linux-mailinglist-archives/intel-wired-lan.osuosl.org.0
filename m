Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC0FA87CA6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 12:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8724C408D1;
	Mon, 14 Apr 2025 09:59:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UOPjd4WN61yo; Mon, 14 Apr 2025 09:59:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F04C640734
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744624798;
	bh=rzsA+gy/BneyFcZYx8LmoJCRwj4mzvTpLOZRPh7fatI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8zk+nnV7qq1RW975F29nE4OsTQKvhtclrtBkpSN3Atac0SzQmP2vEU719KLpGkARN
	 4G0go5TLy72R6aFWUW6w1ySV/cZWU7tmloDaVFclqLTIOXuR7PgQM0CeNkK0r7DCJE
	 HYY/zE/2TKkYNcfGkpJ4RvvfEqLmSwapy1X6JjcBYkVM7YIYfQ5BMkeYwo/+1GHpU4
	 F5SvtGcE5hxumiX/l1M54kj8GFVEoeZ/uVBg+Phz9d3PnmelRdxLW6vvuap+3LMQmu
	 Qz4KQqyvw4Jv9hUzTc8LxRRbltisfj2xLqw1aGTV6/Dp+XDVHv7zgngvc65aWciAHZ
	 XDzkUnwuBvGsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F04C640734;
	Mon, 14 Apr 2025 09:59:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 69F6BDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 09:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B822411F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 09:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2z8DedM6vpgx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 09:59:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A503240494
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A503240494
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A503240494
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 09:59:54 +0000 (UTC)
X-CSE-ConnectionGUID: hisNEwbKRJOuha1DAf8Rww==
X-CSE-MsgGUID: J8Tj8EZBS26VnPa6YJkK/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57076308"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57076308"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:59:54 -0700
X-CSE-ConnectionGUID: vBqfMlMaR8uYevC2xE2r1Q==
X-CSE-MsgGUID: 5Dth8DTGTW2uwi81pXtVAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="130752643"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:59:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 02:59:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 02:59:53 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 02:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eJGxZdfRHOArQc4tNsTvlV9G6OJujfbVOEN5kPKOWs5lyin/n41YkSueWQTmZ2nA3+5uj8gaTyJiWuSYKBWEZreLdCUJQxFHqwcf3qa+DcONHd7/bWNlT0eM5Nq2wQGxH2Cep5fm6itxT3kHdpZTOr01L5IYaAJwAOEyeZ7yjWjWEzhzna3E3vagCc5VMeYDxLK5j4T2SQv7AUsYsgmUfIsdbY174Hge7S/EkTuRKurbs96aevA+uV38HvDkgAKD41M4pAiGr4/jXXrqOKWCAaGKnGm0DHb0SC7fH6+cKJbLl3CedVh0bfCaJ/ooqVrw1qXzexw7Wp+nSReUMDDHNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzsA+gy/BneyFcZYx8LmoJCRwj4mzvTpLOZRPh7fatI=;
 b=SU30DWQhwykb8vuPjJ+sL4J8C409nH+R07ri5EfjvHyBf+JiWHy21YwXo4WQqBWneHyYD2aaWcu9VI+g0ap7lEgreGowofEEurYUN7XJyhR6pH5UD7PPw3CaIAwwX8WDAY8zhOVDMg2VU0lO1OxZkeokddV9cPQmpx0OX7vV6XNwq/s3XWpKpK0sS+3pXcK/0Se12ErsEOVGjy4z03/lfVa44OHAORBdcBrucI/I9qjklS1vfTE8FHfkW2jwbtAEfSVxmeIpJOzJ73jaFdTmTEFV8tq/Ek7jnF3QgSAeJlL2jdzC5lXhY120WyPtyDx28hIToof+YCJqBy/y6xMVLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Mon, 14 Apr
 2025 09:59:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8632.035; Mon, 14 Apr 2025
 09:59:23 +0000
Message-ID: <7f4f534a-a9d1-4c4d-ba81-d81d9f0e242b@intel.com>
Date: Mon, 14 Apr 2025 11:59:17 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
CC: Jeff Johnson <jjohnson@kernel.org>, Loic Poulain
 <loic.poulain@linaro.org>, Brian Norris <briannorris@chromium.org>,
 "Francesco Dolcini" <francesco@dolcini.it>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>,
 <ath10k@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <ath11k@lists.infradead.org>, <ath12k@lists.infradead.org>,
 <wcn36xx@lists.infradead.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
 <20250414-restricted-pointers-net-v1-6-12af0ce46cdd@linutronix.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250414-restricted-pointers-net-v1-6-12af0ce46cdd@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA0P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB6349:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a52a5e2-55be-420d-9e09-08dd7b3b0876
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTZCamYzUG44N3VRS1hwYlZEUitYeWwwUDN5RlZnZFlqVnVha3dMSE5mQVdB?=
 =?utf-8?B?WFNQMHdDRVpVdWpSNStrNnBwaEt0dVVrVkUzTVUweTIwMXBpV2M4ZVR2ZWFT?=
 =?utf-8?B?b0FQa3hZRlZxYnN3UkU3YSs3TVlXNlY2cEFrZW5hNkJGS1g2OWhlbnRSR1da?=
 =?utf-8?B?Q0JONkI3N3NsWDBtUHNtQW9oeFJTSkdWZ0NrRGZuVkVrQnRrdVhSN296c1JQ?=
 =?utf-8?B?Y2luTzF1MWFSUHZVUHJscG1JK1czTHBUc1hjMVVucXJWcVVGdzhBYU40bENI?=
 =?utf-8?B?dFZ5TGxqb1BndjdLdEdtNnZRUWFodTAyc3psSDN5WFE2NzIxbVNCbFBwcmR5?=
 =?utf-8?B?RTBaQStxZkE1ZTRyRjRYV3pMb3I5Q2ptM3JDSGNnMkRVR28yRFlGN0M2TEcv?=
 =?utf-8?B?OHhkRFlmTjFXU0RHUXgyRXltUnVvU2N6dlQzVXlQaFZScVJnN0ZUMlB6d2ox?=
 =?utf-8?B?dnhEZnIyWmd3UDdxcXJGME92Ti9tNXdiOStyVTExNEFhbk5qV0R0bFRKakVO?=
 =?utf-8?B?WEFzN2dQbHVIaVVYeXd3aGJwM2xGYWYwdmdCc25ZV0ZFLzVNRkh5U2pWN2pU?=
 =?utf-8?B?Q3oyazgzWHlQUHYvWWJBUnJXbmtlZ1NjcmVWT0JvVnRLcHkxM2JxbXAxYWhG?=
 =?utf-8?B?TVIyRFNlU3hLWUptUVhKWGloVVNFcytoRDJzZHhTWmdwOUdMOXk0R1N4ZjRZ?=
 =?utf-8?B?dmhyZHZhMW0waGZ3L09iUTRvZ1VtV3BYZHZxZER3NU9WQURYZGo2cERWdTZN?=
 =?utf-8?B?QkdkVStjZ2RmbEE1QW01WE1naGdndTRjbTJia0J1aTRWU1poL2Y1T1VlS25V?=
 =?utf-8?B?eld1UjdQYUhQRmQ2aWV6QTcrcVkzUGd4WjMzZDNvdUFpVEF0bVFoOHZjUzZJ?=
 =?utf-8?B?TFRkQndvOWtQNnUxeTdxYUFrRmxyWGNTMlh2NTVxTTErNUlzV1lHamYvNUlm?=
 =?utf-8?B?OGZwdjNaR3pzVi8xK2hrVG91cHdFSHJTMnUyMFVNR2FYQUd0K0ZtNGJpK1Bi?=
 =?utf-8?B?RDZzcnNxZzBxeFlzUnlzcE03TnBJaHhDNkRMdVFwRmQzd1dpT3U5SnNUdElm?=
 =?utf-8?B?R2xoRkFLK0xDcWRXdEZMdml0ZzBMUUtFKzdyTElWVGxONVp6WkU5c2pvWG9O?=
 =?utf-8?B?bXBIVjVrNDBXaDIvdnh2ODNSQStIZ2NUY3VyY3BwOU5DYkhaVis1UGFxZnNR?=
 =?utf-8?B?dVo2UVkyYUVDRGRoSC9aaWgyQmhNSjIrMUVCbTgxUVpQVUFRSmZEOGxtaHJw?=
 =?utf-8?B?VXRtaEd1RmQ3WnZQM0pVK1BxMzdLNnFicXJrUk4zN1pySDEzUHhiS2xBbS9Y?=
 =?utf-8?B?c20rb3lrZXltZEFEOHpIY1BjNkdNelE1VUNIM3cwd3VncGxRNFdTanpYNWR4?=
 =?utf-8?B?TlhLTlFvQUtLQU44b0lxdndoWGlwbXNvby8wQTV3anR4bEdVTG9vN2JISFhU?=
 =?utf-8?B?a2xidysvQ29rUEM2VUJpcU8yV2NrR1pSaVNXSTRKc3FKYStDRUNsa3hvNzFr?=
 =?utf-8?B?QVh4UWk1WkdwU3Z3Rk5LMnphWk1QU1c1S3VVazl3aWhSMW4rQXQ2SWRpVGxm?=
 =?utf-8?B?RUFMK3prTlVOVUNvUEg3RGFqWFovQ1NzdVozSFJud0M4QUxjWEFYZXUwOXBN?=
 =?utf-8?B?WHo1bURxUVlxc0FkRTlvSmQ1UDlNRXNhUjFlZVNnZS9RVGJnazNTREZYTmg0?=
 =?utf-8?B?Z0lNNVhpKzIrOW1yeE5YVUkrQTRoS3VWQktoenRuY2VOSjVqOVQxc25lTlNJ?=
 =?utf-8?B?ZVFJSG1XNm1iU3hyeTcxMk9LSSsyN2VwbVoxYndMYUZlRVN6UUx0dkl0QWs4?=
 =?utf-8?B?WVJRR0ZvaWtWOUg1eHBQSXlqRzRsTEdRNTZ0aFVsbWxpT3g0bmhRd3puR3hq?=
 =?utf-8?B?TGoraTkxNmRnZ0MvQng3N1pudW0vWW1IVWRrME5OQVBycm1DWi9nMkZpMG9G?=
 =?utf-8?Q?5ePBGkyKbtw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzVXZC9qYUpxMVJNVGhSV042ZlBkQWEwdmp3TG54VE9xRFZGaXVRMHRXSkF2?=
 =?utf-8?B?R05kcW03em5QQWZUNVB4cnEzZUJaUUVoY1dwZlZyZTVrbVRFRTBhb1FJTjZU?=
 =?utf-8?B?dTBkMkk3Sm5XMlp1WDFKZDBnS1BPWis0OHFwVS92a2hBYysrckJNTy94OXgx?=
 =?utf-8?B?YWhacGFrcmFhS1JEY3RRNnVRWkdYampuSVExeTVoVWxxUUFKODI3SFhsMEM1?=
 =?utf-8?B?OGNHYnZYaXd5Mk0xeE1vUmk4Z3BNR2R2a0NRaFA0ZlpiZ09tZ2VKREJKQUVN?=
 =?utf-8?B?K0tIQjIwUXAxVDdyM25adzJQU0QwZlVwMlRRMjh0SEF3NUJQQ1RTMkx1T2Nh?=
 =?utf-8?B?Y3JlR1d4dXNlcTVleG13RXQyazN6aVE4NitJQ20rdWVSajBqd1U4U2tFdlg1?=
 =?utf-8?B?blpNVytpYjI1VGVWVWErbmo2WmVFbkhjYkovK1RiTUdBR2J3M3k4N3ZtREpq?=
 =?utf-8?B?VlB6aElLYmlFd3JYWlF6T0dOcG9qZ0JIVm9xR0U1ZVF0akl4OWE5WEUyWVpI?=
 =?utf-8?B?T1NoS1FRSjdDLzdUdFhzMW5vNnpWREJkcU11T1JzOHZLUUFqWERHZHlVK2tI?=
 =?utf-8?B?enhkNmtGMkNkTUNOTUZjWmNUNWVUMmVPalpyQlNQMzJxdDVTZWZjRHNyblRS?=
 =?utf-8?B?eW53cXJ3UElheFR5eWl3SVFnOE5TR3hZVFhVWjVWVzRKTUpabFloVHJaYU1S?=
 =?utf-8?B?OGQ0NmdhNnlzZDU3WFZjVjJ1RkE3TFpZbXBNaWM5MncvYkNHVzhQL05KOEQw?=
 =?utf-8?B?Y0tobm0rVTg3UjdiNURQa2JyaGxhSHpCYnJVbWFJVVNEaFhQRWhCOE5LWXo4?=
 =?utf-8?B?U1pJbGdEQUxUeHg1YzFpZGN4SFdaZUdmcUxoREU2TWg1NCtwVmNBd1Vuayt4?=
 =?utf-8?B?Q2Z3aXA3ZlJMWnRvdk1RVHQxVlJxYmovTzVnYmZCTWhMY0hacDAxTit2c1Q3?=
 =?utf-8?B?Yit6ZjZXZ3NGQnhsVjcwMkJWY1ZSb2hINzkveXAxVUQ3cnlLOXdSMU1TeHow?=
 =?utf-8?B?VE10L21OTXNMOE4zbXZiczBjOElkajh5SXYwSkYzUDlucFBBeFhiaUFoREcy?=
 =?utf-8?B?MFRiYkNEbnh3UWFFcFNtMUhmMG5yTHZ3TnY3enRpV1hQNnNxV3VBSVVDMHVp?=
 =?utf-8?B?Zm1WUU54TTBlVURnWGRBSFBHaGJYdWF5MUVNZzF1NVdrRHhTbEdXeVFJTmZm?=
 =?utf-8?B?T28xYXVyRWtsOGdLV1E3NkFYaVdHdjVNZmdqVXNha2I3QU9wZUI4R25tWVoy?=
 =?utf-8?B?ZUVmV3dwc0x2c3pIY2UxSlVIWktTcS9TQ3V3WEVucHI3SW9tN3ZESzJ1VGw4?=
 =?utf-8?B?ZE1peTIxZW5RcnA4VHNxaE5rVDBuT1VKZDhUUStXRWxNYjZSRmdQbktUczI0?=
 =?utf-8?B?VjVLeDl2K0lpbzFZcEp5blErNGx1SlFkL3FIUHVnQzhwNVc3UUxYYjNQWDhM?=
 =?utf-8?B?YVM2TVIveWZXcWp2Sk9pTmZTS25JVUxKcVVyQkdTK3h5Qlk3ZlJQSVJkQmFG?=
 =?utf-8?B?OXZMKzdUTk9aLys4RHZuRG90UnB6citxVlBoUzhYTzFFaWdLdWVMRXhybkpN?=
 =?utf-8?B?Tmx6MjRnc043dzZSNkNkUTR3V242aDlmdGNIaTBCTldQNml3aVpSSTBQQ0ZT?=
 =?utf-8?B?MTdpaDhIdDNkNjhjdkVtQk5kTE1mUmZrRGREUkg5VWFGamxJWEp1cmRkdU1l?=
 =?utf-8?B?eWJJeGRURGZzKzhBc2YzMUwzVlE4a2Z1WDRORityS2ZLWjdNQVU5MUdON2lC?=
 =?utf-8?B?US9IQjQyOEFUeDlsczhzOFNKUmxxVUtFYWZkcEpBb1V2VHdVY3dMOTFyY2E2?=
 =?utf-8?B?UE1PN0d1UTE0N1puOC9xckt3akJrWXJhRWJEci9zdjdNM1NFc1lMZTFCdWxi?=
 =?utf-8?B?U3RYVnBBNWZQRGVSaXhrTkErUDkrb1c3dlIxdmxjQ29oWGh4b0psMEhicTZQ?=
 =?utf-8?B?ZGtNd0d6WU5YZ0F4VmVDckdKbHN1cTdWQ2xsRHhQaE9HdTJyTXpEVXVZL2JT?=
 =?utf-8?B?aE9uYS9ScDlueUxPN0duWnI4YWYwMmdkWUM5ZkFta1d4WHFHdE13a1NoL1kr?=
 =?utf-8?B?cXMrRU5OMlYzUGRZTzQxY0JOd3RFVERFaXhlM2tETWlrN2ZqdTZRQ3MwYi84?=
 =?utf-8?B?VW83SlVUdk85Z01VR2NkMDBwbnJ2NTlGa3hoVG1CWnlTWk5ja0h4R2VOYkZF?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a52a5e2-55be-420d-9e09-08dd7b3b0876
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 09:59:23.4155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: noA4gYtUjIZPfbNK62KwoM+nr6SJNn/tMIu8w1V/REwwx+eHC3qdQDP9brhEccbpfOr3Nt12QktK3YriCxsn2pjj5FNCnwercTFDYdWA25E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744624795; x=1776160795;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CW0bfV0YMtIV2jCKF70E4H4tLVvlrhZ2qi3K6urGEKI=;
 b=kv+bTOnMbeKgM4h8qDqyj9UF2DNIELxiKBGzeJO/x6yInNpqmcuqkXCC
 kjFDtHSvsqlrQd3+ybGbjkNnes9wkAWgW/Sgf//aPIDHlJgASd5dR9LqZ
 WrLXDoNE/AOfpvPcQQ552E4+q6sSUfC/mqCONO/2k3OEnq2aKJGYSPOZN
 sbwCo8z5ZRJRz7Wo8dz33zXIVARyZOtGenqexQsADoscZbxHA7PhebIdG
 YKgJ4TN+YS0IOovgg920KfGrgMWsRyz0Rbo9LqE5k9qXT7pVwOwx1ZLKM
 e7OzB2MGVpT0jNwOTPCo6ATw2uZ6mI/iD9FHqZXkDeD306U1BJMbyBvi+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kv+bTOnM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/7] ice: Don't use %pK
 through printk or tracepoints
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

On 4/14/25 10:26, Thomas Weißschuh wrote:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk(). They can still unintentionally leak raw pointers or
> acquire sleeping looks in atomic contexts.
> 
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_file,
> for which its usage is safe.
> 
> Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
thank you!
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
