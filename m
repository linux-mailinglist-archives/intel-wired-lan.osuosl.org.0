Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 328CDA8440E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:06:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4CA660E02;
	Thu, 10 Apr 2025 13:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOAC9t-inbRU; Thu, 10 Apr 2025 13:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DFB460AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744290387;
	bh=fc66596yFrw6quDUlXTsHorM/6cF/GHNvHbJ8O7aMe4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uUCsk5AxWO0ihUYhKtKn8fRon1W/nqNdYFKxHCIyQ0jecQcjbhAbGYIRyTcIxM4c8
	 L1QjwGxvtK/tZAJltL7rGEaPG9Si3ihoOxghLMC+hxLQ7+XQd0o33GT27JL9TuB17+
	 bzYdvxk4oFIXvLKuUdYEHidVn5nE8Bjirr7sl5XrqLPT7zTco6fRdJb3C9oTVxBZ/+
	 t5stKew8CjryPNLtvDNMrBFA/qiQjjhNZBCe4+1KucLhPVDIsnWFeYDtNfwPERmWC3
	 aB6ECxPBTwfa0jXneMoK6tpa1/9gmO11dlxLgv0n6My0E3ozY5Qcq2lRGupkOI+Umy
	 7vpF9kbqBN7ZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DFB460AE8;
	Thu, 10 Apr 2025 13:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D2C76201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B633D82BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jeANqLv6hoQc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:06:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2345080BAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2345080BAD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2345080BAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:06:22 +0000 (UTC)
