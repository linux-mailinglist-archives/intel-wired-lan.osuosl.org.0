Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO9CKwVLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:44:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE1AA7139
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:44:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5853402AF;
	Wed, 28 Jan 2026 17:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VdSDHsCGWgVy; Wed, 28 Jan 2026 17:44:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C222402FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622275;
	bh=KOSgAkoCoJExH1/dUZAx0kyZEbdaXh1iAPid4m68Upg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BfgXr4vCOfDcfAPZ27+R5qREOA12AD/G47xCjgs8Qt6NKynXlYBULWgvs9eFjpFk7
	 Hg/M9BO3xz+eSNxEPg0oasz6MUyPgkBGplh9OoD6PXtB4kPbsGtACWkQaQ+/dSuqcN
	 GB8vwOpzsZI2JLNVRxSSLI4VBb+gYom4W/EUjnfSPOXt8XI+ZmDdL0am5Hxs/UON2N
	 G+AW1lxHzBN2lCmEbfMgjldHSXbR9+f1pRV/Hf90hXEoTIsY+7g5u7Rrwm2FlB6rII
	 +2f50ugwpHvSG0T2U7hZlcSkv66yGC69rLr1NGkv53SalkcZY7zoqP56rMh4JXLtfX
	 C0I8X5SG/quUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C222402FD;
	Wed, 28 Jan 2026 17:44:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D51FE1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C51FA607A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:44:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bmLfRjWG1A8R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:44:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05DE860793
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05DE860793
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05DE860793
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:44:32 +0000 (UTC)
X-CSE-ConnectionGUID: NKHP0gfrRWKh18Zi3jOpIQ==
X-CSE-MsgGUID: 0Um0kbEtRsG26Z8gog45CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82271103"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82271103"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:44:32 -0800
X-CSE-ConnectionGUID: ipTU00DJRPmgF06lOItuUA==
X-CSE-MsgGUID: HBDXEzhRRECrj87QxVBYOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208406921"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:44:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:44:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:44:31 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.61) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:44:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XUSJwOeAxBWHV3xXXovJ0D3k68m5waVBnoSo2R3sKZ8bhyCAjbjJsxhBv2jIyt/ws6E2U8PamzWIc/aDmMrrCgVPMqQoyAY7qiqFOoOStljZRjHSurG7ISmazNdabIFe4kYoRvyNa1jx51awDKgfV8kdt9wVpCRQtsG6b50J97Dc9GGjbHisKI/drmelaB9TKXFUz+m8kCF2WLHlPOvOOsm1VrHNrqZcH6zNj5RNcZYqG3ko8SXdkmFQkrvNj/e/FhMXLDaGXSb/nMLENFS4UzMIepRivH5JETaJQWe/kJo2YS7mTow5Ou5ulc6kAv0iHHvu6ZLuVq5blHWPKn3dsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KOSgAkoCoJExH1/dUZAx0kyZEbdaXh1iAPid4m68Upg=;
 b=QLRCy49yoc1KxB5ZGywkbjMMZdmIpe0B1/U3V6Owi5Vb6UU85NPdlTRT3o1b7+rAIY+fHsqhgA6O1tNZDwPvICW9jlI6Kn6m1JQFy44wL8N1+jvHUmSCtXHdMP6SWqopKLjiuAUGzGJlzZjhqIaZk3Isc6Y4PqEXfdDhzARjrs1DQZKG+iUqOwcwBCY69ydx6lXAgmI4A+lTMbvFQ2Xvi5D9jCGWAHpVxaBgzVG1C74gcjYwBfSMQblz8+YwGbgjjhJGws0Xw+NUiahn1bfbHo0qicMoZ4VyRaYIDiyxLZvcirMWSmPXkHBNbwXofGKsoP4rFJCFEwDvClFQJaRAgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB7561.namprd11.prod.outlook.com (2603:10b6:510:282::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:44:16 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:44:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 03/25] docs: kdoc_parser: move var
 transformers to the beginning
