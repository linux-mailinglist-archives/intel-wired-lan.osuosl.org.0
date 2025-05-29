Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FF3AC79BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F382840D51;
	Thu, 29 May 2025 07:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FxqevwOPZ4-h; Thu, 29 May 2025 07:25:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A55E40D3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503538;
	bh=IriqYBR0acfsptXt1wLtPbl3XuhLICK/9zW7fyjagXk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LNJ2J9/hSULhcoCuSMNCFh+1LrvNB5pGK+ItXB9sKnED3MXRDoZeQ6s+6TMPKt9Oy
	 A0yDc2FESoSL7ua3vcEQap3b0WPbh2L2DdKcXyAxKu97SfuVNYp7Xb0+eulrRBlA4t
	 wPiLSDd+Ac5jr54E5iGO3FnnoDdE3nD9YdvBwZ1v3S9YH0x+ehb1dk1TkTyjRKH1VE
	 tOeQvaLBOdKhQh94uGzHWTlUZEqWe0PO1WbPvZIFlNiflRkRWI4IQ2vCCcus1rLP6i
	 Z1Rby11uw0ocl3ITBPBuVef6prm3htGHEHlyn6KLrTg5BnX7s57bSMae6LldmyESUZ
	 a+YtLb0eZKUGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A55E40D3C;
	Thu, 29 May 2025 07:25:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F86914F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80E8340CA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:25:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C0bgZ67sXXF1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:25:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C9C3E40D38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9C3E40D38
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9C3E40D38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:25:35 +0000 (UTC)
X-CSE-ConnectionGUID: 99VehmbMQEW8DFMANGeE+A==
X-CSE-MsgGUID: llyCUd6OTiK+3XTr+Z1h3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50553606"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="50553606"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:25:35 -0700
X-CSE-ConnectionGUID: Gr7TlwX6Ro+Ac4YtN29ELw==
X-CSE-MsgGUID: aKbrgqMgT+CXOlIvFsmnCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="148345454"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:25:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:25:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:25:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.79)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:25:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A9/p1+5XMdqtGGGStCw3C39+k+HbQWWQXk4HlxsbgZgUPuBR7H+TYt79E6Yket1nKNfStt5lU8fhTYuQpz9S3dOpZ9CyIXQv7MyF6SemdCL8ytFUB4/nwj2di9IbNcLAsUYDIctDStRB2xXZO639N/D/Oh+QUXgYAkYdXk3BPgb5fcVOF80c49VtYyJ3K4rZlLBlRzEU94N75tJcaKlYXlfwNubkNh5Wcp0+kzWB2gZthfQQVMVUAcLl3AKD4ezQ6DfyuHC+SrIej73kIwOh+MmIwed3WnuR3NDoDmgqXa2ZYRtcYaQsUdmtC7iANkEcxLUIdtW3I/dRVypnP0QGRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IriqYBR0acfsptXt1wLtPbl3XuhLICK/9zW7fyjagXk=;
 b=c8pm8BwbJ9YMkf90DcMJKvObJPAkxXSR1VRYY+uOPmsnQv1gEicNHPmYLrxmEGdy025lOkTUY3nEAeQ2jwaLZZ9vOjtV3vJYs8lWQuQRcER43nxRcdXS8DbPPDbThAnyBdufjlnjEVtRREzGpaP/eBwMmyxRTmt2GFTfwkj5ShY414C9XLxQ7t7sqPpvE2L2UggcuQsgbMQV2HxDdJ5/U8oRdMrQdFLL6DR2Tel4rwgtD06rBKbMQeUSkR1lpG/u7lDSBGSXgIMJBXsn4AK33J9T3/RIpE6tDC8UZeQ/Ev547GLW0nmmNom9sf5ozOURsibJnCGhq1kOv2Fc7i4uhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by LV8PR11MB8461.namprd11.prod.outlook.com (2603:10b6:408:1e6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Thu, 29 May
 2025 07:25:03 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:25:03 +0000
Message-ID: <f98a1c79-ed3b-4f0a-b0db-071a16f69666@intel.com>
Date: Thu, 29 May 2025 10:24:56 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-7-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-7-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|LV8PR11MB8461:EE_
X-MS-Office365-Filtering-Correlation-Id: add25dc0-3d65-4214-3cfa-08dd9e81edb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bW9rcW9vQzZXSTRCL2hHSEgwNmFUaXdaV2NEN0VYbldZeGZzSVRSS2w4MjhM?=
 =?utf-8?B?ZlpnclBYRTRaNjZmNlJVV3JDZ2RLWFcyM212NW9qR2V5WE12T3ZnTzIycmx1?=
 =?utf-8?B?U0NmTE1IZGJtWU42bzVtOW5DdG05LzcxSUF0ZU52N09FcEQ4VS80M0pvREVx?=
 =?utf-8?B?VU13dVRkZFZtcHQ2Zjl5TnhaQjQ2eElUeko3WFJYS3dTTXZrcmNxS2FXRHdJ?=
 =?utf-8?B?Q2JsdjlVeVFUM1d1Y3JwNk9HVzJmNEhFaCtVNTdxU0hGY0oveXNZQWs2dWpj?=
 =?utf-8?B?LzNnaDRpVGJRdGRwU2NPK2dtQ21LaHBKbFBURlg4N1ZjcnFraEdUbXQwell0?=
 =?utf-8?B?RUVhbnFRQVVjTGYycWlBbFhFLzhDejIwQmx0QWNrYjIwZHVBdG5JTkczNEF1?=
 =?utf-8?B?ZVlQM0VhK3FqMXJkVXZEcWV5ajU4TzZzYmdmMGNYUmhlRHRDNVhGNWVFQUV1?=
 =?utf-8?B?OGZHaWxpWHZCc1VUcENyZGVTZnAyUDAvSDlITHMrUGdFcURERE9taU4xL0xL?=
 =?utf-8?B?M3A2SGpPaFZ2aERvOTA1Wmw1dXhONUF3SXVJK09wMVp1QWlCb0VjWnRPakxT?=
 =?utf-8?B?MUJYdHRsUmJTRU9DbFIvWERkWEhSMndEd0p2Tk5qdnpjZUlUakJYVUZDd2ZI?=
 =?utf-8?B?UkNxWnpqK3hZZWd6Rm0yL3ZQeFpxaUZwYWlNWlJoSHh0b3BKYzYxa1dVYnh2?=
 =?utf-8?B?OEYvNlBwSzQ2MmRISXhDK1dqSE9oRkdQNzBrMEJ4SllqZWZ3R1VLVUtQeVJm?=
 =?utf-8?B?M0tFSG1Ga25FczF1OUNaNEJsV1FpV0V2NGJVZEttblhCTUZvVmFINWRYNUE4?=
 =?utf-8?B?VWNwQTlzdkFwOHlMWXdZTXUvN25vV2N6bnkzMHhpZzd4bWNuRUduMDVWbXY4?=
 =?utf-8?B?R0dTMWFlTSsydTE2TDd2dERSMEhzTGNGTURZYkdzMlhiS3VmMVB2WVJtM3RU?=
 =?utf-8?B?RnlYcS82SzJNV1p1cW9qUVRESzBLdXRFYnNncEF1aHBpemQ3blBERGhpMGZ5?=
 =?utf-8?B?UTg0dmVSYUVuN3lJS0xiQzNlNVF2Y3V5U1Q3R1RYQWhELy9rNDcrTCtkVE9X?=
 =?utf-8?B?T0I3WEVVL2VrUGhWYXBMSTJBT2FJbFJXZitMQUhobU5sby91SmFOTnJKYnlS?=
 =?utf-8?B?Szc0eTZCcklXZUQ4bEVabXJpNS95djJJYUplUEIxMXdBNTErcS9Ca2wxNThw?=
 =?utf-8?B?ak9mcEErN2Uya3FYN08vMFhQcEsxaG92OWxObUNpL3lOamdCLzFHV2QxNHpq?=
 =?utf-8?B?MCtRYWdFR1EvQnhlTGJhaUVlRXI1Q3FDZm8xbVNkend1RVIrejZUbXpEYVVJ?=
 =?utf-8?B?Zll2ZFdTMDM1dDlFQjZ6aEgrQkNtV2M5UGFEWHJ1QkphRVpMZkdTeWNJa3l0?=
 =?utf-8?B?SFVTRGNGQUNxNVExbEVOMzBzWHhVdmtra20xMkJwSEhqeTFyNk0wTHhiS0Ux?=
 =?utf-8?B?VXZ6TnhzVmpJazdwLzg2Q3p0b3NyYS9oVlAyWGVPOVRUaTl5U3JQU2Qvcisy?=
 =?utf-8?B?QzdPR0QrVWtvOGZiQ3VwVGlQWStwdWNIZC9oQ2t3ZTdNYmdhQ3dTcjd2Q3hp?=
 =?utf-8?B?cmtZYVo0Ny9ra1BlNDU1L1Y4UFRmd0dTYU13M3N1akRycVZucTk0UkliTW1h?=
 =?utf-8?B?UVhKeVJNUDVWUXY5bGFrMmFjV3hESk1tVXNjeGdZUzNYWXhCNjFnZzNvWXU5?=
 =?utf-8?B?T25GdHZqYlJSU0RVaXRqZ016WnlDRGNOUkl6VVg0YUY5MEJzaGdoWWhTZUZk?=
 =?utf-8?B?d3hEaVpTaGlRMGQ5N3pxZEVmRFVjWmxycVN6SXZBa0pYLzlQNHNWQjhoUEda?=
 =?utf-8?B?ZDQvOFVlbnFIZm1yMi81M2V4QWNMTkRPcDZzQS8xYVBIUWUvWDRPa3Jyckdx?=
 =?utf-8?B?OW5KUGt6ZTNXdmxyVEFhOWZKSHU1SDRlbDcrNEN5c25BbHpETlhhcjZRQVky?=
 =?utf-8?B?L2dlQjdTbkc2UG80SnFkS200MGFkTkYwZWxrNzRNcHdqL002am9xeGxBbmFE?=
 =?utf-8?B?eFkzTHRPSHh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHZPN1NJK3kyOHAwbjVTeVNPdHBFTGpDNmlrMmFxQW1sdk9DdVZ6SCt0REZP?=
 =?utf-8?B?UTluWEpaeVJENXZIa0VNZVdaR3d4OVY4ck9BK1QySWRSaU1qUlRZWGxyYVBn?=
 =?utf-8?B?d2ZzUUxwQzVzREZ0cVM0bFJjUG9la2FGeHZCWVd1aklTT05EOEU4WU5BSUo3?=
 =?utf-8?B?S2dXVXY4TkRRN1F6MmE1RHVyd0IvSWRTSGdvK3lzcHdYMHQrNk5NK2FOK2xa?=
 =?utf-8?B?aC9Cb0o3K3dHSVoyc3cva1p6b1o1ZzYwRW1BMXE3Tk9KZmplN1BRZjVIYnRs?=
 =?utf-8?B?VHd0OHhuUU9XMStLenI1K205ODZEY1BwRzF2eEM1OFdsS0EwbEFsdDdYYXlj?=
 =?utf-8?B?aGhyUTcwRXkyUitDa1V4SVMvZDV4dmFKQ3FpakxDZVpmbGVQNWw4c1hjekVa?=
 =?utf-8?B?eTdZRnZyUTE1OFcrS3FheHFKQzVXYWZEeUZ0Tk9WZDRva2pBYXhjb0FoVUVX?=
 =?utf-8?B?RWNucG5NdSt3NGRsUmQ3RnUvOFJDandPN3JtaFd6R3NoWUpIZVl5Mmp1T2NH?=
 =?utf-8?B?OVYwYklWZytJbE0vTnJ5a0oyNHBXMUE3NHhheXhnZVd6WkdPdVlpdlNJd0lq?=
 =?utf-8?B?NGZRK0c4RVRCekNZZ2dpa0tsYzBtLytNZDVYV0VyUUtNR2Q5U3RYeUVOcFhs?=
 =?utf-8?B?SkZTWCt1TGZpdmE0a29Ma2szc2xPUVBuQ2pseEM5N1k5MFhvZ0YyaGJYMTAx?=
 =?utf-8?B?U3RGdm1qL2h6OG55azExcGU3WEdmRXRlY3M5N1cxckJPb0pia2VqNFdFbmta?=
 =?utf-8?B?YmtvM3ZKVmVkSmc0dlZnN0lIODJNYmNSMkJqWDJYYXZzNmNtVFZ6TDU0SzNC?=
 =?utf-8?B?YVpvS0NVVlovbFBjK0pVNlR5Y2E0U1IvS2VocjIwT05UZDAwejFlZ3NDSnF5?=
 =?utf-8?B?blpoNkZqUmQxZUh2V0djam5RNW1ZSi9WNnNlUzI0VVdqcndadG8wb0tQOVZo?=
 =?utf-8?B?VXh6OGU5WnFRNjlmRW1tRXBBZ3cxaVg3alcvc2NKS2k1L1ZtWGdUNUF1UkNN?=
 =?utf-8?B?b3F5cTlTWDlRL3FIYXpFbW9ET0d1NzZkYVZJUFJBK09GMWhOTVFDMDIzVE55?=
 =?utf-8?B?NGhLbDFMZXpWL2Y4YnFSckJvQ295Ky9wVEZhMkVZUEltaHFhVlJGRGZkbmtM?=
 =?utf-8?B?NDVqWnNvMGpOaUVra09zWkE0VVNtcHRvVDF6T1JUTnpNanN5NHdDdWxXNTIy?=
 =?utf-8?B?bUFVTDdHcVdVV05TY0FYb1hvbWkzZjRLc1ZOSVE4MFN5Tlk3RWp3UFdMM0JT?=
 =?utf-8?B?NnYxaVlMUlNIUnlKY3dMNzZidm1wclUyZm10UjNTaFEwbzZVd2Y5aHZGK1A0?=
 =?utf-8?B?V3ZUZUlEYmxsQTZRc2p1ejdjcS9BdVczNk9zN0dCMXRKelRHMzBqMkYyTy9E?=
 =?utf-8?B?MTA5UWlLcjhzSGJJSHIzYmNHa1RyYk1TTHAxV3kxOTNmQlltZTdxWjU2cUV6?=
 =?utf-8?B?T0RSNFdrMFVpMDhXRmgyWDVadE1qcUExMDJHYm1FRHg0MWRRQ1dtNENxcFZW?=
 =?utf-8?B?TVBEYTJFeG9rZ2NqejN6S25tZHNpSXYzMGlCcENDZEMwVjJUSmd3MFVqdnFv?=
 =?utf-8?B?dmtabVlxV2oyeDhZb0NaQVFRMnZTb2RjTHZleUprcks1RkMrMkdCMUw0bWVG?=
 =?utf-8?B?eURDdCt3UWtSa0JtcU4wTjRYRXNzOHhvMEZuUjBWSmVzbzJ1bkhYbjdhYTh1?=
 =?utf-8?B?RUlGM3plUE03ZkVaMWRZbHZYT2srWHdwRVM3VVA5cVBFZ2UyN3dBU3pYTzNO?=
 =?utf-8?B?d0srYlpZa3E4NjlaVGVMOThFOWFzMXV4Q0xiMFZLZGM2ZXBzZW9DeDJMS1NK?=
 =?utf-8?B?M2pIcy9HNDJOYnl5aW1xd2RrR2x1eDJGcThxOVQxZTAxaGVHQmE5ekp1SGM3?=
 =?utf-8?B?ZzExY3JLTXNuSG50TzVKeFBjVUpNTUxreFVEbEJIbnZ4azZhM0ZiVjB2VGNu?=
 =?utf-8?B?clgxTVR4WmFhK1dQWS9PWTlPeW0zWW1seDRhdm5VQ1hweG5vOGFMU3ZJKzlJ?=
 =?utf-8?B?WklncmhHZUZRUHpJK1VrcnpMekdQYXRmK2dwaFVHU1VYRnc0SEdwWWRJRkdG?=
 =?utf-8?B?b3VkMW4xWFhiQmlraUhid3lRMm9HYXpKLzNXdDVpM3kxZWhOdEdaRi8vSTdt?=
 =?utf-8?B?aFh2b2xYK0F0SURSZ202YStNanhaQ0h5RFBJNzBzaHBWRnFBS0g0RGpRRHk0?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: add25dc0-3d65-4214-3cfa-08dd9e81edb3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:25:03.5392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sVtv+BNID3NK4u0V7ny2gp6s9+j6bp5Gsvo11Y8w3tFNxG8G8PDKEj/k8HZG8nOUVNP1e85ULSrl8/qBuq4TdkHkPCqulsDES3mqSnDkFX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503536; x=1780039536;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/6GZUpFijBwjYrg8+q3sQN2GqiSuQ3cda6xRpX8i4gk=;
 b=dMlPxxQRtMwIPaRTFqNqGnMNHKxTucIFqjC4Ph7fBHWf0ppqnsnkxvdk
 YkmVeCo4CJIVs7my/7PMnChnBTUVfHn7Ng8JfLvCucoYt5V17SUhCBL/G
 U1cZAnz+qQ8chYlIhtawnDyWspnBjtpovFinXYCkHiRqL7MSPr7YtdCAI
 784S9BQd5beyx3B4yBjBRYoJD8nJg0JxeqZQKGzrajCud5cbPYwsGSiS8
 HeaLf8VzLYpL5Wzzc11YzL6Uc1/xc1d9lAj4vKnf5xB7M+/0v0NTUSAxr
 rwHmzvyKYyOwyD6BItoAobpnvJL9Wh4Rf5WFJ0qn3k1QfZQNHJH1fEz0e
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dMlPxxQR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 6/7] igc: add preemptible
 queue support in taprio
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Changes:
> 1. Introduce tx_enabled flag to control preemptible queue. tx_enabled
>     is set via mmsv module based on multiple factors, including link
>     up/down status, to determine if FPE is active or inactive.
> 2. Add priority field to TXDCTL for express queue to improve data
>     fetch performance.
> 3. Block preemptible queue setup in taprio unless reverse-tsn-txq-prio
>     private flag is set. Encourages adoption of standard queue priority
>     scheme for new features.
> 4. Hardware-padded frames from preemptible queues result in incorrect
>     mCRC values, as padding bytes are excluded from the computation. Pad
>     frames to at least 60 bytes using skb_padto() before transmission to
>     ensure the hardware includes padding in the mCRC calculation.
> 
> Tested preemption with taprio by:
> 1. Enable FPE:
>     ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
> 2. Enable private flag to reverse TX queue priority:
>     ethtool --set-priv-flags enp1s0 reverse-txq-prio on
> 3. Enable preemptible queue in taprio:
>     taprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>     queues 1@0 1@1 1@2 1@3 \
>     fp P P P E
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  6 ++
>   drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c    | 21 +++++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_tsn.h     |  4 ++
>   5 files changed, 100 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