X-CSE-ConnectionGUID: CqvME5ngSr+F9JVzb0lJ3g==
X-CSE-MsgGUID: Q46baca7TvK7wk2v2hpVkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="63352589"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63352589"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:06:09 -0700
X-CSE-ConnectionGUID: IpQaao8CQzCAn5HGW+enBQ==
X-CSE-MsgGUID: EqLrTjGdQKqsZgMQm00Mvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129744731"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:06:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 06:06:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 06:06:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 06:05:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZuhkvXr2odbJW81QXxWLQ2Cjnn4XD982+3/TRWc+zdDru1GPBn3YAP+usqjbj2/RSWbLFDSsCf/lOUccU4s0c33cWQ/sxLpiVcsEYE8H5mKEieVq7dzuUeXWNlvUfl1oBmJdqhzj85q/R9rb1BN1oSEp9FzaNhRIzvBgkg2xRXcYLRpU90ahwdDzO0ggq3eNdiJGjB2lhtzxaMwfRlmCCqdyw8toiumzNwvTKQ4yAA+EyVKX9sasXeHdvqRXfjnC3azftp8KRDo6zjPUWitxtVTBxsMae/ET+T9wZeNAu94yA0B1VjZNyAyGUX/DxVA/iSV3xpcbVUcvtSq4Srl5ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fc66596yFrw6quDUlXTsHorM/6cF/GHNvHbJ8O7aMe4=;
 b=hKiROgaY175cn7gRD9hp5f1+ax1bKaIr32r0Z1ojxYmnz7lVmgku6Ue4INb8WLbsRRQA+cb7z9mn+MQ61cFg4YMq1i38vz3twu0DQT4wa/5CrHykRi5uC2qhhOTVu/ZDy1YnbmmewLXhuIqKEVMEaWw16C0hi4snKfXCACL+2YiKseLvE5kSK8PouPVKqyO+doZZ7qshHLYAQRLTL8KZiCjgTviIDK49/cwGSHXnnvP0dD+d5rIQdXx7Zep+b2nRaP3Phnnx5n21rRXr0V3+/r2aJtBqNMC+uB2DZUMueXE9BBte4ViwgDCfxgJkUCq5wTbZns/Peqhhz9kg8bwFMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB5207.namprd11.prod.outlook.com (2603:10b6:510:32::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Thu, 10 Apr
 2025 13:05:28 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 13:05:28 +0000
Message-ID: <c1ff0342-4fe9-44ec-a212-9f547e333a5e@intel.com>
Date: Thu, 10 Apr 2025 15:05:19 +0200
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Larysa Zaremba
 <larysa.zaremba@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, Michael Ellerman <mpe@ellerman.id.au>, "Maciej
 Fijalkowski" <maciej.fijalkowski@intel.com>, Lee Trager <lee@trager.us>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Phani R Burra
 <phani.r.burra@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250410112349.GP199604@unreal>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::24) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB5207:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f36188c-4e61-4579-d12d-08dd78305d63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Sk91b1hHcGdBMysyOE1YVERhWTd5QVlHT1graGM5eHlZY0hqQ3dvdURyU3FW?=
 =?utf-8?B?SHY5Y05iVFdRU3NWYUxUSHljNW91ZUhtNTZ0aHFGTDJhclRHRUlWcXlNV0Fu?=
 =?utf-8?B?NWtMY09hODNHU2dtOS8yYjdBK3FNWkUzLy81TlVQUXE0Qzg5UTFDQW9EeEhK?=
 =?utf-8?B?MG4vMkpOZUtWS0ZtS2MxbUJzYjdDWk1PUDQ3UVFhWW1qVVBFVWNGMFVnMHd3?=
 =?utf-8?B?V3BmV3JNWFJ2R2Z4SDh6ZUtmcjhNdG1iV29qVVRISG5aQVRLRFBaRWE3Q1lW?=
 =?utf-8?B?eWIxNzY2aDA2NVpoRDR1WXFpa3UxMmxpQytqVHQ0U1loL0JJM0xxcnpKeXNE?=
 =?utf-8?B?c29NNGNTWWd2UDc1MzRNSmY4dGt4Q3gyU3E5UFJSQmxDR01rOUsrR3hLbzRh?=
 =?utf-8?B?MkNxekxYRFo2ZUJ2R2dUZDlXWmpsOVZ2ZUx1MlB1RnpHNVpDREV3UXFwN1BM?=
 =?utf-8?B?ZHk1aHFER1ZvTTJoMTFtQnhuQnZyeU5PU2YyYXllZVFUc1BHYTNhaEJLamVj?=
 =?utf-8?B?M1I5QmxtSVF6bzNwOVdkeVRjQXZDamtjaS93YXoybUJpR293aGJTRUJsMy91?=
 =?utf-8?B?QXB4YjV3bjFCc3REeHN0QjVtNEVxeUh0cmRLTlZ5NzhiTUFGdjZ5YU92akQy?=
 =?utf-8?B?L2FOR3VQMFFYZ3d5VEY2eVFlSzl6THFybG41aUNYVkpUUzBwNHp6QVhVclYy?=
 =?utf-8?B?dnFoRnM5SnBvOGhCRmdGU3VnaXRENW5IckszakR3V2Rmc3IrTUsrQmlDUWdp?=
 =?utf-8?B?czkrZjVCSFBNaWRzWTN6ZnMxUHp1SFZrb2E2Q21Mb0dWR0JBcVpzeGt3c1c1?=
 =?utf-8?B?a0lGcTlLYUFmc0tlc1NPODRzdE45WGQrcFBuRXV4UHBPeWY5NkdMSTVWT1gz?=
 =?utf-8?B?SmJyNWJIcUhYK0lrRkUzM0dGeHBFeWd0WjJ3ME1tanZFZmlaVEdxRTEwTUww?=
 =?utf-8?B?WmtNd0FqMmdSNkJqNkxUU3h2aWxQcXNqV0h0aGxpd1UrNWtQNFdyVXNFSFFl?=
 =?utf-8?B?VVhGcGtOK2hpNmU5azJ5cW1aQmxOZTZoYk5GL1Nrd2RoeDFPZkFxZXdrR1hQ?=
 =?utf-8?B?eWZyNDR5VnFZUHVMUXFab2xJdU8rSTl0ZlpzU0FIN0JRRWt1Z1d3SlN5UjV6?=
 =?utf-8?B?TE45TWphL2FaUXMranJhNDgzVkhsRFVmQUp6YnA2QXlOMHJlSjFML3VUc0k3?=
 =?utf-8?B?Qnl5VFRFRUNyekhkSzhhaTJBQzFGb1NWci9kUFBZRUt2ZWY4endwam92Ni8x?=
 =?utf-8?B?MndYUno3Q2pEL25ZSWJFR3FmUlZsLzJRa2hsRlBKTWU2TXZzcG9CcldlakQ3?=
 =?utf-8?B?UnVMZUNIbUhtWTZvWGk3Z0lIZUVhS1JKQS9ZMm93RGc5WHhqWm5nbVFlUEI2?=
 =?utf-8?B?SEw1Zmt5R0NKeXVDZmh0WmJzRXlTY3hUc1pGdit6R3pOYVBtazF2ZUFkcE82?=
 =?utf-8?B?Wk82WlgxUlI3SVpzdGkwNmlJUTk1MUE1VUN4TWpYMHBOdWhUWmYvWUVLMGRp?=
 =?utf-8?B?RGk1blVyZlA0VGpyWkpQOVN2NWVHeUN2VmNISWd5ZHFLazA5ZSszdW9oSkcz?=
 =?utf-8?B?SnZyVENLZFAveWhNaTkrZjJXcmVHQ3pTajBEYkE2d2tTU05qV241Mk9sRDBU?=
 =?utf-8?B?U1k4VjFPWlhUZDRlODBTQU5KTW1iM2YwU2RSVTF6SGsvelJuUUMwNUswbHVx?=
 =?utf-8?B?RW1LUnNLUlp0WVFVQmF2VmYwMkt3YTBVdWdKZnFGTGdEOXFjSEFWbjBwTllm?=
 =?utf-8?B?VnRvc05RdzM0YitDeFI3azlCRnhCUVdGNE1PYjFKMTFqNmdGVXplSkFVRVc5?=
 =?utf-8?B?clliTk03cm5iYi8vRHNlcWNuUDZvdlNlQ0pqRVlxaDhGK0xlbURRNkhZbHpZ?=
 =?utf-8?Q?bLpy/XMGDh8tI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zk11NUhQRzFlaThrdEtMWityYk9wYXFKb1FhRU5pVjU0N1gwaVFhaWE2ejNO?=
 =?utf-8?B?QVpCejBlUzUwb0d3NlpYZThIbUYvYVhqT3dYamtSM1VhbjNUN2J0TGQyR2Ja?=
 =?utf-8?B?b2p2cHN2a3BMbFpTRUk5YlByZ2VMeGpnNlpCK2tWRmhPR3daZmdVYUpHeVJP?=
 =?utf-8?B?biszSUxENUs4N3ExNXJoVzlEdnlIY2NqazI2bE9sS0QzYUJ6WW1xY0ZBOGpa?=
 =?utf-8?B?S0ZmOTFWdzRTYS9mVUxDMDlLV01JUU4wam13Q3FHbjBwcGJnSEdzZFk3TVp4?=
 =?utf-8?B?Q3dMSm9FelpVQko3YnROaFoxUEl2WmJVdjRJZWVUV05HampuNjdHbWZ2dGpP?=
 =?utf-8?B?LzVkYjh4MDhnNTg3VWdMVjVzd1VaTE5zVmhmdDUzY1QzOXE0RWgyaEt0ZEt0?=
 =?utf-8?B?bjR6M0J0S1lZZGJPVWRjR3FxaWpnQ01WWkxBUzg3cEhEajJNTU5SMXBFSnc0?=
 =?utf-8?B?UUJCZGpVcVJKdUxJWlRoY2hZMnduUFI1NUgzQWMwMWhJUlJCWDdOZEFRdmdU?=
 =?utf-8?B?UTg0MFUvMTdqUlFoZXVCVGtnT2h4aTI5RU5pY2hpZVJNRWlNU2dZdXVsL3Vh?=
 =?utf-8?B?QTEzNUhnNTNMZDlFSjdzU3JEaFJkV1IxTUd6b1NUMk9pcWZrTWlJTGNvMFdE?=
 =?utf-8?B?a1pDZE0zNDB1emh5a3cvSW1IUU5FbCsrbWNYMldSOVphd0JJeVcxT0NjSnhU?=
 =?utf-8?B?K1ErYWUwenFqdGkwdDhvSkhYdWRCVVhDT3JiYXVqd2V0K2FXTUhBek5heHJL?=
 =?utf-8?B?dGVJMUozY2RiU2ZpaUVnQnBoSjUyM0tmMlhza3JDWFlQL3Mya1ZCWkdSRlUy?=
 =?utf-8?B?ME9uNGI1RDVLOHh3TlZFQ1lFMzlSZVd4NUlzTWxraXVEa2ZNQmUzUW8xWnRH?=
 =?utf-8?B?K3UrbnN6V21YNDYxZjBrQVV6OHl5cWF2c1dNVGxJc25ramFNRlhxVTVEWnc3?=
 =?utf-8?B?UnBlN25TMlhpNXdHRzFIQ3lsZnRXUnRKYk4yTnVDNCsrN2w1QVBhQmY0VkJE?=
 =?utf-8?B?bFA1VThqRHcyMXVqMnF5Ry9wUXBkb3FvOFpTVlZDKzlXQUVwaXV2amJqaVJq?=
 =?utf-8?B?Z2hjaVBzRE00R0NPYjY1eXY0QURsU3ZhYUVvUTNMNmg0NDhaSFdLMWplTXBv?=
 =?utf-8?B?eXNxQUJDKzc1OURkRzlUTlh4U09nNy82bTU3TlF6cTlEc3lxdGdRSU04TUlY?=
 =?utf-8?B?aURzWEZ0K09xUUdpWDREbXJxYlovSmxmK0lpZ256cDl0N011SnYwdnFvRDF1?=
 =?utf-8?B?bHh2N29xZ05TM2VDWWszSzI3VUVnWlU3TjUrU0x5R2hrNlFsU2J1ekFLangz?=
 =?utf-8?B?dWZEWTJzOFFjNjhtTFM5OFBpNnpXcXlQWFE4enkzWTBmaVhHTUtxdVZ4dXMy?=
 =?utf-8?B?WHFmcGVzb1RHQW5wZlc1WURyZnAzcFVDTnZvV0crWXZZVUFXenQzL0lGZERY?=
 =?utf-8?B?dzZnOUs2cFkrblg1NkpEdTgxN3Y5OS95OU15MmJCNzFpelBOYlN2Z1BaOTgr?=
 =?utf-8?B?eFlvdjBEYUhwSEM0SVFhUnBPSVRYemJnZXNBNVhrWXc4Q3QzRndBenJRbUdM?=
 =?utf-8?B?VDNoL0pTR0JOVkZnbGh1a0hDWkFKb3ZRVStiZXJacmRJSVJtRURjUXlMaFE0?=
 =?utf-8?B?UEttbVdpRENJN1NJRVBDWUtqQStxVEs2bmpwSUpIbnVVV0Jad3B2dklUUzZj?=
 =?utf-8?B?NUNlNVJNSEtsOHFaYklhaDhQQ0xBbmp1aGFycUpDNTdTYWViME96L0RoZkto?=
 =?utf-8?B?K1NnYk04NkZ4cU1vcEFhaFM5SjVJL1hXNXhzcVA1VnlFOVhSUUZMQ0pUd1Q2?=
 =?utf-8?B?bCs1UnR0TzVNYkgzdjVqQm92aWcrei9UZ3M2cThYRDREbFBrWGtWOHJuS0Z4?=
 =?utf-8?B?ektDUTJEWUJGeUVUNnlmbGN5alJyZWUySUc5enZ0YkFpWjE5eVdJS3J3WEJn?=
 =?utf-8?B?MmpoelJTK3RQMVRXc0FGNWdnSzVZMjFBZitjT0QzVFhLNFJ0a0lBb3pSZjlI?=
 =?utf-8?B?R0Y5SEQ1dEo5OEo0Yzl5TEVPUGNZd3d5akk5eTRvVjE3NDMrVVlvbEtKSFBQ?=
 =?utf-8?B?RW9IaUZ4ek44akpka3RYNmlKa0sxZWhyc1BJMUU1Qm82dUdCQUhLTjQ1VmRz?=
 =?utf-8?B?dWtEZzZNS3QwTFpzUEgyRUpBN1JVbHFhOWNZWlhqbmxlS2hjTkFSdWZsZTg3?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f36188c-4e61-4579-d12d-08dd78305d63
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 13:05:27.9886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MEN81KI/dLI2cPbNO2vvlVJ0cLCg5VuaKQfqUl/mjXTWoeHjHB2pDcousKFs3aWSZRzcDCWAqRLsCTL6BGzdWIIqF7wi59PCoyCGs3KGjFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5207
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744290383; x=1775826383;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u3ZLje6ThfTkBRLLQYowS7iXG0lbQ7/cuY5NoM5llJA=;
 b=Edi7nIQbFTe0mJgasqj0AdsP+K8K0gbZ8P5/cgdb7vDHp0GE3xtiQS7F
 tJAhY/lciFJwwMeYrp6YiESwKbXZStJO9DT77fIVhd1spqcJiUYfcYkpi
 gx8T/qQWSXznRnJn5LIKPEx4E5iG4UvnhGWszxyKbUWE6Lo9a28zPFugD
 N6kCVBp44LlpVVgIz+0NDEXtbweiAYTvBW1Q/oKjFYQDOZL7LKVCxne0E
 F51+B9IeyciK4ihLWe3/yg3jRJ5goPtMkcGeN+NyD3vyFj2sG26V+K1k1
 ZByDTlEqm60lD9jqw99dA+XQmoksuGCnJvyjC1PfXE+/bvPlhJfCzl8ty
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Edi7nIQb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/14] libeth: add control
 queue support
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

