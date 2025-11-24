Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E42C7FCAE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 11:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 394BC6075B;
	Mon, 24 Nov 2025 10:01:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zfyDojLDz32c; Mon, 24 Nov 2025 10:00:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ADDC6077C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763978458;
	bh=FGrUintxpvu+xYL51OcOITbk9KBxEiiFE/akT2I5gzY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EFmD2BmEl8Tp60/xp20Yk4SV6rSiQuww331w0OafwByqeGdcVY6Ta2boEIQwX3cu3
	 8vAE8TgvKUtkUXGM8R5zjTIcrHws6lxVZkDgpWJTIPYVNVJMvAgw9ia/GUrkso0fJH
	 BzKaYUggKWBAUHermbNUIoji0A+R5l4836DkT46IPT3m8PNYtW7MQF+YkAFoJHpofp
	 RFb5pZGWUkd+5UknLveFwHHA9yoaHFtpqclTXTEhPrGL+Cz2OWOWXJCgFppD7Ux2tA
	 KUk05mje2Qa2XX6p/ItpfpL1xYV6KrrQi4n5nH/YrMSj+lbSm4IrdK0BR2I7GECClX
	 KXrfoKUeArxXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ADDC6077C;
	Mon, 24 Nov 2025 10:00:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DEC0E158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4FD9822CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2twdtdCDDP8E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 10:00:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E01CD810C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E01CD810C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E01CD810C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:00:54 +0000 (UTC)
X-CSE-ConnectionGUID: ZuZf9qznRGaltoi4a12Jzg==
X-CSE-MsgGUID: utwNjnNBQQa3lFzQ5KnrWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="66051329"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="66051329"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 02:00:48 -0800
X-CSE-ConnectionGUID: AhHK2tEZQFCsGVpAhOJImg==
X-CSE-MsgGUID: 4cmeqEcYRWWWlXU7Q9q/XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="192757171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 02:00:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 02:00:47 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 02:00:47 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 02:00:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mVQ7fTMe/h6wAR14ktNiuFoD1UdC3TGYwNoKw/6FYp3M2dErRgGaSVLC9ff3Ha/V0E6F9aklP3nFXAz8dtqCWNUNdykFrwQcoFkaniwJ3/CSVarKknuPxfHtE/GCoSy5xbjZBoso7MzDLChgymFCJeeLss2pyx1b8oCoV6qUXLe2/rfEhf3Vy0HhFP1D9cetoLYHUDnTSBELdqip13Tq5xYfW7TFeyCwzfXtJOAIdNQs5yGsb9+AJN36+bBuKmDCSVL2FxTxT2rtSFDop0sIGXIGxwcYbFN7AnuuD0D7HSchRsRKs+vk7j9R1hEgiTiblAXbRodSE4OMBROg9NLhAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FGrUintxpvu+xYL51OcOITbk9KBxEiiFE/akT2I5gzY=;
 b=vBXogJcgeeDslWUpHdMo+gDloxZ0b6pETnwBu0U084RRCX31hf9jevZxhvuR7Z1qxjYHOrXeYbUWy33oVguS4uMLt5tza2Vv/av/gnjANSeI5Sik/U9OXGZvpanQcH7pK5aDJ83ng2rigo5528hp0zRzJ3+Khe6bROBUrKUFNw8D5+RexhkCWH8Q9iUytxuF0vMT+y/MeRzr1wUM96PY56dcU6oVKJZ9ovU2Qlx8h5KcCbs7H9undYJwQOh164iBdcuKkPsqoDRmz6ldzcuolxWJIkLbHZGEUhut2GFn3BrGtjFODkPM6vzGAH2iIvXP9jM/lYj+zJl7Bmf450ANFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6220.namprd11.prod.outlook.com (2603:10b6:208:3e8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 10:00:40 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 10:00:40 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Ally Heev <allyheev@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND RFT net-next 1/2] ice: remove
 __free usage in ice_flow