Thread-Index: AQHckHZJMr57lgwJp0G2wuUOSwzg3bVn2nsA
Date: Wed, 28 Jan 2026 17:44:16 +0000
Message-ID: <IA3PR11MB89866DAC886C347EDF8D1119E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <ee823af3eebc4ece0278c9859f4d109dd0de54ab.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <ee823af3eebc4ece0278c9859f4d109dd0de54ab.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB7561:EE_
x-ms-office365-filtering-correlation-id: c69dc90a-8f00-444d-f867-08de5e94dbbe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V1IwM0FvODltREpSbUVLUG05VmRVemljOHhXU2ZUSFlnUHlsRFZreG5YL1Rr?=
 =?utf-8?B?ZWEyRkgxTzJ0c0wxUmw5NkpSME5UamFYdk9pYVhMV3lkMUZzaWovR1UxTGdM?=
 =?utf-8?B?blhBMi9URnU4Y0pGNTg4YmpVNXlyZlNncFovZUJTZVhuYmppQTBEU1FaSWNF?=
 =?utf-8?B?L1lmYlNVL09kWm9qUVpLZkl1Tm1VbDdQWnB2azNqM2U1RzVLVGpwNE5ab3VE?=
 =?utf-8?B?SFYzUkFWaE9pWTFuZUl5ZnhjMDJsS21zdGx5czg2dmFPejBKTFFGOGFCZWNU?=
 =?utf-8?B?Zyt0dTdEUWwvL1pkZndRRy9kSnVzTE92YmNtdkdlM2ZKT3ppZGJOSWh0bi8x?=
 =?utf-8?B?UDEzaWIyWEtQeSthSmEyZEh1Z1ZrU1JCaFdmZXVzM25NQTcxdWE5OWJsUmdN?=
 =?utf-8?B?L3pwZEFZOTE5S1RmNEJiS0IwYUg2MjlTaTlPWG1KbS9SSHQ4eEk1NkxTSHM0?=
 =?utf-8?B?YVBXbWV2ZVZTSzF4TDU4YkU0eW1DY2RkemVYOVBFV2VGT3N0MnJsdG11RlRt?=
 =?utf-8?B?UHVsTk5Ed3ZjV1FJNnV4OTZkTTR1RnVmUXQwMHpaWlp4Q0RCRnBKdHVHRGxP?=
 =?utf-8?B?NW5acnFOOWsvamVFWVE0QkpxT1A3b1I1d0FNS3p2VzZvRVZXckNIcCtSeGVY?=
 =?utf-8?B?L3M0d1E3cHE3U1ZxaDZmc3pGMllMWGs3Z3pqNjNSaHQ5UDZEdHQzTVNMNE11?=
 =?utf-8?B?UkQwUi9wTU4rUVRpaU5WMFo1ZWJ1MFhhLzM5T1VESFE1QTlLcTRNeXNSZU1Y?=
 =?utf-8?B?Z0lGNUk1elA3MGVpaUYzRHBmc1IzdHI4ZWo0bGlBUWpWNjJpV3dLWE9XNXda?=
 =?utf-8?B?dWp4dE9DWDJwRlphVTluK3RvR01MVm9obzRUQjhLaFYzRStxNlB1eUJ0RXNs?=
 =?utf-8?B?UEdZbVk1eXhldUlqYUZ5b1ZiRWdhOWU4WmJDS3VXUG9maFpFeFdrVnRPVC9Q?=
 =?utf-8?B?cFdMb0VqaFV4d0pxdDY3alRpcmhHR2hNRkg0aC9Kd0g1USs0Mkk1TmhzRDJ0?=
 =?utf-8?B?a2NsRWlJWnlTUTk1bWEvZUQxOFJtaFZuU0RYZ2lzcGhqRnRqOTdKOUs2Y0dW?=
 =?utf-8?B?STl4d21Lb2ZBRkI3a3JweDVTVkk2eHhXdTE1d1ZqZzFPSUlMbXVvVFJqVHVI?=
 =?utf-8?B?ZzlSb1psVVc2Tkxhb1pwdTRvSHNnSnoxK3lURE0yeFBmcHVQOHpPRmxINFdi?=
 =?utf-8?B?ZkMralZYVEJqbXlqa1R6NGlGelZIMEdMaVJ0bDVRdHFXbTZqT0lteE5ZVFBv?=
 =?utf-8?B?c0lPZ1liakNpSlhTOXFpYi92ZGc0OFhyREtaTVBCbVRSTUtzOFFyU0pxQ2lp?=
 =?utf-8?B?WW1tSitsV213VUdXSW9BVk41TlQwQUNmOTAyRE4xVDhWb1oxamp0ZlZPTDhC?=
 =?utf-8?B?OFJZdXl6clRwbnFMM2lwNm03TExTdExuTzdpblVCK084OUI4NUdVaXIveXBQ?=
 =?utf-8?B?aTN1U1ZIZWpiRTJBU0F1NVlkUU5EOSs3RVducmZFNjlPTXRSd2xiS1poalor?=
 =?utf-8?B?NkUwRTFjRTdHY2lvMzc5clJ6T0RKdnNmLy9VRHJZWG5sL3d5VnpHU0pBMUhN?=
 =?utf-8?B?MjVSMEVrRUlyZ3Mzb1VIUFFsMkxhV2RTMVBTRlVMOVRaKzR4QXUzYjZEWjhT?=
 =?utf-8?B?aDJETUtrUVZWRWU4Um1Hc09KQ2VjeTRDUUZJN0tiTE03K3Q1Wk5Fd2dsOVdT?=
 =?utf-8?B?RXFjMGozUk5Gazd1ekNEUUVYOTlER3c3Uzd1YnREOXRPTkxzZ3ZaQW5JYUZj?=
 =?utf-8?B?QlJXTUZJS3BUbE01S3MyUlp1ck5jYWtacnpQRFBWcFFHYzJzY01ndjlBYThx?=
 =?utf-8?B?aTYxekxBVkRIcTFIcGc3Z1lpSXBaQUJDeE1ONjdNQkhwWDNqYndocEN5K3N4?=
 =?utf-8?B?UU5ZZ3hmTURsWjFiY3BNRFF4QnhXbGhpNlJxdzJ2RnhFbUNaVk1ZbHd4bC84?=
 =?utf-8?B?QzNJNVNjTWIzQjRzNGlpN2NXVDh2c2hZOStqbTNDSHdzT093V1NjSURXTk5Y?=
 =?utf-8?B?M29lOS9TcVhyQ2htWlFtMnVnOEtLeGl3bDhxYU9uQWFVOVNyS1lvSzNMZjQz?=
 =?utf-8?B?Y3B3TW9nQmQ0d1JoSVVjV29SK25MWmYwdHBicEVLUTl0enJaaWZVL1gvcE1w?=
 =?utf-8?B?MTlMQ3ZUTVpYV1o3WWRnY1RyWTgwMlQ2Y2tLZTlybFVNQ29aSXpWWGEvNnpF?=
 =?utf-8?Q?5AVtRyrN91Nr4d6Qrig9npA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0lDVCtEMDl0K015VU5EUm4xWitwaGpTOW5seTFVSUVsaVBGRGJ6UU9icmR0?=
 =?utf-8?B?c0NEY1UzZVpoVDNEQjRjR1h2dWJDVGNpcXRYSERDSEtJd0VtY3B3L3NudFVn?=
 =?utf-8?B?b2s2UHZxUXlSZUN3Tm9Ia1BZK004ZFJDdUhNeE50Q1NBVlE4eXR0a214aXcz?=
 =?utf-8?B?TjhPaktxdDdUNnBha28zQ1FJbHVsN3E2bDdlSkRaeFhzZ3YyLzBmU3lOQ2Uy?=
 =?utf-8?B?aSs1b0F1eHVRWWduRjZUR2lJcVRQUm1ubHIxQU9jM1BIOHRLa3pSbGdRanhB?=
 =?utf-8?B?V0dSajNjUlJzaGpuMWNaRHpOYldEcEVacEtjRUpERWh4Y3VySnRpZ0RCUjdw?=
 =?utf-8?B?QWJqR2xTRFZJTkg1RFRxbVFjTExvTWtTMUhlTjA1QzZiYjdndDltWEJUZUtP?=
 =?utf-8?B?cEYrTkVjdTZ5aGJqQTFZTmRDVkYzNHJjWnlPOUw0eUNEUlJvemZxSFpMMkYz?=
 =?utf-8?B?TzlKcmZ4K29STE9GT0RCOFZCaExWSUpSd3lBbHFDT2s5RWNld3Bzek84cEJC?=
 =?utf-8?B?WktheU5sSUFLUkRxTExGbFlaSSt3ZWE0RW9ZM2JZWUx1NDFKZGZacm1lNlNI?=
 =?utf-8?B?cHRIVllMR3JJMENWbnpwK1JGODVubzc4SllZV2I4b05TQVVlNVZFak9Eb2lX?=
 =?utf-8?B?ajVjeEVMWWZmRXA5N1QrQXorKy81Y1g3RnRPaENyRzRoMmFNT0tLMzgxVWVE?=
 =?utf-8?B?VDNnU3lCRUtUTXFTYnphOVlKbDF3NUtwSi9CdTRpYW1pTjhSamZ0MkthOWhL?=
 =?utf-8?B?NUl4UWh6ZStZK0JMM25PVkt3bE9LV28rNGlPYUx3Vmtuek82T2oySDV2Tktp?=
 =?utf-8?B?SFBocFhobnkxYWphK0t5SGJsU2VEMXkzMUVzcm96Qi9FdXNHc1JDRG4wOHR2?=
 =?utf-8?B?UFR5Mk44YXZhMFZxdExFRnpVUC9TQXpOUFlHWW1Vd05ucTl5a3RnUDAraitv?=
 =?utf-8?B?VHlYdHRnaGxHWXRFbk03ZEhFZWlVaHR4Ni9WVS8zeTJCUnBzM0xqenM4T2ll?=
 =?utf-8?B?Y1R6Q2szbzRORXZPME9kZUFmdE44RXoyK0FPMXFLZC9oa0FwUjFHQU9aR1A1?=
 =?utf-8?B?ZWN6aElCTTFxU3JvdCtIMEIrcVZqZlpZamJFZHFHbUdsWWRKNkcxdGxxb0hF?=
 =?utf-8?B?MVZVMUkrT2dEUjRRS0o5enF3bUh2V0RpbEFNNU1BMVppby9CSnVxMG9YenZ4?=
 =?utf-8?B?cG9tZDcrcFhBN2hORXdLdm95VTJtdGNVSml0NW1HTHhGTy9GTkk2NzNIdEht?=
 =?utf-8?B?KzQvUFlueHRHUGg4SitTaHRLbE5uamErMXJtVngvM0ljc3JVVTk5RnZhdGhh?=
 =?utf-8?B?b0xHbTh2allrY3h6NElyQktqeDFOZlEwa0NvUXBHeTlqTjJFVVUrTWVJNjdv?=
 =?utf-8?B?TGZEQ3VHejd4VHJIR0hQRE52M1IvdmxrRGVaME0xNDFsZ2poaWVHY1lQaTgx?=
 =?utf-8?B?UFhwRVF6ajdyRXNMOHZzSWM4Zm5hSE1seUIrdFplM0NMVkdORitvWjRmK3Q1?=
 =?utf-8?B?RStaTGpzV3ZGSnBKTEt3TDZFWldsN2ZkQllXSTNmdGtZa3k3WXp6eTljTk02?=
 =?utf-8?B?am9KU3RBSFFuQk84QWdYK2w2NmhoU3BSZGZvQmI0aEt2d3VwenY1ZXc4Z01h?=
 =?utf-8?B?cnJEblFhM3BlWmNycEJQQ1d0R1JPRCtubDFqLzAyTWs4d1JNNjIvSFdjUHRx?=
 =?utf-8?B?MVVCZC9YMDJjMDBsdnlUWE1VOWFwY1VseUVoVDlyU0dRbmNHbHAxdEJ6WlMr?=
 =?utf-8?B?Tjk2ZmFSYXM5TUlWb25mVFNYZktOU00wVk1reDhxTmppMk1zelZKclgyQThl?=
 =?utf-8?B?dkprTUVYNTRPU1dTT1VlQjJVWk5OZUFIT0JReFJ2ckxQS1NYSVlyRHEzUysv?=
 =?utf-8?B?ZGFkQ1R4ZjF5cjVPaEVyeFNlQXVLOXh0QnJFWkh6anhjdEQwdWZlZStReXhq?=
 =?utf-8?B?ZU1TNzh4WitDOVFRU3dYKzFocmpuVnh0K2dtbHVXRXhCS1ZwYld1SnV4bzhI?=
 =?utf-8?B?ZjVuSnZiSmo1R1BlWU0zckR5aVFaZnFXVXhwbytvWEpBTTBPWC9kNit6Umhi?=
 =?utf-8?B?bnNWZVF2c2Vmd0d0bHoyVHl6NUJnWXhERUdoaUxUZ3VPZXlrWDVVZmh2NHhu?=
 =?utf-8?B?S3pzaEU3dnFjNkpaNWRvc1VxQVU5cjVld1E5ODA0b1JOcHc2ejd4QUZrd0pC?=
 =?utf-8?B?cGF5Snkvd3F2eW1tek5SWEE5anl3QWN5WEIwdmVraFl5NnJqbXhoM2s1cjZ4?=
 =?utf-8?B?Qkg3ZUdJNzQ0T3d1dWUvRWtQRENBbkI2ZWlPYUhOMWRnUGlreURnMTgwV2wy?=
 =?utf-8?B?SXVVL0lvMjhVdk56eGhqcWYrYUlQZjBSclFzMjJXVW5HVXBlYlY1dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c69dc90a-8f00-444d-f867-08de5e94dbbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:44:16.7793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xNbQJbCLEYFTapVl5/zCDzHIhqbOtOYI3d0auLYXTYE/QEdoeK+j777hhEgGyLDnJVQ9YFHfWeATWBloccA+FgcD4nG8TuwX30v5+quq33g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622273; x=1801158273;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KOSgAkoCoJExH1/dUZAx0kyZEbdaXh1iAPid4m68Upg=;
 b=MC7FSRVejy+RlIG09liDBWf7fTLQRo/Jw3Io0pCoHKCZOYcyfbkNye11
 QprrFNz7iROwjqRg58AX0qxdj0WH8E9J9eWjeRfc8sovYPgKy18Z/5BDl
 JS90pCWidPwEnEbcI3vac0dXl1azGaAQtwDwDF/CA7XascbAlGJtcAnSU
 CeIMbI8ZM0I/ZLhf4tvSxCWzviht+KvAfVme6qeCzWEFP67TWZ3GU/2/q
 NZsCktJJDY/GNA3iifrAjEwIX4nni1QbLVWTbhT8DUxd6ygmY3s6K1IGx
 aUGYz5+vE7ZAKJEXy05FMxAfdxRdUA8DCDFzfycFicr8OCq+E6henQqS4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MC7FSRVe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 03/25] docs: kdoc_parser: move var
 transformers to the beginning
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,infradead.org:email,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0BE1AA7139
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAwMy8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IG1vdmUNCj4gdmFyIHRyYW5zZm9ybWVycyB0byB0aGUgYmVnaW5uaW5nDQo+IA0K
PiBKdXN0IGxpa2UgZnVuY3Rpb25zIGFuZCBzdHJ1Y3RzIGhhZCB0aGVpciB0cmFuc2Zvcm0gdmFy
aWFibGVzIHBsYWNlZA0KPiBhdCB0aGUgYmVnaW5uaW5nLCBtb3ZlIHZhcmlhYmxlIHRyYW5zZm9y
bXMgdG8gdGhlcmUgYXMgd2VsbC4NCj4gDQo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2Vy
bmVsLm9yZz4NCj4gQWNrZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3Jn
Pg0KPiBUZXN0ZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiAt
LS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDIzICsrKysrKysr
KysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTAg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tk
b2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+
IGluZGV4IGZkNTc5NDRhZTkwNy4uMGI2OGIxNDBjZDAyIDEwMDY0NA0KPiAtLS0gYS90b29scy9s
aWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9vbHMvbGliL3B5dGhvbi9r
ZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0xOTEsNiArMTkxLDE4IEBAIGZ1bmN0aW9uX3hmb3Jt
cyAgPSBbDQo+IA0KPiAoS2VyblJlKHIiX19hdHRyaWJ1dGVfX1xzKlwoXCgoPzpbXHdcc10rKD86
XChbXildKlwpKT9ccyosPykrXClcKVxzKyIpDQo+ICwgIiIpLCAgXQ0KPiANCj4gKyMNCj4gKyMg
VHJhbnNmb3JtcyBmb3IgdmFyaWFibGUgcHJvdG90eXBlcw0KPiArIw0KPiArdmFyX3hmb3JtcyA9
IFsNCj4gKyAgICAoS2VyblJlKHIiX19yZWFkX21vc3RseSIpLCAiIiksDQo+ICsgICAgKEtlcm5S
ZShyIl9fcm9fYWZ0ZXJfaW5pdCIpLCAiIiksDQo+ICsgICAgKEtlcm5SZShyIig/Oi8vLiopJCIp
LCAiIiksDQo+ICsgICAgKEtlcm5SZShyIig/Oi9cKi4qXCovKSIpLCAiIiksDQo+ICsgICAgKEtl
cm5SZShyIjskIiksICIiKSwNCj4gKyAgICAoS2VyblJlKHIiPS4qIiksICIiKSwNCj4gK10NCj4g
Kw0KPiAgIw0KPiAgIyBBbmNpbGxhcnkgZnVuY3Rpb25zDQo+ICAjDQo+IEBAIC05NzEsMTUgKzk4
Myw2IEBAIGNsYXNzIEtlcm5lbERvYzoNCj4gICAgICAgICAgXQ0KPiAgICAgICAgICBPUFRJT05B
TF9WQVJfQVRUUiA9ICJeKD86IiArICJ8Ii5qb2luKFZBUl9BVFRSSUJTKSArICIpPyINCj4gDQo+
IC0gICAgICAgIHN1Yl9wcmVmaXhlcyA9IFsNCj4gLSAgICAgICAgICAgIChLZXJuUmUociJfX3Jl
YWRfbW9zdGx5IiksICIiKSwNCj4gLSAgICAgICAgICAgIChLZXJuUmUociJfX3JvX2FmdGVyX2lu
aXQiKSwgIiIpLA0KPiAtICAgICAgICAgICAgKEtlcm5SZShyIig/Oi8vLiopJCIpLCAiIiksDQo+
IC0gICAgICAgICAgICAoS2VyblJlKHIiKD86L1wqLipcKi8pIiksICIiKSwNCj4gLSAgICAgICAg
ICAgIChLZXJuUmUociI7JCIpLCAiIiksDQo+IC0gICAgICAgICAgICAoS2VyblJlKHIiPS4qIiks
ICIiKSwNCj4gLSAgICAgICAgXQ0KPiAtDQo+ICAgICAgICAgICMNCj4gICAgICAgICAgIyBTdG9y
ZSB0aGUgZnVsbCBwcm90b3R5cGUgYmVmb3JlIG1vZGlmeWluZyBpdA0KPiAgICAgICAgICAjDQo+
IEBAIC0xMDAzLDcgKzEwMDYsNyBAQCBjbGFzcyBLZXJuZWxEb2M6DQo+ICAgICAgICAgICMgRHJv
cCBjb21tZW50cyBhbmQgbWFjcm9zIHRvIGhhdmUgYSBwdXJlIEMgcHJvdG90eXBlDQo+ICAgICAg
ICAgICMNCj4gICAgICAgICAgaWYgbm90IGRlY2xhcmF0aW9uX25hbWU6DQo+IC0gICAgICAgICAg
ICBmb3Igciwgc3ViIGluIHN1Yl9wcmVmaXhlczoNCj4gKyAgICAgICAgICAgIGZvciByLCBzdWIg
aW4gdmFyX3hmb3JtczoNCj4gICAgICAgICAgICAgICAgICBwcm90byA9IHIuc3ViKHN1YiwgcHJv
dG8pDQo+IA0KPiAgICAgICAgICBwcm90byA9IHByb3RvLnJzdHJpcCgpDQo+IC0tDQo+IDIuNTIu
MA0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0K
