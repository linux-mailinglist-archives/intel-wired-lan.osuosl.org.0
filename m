Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 285E996D0D0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 09:51:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6DDD405C4;
	Thu,  5 Sep 2024 07:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WiWFgfQkEQ5F; Thu,  5 Sep 2024 07:51:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF3E8405BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725522689;
	bh=lWTXuxAqLFoM4ZsaThbXUfAWg4N5ZB3M1DABe9yT41g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SPmat+CeN0PENAGf0JfyJqIKzzcfNmHU3JE2M9EPZ1fA0w79BteAcUWC85zLGr77j
	 b22i58PNViZOW5byggZiYAsDdeMOVPLo5jQvjda0BSKQErhn6rY/PNALhuYZNKtSDy
	 KujCW1BqOo5yUVVM9ELYL9LAgU/cIRSoFqcaXHO3BlxXk8sroh1NE3jcdZ7Hi8dLbr
	 Tpn6y7qIVdoQrhb08rlwvuWIDEUyOZ+FMpCbIKkaBE37ihxmEIMQ7Hap2YWiNGV2CS
	 CRXVaN8tsCnF16476JPKPMa7ft/vz4VeVPYq5bk9ATuHWp1/dXFD/sOFJM55AoMKyg
	 b092UCk1RsORA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF3E8405BF;
	Thu,  5 Sep 2024 07:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 970451BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 07:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90000405BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 07:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tBEFb9VnUNq3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 07:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DFEA8405BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFEA8405BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFEA8405BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 07:51:23 +0000 (UTC)
