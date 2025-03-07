Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 279CAA56530
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 11:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DABF661059;
	Fri,  7 Mar 2025 10:26:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmNx9cfUlifo; Fri,  7 Mar 2025 10:26:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB97A60630
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741343214;
	bh=Mq1gyFQNbsmIyC25RM9d76XCAkgN5Qmyb8/MGTctH3Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qBIBU+uxBcU//t5wIqBHKTTKsPuUxQKWHSPst5eMNORORDuIew91mX5zEwjkEEOAe
	 bvIsL76M6avEvLhVUhmolLeXB+19kMXzhqlasnwX1PbJSuMJqGWKzkDGjkECH5qhhV
	 7WEcofGvTbQwK2snKCewNHqyDzLetN4IyzLwsRB/GUlp2zwfz1oMM8/CmN70cux3AO
	 mOu9WaQpCJPDN91jDGMPaR5FvNNTOWhdO7CrHdz0G3ePT4bofnCNPHFYLctSuCG2DQ
	 Vo1hXs51veN51ww3+MkGKxSGik/EbOl76v2DicBx3zTNXft7nlufl7GVt3dML7r0JX
	 BasI1W3SX0j2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB97A60630;
	Fri,  7 Mar 2025 10:26:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 56AA21C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A56E812AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VJTCKpJmUs6m for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 10:26:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sweta.kumari@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3476981297
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3476981297
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3476981297
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:26:50 +0000 (UTC)
X-CSE-ConnectionGUID: ffSYWDaEQxeGd4TYO+mJow==
X-CSE-MsgGUID: bydephI4R9WjuLOvuzNaYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="67761256"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="67761256"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:26:51 -0800
X-CSE-ConnectionGUID: 0jrzUS8BRqeJkRBFJ+LsXg==
X-CSE-MsgGUID: h2eJmhTyQsGxHGGSAZ6JMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="119289879"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2025 02:26:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Mar 2025 02:26:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Mar 2025 02:26:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 02:26:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avK8vUtWnAlm/i9QLHe8ID1VtkmCzstrink3qdphfr+yIaMxJB/o4i5LRLfdMI1I99SXHEGoG1m5llxlHqRj3KJVwuVH4Hcsxds/rQEImTK6JavkY5BaPvnpstan8cNCng0ig0ZYl45M1vo2jg1BZxvcwAK1N93LJjVfIlsKmAT8mpEmk1hyGCOwbGqS6iXJobS7Oo9RgbQbSQjyEano2KwoUaqY6xTr2j+4KGu2zDStqnZWUDNTS/a3DjrI9woIXFCNG5nVYZvafFOl1uZoT1nnxx/VxNGOgaWAHzsmNfzdTtTXYlY/R4oloINH8Wayvjse8Js2AeA/pTKR8wxUig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mq1gyFQNbsmIyC25RM9d76XCAkgN5Qmyb8/MGTctH3Q=;
 b=OCiVlCu3wb63JsVuZ0wK2IIPzhaDO2b+TWvtd+KsIyQR7JnFFyaUSdili6uZsj52s/pPqUqIzJz+zVPLaM76hirV0DOO67iZDgRtyGDq6j5TBD/zsB9VM27hy9tocSMmv0GulMTCc01G3uuHUrLmor1eZTplUtkI1j9rwEI9o8pt2YTqteK21DtEk11YqOl3pZ+3xFO8U8aBTJfTu/H/hZB/2Hh4rk6x0/tGLLpyt/J/hypVQinWP7s58wxulhMj4ALIqEEGDEps5Vn5L28bjX/nf3Z5SbnLNPyQD3akg5+f4/b7Sy7B/vprRjtFmz8xYhZavk9jNle7Pk85sLUzQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6232.namprd11.prod.outlook.com (2603:10b6:208:3c3::7)
 by PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Fri, 7 Mar
 2025 10:26:44 +0000