From: Leon Romanovsky <leon@kernel.org>
Date: Thu, 10 Apr 2025 14:23:49 +0300

> On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
>> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
>>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
>>>> From: Phani R Burra <phani.r.burra@intel.com>
>>>>
>>>> Libeth will now support control queue setup and configuration APIs.
>>>> These are mainly used for mailbox communication between drivers and
>>>> control plane.
>>>>
>>>> Make use of the page pool support for managing controlq buffers.
>>>
>>> <...>
>>>
>>>>  libeth-y			:= rx.o
>>>>  
>>>> +obj-$(CONFIG_LIBETH_CP)		+= libeth_cp.o
>>>> +
>>>> +libeth_cp-y			:= controlq.o
>>>
>>> So why did you create separate module for it?
>>> Now you have pci -> libeth -> libeth_cp -> ixd, with the potential races between ixd and libeth, am I right?
>>>
>>
>> I am not sure what kind of races do you mean, all libeth modules themselves are 
>> stateless and will stay this way [0], all used data is owned by drivers.
> 
> Somehow such separation doesn't truly work. There are multiple syzkaller
> reports per-cycle where module A tries to access module C, which already
> doesn't exist because it was proxied through module B.
> 
>>
>> As for the module separation, I think there is no harm in keeping it modular. 
> 
> Syzkaller reports disagree with you. 

