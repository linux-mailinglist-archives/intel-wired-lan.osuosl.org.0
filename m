Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE54DA7DF47
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 15:32:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0116A40656;
	Mon,  7 Apr 2025 13:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CqzVOXUqey9n; Mon,  7 Apr 2025 13:32:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67D844063B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744032721;
	bh=yf5pDnCqGOe+CLI59EG3esHuQaYB+2s/FA6IOcrZsGs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qb9qd/v5AHhwtAG7mpRY1Rkq1K5x6uYNaHs3CsRHaPbOSx0eQi36ku0NxywYCIw5k
	 YvR4AZPeO7YEh3YQL/RBzzlEKIu/SHTFGSucDdHb1y8iJ1BTdhVxLT5DiSm8SG6aM2
	 ZBfUwvIWPDQ6g7/m3By38WtCRYAN3zSdfT2siji+GBaG0bnssM/oZG5t+nUQkHOHeE
	 y+c/gIkivPSpis5gMZ62ykiSKlL90cHGn/iScBREUXXfui16JgivEApFiq/25/8fHv
	 glgQb12Te06rWivrWvOBEy5rO7w3WJ01a/bv3c6DUPSbl5pj9Dz5i0gQHceGofR4N2
	 ZArMdj6RitIEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67D844063B;
	Mon,  7 Apr 2025 13:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 88C88DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 799DF608AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JSXlngWEpb_o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 13:32:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B44C1607E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B44C1607E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B44C1607E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:31:59 +0000 (UTC)
