Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC03BAC100
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 10:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45F4260E72;
	Tue, 30 Sep 2025 08:33:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0jB8A6t88HY6; Tue, 30 Sep 2025 08:33:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7A1660E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759221209;
	bh=vH0f0AW620z+Kq1SX+Tui6EESzbgrz+DaI3IbWQAxiI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kDRhNtxNCA/qFi8iuBcP8aoIBKjWCDfEGf/wNw+wQw9az+o2u/bh8/hxaSkvsO+8c
	 tRLeb9XLBrdoLxi++3pMb1uJ9pConPSUnE+HItntvdWzkpxSSR8qg6nVTMcXDdBIHA
	 4YJbNCGgKvVvdY0ZEHt4FJi1g3MjMQ/Qe7TE6vJSkwcoQivt6g76FYIQGkimA/bs/B
	 qHKoxaZofZ3vZsqsNDEUkRv42ybVaV8ahgkn1cmPNpqnyjbwPM5wjtkIE02XHNajOt
	 0jt1BUPfUYfmsrr1t51lWT23pmjZVrdpny3Q7J8jdsiqBtSQj/vaPK3BD9KXjjNBhv
	 ok/5+zeNG/rTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7A1660E7A;
	Tue, 30 Sep 2025 08:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 79686B30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 08:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5660860E55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 08:33:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kOSSqXdJE6GX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 08:33:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6071460DFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6071460DFF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6071460DFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 08:33:25 +0000 (UTC)
X-CSE-ConnectionGUID: 8nhdyPg8QFSaohpTxfkoEw==
X-CSE-MsgGUID: rKT76lY2RgCvKtDNR9AwRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="61386343"
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="61386343"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 01:33:25 -0700
X-CSE-ConnectionGUID: cMA7NWK5S5ms4exBs9i8MA==
X-CSE-MsgGUID: 4OkSI+/vS0G4AJZem/bQTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="182887109"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 01:33:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 01:33:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 30 Sep 2025 01:33:24 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 01:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=puVge3MhijI1EeqqeZrlyvP22rmvT7z0cyMGPfabwKn2INZVxeVeHAl+7apjkwct14HxU7OoGumDZ4wAqLQ3BET3+FXgRL7vVORiqP52s+GGC1flWTTOsiTUBWCkTjVqvbZg0XTpW6KGBl+scNId5N8FJIrKY2QupwSceJ3504d135VLlMn2bLVriUoJHVC547p9A2N0/SPS/H9jRbrzSqhaO8cwKL6iXtsRP9Yt4JOjXLUsfiLBSAs7xOVOVPNsNWSVUyJPAJQYKQKc3tQ5385aquNFvD7ioNlM72jNRmKlHkQ5o7aF14sILX4C/Os4/YeVt27Af46xsYDvLvmpaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vH0f0AW620z+Kq1SX+Tui6EESzbgrz+DaI3IbWQAxiI=;
 b=BDRs2CAYRP8an5k0gU0bG7HRsGykdq5Km6ghEpJc5F4wh9cauJvDfgZb1AkB/3g8P/MYARbV3c8L8GREmwJOftUwABM1Z6Ddmzc9RGwrPFgvs9QOix7m3iW1nUP97wSRGpiiA5/7ekO78UuaYCCB1tTwnBg7BUI2ADpHUH9tMVAFsSfMmZ4o5kTgjNZDBzL1ctevdHCwdaG1OBD4rl00QKUPQs0JS5rny9HkA1T9XFNYnxSLas3iwFtGBQn9yaFoXyPH/7hYBNYclj73yTaIFfRX8MMn+lUV9YrifrDS7G2DXhLFulaXD+Xd/92vbYOz92VzfL+Iy12aPzoSUeF4jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA1PR11MB7319.namprd11.prod.outlook.com (2603:10b6:208:425::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Tue, 30 Sep
 2025 08:33:16 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca%4]) with mapi id 15.20.9160.015; Tue, 30 Sep 2025
 08:33:16 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Simon Horman
 <horms@kernel.org>, Alok Tiwari <alok.a.tiwari@oracle.com>, "Kwapulinski,
 Piotr" <piotr.kwapulinski@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next] ixgbe: avoid redundant call to
 ixgbe_non_sfp_link_config()