Zero proofs.

Kernel loads modules under mutex, patches relocs etc. Circular deps are
not supported. I've no idea how that possible what you describe.

> 
>> We intend to use basic libeth (libeth_rx) in drivers that for sure have no use 
>> for libeth_cp. libeth_pci and libeth_cp separation is more arbitral, as we have 
>> no plans for now to use them separately.
> 
> So let's not over-engineer it.

Let's not over-engineer Netfilter then and compile it into one module?

I don't want to load _pci/_cp when I load something different than idpf
or ixd, it makes no sense.
Moreover, libeth and libeth_xdp are still generic and can be reused by
any vendor. _pci/_cp are not and won't ever be, they are in the same
folder as generic libeth only to not create more folders. I don't want
to link everything together.

> 
>>
>> Module dependencies are as follows:
>>
>> libeth_rx and libeth_pci do not depend on other modules.
>> libeth_cp depends on both libeth_rx and libeth_pci.
>> idpf directly uses libeth_pci, libeth_rx and libeth_cp.
>> ixd directly uses libeth_cp and libeth_pci.
> 
> You can do whatever module architecture for netdev devices, but if you
> plan to expose it to RDMA devices, I will vote against any deep layered
> module architecture for the drivers.

No plans for RDMA there.

Maybe link the whole kernel to one vmlinux then?

> 
> BTW, please add some Intel prefix to the modules names, they shouldn't
> be called in generic names like libeth, e.t.c

Two modules with the same name can't exist within the kernel. libeth was
available and I haven't seen anyone wanting to take it. It's not common
at all to name a module starting with "lib".

I don't want to send huge patches which would only change the prefixes.
Nobody disagreed I can take this name back when libeth was taken.

+ above, anyone can reuse the lib, it's pretty generic, except for ixd
stuff which is isolated. What if someone takes it tomorrow, send one
more big patch which will revert the suffixes?

+ no offense, but I noted several times during reviews of mlx5 stuff
that lots of functions within the module are not prefixed anyhow and may
conflict anytime with some generic symbol.

Thanks,
Olek
