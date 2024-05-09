Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 130DB8C0A7F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 06:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B3D2403A7;
	Thu,  9 May 2024 04:38:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F7P1iYwsi2h7; Thu,  9 May 2024 04:38:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6190404A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715229527;
	bh=r7vZ3CmuwRK2nSnspoBc7+KxbdZNr7bL9i09Im26+nY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JhE1/fpH9YJ5BtlG+n13Ib6eS+Y5ryvCbfjgOOChEhMAe09wUAeyCSq3fXfckNa8r
	 SCJ0hHEovpGbxLYuWmI9bnDD7O6pp4+k1f1MfAEglBathRAo9DCU3yfd4mNNTnrO5W
	 eauQ7tH0jywyyS+PA8UZjJ7TzzoslbCqJPxDLxuDbqX40rKfWU9vBn4d+7r4wDmDwU
	 YfvN00E888u6/cQxHk+bBsyuSRdi9sl0ULT0yItITBdlofe5Q+XGfIwmSs6SXGaWfy
	 32pc6I5iI43q56BWBoERHak9ZAi0YRcp7SY5mhzE+ToKAQ15uXgZg1iyDJtwndwI1y
	 sNoD0u9nqA9bg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6190404A3;
	Thu,  9 May 2024 04:38:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 660AD1BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 04:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50DB060AC6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 04:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rf0mVFfkrE1V for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 04:38:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5CAF7605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CAF7605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CAF7605D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 04:38:43 +0000 (UTC)
X-CSE-ConnectionGUID: CgeFs1rXQluG6HhcEL9e6w==
X-CSE-MsgGUID: gThtI7fyTkSzWiTAA6NFUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="33636318"
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="33636318"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 21:38:41 -0700
X-CSE-ConnectionGUID: lL113rAtQemBd6lG/RzUTw==
X-CSE-MsgGUID: MmQo5elWQVCKAKI5WVbC/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="33588804"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 21:38:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 21:38:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 21:38:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 21:38:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+tYkXIpndlLjTWKAMLYH/9rRfR1I7UvNOH8fNcpJaEnf6mDu//v5MJujIS+OV3vhHPOCYLTb+Dwn0hi/IPCGBLWlzI5qjJjt9QjUBA0fkTMiAqBqUuL+Qy5LN8LyDBEufyvufQRsaHWVVpxS/jXPDsmHzOhHuVqSSWbieJHCUhHzzCoDDro79b1n+E59NNo2K3IZ6i3qLrOoxHo1DPJT0LEm04a4Ta4xfffLjgsfmsYRJXOPNiGzCxOWIirjbWuRG2vfxcmVvuhUB0Ga22XmzqU4nOgcC6JXZ+tPFZZP+2TqHgxb2JLtHW3uZBfG2sZi/ClEymfLDUnEOBqUd/bnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7vZ3CmuwRK2nSnspoBc7+KxbdZNr7bL9i09Im26+nY=;
 b=JevqoSzncdWC6Z1UV8C5pGIPqS8+Pp32A3fj/FmmTCIP/GJPJtFFT/tHfYfjxDSv+DSVIlbjMDcRFTPZ2cdORXdkR8keCvZKooWrpsD0Y44GIvOZwAfZVd0+jVf+mLuLMi3XcGIu9XBdsNsO6xgCmMHFUyjyZDJy1UXZKO0AX95LWddvsTHhsmkyBrN6E7DeYOKdf2xYn3DleW3tZzMvLcAjRYndkmjX+3GBxMbh8ydqXWVqwZGWj6aj07Po/VMo5LyFoVRk0oMRPipv4pDSrb1xYJgKf3InxUvjExDiLe8aPBXmoqhkAvP0w3kKQiaWzR0jGbb9E68T9xQMSJE/kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CY5PR11MB6464.namprd11.prod.outlook.com (2603:10b6:930:30::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Thu, 9 May
 2024 04:38:33 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67%3]) with mapi id 15.20.7544.041; Thu, 9 May 2024
 04:38:33 +0000
