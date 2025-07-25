Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDB1B11CF2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 12:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFC2941BEA;
	Fri, 25 Jul 2025 10:58:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OVEZU5PpMJlP; Fri, 25 Jul 2025 10:58:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE3B041BD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753441111;
	bh=H2gLvSNsjDQCQedlFp93o8zJpP/Fk3Ibk754MuMKHj8=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WmOt9CcmTAKHCScJFXlkpep3TwGWYZ6vssbdg2S+PzEPz2ynweURJ4HpDlNq3CQM1
	 fIsQQfcqBwQRDxY2ZvAK7w65gMq6PatmbUeT7XFcUvNk1xxOFvHUohgbVWwwUtRvLu
	 UXIGBx+a2TnLE/tZ9Dw1iPFd/mEPl0smM6PMnMWAsw7I/Q5bpIm2UsLQGY3rOOeJbx
	 5zkZJFV61mP1kTgjCwS93cnocre1Hcm4MCOePoFrCPg4G75RMzdtoXKs14wlHZ8ioD
	 IFlYvwxo1KqSOZfN4Ai9LJ/K5qxRQCF6Q+iWpvTfE0J014Y6oFCs0bPSxy1LgkNuPL
	 CZ+H2RsCJ281w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE3B041BD9;
	Fri, 25 Jul 2025 10:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AFA98909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACD1641BD7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qD-cWa8rNj_C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 10:58:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB60C41BC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB60C41BC3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB60C41BC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:58:29 +0000 (UTC)
