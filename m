Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF3A2EC63
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 13:20:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B401B40952;
	Mon, 10 Feb 2025 12:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2UN4TzftBRWv; Mon, 10 Feb 2025 12:19:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46F5A40953
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739189996;
	bh=MDo1GKZeRDTnlmxK5SSYtIv3sSnG+6OCbIpw+kd2whY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4EAHIZV0Ov360puCO6wLHibkdMFNca8GcZsOIUw3/AvNLZItiAeQr6ldf/ymdJ4KZ
	 DdNPasKM0jbvZZBgn7lwqxT7bsEM6QXmYG5+kpWZOstQ6VhYbsx5nXIOhvWbYF6dHR
	 kojOVj4xu4SajrBFZIZDIT4TMyo8ZGeN6jM0ydoFKfC9tyXz3x/ko+CaAOWwwUwDyV
	 H+DD4pkzu/yn8otW15Pqx6TEc6GmwUVu80g73AVHRyPQreY1cPXGsmAmHkFNInwhx5
	 oPITYwKbAUfzsq7KRoG3cJFAf0/4DroWtWanSf8e1CWOuwr+E7hq1nffIBQOtO/m+2
	 0TzUrs7dSaOMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46F5A40953;
	Mon, 10 Feb 2025 12:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E6EAC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 302C281770
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:19:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sImSgKQx5dHg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 12:19:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B68E81776
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B68E81776
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B68E81776
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:19:53 +0000 (UTC)
X-CSE-ConnectionGUID: wrIGUtjgQUedfp54Tkre0A==
X-CSE-MsgGUID: IpMm7ZrsRrqdqt5kLFtq7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43694016"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="43694016"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:19:52 -0800
X-CSE-ConnectionGUID: zyewwEquQXy7WjYxaLEskw==
X-CSE-MsgGUID: IdION0t6T0Oq/a9iPLHyuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112010609"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 04:19:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 04:19:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 04:19:51 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 04:19:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OPVNkzFlEohH9Zo097vHEPyYVrMMy19hJsflSucFIXGKOESRNguxZ0b9t9pKPo8AvoonLyopqg3S5fumU+/+3vgdLEt6OZ7rmJu9o6mvnikPEIO7BMCtV+VDw4+Wi4Plk5L7gV2KwRA8P9Sq+SPBqtEwcUpyDyG3bbJaM1OFtplAdOqzQyhCoHIERi9i7iR4oGmb5Oge5iy5a8NMGjw/435fRmaQv6MbKg39C0/Af5Wn4qLinP42psLR2HaHBoVq25hYyj053HkNi4+bw+CE6mt0h701aV6u7iwKsf5kvF7T8kPsa5LJfOrcl9QdNInrEtNWk99Gd0cQ3M/IPCo2qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MDo1GKZeRDTnlmxK5SSYtIv3sSnG+6OCbIpw+kd2whY=;
 b=YNItAnSUkQVtjcMxdrZ9HhUthxDwUpjf/We8poRpAXdshfg1Vt582WYapMSavcqK631cMFJBiGYZFSAe4n6AK0znid/FL7Dtw6UOeMMRQO6RfcITHbdbvYcRifJIL30uUKWbw4gcYwuPz+1V/ySBJg+DFeSjSmkAYj9BtSrjdzIn0A/YqDHKk3u4BkKdqq8ESWi6avp8mIMWozHxD77ADksSbLzOzEpml8Kf/R9UqG3noEfuhBcXL2Egfk1HJwqC6B+JjJMiI1OjQWf45VNmXmQTTjhsKJgtqY/nMf/Gx5kzL0tHsV/COOtF1KJ5y1KehsKyEdrIij7OPx9boBuHBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SN7PR11MB6603.namprd11.prod.outlook.com (2603:10b6:806:271::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Mon, 10 Feb
 2025 12:19:49 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8422.010; Mon, 10 Feb 2025
 12:19:48 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
Thread-Index: AQHbe6oYUcw9MSBhO0m17sppypxQfrNAadMAgAACY5CAAAUqAIAAAsVg
Date: Mon, 10 Feb 2025 12:19:48 +0000
Message-ID: <DS0PR11MB7785E94A608ED30F331FF770F0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
 <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
 <DS0PR11MB77854D8F8DEEE0A44BB0E17EF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
 <442420d6-3911-4956-95f1-c9b278d45cd6@molgen.mpg.de>
In-Reply-To: <442420d6-3911-4956-95f1-c9b278d45cd6@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SN7PR11MB6603:EE_
x-ms-office365-filtering-correlation-id: 5730265b-9966-40f6-1531-08dd49cd3652
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d3ovUjkzMjBtSnBnZGxrdGMyN2ZrSzNiejZ3OEF4eE9GZlNjdFBGb3ZOOEd1?=
 =?utf-8?B?OXRrZE9kZ0pLTTlKeXhtcEhDWTRwUFlvNW9ndi93VHROV3BNU1RxRno4OU10?=
 =?utf-8?B?UVBsWS92b3I4Q3J0dWRpNklydGVjWVBkTnBZV0E0TVJXUlgvS2lSTFQ3bEhF?=
 =?utf-8?B?aEU3RW10emVYSmxHMEJGUjBtWkVUbEdnV3dmRDhwOEtXeUYvaW91VHJ5Ulp5?=
 =?utf-8?B?TXNKd0RlTFN3UkdQVGxWWkl3M1I4a0dUY1Jhd2JseSszRGlZODd0Z0Jvb2JL?=
 =?utf-8?B?S3dadFJ0ckdaR2pXa1R0TFdVY3pNVFh5TEhlVm5LQldrUTUySTh6U01Hd0th?=
 =?utf-8?B?NHl0eGpDYU1uMHJISnJsWm1NQUlKeEUyY2ZoaXc2ek43SGcwSExUalYvOFpi?=
 =?utf-8?B?bGhmclgwcDZINFFoUjV1MlBzZUhLR2o3RVFSOEoxSkdTdUxya2pZZDEyUUxN?=
 =?utf-8?B?RjBpZjlUTDBTWkcvRDNIMHlHSWtWaFNCT1g2enBuQWxZeTcyOHNJZFYzWEk3?=
 =?utf-8?B?Y1p2WC9VR1IrMmgvK2pnaldOZytHZk42ZE9RVzhtbk8xRmhsZnVrS29jZkdv?=
 =?utf-8?B?OC9ibytFSnRZMEYvZnpDVkp0a3BpcXl3cjQxRGNmY1VBTDRGVDFmTXQyN3FZ?=
 =?utf-8?B?b04wQ3pmd0JHNEF5QS9KaEJ6Q1laSzFoTXpMMzZ6ME1yOWFvZWhwNGw2UmFq?=
 =?utf-8?B?c2Q3TmtaVTZCSHAzR1NGQzFHR1VLRWZOUzlGRENSNjdRMzFoYVFJSHZJYWZQ?=
 =?utf-8?B?dzVaeHl0OSt3dWtFK29yYmRmNVlVSG9UZEZZY1kxQjF4WmYzYUs1RnBwSkxo?=
 =?utf-8?B?T3FZQlg2YlhPVTAwYlNtaE1lR1BFb2gxbDVKUVpuYStpNUsrSXAzVUo0anNr?=
 =?utf-8?B?WjdwTWhBSjNSMVRuZzlzWUtFSldyTzNIWjB1U0FRRW5NM3RZd2k2SjcwSkhE?=
 =?utf-8?B?RlQ1R0tUcFBlY2JFTmw5VkZtd0FKNW01dGVWMzQ0ZjZDbzdTbVkrN1RhODIy?=
 =?utf-8?B?T3VRdEZrUnNlNWZTMHZqZDE3enFkU1pNQkMwdjB4NnBhVHFQRWRja21rNnds?=
 =?utf-8?B?NUZtWHlpMFZKc3YyYi8yS3lLYS9LTWI0cm83WDNMQUhkSU9WenZDaVp2QjNO?=
 =?utf-8?B?S2hmTi83d2d6clJ4c2prS0c1NVlPaCtmdnhobkRhdVFLdXl3emVnK3VKa215?=
 =?utf-8?B?R2dvRksrRTBMU0FXUGZIelozWnB0MWlkbE5BN0UzOHFvTTd4UlJFSTBIakNy?=
 =?utf-8?B?UjFnMjY4RlpNR24yWi9mV0w4SGpHMXNSQzNaRkpUdHhHT0d1Y2I0TDVrQUtr?=
 =?utf-8?B?ZXhXVEpocithMENnY0dMb0hvMEpKVjY2RE9zanpuaXl2Rjg4Zi9iN0RwdjZU?=
 =?utf-8?B?VHQwd0I3NHZreERhNFZjQkNCY1JxdEMzZUliR3lHZEpPU3hyM0NoUDR5SStN?=
 =?utf-8?B?cGVhSXZ0UFlUeGNWNUtjZjQyTnV3SitYM0c4TDBRR0Irc0g4dDk2cUhpcmRB?=
 =?utf-8?B?RjFGYnlIVHljamVDVjV4WEpSZ0g0ZFU4U1FkOEIvS1UxQTRtRnliVDlQUlVM?=
 =?utf-8?B?ZHladUwwanVVRGdwazJ3Tng0S1lGQU4xbVFla004dFJLNnlLeDFiaTBEMUZx?=
 =?utf-8?B?cHUxemh5TmQ0c2FiaFZONWcvOEtLZ2Z6aGRBaDRXRlhua00ydmhKbU00K21T?=
 =?utf-8?B?TGdwWUx1R09xd0wrdDU3d3pFZlY2T0NKbEF5K2JPMHZUNDdCeWZhRDJnbWNm?=
 =?utf-8?B?UzFKTFFQTTVoNUNpbEtwbDBaTTM0L2M5dFVSejJwd1JoY3YwVTBBaVdwYXhU?=
 =?utf-8?B?cDU1MzgwMGIyODJTM0tZQjZ0YlhlUGdXMnRCOFduSVBjN2plVy90MjVjUnlF?=
 =?utf-8?B?blFBWGc5U2Jhd0JlNitSMHBsWDBURlRBM1pPRkNSTTVmM0hlWE1LMUtTTnVC?=
 =?utf-8?Q?t5HmrzoIYzawK9Y/0jzNDGB+0k/3IpcJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHR3N20xV2RGekd3ZUR3aHBCSjVwZXBRcFhUMGtFRTU1eDhvR081VjN6TFc2?=
 =?utf-8?B?WkJrb2RMS080cm5nbTdOMUNtOWF3TUZQOGlBQ3grV1V5b1kvbUlXQnJuSEpl?=
 =?utf-8?B?RGR3dldwSHd2SE9KNkd4NzJyZ3VjLzBQVkpiRisrQWY4UDVYRFlnOWRyVTFS?=
 =?utf-8?B?SDl3ZzFJNzlkTXMxQjlLYjI1RElmQVJoYm1oZHpBcThpY1dzdldLNjFhcjgx?=
 =?utf-8?B?ZVM2R3pSVzVHMVh4T3FxRnhVM2JKMmE1K2RjZGY3bC91WkpydkdFY1UwNUpS?=
 =?utf-8?B?NG5BWXlscGpXVHJKRWw3Y3p4RE00WGtvMldmVmVSZlBON1k0RmxMVU9UWGdE?=
 =?utf-8?B?RTN4bW9HV1ZuY2k3cnRiWGhjd0crVjJBeTRVcFNSL1RXaHlqV2FYZkJ0d0xp?=
 =?utf-8?B?OG1iYWRmYWIxOHg2bDRhNjBINnFWa2xKc0p4WjhLSkUxcHhyUWFEL0QyVnhn?=
 =?utf-8?B?a3RJQ2VON3kyUENQVGJ3TmhWeGNYYURJbFpWdkRnNEhqck56dUhlUE9RV1JI?=
 =?utf-8?B?bGRYNXhUbHprcGV5Kzh6eXhrRGlxNFhvaTMvdXhJWmFpKzBCRDZDa2FaMWs5?=
 =?utf-8?B?REtjY1dzK3luaEpCb2V4RWViZ2JKMVV2WEtEY0FIQ2ltTGZYWTBFdGQ3U2xa?=
 =?utf-8?B?VC9BbHIrVVErOWhYOVJqQ3hXSjVJeUVOb21NR0hOWGRmcVA4dHkrb1lMaFBm?=
 =?utf-8?B?SngwMUN4aHF2TmNzN2tNTitTZi91dDBHdU9YRm1waTUwVnU3a0pPa2dzd3Fr?=
 =?utf-8?B?aWEwdGNrb0Q1QnI1QUVNV3JVNy9IVWFHK3hWdUFwU1NBZ2xpRnRMZVZsR2Jk?=
 =?utf-8?B?akg2RXlQdFg5VXZGM0ZJN0FoWG8vMDlOcVpaRTA2MWFLOTBoeXpNWjRDL0VO?=
 =?utf-8?B?VXdJaURqQmtYMDJHMlNaaG5uVzFPVEFySVBoY29xb1RIM1MwbkxpS2R4bzFv?=
 =?utf-8?B?SmJrT3lPQjNLRVAwZUFmOTRoQXpia28vTTR4YWFOSkVNZkVjN3cyeno5b2J3?=
 =?utf-8?B?aGJSVy9NclVwVDlFdldMQVQ1RXp6bXBTNmozL0FBZlRSOW5DKzBmTnVGNU1a?=
 =?utf-8?B?eXQxSDRjZ3lBNmNEK2hnZXFtMzVMOTFQQWxVSlFhTnhxUUpQY0dPTHp4WWg3?=
 =?utf-8?B?MG5xek03NkNrMTJpYkY0L3Nwa040Ykwyc2JIaVk5L0JTQmQ4dWgrTmhTc01n?=
 =?utf-8?B?UTRXaVIvVTlVOUF2ZWJnaWxibUxGVU5tUi9BTU82RXQ3akswRDUreDY0NTRq?=
 =?utf-8?B?NTBNZm4vMVBEa3JPd1BzRUUybmVNY0sxN0Z3bzhCVUZ0MWFiZ3JTQXJkZlRw?=
 =?utf-8?B?cWRtQ1Jhanh6ZnhRWHB1cGxWMlY2MFM4cVJHeGwvTlNSakNDVUhMUTRxOE0y?=
 =?utf-8?B?bmVqNE40MjV2b3o1WGFld3hNS2s5NXE5d3VNN01sdkIvaDdUUXB2cjRLNzdB?=
 =?utf-8?B?bC9uVkp6V0hmWVY3RytIMGdwS05wZ2pldVJidTRuQ1lSNXZFQUZnS1RvWVo4?=
 =?utf-8?B?UVVTejBobkluNi8vc24rTUxpWUNMQncwQ2VPZVR5eVh3alNqNXpFTlJrbE9R?=
 =?utf-8?B?dUR6QXgzKy95SFI3WGZmMlI4ZkUyYlMycmQ5K0lFeGRHbC90Q0hxNVQ5elpz?=
 =?utf-8?B?Uk5GOHdwNFE0ZzludHhmN2E5Y3d1cnBKcGJNVjdEZnlFczdrK29jN2hSM2xo?=
 =?utf-8?B?S21CRklOL0lmYzFvOXVRQktDc0xXRW5WcE9jOFY2Y2txOFc0VFQwSXJBY0NG?=
 =?utf-8?B?b3BQK1B2bENuOGF2M09IcU1FVGIzT2VBcnZBbFVsMlZYbGR5SzBXMFdzMjh0?=
 =?utf-8?B?QjhUaHNaY08remY5emwxQzg0elZlbVg3OHBBVTZPSGVTQ3ZvR2VUYW5tU0Jq?=
 =?utf-8?B?cUdhV2F5YmhMODBBV2ZvcnlHSU1FRVI0OGtadVdiTThOd2FjdkFFQ3dtS3p6?=
 =?utf-8?B?RHhEYmgrR1hYQVE1RUdYa21rVXowSmZaTHd6TmJsZzF3NXN3QjdQVlZTcERT?=
 =?utf-8?B?V3dNeVNUZVdKNmFZbWI1NFN2WVBGTXBacnFnQ0w3ZXZHVTdZckpLSVFuU0t3?=
 =?utf-8?B?WlBXQ2tvVzd6bnNack5lUStPUHBDN3BCTGxzcXlIbU11bmlBcmt5VWF1Y2kr?=
 =?utf-8?Q?hikYrEmpTbWkRkMVbRzveTIWZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5730265b-9966-40f6-1531-08dd49cd3652
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 12:19:48.4521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wko23lA97oo1LB86PaP7Pc1ThQzVrRa4i3epht5vxgofWq4rPpaf/rAvlYb+l+7PVAk/vruZiVq9jRAgPZKL9U/3+6o230hqc9z+vgqytr0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6603
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739189993; x=1770725993;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MDo1GKZeRDTnlmxK5SSYtIv3sSnG+6OCbIpw+kd2whY=;
 b=L70YOsV02ULSBQgfNFBO9BBzxI4Tj1RIievw4BH5STzl3SaCVdCH0Twh
 AgFxEwjakS2Fh/pVnRNt2f8N4xezcqoKUjlSPgUjMLo3g7qEAqJ/5HPBo
 /tSbakMoU50LgplssmEt9A9JcApABmMdPRYO6eBY1Pv6ukzFEWbHB2105
 NoNWHLdLSnb/GwPhnGNzQEQWQ7th57T7uKI/2m4PkJiX+bYNTCUtsjvyT
 L+J1eclShMbakvD7X9UFT4R1E/yCDxkFjLLoeP/0UUQdwaH/TWDgZpMOQ
 I6tSf9jweiYCtse2d2ePIrCLT7fE0nwXiX8UyxVYNB+9NF8lXbyKvv9ZG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L70YOsV0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
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

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBNb25kYXks
IEZlYnJ1YXJ5IDEwLCAyMDI1IDE6MDcgUE0NCj5EZWFyIEplZHJ6ZWosDQo+DQo+DQo+VGhhbmsg
eW91IGZvciB0aGUgcXVpY2sgcmVwbHkuDQo+DQo+DQo+QW0gMTAuMDIuMjUgdW0gMTI6NTkgc2No
cmllYiBKYWdpZWxza2ksIEplZHJ6ZWo6DQo+PiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBt
b2xnZW4ubXBnLmRlPg0KPj4gU2VudDogTW9uZGF5LCBGZWJydWFyeSAxMCwgMjAyNSAxMjo0MCBQ
TQ0KPg0KPj4+IEFtIDEwLjAyLjI1IHVtIDExOjQwIHNjaHJpZWIgSmVkcnplaiBKYWdpZWxza2k6
DQo+Pj4+IEU2MTAgTklDcyB1bmxpa2UgdGhlIHByZXZpb3VzIGRldmljZXMgdXRpbGlzaW5nIGl4
Z2JlIGRyaXZlcg0KPj4+PiBhcmUgbm90aWZpZWQgaW4gdGhlIGNhc2Ugb2Ygb3ZlcmhlYXRuaW5n
IGJ5IHRoZSBGVyBBQ0kgZXZlbnQuDQo+Pj4NCj4+PiBvdmVyaGVhdGluZyAod2l0aG91dCBuKQ0K
Pj4+DQo+Pj4+IEluIGV2ZW50IG9mIG92ZXJoZWF0IHdoZW4gdGhyZXNob2xkIGlzIGV4Y2VlZGVk
LCBGVyBzdXNwZW5kcyBhbGwNCj4+Pj4gdHJhZmZpYyBhbmQgc2VuZHMgb3ZlcnRlbXAgZXZlbnQg
dG8gdGhlIGRyaXZlci4NCj4+Pg0KPj4+IEkgZ3Vlc3MgdGhpcyB3YXMgYWxyZWFkeSB0aGUgYmVo
YXZpb3IgYmVmb3JlIHlvdXIgcGF0Y2gsIGFuZCBub3cgaXTigJlzDQo+Pj4gb25seSBsb2dnZWQs
IGFuZCB0aGUgZGV2aWNlIHN0b3BwZWQgcHJvcGVybHk/DQo+DQo+PiBXaXRob3V0IHRoaXMgcGF0
Y2ggZHJpdmVyIGNhbm5vdCByZWNlaXZlIHRoZSBvdmVydGVtcCBpbmZvLiBGVyBoYW5kbGVzDQo+
PiB0aGUgZXZlbnQgLSBkZXZpY2Ugc3RvcHMgYnV0IHVzZXIgaGFzIG5vIGNsdWUgd2hhdCBoYXMg
aGFwcGVuZWQuDQo+PiBGVyBkb2VzIHRoZSBtYWpvciB3b3JrIGJ1dCB0aGlzIHBhdGNoIGFkZHMg
dGhpcyBtaW5pbWFsIHBpZWNlIG9mDQo+PiBvdmVydGVtcCBoYW5kbGluZyBkb25lIGJ5IFNXIC0g
aW5mb3JtaW5nIHVzZXIgYXQgdGhlIHZlcnkgZW5kLg0KPg0KPlRoYW5rIHlvdSBmb3IgdGhlIGNv
bmZpcm1hdGlvbi4gTWF5YmUgYWRkIGEgc21hbGwgbm90ZSwgdGhhdCBpdOKAmXMgbm90IA0KPmxv
Z2dlZCB0byBtYWtlIGl0IGNyeXN0YWwgY2xlYXIgZm9yIHBlb3BsZSBsaWtlIG15c2VsZi4NCg0K
T0ssIGkgd2lsbCBleHRlbmQgdGhlIGNvbW1pdCBtc2cuDQoNCj4NCj4+Pj4gVGhlbiBkcml2ZXIN
Cj4+Pj4gbG9ncyBhcHByb3ByaWF0ZSBtZXNzYWdlIGFuZCBjbG9zZXMgdGhlIGFkYXB0ZXIgaW5z
dGFuY2UuDQo+Pj4+IFRoZSBjYXJkIHJlbWFpbnMgaW4gdGhhdCBzdGF0ZSB1bnRpbCB0aGUgcGxh
dGZvcm0gaXMgcmVib290ZWQuDQo+Pj4NCj4+PiBBcyBhIHVzZXIgSeKAmWQgYmUgaW50ZXJlc3Rl
ZCB3aGF0IHRoZSB0aHJlc2hvbGQgaXMsIGFuZCB3aGF0IHRoZSBtZWFzdXJlZA0KPj4+IHRlbXBl
cmF0dXJlIGlzLiBDdXJyZW50bHksIHRoZSBsb2cgc2VlbXMgdG8gYmUganVzdCBnZW5lcmljPw0K
Pj4gDQo+PiBUaGVzZSBkZXRhaWxzIGFyZSBGVyBpbnRlcm5hbHMuDQo+PiBEcml2ZXIganVzdCBn
ZXRzIGluZm8gdGhhdCBzdWNoIGV2ZW50IGhhcyBoYXBwZW5lZC4NCj4+IFRoZXJlJ3Mgbm8gYWRk
aXRpb25hbCBpbmZvcm1hdGlvbi4NCj4+IA0KPj4gSW4gdGhhdCBjYXNlIGRyaXZlcidzIGpvYiBp
cyBqdXN0IHRvIGluZm9ybSB1c2VyIHRoYXQgc3VjaCBzY2VuYXJpbw0KPj4gaGFzIGhhcHBlbmVk
IGFuZCB0ZWxsIHdoYXQgc2hvdWxkIGJlIHRoZSBuZXh0IHN0ZXBzLg0KPg0KPiBGcm9tIGEgdXNl
ciBwZXJzcGVjdGl2ZSB0aGF0IGlzIGEgc3Vib3B0aW1hbCBiZWhhdmlvciwgYW5kIHNob3dzIA0K
PmFub3RoZXIgdGltZSB0aGF0IHRoZSBMaW51eCBrZXJuZWwgc2hvdWxkIGhhdmUgYWxsIHRoZSBj
b250cm9sLCBhbmQgDQo+c3R1ZmYgbGlrZSB0aGlzIHNob3VsZCBiZSBtb3ZlZCAqb3V0KiBvZiB0
aGUgZmlybXdhcmUgYW5kIG5vdCBpbnRvIHRoZSANCj5maXJtd2FyZS4NCj4NCj5JdOKAmWQgYmUg
Z3JlYXQgaWYgeW91IGNvdWxkIHRhbGsgdG8gdGhlIGNhcmQgZGVzaWduZXJzL2VuZ2luZWVycyB0
byB0YWtlIA0KPnRoYXQgaW50byBhY2NvdW50LCBhbmQgbWF5YmUgcmV2ZXJ0IHRoaXMgZGVjaXNp
b24gZm9yIGZ1dHVyZSB2ZXJzaW9ucyBvciANCj5mdXR1cmUgYWRhcHRlcnMuDQoNCkkgd2lsbCBo
YXZlIGl0IG9uIG15IG1pbmQuDQoNCg0KVGhhbmtzLA0KSmVkcmVrDQoNCj4NCj4NCj5LaW5kIHJl
Z2FyZHMsDQo+DQo+UGF1bA0KPg0KPg0KPj4+ICAgICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfbWFpbi5jOnN0YXRpYyBjb25zdCBjaGFyIGl4Z2JlX292ZXJoZWF0X21z
Z1tdID0gIk5ldHdvcmsgYWRhcHRlciBoYXMgYmVlbiBzdG9wcGVkIGJlY2F1c2UgaXQgaGFzIG92
ZXIgaGVhdGVkLiBSZXN0YXJ0IHRoZSBjb21wdXRlci4gSWYgdGhlIHByb2JsZW0gcGVyc2lzdHMs
IHBvd2VyIG9mZiB0aGUgc3lzdGVtIGFuZCByZXBsYWNlIHRoZSBhZGFwdGVyIjsNCj4+Pg0KPj4+
PiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPg0KPj4+PiBSZXZpZXdlZC1ieTogTWF0ZXVzeiBQb2xjaGxvcGVrIDxtYXRldXN6LnBvbGNo
bG9wZWtAaW50ZWwuY29tPg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8
amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPg0KPj4+PiAtLS0NCj4+Pj4gdjIsMyA6IGNvbW1p
dCBtc2cgdHdlYWtzDQo+Pj4+IC0tLQ0KPj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV9tYWluLmMgICAgICB8IDUgKysrKysNCj4+Pj4gICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZV9lNjEwLmggfCAzICsrKw0KPj4+PiAgICAy
IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4NCj4+PiBLaW5kIHJlZ2Fy
ZHMsDQo+Pj4NCj4+PiBQYXVsDQo+Pj4NCj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jDQo+Pj4+IGluZGV4IDcyMzZmMjBjOWEzMC4uNWM4
MDQ5NDhkZDFmIDEwMDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV9tYWluLmMNCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfbWFpbi5jDQo+Pj4+IEBAIC0zMTY1LDYgKzMxNjUsNyBAQCBzdGF0aWMgdm9p
ZCBpeGdiZV9hY2lfZXZlbnRfY2xlYW51cChzdHJ1Y3QgaXhnYmVfYWNpX2V2ZW50ICpldmVudCkN
Cj4+Pj4gICAgc3RhdGljIHZvaWQgaXhnYmVfaGFuZGxlX2Z3X2V2ZW50KHN0cnVjdCBpeGdiZV9h
ZGFwdGVyICphZGFwdGVyKQ0KPj4+PiAgICB7DQo+Pj4+ICAgIAlzdHJ1Y3QgaXhnYmVfYWNpX2V2
ZW50IGV2ZW50IF9fY2xlYW51cChpeGdiZV9hY2lfZXZlbnRfY2xlYW51cCk7DQo+Pj4+ICsJc3Ry
dWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IGFkYXB0ZXItPm5ldGRldjsNCj4+Pj4gICAgCXN0cnVj
dCBpeGdiZV9odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+Pj4+ICAgIAlib29sIHBlbmRpbmcgPSBm
YWxzZTsNCj4+Pj4gICAgCWludCBlcnI7DQo+Pj4+IEBAIC0zMTg1LDYgKzMxODYsMTAgQEAgc3Rh
dGljIHZvaWQgaXhnYmVfaGFuZGxlX2Z3X2V2ZW50KHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFw
dGVyKQ0KPj4+PiAgICAJCWNhc2UgaXhnYmVfYWNpX29wY19nZXRfbGlua19zdGF0dXM6DQo+Pj4+
ICAgIAkJCWl4Z2JlX2hhbmRsZV9saW5rX3N0YXR1c19ldmVudChhZGFwdGVyLCAmZXZlbnQpOw0K
Pj4+PiAgICAJCQlicmVhazsNCj4+Pj4gKwkJY2FzZSBpeGdiZV9hY2lfb3BjX3RlbXBfdGNhX2V2
ZW50Og0KPj4+PiArCQkJZV9jcml0KGRydiwgIiVzXG4iLCBpeGdiZV9vdmVyaGVhdF9tc2cpOw0K
Pj4+PiArCQkJaXhnYmVfY2xvc2UobmV0ZGV2KTsNCj4+Pj4gKwkJCWJyZWFrOw0KPj4+PiAgICAJ
CWRlZmF1bHQ6DQo+Pj4+ICAgIAkJCWVfd2FybihodywgInVua25vd24gRlcgYXN5bmMgZXZlbnQg
Y2FwdHVyZWRcbiIpOw0KPj4+PiAgICAJCQlicmVhazsNCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGVfZTYxMC5oIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZV9lNjEwLmgNCj4+Pj4gaW5kZXggOGQw
NmFkZTNjN2NkLi42MTdlMDc4NzhlNGYgMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGVfZTYxMC5oDQo+Pj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGVfZTYxMC5oDQo+Pj4+IEBAIC0xNzEs
NiArMTcxLDkgQEAgZW51bSBpeGdiZV9hY2lfb3BjIHsNCj4+Pj4gICAgCWl4Z2JlX2FjaV9vcGNf
ZG9uZV9hbHRfd3JpdGUJCQk9IDB4MDkwNCwNCj4+Pj4gICAgCWl4Z2JlX2FjaV9vcGNfY2xlYXJf
cG9ydF9hbHRfd3JpdGUJCT0gMHgwOTA2LA0KPj4+PiAgICANCj4+Pj4gKwkvKiBUQ0EgRXZlbnRz
ICovDQo+Pj4+ICsJaXhnYmVfYWNpX29wY190ZW1wX3RjYV9ldmVudCAgICAgICAgICAgICAgICAg
ICAgPSAweDBDOTQsDQo+Pj4+ICsNCj4+Pj4gICAgCS8qIGRlYnVnIGNvbW1hbmRzICovDQo+Pj4+
ICAgIAlpeGdiZV9hY2lfb3BjX2RlYnVnX2R1bXBfaW50ZXJuYWxzCQk9IDB4RkYwOCwNCg==