X-CSE-ConnectionGUID: lOuO1fT9RQeFk5TKM7XuRg==
X-CSE-MsgGUID: Dq1foyocTmiMiKUGkWF2VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24336649"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24336649"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 00:51:23 -0700
X-CSE-ConnectionGUID: sQMxdUdCQ+KdVUT9W4DChg==
X-CSE-MsgGUID: n+YvMaMvRmCJ98dlMHqS9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="96278523"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 00:51:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 00:51:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 00:51:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 00:51:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 00:51:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UsZw91ux2K90pWXFLL8xnzLjbao5Iuh0Uzj965ncdg63VWD3sJTDa3ksSLKKfj05F7T9YWxVHgPpnpPNlP21pVn7icj2plbLWyIGSniKlaVGFdRqbUkzP97FxenZMgfi+A04G5nDvugIkH9rhV7kyY8J0wtP2TKDT0qy1UzFVUQD17EPITZNc8Xwg53hyiD1wuuYn6X8wbNCpQHFQxq1hWEiI1tNwTysq3dBIq0ToL9bbQEZGPvPI2T765STrZe+do+QrQ4c3zyOp4L/lyuuDfKcYMzu2yh5wKkngFvd7As51FMvxvPRtuWaQFxmd4EUewShcVcwMEViBSB0IFDfJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lWTXuxAqLFoM4ZsaThbXUfAWg4N5ZB3M1DABe9yT41g=;
 b=AJXMz/MHF6Z3gNKYHtVYXi/dGebLIysvNYahGBd+yLIlSL73Eoay0jGjzVv5kn8rbIhZdh1es+zq5Y5heb/HZqXrdbYcbI64LgS5gxbFkYa4EOwzsZF9VfvlpJSYlJxijTif+5GL8CXHbcNGboCEewT1FQBEwMsiYsvXRIrh9770vPLQGh49dHFV0SZtejWvSqFSTV7ZzTjs/dtV8M5mngW3fvTo1Say0lbapX4+o0K3KaXsOZeDLLLtVQXRbMKmTYmARGY3fOl2EfcTgdUdsOvuCWEYWj9LqysvpRZq0bO223DKxfJyw8b0LNCr/DPmfXUn+CBJnWkjkv62hUozQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB8549.namprd11.prod.outlook.com (2603:10b6:510:308::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 07:51:15 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 07:51:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kamal Heib <kheib@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
Thread-Index: AQHa/i7RxdH0urwtMk+HoNwXIeffrbJG6iMAgAEzvvCAADIdgIAAe/Og
Date: Thu, 5 Sep 2024 07:51:15 +0000
Message-ID: <SJ0PR11MB5866A1A4AF2FC7216B372E14E59D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240903182555.1253466-1-kheib@redhat.com>
 <CAGYh1E_tbTY5U1Uwpszw7KeUTaKXV0+Lw4AUgBFdsTbx=Gb73A@mail.gmail.com>
 <SJ0PR11MB586692C95212C29D929C0DA5E59C2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <Ztjz4ZZIP8v6iKF1@fedora-x1>
In-Reply-To: <Ztjz4ZZIP8v6iKF1@fedora-x1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB8549:EE_
x-ms-office365-filtering-correlation-id: 678fb4ae-f812-4a69-2814-08dccd7f8502
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MVYvcXg0NzIrcFl5V2tJK1hHT0dkUjA2SmgxYnJmS2JGWit5d0tESE96aGl0?=
 =?utf-8?B?SDNOc3pqZzR3SVI1RmxYZUkrYU84SytTOHJGUWd5ZnJuMW5aKy9NZlpBVzk1?=
 =?utf-8?B?d21LMzltV3ZNT0RCRTNNTmdieEk4VEJQcDlEVjRBL09udjZKYnFWNlBWRlhm?=
 =?utf-8?B?T2txWmwrVmZid1l2eXRFT2pTejRqRXc2aUxjK1pCd3JkcFFPOHI2aUYxVUtH?=
 =?utf-8?B?eHM0bElMaG9KZ1pyMTJxYXROc3Vwb0p0L01rd3AwVHdLTCsyMHorMGNYZ2ZU?=
 =?utf-8?B?ejVtbjh5S0RIQWoxcFFTT3dKSDd0SUd6cWRROU1qVlgwRXZ3aFV5VzZKdzEv?=
 =?utf-8?B?WFYwcHUrY3pQdm5JcXdqTEl4ZW5YUlo5dTQyaDVGNkNJSTVXSlNpODJPZDQ2?=
 =?utf-8?B?TGptZ1JLMHE0VmFBaDZpQk5SQjFxVlA4YjdHa3lmODhNeUdBQjZwd2xlMnV4?=
 =?utf-8?B?ZzJVVHlqVTFjRmF1TTgzcEhwbmtDbnBZd1c4dFI0NVdrSjBxZFc5cUthRUkx?=
 =?utf-8?B?eVdsamhEUnUxYUV0Y2EzZngxeFBQdm82QXBPU0pJemhXamJLRmdTUjc4TkNO?=
 =?utf-8?B?dTdtRDZ1aEFKT0wvMy9PMVBBZW51cTd4TjNXWExBR0tTNm9vVFovZ3JGdmYv?=
 =?utf-8?B?OXdFdzU3SDBvTUNmYStacTR1clJqMEwrM1d0VEtZbGNsamZiK0VWQ1paWVZa?=
 =?utf-8?B?OXB3VGFrTTU5aldwcVRPVDhaNkZwNGprVGtJWHdzSGZ1TndRZlo5bGZHSElT?=
 =?utf-8?B?R2E3NkkwS2hkMVRuTXVNeUJ5ZlJxT00zSlRSVmd2N3lvaU01azB3eU9SOUxF?=
 =?utf-8?B?eEE2QXdlTTQyczl5OHU1ekhTWHNaY3VjRk9sbmpBY2MwN1grcEpXVDhxaUFW?=
 =?utf-8?B?and0THpZeGdCcmY1em1nTWdBak4wS09Jclp2QmdWTXBaMU5ON0NJWFpGSlRV?=
 =?utf-8?B?bFowenovWTVIdjhndXJ1NWhQbUZkNFdENWJFUGxtdVJjTGtENnVndG92NmZy?=
 =?utf-8?B?ZU9XZklJVnNxaTdwdy84c3dwZmgrWUx5cmpjV21VZ1BRdk4vK0xFc01ibU80?=
 =?utf-8?B?VmRJVjRNOXJ4NmozTzZWTjh0bmxkalFkTGgrSENMOVpHcUlLZDRBWnNMQjR6?=
 =?utf-8?B?NmRkdW43UGh4VU1LQWZQMWY2T21XalMybkpxYklmN2VHQU5NMVNXcmo5WFIw?=
 =?utf-8?B?UGVWMVNPaElEMWFkOGxseWlZL3UrcGJUSThBYjNmbkFRRnR3YzFva2MzeXFJ?=
 =?utf-8?B?aFE3cm45OXljZDRjc1FhZks2NGMvRGwwK1hlYmN1QndWSjBJN3QreWt1dVRO?=
 =?utf-8?B?VWJLY0FGUFNWdnlRcjkyL2oyQXB1dDlLLzhWSkQwSVBFZDhhMXFGZXp2Sm5O?=
 =?utf-8?B?Q20yZzRuaFBKV1VzY1VJT0trQW9Reno2Uy9iUGlSdiswSUpmMERPVjE0MHpj?=
 =?utf-8?B?bC95TC9tRS8zOUhwUExJNWxsSkd4TENwYmQ1ejFYOVcwZFdqd043cFdTK0Qw?=
 =?utf-8?B?NENGcXpxTWNObTJrVzcxT1N6cFdJWGU1SXF2aFVjOUtRUGl6QTZqVjVyWE9x?=
 =?utf-8?B?NmdvdjQ2RGdaLzJ6RlR3ajBwaUFKb2Zpbk9iTmdZNXh2RzRUVVlsamdjVjY4?=
 =?utf-8?B?dk4yV0NrWWR0alJYS3I5Uk9Ec3I1VGV3RUVuM09VWmtGV2xMK2hQVFBCK3Bs?=
 =?utf-8?B?K2pISGpuMFBKS1BOYmlPaFgrcWNJbFJ3R1d4U0dDUWd5WTRiRjBQazFkVGt6?=
 =?utf-8?B?amVucWc3d0I4Qjg3WTBQMmcxSktYUkltN1dOS2ZIcWpvZzF2akUrMm90cTZ6?=
 =?utf-8?B?ZzRLV0s1T29aTWpFTlFoaGdhZzZhcnM5MC9jcTdYKzg3RE1ObWdxTDZqcFhU?=
 =?utf-8?B?R0hhWE5ZQ0tFYUVPNGlZYStXQ0FvT2lqQjRhdXcyQmRPZlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmFvN25BamVOQVMrVlg2UVdLMHVESW85dUtsN1cwNXFUWi9FYldlRGxkK21X?=
 =?utf-8?B?ZzZGejVlMXpZVXhyVzJFeUhaamxNWk1vYzdtbzUrZUN3N1FkdFdwK2tWSlhr?=
 =?utf-8?B?anVPUVI3dkUzMGNXZFY5a29FWE5ZRUVKZ0Q2eVk2Wk5PdEUwVEZ2WEVnQ3JX?=
 =?utf-8?B?TkY4RG1pdGxQb2dLcDM1QkJtdzVGNTlkQ1h1VVF5TGUxOGQxaTA3UGljZDEr?=
 =?utf-8?B?eEdPakNDVXg3NE8vRVRQV0VoYnNSU0hxNzc3UUdBVjljQUpRZ28zNGVhZUU4?=
 =?utf-8?B?QkhJR2ZBckJSVVpsd1R0VU1rWTlVb01RbDRzWG93MVgzQTdWQXdoTkV2aitD?=
 =?utf-8?B?aWF5aFd4d2Eycjd6R3Y5YzNkWEFHUldmVHVncGxOZW1MdnMxSGdvTDhnUFpK?=
 =?utf-8?B?K1duVVorNUIvbmk1eGUrUnFNMGZwc2VqN2owQ0xoM0h5Z2JlRU1GeDdKKzYv?=
 =?utf-8?B?MWpUeFFCcHNObVRaVllsZ2lUYmxwak9RVzZieStOSVNITUZpWFNnQTg2Szd4?=
 =?utf-8?B?TXpXa1piQlYxS0dCdVNBWEY0RFJ2QkVHbFZVajB3VE1ycGNlWVVQRWxra3hF?=
 =?utf-8?B?N2Y5U2E5Rzg2aHdYVXRMVjlOQzFFMTYwTHowdG5FMU1ya1Y3MzdpZmpGWE54?=
 =?utf-8?B?TTg0ZGh6WlI0VmFyVG9HYnc3OG5nZXdsWVRZUVBaZVYxZFFCbTk1eXFRMndx?=
 =?utf-8?B?THQ5c1o3cElOMW1FOU00bEsrdXFCSE43cW9uQmZYNElIL014SDJEdkpRcWtk?=
 =?utf-8?B?YzE1SElKOTJDclIvTVRIakJLNVB5SkJxUklwSHJxUTRESGlOTHBxbWs3NGs5?=
 =?utf-8?B?bzFmVmpFZlFLSjJxRVEzVEswaXgrMUVaeDRWTnc2Wjc0SFh6RGNCRzhycDlE?=
 =?utf-8?B?ZTcyNlBKVEVWOEVJbWZoNnZKaWkvRjlkelg5MS9hTVp6aDBTTWhVa2hzbk5J?=
 =?utf-8?B?dTN2bys4VkVzanNFdXJRcFpqbXhYZzdJalFDa2YzcGRLOFh2d0d3SmxWTHBE?=
 =?utf-8?B?WWx5cjc0bUJrOW9DNDZ0VXZYajhTQ0NUazFvcWMvUVFESWc4alY5M3o3bWVr?=
 =?utf-8?B?eXpmMFdZMzFXek5IditPSi9tQnRWUCs1djRYQzZ3UzJ2Q1FYUjgxVkFOTXIz?=
 =?utf-8?B?aVViNFppSEl0NjFhUk1vTStqRm9iQVRRUW13Mmtmd3ZUM3NCQzk2K04yQ0VF?=
 =?utf-8?B?eEFKcWVZWVdTdGZxYXlocThFckxTMEc1UVlpbzBQSVpPYjRIOTcveExmSHFL?=
 =?utf-8?B?N21nWmhKT1dEZFY3TDkzRnBlTENoOWRmb0M1MnZBZ0Vpbm91ZW5XSC9meGhp?=
 =?utf-8?B?enpRVVZ3V1ZRck5naEo0NXRKRVZpeHRnTmxrbWY3a21tZnZMRHJNTXpPajRX?=
 =?utf-8?B?MFd4YjJURitSK1JVcExla21zTTd2UGJBanhFV1psUWZqYzU5RTAxV3BKYmYw?=
 =?utf-8?B?UUg5ZmpMREhqQ2lFZS9hZ2FmYUZJVUYwODQyYlRMSkVGTWNjSGVQR2VEY0h2?=
 =?utf-8?B?ZE1pQnBxVlJSZ3AyUnRaTjBldnRMeVlxdXlxSW1vV0VZNzhOMTZTV3VkaDdI?=
 =?utf-8?B?YU9ZbW1Va0VhN1YxMjF5RXhaZHk3L3lYcnYrWWpocFV3MjVrWFJPODR5T3dP?=
 =?utf-8?B?cjI1KzdTR0orOE9mb2FrKzZsbkt6aG9CMG1ia1dXdmJlSmE3OHJMS1c4MGNH?=
 =?utf-8?B?S2N3QmRaam9TaGtRMjdxOU1Ob0dQU1ZYS05BWlA5ZTZXc3pIQVQreHczTHls?=
 =?utf-8?B?cFUrOXF4L0t0RVVPYUU3bC9zUGhVUkJTaVBCT1NXOXBLbHBRVFQ0QmUycG1B?=
 =?utf-8?B?YmgzWFBvT2NROFlaQ1Q3WUVUWExydFBjSjBwRFh2dWM3NzEyZXFUc0MyZHpl?=
 =?utf-8?B?NzM2aWZhaXBQcTBtSTNRZWtuRDBVbzJmMFhoNjYvNWp5Z3h0VkVibGJ6Rm9q?=
 =?utf-8?B?elRZbm5oUUN0RzcveFY5b2kzWGRJWlZzYVBCZ3FIL05RRWlUTWNpUlBKWUFU?=
 =?utf-8?B?TVVSdnI5bGhwOWYzbnNKekdGb0VMdjNVUUZPa2QzazJ0UGFTcU1GWGxSMk1L?=
 =?utf-8?B?dHNHRUJ1ZHJVb2dJY2ZmVXZ2WDJ3aEdOZTJuYVl0ZEhhaHBVRFRCaldVakVi?=
 =?utf-8?B?K3B4SHRLSXpGOEtneGM1Y0x6THloNC9FTTF5R3NlUzJhTGErdWVmd1ZpMUJN?=
 =?utf-8?B?MEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 678fb4ae-f812-4a69-2814-08dccd7f8502
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2024 07:51:15.5350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RfSnJ576TxTAdPrz1l7Wwz83ByAKsUGv9+2gHWu0orGFfosMNL/ywa7IBXwsxR3p0yxEpkmQgPlF9TvBZyD1ZwObfehW7AnY7iMK/S7fOKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725522685; x=1757058685;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lWTXuxAqLFoM4ZsaThbXUfAWg4N5ZB3M1DABe9yT41g=;
 b=AgwJjcLXDe3qv549K7hZehrQjfz/2kRs2gx+Dx9Xgkd6koFHo44EYdBN
 xxd7gvMnXqHMRpuO93/f/jJhT8qvWw30vj6S22ZUpLK74zMIraVnKMkiu
 +P0OzYFklwXaDDEbjA8hhisuFrsldmMgjrpVg7mZ1kJSCzRqR71ndxgTP
 R5ovDGa37KkatT85KJw9eCCF1wiickNGWMm+lVoac5FoghqA61MLEch08
 69NcB3hpvZl9YBNNR6eZiZ0tO1zitw/8FOyvnITy2Q4sXWfqZXyJzeePf
 EZYts1D7YA8d0XYPbpq1bjxu/7CBnn3akZqcN9PsM4V1f2bO6oK3Ql6W5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AgwJjcLX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
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
Cc: ivecera <ivecera@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "David S
 . Miller" <davem@davemloft.net>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 YangHang Liu <yanghliu@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Chao Yang <chayang@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FtYWwgSGVpYiA8a2hl
aWJAcmVkaGF0LmNvbT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciA1LCAyMDI0IDE6NTcg
QU0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVs
LmNvbT4NCj4gQ2M6IFlhbmdIYW5nIExpdSA8eWFuZ2hsaXVAcmVkaGF0LmNvbT47IENoYW8gWWFu
Zw0KPiA8Y2hheWFuZ0ByZWRoYXQuY29tPjsgaXZlY2VyYSA8aXZlY2VyYUByZWRoYXQuY29tPjsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9y
Zz47IE5ndXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtp
dHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsNCj4gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPjsgRGF2aWQgUyAuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCj4gU3Vi
amVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpNDBlOiBGaXggdHJ5
aW5nIHRvDQo+IGZyZWUgYWxyZWFkeS1mcmVlZCBJUlENCj4gDQo+IE9uIFdlZCwgU2VwIDA0LCAy
MDI0IGF0IDA5OjAwOjMyUE0gKzAwMDAsIExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0KPiA+
DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRl
bC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uDQo+IEJl
aGFsZg0KPiA+ID4gT2YgWWFuZ0hhbmcgTGl1DQo+ID4gPiBTZW50OiBXZWRuZXNkYXksIFNlcHRl
bWJlciA0LCAyMDI0IDQ6MzcgQU0NCj4gPiA+IFRvOiBLYW1hbCBIZWliIDxraGVpYkByZWRoYXQu
Y29tPjsgQ2hhbyBZYW5nIDxjaGF5YW5nQHJlZGhhdC5jb20+DQo+ID4gPiBDYzogaXZlY2VyYSA8
aXZlY2VyYUByZWRoYXQuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgSmFrdWINCj4gPiA+
IEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA+ID4gPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA+ID4gPHBy
emVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3Ns
Lm9yZzsNCj4gPiA+IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IERhdmlkIFMgLiBN
aWxsZXINCj4gPiA+IDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KPiA+ID4gU3ViamVjdDogUmU6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpNDBlOiBGaXggdHJ5aW5nIHRvDQo+ID4g
PiBmcmVlIGFscmVhZHktZnJlZWQgSVJRDQo+ID4gPg0KPiA+ID4gVGhpcyBpc3N1ZSBjYW4gYmUg
cmVwcm9kdWNlZCBieSBob3QtdW5wbHVnZ2luZyB0aGUgSU5UeCBpNDBlIFBGLg0KPiA+ID4NCj4g
PiA+IFRoZSBDYWxsIFRyYWNlIHdpbGwgZGlzYXBwZWFyIGFmdGVyIHVzaW5nIEthbWFsJ3MgZml4
Lg0KPiA+ID4NCj4gPiA+IFRlc3RlZC1ieTogWWFuZ2hhbmcgTGl1PHlhbmdobGl1QHJlZGhhdC5j
b20+DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBPbiBXZWQsIFNlcCA0LCAyMDI0IGF0IDI6
MjbigK9BTSBLYW1hbCBIZWliIDxraGVpYkByZWRoYXQuY29tPiB3cm90ZToNCj4gPiA+ID4NCj4g
PiA+ID4gQXZvaWQgdGhlIGZvbGxvd2luZyB3YXJuaW5nIHdoZW4gdHJ5aW5nIHRvIGZyZWUgYW4g
YWxyZWFkeSBmcmVlZA0KPiA+ID4gSVJRLA0KPiA+ID4gPiBUaGUgaXNzdWUgaGFwcGVucyB3aGVu
IHRyeWluZyB0byBjYWxsIGk0MGVfcmVtb3ZlKCkgdHdpY2UgZnJvbQ0KPiB0d28NCj4gPiA+ID4g
ZGlmZmVyZW50IGNvbnRleHRzIHdoaWNoIHdpbGwgbGVhZCB0byBjYWxsaW5nDQo+IGk0MGVfdnNp
X2ZyZWVfaXJxKCkNCj4gPiA+ID4gdHdpY2UsIEZpeCB0aGUgaXNzdWUgYnkgdXNpbmcgYSBmbGFn
IHRvIG1hcmsgdGhhdCB0aGUgSVJRIGhhcw0KPiA+ID4gYWxyZWFkeSBiZWVuIGZyZWVkLg0KPiA+
ID4gPg0KPiA+ID4gPiBpNDBlIDAwMDA6MDc6MDAuMDogaTQwZV9wdHBfc3RvcDogcmVtb3ZlZCBQ
SEMgb24gZW5wN3MwDQo+ID4gPiA+IC0tLS0tLS0tLS0tLQ0KPiA+ID4gWw0KPiA+ID4gPiBjdXQg
aGVyZSBdLS0tLS0tLS0tLS0tIFRyeWluZyB0byBmcmVlIGFscmVhZHktZnJlZSBJUlEgMA0KPiA+
ID4gPiBXQVJOSU5HOiBDUFU6IDIgUElEOiAxMiBhdCBrZXJuZWwvaXJxL21hbmFnZS5jOjE4NjgN
Cj4gPiA+ID4gX19mcmVlX2lycSsweDFlMy8weDM1MCBNb2R1bGVzIGxpbmtlZCBpbjogbmZ0X2Zp
Yl9pbmV0DQo+ID4gPiA+IG5mdF9maWJfaXB2NA0KPiA+ID4gPiBuZnRfZmliX2lwdjYgbmZ0X2Zp
YiBuZnRfcmVqZWN0X2luZXQgbmZfcmVqZWN0X2lwdjQNCj4gbmZfcmVqZWN0X2lwdjYNCj4gPiA+
ID4gbmZ0X3JlamVjdCBuZnRfY3QgbmZ0X2NoYWluX25hdCBuZl9uYXQgbmZfY29ubnRyYWNrDQo+
IG5mX2RlZnJhZ19pcHY2DQo+ID4gPiA+IG5mX2RlZnJhZ19pcHY0IHJma2lsbCBpcF9zZXQgbmZf
dGFibGVzIG5mbmV0bGluayB2ZmF0IGZhdA0KPiA+ID4gPiBpbnRlbF9yYXBsX21zciBpbnRlbF9y
YXBsX2NvbW1vbiBrdm1fYW1kIGNjcCBpVENPX3dkdA0KPiA+ID4gPiBpVENPX3ZlbmRvcl9zdXBw
b3J0IGt2bSBpMmNfaTgwMSBwY3Nwa3IgaTQwZSBscGNfaWNoIHZpcnRpb19ncHUNCj4gPiA+ID4g
aTJjX3NtYnVzIHZpcnRpb19kbWFfYnVmIGRybV9zaG1lbV9oZWxwZXIgZHJtX2ttc19oZWxwZXIN
Cj4gPiA+ID4gdmlydGlvX2JhbGxvb24gam95ZGV2IGRybSBmdXNlIHhmcyBsaWJjcmMzMmMgYWhj
aQ0KPiBjcmN0MTBkaWZfcGNsbXVsDQo+ID4gPiA+IGxpYmFoY2kgY3JjMzJfcGNsbXVsIGNyYzMy
Y19pbnRlbCB2aXJ0aW9fbmV0IGxpYmF0YSB2aXJ0aW9fYmxrDQo+ID4gPiA+IGdoYXNoX2NsbXVs
bmlfaW50ZWwgbmV0X2ZhaWxvdmVyIHZpcnRpb19jb25zb2xlIGZhaWxvdmVyDQo+IHNlcmlvX3Jh
dw0KPiA+ID4gPiBkbV9taXJyb3IgZG1fcmVnaW9uX2hhc2ggZG1fbG9nIGRtX21vZA0KPiA+ID4g
PiBDUFU6IDIgUElEOiAxMiBDb21tOiBrd29ya2VyL3UxNjoxIEtkdW1wOiBsb2FkZWQgTm90IHRh
aW50ZWQNCj4gPiA+ID4gNS4xNC4wLTQ3OC5lbDkueDg2XzY0ICMxIEhhcmR3YXJlIG5hbWU6IFJl
ZCBIYXQgS1ZNL1JIRUwsIEJJT1MNCj4gPiA+ID4gZWRrMi0yMDI0MDUyNC0xLmVsOSAwNS8yNC8y
MDI0DQo+ID4gPiA+IFdvcmtxdWV1ZToga2FjcGlfaG90cGx1ZyBhY3BpX2hvdHBsdWdfd29ya19m
bg0KPiA+ID4gPiBSSVA6IDAwMTA6X19mcmVlX2lycSsweDFlMy8weDM1MA0KPiA+ID4gPiBDb2Rl
OiAwMCAwMCA0OCA4YiBiYiBhOCAwMSAwMCAwMCBlOCAwOSA3NCAwMiAwMCA0OSA4YiA3YyAyNCAz
MA0KPiBlOA0KPiA+ID4gPiA4ZiA3YyAxZCAwMCBlYiAzNSA4YiA3NCAyNCAwNCA0OCBjNyBjNyA1
MCBhMyA2MSA5MiBlOCBjZCA5OSBmNg0KPiBmZg0KPiA+ID4gPiA8MGY+DQo+ID4gPiAwYg0KPiA+
ID4gPiA0YyA4OSBmZSA0OCA4OSBlZiBlOCAzMCBhYSBiMyAwMCA0OCA4YiA0MyA0MCA0OCA4YiA0
MCA3OCA0OA0KPiA+ID4gPiBSU1A6IDAwMTg6ZmZmZmI5NzFjMDA3N2FjOCBFRkxBR1M6IDAwMDEw
MDg2DQo+ID4gPiA+IFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY4YjU5NDE5M2VlMDAg
UkNYOg0KPiAwMDAwMDAwMDAwMDAwMDI3DQo+ID4gPiA+IFJEWDogMDAwMDAwMDAwMDAwMDAyNyBS
U0k6IDAwMDAwMDAwZmZmZjdmZmYgUkRJOg0KPiBmZmZmOGI1OWJjZjIwOGM4DQo+ID4gPiA+IFJC
UDogZmZmZjhiNTk0MTkzZWVjNCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5Og0KPiBmZmZmYjk3
MWMwMDc3OTcwDQo+ID4gPiA+IFIxMDogZmZmZmI5NzFjMDA3Nzk2OCBSMTE6IGZmZmZmZmZmOTMx
ZTdjMjggUjEyOg0KPiBmZmZmOGI1OTQ0OTQ2MDAwDQo+ID4gPiA+IFIxMzogZmZmZjhiNTk0MTkz
ZWY4MCBSMTQ6IGZmZmY4YjU5NDQ5NDYwMDAgUjE1Og0KPiAwMDAwMDAwMDAwMDAwMjQ2DQo+ID4g
PiA+IEZTOiAgMDAwMDAwMDAwMDAwMDAwMCgwMDAwKSBHUzpmZmZmOGI1OWJjZjAwMDAwKDAwMDAp
DQo+ID4gPiA+IGtubEdTOjAwMDAwMDAwMDAwMDAwMDANCj4gPiA+ID4gQ1M6ICAwMDEwIERTOiAw
MDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPiA+ID4gPiBDUjI6IDAwMDA3ZjEx
ZWIwNjQwMDAgQ1IzOiAwMDAwMDAwMDBhZDQwMDA0IENSNDoNCj4gMDAwMDAwMDAwMDc3MGVmMA0K
PiA+ID4gPiBQS1JVOiA1NTU1NTU1NA0KPiA+ID4gPiBDYWxsIFRyYWNlOg0KPiA+ID4gPiAgPFRB
U0s+DQo+ID4gPiA+ICA/IHNyc29fYWxpYXNfcmV0dXJuX3RodW5rKzB4NS8weGZiZWY1DQo+ID4g
PiA+ICA/IHNob3dfdHJhY2VfbG9nX2x2bCsweDI2ZS8weDJkZg0KPiA+ID4gPiAgPyBzaG93X3Ry
YWNlX2xvZ19sdmwrMHgyNmUvMHgyZGYNCj4gPiA+ID4gID8gZnJlZV9pcnErMHgzMy8weDcwDQo+
ID4gPiA+ICA/IF9fZnJlZV9pcnErMHgxZTMvMHgzNTANCj4gPiA+ID4gID8gX193YXJuKzB4N2Uv
MHhkMA0KPiA+ID4gPiAgPyBfX2ZyZWVfaXJxKzB4MWUzLzB4MzUwDQo+ID4gPiA+ICA/IHJlcG9y
dF9idWcrMHgxMDAvMHgxNDANCj4gPiA+ID4gID8gc3Jzb19hbGlhc19yZXR1cm5fdGh1bmsrMHg1
LzB4ZmJlZjUNCj4gPiA+ID4gID8gaGFuZGxlX2J1ZysweDNjLzB4NzANCj4gPiA+ID4gID8gZXhj
X2ludmFsaWRfb3ArMHgxNC8weDcwDQo+ID4gPiA+ICA/IGFzbV9leGNfaW52YWxpZF9vcCsweDE2
LzB4MjANCj4gPiA+ID4gID8gX19mcmVlX2lycSsweDFlMy8weDM1MA0KPiA+ID4gPiAgPyBfX2Zy
ZWVfaXJxKzB4MWUzLzB4MzUwDQo+ID4gPiA+ICBmcmVlX2lycSsweDMzLzB4NzANCj4gPiA+ID4g
IGk0MGVfdnNpX2ZyZWVfaXJxKzB4MTllLzB4MjIwIFtpNDBlXQ0KPiA+ID4gPiAgaTQwZV92c2lf
Y2xvc2UrMHgyYi8weGMwIFtpNDBlXQ0KPiA+ID4gPiAgaTQwZV9jbG9zZSsweDExLzB4MjAgW2k0
MGVdDQo+ID4gPiA+ICBfX2Rldl9jbG9zZV9tYW55KzB4OWUvMHgxMTANCj4gPiA+ID4gIGRldl9j
bG9zZV9tYW55KzB4OGIvMHgxNDANCj4gPiA+ID4gID8gc3Jzb19hbGlhc19yZXR1cm5fdGh1bmsr
MHg1LzB4ZmJlZjUNCj4gPiA+ID4gID8gZnJlZV9wY3BwYWdlc19idWxrKzB4ZWUvMHgyOTANCj4g
PiA+ID4gIHVucmVnaXN0ZXJfbmV0ZGV2aWNlX21hbnlfbm90aWZ5KzB4MTYyLzB4NjkwDQo+ID4g
PiA+ICA/IHNyc29fYWxpYXNfcmV0dXJuX3RodW5rKzB4NS8weGZiZWY1DQo+ID4gPiA+ICA/IGZy
ZWVfdW5yZWZfcGFnZV9jb21taXQrMHgxOWEvMHgzMTANCj4gPiA+ID4gIHVucmVnaXN0ZXJfbmV0
ZGV2aWNlX3F1ZXVlKzB4ZDMvMHgxMTANCj4gPiA+ID4gIHVucmVnaXN0ZXJfbmV0ZGV2KzB4MTgv
MHgyMA0KPiA+ID4gPiAgaTQwZV92c2lfcmVsZWFzZSsweDg0LzB4MmUwIFtpNDBlXSAgPw0KPiA+
ID4gPiBzcnNvX2FsaWFzX3JldHVybl90aHVuaysweDUvMHhmYmVmNQ0KPiA+ID4gPiAgaTQwZV9y
ZW1vdmUrMHgxNWMvMHg0MzAgW2k0MGVdDQo+ID4gPiA+ICBwY2lfZGV2aWNlX3JlbW92ZSsweDNl
LzB4YjANCj4gPiA+ID4gIGRldmljZV9yZWxlYXNlX2RyaXZlcl9pbnRlcm5hbCsweDE5My8weDIw
MA0KPiA+ID4gPiAgcGNpX3N0b3BfYnVzX2RldmljZSsweDZjLzB4OTANCj4gPiA+ID4gIHBjaV9z
dG9wX2FuZF9yZW1vdmVfYnVzX2RldmljZSsweGUvMHgyMA0KPiA+ID4gPiAgZGlzYWJsZV9zbG90
KzB4NDkvMHg5MA0KPiA+ID4gPiAgYWNwaXBocF9kaXNhYmxlX2FuZF9lamVjdF9zbG90KzB4MTUv
MHg5MA0KPiA+ID4gPiAgaG90cGx1Z19ldmVudCsweGVhLzB4MjEwDQo+ID4gPiA+ICA/IF9fcGZ4
X2FjcGlwaHBfaG90cGx1Z19ub3RpZnkrMHgxMC8weDEwDQo+ID4gPiA+ICBhY3BpcGhwX2hvdHBs
dWdfbm90aWZ5KzB4MjIvMHg4MA0KPiA+ID4gPiAgPyBfX3BmeF9hY3BpcGhwX2hvdHBsdWdfbm90
aWZ5KzB4MTAvMHgxMA0KPiA+ID4gPiAgYWNwaV9kZXZpY2VfaG90cGx1ZysweGI4LzB4MjEwDQo+
ID4gPiA+ICBhY3BpX2hvdHBsdWdfd29ya19mbisweDFhLzB4MzANCj4gPiA+ID4gIHByb2Nlc3Nf
b25lX3dvcmsrMHgxOTcvMHgzODANCj4gPiA+ID4gIHdvcmtlcl90aHJlYWQrMHgyZmUvMHg0MTAN
Cj4gPiA+ID4gID8gX19wZnhfd29ya2VyX3RocmVhZCsweDEwLzB4MTANCj4gPiA+ID4gIGt0aHJl
YWQrMHhlMC8weDEwMA0KPiA+ID4gPiAgPyBfX3BmeF9rdGhyZWFkKzB4MTAvMHgxMA0KPiA+ID4g
PiAgcmV0X2Zyb21fZm9yaysweDJjLzB4NTANCj4gPiA+ID4gIDwvVEFTSz4NCj4gPiA+ID4gLS0t
WyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+ID4gPiA+DQo+ID4gPiA+IEZpeGVz
OiA0MWM0NDVmZjBmNDggKCJpNDBlOiBtYWluIGRyaXZlciBjb3JlIikNCj4gPiA+ID4gVGVzdGVk
LWJ5OiBZYW5nSGFuZyBMaXUgPHlhbmdobGl1QHJlZGhhdC5jb20+DQo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEthbWFsIEhlaWIgPGtoZWliQHJlZGhhdC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4g
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmggICAgICB8IDEgKw0KPiA+
ID4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDggKysr
KysrKysNCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+ID4gPiA+
DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGUuaA0KPiA+ID4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+
ID4gPiA+IGluZGV4IGQ1NDY1NjdlMDI4Ni4uOTEwNDE1MTE2OTk1IDEwMDY0NA0KPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiA+ID4gPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiA+ID4gPiBAQCAtODY1
LDYgKzg2NSw3IEBAIHN0cnVjdCBpNDBlX3ZzaSB7DQo+ID4gPiA+ICAgICAgICAgaW50IG51bV9x
X3ZlY3RvcnM7DQo+ID4gPiA+ICAgICAgICAgaW50IGJhc2VfdmVjdG9yOw0KPiA+ID4gPiAgICAg
ICAgIGJvb2wgaXJxc19yZWFkeTsNCj4gPiA+ID4gKyAgICAgICBib29sIGxlZ2FjeV9tc2lfaXJx
X3JlYWR5Ow0KPiA+IEknbSBhZ2FpbnN0IGFkZGluZyBhZGRpdGlvbmFsIGJvb2xpYW4gdmFyIHdo
aWNoIGNhbiBjYXVzZSByYWNlDQo+IGNvbmRpdGlvbnMuDQo+ID4gVXNlIEk0MEVfRkxBR19NU0lY
X0VOQSBvciBhdCBsZWFzdCBhZGQgYWRkaXRpb25hbCBiaXQgYW5kIHVzZQ0KPiBpbnRlcmxvY2sg
dGVzdF9hbmRfY2xlYW4vdGVzdF9hbmRfc2V0IGJpdCBmdW5jdGlvbnMgaW5zdGVhZC4NCj4gPg0K
PiANCj4gSGkgQWxla3NhbmRyLA0KPiANCj4gVGhhbmtzIGZvciB5b3VyIHJldmlldyENCj4gDQo+
IFRoaXMgcGF0Y2ggd2FzIGluc3BpcmVkIGJ5IHRoZSB1c2Ugb2YgImlycXNfcmVhZHkiIGJvb2xp
YW4gZmxhZyBpbiB0aGUNCj4gY2FzZSB0aGF0IEk0MEVfRkxBR19NU0lYX0VOQSBpcyBzZXQsIFBs
ZWFzZSB0YWtlIGEgbG9vayBhdCB0aGUNCj4gZm9sbG93aW5nIGNoYW5nZSBmcm9tIDIwMTQgZm9y
IG1vcmUgaW5mbzoNCj4gDQo+IDYzNzQxODQ2NzJjOCAoImk0MGU6IHJlbW92ZSBpcnFzIG9ubHkg
d2hlbiB0aGV5IGFyZSBzZXQgdXAiKQ0KPiANCj4gSSdsbCBjaGFuZ2UgdGhlIHBhdGNoIHRvIHVz
ZSB5b3VyIHN1Z2dzdGlvbiwgYnV0IHByb2JhYmx5IHRoZSB1c2Ugb2YNCj4gImlycXNfcmVhZHki
IG5lZWRzIHRvIGJlIGNoYW5nZWQgdG9vLg0KPiANCj4gVGhhbmtzLA0KPiBLYW1hbA0KDQpUaGFu
ayB5b3UgZm9yIHBvaW50aW5nIG1lIHRvIHNpbWlsYXIgZml4LCBub3cgSSBzZWUgbXkgbWlzdGFr
ZSAtIEk0MEVfRkxBR19NU0lYX0VOQSBpcyBwZiBsZXZlbCBmbGFnLg0KTm93IHdlIGhhdmUgYSBy
YWNlIGluIGk0MGVfdnNpX3JlbGVhc2UoKSB2IGk0MGVfY2xvc2UoKSBhbmQgcHJvYmFibHkgYSBi
ZXR0ZXIgc29sdXRpb24gdG8gdXNlIGludGVybG9ja2VkIGJpdHMgaW4gaTQwZV92c2kgc3RydWN0
Lg0KDQpCdXQgZm9yIG1lIGl0IGxvb2tzIGxpa2UgYSByYWNlIG9uIGhpZ2hlciBsZXZlbCAtICB2
c2kgc3RhdGVzLg0KSWYgaTQwZV9yZW1vdmUoKSBhbHJlYWR5IGNhbGxlZCBpNDBlX3ZzaV9jbG9z
ZSgpIHRoZW4gd2hlbiBpNDBlX2Nsb3NlKCkgY2FsbHMgaTQwZV92c2lfY2xvc2UoKSBzZWNvbmQg
dGltZSBpNDBlX3ZzaV9jbG9zZSgpIG11c3QganVzdCBiYWlsIG91dCB3aXRoIG5vdGhpbmcgdG8g
ZG8uIA0KRG8geW91IHNlZSBteSBwb2ludCwgaXQncyBub3QganVzdCBpbnRlcnJ1cHQgZnJlZWlu
ZyByYWNlLCBpdCdzIHZzaSBzdGF0ZSByYWNlLiBXZSBuZWVkIHRvIG1ha2UgaTQwZV92c2lfY2xv
c2UoKSBhbmQgaTQwZV92c2lfcmVsZWFzZSgpIGlkZW1wb3RlbnQuDQoNClByb3BlciBmaXggc2hv
dWxkIGJlIHNvbWV0aGluZyBsaWtlOg0KICBBZGQgdnNpX3N0YXRlIGludGVybG9ja2VkIGJpdC1z
ZXQgaW50byB2c2kgc3RydWN0Lg0KDQogIFJlcGxhY2UgZXZlcnl3aGVyZSBpbiBpNDBlIGNvZGUg
c2VxdWVuY2Ugb2YgdHdvIGNhbGxzOg0KCWk0MGVfdnNpX2Nsb3NlKHBmLT52c2lbaV0pOw0KCWk0
MGVfdnNpX3JlbGVhc2UocGYtPnZzaVtpXSk7DQogIFdpdGggc2luZ2xlIG9uZToNCglpNDBlX3Zz
aV9yZWxlYXNlKHBmLT52c2lbaV0pOw0KDQppNDBlX3ZzaV9yZWxlYXNlKCkgbXVzdCBpbnRlcmxv
Y2sgdnNpIHN0YXRlIHRvIHByZXZlbnQgcmUtZW50cmFuY2UgYW5kIGRvdWJsZSBjYWxscy4NCgkJ
CW11c3QgZmlyc3QgY2FsbCBpNDBlX3ZzaV9jbG9zZSgpDQoNCmk0MGVfdnNpX2Nsb3NlKCkgbXVz
dCBpbnRlcmxvY2sgdnNpIHN0YXRlIHRvIHByZXZlbnQgcmUtZW50cmFuY2UgYW5kIGRvdWJsZSBj
YWxscy4NCg0KRnJvbSBteSBwb2ludCBvZiB2aWV3IHRoaXMgaXMgbXVjaCBjbG9zZXIgdG8gdGhl
IHByb3BlciBmaXguDQpJbnRyb2R1Y2luZyBzaW1wbGUgcmFjZS1wcm9uZSBib29sIHZhcmlhYmxl
IGlzIGp1c3QgYWRkaW5nIG9uZSBtb3JlIHRpbWVib21iLg0KDQpXaXRoIHRoZSBiZXN0IHJlZ2Fy
ZHMNCkFsZXgNCj4gDQo+ID4NCj4gPiA+ID4NCj4gPiA+ID4gICAgICAgICB1MTYgc2VpZDsgICAg
ICAgICAgICAgICAvKiBIVyBpbmRleCBvZiB0aGlzIFZTSQ0KPiAoYWJzb2x1dGUNCj4gPiA+IGlu
ZGV4KSAqLw0KPiA+ID4gPiAgICAgICAgIHUxNiBpZDsgICAgICAgICAgICAgICAgIC8qIFZTSSBu
dW1iZXIgKi8NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMNCj4gPiA+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfbWFpbi5jDQo+ID4gPiA+IGluZGV4IGNiY2ZhZGE3YjM1Ny4uYjM5MDA0YTQyZGYy
IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfbWFpbi5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9tYWluLmMNCj4gPiA+ID4gQEAgLTQ2MzAsNiArNDYzMCw5IEBAIHN0YXRpYyBpbnQgaTQw
ZV92c2lfcmVxdWVzdF9pcnEoc3RydWN0DQo+ID4gPiBpNDBlX3ZzaSAqdnNpLCBjaGFyICpiYXNl
bmFtZSkNCj4gPiA+ID4gICAgICAgICBpZiAoZXJyKQ0KPiA+ID4gPiAgICAgICAgICAgICAgICAg
ZGV2X2luZm8oJnBmLT5wZGV2LT5kZXYsICJyZXF1ZXN0X2lycSBmYWlsZWQsDQo+ID4gPiA+IEVy
cm9yICVkXG4iLCBlcnIpOw0KPiA+ID4gPg0KPiA+ID4gPiArICAgICAgIGlmICghdGVzdF9iaXQo
STQwRV9GTEFHX01TSVhfRU5BLCBwZi0+ZmxhZ3MpICYmICFlcnIpDQo+ID4gPiA+ICsgICAgICAg
ICAgICAgICB2c2ktPmxlZ2FjeV9tc2lfaXJxX3JlYWR5ID0gdHJ1ZTsNCj4gPiA+ID4gKw0KPiA+
ID4gPiAgICAgICAgIHJldHVybiBlcnI7DQo+ID4gPiA+ICB9DQo+ID4gPiA+DQo+ID4gPiA+IEBA
IC01MDYxLDYgKzUwNjQsMTAgQEAgc3RhdGljIHZvaWQgaTQwZV92c2lfZnJlZV9pcnEoc3RydWN0
DQo+ID4gPiA+IGk0MGVfdnNpDQo+ID4gPiAqdnNpKQ0KPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICB9DQo+ID4gPiA+ICAgICAgICAgICAgICAgICB9DQo+ID4gPiA+ICAgICAgICAgfSBl
bHNlIHsNCj4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmICghdnNpLT5sZWdhY3lfbXNpX2lycV9y
ZWFkeSkNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ID4gPiAr
DQo+ID4gPiA+ICsgICAgICAgICAgICAgICB2c2ktPmxlZ2FjeV9tc2lfaXJxX3JlYWR5ID0gZmFs
c2U7DQo+ID4gPiA+ICAgICAgICAgICAgICAgICBmcmVlX2lycShwZi0+cGRldi0+aXJxLCBwZik7
DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgICAgICAgICB2YWwgPSByZDMyKGh3LCBJNDBFX1BG
SU5UX0xOS0xTVDApOyBAQCAtMTE1MTksNg0KPiA+ID4gPiArMTE1MjYsNyBAQCBzdGF0aWMgaW50
IGk0MGVfdnNpX21lbV9hbGxvYyhzdHJ1Y3QgaTQwZV9wZiAqcGYsDQo+IGVudW0NCj4gPiA+IGk0
MGVfdnNpX3R5cGUgdHlwZSkNCj4gPiA+ID4gICAgICAgICB2c2ktPndvcmtfbGltaXQgPSBJNDBF
X0RFRkFVTFRfSVJRX1dPUks7DQo+ID4gPiA+ICAgICAgICAgaGFzaF9pbml0KHZzaS0+bWFjX2Zp
bHRlcl9oYXNoKTsNCj4gPiA+ID4gICAgICAgICB2c2ktPmlycXNfcmVhZHkgPSBmYWxzZTsNCj4g
PiA+ID4gKyAgICAgICB2c2ktPmxlZ2FjeV9tc2lfaXJxX3JlYWR5ID0gZmFsc2U7DQo+ID4gPiA+
DQo+ID4gPiA+ICAgICAgICAgaWYgKHR5cGUgPT0gSTQwRV9WU0lfTUFJTikgew0KPiA+ID4gPiAg
ICAgICAgICAgICAgICAgdnNpLT5hZl94ZHBfemNfcXBzID0NCj4gPiA+ID4gYml0bWFwX3phbGxv
YyhwZi0+bnVtX2xhbl9xcHMsIEdGUF9LRVJORUwpOw0KPiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjQ2
LjANCj4gPiA+ID4NCj4gPg0KDQo=