X-CSE-ConnectionGUID: rvmPqnsTT42l2dgjsvY6Ng==
X-CSE-MsgGUID: am0Y6HS1R1mUjo1WgLfGuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55738279"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55738279"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 03:58:29 -0700
X-CSE-ConnectionGUID: d67FUey+Sc27ZTNzv75jQw==
X-CSE-MsgGUID: 5bUh0PUpQmy8JK90LtI2+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="160456088"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 03:58:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 03:58:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 03:58:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.87) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 03:58:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f0en505Z/U7Pem5cR6M0Fzq36iS7X6dXQEi9ReMm5L4m96LYcpm2LVyHWKjQ77TlKHRrWeiVk3jYL49HDB2qscwGrH0yC02AD94NFJ1vC6zXg18aAhnOR0Hwlj6d88Ouu2FPCjN+Nuv/ojv4JC4S3DCBydpTiMm0JOCxuagPT+/RjCAQKHdfaKaViAKnLj7Iet/ckkCDftM4QAbT6VHWRJGwY7EgssPleBrcUDn72bFz7vMp4WPGw/+yVTUHClcdpO+Gp/xP9Zmo+htPTiW/Dr6Old41MFzRaxskkdz6VeBJuwxOhGS4mIto/MyzpkXy5XE0I80eN6PenPMfHJeCEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H2gLvSNsjDQCQedlFp93o8zJpP/Fk3Ibk754MuMKHj8=;
 b=a4P2kEWmkVlqO22ZwRku+I3wDxUWewJA0cv9aDN96NAT5qZ2IolGAKI6C5heILTYD/Vuh7AF478GcO3DdCHmj/pjnlaOSZa8w7I18vYb0uYZcX7jDO99zW6J/iqu1SLnNBcQ+TPFgFpmPbP/o2fy/bi+Dj7i80QDO69kNFbnkn5sxgRX+XxltXa9eFhvE/dELQcDMyY6krEt4PVV1JPYsnV1oGEYFeCkp6lEriXsKmePToLInIBzHkqme+MB4gAy4vPGF0RJozQZRDwsswl9T6acHP3GLUHvdo10Rr6HjkBcyDgdVFB94Nxej2YXlfj79WFZInTkNq/dH5QM4e3g1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by IA1PR11MB6148.namprd11.prod.outlook.com (2603:10b6:208:3ec::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Fri, 25 Jul
 2025 10:57:44 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8964.021; Fri, 25 Jul 2025
 10:57:44 +0000
Date: Fri, 25 Jul 2025 12:57:33 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>, 
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <bjorn@kernel.org>,
 <magnus.karlsson@intel.com>, <maciej.fijalkowski@intel.com>,
 <jonathan.lemon@gmail.com>, <sdf@fomichev.me>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Jason Xing <kernelxing@tencent.com>
Message-ID: <aINjHQU7Uwz_ZThs@soc-5CG4396X81.clients.intel.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-3-kerneljasonxing@gmail.com>
 <6ecfc595-04a8-42f4-b86d-fdaec793d4db@intel.com>
 <CAL+tcoBTejWSmv6XTpFqvgy4Qk4c39-OJm8Vqcwraa0cAST=sw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoBTejWSmv6XTpFqvgy4Qk4c39-OJm8Vqcwraa0cAST=sw@mail.gmail.com>
X-ClientProxiedBy: WA2P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::12) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|IA1PR11MB6148:EE_
X-MS-Office365-Filtering-Correlation-Id: 196e53d9-5d73-4ebc-df35-08ddcb6a1517
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|7416014|376014; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UU55NW1vVWtMOVVRTElaejlSTExoSXMzSFFDWWJUd2UyVXRzVnA0dWFEMlls?=
 =?utf-8?B?L0trRVhxSjBRN0syWFBsdXprU21KWGFLUGlIcENlVkJUMFROZGp2Q29vbFNS?=
 =?utf-8?B?SHdKcjh0VHFZZFk4TVZYMU45bDhicW96MldONmpGcEgwUFlHdEN1dVBWU3JY?=
 =?utf-8?B?N1B4U2FkdUpHaktXYkVxUVV4Z0I1TmRtU0p1VC9uZUlBTTdjK2Fjb2pDclcr?=
 =?utf-8?B?K2g2U1Y0Y0N6ajJLaDkyZjlpZGF3N0JhMGdxMmFlQmhtSElzdjNSdHpwbExn?=
 =?utf-8?B?dE5XVDlwTDZZWUtOMk1kWFl0MFNKcFJXRjYzVzd3cU1VaU5XTG1abGNnQjFC?=
 =?utf-8?B?TGhoT3I5KzZrcFdyQWdXeGNXWFFNVXdlYnpUQlQ1QU9IYUQ5clhzbk9EL1Bo?=
 =?utf-8?B?N3F0OGVIZ1J4VTVIUWd6RHZNaXlVN0h3V3g5bkQ0NzRKbFBTUXA0a0h0bnMv?=
 =?utf-8?B?blNDcVNSOHU4UE55dXBqQm01THV6MDUxTUdqbUlRTzVXWCtEeEFEZ2lVeHVK?=
 =?utf-8?B?UlhubkYyejM1cGxXNmd3Zml0OStyaGZaWUhMMlVRQW5BVVYycS9aS0VNVWtK?=
 =?utf-8?B?OGl1RTZaMkZDWkNBajlpdkV4a2lzbFdXeDJVL3IyU0puRG90alo5QzFGM2VE?=
 =?utf-8?B?VzlZZnFmRnJDK0NFQXpzOFpROXlzdXZQeVNHR2dOampNeDBzdzlRZVZJdlRQ?=
 =?utf-8?B?RVMzcm1CVTdhNFVxck9Pemo4TjNOL0QvRm9KQ3Z3UjVFeXkzS0FmWHRBclpn?=
 =?utf-8?B?dTR4bXdnVy9zMmJ3UWxqeTJ0NnlwdzZESkoyYjlibkxZbUo1enU3ZGpaMHpQ?=
 =?utf-8?B?RlBqVjVNbkM3QnhMbDBiclNUaWplRnpaQjh2NmZMcmpGVUh3d2lrcDdPaFNU?=
 =?utf-8?B?TVFlMkhSZEMxc1p6UWltRDBtTW9HVWtOYVdvSHlJQy9xdWVYTTNlaHJ6ZzdN?=
 =?utf-8?B?OGhnYi9QUVRhdC9vRGtvWnR1VGwyb2ZiZHRRQmRGdFJQYXF4Tkx6dTVaNHRC?=
 =?utf-8?B?YmtXZllFbGhPMkFzRG1XZHFIVkxlaHF0WkxsSlc0YmRoeXRtNzM1cSs3cGdp?=
 =?utf-8?B?ZVV1a0s1cm14cEE3MXorTkNVdHY4RUlhVnQwK3NDTUxmSlEvYzhrR2Z6SEJp?=
 =?utf-8?B?dUl4Z20wbHFhdGJaaTk3c2NFcFh6THBrRVJ0dVkwakxyNWMvWW1nSDBLUCtX?=
 =?utf-8?B?dU4yc3lsblNna2R0WHZURVV0TzNveFIvTE8zeFB2SzIvZksvT2RnTjlGak0z?=
 =?utf-8?B?ekpKNTV2MDhnell4M2hnYmhjb2duaHVxaUpoeWs0VlR4T0lseEdtL3FLQ2Ja?=
 =?utf-8?B?SEM5YVdwVWNHZWJXbkVWTk43RUlaSm1FbG41MTJjY282UG96Y3poWHl2RWpu?=
 =?utf-8?B?cC95ZEU4aUNTaVR0d2pGMy9nT0l3MFduZHpKKzBXT1FaZEpuMHl0WFVnVDVs?=
 =?utf-8?B?NUNIYXpIUzFaYXhGd2RtT1ptaVNqL1YzanRHRERFUURKZUdSc3hQY0MwWDVV?=
 =?utf-8?B?Z3gxZ3JJYXJITi9aSktqc2RYVzlBTk1DdUVOMStjWjhSempnanp6UjNmTXJw?=
 =?utf-8?B?Wis1SmNhZDlWWXJiV0xzL0c4U1Y4UExkSEtwMmNPZUJyNHk2b2pmNFgxVU1V?=
 =?utf-8?B?YVg1Ui9WZkFSME01UnJGSXNhRnFaZXpBMjcvTzVnT2F0dVYxUFI4a3VvSDl2?=
 =?utf-8?B?UFRBKzZ3K1I5WnFhTFM1aStlSGx0K0d3SUVFQU8zclFoWTZ4OThnbk9SeExL?=
 =?utf-8?B?aCtXcEthYXM4c0daZVY2WXl4MnI2clFjd0Rrd1dTU1plV0luajdReEFjL3FE?=
 =?utf-8?B?K2NQbXZJbkcxdzJtdHF6aW9SWlRDYzAwa1l6dUNLa1BEaTkvMWwzR251b1Y5?=
 =?utf-8?B?dG9jaXBISytpeEtSTHlyV3Mxd2JrelhDSTB5ejZ3REJGUisvR08vSkh3dXpC?=
 =?utf-8?Q?RVZ+LKsU0x8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(7416014)(376014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGI4UXFoSEpLOGdXTEVNcW53MjFhYUlKTllLaTJ2SDROMDB0Q0NRakYyV0w5?=
 =?utf-8?B?UVBQZFdYTENlN2hmZ0RmWVZxUytoYUJnRzRxY0VDZWVadmNsSWtBSWlEU1FB?=
 =?utf-8?B?eEc5R3VvNzJwTTdqbkNyRUVLOGJYenVvejhJYkRxTFhFazFUM3F3RmtjMFNl?=
 =?utf-8?B?RjhwRU5TRmFIc21TRGRxQWZBcTZDRnJUU0p6cDl4dUxxcmNMbnUxL1Q2MVJ4?=
 =?utf-8?B?WVA5WFI3eHdmRndJMTYydk5VVmd4RXhPUGUxNjdQa0RnN2V0WGRiZWtUcm5B?=
 =?utf-8?B?M0V5SFN5QnF6WUcyaUFVT09JdG0zRVlyZ2lRL3p1WFlldVpndjY2RVJkM3lq?=
 =?utf-8?B?c3ZqL0NhcnlTOFRWUm1xZ0VrUzhhM09jQzVtRDhjZFdPQk94UllOc1lpY1RC?=
 =?utf-8?B?L3dWelFmSlBTUmxraTRGTW52dEU4eklHRU9VM2pvNE8wNUt6YmRjME81eEFk?=
 =?utf-8?B?NDFXMlhCOWtiQ2VMOXluMzlia2Y1Y2I4dFh0L2Jaa2FoQXgxZ3lmRzFNK3pF?=
 =?utf-8?B?WC81NnN0Q1k2bWZweDlSd3JxTnlEcW16UkVYSmczTDFqZ0dsVFVXcWppMTdj?=
 =?utf-8?B?cW82Qy9KVjk2MFZWeHFLOVpzYWs0WG5ob3lxaTJmeEFvN2hKeG56RXAvR2VK?=
 =?utf-8?B?Tm9jdUpKcHVObE54bnBDdzNnbmdUdXdnZllxZ1dSTE1SVCtQZitFQk9RcHl1?=
 =?utf-8?B?ZUkwTFNyVkZFamFpNllOZjZJTWprRHFMODhzeDdTY0kya2xkUTFTOFBsUTdh?=
 =?utf-8?B?WmZqOTJ1NDZFa3V4QW1jcG55SndFeDJRTFJsZ1BlRXV6UkdGVlRKQk5LZ00r?=
 =?utf-8?B?ZUgrY0d2NHF5RnB1clQ1eGMzS1UrVGNuSkQ0WVlYa1A4RzYxVTRKSlhVZ2Z0?=
 =?utf-8?B?ekRrN0ZnY0cwSitUZnluQUE5VTFXRlRpNmYrTGFXQmk2ZW9Eakh6cjl1OW1q?=
 =?utf-8?B?dDJzVkk1SU1iOFYxL1AxUjNSdmFiQllwejRWSFlMVlozRWM2NGtWdTNwQXhE?=
 =?utf-8?B?QW1LK3lQSUh6YjFyMkZWS1BTRHJZZ1pIb3lWcmhza2wwUWtuWmM3eElqcXJk?=
 =?utf-8?B?MDZWVDRSUk44OVBndUx4dmRiWVF2cVpsaDMxNVZubUtLM0xkTWlsT0ZSdTdY?=
 =?utf-8?B?dkc4bG55UU1ZNTRRL0hvSVQ2S2J0TzF2UXRsNmUzaEp6WEFSc3FldUFKOXdF?=
 =?utf-8?B?MVMrOHY0cnB1eFRpUUZpRTBKSTFoYjYxbU5ObWJYN0hTNGRPMTVpWTAxRmtE?=
 =?utf-8?B?ZUoyUVdOblpXblRwYTEwNGZjb2dKZHp0czBNaDJXSzV4SnFwSW9WeU1kaURi?=
 =?utf-8?B?cFBWZ1pUMFg2cVZ6eE0wUW9xTGwrcG1kaDlzSXZsWkJoVEdUN1R3b0hKRmxZ?=
 =?utf-8?B?cVF0OHBUaEd1UjVYN2ZNQVBrS0hmOUYrMisra0xtakw4SXdyUlNUK2lKdGVv?=
 =?utf-8?B?U1l6VDRnMTl0NTFlWDRQRS9QNU5GcHNOVVBJaW5ibE5tMjhOUmFhaTlscmpN?=
 =?utf-8?B?S0JQMGxHQkpUK3k2WHJEcm96bExJd1R3SlJFUEY0dFFzc1Jkd3N0c29oZHdF?=
 =?utf-8?B?R1ZqU3ZyL1JodUx2bzBPc3JpSnE5M3VsaExyTlVEbGNiSlBQbi9hTktPSCt0?=
 =?utf-8?B?RnByQ216dGhUdDd0enV4RjlPQ1pkSnV6eEs2ZmlMemhYYTlrUHNuZkJ0RW55?=
 =?utf-8?B?R0FuMlIrZkFvU2xJZzZzOVlMVzNXazdleUJMTDVzcHBhRmU4RUM3Z3lDdkk1?=
 =?utf-8?B?bUtBYW40N2JPRWYwcUpQbkIwNldDRU0zQ2x5SWdGblYrRjIwdmR1cnZmSEgw?=
 =?utf-8?B?SHh6YUcxNXJUZHhyelVVb2lER3lTYyt3U0FLQzZoUW1HZ05STUEyU01OM2xn?=
 =?utf-8?B?ZTVwMnkzZm9qdk5nL0Q0SDRjaExCNHVmb0hnWm93Nk9GMGs5TGI1WE9oQ2tX?=
 =?utf-8?B?NkZ1NXVSSCt5ZWJZMEphN2RCL0hvYmRNWi9vWmZBUWlXRlR2TGk1NmNGZHQ3?=
 =?utf-8?B?aWpad3pseTlTUUtHdjlNaDUvL1dyczVsbks2Q0FxZWFvWnVQZGFLQnFkTC9D?=
 =?utf-8?B?dzlNV3RWd296d29hNFBiU0Y0Rm5RRTZvTlEwSk5uZGx2QmZ2dSs0cTByRTIr?=
 =?utf-8?B?ZlJobzY5bUNRU2tSOHRqcVdMN3JQY3JPUTZYVitUWlQ3V2UzbUcwMnBwbUJF?=
 =?utf-8?B?UGY3WHorZTZGZlpYMHNVNG9aR2piSjlzUCtubjVETVlPbE1LcU1qNzlhS04y?=
 =?utf-8?B?M2xUcnpHcEtJWWV3TFNab0x6V1pBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 196e53d9-5d73-4ebc-df35-08ddcb6a1517
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 10:57:43.9579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tRGCZA7ZE7H8o5iCrhudlf3fKCtAb6m2fPcf6iPV3hc9hOJwTuusejVBK14cArpRRZvplxUMOX5HOsv37+9uESL12yNYoRDaugnGC2uqy6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6148
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753441110; x=1784977110;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dqKcCL26BdRKvNiscivCIS0ErgorW3YCNKDiSF2DWs8=;
 b=fOTlZ3THwDvA5O6M0QdSq9tO8B+hiu4cbT7DOqIENAoBKYuMs4QSLKiT
 xQgg14luouQO8J+BQJBvMECn0rcPZXCKI0LvofYhYq8Rk/av5x7fp+LKB
 Pc7WHnY1sV+lQcVlut7NQ8ifktiq0YFeoamG58RURqTkjVkUx7y+DrqUZ
 VDkTf1d2xfdsbPCPoTNiY17Lst1pe174TkHt/jE25615f0RwuPv5AFeYe
 iMFntjR1aY/djTz7FNEXe610efx6zxyJxbix3sSarIwfy5AuuTKrXPt70
 qakTUW6/t2gtHRyKkzl8mkqHBP9IidHDVVD3sZ7HIIwquuNGHrvVzdUbS
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fOTlZ3TH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] ixgbe: xsk: resolve the
 underflow of budget in ixgbe_xmit_zc
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

