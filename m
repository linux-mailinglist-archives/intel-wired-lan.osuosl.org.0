Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ThZFEVPbKmrwyAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 17:59:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B2B673447
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 17:59:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=i5QZLX7E;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20EDA608B7;
	Thu, 11 Jun 2026 15:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uyk-utmwM-fk; Thu, 11 Jun 2026 15:59:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52001608B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781193552;
	bh=bhfHPmLYQ7YqNNPKKRznZEpBgfZBIEML5HspSfBfEVE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i5QZLX7EgH0hzz9psVyT+SevGXgiscojHys7L2mnYUUZwiSv5DVH35v+8SlQpkRQ+
	 vHvOVfI6yp4vkLgOPR230GvhWvvrYboFzy/L5EKmFMVwD+LrLdZTYe+GfyT/Bo5Q9Z
	 loU/88whrhb8Af6Kr1Fsy3kKGAZhstHIPBqps3AJyKxj1ze/2hbD12IsXGKCxAseqO
	 Upa43z+ctesZQnBWDQPV6+RCa0cDL392yDQyZY1kTnHXWR+Ii3a3getb+Z2LHG7Tli
	 tinW5wbSecMG/QfMPse97gI38vy/dbffaJKze8GEED/Z75JdjmmQBkIBRK9uzK43HW
	 FO7x3axTYMWYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52001608B9;
	Thu, 11 Jun 2026 15:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A83D25E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 18:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FB3960B7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 18:22:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lBsxtjAmRMZv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 18:22:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=todd.e.brandt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7186860B76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7186860B76
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7186860B76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 18:22:51 +0000 (UTC)
X-CSE-ConnectionGUID: pwOAR4A/SGmvoRaN93mqCw==
X-CSE-MsgGUID: fhZ+W3DuSJqjDf28fCvMFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82111913"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="82111913"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 11:22:51 -0700
X-CSE-ConnectionGUID: l9RYTo+VQn2RLSxWCBlwLA==
X-CSE-MsgGUID: hXa6zg52ThGrwRjg/YTj2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="276436733"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 11:22:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 11:22:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 11:22:49 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 11:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uEGsOjex9jaM1SRB7edTWcqyuJh/9V7eb6jAGOSKxkFAXVLNXVjjjk3Wj3urU34+5G0NkznGacxA0KXVdwnhICSU9VTdmwCtX3vYRvJZ39I/lur7vn3/fk0GPiOHC/f8Fm5m3v+JxhhnC7OQ+PzNbREV4Zj1pGQnNebEMRWwVai/XfRkajkwJNHqotJ/mkhpnwJDJL5xxm1P+0+gDkvVmf+8tJSPuuA4zGHpqxBSUUl3QjLiQKPT4h22c1EdlmSA9XInZLmkYilp91iF5n4AkA0zKcmLQIhjus2zzwrW6r6LMWGOGS1lhPlGZQlHSod5y7oFRkzdlXIy4dbRTU4/tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bhfHPmLYQ7YqNNPKKRznZEpBgfZBIEML5HspSfBfEVE=;
 b=v4uzLn5KglbtPy/m805kAG/2oi+CTa0f6XnkvNmuuS9Scf2GijG9Cwb/m1+tqsgihkpgwA0OeVbv3MdQo1Adbx4qIDA96BQxNzJRxfq/45DHPEOGI3Q1fdTr7n9DxcPj4Heomw7DkO4YOkUJzvMbXwrJF9T/t9lFCG+y5gzF3XgC+uQHjIjDyvR71wLVXAZYabnW6veNmFu2VnzJjfLQm9le+jhHoJTvUDniB0ckrGtGSQfd0h6pcc53fJt6N2ceIRVmAcUZAmSsDihJwBoC27e9ziv2nOqsr3FCwpDkpycCvnzAoFeSA5aIoU+ltkuNypQ0EbcoQ/+O3bYxHk7mgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6267.namprd11.prod.outlook.com (2603:10b6:208:3e5::8)
 by SN7PR11MB6850.namprd11.prod.outlook.com (2603:10b6:806:2a2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 18:22:45 +0000
Received: from IA1PR11MB6267.namprd11.prod.outlook.com
 ([fe80::748e:f6e9:c380:ed94]) by IA1PR11MB6267.namprd11.prod.outlook.com
 ([fe80::748e:f6e9:c380:ed94%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 18:22:45 +0000
From: "Brandt, Todd E" <todd.e.brandt@intel.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
Thread-Index: AQHc+QYic4UAtxtp0Ue/77rKUjByzA==
Date: Wed, 10 Jun 2026 18:22:45 +0000
Message-ID: <afa13b8dfd880cd287651ca2e293e209dae968ab.camel@intel.com>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
In-Reply-To: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6267:EE_|SN7PR11MB6850:EE_
x-ms-office365-filtering-correlation-id: 2b26d812-ada1-47ef-b1fe-08dec71d44ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|56012099006|11063799006|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: c6FDPW1nqg8+4/z7gCk/oA22xMiCDiNsoZWbYjP+jNQL4Os3whDIddZfRNhN4SJ8/yOxLr7yZl1BQlvsAtWwIjoyPYR5nu/Vv2EfsNkpwVG1GP7ovqv4JtG/GBWAOx1jTaEwN65P1dRcjEipz4613U0kzi33qQyd4N7LbQMGvpXmr08BahN241b4frrQ5jAjIXF+gFHDitzWjVRKNRzrJq0MeMau0m8t3tz5UKzivdEOjLVOx+gQqKg/T1yb2qcQ1iLXKKE7Os87JWXOaw1y3EopC+KhkLlWSmtV2v4W+8P36Hb9VtrdEASehNN6f1FxQ9ehvyR0o71eSzkTsr2WYdkLgYgT3wcew7/Lrjd/jnryocetHc3/a0niY3atluapsmezi6cODnkErzZzrXY+qFnWVefYgpP36/thszxVclor2PT8Lv8jZwEnxquFSpciADVVCq8oKU0jRr0n8aUC3Vwwl3IsCOjqWgP4w0RV59etHtpNukLCbjVblKZiS1rBo6ex49X+NrnPW7ghJf9OvjB793zcYpZzsEDFq/Jwuu2NypQiobcvAlSzZ7FrfXwfFSiz9vS+FgUF8AKQJDeykkNnznFkyJgrlHmxOUy/EQytQL7A2Sofy8/ar8aMth+0wxs0wmX9pgTwRrBdTYP44QHNOj7azm9yb5Rva61LPv4iOBW4TzimMoC51YK4wqLRjiuglVmj9oyeEe4i9bnzgdocibSitZX12RiE03aXdbqNHjxkRT2d/NCUPpCEDARt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6267.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(56012099006)(11063799006)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHJXeFlnZnJoV25qZVFVVDI0ejFBMkNwQmhlSWgyU3pQcy8wSTZUWTFrZFpM?=
 =?utf-8?B?aWh2TDUvazR0TDNkN1ErcitLZEo5UzY1RldMaitEbEtCYmhjVzZoMFRzMHBk?=
 =?utf-8?B?SGdhYUdjc3VSUVhYdUR3UWU4bk5qS29iUzltZWhNSjh1NVQvWVM2K0tRUFFm?=
 =?utf-8?B?bXpaZjZZcTRWVHgzYllsMS8yNDdkUHNzcHdtd1o4WG1vR2RjNmZLREFKSk1v?=
 =?utf-8?B?N1FCZ2NpZWdMTExjcmlrYVhVSURCdFRCVkRBcmpYM3lCbDNlMlRnWDlVd2JJ?=
 =?utf-8?B?b0FueTlvVHBBOCtsQ1F1MEMyWnV4ckVqRk9HN2RNWmhXejdvZWxoRkhrem83?=
 =?utf-8?B?NDdGcnBUcUovNVU0QWJ1SEQ0eFlYQ1ErYTVBK2Z0Ykh2Lzk3NmZrY3JqMi91?=
 =?utf-8?B?dFF1emhBTFhkbEpkNmNMYkN1N1RWalVJTk9MMUtpbWRDbUtLTHNoMEZ4Zm1M?=
 =?utf-8?B?dzlaa3ZZWGk1UUduS3VuWjd1Sm5Jc1JUb1hEcGR4WTRDb1p0bnZGNHp0aFNp?=
 =?utf-8?B?dVBQd2JONnFudktBeWVraFh3N2wxNkd5YWFSeFJjMkNOZnJzN1BZaUhFbTVl?=
 =?utf-8?B?TVhxeTdUWUlZbEp1UFhNTXN2K1dLdkpCUXhHb0dmbzhNV0JsVFI5Y2hHcXE5?=
 =?utf-8?B?MHhkYWErS2tKSExPUUNPUlNkVDJPd3RlOFQ5M3E3ZkZnNHpyNlZCQ01POGxY?=
 =?utf-8?B?bXlzZ05zdWNWbFZKbENJUjBhOVByd1pwcUJZT1lkdCtGSGU0RTNrdTFtVHhL?=
 =?utf-8?B?RnpKS0llbzM3ODBXeGs3b0dTTXh0UlRsNTdyczJkU3N5UHlSRGtVL1lGK1Iy?=
 =?utf-8?B?ZFhLSVBvRnh0eGY3dGxFc2tDblJITCtRWjdXL2w3enZ2TzZjVVMrR2FvYUlZ?=
 =?utf-8?B?aVRQalBISGRnSnJlRU5MaTlTakpCVjF0T1Z5L0hiUGFMSDZ5RS9qKzVtVmw3?=
 =?utf-8?B?UkNNdkNoanZKNndZelVOKzlaSTVTVDFHY0grdmlCckdTWWRMWHBUNHc1bVVG?=
 =?utf-8?B?b3hTaXU5eXBxdjNvVVhOSEt6eDF4eGxVNkdsUlNvZVBiTmtLNnNjY2hlcDVl?=
 =?utf-8?B?ZjlKYWJEMitwRFM5K2Vkc3I5cHNrbWdSWTc3dTVzSCt5VUJpZGtWN1hlS2hr?=
 =?utf-8?B?TmVhYmFSK0J1SDNjS3R4V2hWSGF2RVhPVmU0Y1VvUENtYklXWFVudms2c3dn?=
 =?utf-8?B?TjZveHoxbHhvZzZOcnFGV0t1L2Q3Sk1iRVdUbDByZDl2UTNyZ1JjazFkcHBD?=
 =?utf-8?B?dEJNNzVzVFgzVDVVR3QwcUNoVTFqNGdZMTVUaTJ0dUc0ajdTdXRIY0VpdUtm?=
 =?utf-8?B?azlocnZmTlFDRXh2ZC9wMWRsZ3BwaksveTVjWGNBM0d6OGhGUVdtSmlKOEZu?=
 =?utf-8?B?c2hrSU50L2MzaC9DREpodHA1dnhxOUd6OWdzYnhycE03VTUrQW5SazZTVlEv?=
 =?utf-8?B?STlaVkVHaG15bjNlU3Q4cmw0b0dTZ1VFWVd0MzREejFLcjdJTTFMYXIxZ1hm?=
 =?utf-8?B?Nloydk5ScEJJRFY1djlvSUtGb2t3cDJwOUVmRmh3bzd1TXJxZXFwcjJKRStQ?=
 =?utf-8?B?WktEeG1aUmRBOGs4Rmwydit1KzBzQS9iLy9vdUYxRVlPWk5CNGYrbEE0VTZh?=
 =?utf-8?B?SlBHWGhWaWN5MVFEUjJteWVmVFM3QXhsdWNvVURpSlVST28zeDBtVE1RU3l3?=
 =?utf-8?B?RVZtaklmdmNBL2ptOE5Hcm9NNFE0SldpMGZOajhET2NaT01RSW1ySEJUL1Ev?=
 =?utf-8?B?Vmd2Mm1rbE1PbjN0NzJPNVRLZkVncy9oTDdVdk4wZEY1bGkzQngxamxOK3A4?=
 =?utf-8?B?OERFaXNpVVVJNjdWbEdrMDJrV2FvZ1VLMk9RbjJ3N29XeEVMTXlZbUdIR1Ey?=
 =?utf-8?B?WThwS2s1L1g2dEhPR1NHQ1hDLzVCOHBsc01PZmxvQzdFRXE4N3VlMkdUTmVV?=
 =?utf-8?B?dHNSTzJROEt4QkY3c0dSR05YeWVEMVdDU3Y0enljVFBTNjM0REE1bVVJVzFk?=
 =?utf-8?B?WkFJU0F3d29qSkxwWmlySldzaHp4bEFOVFhEb3NvWUY2Y2wwcXhpSlZNV1pP?=
 =?utf-8?B?SDRGOFdOWU1KOWdwcDJrQkdyVEFYWVJhb3E1Q2E2bENhZjZhYng5YnVvUzVO?=
 =?utf-8?B?ZXVjSGRXSzFnMVNYRUpwR2R6RXRRMnZPa05mV3BLRlQxZk5McDdpRFpRWDVY?=
 =?utf-8?B?ZVJzTnJhT2tJMDA4MmFqdmZRKy96aVE2eVp2T2ZVZ3A1RVNhMWNVdTBGM01p?=
 =?utf-8?B?K0lPZFNPcnlkSFAzdUFLK2tEcHdEeXRsWFBiSzkrQUdMZTRpVXkxRHZsQmVU?=
 =?utf-8?B?YW9xM09jeHRhTHJTRDVHaWN4bC9kWnFQSm9aeGxncStxMW0zbERqWHREYnFo?=
 =?utf-8?Q?BXNXCUBpRgfi8j4M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CCAF1B1545E9B74EB4FE059320504A4F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FAM8BgOqOZZSMuNiyhlBV2vBFm/GULTjZPPzPV0xmHLfVfXYW0E4K5RJgDu9Sfm+DSPfVPceLqOxIvGxysGRTssglAwkPvdU3K+rkRwO5OW0518Cbsev1yMBH55Izt35cmkJduZlfHxgM34vepkoV+hyshZ1TXc6MM2WGr4qvVSoXEav7aK8AQE331EhAGgXVmRKHM7/RRf0AXxrDT5m4njmIRf9RyRTfyi652RJLbEVaanFgBtmcgX+nJMa6o4mPsfgC4ZAUH2wT87tpQ426/xhbjiqlB3aof8p6vNJoDzMHeZ3lHoE9GfvVzOlszlCzPw/Bzz7fG5ec9jJeVLnIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6267.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b26d812-ada1-47ef-b1fe-08dec71d44ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 18:22:45.3622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1+OWrOXDPlbjKLhCRHXihFFSXW+HWxRxGPlcPCj8qlSq/CHyqajSDk7NzcJTokfNaXprtER2GIjjiHVNazKtLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6850
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 11 Jun 2026 15:59:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781115771; x=1812651771;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=bhfHPmLYQ7YqNNPKKRznZEpBgfZBIEML5HspSfBfEVE=;
 b=I2ba+3fcSwL+L1trO8PX3r6d/QMOBejjvPV6CkL7nmWwHsZoEIK399bW
 ZDSPVcgT9j43H7xU6KWwtBEkhnKQzrzKimAwr1KTPk1FD46P26xN+b5ii
 E78rggw0Qf39kffSkFZL4ifqJ5yiy97Kk+h2X5Jgk530KmJb4FvargSoi
 WwYPgiY0tTmUv+/Q3KdxBWVr7ku7gegF6uHqGd7MqIcSWAVOeMuKse2eO
 bejmVEtM60B/PfuWDGLATuPQZXTBTZ+ZHkQ5RiRWBdSnpoKAt3kFbFLt1
 7VhKfpQOzd1IyHvjLwDi/T5XERga81nB9WWwIcgeIVwn3WVqf3iuK8i04
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I2ba+3fc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[todd.e.brandt@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[todd.e.brandt@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:url,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81B2B673447

T24gRnJpLCAyMDI2LTA0LTE3IGF0IDEzOjQzICswMzAwLCBEaW1hIFJ1aW5za2l5IHdyb3RlOgo+
IENvbW1pdCAzYzdiZjVhZjIxOTYwICgiZTEwMDBlOiBJbnRyb2R1Y2UgcHJpdmF0ZSBmbGFnIHRv
IGRpc2FibGUgSzEiKQo+IGRpc2FibGVkIEsxIGJ5IGRlZmF1bHQgb24gTWV0ZW9yIExha2UgYW5k
IG5ld2VyIHN5c3RlbXMgZHVlIHRvIHBhY2tldAo+IGxvc3Mgb2JzZXJ2ZWQgb24gdmFyaW91cyBw
bGF0Zm9ybXMuIEhvd2V2ZXIsIGRpc2FibGluZyBLMSBjYXVzZWQgYW4KPiBpbmNyZWFzZSBpbiBw
b3dlciBjb25zdW1wdGlvbi4KPiAKPiBUbyBtaXRpZ2F0ZSB0aGlzLCByZWNvbmZpZ3VyZSB0aGUg
UExMIGNsb2NrIGdhdGUgdmFsdWUgc28gdGhhdCBLMSBjYW4KPiByZW1haW4gZW5hYmxlZCB3aXRo
b3V0IGluY3VycmluZyB0aGUgYWRkaXRpb25hbCBwb3dlciBjb25zdW1wdGlvbi4KPiBSZS1lbmFi
bGUgSzEgYnkgZGVmYXVsdCwgYnV0IGtlZXAgdGhlIHByaXZhdGUgZmxhZyB0byBzdXBwb3J0Cj4g
ZGlzYWJsaW5nCj4gaXQgdmlhIGV0aHRvb2wuIEFkZGl0aW9uYWxseSwgaW50cm9kdWNlIGEgRE1J
IHF1aXJrIHRhYmxlLCBzbyB0aGF0IEsxCj4gbWF5Cj4gYmUgZGlzYWJsZWQgYnkgZGVmYXVsdCBv
biBrbm93biBwcm9ibGVtYXRpYyBzeXN0ZW1zLiBDdXJyZW50bHksIHRoaXMKPiBpbmNsdWRlcyB0
aGUgRGVsbCBQcm8gMTYgUGx1cywgd2hlcmUgdGhlIGlzc3VlIGhhcyBiZWVuIHJlcG9ydGVkIHRv
Cj4gcGVyc2lzdAo+IGRlc3BpdGUgdGhlIGNoYW5nZXMgdG8gdGhlIFBMTCBsb2NrIHRpbWVvdXQu
Cj4gCj4gTGluazogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0y
MjA5NTQKPiBMaW5rOgo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9waXBlcm1haWwvaW50ZWwt
d2lyZWQtbGFuL1dlZWstb2YtTW9uLTIwMjUwNjIzLzA0ODg2MC5odG1sCj4gTGluazoKPiBodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvcGlwZXJtYWlsL2ludGVsLXdpcmVkLWxhbi9XZWVrLW9mLU1v
bi0yMDI2MDMzMC8wNTQwNTkuaHRtbAo+IFNpZ25lZC1vZmYtYnk6IERpbWEgUnVpbnNraXkgPGRp
bWEucnVpbnNraXlAaW50ZWwuY29tPgo+IENvLWRldmVsb3BlZC1ieTogVml0YWx5IExpZnNoaXRz
IDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpdGFseSBMaWZz
aGl0cyA8dml0YWx5LmxpZnNoaXRzQGludGVsLmNvbT4KPiBGaXhlczogM2M3YmY1YWYyMTk2MCAo
ImUxMDAwZTogSW50cm9kdWNlIHByaXZhdGUgZmxhZyB0byBkaXNhYmxlIEsxIikKPiBUZXN0ZWQt
Ynk6IE1vcml5YSBLYWRvc2ggPG1vcml5YXgua2Fkb3NoQGludGVsLmNvbT4KPiAtLS0KPiB2Mzog
YWRkIERNSSBxdWlyawo+IHYyOiBhZGQgY29tbWVudCBmb3IgdGhlIFBMTCB0aW1lb3V0IHZhbHVl
IGFuZCByZXZpc2l0IHRoZSBjb21taXQKPiBtZXNzYWdlCj4gdjE6IGluaXRpYWwgdmVyc2lvbgo+
IC0tLQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8wqAg
MyArKysKPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuY8KgIHwg
MTUgKysrKysrKysrKysrKystCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL2ljaDhsYW4uYwo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L2ljaDhsYW4uYwo+IGluZGV4IGRlYTIwOGRiMWJlNS4uYWE5MGUwY2U4YWNhIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gQEAgLTE1OTQsNiAr
MTU5NCw5IEBAIHN0YXRpYyBzMzIKPiBlMTAwMF9jaGVja19mb3JfY29wcGVyX2xpbmtfaWNoOGxh
bihzdHJ1Y3QgZTEwMDBfaHcgKmh3KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHBoeV9yZWcgJj0gfkkyMTdfUExMX0NMT0NLX0dBVEVfTUFTSzsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoc3BlZWQg
PT0gU1BFRURfMTAwIHx8IHNwZWVkID09IFNQRUVEXzEwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwaHlfcmVnIHw9IDB4
M0U4Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxz
ZSBpZiAoaHctPm1hYy50eXBlID09IGUxMDAwX3BjaF9tdHAgfHwKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaHctPm1hYy50
eXBlID09IGUxMDAwX3BjaF9wdHApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGh5X3JlZyB8PSAweDFENTsKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbHNlCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBo
eV9yZWcgfD0gMHhGQTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBlMWVfd3BoeV9sb2NrZWQoaHcsIEkyMTdfUExMX0NMT0NLX0dBVEVfUkVHLAo+IHBo
eV9yZWcpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMKPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+
IGluZGV4IDRkNTUzYzZlZGQ5OC4uYTc2MDVlNDUzMzgyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+IEBAIC0yNSw2ICsyNSw3IEBACj4gwqAjaW5j
bHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+IMKgI2luY2x1ZGUgPGxpbnV4L3ByZWZldGNoLmg+
Cj4gwqAjaW5jbHVkZSA8bGludXgvc3VzcGVuZC5oPgo+ICsjaW5jbHVkZSA8bGludXgvZG1pLmg+
Cj4gwqAKPiDCoCNpbmNsdWRlICJlMTAwMC5oIgo+IMKgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9J
TlRTCj4gQEAgLTU4LDYgKzU5LDE3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZTEwMDBfaW5mbyAq
ZTEwMDBfaW5mb190YmxbXSA9Cj4gewo+IMKgwqDCoMKgwqDCoMKgwqBbYm9hcmRfcGNoX3B0cF3C
oMKgwqDCoMKgwqDCoMKgwqA9ICZlMTAwMF9wY2hfcHRwX2luZm8sCj4gwqB9Owo+IMKgCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZG1pX3N5c3RlbV9pZCBkaXNhYmxlX2sxX2xpc3RbXSA9IHsKPiAr
wqDCoMKgwqDCoMKgwqB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC5pZGVudCA9
ICJEZWxsIFBybyAxNiBQbHVzIFBCMTYyNTAiLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAubWF0Y2hlcyA9IHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoERNSV9NQVRDSChETUlfU1lTX1ZFTkRPUiwgIkRlbGwgSW5jLiIpLAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRE1JX01BVENIKERNSV9Q
Uk9EVUNUX05BTUUsICJEZWxsIFBybyAxNiBQbHVzCj4gUEIxNjI1MCIpLAo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB9LAo+ICvCoMKgwqDCoMKgwqDCoH0sCj4gK8KgwqDCoMKgwqDC
oMKge30KPiArfTsKPiArCj4gwqBzdHJ1Y3QgZTEwMDBfcmVnX2luZm8gewo+IMKgwqDCoMKgwqDC
oMKgwqB1MzIgb2ZzOwo+IMKgwqDCoMKgwqDCoMKgwqBjaGFyICpuYW1lOwo+IEBAIC03NzQ4LDcg
Kzc3NjAsOCBAQCBzdGF0aWMgaW50IGUxMDAwX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+
IGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCj4gwqDCoMKgwqDCoMKgwqDCoC8qIGlu
aXQgUFRQIGhhcmR3YXJlIGNsb2NrICovCj4gwqDCoMKgwqDCoMKgwqDCoGUxMDAwZV9wdHBfaW5p
dChhZGFwdGVyKTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChody0+bWFjLnR5cGUgPj0gZTEw
MDBfcGNoX210cCkKPiArwqDCoMKgwqDCoMKgwqAvKiBkaXNhYmxlIEsxIGJ5IGRlZmF1bHQgb24g
a25vd24gcHJvYmxlbWF0aWMgc3lzdGVtcyAqLwo+ICvCoMKgwqDCoMKgwqDCoGlmIChody0+bWFj
LnR5cGUgPj0gZTEwMDBfcGNoX210cCAmJgo+IGRtaV9jaGVja19zeXN0ZW0oZGlzYWJsZV9rMV9s
aXN0KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPmZsYWdzMiB8
PSBGTEFHMl9ESVNBQkxFX0sxOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qIHJlc2V0IHRoZSBo
YXJkd2FyZSB3aXRoIHRoZSBuZXcgc2V0dGluZ3MgKi8KCkkgcmFuIHRoaXMgb24gdHdvIG9mIG91
ciBuZXcgbWFjaGluZXMgYW5kIGl0IHdvcmtlZCB3ZWxsLCB0aGFua3MhIEkgY2FuCmdldCBQQzEw
IGluIHJ1bnRpbWUgaWRsZSBub3cuCgpUZXN0ZWQtYnk6IFRvZGQgQnJhbmR0IDx0b2RkLmUuYnJh
bmR0QGxpbnV4LmludGVsLmNvbT4KCg==