Thread-Index: AQHcXRW8gAuGEs3LRkmoMKMWqZT9HrUBmCbw
Date: Mon, 24 Nov 2025 10:00:40 +0000
Message-ID: <IA3PR11MB89866985D2E8B218541F20BFE5D0A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-1-a03fcd1937c0@gmail.com>
In-Reply-To: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-1-a03fcd1937c0@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6220:EE_
x-ms-office365-filtering-correlation-id: 50c41700-87fe-49ae-1b99-08de2b4052e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?RUF0eGhZNnBBMjBBb3ozRGwrcE10V1RxOHUzcWtFOHp0NEpYWmNWNmNzdzZB?=
 =?utf-8?B?QTUwd0tNcnp1bzNwTzlzTURPbWtLQmhjNGNrdU4vakd1UHBLMk11OGJOclAw?=
 =?utf-8?B?a0JUci9iSGlmbEhWVnhQeU9seG83Um9KWi9WTEJSYUFyMi90TlVRUFZ4ZmlH?=
 =?utf-8?B?VVQrZUNxZHBiTGQyY0dlS3JmNkhWTXVKVUVhRlF5bk9MSjMzRkd1Zi93VlA2?=
 =?utf-8?B?WWxPUjlDaC9wNDlzNVQ3TTFSdlVwbUR3TjFzaUVUN2lYNTNSK0NDSzdYRzdH?=
 =?utf-8?B?bjNadmdoOExXcHhhQVVtSnFjRy9DRXBCLzVsajVRVTAzTTJuYzFoVGpsSVRC?=
 =?utf-8?B?OS9KMkhoOWhZazFWcC9QWHdFaTg4WlB2TGw3RXc5K3ZTTUFIYkVtV0Y1MWlN?=
 =?utf-8?B?THdzc3ZmeXlzUXMyaDBTRG9CS2t1c3JVK2ZXMUtCMG8vWFFqTzVMK05kUElS?=
 =?utf-8?B?K20zOUloVndYbE0welJyb20zVURYZGU2aEJ0NStyU2M2WjZSSHRZUXFVTURZ?=
 =?utf-8?B?Y1hMbitOc29VQURzakxkQlNJdStvV3pTaDQ5T1RJVTZvSFkvMWdUWjduK3Fi?=
 =?utf-8?B?L3hVSHM1VWdTZ2xsTnphTmlMdlZRdVNSRGpSMTJXV2RsTExzTytvMCtRaTM1?=
 =?utf-8?B?Wll6RlpmK2UxME1KYmpTNDA2ZjRFYXBidHA2ellxVXRFSDBtbUYydXJ3SDR6?=
 =?utf-8?B?QjRHWjlmOVZqWWhpWXEyZk9mYSs1dXEzWm5IRGduOHhKTWZocWJVeXZLU3cx?=
 =?utf-8?B?Ni9KZkJoN2NHd1dOS0JRUDY2VTZ3OUVEMHZpN0dQdFVjZlpUNmJ5bmg2Tmxa?=
 =?utf-8?B?c3R2TjRPc1l6OXVudnlDc2xGdWptTlMrZWZmMkt0bHEydDZZa1p1T01oaUUx?=
 =?utf-8?B?LzBJSUdCN0EydElLRUQ5YXRYaTlPa3ZoOVZISXJ5aDltMGl4TzM5aWkwVTZR?=
 =?utf-8?B?VG5WQnpibVU4NFJwbG5idmpkSWFwUUJyZ3ExdWVoSjdFbFBvK3FSd0ZJMTdF?=
 =?utf-8?B?RmE1TTZuNi9vd2JXeUZISmJmVlJQK0ZTZXM2TGxjODZnYjRLa1FrUkVTMUNW?=
 =?utf-8?B?eXREUFpOeHNEUmFtbjArdGVCcUdFQlJWOWV6VXB6c2ZoUm9nY2RLcmtWcjM0?=
 =?utf-8?B?dW56YUFnOWQ3YzlyNzZFMVRXbDRvY0JqQllxSDVyb1lzdzVYaXlQZ3ViR2dt?=
 =?utf-8?B?djJxcDBtRGlKZmhtSFRadlRUaEJrUkdvaFhESU42eW9WdmNVOGdZK09mMStn?=
 =?utf-8?B?cXgwYmVoeWlqdWgvemhLc0VnUXg5MTZYZG5NZHcrRWw3YWsvSXI2TEFMWlBV?=
 =?utf-8?B?SjNOZk85QnBvdWROdVc4Ymc4Qk9IMVc5TlFBNUtDdWpDVnpnbGJ2VnJYNDhi?=
 =?utf-8?B?WSsrcFk2RXd0TzVkdXFQc0pidXVJWjRaa3hDR3p1WlZzQXhwWFkxRS9UNDV1?=
 =?utf-8?B?QnBzREJsd2ZadnBJZFhDTE9iVENxVHZCTURPalZGdFg1eTMxSEpZNTkrOGwz?=
 =?utf-8?B?cmxoTHNpdTNaUlhvYURKdDJjU3F0YkYvVGI4TkpRR0ZpL01jTnRPYVRRNVJh?=
 =?utf-8?B?dFRuQW95emlaa25IdmJySGtZa0M1Mno3em1lK1A0YkdQOE1tc1ZkdWV2MTA0?=
 =?utf-8?B?YTFBalVTMDM1SjZuYzdOZnIyTURlRFh1THlIUDZlTEU1RGZYcTJPdCtMYVNa?=
 =?utf-8?B?RmY3OTVyVzllQnk1NVppMWE0N2NON2FMOHFLbFVPQlNUMklkYW5kbVNnZDQv?=
 =?utf-8?B?d1hrN0t6bFl3bDE5VjJGbnNLejgvWlJzTzNEVUtCdjFNZmJXRkpaZWM0cmNV?=
 =?utf-8?B?TWxHd3BKSmc3Q3Mvd2VmVUs4ellLWnUvOWN6ZHRZajV1OEpTTjJ2YTZNeTU4?=
 =?utf-8?B?Q0p3dHV6L0QzNWt2NHlOTis3Q3o1WGNIQjZEb0ZtODJHTTJBT1ZRUU03ZU9S?=
 =?utf-8?B?MWswbGhYSUVmV0JPU0RTTFdWY01kWEVNWWNpUy8wN0xUd1ltSWZtd0JRS2lk?=
 =?utf-8?Q?oPM7L0VcXWkyXUmtV6DIIpvl7bjEIc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1ZRMXpEd3lrS0pVemo4ZUJyM2ZRaHdKMVRzeUxYUmFSVTVKeFhOcWYxTTZK?=
 =?utf-8?B?S01OQ0JwR0Q1bUhiclZpY0xmM1Yva0pKVStPQm8rcnhITDU5WTJaSWFvaHJ6?=
 =?utf-8?B?b1dySFhYQlFSZzJ6V0UvV2FxaC9maVNudmFLSW1BY2k2eGNCVHA0WEVTWFpV?=
 =?utf-8?B?NURqc0hraDIycVl3ejRPUXpvMTBDbWN5SmdrTmFqTE51eWhYSUpsL3hLUEY3?=
 =?utf-8?B?VG1BdU1DclFaQXduQTRiREI5cS92eHZqcnE5SmY0QUtncTU5cEJwNVN5MkY2?=
 =?utf-8?B?aG81TE82S1h0OUM0dnIzOThZTHhLdWxxMDNvY2kxOVlGdW5DRUZod3V5VnJN?=
 =?utf-8?B?WW1GQ2VyR2ZEKzBCWlhiZU9XOVhmTHM3K2d4WEM4VjN6cHFlN0gwWXNsVTVG?=
 =?utf-8?B?U3JzK09GMW9vVGh2UzRjTWVCOC9VWGlIa0lDT3ZGV25vZzVyUzc3RThrdWI3?=
 =?utf-8?B?RjZ5dkRsZURzM2FUVG0rcWtnTVhUWlg1UTUwTkpaQlNZN0VZaURGdGtYcmZU?=
 =?utf-8?B?YmdEYnNtTWM1YnNxK2NHT3ZHQmQxbWVZWHNMLzFLbXlVK1BVMDc5MXVKbFN3?=
 =?utf-8?B?cDFVcjcvbUVxRWJCUVF1WUlkRXQ1RXR6L293aHRlM3oyS3d4OFZpQ2k2WTVw?=
 =?utf-8?B?VzVTZXdpbENyT0ZnOVFoYXBsZHZkeG10T1RHbFpwZ210bWN0S2JyZ0FoS0dF?=
 =?utf-8?B?UTFGcnNGdjYxK0NWeCs4cWZPVWhqYmFoeUo2b3dFdEU5aElwQXlYRWNxZjY5?=
 =?utf-8?B?Nmh1WkJCWkdiM0xZc2RyRGhQS1lSNS9WUm1FYnpseVFvcVpDTU1hY0plZkIz?=
 =?utf-8?B?NWJXUkVTUUx2TXpEZVNmK1ByNm4rVEpta1p4SGxNY2tkcGg1N1pocHR4Uktz?=
 =?utf-8?B?RVZxQnNwT01zbEJKK0ljdGpqK1kzVzhsb3ZuOFlkek55Wi80VjJBcDNPNmV3?=
 =?utf-8?B?YkFVTGlJOWFyY1dXa0t5eCs1SGsxVnJMT2xDNFdzYWJoZ2hFemk3M2l6WUQy?=
 =?utf-8?B?amtscWlVdEdSYUZnUVVoZkJtRWtWemhjMVU2VW8xSzRDamJTSi9PNFR5T2tT?=
 =?utf-8?B?cjRDOUwyYnhsVWp2amRLeGZJTTYrUXJQZDR6M1ZLd05kUXlTM1JkYXJIVmJZ?=
 =?utf-8?B?ZHJsY0hoZ3p2YlltT3puVEtma1hJUEdKMEJRbjZESWpNSUd4RDBKMzRmVUg0?=
 =?utf-8?B?UEl2MWZBMlBTb2Z1UmMwODYxNmV3VWsrUFVBclNkOUdRRWYvQlhPNHZFais5?=
 =?utf-8?B?M25DVVprRzdWV05UeXBzb2FCeGVXcFRqTGsrODlvRk1ld1RLWHpGSG1oUEpv?=
 =?utf-8?B?bmRyYVJ3NWhpNjl4cmpiNW5WNnk4QkFrSlV1NHdLY3k3TThZcVZ4OEd5eTlJ?=
 =?utf-8?B?VDN5M0ZOWDV6bklNZHQwZ1lNVWRFeHorZi92NUJPT2M0UUN2YlJNRkc0TXNB?=
 =?utf-8?B?aVZhUlowTUFMRHZzN280MmhFSXNudm1iTWZZZy9vN3lZVVFUaXBxY1lRQVRx?=
 =?utf-8?B?UUZpaG1PM3Bwc0R4V2RhWWo3bW9RL1lXV3FMeHNwejJYT05LSFVJbHI1QW5v?=
 =?utf-8?B?YTZJYlNoNzN0T2RQYU45RGt2MXlPTUpsN2tvOXBVbnU4RkFLMkZva2lubmcw?=
 =?utf-8?B?Mkt1QnNLN2F2TVhDY2QxaVFxZ1VZWVFtYnlHamlGaWYxWGNBUUIySk9pdXFu?=
 =?utf-8?B?SlF0L1hBWldEVjJyWGFieUswZnFwQ0NKRjZodlp6MWZ1a1JFbWVQRy81VmN4?=
 =?utf-8?B?L2tDZDJWWHNjWXlOWXhPMy9WckRLNVp3S0FmK3lRcERKOTdzWnZ2NE56cUpE?=
 =?utf-8?B?eFNwakNMeW1XUkFoa25qdDI4YVZQdlVYTVdtMzJZSTlzV2JZRGlxSUV3SHNN?=
 =?utf-8?B?OS9WVW0wT05YQ2FlNVQ2WDhhTUticDhsMzQ5UWdmQXNEWkxsTVBEWkhxbktn?=
 =?utf-8?B?WXJtTDZuUFIvV1dOQXVhelJ0WGxabW50V01NcjhjcUlMdHpXSENsVUdWbDVn?=
 =?utf-8?B?SzVhWG9XMmRSNEhJMnN5SHpDVUNmTEp5dlg1S3h1Sk1rS2ZJMDRqenhONUYx?=
 =?utf-8?B?dHJXK0xYWDZlQmNFeUlGREI1YTk0VTI1VUt0Y2UvQ05RZzNRZTg2UnE1QnhO?=
 =?utf-8?B?b3ZJKzRWVGttSWZRNFN4dGl0WVA3UUx1Tyt5OStTUEJOTTdObU05cmJYUUwv?=
 =?utf-8?B?OHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50c41700-87fe-49ae-1b99-08de2b4052e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2025 10:00:40.1906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 02w4B2JIZ1+8ggJm3gcGoQTO4kldWRWj3OztwKV3qLo3wznO8z4UahwsfhjiBD2O7ZBB2VoOFPft3WTAhDNyQ5G0pjltsMMcdw/u1Yo/Im0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6220
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763978455; x=1795514455;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FGrUintxpvu+xYL51OcOITbk9KBxEiiFE/akT2I5gzY=;
 b=ITNETVCbVFOOO3T21xr8y7EVY3hEfMSd16cJspYW3kpapPf3YNhxegTv
 G6PO/I2ttU8vmIW5XyHqx5JVxkSJ7WNvjn+SiuSL183GtBDBiAiRobQOb
 FYGNqikvrXmtTO8a6Ar+6wKIAi9vMOIW7XLImAkXcoUOSPtzG7l/ggD2p
 hD72ZMZmuCZZQkTFjXNtXt68eysz5Wum73tW/1L4D+OMDLO56kgYAle4E
 SXQjz30oQ6YIysJNvSBLIa7ueJSe0+daCOwEkJwt/NdqAI20+MBA2cHXE
 vjQqmCTtQASCYEpM05jHjp0Kou6i2U/k7Nzxfv2kREJRmR8uZcNPOgcyd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ITNETVCb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND RFT net-next 1/2] ice: remove
 __free usage in ice_flow
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQWxs
eSBIZWV2DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgODo0MSBBTQ0KPiBUbzog
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwN
Cj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5u
DQo+IDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+OyBFcmljDQo+IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBL
aWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8NCj4gQWJlbmkgPHBhYmVuaUByZWRoYXQu
Y29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBBbGx5IEhlZXYg
PGFsbHloZWV2QGdtYWlsLmNvbT47IFNpbW9uIEhvcm1hbg0KPiA8aG9ybXNAa2VybmVsLm9yZz47
IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4NCj4gU3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIFJFU0VORCBSRlQgbmV0LW5leHQgMS8yXSBpY2U6IHJlbW92
ZQ0KPiBfX2ZyZWUgdXNhZ2UgaW4gaWNlX2Zsb3cNCj4gDQo+IHVzYWdlIG9mIGNsZWFudXAgYXR0
cmlidXRlcyBpcyBkaXNjb3VyYWdlZCBpbiBuZXQgWzFdLCBhY2hpZXZlIGNsZWFudXANCj4gdXNp
bmcgZ290bw0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5v
cmc+DQo+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQGxpbmFyby5v
cmc+DQo+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2FQaUdfRjVFQlFValpx
c2xAc3RhbmxleS5tb3VudGFpbi8NCj4gU2lnbmVkLW9mZi1ieTogQWxseSBIZWV2IDxhbGx5aGVl
dkBnbWFpbC5jb20+DQo+IA0KPiBbMV0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvcHJvY2Vzcy9t
YWludGFpbmVyLW5ldGRldi5odG1sI3VzaW5nLQ0KPiBkZXZpY2UtbWFuYWdlZC1hbmQtY2xlYW51
cC1oLWNvbnN0cnVjdHMNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFsbHkgSGVldiA8YWxseWhlZXZA
Z21haWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
Zmxvdy5jIHwgNiArKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9mbG93LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2Zsb3cuYw0KPiBpbmRleA0KPiA2ZDVjOTM5ZGM4YTUxNWMyNTJjZDJiNzdkMTU1YjY5ZmEyNjRl
ZTkyLi5kZDYyZjVmMTRkNjA0MDFkNmEyNGNiOWY4NjY2DQo+IDQ0MjVkYjE1MzJkMCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbG93LmMNCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbG93LmMNCj4gQEAgLTE1NzMs
NyArMTU3Myw3IEBAIGljZV9mbG93X3NldF9wYXJzZXJfcHJvZihzdHJ1Y3QgaWNlX2h3ICpodywg
dTE2DQo+IGRlc3RfdnNpLCB1MTYgZmRpcl92c2ksDQo+ICAJCQkgc3RydWN0IGljZV9wYXJzZXJf
cHJvZmlsZSAqcHJvZiwgZW51bSBpY2VfYmxvY2sNCj4gYmxrKSAgew0KPiAgCXU2NCBpZCA9IGZp
bmRfZmlyc3RfYml0KHByb2YtPnB0eXBlcywgSUNFX0ZMT1dfUFRZUEVfTUFYKTsNCj4gLQlzdHJ1
Y3QgaWNlX2Zsb3dfcHJvZl9wYXJhbXMgKnBhcmFtcyBfX2ZyZWUoa2ZyZWUpOw0KPiArCXN0cnVj
dCBpY2VfZmxvd19wcm9mX3BhcmFtcyAqcGFyYW1zID0gTlVMTDsNCj4gIAl1OCBmdl93b3JkcyA9
IGh3LT5ibGtbYmxrXS5lcy5mdnc7DQo+ICAJaW50IHN0YXR1czsNCj4gIAlpbnQgaSwgaWR4Ow0K
PiBAQCAtMTYyMSwxMiArMTYyMSwxNCBAQCBpY2VfZmxvd19zZXRfcGFyc2VyX3Byb2Yoc3RydWN0
IGljZV9odyAqaHcsDQo+IHUxNiBkZXN0X3ZzaSwgdTE2IGZkaXJfdnNpLA0KPiAgCQkJICAgICAg
cGFyYW1zLT5hdHRyLCBwYXJhbXMtPmF0dHJfY250LA0KPiAgCQkJICAgICAgcGFyYW1zLT5lcywg
cGFyYW1zLT5tYXNrLCBmYWxzZSwgZmFsc2UpOw0KPiAgCWlmIChzdGF0dXMpDQo+IC0JCXJldHVy
biBzdGF0dXM7DQo+ICsJCWdvdG8gb3V0Ow0KPiANCj4gIAlzdGF0dXMgPSBpY2VfZmxvd19hc3Nv
Y19mZGlyX3Byb2YoaHcsIGJsaywgZGVzdF92c2ksIGZkaXJfdnNpLA0KPiBpZCk7DQo+ICAJaWYg
KHN0YXR1cykNCj4gIAkJaWNlX3JlbV9wcm9mKGh3LCBibGssIGlkKTsNCj4gDQo+ICtvdXQ6DQo+
ICsJa2ZyZWUocGFyYW1zKTsNCj4gIAlyZXR1cm4gc3RhdHVzOw0KPiAgfQ0KPiANCj4gDQo+IC0t
DQo+IDIuNDcuMw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