Received: from MN0PR11MB6232.namprd11.prod.outlook.com
 ([fe80::5aa7:eee9:a36b:a204]) by MN0PR11MB6232.namprd11.prod.outlook.com
 ([fe80::5aa7:eee9:a36b:a204%4]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 10:26:43 +0000
From: "Kumari, Sweta" <sweta.kumari@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Damato, Joe" <jdamato@fastly.com>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: Get rid of
 spurious interrupts
Thread-Index: AQHbgS+Ny3x0/PG7JEqyMODo3ou1ZrNnkMAQ
Date: Fri, 7 Mar 2025 10:26:43 +0000
Message-ID: <MN0PR11MB62320119BB9C1447B1DA46B29CD52@MN0PR11MB6232.namprd11.prod.outlook.com>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-4-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-4-4cb502049ac2@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6232:EE_|PH0PR11MB5782:EE_
x-ms-office365-filtering-correlation-id: 5953f490-de29-4ee8-ab99-08dd5d628ea7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|10070799003|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?a2JQTVQyd2U0czcrV3FSajBDSmg2RU9UWWxoUmtoaHlJdzhDMkFQUld6WGFB?=
 =?utf-8?B?dkpFb2xBVGRVQnY5M3FYRmpMaUlpUXNscHdrTGJrbUFPREVDdkNvSXc5bWJO?=
 =?utf-8?B?dUhENGhNbEplenZkK0lqT1JsN1RzMVRFY0gxSm4zV09CMExIbTZvMjRmQlRK?=
 =?utf-8?B?bTNTWloyNXE2YVZ2TFpaSnBrU1RFL1VieXBQT0lydGZrTFdOb2NQQjdveTRp?=
 =?utf-8?B?K2FBQndLdDY0VzdGOFZETXF3ZmdyK3BPV2pjN0tZZjcxNU9sd1VsNHpWTjBR?=
 =?utf-8?B?WjFSME9UeHRReXVlSXZheHVlZ2JOZjUrdUd2UHlxbUM0b29KZlV5WCtscU5S?=
 =?utf-8?B?NkFOdkw2MHZjbGQzVWdwdWNPVmdEUGZielRpclU4TnUwMnI5bkFVd0NSTEU4?=
 =?utf-8?B?K3AycXBKSEVCdVdsSmVtczF4a2pQRVBQMVlNeG8zM1VML2cvVzJOYXBmZ2tC?=
 =?utf-8?B?SE1KNDhtNVAya2M3ZmhxOUJWUiswOGxWNnhhcS9TMzZ6QmU0RFV0WXUxSHo0?=
 =?utf-8?B?dFpITWEwRUM3eFpRVk9Lc3M4NXNwVk5OVTlpdlc5bnQ1VHErN04rOSt4L2ZV?=
 =?utf-8?B?cUVhSDBqNHJZSGY2cjVXTW5ONnp6NVk2eStiOXdJN2syYmg2dGNRbkFmNUJZ?=
 =?utf-8?B?NEE5MTFUa3pTMUsvU2dNcldJWDVGUmh1MWU2U2tESzVOcEJUcEZZTGkraFpH?=
 =?utf-8?B?TVhmUThocTVhTjV6a0s3SUV5UkRqWnZrcjJRN1p5aFd0ajVYN3gxb1EveWc1?=
 =?utf-8?B?aDBiWDdzYUpjdVErSzR2MXM3b2ozZEVrQ3hBSzdjaHB6RHVsWWxPZUVvRjc5?=
 =?utf-8?B?ekRZbDFzalZ2MzhzaEVxelllWXA5VkRhUFlDRENibVRWT3dMTVpUMDZ2RHE0?=
 =?utf-8?B?RHFyVmhoQi9obHhxZVYybDNZeXN4bnBzQzRBdFpZRDRyck12eGxQdkRJYit5?=
 =?utf-8?B?MXo4Rm5RT25VQjdKNFl2ZkxoWGM2V29RamhwRzJOODlkeG9FZkdUN0pZdmxX?=
 =?utf-8?B?VGl0elRvemk4S255ZUU3MUFkbnhGdm5LUjZKcGcxZ0Z0WEpKQjVlRjZrMjdo?=
 =?utf-8?B?K2RkcWZBUUZaWDZVa05SQlJ0MUNmZUZ3U3VObk96NlY3QnNhTWUwVXU4QXNi?=
 =?utf-8?B?N2RTNzRvM25GeWZkWWNBOHZRa0VROFZRRVNSL2dGb25ya3JIZVo4RkZVMmNn?=
 =?utf-8?B?ME9XemtWbjJvaFA4eE0wSzRNU1hrNzQ2dG5sNklkdGdQVGtRQ1MyMG94amVT?=
 =?utf-8?B?RDVvVHZRMmFSOHo1RHBIT3ljRk4zVWZVazk2TVd2U1RYcUFzeXdtbmg2UzhV?=
 =?utf-8?B?M0tSbHp3ZDA1SEk0MFNHUVRCN255YzRORXVtVEVuVVRJQlUzb1dwaWttdTZx?=
 =?utf-8?B?UW93ckpNTmhFMlRJMmJmaThzWUp2K1VwYXludXprQVdMRER4STd4K0Q4UmRR?=
 =?utf-8?B?M0x2ekFBUDhudGQ1czR1RFpndFBHcU9Ib2xzMUFuS1ZacjFqU1BQMHJhL2k4?=
 =?utf-8?B?bW05aUtzeFphOUV5WGQ1TzRySDhCbllVa2NiNWF5QWlXdXdVMlkrSXczUGVu?=
 =?utf-8?B?ZkpZUlZwei9YN20xMW1yVXNXOVJIUFRwZ0swVnp6UCttYm9tM0JjYWN5MDlP?=
 =?utf-8?B?WVpYc0xZMFZ5WnB3RXdIWHhyeHRSRWY2RWgvbUwvM3FCTHV4ZVlkTFpNOWtT?=
 =?utf-8?B?QWkxSWs1WGdEY2xpUm1UYnlvdnpxSkFkai9DY1hTOW9uVjJtTWNaYVFPY04v?=
 =?utf-8?B?S3BQd2pPbHBtUWlGS0g2dmtWaE5ZMEprRTBlRVM1eFVLTEo0UnpyUFM1QjlE?=
 =?utf-8?B?M09VLy9CdGo5RHNSenBhUGpqNjMvY0NyVXhzdWNxQ2Y3K3BlU1YrZDJmTitw?=
 =?utf-8?Q?8ToMTFRKr2Llf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6232.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elY3RHA3NE5SYVdNQjFMYWR5SWFSWkRZZXpQV3gzeEFxTFpqQXFsbFQ5U05j?=
 =?utf-8?B?SUw5d2hIVjFyOVFFeUtLMThwQndtL3JWSFhvRjFUQ2NTcUx6aVFla3hlU0ts?=
 =?utf-8?B?enN0M1FKdk5BdDJTVjc4aHFQOENnWS9EeDdmQWxyOGNiZDZCdzJ6RlEyOHZI?=
 =?utf-8?B?QjVNWjVTeUJzdmF3MTRzUEVSOUE5OWY1SUhhRm54TmRPbHN3NDNUbmVYODFp?=
 =?utf-8?B?ZFFsMVFQbm1XdmFkS2dLNGpYQ05ld3dpMlF1cDRyM1hibXBlQ3I2UWJkbHJX?=
 =?utf-8?B?bDRDMitPYllwWVd6a09mejJBRVJxaHEwR01qbHkwRmZrRTdHekF0dGZwVEYv?=
 =?utf-8?B?ajBUdlBOU0RtZTI5b1FVbFIzSW80aUMrNFZpeHZDKytkMXBoRkNsdEhIZHJj?=
 =?utf-8?B?WXpVaHRqajhsVXRWaHNVeWlKSFJDbTRCQjJtbUpkZ0daZTR3Rk9ZQk11cnJy?=
 =?utf-8?B?Rnc0V2tVOWlOcGpELzYwUDhtaWs3UFBLaCt0REM5eDFLNjR0bElGL2d3aVBr?=
 =?utf-8?B?RGV6NGY5bk4yRXEwcW8zRTdiai9YU2tpVFBhQUkwQTlJUEJKcGdaTzBRNVRV?=
 =?utf-8?B?YnRCZVZwK2twRTJubS81OEh3dWpYeWJWa1ZuOGJYdlEwTzVNVHExQmlEZ0gr?=
 =?utf-8?B?YWw1QUtsMFNaODdrSFdjaEtEakkzbjZEWlBNaUpNWjU1ZnhDdXQzN0Y5ZnR3?=
 =?utf-8?B?SmhRUFRVR1lwKy9tN05MT2IyQVhIZFBrU09TbHU5MXRNMmx1c3MyK2xWbU1J?=
 =?utf-8?B?dFVibzNydXUxdXN1eU5XYVIyU0NraEdJUlZYSnQ0eW5sekQwMk1DZGxHLzlG?=
 =?utf-8?B?NW82OEJCbzNGNXVOYnZwd2YyaWgzT25VNlZjcm1BTy92eFB3OXRkT2MzM0hR?=
 =?utf-8?B?MTJGbjRMdjRnMDBjRFZqTHlsNU5weFVmTHg4WVlTdkgvdmY4RmJKd1lmSHpX?=
 =?utf-8?B?dmllM1NyOEJLRk5xaXgxMVVlZGZnUkgwS1Z5a254ZndPdGlIODN6OC80VnZ3?=
 =?utf-8?B?ZUtKTFdrdTd4NnpaSTUwRzBSWDBYSlBTNUZkUGdWNHhCT01OYmt4NmlNcTlj?=
 =?utf-8?B?YnpXWWxDOU5qc0tqa1NqYzdhS1pPUWt4VHdYSVBIaW9XRkdpSlM2K2xiZ3JJ?=
 =?utf-8?B?Sk9oem50RFByb0tzbjVTaEhwUXU5YXdEM29kL0VlSVlTb0FjcmJzdmxoZkJM?=
 =?utf-8?B?OWlCVzJsZHQwTVJuOVc1OGdsSHFaNUdPTGNzakpQSDY1NWloUWZiOENKOEhR?=
 =?utf-8?B?MUVSbW55SXFkTFR4ZDVZTEI3dklxcjlQdVA0N3hiUjFwTDJLWEl3dm9VRUdU?=
 =?utf-8?B?ODJOSjVUUlBXNE1xZi9RZzdOanlBMmpQSmNrd2pkaFQ2ODlWbHo0d0ZuTzgy?=
 =?utf-8?B?bWQrS29qeE9nMmdhaUlNUmZDazNVdm5ydEkrb0VDNXIra0FnNjI2YytXcVdQ?=
 =?utf-8?B?bmJzT0treGozeGtCQ01tNjRCc09ZRGV2V242N3pTUFM0WTk4ZUFaNVhzZ3Jt?=
 =?utf-8?B?a1FOblk5bWtIOVh5ZWN6MStGenMvWXE4MUwvQ3ZPWHMwWGQxNGNXb1MrdmJ6?=
 =?utf-8?B?eVN5YzBqMlpWNWVBVzJMR3Q2VXpmL3JiRnNubGNwRDNiejh3cFpkVUcwQUth?=
 =?utf-8?B?czQyOWpNbnl1MHlPOEFzbTcvTFRQZEF0aG1qMmM3a1lpR1NKL2FTVjdEOWpG?=
 =?utf-8?B?Q3pGMkdheFhPdVc0MEVldmxFazNYQS9ncEpmTFdXbyt6WFdoM21kT21xZ1Jw?=
 =?utf-8?B?dEpHNjJQMGVxRGczMzVNQkZiMjdVRUlSZ0FQdnRkbHdPWk84MUxRYzZKbml1?=
 =?utf-8?B?amsxbi9CU0VITWZmeW9yL1ZRdkZBL3YvYm9vMDdRZURjTnY1TytBMXgvS3dQ?=
 =?utf-8?B?Z2YzV3ovVHZLZmFCUS9QS2tyV2t5OUtqRjM3S3JzRHhFQ0pkVWlMNUlWbjhK?=
 =?utf-8?B?bTRoOUdBdFZnU2xvUW9OWXYyUW5walB4QnUrNStmZUUyNTlTWTI4Nms2QU1U?=
 =?utf-8?B?ZW5OcndyNTR1Z2xoMzlsREhtcFppV0NWdVBmaUJlTUMzUVI1c0NvU041NUVQ?=
 =?utf-8?B?d1hVUlVQMVBxbEVyMDl3OVM4dkI2clpLbk4wcHVBK1NkU2x6RTZtUWhEQ0hl?=
 =?utf-8?B?UXExcUZRMkhhaTJLWVRVaEd5UFk3R3IyL011NjFaNVlDeWRBT3lIRERTRnZS?=
 =?utf-8?Q?45xmBBoJiskKq6V3tPr9ROg+MHEYKMlcASct4CqtxcNq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6232.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5953f490-de29-4ee8-ab99-08dd5d628ea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 10:26:43.7573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aROgsjhvMs3H6jfDXrezKif+sJl2KvJGRn6WBuWRuRneEpTTZaevJUImcU2zGHzatCq89Ygvn5Gx75iEARxOCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5782
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741343211; x=1772879211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mq1gyFQNbsmIyC25RM9d76XCAkgN5Qmyb8/MGTctH3Q=;
 b=MwZj3K/zRa03Z8Op409N4Dr86xPOy2w5uGkNXIAzDvJDPgr1XeOWmn3R
 r/Zgq5FaXeLuDuVl4VnYeDCZF1DuAPAREFLORbd/hY8x6EixIAEexcuOw
 OnL66jkzKEXtNuWW4t2iNtu8O7dkxgxGCj42kPF5IOMGPFCwmOtPBas4v
 zayrhwcYSrvBSoB5U466k9fya1OsBy1ZyqBiRSQoL5+RNsEcU5JnR0GH4
 XxBEEHPUiW+1NcOgVGur9jOWQVysZ5tvfHWhVTwgh2HuyOkRYEhlVT5IE
 jT1WQq0Tk74AmhDM6/cn3DiwMYDRKiAKyp/M23FxVl96gElypiPIVWBVv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MwZj3K/z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: Get rid of
 spurious interrupts
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IE1vbmRheSwgRmVicnVhcnkgMTcsIDIwMjUgNTowMSBQTQ0K
PiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0
c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gQ2M6
IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXINCj4g
PGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+
OyBKYWt1Yg0KPiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVu
aUByZWRoYXQuY29tPjsgU2ViYXN0aWFuDQo+IEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51
dHJvbml4LmRlPjsgRGFtYXRvLCBKb2UNCj4gPGpkYW1hdG9AZmFzdGx5LmNvbT47IEdlcmhhcmQg
RW5nbGVkZXIgPGdlcmhhcmRAZW5nbGVkZXItDQo+IGVtYmVkZGVkLmNvbT47IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOw0KPiBLdXJ0IEth
bnplbmJhY2ggPGt1cnRAbGludXRyb25peC5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxh
bl0gW1BBVENIIGl3bC1uZXh0IHYyIDQvNF0gaWdiOiBHZXQgcmlkIG9mIHNwdXJpb3VzDQo+IGlu
dGVycnVwdHMNCj4gDQo+IFdoZW4gcnVubmluZyB0aGUgaWdjIHdpdGggWERQL1pDIGluIGJ1c3kg
cG9sbGluZyBtb2RlIHdpdGggZGVmZXJyYWwgb2YgaGFyZA0KPiBpbnRlcnJ1cHRzLCBpbnRlcnJ1
cHRzIHN0aWxsIGhhcHBlbiBmcm9tIHRpbWUgdG8gdGltZS4gVGhhdCBpcyBjYXVzZWQgYnkgdGhl
IGlnYg0KPiB0YXNrIHdhdGNoZG9nIHdoaWNoIHRyaWdnZXJzIFJ4IGludGVycnVwdHMgcGVyaW9k
aWNhbGx5Lg0KPiANCj4gVGhhdCBtZWNoYW5pc20gaGFzIGJlZW4gaW50cm9kdWNlZCB0byBvdmVy
Y29tZSBza2IvbWVtb3J5IGFsbG9jYXRpb24NCj4gZmFpbHVyZXMgWzFdLiBTbyB0aGUgUnggY2xl
YW4gZnVuY3Rpb25zIHN0b3AgcHJvY2Vzc2luZyB0aGUgUnggcmluZyBpbiBjYXNlIG9mDQo+IHN1
Y2ggZmFpbHVyZS4gVGhlIHRhc2sgd2F0Y2hkb2cgdHJpZ2dlcnMgUnggaW50ZXJydXB0cyBwZXJp
b2RpY2FsbHkgaW4gdGhlIGhvcGUNCj4gdGhhdCBtZW1vcnkgYmVjYW1lIGF2YWlsYWJsZSBpbiB0
aGUgbWVhbiB0aW1lLg0KPiANCj4gVGhlIGN1cnJlbnQgYmVoYXZpb3IgaXMgdW5kZXNpcmFibGUg
Zm9yIHJlYWwgdGltZSBhcHBsaWNhdGlvbnMsIGJlY2F1c2UgdGhlDQo+IGRyaXZlciBpbmR1Y2Vk
IFJ4IGludGVycnVwdHMgdHJpZ2dlciBhbHNvIHRoZSBzb2Z0aXJxIHByb2Nlc3NpbmcuIEhvd2V2
ZXIsIGFsbA0KPiByZWFsIHRpbWUgcGFja2V0cyBzaG91bGQgYmUgcHJvY2Vzc2VkIGJ5IHRoZSBh
cHBsaWNhdGlvbiB3aGljaCB1c2VzIHRoZSBidXN5DQo+IHBvbGxpbmcgbWV0aG9kLg0KPiANCj4g
VGhlcmVmb3JlLCBvbmx5IHRyaWdnZXIgdGhlIFJ4IGludGVycnVwdHMgaW4gY2FzZSBvZiByZWFs
IGFsbG9jYXRpb24gZmFpbHVyZXMuDQo+IEludHJvZHVjZSBhIG5ldyBmbGFnIGZvciBzaWduYWxp
bmcgdGhhdCBjb25kaXRpb24uDQo+IA0KPiBGb2xsb3cgdGhlIHNhbWUgbG9naWMgYXMgaW4gY29t
bWl0IDhkY2YyYzIxMjA3OCAoImlnYzogR2V0IHJpZCBvZiBzcHVyaW91cw0KPiBpbnRlcnJ1cHRz
IikuDQo+IA0KPiBbMV0gLQ0KPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC90Z2x4L2hpc3RvcnkuZ2l0L2NvbW1pdC8/aWQ9M2INCj4gZTUwNzU0N2U2MTc3
ZTVjODA4NTQ0YmQ2YTJlZmEyYzdmMWQ0MzYNCj4gDQo+IFJldmlld2VkLWJ5OiBKb2UgRGFtYXRv
IDxqZGFtYXRvQGZhc3RseS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEt1cnQgS2FuemVuYmFjaCA8
a3VydEBsaW51dHJvbml4LmRlPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2IuaCAgICAgIHwgIDMgKystDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX21haW4uYyB8IDI5DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3hzay5jICB8DQo+IDEgKw0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANClRlc3RlZC1i
eTogU3dldGEgS3VtYXJpIDxzd2V0YS5rdW1hcmlAaW50ZWwuY29tPg0K