From: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
To: Peter Hilber <peter.hilber@opensynergy.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "jstultz@google.com" <jstultz@google.com>,
 "giometti@enneenne.com" <giometti@enneenne.com>, "corbet@lwn.net"
 <corbet@lwn.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v7 01/12] timekeeping: Add base clock properties in
 clocksource structure
Thread-Index: AQHamtvFydYcyNjirUCN6XkDckMdUrGA34mAgA1+ekA=
Date: Thu, 9 May 2024 04:38:33 +0000
Message-ID: <CY8PR11MB7364F0AF837AC8621E7CB4EDC4E62@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
 <20240430085225.18086-2-lakshmi.sowjanya.d@intel.com>
 <ace1be8b-d66d-4326-b5de-0f4164df88e6@opensynergy.com>
In-Reply-To: <ace1be8b-d66d-4326-b5de-0f4164df88e6@opensynergy.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CY5PR11MB6464:EE_
x-ms-office365-filtering-correlation-id: bea83ef7-a816-4b21-bcbb-08dc6fe1e223
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|376005|7416005|1800799015|366007|38070700009; 
x-microsoft-antispam-message-info: =?utf-8?B?K29qcXVjUTNFNW8rTHY4S0piYk1HUU56MkVlZ2V0aTNZZ3EvZys3WlA1c0VM?=
 =?utf-8?B?R2tEaWNrRDYvbWo4OWJRb242ckM0SHRNaThBbzFNR1l2cVpiM0FRVlk2QzZq?=
 =?utf-8?B?N1JjemZBeXdZbUd2VDM3Q1k4SE9FNXRwbWJVYS9lOUN4N1lZcXRQclhyS3A0?=
 =?utf-8?B?ckVMQ3RBMnNWZ2d6eUZnbVZTdUNsdUJyNjJDL3pjVGRxVFBwS283d290RExm?=
 =?utf-8?B?MDkxMG45V0ZnVkNZcjQxcEVKQTFVamZja0I2TTl3dFN1NHUzN0xUSUVBam1I?=
 =?utf-8?B?Y3NmMTdVejJIcUhLRk05S1dvVlVkNlk3cWo0RE9kSzhsdEdrbm5NRkp6aW5X?=
 =?utf-8?B?cGhkVjVtMm9WWnNCdlVlbnZIL0VZV2R3NUlLbFJudmRUWjJTUG5ERVdKS0tk?=
 =?utf-8?B?d1o3aTNaci9kKzFzOTYxL3pVZi9oZlY1ajhsYWFJY0xjcDlwRnBkTHpNamY4?=
 =?utf-8?B?TERVU0d4S3cyWlJmRTZYTjdrU2hUOWUrRTdtY05rZTdJcTd0UXJydlM1TkVi?=
 =?utf-8?B?QThURTZqZ3NOejg2a2xleVhna3pwMlRCSzdoWVc3YnB3cVNkcy9IenFLOElH?=
 =?utf-8?B?aVpRUjZYRDJsekpZUnVxQXVmSVd6bVMrWk43Qmw5RUFvTU1ndyt5d3VRUlV3?=
 =?utf-8?B?OFpHV1B0c08wNE1ncmtGS0F0VXZicG05aXB3a3I4Ry9rQnFMdW9Hb1JWTTN1?=
 =?utf-8?B?VnRlZzhWd0tFUjBnRTU5YVExNmhmV3FHRWN3T3J2czAzUGFlS29WendvbGsy?=
 =?utf-8?B?Q0Rrd1lhb1FuTU5SYlc3UXRPRjBvTWo3UklqMlE0ck9xYUk0ekc0dStVR3lN?=
 =?utf-8?B?TDRQMXRoR3NoNE8rekw5UC9sZm0vOFNhRXZ6RHA4MExXL3Z5WDVtajNycmY4?=
 =?utf-8?B?U0JWeGw5dEVqMHpnckN0SU50UGpSNDJMZW5kL1k2clpvRlpGTE1sUkpuQ1NO?=
 =?utf-8?B?RHFSNVR5L1gxR2txU0xHTFN2WHdBckwrWWxmRDJyNTlVUmxqREtwNkp6a3Fs?=
 =?utf-8?B?Wlh1YmNkdjdKajlMYzIxeW90VXB6VVl6cVVlak83WWZkZEJRZUlGNXhWUnFY?=
 =?utf-8?B?dXFNU1NzS1VDME0vbTRCckJXa05jejZhVTUzcXR2TkxHTk50cjJCZXowcG1u?=
 =?utf-8?B?NisrR3dYSUQ0N3pZdzlVUldFSFErQ1ZzdzZhK3BQSk1uZTlFOGZDZXRKaitu?=
 =?utf-8?B?RjVjVnkrM091Vk9NVHVKU0hGSXY0bHBBWkxPZTd6OXE3YU9sSXVaV21mQkVr?=
 =?utf-8?B?QmNkRnNkTnNmaXhCS1p3QjlVd0NWQXg1TEtrWG8xUVh5YUlzLy9jbDRUL3Bp?=
 =?utf-8?B?empqeWMxUlJkdVlLVWpoVmlDSXhBSmNqK2c4MHRMMFFCZjNlS3lMb0VMb3l4?=
 =?utf-8?B?QW1KT1ZScWlmcCtoSjZ0NVpWU1BESjIrMWZvZTJDQXRIdFowWHh2eXFIMGw1?=
 =?utf-8?B?emphWDlORzhUekhNZmlmYWxPOGxJV2VOdDR5TnhQd2FBYTEwVVl6UHdUeUpz?=
 =?utf-8?B?UVovd2ZTN2JyeG1rU2VQRUdWUHZRWXJFQVhFaGtlOCs1TVRZVkYvYm1DcWZl?=
 =?utf-8?B?UE5id05iT0ZVRzR0N0xQdmhCamhsR2Q4TFFxWDdubXNLdGdGdXkydzhKNEhB?=
 =?utf-8?B?QlpTNGZyYjdHQnIyejFiUHRoYWhsVjJUL1RHRGFscGpmM0pnMldrN21KZGZO?=
 =?utf-8?B?VUU2VEJ2ZkI0NEtOTXFldmZFVlRCU3ZVMU1WSnJNWU9hTW9TVFpOL2VjcldD?=
 =?utf-8?B?d09mZTE0dm10SnM0SEhDNkY1ZTI1WVpuVXc4b0RTL2dYcGlMWDhoT05oeG1Q?=
 =?utf-8?B?VVp5ZmJqTnl0OXpSb1NGQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(366007)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWVUQ1hHMy80aXdhTjQ2c2hlSUZvTk5pdUVkN25yd3RpSUtIN0dZTVR3aWVi?=
 =?utf-8?B?TklvVTUrRXFCcWZVcXVsekVpN3VqbDYvNXFDckg4TEJscC9lVnhpUE13RHAz?=
 =?utf-8?B?QU54WjEvR3Z1R0VQZ1Y5Tnp2SThFaUswNDlwOEFWQ240MElvc3N2Z09NZ25M?=
 =?utf-8?B?Qk1HRm01MlVCWk00clJPanBSZHZ4R1kzR2FWVVFzaGx1OXNNa1poNFc0Z1ox?=
 =?utf-8?B?UUtLdkdJRWNaeVo2OTVaNlByeG4xYzlNZ3JaMzUvWlBJOHVOYVdFZmpTTDZw?=
 =?utf-8?B?OWMyU3Bna1VFUndNZm1EYXBGOC92Y3dKaFVEdUppeVFqWVNUMXR5Si9CSXJB?=
 =?utf-8?B?aVltUmFOWUo1OFYwc012bjhCbTdLcGI1YmZraHFRdDRQYXM5eDg3bzVkazhw?=
 =?utf-8?B?b3MwWDJuSXB1SEd4Z0tNWnZ4U0d6N25id1c1NUNHeU54NFBKcGh1RjJFNXhy?=
 =?utf-8?B?SGFuUlBhK1JicE94c3c0WEIxMUZqYlN0VFdESU41QjhBMjk1YlpMYmgxOXZ4?=
 =?utf-8?B?R3AyLzcvQVJZQzRuVjBHYVd6NGtrSmhQd2RsQXNKaFBHUU1IUnJINXJsd3dC?=
 =?utf-8?B?S3h3QnZBaTFlRzVyd3FNMEFiWmJBTW51bWQ1Wno5NUQwSWEwMnBFdElvQUVv?=
 =?utf-8?B?QktiREhPRDlselJrOHVBZGhLSTUvRFNsOTBBRGo5RXNsTmRGYjVrV25wWDBK?=
 =?utf-8?B?NmNwTVVBbXNDajQ5bW01Ti9HY00rZUhYQW1MYlJja01LbVhEN200dXp0MUVQ?=
 =?utf-8?B?U0hWbzJSZkMrREcyTHdVWEx5UmNSdnJJOHg4U0hxRHhKTGVqSnNxN2NnbWVi?=
 =?utf-8?B?OGNvZVdVRUx4THpVbk4xMHlXMnhHeVNZUzBFdGxpRjM2NW5Bd3hKNzcvRXBl?=
 =?utf-8?B?c29DMkNtRkkzM1ZISUJLaDV2OTlBYXRCOCt1TGhDVTZBc1MyUXJDK2k1QnlK?=
 =?utf-8?B?VlZXYmpUS1FXZWdvdEZWYU1CTkIwWEh3SWcrTm5Xd3BSRmhJVDhuNzhkamJD?=
 =?utf-8?B?aUsyNDRrTmJ2M252NGwyaXRNbnlCalZ2b3NwVU9MU0FRd0RFU2dlL2M3Qklr?=
 =?utf-8?B?c3R4N3kxclJRTVZEa05ZVm4xSzN1MGtNSFcvWVZ1S254cUhEQ00zV3BGSFNt?=
 =?utf-8?B?NWlQNStCMkRZWEZJb1hUL1g3Yzl2ZkFiZnpxR2FKdFlGZmRjSkhsaFZoSmsx?=
 =?utf-8?B?OWdQSFBVS3YwMWVKNzRGc2ZtL1d0bjdTbDM5VVNiR3lVd0R1eVVrZGdTU2pQ?=
 =?utf-8?B?blM3Q1Q4ZURZekhRTHBsYWhvaE1McFZqL203ZDRtNVBJY1E5a1ZYWnZVelZJ?=
 =?utf-8?B?eUJISWpISXhsd2hya0F0WTluNk5TaWx0UDBOR1krK0F3QU9VOFVDYjFhZXhE?=
 =?utf-8?B?T0FmbW5nYkVIUjkzbVBseCtJbzJKZ1hhTElRQUtCWC9kVk5Uc0FoZTVWL2Ja?=
 =?utf-8?B?UlFiQkdUeGZUTC9GR1J2YU81WXBkOEkxekovZHFPS2NreEhtN0N2MnJZK1Ay?=
 =?utf-8?B?TVlwMGZjYUhHeWtZRkk2UTBHWUpZVVdIZkpkbXVjMytKZUJ6TXRPVWtadW84?=
 =?utf-8?B?Qkc4OXZ1U1BuMkxtcnhmOWwybUsyMWYwdmNFU3pkdUhCZmt2OWQ0UWtaSjlo?=
 =?utf-8?B?RVV1MTEzQmlHMTBjeUNWWGF5OXhmbnVxeGlPLy96TUl1WkF5dUQrR0ozNnNT?=
 =?utf-8?B?a0lnMzRhNkhpbFhOdU0yTGVJQ3BrbENvQTU1b3kwZGNJZ2pEeUxqaDFzK2lv?=
 =?utf-8?B?VUxMUVA3U1FlM1E0UmRsa2JxUWRhbUY0dmdMaFh6bmpZbEZvVlBXUjFXKzhl?=
 =?utf-8?B?M3U4U2xoQzRSZUpwNlhFTFF1MWs5VU4xU2tNUGR3dGQ1L3hCamJHa0FaQ0hk?=
 =?utf-8?B?dXpBNHo5WEZrSmJNSjZramtuTWk3VW5RWkhzakp2MmNxMDdZOStETE1WYzZn?=
 =?utf-8?B?SHpXUGpIME1GbmJhSHl1c0NLcVpqMVBYeUNCem8xcCsvSWlFMG5UYzM0VUJq?=
 =?utf-8?B?MUlWZkdTNXFOSFJHdjBWWGVEU2owcFhwWDBGQ09MY0RhSzBxZFpwU1R5aTJF?=
 =?utf-8?B?cDhrYlFlb2p1N20wdHF3Qm1tVnBMRGhKa3hIVUJrbmtySVlScERhaGJQcEFD?=
 =?utf-8?B?bFJpNUdFdG9LbzI4ai8rZjBCTGxSMGk4VXFJeTdnaWVZZUxJTlAwbmg5blh1?=
 =?utf-8?B?Tmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bea83ef7-a816-4b21-bcbb-08dc6fe1e223
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 04:38:33.2033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ix3RSUCi87k0hxqH14X+k7FfPM2J4QyyKdAwJeJOZ6tpTMVbP+wOi5pfMBwBYUVVrt2AnDhKA/ri5TcSZUIxe+GNOM0Fyxd4FHUDF27dDyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6464
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715229523; x=1746765523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r7vZ3CmuwRK2nSnspoBc7+KxbdZNr7bL9i09Im26+nY=;
 b=CUB7WvD+JZoJwn63Z8dasTLFcWOM1dab/hGCkAjmMMPJyhUwr3Buvv+z
 yqUSDEK7AI2Dx+mJMYeWMCTvToRjgo8KTjm3UNqZ/KKPYrn3TjIpQ46Sa
 qFs++ClJd9yLE3nBzlqUVIZ4rxvd208mTPp8zHXsLkf98v9357LPILmWT
 DcEzKQnVOlH8GBbQageec103Leqhb0C/M60N63+pIMJp2VxVrmePxbtqn
 Z3a+GeWD7OmMSMxyPdgDrJZEZqTCJgOr/Q7BB8hlk8l+qacp9KalSoFok
 1lh1WkcPovwRLxqus8T9ru3PjGeiGXnYq1dbFiYe8VshqifUCenzNe79r
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CUB7WvD+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 01/12] timekeeping: Add base clock
 properties in clocksource structure
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "x86@kernel.org" <x86@kernel.org>, "Dong,
 Eddie" <eddie.dong@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGV0ZXIgSGlsYmVyIDxw