Thread-Index: AQHcMZVdkpChRIPLJEm3u2UdN86TYLSrZnZw
Date: Tue, 30 Sep 2025 08:33:15 +0000
Message-ID: <PH0PR11MB59024649641B7ACB09ACD402F01AA@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
 <20250925102329.GE836419@horms.kernel.org>
 <a7b1bc0a-26f0-4256-b52f-3580711be98f@intel.com>
In-Reply-To: <a7b1bc0a-26f0-4256-b52f-3580711be98f@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA1PR11MB7319:EE_
x-ms-office365-filtering-correlation-id: 1679508a-d142-401a-3080-08ddfffc0060
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?SDJYakl5SDNQK3BqZ1doK3d5V3YybjFCY2x0eXhHOUZiSktQdVloTlpRdDRp?=
 =?utf-8?B?RkVIczNWLzdMNHQ5UkZWRHF1MDgxNlJkSlBHaHcvMFBJeXRNeDJJcVoraTEv?=
 =?utf-8?B?Yk5MYWEyREJ0cSt6YVhkeXNVYXRmeDNBZkFDY1RubWcwbUVHUnB1MjJxTGw5?=
 =?utf-8?B?ejJpdmtTU3VKZldWNmVRKzJzV1ZlRWs2azJGWmpSUWpnUTNZQ1pKK3RCalpX?=
 =?utf-8?B?cjFJdG9FdS9SbjZJamx3aXRRQ2l3Ujc2UHBJUXg0YlN3V21zcnB3MFF5eGtE?=
 =?utf-8?B?UzMxT05CelI4ZjdDY2NtalJHQmhpNzJLSU5xclptTTNGNzhMTDloanpDZURS?=
 =?utf-8?B?b003T2p5VGN5RW05UzJxU1l4ai9kYnNuejBXdXNvdjYxSkw3dnNCRVk0bGgx?=
 =?utf-8?B?OXBXUEo4SUl1OFJrVUNUUE85N1M1UGZPaWN4c25JVGE2UGpHajNvZzFwWTYx?=
 =?utf-8?B?VGs1OVRlMXpYSHJ0Yk1CWXZZbE1EYmw0QXNvS1FGYUJINzc5WkU5YXQwN0hi?=
 =?utf-8?B?b3V6bFh4OUtOMGxPUktHNHhZZDc5RmtaRXQ0ZDg3Wmp4c0k3d3ZnV2VPa1BC?=
 =?utf-8?B?SitpQWNXYS9IYVNGcG1oUTl3c0ZjU3NkTWhJRG1pNGIyZFFsdS91b1RhcjQ2?=
 =?utf-8?B?WGNva2ROMkJvdE5zNGM1WkVjdWZ6dUZmakhNT1JMaS9keXNkd1JCMFF0YTE5?=
 =?utf-8?B?UGg2QmQ1Sk5sZHVoMlBXcjYyNnRMdjJVNStrZ2JmRW4zNzlYVjFyc1lYUU44?=
 =?utf-8?B?L0wxRDdRVmxmRDB4d1hraE1NNzhoM0h1SVFYVzY2djlubzVoN1JHbFJqQURJ?=
 =?utf-8?B?QUtDaEtzcllFSVRkbEE2ZnRiOXovSnZNbHljUGVJd29vSXY4TExZVEJ1c1h2?=
 =?utf-8?B?UEJBM1RtZGRHMUwwVjFBR2dWTFBSK0w0T3M3Z1hFMlZMN0NwdkNFS3JLTEh0?=
 =?utf-8?B?a1VrbVl6MjNNRUF1MUFmdm5QaHlHbHlGQjlyY1BydVh2VmRmbkovQ3AvYmFy?=
 =?utf-8?B?WjUwN1dQRHNFYnIzc0dEdkVWRldqT25LbnVNL3MrMjhwbHZ0aThTTkxWZXA2?=
 =?utf-8?B?cGdNSVRzTzNSR3poZ1FTUGxTU2FWSzJLMytVWUFUdUoyK0dUTUJidjFaRDZ1?=
 =?utf-8?B?SWxPcU53Tk5wUXhJZDRvMU91L051d1VHMEY1OXlKSWxwK0U1QTlKdDZvaGRN?=
 =?utf-8?B?VjhWU0VoRzBDaWF6bndveS85Zlk5ZXZiYmhOdk1jK3p6ZklhVkR2VXh6dDJh?=
 =?utf-8?B?YTdQUXptU0pvcmpCOWptSjRJNUVYSVZWSGk2YWsyRHg2ZWIrc3l1OEhqZGh1?=
 =?utf-8?B?YWdQRFl3YzRPNFdlUmpnc0pZK1liMmt5cjdhSUZqTVl1d2d3dUZnU0JUMWVx?=
 =?utf-8?B?OWZsbE9uU3dnazYrWXFoT0VVTXpibEtpUFZKcVVTNmdlVE83VU1hRk9tZ1lS?=
 =?utf-8?B?RE9wUW9aV1paeHVoOU0wY3U3TEcvc1paRFNvSVlRZ3BGZXB0VjUzQXB2Y2xh?=
 =?utf-8?B?N3owLzBOaWd0OWJ0NE9aUE9BOFV0cWxZS2dHYjdsWTdveTJGR0hldEVJejVl?=
 =?utf-8?B?WE9MNkFQUmdPZ3c0dDBIdURHZE5ZVms2RVBDSmtoZm51UHhTYjQwMUpGOU9Q?=
 =?utf-8?B?Z1VpWGlhNWJHZW9kaDNQWVFpZGJOeU1rb3FlL2E2b0NTUDlqUittZGQvSXpM?=
 =?utf-8?B?S0gzaUtKMlBwUEgvWUdvZFpQVlg5dXQvdzN4d1p6bFpHSGVJM3NNenk5ZUg4?=
 =?utf-8?B?ei9JZngzYVFlcVU5Nzd4ZGZWRXJYUzRySkxjazdGV3dBRkpzaGpJeThoT0pS?=
 =?utf-8?B?NUMwZGlQYzMxdldXUkpDc1ZOVEJ1WE9HeDhhUk5YMXBzbDBwRHJIODZyNEwr?=
 =?utf-8?B?RitHZ0p2cHUwdWhjWEJrUGUvNmRaN3A4bzFkcmZZd1lJU3FIa0tMYU40N1VX?=
 =?utf-8?B?YmlUVFVoakVRYkwvUVF6eHZsbHdpNlNOUjZING5zNXVvMUFGcnIzNnc5TmNV?=
 =?utf-8?B?a2xOejkvVGU2WFByRE05WmkvU3RlaXdjQm80eUlUb1VwOTFsaGQ1STc1UDU0?=
 =?utf-8?Q?LGKNd6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dENJU0Jlemp2Q2NIWFBQTUJaWVdOSUN4dXJyMmRyajQwN1VzS3ZHQzFBcmU4?=
 =?utf-8?B?eUtyb0RzZ0JUNnQvV2NCZ0JTaC9zRDhSb0xNZENxNi9GbEpQYXBVaUZSRHl0?=
 =?utf-8?B?Q3czcSsyL25ldXh4dWZVaW5VT2RBaTB5LzVEK0xyZGdCWkg4YmIxZjBoUThO?=
 =?utf-8?B?Nk9hVlh2dkFlMUk5dUZDcXI3Zzcra1JxS1VDN0M4SVlZeUNUb1I4ay8yYkR0?=
 =?utf-8?B?WmdmcmViWHlwcTJacDdjdUNuTUZMa2FwQTZabTZHYmVpSFFJa3FXT2ozbU1v?=
 =?utf-8?B?T0lJMDFFMnlkdEE5ZEl6eUVxR1FKeDIyZlI3NmlrdzgwUGJ5cUZaTXhHMnFs?=
 =?utf-8?B?TlZJUldRakxmWWZBelA2TTdMMk12MFJiNTBqMitLWm84ZFNMMTFFdVM4ZUVy?=
 =?utf-8?B?WnR3MDlYMWhHQnhleVVpMVJDd2t0WUY1SEk3SXNrczVsVVFvaENSTzRldlI1?=
 =?utf-8?B?ZVkwaXhIRTRLT05VMXdmRHBnUTdqV1ExRUtRK1loNjM3V3RSTzlwV1BTSG9O?=
 =?utf-8?B?eDVqaGxuekxudFB1MWRaVHhBVlQxRVZ6WUNvRnhaZHdRb295ZGZWSkJLYTdP?=
 =?utf-8?B?U2lYYllTVWZpK21FQXV0THZoMHlYc3hyb0tLNVpEajh0ejZqdUJnTUZhcE1I?=
 =?utf-8?B?K0FuN3k0bFBkYmhGbjVscnlOekZKb2ZFMmgvbHRsR29UUUptVGFrVEhhWWNQ?=
 =?utf-8?B?QkRYNVNPb0o3RE9BN2Yzc0pOajQ1YjlITDJlV0xmNHZhcGNGNjFiNWdTM2hr?=
 =?utf-8?B?VDJXb1NyV2RTa2pLYkdiZ1hvVkhoa2dUYUhjc2tab2xDNU44aTRnQ256TXdu?=
 =?utf-8?B?b0ZBdDZaVktXaXF3ZzdXVHliQ1F3QWlXM09CcVQ5bWlOWHVadDRSVW9DMEI0?=
 =?utf-8?B?NW5QVW9nV2paNFpwKzRSYVJnWmFKRWN1SnhhU2Fud0t2Zml4bVdLMmJSTjhl?=
 =?utf-8?B?OTdxNUd4SW4yQXM1K1VxaHRJdWUvdStKK1M1YWJGVDRpcStMZXhibWJOcUd5?=
 =?utf-8?B?SXJIa3hWenpMbjVBcStKaGk1cVhoQklRbmg5N2svL21GOEFWR0RlNzFva29z?=
 =?utf-8?B?K201TlhnNmpJRjRYZldYZEVIS3lvVTl6MXExVTBReUVxSTl5czJXOTI1Rm8x?=
 =?utf-8?B?M0dKMVREMzZUYzJ2bllnMHY3WVV3N3pURndXTzdBN1lvOGYxR2RKZ2ZIQndL?=
 =?utf-8?B?SjNTU1pVcURGeDhJVmw4OW9BcG5oY3lJSjVGMkxTWU9iMndBUnFBSWFuTXFt?=
 =?utf-8?B?U1UyWktLUGlxUlFidENiaTVBVmtoTHBRRTdUV2htaVo4NW5TVGcyeUV6MVlJ?=
 =?utf-8?B?SDh3blhBcDI1YkxsZjlOUktpSHlYRHorQzRQVm9hVjhMYWxUZFlIRy9hcEJv?=
 =?utf-8?B?SGJPTkhQS3RxL2hUdGVQYVlnMjZPc1BwYWZ5MmJhZiszd0dmMGhlanZUSklY?=
 =?utf-8?B?YW9xU1FkSlhWcktWd0o4Y1ZhMzc0clJNK3AxanRuNlZySDM0TEZjSldwUEl1?=
 =?utf-8?B?NzJLQ1NSdGFGQVJTRHNNaGJwK0RjSENMUG1kZTNJRnc3Ym9YQnBOcmdZSGc2?=
 =?utf-8?B?cks1N0RrYVkrOW82Y1d3dm5rS3hxaTBPWHFKZHU2SUE2NWpWSEVxZnJJWTBz?=
 =?utf-8?B?UEFoeUlaYlZpWGdzK1kyQ3dCSy9tdmxYeEd3RkZ3M2RRTXBWNGI3amtQN3Ra?=
 =?utf-8?B?eEcvQW1ON0RKRkNrRnR2ZVVjTlY1bTdPTzNuRzAwN0M2V3ZlRENFVTBZNytQ?=
 =?utf-8?B?eldZdldHTXQwanJ3T29Uc0M0RjFjdURSZkc5elVVUm1RK2xrMnlmcXRjUmlX?=
 =?utf-8?B?aUo1bGtyb3lXU1dYMU43clJqUVJxM2dPTWxSRkhOZ0hMRG5mbVYvVzdiUTdI?=
 =?utf-8?B?MnB3empBd1lzcWJ3bkRLWU5lUVdrTHdGTkJwdEhuRDJtVlJrR0dPVHlwZjFW?=
 =?utf-8?B?YzNRTTQyajRHUS9qVmRZZFdyWko5WlJWVmFjeXllVFVSaCt0NU9LM0kxT3Nw?=
 =?utf-8?B?M1dVNmx4S01MdWk1aHpwTVFRc2RzbWphZzN6YzQ2WVFnS08yNWZIMFJxbVI1?=
 =?utf-8?B?TVZ0dFZEVVl4KzVKODdxWjgyTjh0c2pRYjd1OHZQRll6TnZKRlYwUGNvUFlU?=
 =?utf-8?B?ZHY4M1kxWmYxL2NtcmJTcTJqRTdBczNyOUN2Z0pJeE1KZFpqc0RqSEpUUTl5?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1679508a-d142-401a-3080-08ddfffc0060
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2025 08:33:15.9593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cokn/vvhyZNDy8KoQYecnA/mF5NHA8Udx114LTcWGATNgXDFFajNIQrm8nCE3tHn7WLFdU2kM7eSbsN9z16vpTRzbADbBVlgMsNC8TNs2DU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7319
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759221206; x=1790757206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vH0f0AW620z+Kq1SX+Tui6EESzbgrz+DaI3IbWQAxiI=;
 b=C0UHR9LIVd0j0gfUCWy0oZK1Y1GTPC0Td5wNl3or8ZR5VkWsdfYt57f3
 0Gbi4h9lfgnTJ7iiYa0FjCDS9dmWs2KcNDvGqfts8SDJnKhiNqO+MX6nx
 8gqsuZcRadTfrbLjNUchfRYM9CwXuGQRLa7719cDMz80qJfoOTvqFKdX2
 U06l/tJ0mG4dgzF/xkV/GGA6XQiAPIgqykLjmo9IwRvEYBFyWdSUoxP6K
 tnyeLmwYPyjx/2LFCy9q7sH/4kbpkJm4k9/ChCPTLP4QRaWzKrVlo9Hs/
 NeVNYXbApq8t+dw0/ctCyHLmpklUJK+cQwb7cufBA559erPmh+CQB4HcC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C0UHR9LI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: avoid redundant call
 to ixgbe_non_sfp_link_config()
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

RnJvbTogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+IA0KU2VudDog
VHVlc2RheSwgU2VwdGVtYmVyIDMwLCAyMDI1IDE6MDQgQU0NCj5PbiA5LzI1LzIwMjUgMzoyMyBB
TSwgU2ltb24gSG9ybWFuIHdyb3RlOg0KPj4gT24gV2VkLCBTZXAgMjQsIDIwMjUgYXQgMTI6MzM6
NTRQTSAtMDcwMCwgQWxvayBUaXdhcmkgd3JvdGU6DQo+Pj4gaXhnYmVfbm9uX3NmcF9saW5rX2Nv
bmZpZygpIGlzIGNhbGxlZCB0d2ljZSBpbiBpeGdiZV9vcGVuKCkNCj4+PiBvbmNlIHRvIGFzc2ln
biBpdHMgcmV0dXJuIHZhbHVlIHRvIGVyciBhbmQgYWdhaW4gaW4gdGhlDQo+Pj4gY29uZGl0aW9u
YWwgY2hlY2suIFRoaXMgcGF0Y2ggdXNlcyB0aGUgc3RvcmVkIGVyciB2YWx1ZQ0KPj4+IGluc3Rl
YWQgb2YgY2FsbGluZyB0aGUgZnVuY3Rpb24gYSBzZWNvbmQgdGltZS4gVGhpcyBhdm9pZHMNCj4+
PiByZWR1bmRhbnQgd29yayBhbmQgZW5zdXJlcyBjb25zaXN0ZW50IGVycm9yIHJlcG9ydGluZy4N
Cj4+Pg0KPj4+IEFsc28gZml4IGEgc21hbGwgdHlwbyBpbiB0aGUgaXhnYmVfcmVtb3ZlKCkgY29t
bWVudDoNCj4+PiAiVGhlIGNvdWxkIGJlIGNhdXNlZCIgLT4gIlRoaXMgY291bGQgYmUgY2F1c2Vk
Ii4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEFsb2sgVGl3YXJpIDxhbG9rLmEudGl3YXJpQG9y
YWNsZS5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX21haW4uYyB8IDQgKystLQ0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2l4Z2JlL2l4Z2JlX21haW4uYw0KPj4+IGluZGV4IDkwZDRlNTdiMWM5My4uMzllZjYwNGFm
M2ViIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX21haW4uYw0KPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX21haW4uYw0KPj4+IEBAIC03NDQ5LDcgKzc0NDksNyBAQCBpbnQgaXhnYmVfb3BlbihzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2KQ0KPj4+ICAJCQkJCSBhZGFwdGVyLT5ody5saW5rLmxpbmtf
aW5mby5saW5rX2NmZ19lcnIpOw0KPj4+ICANCj4+PiAgCQllcnIgPSBpeGdiZV9ub25fc2ZwX2xp
bmtfY29uZmlnKCZhZGFwdGVyLT5odyk7DQo+Pj4gLQkJaWYgKGl4Z2JlX25vbl9zZnBfbGlua19j
b25maWcoJmFkYXB0ZXItPmh3KSkNCj4+PiArCQlpZiAoZXJyKQ0KPj4+ICAJCQllX2Rldl9lcnIo
Ikxpbmsgc2V0dXAgZmFpbGVkLCBlcnIgJWQuXG4iLCBlcnIpOw0KPj4+ICAJfQ0KPj4+ICANCj4+
IA0KPj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlcmUgaXMgc29tZSBpbnRlbmRlZCBzaWRlLWVmZmVj
dCBvZg0KPj4gY2FsbGluZyBpeGdiZV9ub25fc2ZwX2xpbmtfY29uZmlnKCkgdHdpY2UuDQo+PiAN
Cj4NCj5Hb29kIHF1ZXN0aW9uLg0KPg0KPkl0IGxvb2tzIGxpa2UgdGhpcyB3YXMgaW50cm9kdWNl
ZCBieSA0NjAwY2RmOWY1YWMgKCJpeGdiZTogRW5hYmxlIGxpbmsNCj5tYW5hZ2VtZW50IGluIEU2
MTAgZGV2aWNlIikgd2hpY2ggYWRkZWQgdGhlIGNhbGxzIHRvIGl4Z2JlX29wZW4uIE9mDQo+aW50
ZXJlc3QsIHdlIGRvIGFsc28gY2FsbCB0aGlzIGZ1bmN0aW9uIGluIGl4Z2JlX3VwX2NvbXBsZXRl
IHdoaWNoIGlzDQo+Y2FsbGVkIGJ5IGl4Z2JlX29wZW4sIGJ1dCBvbmx5IGlmIGl4Z2JlX2lzX3Nm
cCgpIGlzIGZhbHNlLiBOb3Qgc3VyZSB3aHkNCj5FNjEwIG5lZWRzIHNwZWNpYWwgY2FzaW5nIGhl
cmUuDQo+DQo+SSBkb24ndCBzZWUgYSByZWFzb24gd2UgbmVlZCB0d28gY2FsbHMsIGl0IGxvb2tz
IHJlZHVuZGFudCwgYW5kIGV2ZW4gaWYNCj5pdCBoYXMgc29tZSBuZWNlc3Nhcnkgc2lkZSBlZmZl
Y3QuLiB0aGF0IHNob3VsZCBhdCBsZWFzdCBkZXNlcnZlIGENCj5jb21tZW50IGV4cGxhaW5pbmcg
d2h5Lg0KPg0KPkhvcGVmdWxseSBzb21lb25lIGZyb20gdGhlIGl4Z2JlIHRlYW0gY2FuIHBpcGUg
aW4gYW5kIGV4cGxhaW4gb3IgQUNLDQo+dGhpcyBjaGFuZ2UuDQoNCg0KVGhhbmtzIGZvciB5b3Vy
IHZpZ2lsYW5jZSEgOikgYnV0IGkgYW0gYWZyYWlkIHRoZXJlIGlzIG5vIHJlYXNvbiBmb3INCmhh
dmluZyBpdCBkb3VibGVkIGhlcmUNCg0KVW5mb3J0dW5hdGVseSBpdCBsb29rcyBsaWtlIGl0IGhh
cyBiZWVuIGludHJvZHVjZWQgYnkgbWlzdGFrZQ0KYW5kIGlzIGluZGVlZCByZWR1bmRhbnQuDQoN
ClJldmlld2VkLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnplai5qYWdpZWxza2lAaW50ZWwu
Y29tPg0KDQo+DQo+PiAuLi4NCj4+IA0KDQo=
