Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63499D38485
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 19:40:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13B68610B7;
	Fri, 16 Jan 2026 18:40:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-NaoA1cvRAG; Fri, 16 Jan 2026 18:40:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33954610BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768588816;
	bh=zgl//O/b3uy5SxO0E8XW1UnuI7HSsGFhL5exg4EaCrk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PdDtaidBNV1OmmQjMDrM5En2F5tiwph0qtn3IpNDUK7mA7Ey0kOMKh89/E7owV/RF
	 SMGthqGU0t9hNRG6YuH+c0Pqc65Gw1i/ssetl5bqEV/FRJ5+CJ8uHmZp7oI8YE6oHi
	 YNRgMq5PWwR3XhbZ8FEB3AtR6eCBXd02l33/O8EK/CziGkTvOHaJK/3ZtKCRkB23lU
	 CjYfvgzJRwlMsr3jel/gwu7v0SG0sYzPMy9/ENjkcOWOTF/EvUbk2cPgtB2Myk1xmn
	 1HgY8G8A6TEts5FJHFQ1hMP6JGcjd+1Sokhi3pjsb0wBdeNZYa2s1J8GKqY6RKAtsR
	 YIAzxE9pXFt8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33954610BB;
	Fri, 16 Jan 2026 18:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A361160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5287816DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S9lL7216UekI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 18:40:14 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 16 Jan 2026 18:40:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 05D6681773
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05D6681773
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05D6681773
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:40:13 +0000 (UTC)
X-CSE-ConnectionGUID: uIosCeIGQbOB7fM6OLNURg==
X-CSE-MsgGUID: DhEGNYl6RoCG2nt7UcF/2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="72492578"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="72492578"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 10:33:05 -0800
X-CSE-ConnectionGUID: CYDhb+siT4qcJxT3DmuVpw==
X-CSE-MsgGUID: fOwmhV20SJGW68t1xSpwwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="236577849"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 10:33:05 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 10:33:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 16 Jan 2026 10:33:04 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.14) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 10:32:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IIaSbEVTaNu85wCu+tzEaxAhk3Q8mHCu7yv1SRVSRYXbgc1uOgxYZZO69AB7BIb0SVsMhtp5H4Sr8h6mh1yfVR21qNZpfB+WM3xobrtDALbECKxw8COoIvdgBRZ5TtemDmUP/S7nA532T3jZOg9nT16ciEWJMwp/ZYCS9VXUaY5eCwLenr6FKCxsRd8S9IX4UabJ2kqEL/n1sAbi0O3ziCZEcmU2pI/91lVimwYODEElaseQfnXV6A0+kUDLb6S0jaR471hFiPH6jq8lzjUZm+xunasPkbMNIeZlDHGW7psOR+1Hi1lhruvyFXsFxf7ketIDcIaeTvVf8XBuLmciTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zgl//O/b3uy5SxO0E8XW1UnuI7HSsGFhL5exg4EaCrk=;
 b=RkSAN4e+FzwcFuRb/a8sEDp2HQCZGNaYs1cO6KgzgnukpN5yAXlmayjH7u0cC2YrAQ+HRoZY8HWTtSiwUVnne4Mh+e8Y8Ds/zkYxkEnfVzW2F6UFnMMg6dRGK5KO3HRWTo2kRu1asBm5D4D9yMRkHGt2/V7bjSUG4ww/DWPi5trkW4UoUY9EgadBC1iT8Jlake4KIn9Z/qSZsVF1uN3h7HIbcTjAAwdMaCBEbzVZPRVI2EB91TtdJXMXrrvEC4QA7VpjRCe9k11us77sXyUbLCJnk9N/Q+d/Hk1uYfw1yMp83ipGjuxjdISq6YaaIV65P067TBYZTPLC85NeV0fjAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA0PR11MB4767.namprd11.prod.outlook.com (2603:10b6:806:97::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Fri, 16 Jan
 2026 18:31:44 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 18:31:43 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Mina Almasry <almasrymina@google.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Rizzo,
 Luigi" <lrizzo@google.com>, "namangulati@google.com"
 <namangulati@google.com>, "willemb@google.com" <willemb@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Olech, Milena" <milena.olech@intel.com>, Shachar Raindel
 <shacharr@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
Thread-Index: AQHcaoe9FY0wMb7Dn0ixbvXL6wUixbUcP0IAgADAeYCAAKUxAIAAxSSAgAAXtwCANsQpYA==
Date: Fri, 16 Jan 2026 18:31:43 +0000
Message-ID: <SJ1PR11MB62975DA6963EA9DE24ABD9EB9B8DA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251211101931.2788437-1-almasrymina@google.com>
 <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <25a83e83-46d1-4a16-9383-6d492cb37c7a@intel.com>
 <684b2ce6-c8f4-4ecf-9fbc-b75137689083@intel.com>
 <3be0dc11-8fea-4159-9f58-40594ef469f8@intel.com>
 <IA3PR11MB89862D9C81A1411B201CDBA3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89862D9C81A1411B201CDBA3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA0PR11MB4767:EE_
x-ms-office365-filtering-correlation-id: e8cabec6-e8fc-421d-f6b7-08de552d7fc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TmFSdjV4YS9KR0RObWJnb3d1cmVBaG9aNzBCY2pHcjJBKzFSbWZvSStlQW9w?=
 =?utf-8?B?Q3FtdUM0VWpPbHlrQ1RkckRuaGF3ZlhBcFdBOGtnUGtBZ0hpV2Nqb251cmFH?=
 =?utf-8?B?UzdtQXc1dVZFL0FWVWl0UVNNT25mc01NVElWWVREOFRjU3RqMTI3QityQVNM?=
 =?utf-8?B?SWpTVXdIdFdBOGpEZ1FZaHUxVUtnWVNvZ0t6K0JWd0Ztc1MwbEZyeVBKYkdS?=
 =?utf-8?B?czRsYTFhdUV5QU1VZWN0a3IwRXNoaGM3TWVsaEZmcEJhT2lieHZiSjRGOXI1?=
 =?utf-8?B?S3BpWGY2MmZjYzdFMlRJNXE0cnJwZVlpQXRNNmZsQ2UwcTJyQkFGWEFMTTlt?=
 =?utf-8?B?czZFM3FCVFVhL0FGNnVQbWpCdktnenA3NjlBUzRnZUxsQWVGWllvNkttY0JZ?=
 =?utf-8?B?bmJnM0ZNQWduTDFDWm1SZ2hoY2RxbklNVzlZcVZWdkJkaTFZMUhrdnZNRjdV?=
 =?utf-8?B?QzdJb3JpQnRnd2xZNXF4TVdMN3Y1QmVhVk1RN2JvZFZvcEdGa0JrR2M0a0tp?=
 =?utf-8?B?emw1Vk1xVllTakZOWHRUYUZrL0RzeG5ITm80b0xWUlBRYU1hNXBtdjNGT3Yw?=
 =?utf-8?B?TE9KcUp2STl5SWNyUGxac0xrT1dYVjhoSHhjZnd1aVZlTDJOanJPRjJlbDF4?=
 =?utf-8?B?R2pzSkhETGUvYkkxSGx6V3pMT014SVJpK1BiTkl6bHFaQjEzakxTMWhpZElj?=
 =?utf-8?B?K2l0K1VSMEFPYXQ5VFc4aWZJUS8yQmxTcUp2Z3R0ZmJ4L3h5ZFhtUTFtdm1v?=
 =?utf-8?B?NnNkZ1BNa0l2cys1WTBkaVZhNk50TXluODI4UWZJaUQySFFXYjNrL092bEF0?=
 =?utf-8?B?ci9EdWdxLzVPLzRub1RtcVNjNnFIZjFIWGM2RjNsMjVqWXUvYWQxeFRxVGR5?=
 =?utf-8?B?OWVSNU1YM0Q0WU5NcFlvZVA2Sk40TUJ2bkZvMVlJcmIxekJvNkxQOWxUSktN?=
 =?utf-8?B?VHRlS28rb1hxSlF4NitwTThmUGErVk5hZTJKNUdhR3B0NEJ3UW5QVlQ3cDRa?=
 =?utf-8?B?bEQ2b0g2UzcxcnY0bUhzdlQ3WDFRKzYySXlibEVPV01OTCtzaDhuL3FGOXRr?=
 =?utf-8?B?dytTSWpDQmJJVmhqeWFMOE03M2FTTnVHbm5HUVNwUUhWN25BL0tCWUk2bmVy?=
 =?utf-8?B?K2IrcXhVckNGZEhxMDkvUnlkaW9CS28rQzhYTFphV1FDQkNCUEhQWGlrQjB5?=
 =?utf-8?B?YmFqVjlHc29lS0l0VWVCczMxY3AzMGRDWkFkQm5YRjFDZXJQS0JjMEdkbUtK?=
 =?utf-8?B?SkJsVTAyc1JuZG9UVTFVN3VLZEh1WTJVaWdOTG52T214L0tqK0JPTlR4M2ZT?=
 =?utf-8?B?OEpEb3VSblJnVmxUbEljTWFvNXlmeWdZMTZKSE90QktyMjRsaTg5anQ1UkRU?=
 =?utf-8?B?Sm5FOUxGUndSRWtBNzJLeFJoNmZmamw2VzA5bms3T2JmN3NrZ1MxeWdhZitO?=
 =?utf-8?B?aHlleU9Ma3d5eU5NTWNNdkhjZXlsOEFWNDNrV09tdkVQMklOT0FPdzBlYkdD?=
 =?utf-8?B?TTNqclZmcjY1RzJpSU9xY2xkUkpSbDY5T0xkdUY4cHNHbHJPZGhQaHc0bDRV?=
 =?utf-8?B?YXYxVDdrblA1K0s5TVFuajNmcHMyYXU0ZE1CQUUwTFR2dnVnZExDc3ZEK2gw?=
 =?utf-8?B?M0tGVzIybm9YWHFMdDk1UDdPRm9zZ2pPSDk3VW9vZVBuTHFiMGVlOUt5SlRh?=
 =?utf-8?B?OVk1SERFcHJrMUFYRjd6dmZ0M0t2allyS2Z1MjRYeUxnQ0VCRll4ckVueVhD?=
 =?utf-8?B?MHBqVW9mcWUzTW5JUW5QSnJEOWhGbDdlK3hXUkRoOW5PL3gybm1PUkM5ajhu?=
 =?utf-8?B?NWUwWXBISVdCc011azRCckNGanBDaGJtdzlTQWhxZ2lZdzNYSmhqcDJLVDVv?=
 =?utf-8?B?S2hmYnZUR1ZuQnNMc0VUUWh1OFZZOWt6WGVqeVA0VTV4bnZRcHY3NHVlVjJQ?=
 =?utf-8?B?VTlLVXliT2RrUWNXcDlzVXZEWHM2dkNqeVNpR3FGdXdwTW5CSDlvdmg5aE0v?=
 =?utf-8?B?aDAyTDhtcjRLWFRoQitWNWhlQll0ZWlHdUhEVEpLc0w0TGJ5ZXhHZkl3K1ND?=
 =?utf-8?B?cTNUU1JQcGtoeXFuQ3dsUlY4SmduK3p3eXQ0SlMyVTlWQ0g0a08vdWZUS0tW?=
 =?utf-8?B?TGlFWFgxb2MwZ0E2M1Zwc29CQ3V0Z3hvNFVPUytIT0dOV0R5ckhWT25PSThV?=
 =?utf-8?Q?C1o7X7XhPsREmv6kz1xdyNQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dW1aaFRISkVDcEN1YlFkNmFKSVJISnRaWDNXaFkwWFpIbFlIbnRHdFNoVUdF?=
 =?utf-8?B?eWJCNHgrdjZ6U3B6SnNxdUt4SmI3R1RidDBVZEE1ZUxYeEJUbTN3ZFdRbUdU?=
 =?utf-8?B?Yisxa3RCNzZybVlGd1l2NGxpSi9jZzd6ZVNoMkhHd2hkbUFKRzljMlE1M201?=
 =?utf-8?B?NEJoZjhrWis2cGNJSkl0Q1NjaTdLMWxMMXZHaEhHSUNzZzdQMDBNSmlEYXRD?=
 =?utf-8?B?blRoNk5UekwybWRlWU95RkszLzhEcG9lWjZzdXdDNkVpdktaL2Y3T3NHQWlS?=
 =?utf-8?B?VldSN1VFaXlPTEhFSG5qRmxnRVFFMlFRRTFKeS9jeE4wUm5sK3dQSU14T3NB?=
 =?utf-8?B?N1NnbUxPZkIrL2VVZ3d0Vm5qZVUzOGp6WlpRY0FqUjN0Sm5XckljZk11TVoy?=
 =?utf-8?B?YlVvY0NMaXdSUis5Q2ZkNlVJdWdVWFVaMTVoU0VWQ2JxMGNXVGhLdllpdlhH?=
 =?utf-8?B?cjJFUnMzOUFXUGxXbi96S0pTRFhTd2JtS1czM0QyYU1rQXltMHQ2ZjhQanpa?=
 =?utf-8?B?dzJGYUoxZ28vWVp5VS9ZUERWMWY3a1lXVzRlUG5kekI5bG5SbXhWclRNVHQ0?=
 =?utf-8?B?Y25MbzdNbEMxY1YxZ1hVbUJjQTczREFCTjdDUTdZbWRKVEFxR00raGRoTTdP?=
 =?utf-8?B?NTRUSFJJQkJlNmhTYStpdzlnb29oTFVaV09CMVdoVm5OUlRyckF2VXh2M2Fi?=
 =?utf-8?B?QzI1TlFVYStzQmZDVFozajVDZ3Vnb2hDRXpIUHpRc1hzOTBnNk83QTh4dnRR?=
 =?utf-8?B?NFFRdzBNR0xMUVd3YzZDd3lLdXRaSUZ4KzZGc0t4SUV4cEx0WVI4STZCTEk3?=
 =?utf-8?B?UFFPcVFEVkVsSWZxK0JLN1lOcEJzdkx6amRyVTBWRjlaYzExTmI5bEh6Y0FO?=
 =?utf-8?B?K3RQajl3NURtUEJvNlZNcEpwbTR4TWdtQnNGbTNJU2k4RURYeHloZEp3N1E5?=
 =?utf-8?B?MmpmamNkSEpmMUNreWoxd0J6Z3FDM1RkSURMRGNaNXp0REdqaUY3cW94Znk0?=
 =?utf-8?B?VDBlVG5ldGtxZXJwSDB6OGxaQVI2NCtWbktHUmhsMVhJWW15NGNHaklvY2Zo?=
 =?utf-8?B?cG0wdlFKamRXNUJxUGdudEphNElIdFVSTXdxUzVZL3hob0hPQVp2bTlGK3Jy?=
 =?utf-8?B?SGRFeVMyYkxmODJTQnBsRkIvUjhDN3dDdyt5b1NOeFRIS1lZNS9TMU8zOFhS?=
 =?utf-8?B?VVIvQytFd3d3OWhoejRpTVpkdG93UmZYWUVMU2xiaCtNbU1mSFQ0cFMrcXAr?=
 =?utf-8?B?SWpmSmUxK0ljaUpNSkFqZkxMczIwOUFOdlpjM1FXSW0rdGVDUUlZWUowVWN1?=
 =?utf-8?B?QjRudjZLSURJb25JUnpScy9SSU9iYjl1OGN2VGV4bUY3TkY0elFLOFNJWkNv?=
 =?utf-8?B?eUdaSjhnMGR1UUNQbWxNWGkwaEltTHVyMmtXNDV6N2NHUGo5eDIvZFdEMmht?=
 =?utf-8?B?UVlKUUkxbUtxOU80VUFVRmRTNFZJazY3ZWJPS2hoaytJdXlLTnFKQzVETlZD?=
 =?utf-8?B?SG50TWpranNiOFFoN0pTWENWcWFHWTFyUnNleXB3WC9LcmdEcWZTb3RYRzdm?=
 =?utf-8?B?eHlGV1o0bzlPbzIzQ1NhU0VoR2FNdmZ0SWRKYUgvdkFiOTVPS3E0a0o3WEFj?=
 =?utf-8?B?VHNXNnRrZ1Y1dW5SOHcxVU9WTnlvMExPYzVrUVlvcFZDUVIyUjlSSHdxa2lk?=
 =?utf-8?B?Z3h3NFZDSXlPcW5yYnZWL1g0SWd0SUpxNzVHTURjdjBBeGIvaERiQ3ZFcnQy?=
 =?utf-8?B?aSswaGlWWDd1Y1ZUMWZ6UXJGa2srRDd2am9USWc5b3JTbTNOQWlMbXVhbmV6?=
 =?utf-8?B?dHNiNGhYZFVsNWtKdVBRaHd0TDFtMzVnOThadDNCQU9hclp1Y21iU1M2T0lL?=
 =?utf-8?B?TlNkWXdvcW9zM3U0ZW90MzZrd25vQkN5a1NaSEZ6NnBac1ZMemt5bkN6Vys4?=
 =?utf-8?B?emRtamJNeStOQ0xNS2J0RmNkdGJsYm5PaFluVmZlY3FMSmlGb2V0a1RSR2c0?=
 =?utf-8?B?SjAzb2gvQU0rT1l2aWlHK1lFZ1FoTllkbFhka1I4Wll0MUdabGVtMlI0VTNC?=
 =?utf-8?B?QXJWOXZkaXRmTHlRNlRwd3YvTDE4eGtyM0FScDhlYTF3TTJCRW91dk1EY0JY?=
 =?utf-8?B?MlFUdVJtcWpxUGFlZUsyaGtIelZMS2VxekdyWmJHYmpqbmFsdjFnMEU0VElo?=
 =?utf-8?B?dEdPWHVmRTd6c2VhYmQvK1pCQitlbjVNWlEzaW1YYWlKS2lMcFAycVpMMXNx?=
 =?utf-8?B?RnliYldYUmpWZVB6eDMxT2Y2TWlrQ1Z5d0gyN0VlSDhwWlJhVmRpSDgwam4z?=
 =?utf-8?B?OTNEcm1kK1VrdW1WV3N6Zk93K2p2WE1NdVF6ckFMd2NScTRFWmR6QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8cabec6-e8fc-421d-f6b7-08de552d7fc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 18:31:43.8341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XZ/Tg8DpfTnntUhNpQEzDNwLbrRd2dOBeirM3K/5z4bEmDqoQpoJIkEECJrDFb8p1WxArchOndxl/8rH5VV2kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4767
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768588814; x=1800124814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zgl//O/b3uy5SxO0E8XW1UnuI7HSsGFhL5exg4EaCrk=;
 b=ZSIEodQ6f76v7X4JKU/UqzPWp7xoR5iBJUAvTYQ/1dfFazRrL58jsAVM
 dHzEfCIpZ8JmhvJ1GQM4DeWaZm+sfYWTLri8nbQXqMb49opAuXZLFNkX1
 dnmN/jkHhazoK14+ARjuj5hONxuoRKERj2oflbiSbmNoTXE9zQKXND0HE
 N1pOpbSev6vjHePU6J8JKw3F/CAwfecF+R7J7vLY1O2ZogziMNFYSCD70
 i7kuWlrGyQLXN8w+5XBX09GOuzfy17nfYbEob+/7s/zFb9vmf7i6p+o9J
 Ev/lgsP8qNRksg6Xt5HMoS7t32PWi1gMCmuP6t6IlbJyyzQWlQNersi6e
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZSIEodQ6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBMb2t0aW9u
b3YsIEFsZWtzYW5kcg0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDEyLCAyMDI1IDE6MDggUE0N
Cj4gVG86IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgS2l0c3pl
bCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IE1pbmEgQWxt
YXNyeSA8YWxtYXNyeW1pbmFAZ29vZ2xlLmNvbT4NCj4gQ2M6IE5ndXllbiwgQW50aG9ueSBMIDxh
bnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEFuZHJldyBMdW5uDQo+IDxhbmRyZXcrbmV0ZGV2
QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Ow0KPiBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBs
aW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2Vy
bmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0LmNvbT47IFJpY2hhcmQgQ29j
aHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsgUml6em8sDQo+IEx1aWdpIDxscml6em9A
Z29vZ2xlLmNvbT47IG5hbWFuZ3VsYXRpQGdvb2dsZS5jb207IHdpbGxlbWJAZ29vZ2xlLmNvbTsN
Cj4gaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE9sZWNoLCBNaWxlbmEgPG1pbGVu
YS5vbGVjaEBpbnRlbC5jb20+Ow0KPiBTaGFjaGFyIFJhaW5kZWwgPHNoYWNoYXJyQGdvb2dsZS5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYxXSBpZHBm
OiByZWFkIGxvd2VyIGNsb2NrIGJpdHMgaW5zaWRlDQo+IHRoZSB0aW1lIHNhbmR3aWNoDQo+IA0K
PiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBLZWxsZXIs
IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBGcmlkYXksIERl
Y2VtYmVyIDEyLCAyMDI1IDg6NDMgUE0NCj4gPiBUbzogS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25vdiwNCj4gPiBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTWluYSBBbG1hc3J5DQo+ID4gPGFsbWFzcnlt
aW5hQGdvb2dsZS5jb20+DQo+ID4gQ2M6IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1
eWVuQGludGVsLmNvbT47IEFuZHJldyBMdW5uDQo+ID4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47
IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47DQo+ID4gbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgbGludXgtDQo+
ID4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9y
Zz47IFBhb2xvIEFiZW5pDQo+ID4gPHBhYmVuaUByZWRoYXQuY29tPjsgUmljaGFyZCBDb2NocmFu
IDxyaWNoYXJkY29jaHJhbkBnbWFpbC5jb20+Ow0KPiA+IFJpenpvLCBMdWlnaSA8bHJpenpvQGdv
b2dsZS5jb20+OyBuYW1hbmd1bGF0aUBnb29nbGUuY29tOw0KPiA+IHdpbGxlbWJAZ29vZ2xlLmNv
bTsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE9sZWNoLCBNaWxlbmENCj4gPiA8
bWlsZW5hLm9sZWNoQGludGVsLmNvbT47IFNoYWNoYXIgUmFpbmRlbCA8c2hhY2hhcnJAZ29vZ2xl
LmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldCB2MV0g
aWRwZjogcmVhZCBsb3dlciBjbG9jaw0KPiA+IGJpdHMgaW5zaWRlIHRoZSB0aW1lIHNhbmR3aWNo
DQo+ID4NCj4gPg0KPiA+DQo+ID4gT24gMTIvMTEvMjAyNSAxMTo1NyBQTSwgUHJ6ZW1layBLaXRz
emVsIHdyb3RlOg0KPiA+ID4gT24gMTIvMTEvMjUgMjM6MDYsIEphY29iIEtlbGxlciB3cm90ZToN
Cj4gPiA+Pg0KPiA+ID4+DQo+ID4gPj4gT24gMTIvMTEvMjAyNSAyOjM3IEFNLCBMb2t0aW9ub3Ys
IEFsZWtzYW5kciB3cm90ZToNCj4gPiA+Pj4NCj4gPiA+Pj4NCj4gPiA+Pj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+ID4gPj4+PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdp
cmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uDQo+ID4gPj4+PiBCZWhhbGYgT2YgTWluYSBB
bG1hc3J5DQo+ID4gPj4+PiBTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTEsIDIwMjUgMTE6MTkg
QU0NCj4gPiA+Pj4+IFRvOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnDQo+ID4gPj4+PiBDYzogTWluYSBBbG1hc3J5IDxhbG1hc3J5bWluYUBnb29n
bGUuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPiA+Pj4+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPiA+Pj4+IDxwcnplbXlzbGF3LmtpdHN6
ZWxAaW50ZWwuY29tPjsgQW5kcmV3IEx1bm4NCj4gPiA+Pj4+IDxhbmRyZXcrbmV0ZGV2QGx1bm4u
Y2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Ow0KPiA+ID4+Pj4gRXJp
YyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kNCj4gPiA+Pj4+
IDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBSaWNo
YXJkDQo+ID4gQ29jaHJhbg0KPiA+ID4+Pj4gPHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbT47IFJp
enpvLCBMdWlnaSA8bHJpenpvQGdvb2dsZS5jb20+Ow0KPiA+ID4+Pj4gbmFtYW5ndWxhdGlAZ29v
Z2xlLmNvbTsgd2lsbGVtYkBnb29nbGUuY29tOw0KPiA+ID4+Pj4gaW50ZWwtd2lyZWQtbGFuQGxp
c3RzLm9zdW9zbC5vcmc7IE9sZWNoLCBNaWxlbmENCj4gPiA+Pj4+IDxtaWxlbmEub2xlY2hAaW50
ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFDQo+ID4gPj4+PiA8amFjb2IuZS5rZWxsZXJAaW50ZWwu
Y29tPjsgU2hhY2hhciBSYWluZGVsIDxzaGFjaGFyckBnb29nbGUuY29tPg0KPiA+ID4+Pj4gU3Vi
amVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldCB2MV0gaWRwZjogcmVhZCBsb3dlciBj
bG9jaw0KPiA+ID4+Pj4gYml0cyBpbnNpZGUgdGhlIHRpbWUgc2FuZHdpY2gNCj4gPiA+Pj4+DQo+
ID4gPj4+PiBQQ0llIHJlYWRzIG5lZWQgdG8gYmUgZG9uZSBpbnNpZGUgdGhlIHRpbWUgc2FuZHdp
Y2ggYmVjYXVzZSBQQ0llDQo+ID4gPj4+PiB3cml0ZXMgbWF5IGdldCBidWZmZXJlZCBpbiB0aGUg
UENJZSBmYWJyaWMgYW5kIHBvc3RlZCB0byB0aGUNCj4gPiBkZXZpY2UNCj4gPiA+Pj4+IGFmdGVy
IHRoZSBfcG9zdHRzIGNvbXBsZXRlcy4gRG9pbmcgdGhlIFBDSWUgcmVhZCBpbnNpZGUgdGhlIHRp
bWUNCj4gPiA+Pj4+IHNhbmR3aWNoIGd1YXJhbnRlZXMgdGhhdCB0aGUgd3JpdGUgZ2V0cyBmbHVz
aGVkIGJlZm9yZSB0aGUNCj4gPiBfcG9zdHRzDQo+ID4gPj4+PiB0aW1lc3RhbXAgaXMgdGFrZW4u
DQo+ID4gPj4+Pg0KPiA+ID4+Pj4gQ2M6IGxyaXp6b0Bnb29nbGUuY29tDQo+ID4gPj4+PiBDYzog
bmFtYW5ndWxhdGlAZ29vZ2xlLmNvbQ0KPiA+ID4+Pj4gQ2M6IHdpbGxlbWJAZ29vZ2xlLmNvbQ0K
PiA+ID4+Pj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+ID4gPj4+PiBD
YzogbWlsZW5hLm9sZWNoQGludGVsLmNvbQ0KPiA+ID4+Pj4gQ2M6IGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbQ0KPiA+ID4+Pj4NCj4gPiA+Pj4+IEZpeGVzOiA1Y2I4ODA1ZDIzNjYgKCJpZHBmOiBu
ZWdvdGlhdGUgUFRQIGNhcGFiaWxpdGllcyBhbmQgZ2V0DQo+ID4gUFRQDQo+ID4gPj4+PiBjbG9j
ayIpDQo+ID4gPj4+PiBTdWdnZXN0ZWQtYnk6IFNoYWNoYXIgUmFpbmRlbCA8c2hhY2hhcnJAZ29v
Z2xlLmNvbT4NCj4gPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IE1pbmEgQWxtYXNyeSA8YWxtYXNyeW1p
bmFAZ29vZ2xlLmNvbT4NCj4gPiA+Pj4+IC0tLQ0KPiA+ID4+Pj4gICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMgfCAyICstDQo+ID4gPj4+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4+Pj4NCj4gPiA+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4g
PiA+Pj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jDQo+ID4g
Pj4+PiBpbmRleCAzZTEwNTJkMDcwY2YuLjBhOGI1MDM1MGI4NiAxMDA2NDQNCj4gPiA+Pj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9wdHAuYw0KPiA+ID4+Pj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jDQo+ID4gPj4+
PiBAQCAtMTA4LDExICsxMDgsMTEgQEAgc3RhdGljIHU2NA0KPiA+ID4+Pj4gaWRwZl9wdHBfcmVh
ZF9zcmNfY2xrX3JlZ19kaXJlY3Qoc3RydWN0IGlkcGZfYWRhcHRlciAqYWRhcHRlciwNCj4gPiA+
Pj4+ICAgCXB0cF9yZWFkX3N5c3RlbV9wcmV0cyhzdHMpOw0KPiA+ID4+Pj4NCj4gPiA+Pj4+ICAg
CWlkcGZfcHRwX2VuYWJsZV9zaHRpbWUoYWRhcHRlcik7DQo+ID4gPj4+PiArCWxvID0gcmVhZGwo
cHRwLT5kZXZfY2xrX3JlZ3MuZGV2X2Nsa19uc19sKTsNCj4gPiA+Pj4gVGhlIGhpZ2ggMzIgYml0
cyAoaGkpIGFyZSBzdGlsbCByZWFkIG91dHNpZGUgdGhlIHRpbWUgc2FuZHdpY2gNCj4gPiA+Pj4g
KGFmdGVyIHB0cF9yZWFkX3N5c3RlbV9wb3N0dHMoKSksIHdoaWNoIGRlZmVhdHMgdGhlIHN0YXRl
ZCBwdXJwb3NlDQo+ID4gb2YgZW5zdXJpbmcgUENJZSB3cml0ZSBmbHVzaCBiZWZvcmUgdGltZXN0
YW1wIGNhcHR1cmUuDQo+ID4gPj4+IC8qIEkgdGhpbmsgaGUgInRpbWUgc2FuZHdpY2giIGlzIGRl
ZmluZWQgYnkgdGhlIHJlZ2lvbiBiZXR3ZWVuDQo+ID4gcHRwX3JlYWRfc3lzdGVtX3ByZXRzKHN0
cykgYW5kIHB0cF9yZWFkX3N5c3RlbV9wb3N0dHMoc3RzKSAgKi8gSXNuJ3QNCj4gPiBpdD8NCj4g
PiA+Pj4NCj4gPiA+Pj4NCj4gPiA+Pg0KPiA+ID4+IEFueSByZWFkIHdpbGwgY2F1c2Ugd3JpdGVz
IHRvIGZsdXNoLCBzbyB3ZSBkb24ndCBuZWVkIHRvIG1vdmUgYm90aA0KPiA+ID4+IHJlZ2lzdGVy
cy4NCj4gPiA+Pg0KPiA+ID4+IFRoZSBwb2ludCBoZXJlIGlzIHRoYXQgd2Ugd3JpdGUgdG8gdGhl
IHNoYWRvdyByZWdpc3RlciB0byBzbmFwc2hvdA0KPiA+ID4+IHRpbWUsIGFuZCBpdCB3b24ndCBn
dWFyYW50ZWUgdG8gYmUgZmx1c2hlZCB0byB0aGUgZGV2aWNlIHVudGlsIGENCj4gPiA+PiByZWFk
LiBCeSBtb3ZpbmcgYSBzaW5nbGUgcmVhZCBpbiBzaWRlIHRoZSB0aW1lIHNhbmR3aGljaCwgd2Ug
ZW5zdXJlDQo+ID4gPj4gdGhhdCBpdHMgYWN0dWFsbHkgY29tcGxldGUgYmVmb3JlIHRoZSB0aW1l
IHNuYXBzaG90IGlzIHRha2VuLiBXZQ0KPiA+ID4+IGRvbid0IG5lZWQgdG8gd2FpdCBmb3IgYm90
aCByZWdpc3RlcnMgYmVjYXVzZSBvZiB0aGUgc25hcHNob3QNCj4gPiBiZWhhdmlvci4NCj4gPiA+
DQo+ID4gPiB2ZXJ5IG5pY2UgZXhwbGFuYXRpb24gSmFrZSwgdGhhbmsgeW91DQo+ID4gPg0KPiA+
ID4gSSBkb24ndCBrbm93IGlmIGl0IHNob3VsZCBiZSBjb25zaWRlcmVkICJiYXNpYyBjb21tb24g
a25vd2xlZGdlIiwgb3INCj4gPiA+IHdhcnJhbnRzIGFuIGVudHJ5IGluIGNvbW1pdCBtZXNzYWdl
L2NvZGUgY29tbWVudCBGb3Igc3VyZSB3ZSBkb24ndA0KPiA+ID4gd2FudCBhbnlvbmUgbm90IGtu
b3dpbmcgdGhhdCB0byB0b3VjaCB0aGUgY29kZSwgc28gYmFycmllciB0byBlbnRyeQ0KPiA+IGlz
DQo+ID4gPiBhbHNvIGEgZ29vZCB0aGluZyA7KQ0KPiA+ID4NCj4gPiA+Pg0KPiA+ID4+IEkgdGhp
bmsgdGhlIHBhdGNoIGlzIGZpbmUtYXMtaXMuDQo+ID4gPg0KPiA+ID4gZ2l2ZW4gdGhlIHNjb3Bl
IG9mIHRoZSBmdW5jdGlvbiwgYWdyZWUNCj4gPiA+DQo+ID4gUmVhZGluZyBib3RoIHJlZ2lzdGVy
cyB3b3VsZCB0YWtlIGxvbmdlciwgYW5kIHdvdWxkIGRlbGF5IHBvc3QNCj4gPiB0aW1lc3RhbXAs
IHdoaWNoIHdvdWxkIGxvd2VyIHRoZSBhY2N1cmFjeSBvZiB0aGUgY2xvY2sgY29tcGFyaXNvbg0K
PiA+IG1lY2hhbmlzbXMgdGhhdCB1c2UgdGhlIHByZStwb3N0IHRpbWVzdGFtcHMuIFdlICptdXN0
KiByZWFkIG9uZSBvZiB0aGUNCj4gPiB2YWx1ZXMgYmVjYXVzZSB3ZSBuZWVkIHRvIGVuc3VyZSB0
aGUgUEhDIHRpbWVzdGFtcCBpcyBzbmFwc2hvdCBiZXR3ZWVuDQo+ID4gcHJlK3Bvc3QsIGJ1dCB3
ZSBzaG91bGQgZG8gYXMgbGl0dGxlIHdvcmsgYXMgbmVjZXNzYXJ5LCBzbyBvbmx5DQo+ID4gcmVh
ZGluZw0KPiA+IHRoZSBsb3cgcmVnaXN0ZXIgaXMgdGhlIG1vc3Qgb3B0aW1hbC4NCj4gPg0KPiA+
IFRoaXMgY291bGQgYmUgcHV0IGludG8gdGhlIGNvbW1pdCBtZXNzYWdlLCBidXQgYXQgbGVhc3Qg
dG8gbWUgYXMgYQ0KPiA+IGRvbWFpbiBleHBlcnQgdGhlIG9yaWdpbmFsIGNvbW1pdCBtZXNzYWdl
IHdhcyBzdWZmaWNpZW50LCBzbyBJJ20gbm90DQo+ID4gc3VyZSB0aGF0IEknbSBhIGdvb2QganVk
Z2UgZm9yIHdoYXQgaXMgbmVjZXNzYXJ5IGZvciBvdGhlcnMgdG8NCj4gPiB1bmRlcnN0YW5kIHRo
ZSBsb2dpYy4NCj4gDQo+IFRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24hDQo+IFJldmll
d2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCj4gDQo+IA0KPiANClRlc3RlZC1ieTogU2FtdWVsIFNhbGluIDxTYW11ZWwuc2FsaW5AaW50
ZWwuY29tPg0K
