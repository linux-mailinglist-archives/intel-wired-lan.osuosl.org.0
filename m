Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OB9iHheJgmn/VwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 00:47:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E885DFD67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 00:47:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2209E40A7B;
	Tue,  3 Feb 2026 23:47:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8PHxwOaCqoAk; Tue,  3 Feb 2026 23:47:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4457840A8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770162451;
	bh=PtUBGrX2QvOa0szJOrOqrarXUj2//uPPJWzwrLaTWxw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CQL62K8Nts74YkuU4NfeCsU21giaHaDNFqBCubU+nuWnz1yQdvxhC/tZY1Jfhg+VH
	 iBPMSaj2dVb8IQM6Fxym174he6u+iEmfEoXlqkfzLPaZad27kedQ98eikI2sz0flbg
	 xihg9v1yYNwfzWHcjHCK4V5l4Ha762HtMKnAEdgAle3Z7dDYf9Nhzn+MlTy3mKnjJT
	 DqbloHFil8v+C7RXbuWf4pIjLVl5o7V30Llb4nmAJ+Qs6ENq5Tqbnx6hEHBOzkvFx/
	 ylY8rcuJWTHi/b8UuwlIPdb4p0e3L9YgOX97TdcZfuC0GDm+4aoC4XT2PRRBFxbJ1b
	 AhGFnUXemjVBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4457840A8B;
	Tue,  3 Feb 2026 23:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 328FA173
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 23:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21336608C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 23:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EOEni82uet31 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 23:47:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E817F608C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E817F608C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E817F608C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 23:47:27 +0000 (UTC)
X-CSE-ConnectionGUID: CmUiD0HJTzCUkVKFz0MBog==
X-CSE-MsgGUID: 7nxuC13hRbuZdDoHSNj2Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71505332"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="71505332"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 15:47:27 -0800
X-CSE-ConnectionGUID: JQyU0batRea+Hba2oKmJZw==
X-CSE-MsgGUID: Ny/L5ADuQQud4a2kON+z3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="210030428"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 15:47:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 15:47:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 15:47:25 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 15:47:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dWz2JPDix6mRymzDAVzFpPMSSf1ZGD9CV+GkJ3zDy4zarJiqXcJocBFm5w64ygdgZsKXanv3bWIBT45Cq5XNbHAGfGLXT5Yfb+5Kh/LaaSWnBkXJTS9xEHkzShqjAT1AKAqox5LYIJDbqZDMzNKDfWOfuEZjJs+zAoW0NTU6mHv0XERHEF2whhY2EnneY7P8M65gtagxFmq6UvRzYvBJFMckB9dibMfkDWZG3RmsQAeszB6R9S4z5z7N8X7suum+spOy7eu+m7CZKo/UsucQM3rVzO9NDRhMHBhS4EVRG35JdPbZdrj80gYXNwfQ1wYpwGuIV5BW23tyLpsGIAznwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtUBGrX2QvOa0szJOrOqrarXUj2//uPPJWzwrLaTWxw=;
 b=ddddExhIAISU3TBhojsrNVOprTt/aNRNqf5ckSO3lMadDZ4wXBfvdJ3WT9Lj4BtzqZOEcITXb1lC5RMVB2JUVAxUwOS0aovTv9YsqinU1e2cl2XaRkfsTgsOuofkzN5MJPj8LGRPPQ0q9q5G6KXZDylqym6yGRqs6EmZJ3W/r4gFKT/DDRxCG4AuKgCXZ2K7KduJrYya/FBQLdvtJ2tO/MQUN50DfrerfkpKP+kQiAQiZMebXYmKqEqy/bm5q7A7iEFhjGigTy4XgDCOxJfYxK60NhOyD95G6oUdT6oTv8QR8OSInlfyRbWkLdu7oLc/8aoX+WArU1luzXQZrIxcpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DS4PPFE99BD3AEE.namprd11.prod.outlook.com (2603:10b6:f:fc02::5d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Tue, 3 Feb
 2026 23:47:23 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.010; Tue, 3 Feb 2026
 23:47:22 +0000
Message-ID: <79960c2a-26ea-4472-bebb-4657fcca2255@intel.com>
Date: Tue, 3 Feb 2026 15:47:18 -0800
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jakub Kicinski <kuba@kernel.org>
CC: <ivecera@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
 <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
 <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
 <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0109.namprd04.prod.outlook.com
 (2603:10b6:303:83::24) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DS4PPFE99BD3AEE:EE_
X-MS-Office365-Filtering-Correlation-Id: c9be0368-f01b-44f4-cfbb-08de637e936d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WlQ2YUU3ZEpsWGt3Z2NYUHNBd0UrUVk3LzRpN2U5QWFEQTVHM2NCbDZSNmNB?=
 =?utf-8?B?V3l3YnpVNFp4SGliYU4wK0VlSWVkOTJpQUtLdjVBcWFPaHZmVUZtbFZkZmFI?=
 =?utf-8?B?NWd2UkRHR0R3bFBhNmxqOTZ3WlZHaXYxaDYzYWdXUEZRaHhtSGJ5TmJOWXBq?=
 =?utf-8?B?cE5jOXd0WEFobzhtWmpGY3VSanQrY3pjL01adVlRUjlXRWwzcXRIWWJVWEN4?=
 =?utf-8?B?Qlo2OE5wTjZoazJiRS9ZdHpzengxK3Fqdmw2T1k4Yk5XSUV3SEV3eGVCQkt2?=
 =?utf-8?B?cXBCUWJMcGF5RGgrSFNkdFNsQUJwcVMxalJVY0hiUXE4MWJ3VVJrbnh0a2ky?=
 =?utf-8?B?QmIveHdTbzIxaFVZc0s0YkgvZEY5ZUxKM1p1YzkzQXlsNElkNXJFSlQxVnV1?=
 =?utf-8?B?OTgzeHZ3bkc0MURIR1Z4UWQvOWNMbklIWkpSV040eTVMYzlZekpNYWFHVnV4?=
 =?utf-8?B?M3g1dkhqamQ0ZmovOGpqRndEQ2FOKysxR1R3QzRCMFZPQ3lwekwrODdJTzgr?=
 =?utf-8?B?NENWT1NVVTI2aEVQQlcwRGdQclRYOEZKc0hMeHBOamt6R05WaG5zcjFPdDA3?=
 =?utf-8?B?QW1OTm0zNWNZOEpSV25EYWFNVmFBa3pxZTAzV1JKdTZjWjVPRXVwZlV2RkZn?=
 =?utf-8?B?S2VqcjZRRURrMkIxUkQ3TWQ0S1psSmY2bUQ2WVRTK1IrenlpdlpOQ1JPSThI?=
 =?utf-8?B?ZkQvTzJmYXExUm1Fc09nVlpuMVpFUGFTZVkwQWcvamxncEUzMmRDZmZjZmc5?=
 =?utf-8?B?Tk95Zzh4WjhkUGgzeUszSFJqT3NSbFpBRDJ6bmdTa3F4K1pXcTVSNEVza1Qx?=
 =?utf-8?B?TFN6bkp6NEpHWkZHTDhURmFHa3ZuTjNvMDVtbld4N1dlS0ZycWJUckJxblZB?=
 =?utf-8?B?WUQ4VU1lTmxGak5sS2orclZxbEUrb1hTNmJJVWw5QThZbVI1Y2YxN1lFekNr?=
 =?utf-8?B?L0VUcllOUmVmbXJIU01vaGowQ0FNODZ1Yk1ZaHBRR3pqTzJmdUhxVXdzTytO?=
 =?utf-8?B?TWRpOGlIZjEwakM5VGxmdDh0RUZLYmZMVmZwMlVTbEVGNjdRYXBoOXV1YTUr?=
 =?utf-8?B?eW9nL2JxN3ZIUkVpSHFpdEo4eTJZY3pWL2cwcXdmNnJzZlF5bGNXMVdiek8v?=
 =?utf-8?B?S2dNbEVLcUtVbmlrNGUwY2h5RFFYT0xWaGM0MWtaWHowemdicVh1b2crWWR0?=
 =?utf-8?B?NG44bzArQStuaVczMjZvL0wwQkdSRlgrODhPQS94QUhRMXNPYVdKUUFuWDNq?=
 =?utf-8?B?SW5KeHd2SHJISWhRRkwydkl4amk1ejE4b1dQOEIzTEMzWEw2UlVRWmc2WUZv?=
 =?utf-8?B?eGF3UXNGWWwrRlZaS2JMY0ZFZC9VK0orNWNUTUF3bmpPOWtnWm0yQUlEWXhl?=
 =?utf-8?B?Q2diZjJhWXFkeXo5dEMvZEJ2ZEZ0MnNoSEd4cDFsNFIvb1k2RGZmOURYZGp5?=
 =?utf-8?B?ZE9SR0xxK3hNeGUzN2FqRGlEeWhmbStCa2gyR3RKc2hjMVplZkV4ZWR4Q0Nt?=
 =?utf-8?B?cDRDOTVhMFgzWk0yWmk0VVh5TW9tVFZ4NnpMUmZtR2R3T0lnK2ZXdjMwQ2Rl?=
 =?utf-8?B?c3NKQlJicWx3eUxDb3J5cURZTEdicDZHOFBHTEtIR3JnNUR4VzRDMGphRG5v?=
 =?utf-8?B?TFR0VC9SS1l4SVVtdE9iS0U5Q3dOR094akFMU2hlZjVaRVVmTXl2bWdhZXF3?=
 =?utf-8?B?VlVMaDRSa1YyekY5bE12SURwTDFMenZUN24xRmxWQk11aE4xa29xOGxCcE5Q?=
 =?utf-8?B?Wk1OdW40OHZnVXJkaW9XL29CUEFTNmdSbEplNzVLVzQ4ZVJoUDZQbmNMR3dD?=
 =?utf-8?B?ZDRJbkV1TWU1SXQybFAyWXhwRzJraVNzR1VZQ01lK1lOdmJpTUt6M1J6MkE1?=
 =?utf-8?B?SkltR1hDNHhyK21vNmdHQWFLMU1WV1NzTGYxa1IrT3plellHZm9OdU5GWVVK?=
 =?utf-8?B?bXVwMjVuSmV0RVNnMU5qRjhWNXNIcUI5bnFFQ2poQm9PM1dpZ0NOR3dNOWdn?=
 =?utf-8?B?K0RxM1BtOHYyS3lmUTd4d2lKVzREMzljUjBqTWZQMFJWbWNEUkNXR25jTHFh?=
 =?utf-8?B?dnBpSVdGZ3hYN2pGTTFuTlBlREc4Nng5aE4rTmg5bHdLNEFXSUNwM2pPbmNO?=
 =?utf-8?Q?vDL0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWZPaGJxcHZCWGhINTNuKzhQL1RJSmhYSzVEaVNOSDBQRDgyZUZKNkFaNi90?=
 =?utf-8?B?NEowaHdxMkkyME02NENpMGNZTHpRK2R6RnhacS9pMWxGMFUvWkROSkJMemZ3?=
 =?utf-8?B?WEhWVTI3dEJ0ODQ0VGtjV0VJVnd1SElFWmFvWGRqZzdhYWdDS3NweS9Hb0Jm?=
 =?utf-8?B?RjhRcXBOMXphcWNFZmxRRkpvUmhiQkRGQlovWGhTSjY5eit5ZTJzUE5qd2U4?=
 =?utf-8?B?L2xwRGFyaGdnV0plcDM4OVNtelpXYURITUdLRnBvckNsT3JKUDlhL1p1RVJL?=
 =?utf-8?B?ZkZRdnhPZHZwc3NJVzNWMWFkejFVNkI3YkNFU3lscDFFcDIwRVZ3SS9EYmMy?=
 =?utf-8?B?N1h4cnRtUjhuQjRyQnJNVE52dlVKL3I0VUNzOU8vYXFyWVV6ZDdPamszbHNt?=
 =?utf-8?B?ZDkyVlN6VE9DZGxJZ084bmV1MjRXWHR4b3NQQ3VZcUVGMGJ5T2lYdk0xVGhp?=
 =?utf-8?B?T3d3UTcxZnNLNXh1M2Z1bitEM3BJbFpuV3pNbXg3NEwxR2w4bTV6WlluV0ky?=
 =?utf-8?B?WmVDRDRJaSt0b1A3eXFxdWdLd2dNcWVoWmQxdGlic0c1eHpvOXdjcEUybEMy?=
 =?utf-8?B?SGJxZmdCM29rV0J0RWtPbENSQWtVWng0YnZiNFo1T0xyL3lzcWNFcFFwVFFY?=
 =?utf-8?B?VGJ1b0RHTDlrV29xalY0NXVWdi9kMlh3TGh5ZHBtejUxVTRpdWoxTS8xSVA0?=
 =?utf-8?B?SVFZei90azY0VktjOVBwU0pvT0VYd1hzazdhcCtmRnJSV2d5MGdSUlNFZ0l2?=
 =?utf-8?B?REZBZEt0UU9zODZQZXM2WlQzZ1luNzl6Z3FDRmVyU0hoS2FoTDBSQXpURm45?=
 =?utf-8?B?aU5URllJSlZlTDBQUllwQWdBY2RKWXF1WlhVY1phdk11dE9Sby9qSlJVM0My?=
 =?utf-8?B?WTJocllHeVlqZ0JxUHE0dndETEFMZ1pZQzl0V05pLzN2VG5wazh6Um1kU3lL?=
 =?utf-8?B?dlJSMjhpU0tBWlhFT0oxVHVLazVXcWNTZzFHM053WXFUeXFTYzczbXJIMDYv?=
 =?utf-8?B?VE9NblVTejlzMmIybjdNdVh5OTBHc3ZjczRlZW1RWVJBc3ErWlhnek5ham1C?=
 =?utf-8?B?MTBtczdZUHRWdE1waXYzS21VS3NhTytjYnU3S2hzcEhKVDZRVFN1MlhlNC9X?=
 =?utf-8?B?TUkrZU5jZkYzS1JKZThwVDVpT25EU2g3b09pbTdCZ25HeGJIYjY2eVBubkNE?=
 =?utf-8?B?Sm5xVk9YWFF2akdKSXJHbXBpK3NxbjRnYllBSkkySzJ0dlZXdDRWbGN1Q1BW?=
 =?utf-8?B?eEtyZHZVdTdVWEhTaXVDand5SjdMbTVUU0ZKZUdSSDlyQ2JGS0I5WXdlOURU?=
 =?utf-8?B?Qk1nS295UkJRMXNKOEFBT0VZZ0ZrLzNxRGlIb3hIdVhSVlErMmNlQ2hMeGVI?=
 =?utf-8?B?NlRRZkd3NkVuSDhuWHd1bE5qTXBxbldlNjJSM1lJVk5PN2FRNVFxL2Rhbzlo?=
 =?utf-8?B?T045bXQ1TjBhdjg0ZFVWMUloN0U4Zk9YR0ljTGJ6V1lrdmw3dGFGOEU3YTlD?=
 =?utf-8?B?ZjJXdUdmVnF0L3RDeG9kSk5qRVF1dXlncnZ4NlIwbFRCYmpqaGxjZEFPY3BM?=
 =?utf-8?B?WVFmQmZ5b0N5Sjl4WUpjb0FTaXJnWXhnbVhwY1h2MVJDOG5LYzdNVFpVN3Bo?=
 =?utf-8?B?M21jMnkwOUk4T3hqbVBiWlluZjEzK3BnNmVQT0xtdnJTUDBuQkRVbHdEQklS?=
 =?utf-8?B?Q2pGZm9vK01VTVlNV3lZY3VwMjBoNTc1OGVKb1FLR0V5aTVMbENZbHZWbFNR?=
 =?utf-8?B?dGVGV041YWIxMWlaa3JTZllkak1BcEU4RlA3ZW1RbElTRnNYQ0pTNTFwNTJ2?=
 =?utf-8?B?c2prUTF2RE1zNGh3Tld2c1BaWjNZaSs0ZkVuZ3pGR1RJMFhwNlEzZlBHWGZU?=
 =?utf-8?B?R2VwLzVFcGxpdHh4VVkrbjBYU0ZmTVV1akZNaEJNQ1ZJQ0JiMVBCdmExNE1q?=
 =?utf-8?B?WkplY01mMCsvNjZ4UUMxTlNkWFoyUURHMGlXR2dZTGNhL3hXYytlRW9nb0lZ?=
 =?utf-8?B?bWVYTUk2WmJpNHQvZ0R5elZ0VURPQUxjK3hIczF1OGVESXVVa085aG01WUkr?=
 =?utf-8?B?VHptYzVYQnc1MDRMblRpNy9VUmJnMVFrVGpwOWRZUGh5a3FhUENjSEhFMkFR?=
 =?utf-8?B?a1BjNys3MkxXd1FKeFJQdGErN3YySnQ0SnRqQUxMcXJjVlNuSkRIWU5iR0NM?=
 =?utf-8?B?Q2s0alYra3FiZUFiYTZQWEpWaGtOR21Rd2hlRGxESkZibFM0eTF3Y3VSWjNQ?=
 =?utf-8?B?MnhPZ2NzQTVUSnFYOWN3RFhlUXNzWTZFTXJaUjEzVXk4dnpGT0orcldmbDMv?=
 =?utf-8?B?YWxUMEJCNmEwWmNRZ3M2RHpDTlhSZlY1UmNKdW5hclJUZ04zeUs0dz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9be0368-f01b-44f4-cfbb-08de637e936d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 23:47:22.8071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wuDxiRZducut2H0JZVcYg6UbyqXxdWSdfSE1YsTJ2iXhgdHPABJjnyTIPU7h47fSz78j9PNHGACRYmJXk+LLiNKhqmsF93S7DfQEsHjyWMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE99BD3AEE
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770162450; x=1801698450;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SZrtuiihcek4S6wYZOcoznb714mLfD/k+QCICfUs104=;
 b=T4Ve6vvZtAQHoDKRqpV9VAtIfGX0cHZSztDxx1NiZabaCPzOxD/BKfGu
 VDBRBxOGIJ55gFwNJCNdlLb0ZkUIZgsdWU4LEqwiq9dMl5cWR+qZgQvrC
 GcTfswn96WtYrqxRw2/z5dKD5DuW0TEe+8hFOEJRKeKZypwGhvKYzBAp8
 yFY1a7Hda9W+BUwC2bkF3/C3xzmjkFEMtbt3YZS8CC14+g6L7b2IQ4Boq
 CG0FIpQla6LVJI7LmlHUhgjViwFvdsvg94RdOj9+Yxjr5624tp632tUFV
 31drKZKg+7GK86WT1nwI8U52zzhexae5aRT+Bx5LSehqMsCA+YuWRWI/g
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T4Ve6vvZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:przemyslaw.kitszel@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: 3E885DFD67
X-Rspamd-Action: no action



On 2/3/2026 3:32 AM, Petr Oros wrote:
> 
> On 2/3/26 11:19, Przemek Kitszel wrote:
>> On 2/3/26 09:44, Petr Oros wrote:
>>>
>>> On 2/3/26 02:00, Jacob Keller wrote:
>>>>
>>>>
>>>> On 2/2/2026 3:58 PM, Jakub Kicinski wrote:
>>>>> On Mon,  2 Feb 2026 09:48:20 +0100 Petr Oros wrote:
>>>>>> +    netdev_unlock(netdev);
>>>>>> +    ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
>>>>>> + !iavf_is_reset_in_progress(adapter),
>>>>>> +                           msecs_to_jiffies(5000));
>>>>>> +    netdev_lock(netdev);
>>>>>
>>>>> Dropping locks taken by the core around the driver callback
>>>>> is obviously unacceptable. SMH.
>>>>
>>>> Right. It seems like the correct fix is to either a) have reset take 
>>>> and hold the netdev lock (now that its distinct from the global RTNL 
>>>> lock) or b) refactor reset so that it can defer any of the netdev 
>>>> related stuff somehow.
>>>>
>>> I modeled this after the existing pattern in iavf_close() (ndo_stop), 
>>> which also temporarily releases the netdev instance lock taken by the 
>>> core to wait for an async operation to complete:
>>
>> First of all, thank you for working on that, I was hit by the very same
>> problem (no series yet), but my local fix is the same as of now.
>>
>> I don't see an easy fix (w/o substantial driver refactor).
>>
>>>
>>> static int iavf_close(struct net_device *netdev)
>>> {
>>>          netdev_assert_locked(netdev);
>>>          ...
>>>          iavf_down(adapter);
>>>          iavf_change_state(adapter, __IAVF_DOWN_PENDING);
>>>          iavf_free_traffic_irqs(adapter);
>>>
>>>          netdev_unlock(netdev);
>>>
>>>          status = wait_event_timeout(adapter->down_waitqueue,
>>>                                      adapter->state == __IAVF_DOWN,
>>>                                      msecs_to_jiffies(500));
>>>          if (!status)
>>>                  netdev_warn(netdev, "Device resources not yet 
>>> released\n");
>>>          netdev_lock(netdev);
>>>          ...
>>> }
>>>
>>> This was introduced by commit 120f28a6f314fe ("iavf: get rid of the 
>>> crit lock"), and ndo_stop is called with netdev instance lock held by 
>>> the core just like ndo_change_mtu is. 
>>
>> technically it was introduced by commmit afc664987ab3 ("eth: iavf:
>> extend the netdev_lock usage")
>>
>>> Could you clarify why the unlock-wait- lock pattern is acceptable in 
>>> ndo_stop but not here?
>>>

It may simply be that no one spotted it in ndo_stop.

>>
>> perhaps just closing netdev is a special kind of operation
>>
>> Other thing is that the lock was added to allow further NAPI
>> development, and one silly driver should not stop that effort.
>> Sadly, we have not managed to re-design the driver yet. I would like to
>> do so personally, but have much work accumulated/pending to free my time
>>
> I agree, the unlock-wait-lock pattern is fundamentally flawed (I now 
> understand
> why it is unacceptable) and should be avoided.
> > What can we do now?
> 
> * Eliminating the wait is not an option: As noted in the description of 
> commit
> c2ed2403f12c, this wait was originally added to fix a race condition where
> adding an interface to bonding failed because the device remained in
> __RESETTING state after the callback returned.
> * Passing the lock into reset is impractical: The reset path is 
> triggered from
> numerous contexts, many of which are not under the netdev_lock, making this
> even more complex than a full refactor.
Hm. I was thinking we could just hold the netdev lock for the reset, 
but... we already take the netdev lock there as of commit ef490bbb2267 
("iavf: Add net_shaper_ops support").

That's actually what causes the deadlock: prior to that change reset 
didn't hold the netdev lock for the duration. This is what gets us 
stuck. We are waiting for reset to finish while holding the lock that 
blocks the reset.

But I am not really sure how to fix this: We want change MTU to only 
return once reset is complete.. but reset is dependent on the very lock 
that we're holding. And there's no way to communicate this fact to the 
reset handler...


> 
> If dropping the lock is a no-go, the only viable path forward is to 
> split the
> reset_task so that the waiting portion is decoupled from the netdev_lock
> critical section.
> 
We used to do this back before the netdev shaper ops. We didn't acquire 
either netdev lock or RTNL during reset.

I thought we had some code in the past that would handle netdev stuff 
outside of reset.. but I don't really know and git blame is not making 
it easy to find this information.

Perhaps we don't actually need to hold the netdev lock over the reset 
task.. except Przemek's refactor to remove the critical lock now makes 
us fully dependent on the netdev lock in this case for reset :(

> The fact remains that MTU configuration and ring parameter changes are
> currently broken in iavf. Changing the MTU on a Virtual Function is a
> fundamental configuration not an obscure edge case that can remain non- 
> functional.
> 

Agreed. This needs a resolution. It is just very tricky to figure out 
what the solution should be.

We need to hold the netdev lock during reset, and we need to have our 
handlers wait for reset to complete in order to be certain their task is 
done... but reset is a separate thread so we can't really communicate to 
it that we're holding the lock, and attempts to do that would be a huge 
problem.

We don't want to go back to the critical lock and all of its horrible 
problems either. The commit that removed it is here: 120f28a6f314 
("iavf: get rid of the crit lock")

> I would appreciate any further guidance on how you would prefer...
> 

I wish I had some better ideas..

Bad ideas I've thought about so far:

1) this patch with its drop lock and wait, which we discussed as 
problematic before. It creates a lot of issues since it means the 
operations are no longer atomic and we could potentially get stuck with 
some other operation in the event of another thread starting some core 
netdev task. No good.

2) not holding netdev_lock in reset, which is now a nogo since we 
removed the crit_lock, and apparently we held netdev_lock prior to that 
too anyways...

3) we could maybe do some sort of ref counting dance where we take some 
reference in threads that queue a reset, and the reset task would know 
if that reference was non-zero then another driver thread is holding 
netdev_lock so its safe to go into reset without locking... but this 
feels extremely ugly and error prone to me...

4) convert reset handling to a separate function that depends on the 
netdev_lock, and call that directly from within the threads that 
currently "wait for reset" while holding the netdev lock. Thus, we 
basically move this entire call chain into the thread already holding 
the lock, and call it from the context of the function like the MTU 
change, etc. This feels like its also a huge issue, and could 
potentially lead to some sort of issue where we need to still block the 
reset thread from going if we reset at the end of the netdev_lock thread..

I don't really like any of these solutions, even if (3) and (4) aren't 
fully ruled out as completely broken... they probably have all kinds of 
issues...
