Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 434FECCB7BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 11:50:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDBB561160;
	Thu, 18 Dec 2025 10:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lF3YVYAVmZ5J; Thu, 18 Dec 2025 10:50:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7031661166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766055018;
	bh=XAEmcjkHSaX6DVYOGjixSo3BOXSvnhCFM6F7Z7XYkRQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pXGlY2CNcocfCNT99D0x3iYxUyhKGZ4pykBwtLJoDXsgncPg6Ph77mQEG2Xx+p9tR
	 bExMDzIYXf6AadQqHxxea/mdc/sPqOq5ZNSgQgcnlEIS0hJbQ+VFEthUqqrkMsAn8K
	 4qS3jjP6uMt6e1tPhZQOCJMoA7B4KRZ/q2jY9I3I7B/8IejbJcohQ/NPFIzxXR236q
	 dVN3nrK07QlnaUiobOpZil7UeJvPdexfV1lEHE5UhrZVheW5x2dSTdqD6WeYKX/Ik2
	 eaC1J+XB5TWuZS8TPFSt3NfD+6UYzjhMN5QWxQllSqyHh2iShB7uJvO5AvU9N4s02A
	 80fEoaRJk30Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7031661166;
	Thu, 18 Dec 2025 10:50:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9785F1A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E26581247
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A3dEJkzdnVEq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 10:50:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AEDA080E97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEDA080E97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AEDA080E97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:15 +0000 (UTC)
X-CSE-ConnectionGUID: fkx+I6X0R3WLmgQ51FaIEQ==
X-CSE-MsgGUID: RTxtDFK1S1eRjSC0UKoa3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="79376277"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="79376277"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:50:15 -0800
X-CSE-ConnectionGUID: aOmblKLsRtqjXaLNsuwfGw==
X-CSE-MsgGUID: ZR7sPlAYTCWYWySG+alx7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198620862"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:50:15 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:50:14 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 02:50:14 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:50:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VX9lBRg5WnQwlxxTONNBdK090uJ1hzAZbHJeu1lPlM+5GFh9iinjwUNmOQt8mgGlwed2uwSU/QC9gGzW2OawMDhG6v17zn7gDZcZO7A4KHy+m63Zp1lUXA06BmTCCRnqMmzXfWwBjNG6aa3j3m5VmLSVeY9bGJ/SWxXnarKQkzZdVvabIJG8b5ThQW99/GnjVpWW5HU6fRM4kK8E/E5GuEc05kpfXVeFKaO4Ovy+Y917yzfxbMFfcKXadOYBkEzu2QmSgXDe+Wr/TLNgvyh9m4p+clLRZE42FqLTB4vH2A/56dEgz8OtMOqavogws/xPyNOCi6kgDXAYsk/xASd16w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XAEmcjkHSaX6DVYOGjixSo3BOXSvnhCFM6F7Z7XYkRQ=;
 b=FXH3maGQRj04K9QxQzcHb29XqzThPIvI25FBXqovF7CXcJOt6DMHgqXGjxpx0xz3RBlwREnVbl8AQ9hAtB256/dirFO40Iz3+y5MUCQcyYrj/ZFrvTBS8YPcyhdlrTb3F/AmHsetxSu35KFbtxbxvnq4WzHntawtRuyRwMXk5kHQcGVhZkETOiU8+EwSunSxKWlEnrX3HlyggW2xBRLay73i7H+gbq6lhnAEji9kmCYgVcmjHb7UPhS6Km0/LORVIfXxeoGvfM832u1SCAzvsWuMO74vbpi3saknai1h2f76LSFqWkUiet1Y4mPNxee7xKXPOwN/W5cVLgGitX504A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Thu, 18 Dec
 2025 10:50:11 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 10:50:11 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: initialize
 ring_stats->syncp