ZXRlci5oaWxiZXJAb3BlbnN5bmVyZ3kuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBBcHJpbCAzMCwg
MjAyNCA3OjU4IFBNDQo+IFRvOiBELCBMYWtzaG1pIFNvd2phbnlhIDxsYWtzaG1pLnNvd2phbnlh
LmRAaW50ZWwuY29tPjsNCj4gdGdseEBsaW51dHJvbml4LmRlOyBqc3R1bHR6QGdvb2dsZS5jb207
IGdpb21ldHRpQGVubmVlbm5lLmNvbTsNCj4gY29yYmV0QGx3bi5uZXQ7IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IHg4NkBrZXJuZWwub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1kb2NAdmdlci5rZXJuZWwub3JnOw0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMu
b3N1b3NsLm9yZzsgYW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tOyBEb25nLA0KPiBF
ZGRpZSA8ZWRkaWUuZG9uZ0BpbnRlbC5jb20+OyBIYWxsLCBDaHJpc3RvcGhlciBTDQo+IDxjaHJp
c3RvcGhlci5zLmhhbGxAaW50ZWwuY29tPjsgQnJhbmRlYnVyZywgSmVzc2UNCj4gPGplc3NlLmJy
YW5kZWJ1cmdAaW50ZWwuY29tPjsgZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsNCj4gYWxleGFuZHJlLnRv
cmd1ZUBmb3NzLnN0LmNvbTsgam9hYnJldUBzeW5vcHN5cy5jb207DQo+IG1jb3F1ZWxpbi5zdG0z
MkBnbWFpbC5jb207IHBlcmV4QHBlcmV4LmN6OyBsaW51eC0NCj4gc291bmRAdmdlci5rZXJuZWwu
b3JnOyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Ow0KPiBO
LCBQYW5kaXRoIDxwYW5kaXRoLm5AaW50ZWwuY29tPjsgTW9oYW4sIFN1YnJhbWFuaWFuDQo+IDxz
dWJyYW1hbmlhbi5tb2hhbkBpbnRlbC5jb20+OyBUIFIsIFRoZWplc2ggUmVkZHkNCj4gPHRoZWpl
c2gucmVkZHkudC5yQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NyAwMS8xMl0g
dGltZWtlZXBpbmc6IEFkZCBiYXNlIGNsb2NrIHByb3BlcnRpZXMgaW4NCj4gY2xvY2tzb3VyY2Ug
c3RydWN0dXJlDQo+IA0KPiBPbiAzMC4wNC4yNCAxMDo1MiwgbGFrc2htaS5zb3dqYW55YS5kQGlu
dGVsLmNvbSB3cm90ZToNCj4gPiBGcm9tOiBMYWtzaG1pIFNvd2phbnlhIEQgPGxha3NobWkuc293
amFueWEuZEBpbnRlbC5jb20+DQo+ID4NCj4gPiBBZGQgYmFzZSBjbG9jayBoYXJkd2FyZSBhYnN0
cmFjdGlvbiBpbiBjbG9ja3NvdXJjZSBzdHJ1Y3R1cmUuDQo+ID4NCj4gPiBQcm92aWRlIGdlbmVy
aWMgZnVuY3Rpb25hbGl0eSBpbiBjb252ZXJ0X2Jhc2VfdG9fY3MoKSB0byBjb252ZXJ0IGJhc2UN
Cj4gPiBjbG9jayB0aW1lc3RhbXBzIHRvIHN5c3RlbSBjbG9ja3NvdXJjZSB3aXRob3V0IHJlcXVp
cmluZyBhcmNoaXRlY3R1cmUNCj4gPiBzcGVjaWZpYyBwYXJhbWV0ZXJzLg0KPiA+DQo+ID4gVGhp
cyBpcyBpbnRlbmRlZCB0byByZXBsYWNlIGNvbnZlcnRfYXJ0X3RvX3RzYygpIGFuZA0KPiA+IGNv
bnZlcnRfYXJ0X25zX3RvX3RzYygpIGZ1bmN0aW9ucyB3aGljaCBhcmUgc3BlY2lmaWMgdG8gY29u
dmVydCBBUlQNCj4gPiAoQWx3YXlzIFJ1bm5pbmcgVGltZXIpIHRpbWUgdG8gdGhlIGNvcnJlc3Bv
bmRpbmcgVFNDIHZhbHVlLg0KPiA+DQo+ID4gQWRkIHRoZSBpbmZyYXN0cnVjdHVyZSBpbiBnZXRf
ZGV2aWNlX3N5c3RlbV9jcm9zc3RzdGFtcCgpLg0KPiA+DQo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBU
aG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4NCj4gPiBDby1kZXZlbG9wZWQtYnk6
IENocmlzdG9waGVyIFMuIEhhbGwgPGNocmlzdG9waGVyLnMuaGFsbEBpbnRlbC5jb20+DQo+ID4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZXIgUy4gSGFsbCA8Y2hyaXN0b3BoZXIucy5oYWxsQGlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMYWtzaG1pIFNvd2phbnlhIEQgPGxha3NobWku
c293amFueWEuZEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGluY2x1ZGUvbGludXgvY2xvY2tz
b3VyY2UuaCB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiBpbmNsdWRlL2xpbnV4
L3RpbWVrZWVwaW5nLmggfCAgMiArKw0KPiA+ICBrZXJuZWwvdGltZS90aW1la2VlcGluZy5jICAg
fCAzOQ0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ID4gIDMgZmls
ZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiBbLi4u
XQ0KPiA+IGRpZmYgLS1naXQgYS9rZXJuZWwvdGltZS90aW1la2VlcGluZy5jIGIva2VybmVsL3Rp
bWUvdGltZWtlZXBpbmcuYw0KPiA+IGluZGV4IGI1OGRmZmM1OGE4Zi4uNGU1ZTkzMWU3NjZhIDEw
MDY0NA0KPiA+IC0tLSBhL2tlcm5lbC90aW1lL3RpbWVrZWVwaW5nLmMNCj4gPiArKysgYi9rZXJu
ZWwvdGltZS90aW1la2VlcGluZy5jDQo+ID4gQEAgLTExOTMsNiArMTE5Myw0MiBAQCBzdGF0aWMg
Ym9vbCB0aW1lc3RhbXBfaW5faW50ZXJ2YWwodTY0IHN0YXJ0LCB1NjQNCj4gZW5kLCB1NjQgdHMp
DQo+ID4gIAlyZXR1cm4gZmFsc2U7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgYm9vbCBjb252
ZXJ0X2Nsb2NrKHU2NCAqdmFsLCB1MzIgbnVtZXJhdG9yLCB1MzIgZGVub21pbmF0b3IpIHsNCj4g
PiArCXU2NCByZW0sIHJlczsNCj4gPiArDQo+ID4gKwlpZiAoIW51bWVyYXRvciB8fCAhZGVub21p
bmF0b3IpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiArCXJlcyA9IGRpdjY0X3U2
NF9yZW0oKnZhbCwgZGVub21pbmF0b3IsICZyZW0pICogbnVtZXJhdG9yOw0KPiA+ICsJKnZhbCA9
IHJlcyArIGRpdl91NjQocmVtICogbnVtZXJhdG9yLCBkZW5vbWluYXRvcik7DQo+ID4gKwlyZXR1
cm4gdHJ1ZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgY29udmVydF9iYXNlX3Rv
X2NzKHN0cnVjdCBzeXN0ZW1fY291bnRlcnZhbF90ICpzY3YpIHsNCj4gPiArCXN0cnVjdCBjbG9j
a3NvdXJjZSAqY3MgPSB0a19jb3JlLnRpbWVrZWVwZXIudGtyX21vbm8uY2xvY2s7DQo+ID4gKwlz
dHJ1Y3QgY2xvY2tzb3VyY2VfYmFzZSAqYmFzZSA9IGNzLT5iYXNlOw0KPiA+ICsJdTMyIG51bSwg
ZGVuOw0KPiA+ICsNCj4gPiArCS8qIFRoZSB0aW1lc3RhbXAgd2FzIHRha2VuIGZyb20gdGhlIHRp
bWUga2VlcGVyIGNsb2NrIHNvdXJjZSAqLw0KPiA+ICsJaWYgKGNzLT5pZCA9PSBzY3YtPmNzX2lk
KQ0KPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ICsNCj4gPiArCS8qIENoZWNrIHdoZXRoZXIgY3Nf
aWQgbWF0Y2hlcyB0aGUgYmFzZSBjbG9jayAqLw0KPiA+ICsJaWYgKCFiYXNlIHx8IGJhc2UtPmlk
ICE9IHNjdi0+Y3NfaWQpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiArCW51bSA9
IHNjdi0+dXNlX25zZWNzID8gY3MtPmZyZXFfa2h6IDogYmFzZS0+bnVtZXJhdG9yOw0KPiA+ICsJ
ZGVuID0gc2N2LT51c2VfbnNlY3MgPyBVU0VDX1BFUl9TRUMgOiBiYXNlLT5kZW5vbWluYXRvcjsN
Cj4gPiArDQo+ID4gKwlpZiAoIWNvbnZlcnRfY2xvY2soJnNjdi0+Y3ljbGVzLCBudW0sIGRlbikp
DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiArCXNjdi0+Y3ljbGVzICs9IGJhc2Ut
Pm9mZnNldDsNCj4gPiArCXJldHVybiB0cnVlOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICAvKioNCj4g
PiAgICogZ2V0X2RldmljZV9zeXN0ZW1fY3Jvc3N0c3RhbXAgLSBTeW5jaHJvbm91c2x5IGNhcHR1
cmUNCj4gc3lzdGVtL2RldmljZSB0aW1lc3RhbXANCj4gPiAgICogQGdldF90aW1lX2ZuOglDYWxs
YmFjayB0byBnZXQgc2ltdWx0YW5lb3VzIGRldmljZSB0aW1lIGFuZA0KPiA+IEBAIC0xMjM4LDgg
KzEyNzQsNyBAQCBpbnQgZ2V0X2RldmljZV9zeXN0ZW1fY3Jvc3N0c3RhbXAoaW50DQo+ICgqZ2V0
X3RpbWVfZm4pDQo+ID4gIAkJICogc3lzdGVtIGNvdW50ZXIgdmFsdWUgaXMgdGhlIHNhbWUgYXMg
Zm9yIHRoZSBjdXJyZW50bHkNCj4gPiAgCQkgKiBpbnN0YWxsZWQgdGltZWtlZXBlciBjbG9ja3Nv
dXJjZQ0KPiA+ICAJCSAqLw0KPiA+IC0JCWlmIChzeXN0ZW1fY291bnRlcnZhbC5jc19pZCA9PSBD
U0lEX0dFTkVSSUMgfHwNCj4gPiAtCQkgICAgdGstPnRrcl9tb25vLmNsb2NrLT5pZCAhPSBzeXN0
ZW1fY291bnRlcnZhbC5jc19pZCkNCj4gPiArCQlpZiAoIWNvbnZlcnRfYmFzZV90b19jcygmc3lz
dGVtX2NvdW50ZXJ2YWwpKQ0KPiA+ICAJCQlyZXR1cm4gLUVOT0RFVjsNCj4gDQo+IEFGQUlVIHRo
ZSBlcnJvciBjb25kaXRpb24NCj4gDQo+IAlzeXN0ZW1fY291bnRlcnZhbC5jc19pZCA9PSBDU0lE
X0dFTkVSSUMNCj4gDQo+IGlzIHNpbGVudGx5IGRyb3BwZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHNo
b3VsZG4ndCBiZS4NCj4gDQo+IGdldF9kZXZpY2Vfc3lzdGVtX2Nyb3NzdHN0YW1wKCkgY2FuIG9u
bHkgY2hlY2sgdGhlIGlkZW50aXR5IG9mIGENCj4gY2xvY2tzb3VyY2UgKGJhc2UpIGZvciBub24t
Z2VuZXJpYyBpZHMuDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gUGV0ZXINCg0KVGhhbmtzIFBldGVy
LA0KTm90ZWQuIFRoZSBjaGVjayB3aWxsIGJlIGFkZGVkIGFzIGJlbG93Og0KDQppZiAoc3lzdGVt
X2NvdW50ZXJ2YWwuY3NfaWQgPT0gQ1NJRF9HRU5FUklDIHx8DQogICAgICAgICAgICAgICAgICAg
ICAgICAgIWNvbnZlcnRfYmFzZV90b19jcygmc3lzdGVtX2NvdW50ZXJ2YWwpKQ0KDQpSZWdhcmRz
LA0KU293amFueWENCg0K