X-CSE-ConnectionGUID: UryiMoeTTQiHjY+vPUdtCA==
X-CSE-MsgGUID: 4ey834iuSWupAlws0zDuPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56056074"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="56056074"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 06:31:56 -0700
X-CSE-ConnectionGUID: VyXtStJWSHimSpBHnFXmqw==
X-CSE-MsgGUID: tqwFCNy8SEuuo3aMufbbOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128290235"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2025 06:31:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 7 Apr 2025 06:31:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 06:31:56 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 06:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dGsAEzF+TrvUcUeosoYhC77UAw4Y3yoOH1KRz7VH+w6DSxbbQGBDsiTSgmdVvq5yK5n3AW0vrdJKHWynHO6eGU9FmT1NrSfH/D5a/Rf+uKoXEwGrf6QxF+2JIqaAhv1bXchtzcXtWuV7FFmJB8hbVCFPDzMctxaDjKKt5U970tcZpym9tpF4SMFdyDKRftKaT9qo/c0LNLCX57PcYPcbQZrA3gHlQKoq4dVCtMuyXAqFNMqvdu4HyeDRIoab2c9AXqy9PV8qKqMQ0LqETHrOnw0KPfED8FgpJ9VQ/ghufBvGhJc/hsed5lKxkB5y+1nT+/TZwChBbhgSR7gWQ0Mdmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yf5pDnCqGOe+CLI59EG3esHuQaYB+2s/FA6IOcrZsGs=;
 b=BwLydzKwveIr/xmrgBHGST4Ef1SvmtQCH/ypdS4vD+Bt8BPat1Zpw7IxcV+a860rWnC8sGvFeLZZyvesxR3HKCrudj10buTRFKG7uqor7552ZbZZxdNg6XaaxfmT0bLMhEViHpbUzinxufzPPSC0WAXExiYaC2KeXUZoTME76pMckN0YzTkuR6laIYTqIqnb4QwNlGq6HZ+FF1yBdLwqnAYjai8HNQmOSwXiVi0qpMPsnHZNcz7Ay/W5vvug0Uo3/mOLEfirHwz8Y9MMP/80A0e9lB7nUE/K0WEzh53c9X92NrhhFliaKEDsk1QeLLN7IGTHUyz1E2ykFIMU4hgq2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN0PR11MB6303.namprd11.prod.outlook.com (2603:10b6:208:3c1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Mon, 7 Apr
 2025 13:30:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 13:30:50 +0000
Message-ID: <7f700a89-7058-4c16-b53a-2e84bbed8542@intel.com>
Date: Mon, 7 Apr 2025 15:30:45 +0200
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>
References: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
 <Z/O6HAm3GMWe/0aE@localhost.localdomain>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <Z/O6HAm3GMWe/0aE@localhost.localdomain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PA7P264CA0014.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:2d3::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN0PR11MB6303:EE_
X-MS-Office365-Filtering-Correlation-Id: 189cbe91-3fb5-44c8-d577-08dd75d869a8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjA5T2RnK3hCTDdKTXlJditvMXFrcGw3Sm1HMkZDUlBHUXJoVHhUVVAyNHlZ?=
 =?utf-8?B?NURVQ0RLSjNHZVN3UVB6VG04SVdZSUx3QnJYY0NsUXBjMGtBWDhGbE1NTjhZ?=
 =?utf-8?B?L1VzRVg3MWtsR3VVQXJkaytQaDBwUjZYVjhuVXdBUGVhS2ZSRGFCMStsWDRy?=
 =?utf-8?B?ZUJXUlU1cVg4YndGVzQ2c3dNYnZtRHU2U084WXhnVzhvMUlRSTZrSkYvWFNO?=
 =?utf-8?B?cW9JNW1UUGhIYndYM3U2c0VwZ2Q2SzFpL2lHS3Rsc2FGNmM2ZzdDMjgyYnZt?=
 =?utf-8?B?U2NFS3ZKREx3MnVwTmY4TXdXUWNQRzZzQWFkcnhqRytIUnJmalVmeVowaG81?=
 =?utf-8?B?Y1pWeHJIM0k1WTlSQXArd2VsdFZrTEp1Zk1BQ2pBbXZkWmpzMmlyOXpHamxD?=
 =?utf-8?B?WHBsakFIM0QvYzA2Z0FKZXpETitOVkpjOTVucXdPK0NtR2RRcCtwQy9VOXZE?=
 =?utf-8?B?ZWxLZDExYXh1cUZlSm9oSkU3TVlqWENHZ1h6V0tVTnVQamRQeWJXb0c5bGlR?=
 =?utf-8?B?R0h2OGFXV1Q2RXYzNmY2OEU5Yk02alVyZzM5MkQxUjN0T3A4QkpVYzJ0SWxl?=
 =?utf-8?B?Ymw1ZkdzZ3o1Ui9hRXVraCtUd0RNRE52cVZMenUyWmZ3ejhPcEd6QS9ZT3hN?=
 =?utf-8?B?S1VtWmtYZE5OSWZEWGl2VWNER0QwazZ2cDZESWhLVHh4Zi9VMmRWc3pTSzRY?=
 =?utf-8?B?UDZmQ29rdGFYQnExTnU3RFRzdXhweksvZ0xBdzl4OSsyRlR1WHpRdFEySWlU?=
 =?utf-8?B?R2xtdFZXeEpOeld1L1lOTmNrY2ZQM3NsK1dYbmYzcEZ6eEQ3aWVFNGZPWHd2?=
 =?utf-8?B?NTdBZzJIU0g4TTJZZEZ2QkVpUXhFTFRuVkVTTDQ4S1g2VWUyTWJRRWc3ZzNV?=
 =?utf-8?B?RFkrNHlwbnBRZE90TkRTaTBObGFPSklEL0ZtVmJ6dXJFQ3IrclY3SHVpbWhX?=
 =?utf-8?B?c1pRbml0ZWk1Ry9UcjFNUUZzWlM4djlLRWhQYkFUd2hHWlp6UjlldmRiRmlX?=
 =?utf-8?B?VTFIZGpUUlA0QXRFeUFvOThQdXdFeTBPVXhXSjRLRHNYbU5YbEFMNHF0RVFX?=
 =?utf-8?B?TlNVVmRFeHZ3VEpiNDVTOFJ3eE5hVXRSYjltYi9JN21xWlQyOTkvYVRTTExW?=
 =?utf-8?B?a0NVWjFCd1ptbGN4VlFKZ3F4ZythcWNycTEydHBmY08yelFkRTI5OWVacHpa?=
 =?utf-8?B?RW02dnJlZUhmYU1WTEd6ZytmN0RDell5UjcwZGovS0RSK2RQMjZZUlN4NUpY?=
 =?utf-8?B?bVdLODVNTWh0dC83amhzN21ibXh0NkZYb091bWVwS1hjd3VXWUFUYW55b1hw?=
 =?utf-8?B?Z1NPOGVlWmxnYUZIdlp3K1Y5cHFuOEUvS3B1ZVdDUUxkVG53ZXd0TWliQW0x?=
 =?utf-8?B?a1ozazRRd1FLYmhoaUdZS2kxb000VmJEVDJMY3JyVFUrNC9XWG1weUt1YTF6?=
 =?utf-8?B?VVU3L0loaUdNblZ5RHU1aFRkQW5nS28xR2RQT0hBVUxYZmF1UW5uMm1IcElZ?=
 =?utf-8?B?Q3JRdkRtWituV2JBcld1YzYxMitZOWpLVkwxa0tmalk3aE53SldHZEVXbGJ5?=
 =?utf-8?B?UG5LNnZKdWhkQW9telZWS3gzT25pay9lL0lkQ0E0OHFYQUN3Q0hCcm5ScFJM?=
 =?utf-8?B?SEU3YjlDazB4REVKSlBSaDFDTkpDYTV6V1ZUQnB2T0F5a1MyR2p6WWJDSitV?=
 =?utf-8?B?UnNLbjhyZHNNb3c3R1gzalpRQmdwS2M1ZXoyenplY3grVkczZUFnNTFJSEhS?=
 =?utf-8?B?NURNVU9UL2pPcTFkcjU3MCtkRTEyMU13LzZhWkdOcytNWEhqSk9MOXJVQjhz?=
 =?utf-8?B?WW43S3JRYjg0cmJEbjg3ZVNQblIvWFlUQzZYYnF6dHhOZmpCUXJ4bE13bURj?=
 =?utf-8?Q?MtjKOUVb1LGTl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkVxTUJOS0hHTTdGQVlBZjdPMzhyQ0FpUXVTbkNoSWQ3bTh0Skd1ZWpQUVNz?=
 =?utf-8?B?cUdYSno5M0hWR04xTmREWjlOcjkrTHZZT0dnRjZBUGdLRFhEZm9JQS9MYUo5?=
 =?utf-8?B?ZjJVUWJwc3BsY0RXaHMzUDR4cW1DRm1PR0pjWTlpc0dpeEF3SlU4UUdLM004?=
 =?utf-8?B?NWptMlFIajQ0cloxaVJUbFFOUzBWQkszL1FCTVVPTEZiYWJYMjRFZEhFVXpP?=
 =?utf-8?B?aHRtcXBzTExhbUtWVW9iVFBQMHovZG5ubmpPeGYwVUExdmFYT1hlakxVdTdV?=
 =?utf-8?B?QzVxOVhBT2NLRUY5aytNM1RMOFpJbnkvdTBDLy9EMW1ROEQ0OWNvalpRZjdx?=
 =?utf-8?B?U3ErUjNvNXFuQ3llTDFNN1ZlNkg1eE4yVkUvUVNjbXdEdG9Ld1lOY2lGZnFL?=
 =?utf-8?B?WHJrRkg1TXd0VC9JbVlnVGlCMFRzUEFPbVRURGN0MXpsbUlPL2lCWWJHbWFu?=
 =?utf-8?B?TEEwNzRYY0xpV0M3b2szSGdNUmhaWk1GVDMyMlAvUTVPWG1vbTViUkQvdnRZ?=
 =?utf-8?B?dm1MK2tLczNkWGNKUkJ0MSt5NysxZC9lc1IxTUhBL3JrY2lQQlMyd0xrUU1S?=
 =?utf-8?B?SUZOejhrUjVpK25jZEswWThrS1FwWmp5UEdtWDRkaDg1cW0zbitxS0IwNlcw?=
 =?utf-8?B?YURONkF0QWVWVGU3dklKK0Z6aG1LSVVqNStTOGp5Ynhka0tkcWZBdjhFVkZy?=
 =?utf-8?B?dDdNOGV4d1pDNU1uYkJLenprNDd0eTZxQWh2dEI5Skw4eEpzYVNocnpKT3Ey?=
 =?utf-8?B?NG5oMXZQVXdYTFUxdUJUZ1RLZm5uOHdPMCtUK2Y5QWM3Z1JOcTNpaFpxclA3?=
 =?utf-8?B?djl5ODlwRnhTVUxoQ3ZtQVl2T2VPMGNCRkRoN0hJSC80TVVPa291aEt2bXBW?=
 =?utf-8?B?b2hxdmpscm93RVhUdXp2UFo0dFVWcldmRUg3a1ZOYUJIa2hWakFYMXczWDJw?=
 =?utf-8?B?K3FIS3M5WG5qL1lPRUNjMU1xQ0FDVVlhS0E4UHdtYlM0OUNZVFNYcnhnZkZs?=
 =?utf-8?B?STRBaHlPQmZLV2k2ZTN6bURsM21aNG91dXBlWmp5U2xTbTB2VkJOSlFmYWdB?=
 =?utf-8?B?a3V5clA3aGk0aFdhRjJEVnlhaGsyMEpVS004UTNTR3N6T1Z6TWcxdzJrZjMz?=
 =?utf-8?B?aHRlaWRSaGZsbG00cTRWK2pTS0E1TVozZnloRFg5MS9qQ3k4TXRSQmVHRG95?=
 =?utf-8?B?ajZSYWNDWmJWcWlORTlYN0tuQzVJU25tcHk1OFVQanVzdU9xbWxMdzUydWpO?=
 =?utf-8?B?ZkFpNlRjcmpDZWc0NDQzTTJCNEhUaENESGpubndtNUkzaVN0dVZBVTdoVmw3?=
 =?utf-8?B?dkpsanorc1pEZkNsR3A1dTZLSXJlQThBcHR5c0tTMnNoTzVvVWJQbk9TK0Ez?=
 =?utf-8?B?MFpzbXpDYW5rUzNIK0NQSVV5VnhZV3k0dWY1OTdySW00UEVPd3ZJYzVRV0o5?=
 =?utf-8?B?bkhJaEFyS1NvYitjeVpOZE94U3MzcXFraVJ6ZUg1UklBMElKa1ZDRDdUTEVl?=
 =?utf-8?B?dkZwaHowbjBpc2VPT3E0WUhtRHY2MnJ2Um1QRWcyNko5ZDhNMXhxQmVpRm9E?=
 =?utf-8?B?Q0NrcWdmd05LbFJIWHltTGI3R0lnS0VncmdYWWJwM0tDTk9KdWR5NGNGOXE4?=
 =?utf-8?B?ckdCYXhuN09HMzN5V213MldkeEk5Ym93dTFrQVdqY1JEcnJZWHRmM0VMdjNH?=
 =?utf-8?B?MFRaY1QwQktocENRV1Z1MTh5d0xFazRHcndzRlhQUGZaY1pKa0J4Z3Q5Z1B1?=
 =?utf-8?B?RGYvN0Y0SDBNZkhTcXZYR2hZVmZUaWZPWnZOWTFHSk1tL1kyb3V0SHBWNnMy?=
 =?utf-8?B?dWJsZ3N4bklHV0ovL3k1Wk83cUJXYkZQcytGZWhVQ1dsN2xhbFpCbDVLblJU?=
 =?utf-8?B?REJvQUxRczVKSlZvaVZ0QXVxenlvSWc1cHdCN0lQN0RGK1djdTBrT29wdDRq?=
 =?utf-8?B?UmMrblZMUXArL1d4SWdwVUFvWFRXS1FaNHdXeVVDczJMWThoM1NiejlPakpl?=
 =?utf-8?B?czl4OE9ueGY4dnJFMDFVVVRkU3JKcnNWSkF1eml0RU95OEt2dVljSVR4MVU5?=
 =?utf-8?B?QWpxQ0c1YXZjYlZEVkZQUUFrREkwSnZuMDloSUlYL3pQZW1zQ2lyVHFFNzBB?=
 =?utf-8?B?VllkdHY0YWd3VmFqOFlOY3lBZ05Sem1rem9QR3RKRklpZnRwUk5NUzVEQ1BJ?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 189cbe91-3fb5-44c8-d577-08dd75d869a8
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 13:30:50.4928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cn2BHQcin5tsKDj+EmZftnWV4sKeluIjHoMIWHfNY8nAm+8r9pwQH9Zzj/Fxw1isASlnX/7dQumXV2Ok7R5v/yQ2DFUzaE9WHuB4JGDkjPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744032719; x=1775568719;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PGo8wvptTl5tXuraIy6UmrePI1YfH4ZGDA2F3pQs3DU=;
 b=Ue6qOtZb246OfrNhTRaAAo2TZX1u4JM8T5sad9iGIWTKbsrSgXHxmllB
 u7zpbv66aQ5mTPFrvIZ8MPWlT3U1ErV4rvUBJbB86gnk42IBXAtoh3Hye
 EM6hGtcsRhidXMjTEjcGGiiAn6gD5fP+TKnOC65ltrbYAorQNxFezEZp0
 c9haUj4oIEaCH9el+4/9ex5VNgWet+QfZBAPzFC1bOwV7nSCmhbpViNYj
 hZO1Kvg7hl4KjE4PGeA+PKSjEk+8Oem/ZKpelN3KjE9umSK4CLl/etrrA
 ESmiJDoaufGwOXTST6H3T0gIVM/nqU3W5CPUVEorIT5P1oZYviZs7WDXD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ue6qOtZb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>, Sergey
 Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/7/25 13:42, Michal Kubiak wrote:
> On Mon, Apr 07, 2025 at 01:20:05PM +0200, Przemek Kitszel wrote:
>> Use Device Serial Number instead of PCI bus/device/function for
>> index of struct ice_adapter.
>> Functions on the same physical device should point to the very same
>> ice_adapter instance.
>>
>> This is not only simplification, but also fixes things up when PF
>> is passed to VM (and thus has a random BDF).
>>
>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>> Suggested-by: Jakub Kicinski <kuba@kernel.org>
>> Suggested-by: Jiri Pirko <jiri@resnulli.us>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> CC: Karol Kolacinski <karol.kolacinski@intel.com>
>> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> CC: Michal Schmidt <mschmidt@redhat.com>
>> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>>
>> v2:
>>   - target to -net (Jiri)
> 
> Missing "Fixes" tag? (After retargetting to -net).
> 
> Thanks,
> Michal

oh, thanks, I wonder if our pw will pick the tag, if not, I will resend

Fixes: 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on 
the same NIC")