Thread-Index: AQHcWltKtsNiyiOSuEKBL45mXDu/U7UnDnSg
Date: Thu, 18 Dec 2025 10:50:11 +0000
Message-ID: <IA1PR11MB62419BAE964D5E5E84F7DE838BA8A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-1-6e8b0cea75cc@intel.com>
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-1-6e8b0cea75cc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6196:EE_
x-ms-office365-filtering-correlation-id: a92d3ea3-1dc2-450e-b465-08de3e2337d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V2ZoSC9Na1RUTUs5RG9yamprV0dpSGpEUkgrdUs5Q0w3T2szM2xFczNOT0Fy?=
 =?utf-8?B?TFB1YjZSUm41RHFwekw1aE5kU0ptWERBdG43SGhvbkxESzhsOEJKdWdVL0V6?=
 =?utf-8?B?M3BQSkFXSTJZdlNidDFibCtVUElnQ3ljN2c3S3FUWUZNK3pEaUl3OEJ4akdW?=
 =?utf-8?B?ZFNUSkROVit4Znp5MTNkSTVBNjRGOHBib05QNWdUOVBwL01sK2hDd2IraU44?=
 =?utf-8?B?eXRpbDFjZVI3bFRtUTZiNGFtM2J1RkRmcXNweDM5eHZzRGp2VVAzVnJYL0sx?=
 =?utf-8?B?Vm5tQllPakdlUk1nNVJjaEFobENHbHN1ZHBZVk1tWXJjeEdsSy9weTdJbkJC?=
 =?utf-8?B?OUZlT2o0V2tZeDR2SUxkeHdsaHBxZURuWU1VRHMyOStOcGpHR3hFbnlMMmNY?=
 =?utf-8?B?TUtVczc1WG1vZU1rMnY0Z09mQXF4Z0FzdkNoekRkSlgrVGxzV1FHY2orY0FC?=
 =?utf-8?B?NDZRdzdhaklMSTIwVEZpS0o5SXdmajBVRFIwcmQ2U3pDUXd2UG92anRpSlQz?=
 =?utf-8?B?bEtvTGlXOHFSUjNQeERPZmxaQlFqZU5WVytISDQrZmZCUnRVK3FJMjVFMkJR?=
 =?utf-8?B?M3ZkTTJmdGk0K1lRN2diN1FCTnh1TGg5VkdFcGtXOStEeldqaXA0UmVQSmFS?=
 =?utf-8?B?WGg0Tk1aVm90bHh6NWJqWmhHa3pKa3JkV3JEM2F5QnNWZGFnQS9HRnltYVJl?=
 =?utf-8?B?cXRSYW9LWGw2Mjk3UEJBS1ZWdlEzVjBtVk9VQ05jN1dndmZoSzhNTlQ5WkhT?=
 =?utf-8?B?TzJaSmljM0xNa2hRb0ZtQmNTQ1ZBa2cwZ0t2SmRYdUdZMXVjU0JMaEtYM29W?=
 =?utf-8?B?ek5USmFCVlZmMHJOKzluanlDWnhoN1dUTDhDSU9tR3h2UVRrQ2tZWTlUUlBn?=
 =?utf-8?B?ai9BSW43NnM5TXI5OXYzUHp6NkJoWFMyY1JRdnZYcFlmNmxpenJBN1lqa01u?=
 =?utf-8?B?WWlVaEErT09xdGpDMkFyejU5THY4a0Y3d0NVellMSkZnbE5USCtJNSt1VE1j?=
 =?utf-8?B?bDdWRTJnck1VaG82RWhnc1ZjaUFkWUZJQ21YZ3h2QlpkOUx4UHZJR2ZtYlor?=
 =?utf-8?B?OGJ5OGZKQldtSzZyYnljencrUHplYzBEVVVpN29mazZBN2h2WUNXMGlRV1ZM?=
 =?utf-8?B?N1hqVkpJWGVjTjc1dEJZSm9UWk9VaURKaS9CNGhNRExEbkhSZjNyeFROTXRF?=
 =?utf-8?B?R3JPYW5MU2VoVWtyeUtVQjR1YUg1YVJUN1FXRURMb3pmNktOeC8zWjVlQ2ta?=
 =?utf-8?B?UTJ3MEEzanBjczFub3ozbllBSXpPekxtOU1KVklxS09lTmVaakhRd21SQzlD?=
 =?utf-8?B?cWZGL0l6QTBhREo3ZVJtYzlmbENrNVU0QzQva2ZNVXBxN3JpRkJtdUsxenBE?=
 =?utf-8?B?Nm9OWnpuWUVURC9QbjN5bmY5cWc4ZWtWRWErOVRrbFJXLzVJbnlUOGh1N3pr?=
 =?utf-8?B?OFN5K1FjUnFrQXQzR2ZOTitVK3dTc042QUlOVU9ib1NnTFl0NlYwSm1SZ2VG?=
 =?utf-8?B?Mmp0aHNZUkt4NTNBd2wvUTNlYVdsU3FjOHVLanlFdHBpOGkycm1IQzV4NGp0?=
 =?utf-8?B?T0VUenFsNUoyNER3bndZM0UxWUhuL0dQMlNrK1pmUlptL0cyV3lJVGVMT1kw?=
 =?utf-8?B?dlpJbG5CZC9oTTFxOVpDUCtSNUMwdlBabzFkMEgyMGlVM2JXQjJZa2xUQkYr?=
 =?utf-8?B?NXg1bHZhcFdocnVRNmk3RXpYOXpTOHd0dkk2bzZCbllubU9SQTZWTVE4c0lk?=
 =?utf-8?B?eVU3c0ZnNG5GUWF5U2VKT3N2dFNUd0R3cjVyZHl0ZGloT09UMGdONlhHbUlx?=
 =?utf-8?B?aVp4aGVJZTh4aGUzSkxaaUtBWkFPby94WU40LzRSWFZidUNhUEcwOE4rK2xj?=
 =?utf-8?B?Zi9aeTJFTi9rZnBLbVBSMms5L2tVMXNUVjJEVWJhWnEvWlZMUkpNNkpEZkF3?=
 =?utf-8?B?K3lTajFCUzBDR0t4My96WXV3NXRMVlJjVXJwUmJsQzhkZGtuUUtuWi9uU0Zk?=
 =?utf-8?B?OTh6U05ISVdlM1RkckRubFhqU3ArUVQrancvczFpNFE1OTJkNk5OdlJzcXVn?=
 =?utf-8?B?YzB5UDNXNmQrOXVSR0IrNThXeFZ5MlRuQ3hiQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dldHczRHeExlcU9FcUxQaUxJTXZ6SEFLdmpqck9iSWFqQ0FmcHNHM1RTTnZ6?=
 =?utf-8?B?V3lubXNXNi94dGpnbzNlMHFwQkdCbThjTHJUdkRTK3UrS3JiaFIxYUsvUHhm?=
 =?utf-8?B?RzlaVEtybHpJWHFnVERoOWF4UDI5d05BeGN1VjRnMk8ycDllbFR2MmxSa0o1?=
 =?utf-8?B?bHFJMFFPN3ExSHkwSDNCYlNPaU1CSk5FaUl3NFdiUnZKTHY0M1lNOEp6Mmdl?=
 =?utf-8?B?NFdtQ3lyclUwVUw0a2hXb3o0YVBNYzMwR2ZKRUc2SUdYK2tIUFNPdzVOSW01?=
 =?utf-8?B?a2FKQjRoRFFRVlI4Y2NrRklsUG1jTXE0Si8yYlNoS2hLVFBaaVNSSjVHUTZw?=
 =?utf-8?B?cmJQbUJwY2tMTlBnVE0yKzFLNGV3Rk5tcXFGakFjallmM3ZteG5JbkpEeUJV?=
 =?utf-8?B?MkR2RmxDVzU5SWZBV2Nwd1JpQXhIS24vRkhxWEo5QVZJMHFBNjBqUjBqTDU2?=
 =?utf-8?B?bjRHS2lSR2NncEhndGVLU3lQcjdXbVRoaWNBaW9tOVVwQ094MlVOd1dTZnhV?=
 =?utf-8?B?NkJvTlpIRlQvQU8wU2diM3QvOFpTalZoOEs4cG1hL1ZkSDNzb2hVVmFUR0JF?=
 =?utf-8?B?Zlh6cG1MakMxb09TdDk3bjJGVGIrZkxCdGplS2RSdkhQZldxOG1CeFhNMlcx?=
 =?utf-8?B?OW5tMEEwWnJQdUFWVW5Cb21nck1qb0pvYkNBRk1ReTgwVHlwSnJydDQvb0F0?=
 =?utf-8?B?c0pqVmlSK0tqZFE1Z0pMMHY3Z20yL0pUS3hkUHJlRFBwWWVXOFpKY0FFcFYw?=
 =?utf-8?B?SHZWRm5sUkVvd3F0UThZbU9GVEZuSlpiblZjMm9lem5VaE5saldFNG5qbUdS?=
 =?utf-8?B?QmVRdjFDbmJ5V0MrVGl1aWVBYnVvdWtoYXZDTnRkUy91WDVMZERLREVJRGll?=
 =?utf-8?B?VUNLYktQMzNHcSt4VkhqY3JuU3haQ1FweTRrRlZKTVZpT0NRYjk4dSthVW9L?=
 =?utf-8?B?U01KUXlyM3dtd1R5WDE5aXdqNStNcVE3WlR6SkZwSktQUkViZEx2VklQOHdl?=
 =?utf-8?B?c1cvYWlqMFVPTDFUb003RXlPMEZEMW9tNjJZUXl2N2dXK3Y2LzNod1FjY2ti?=
 =?utf-8?B?R2dLYW1pZlhtalE2NXMyYmVNYmo3R3c2Wklpakdmd1BHY1lpcnB0aldFalEz?=
 =?utf-8?B?dXc2YXRhL2dFdUExUVNOS1JQNzhoaHZpMlhmNnRPYUY2ZVB2K1RrVjNTK1Zu?=
 =?utf-8?B?T29FOUtyWHZZSHF6dFpMcGc3RVV0OXh5K04raHpXUHpkZUpMd21kSnpxZjZt?=
 =?utf-8?B?OHBuU2hNTWprVG5aVGF2cmFxdTYrRk5ObmFWOXRRVDMzdlpzUEFtZlJQbjBm?=
 =?utf-8?B?VHc3U3dVcm5NeXYyb0dVZXVObHRVWUlOU0dOZkVTTE94dlN3eW9yVzg2NnZt?=
 =?utf-8?B?cHdNUFpQTzVDaDZkTi9iSWlWZ2NkV3BFQlZ1NFZrNUlYL0YzNld0cVZhYlJO?=
 =?utf-8?B?RHN2OHZDTXNqdnBHK3NjenRvbTUzZUdINE5VRlZubGdDalNSSDB5MkVxdzdQ?=
 =?utf-8?B?MDdjUkpTcC9iTlhjOHZXdnRTdGtXZGpQbUs2OGIybzZBZFBubDFEaGcxZzNE?=
 =?utf-8?B?cHdBZ0I2Vk9FTEJJK2ZOdG9LQStKb096dzBpSEpYdXZveTh6YVNOZkRDLzZx?=
 =?utf-8?B?TVRLUnYzRjF4dG9lZE9QYWc5dkdyeEQzdi95UG14U0R0Q09mL25Bb2lySFgx?=
 =?utf-8?B?YWR6SEJWOGg1T2tBOEt6dlpLbmd3R3h3NnNnTjE5MWc2ZFFEK0U1QUU3TXRD?=
 =?utf-8?B?M3V0RFdWNDNhcEszQVFNam5uTnc4YXpZWWx2QmRBRDZpS0NZMFBYQ2FZTjdw?=
 =?utf-8?B?SEV3UERiTVVtTlVEMlh1WXM0RHY1b21oaVBrWlUvQ3c0QXVwVDRGeGJ4YXRw?=
 =?utf-8?B?aktoUjE1RVhyN1BrQ0pmWDlMOVJ5VEdCdjFST3FIZ2N0d2J4UFErZWlVSzBO?=
 =?utf-8?B?L2ZuZUpaQXBCL0s5SExydTlFZ1NVakNDbW02NHZpUnNyMSt5OWZJVmtZejhx?=
 =?utf-8?B?YmI3aW1meHhxdmpwMldmMlNjdmxadU54SUFWS2UxeVRMMUlaYU5TTlQzQlR2?=
 =?utf-8?B?Y1VjcWFqaHVVZThhUHkxbytVdDE3L0Qzdzk1MCtRVUFIakN5aUUzeDFPZUxa?=
 =?utf-8?Q?3DF1DYnsEoqPgEKVCPJCsNhGZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92d3ea3-1dc2-450e-b465-08de3e2337d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 10:50:11.4311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AIfBo4fEzfBF+hiBWo0ElzX8wUL4FMaNdDb7PZP8hQnZJtFKp2dUEJJEczNtwGCvMql00VFgI2kviMjKriiVmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766055016; x=1797591016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XAEmcjkHSaX6DVYOGjixSo3BOXSvnhCFM6F7Z7XYkRQ=;
 b=VsDb+5I87AfwA/Av4ehHVwKHaSU6n8Tvlt99l3VwZNJvf9vwuFz0KF40
 C2/6OpAUS3SzVNbbcasgNH2OhPo+JWkIzZGCCC51nnHQxcFpfmVYSnSDR
 t7BUE2y1/L0DyND97fzrclKeNi+JDxV5iRWK9WzvoiMNubsCfviXpoEio
 phqLDL4Jw/WiTf1WChv9R/S0gL88UtveASDcXu1B9PZ7j6k7DIApaDCx/
 4Eni2XDSA1Tk5zG+7HAnw//8NPptfGEk3fIADnldzjsdlijV73sl/GElO
 jzvoohBke+1G0fp+N7ZTU3KA70oRTbaMLQYlJ11iTxZHKQv9rtDpgbaZA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VsDb+5I8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: initialize
 ring_stats->syncp
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMjEgTm92ZW1iZXIgMjAyNSAwMTo1MQ0KPiBUbzogTG9rdGlvbm92LCBBbGVr
c2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRl
ciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+
OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBMb2t0aW9ub3Ys
IEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NCAxLzZdIGljZTogaW5pdGlhbGl6ZSBy
aW5nX3N0YXRzLT5zeW5jcA0KPg0KPiBUaGUgdTY0X3N0YXRzX3N5bmMgc3RydWN0dXJlIGlzIGVt
cHR5IG9uIDY0LWJpdCBzeXN0ZW1zLiBIb3dldmVyLCBvbiAzMi1iaXQgc3lzdGVtcyBpdCBjb250
YWlucyBhIHNlcWNvdW50X3Qgd2hpY2ggbmVlZHMgdG8gYmUgaW5pdGlhbGl6ZWQuIFdoaWxlIHRo
ZSBtZW1vcnkgaXMgemVyby1pbml0aWFsaXplZCwgYSBsYWNrIG9mIHU2NF9zdGF0c19pbml0IG1l
YW5zIHRoYXQgbG9ja2RlcCB3b24ndCBnZXQgaW5pdGlhbGl6ZWQgcHJvcGVybHkuIEZpeCB0aGlz
IGJ5IGFkZGluZyB1NjRfc3RhdHNfaW5pdCgpIGNhbGxzIHRvIHRoZSByaW5ncyBqdXN0IGFmdGVy
IGFsbG9jYXRpb24uDQo+DQo+IEZpeGVzOiAyYjI0NWNiMjk0MjEgKCJpY2U6IEltcGxlbWVudCB0
cmFuc21pdCBhbmQgTkFQSSBzdXBwb3J0IikNCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0
aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
YWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgfCA1ICsrKysrDQo+IDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKykNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0
aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