On Fri, Jul 25, 2025 at 07:18:11AM +0800, Jason Xing wrote:
> Hi Tony,
> 
> On Fri, Jul 25, 2025 at 4:21 AM Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
> >
> >
> >
> > On 7/20/2025 2:11 AM, Jason Xing wrote:
> > > From: Jason Xing <kernelxing@tencent.com>
> > >
> > > Resolve the budget underflow which leads to returning true in ixgbe_xmit_zc
> > > even when the budget of descs are thoroughly consumed.
> > >
> > > Before this patch, when the budget is decreased to zero and finishes
> > > sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
> > > and enter into the while() statement to see if it should keep processing
> > > packets, but in the meantime it unexpectedly decreases the value again to
> > > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
> > > true, showing 'we complete cleaning the budget'. That also means
> > > 'clean_complete = true' in ixgbe_poll.
> > >
> > > The true theory behind this is if that budget number of descs are consumed,
> > > it implies that we might have more descs to be done. So we should return
> > > false in ixgbe_xmit_zc to tell napi poll to find another chance to start
> > > polling to handle the rest of descs. On the contrary, returning true here
> > > means job done and we know we finish all the possible descs this time and
> > > we don't intend to start a new napi poll.
> > >
> > > It is apparently against our expectations. Please also see how
> > > ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> > > to make sure the budget can be decreased to zero at most and the underflow
> > > never happens.
> > >
> > > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> >
> > Hi Jason,
> >
> > Seems like this one should be split off and go to iwl-net/net like the
> > other similar ones [1]? Also, some of the updates made to the other
> > series apply here as well?
> 
> The other three patches are built on top of this one. If without the
> patch, the whole series will be warned because of build failure. I was
> thinking we could backport this patch that will be backported to the
> net branch after the whole series goes into the net-next branch.
> 
> Or you expect me to cook four patches without this one first so that
> you could easily cherry pick this one then without building conflict?
> 
> >
> > Thanks,
> > Tony
> >
> > [1]
> > https://lore.kernel.org/netdev/20250723142327.85187-1-kerneljasonxing@gmail.com/
> 
> Regarding this one, should I send a v4 version with the current patch
> included? And target [iwl-net/net] explicitly as well?
> 
> I'm not sure if I follow you. Could you instruct me on how to proceed
> next in detail?
>

What I usually do is send the fix as soon as I have it. While I prepare and test 
the series, the fix usually manages to get into the tree. Advise you do the 
same, given you have things to change in v2, but the fix can be resent almost 
as it is now (just change the tree).

Tony can have a different opinion though.
 
> Thanks,
> Jason
> 
