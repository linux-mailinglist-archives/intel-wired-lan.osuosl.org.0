Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIn3C4jweWnT1AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 12:18:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09639A0317
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 12:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 987A84075C;
	Wed, 28 Jan 2026 11:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CZPs8nn9SU7g; Wed, 28 Jan 2026 11:18:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04F914073A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769599108;
	bh=bc9XgZiK6lMZRSdz4jRErg0tRlWONA/U9qScgKzPjV8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=flWmiDpaU099F6OojhK/GdjwVDy2UApIqMumoj5sRCVrj05HpvRGHOfu7oaC0mYOT
	 Uyhz5ailpZsXFjCDfobdIkT37Eoikw2x3zBEC8I9urur9nLa/Z3xPB0rAuAUKkxBP/
	 xZZNp7XDIK4+2ey+jK6+vMqlAhyPYRPbADhlRwyzBgfO6Tz5y8piux79ID0T10QCz7
	 gUZ5lY57WZkDopKWzbOA62Gomqxrmj4xdYQcqK6MKRdIO3MdpvPnvOforrAu86xjVb
	 OM8QSC5L4gf/DvuU9/xnzxmlfSkof1DYwyIbr6I8XboTeU8c3Avf91z1SrQM7suufL
	 MaMWokHmw0zxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04F914073A;
	Wed, 28 Jan 2026 11:18:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 14E36D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 11:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC99781865
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 11:18:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4a12EvbQC5Kp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 11:18:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E141A817EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E141A817EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E141A817EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 11:18:24 +0000 (UTC)
X-CSE-ConnectionGUID: cELY/2w0RjCQIwaDNKSLwA==
X-CSE-MsgGUID: GqIhhHkvQDmjcJTYBWrfrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70708450"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70708450"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:18:23 -0800
X-CSE-ConnectionGUID: CcnK4hBDSVaiYTqZYPSATg==
X-CSE-MsgGUID: lvD++tnUSbOYNTTMMQTirw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212344748"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:18:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 03:18:22 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 03:18:22 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 03:18:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U2prQVxjpHwC7ASRUp5oo1pESbvrTCMJSuinQ+6k/PCReAuc0xF7vsvZBPwLlxzjMmdLii21qdx8bUxtD/O3Y54UA04q8F5ppIbTRbknKBjK2QrtkJIwqgCo0oaL2GB4WLCVFAE2uce4gDxbeV7YakL+4dXvCNksDDcIm2gK3T3UyWnwTQCdNT94nVxyHmAtVcClHZgb49DdVwKk7pWqz2KrkEsKN25DogO0xW5VvlZBtuiszhVubxIjtgmwhM5T2Nt1fBRY+uXbUwEdkZhfkJc60d1vhd/TxpflQeKfXDZ9CKyqjN3utt47+PgQtFCFsC0tQbrK/51x0Xv4c1YQ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bc9XgZiK6lMZRSdz4jRErg0tRlWONA/U9qScgKzPjV8=;
 b=muJcXMZivxHs4RPbFhha0xfnsH077SRA/p9MNu4Y95zzKfsHVEgeRFs9648i2kp8A3ftMtLJkB9qjwqYANLl5GbraVsyCitedSZCiczWx31rUzqImu+36yKMGIc3ajqyawtGLS5oTfNvNY2My90a7AWdv91A65aklllHzgeQkwrUpUKljdd3gdiyiC62JFW5e4RWYdI5JfikwrIpqevUlb/22rh76C0/TByNHHCJsevp0gf3d958lMbjNJOTiqbCkiTrgNYbnE976bJCi8unE9mjEZTIppu6iMVLYhq0rXdgAa/esdWqCU960vWlSqNIQXtSKnIBvNMcCPqxXQQPRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by MN6PR11MB8170.namprd11.prod.outlook.com (2603:10b6:208:47c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.17; Wed, 28 Jan
 2026 11:18:19 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%4]) with mapi id 15.20.9564.007; Wed, 28 Jan 2026
 11:18:19 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descriptor
 buffer to little endian
Thread-Index: AQHci7vFHDXLLq1MZE2JCE1M4M75RLVgMC+AgAA77QCABXnGsIAAfm6AgAEQl7A=
Date: Wed, 28 Jan 2026 11:18:19 +0000
Message-ID: <PH7PR11MB5983BAF65CDB52C15B8C6AFBF391A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
 <aXPU4YQi73T088lS@horms.kernel.org>
 <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
 <BL1PR11MB597993D5BC80645017BF6F60F390A@BL1PR11MB5979.namprd11.prod.outlook.com>
 <d3193abf-e758-4ee8-995b-72d850f99c1a@intel.com>
In-Reply-To: <d3193abf-e758-4ee8-995b-72d850f99c1a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|MN6PR11MB8170:EE_
x-ms-office365-filtering-correlation-id: cb3f0624-29f9-498b-2664-08de5e5ef0d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?THZVb1oyTGFJOGlaRm9VUEdSR2t5TS9nSWpYaHVwNllMWmg0SC9nRXh0L2F6?=
 =?utf-8?B?WmZFMTFhVjRwTE1kckdGeVBTZWErL3VXbWFNT1Jpd3NYQkhnSEhhYWdJdTZ6?=
 =?utf-8?B?ek1WbnFOdk0yVCsrZ2lPbUhtTDhFNU1ibWRhdk1BMnNSUzRWUnZPZGl4UWxU?=
 =?utf-8?B?N0VWNWxtcGxKL1lnNkowekRGVHNvOUUvV3A3ZUx2aXZUM1REN1RsUHdpYUQ2?=
 =?utf-8?B?SndaWmZ4UGRTNnhmaURGYTVERCtJVS93T0dtUmRVUGd0VGw4VEY1djYvdUxr?=
 =?utf-8?B?dlMrTGlwb1JESEpHVnowRjBEcVFCRkt6UGZjU0JmSGhHV1RzZXh4YUtSV1hj?=
 =?utf-8?B?YXV1WitGVnFKaXdaY0k2dC9FMmFrU1d6alVYUUZSQVdHQys5ZlNnTXAvaUZZ?=
 =?utf-8?B?aGdsZVNxRGl3V3J6aDIyeWw0dE9jS1l1M3NBY0VtQWZPWU1jVlVyN0o0cFR3?=
 =?utf-8?B?dEZxNEp3OHZEL1N0MlZSQXZ2bmJwbDNpUlFjUkt2R1hYN0NiWHdYVmJ0N1FZ?=
 =?utf-8?B?eFZmZEhOcnMyTmRMaEdzZXJEWmdLTWZmZU14RFZBcExUT3A1am1ueEtES2Fu?=
 =?utf-8?B?TkY1ZUI3bkpHdlhzNnZQYTNick9yYnBRMHBmYUs3U2F5TDQ0aGxOMjQ3UVow?=
 =?utf-8?B?NXlPdVVaajVIdkJkMnJSdWFNUk1VdVh5cEw0ODJ2RUlYVGg3dmZtdmx5UmZX?=
 =?utf-8?B?SEpDb0E5NFRSdzZkRzM1VksvZjhRZGQycWZVNy9mdEtJUjNIYXo2aEo4WkJz?=
 =?utf-8?B?bzVjbHdoV0NUVXR0VHYreTZlSWJNSllacXhsWnc2aXdUc25BbmdjSnh1TG9N?=
 =?utf-8?B?WW9NZTZWam1DTkRsVU1jVjZ2WDVaTGpiZ2NsV3owZ3JzN3hablBkLzVwcDlP?=
 =?utf-8?B?cHJzZVlUSHBOMWdHZG9HNVdRb1dlZm5xQWhMVGtuM2JoOGd0T2dncUJZMks2?=
 =?utf-8?B?VjhldGlqcFpYSkFtbGl4UzByL0xwRVQwTlFvOTVGQ21DZ0RxMlp5WDBPUFN0?=
 =?utf-8?B?bkNRVjcwVXhCbnYxYWtpTmNsUllSR25ORmZSMjU4dzNDcElnTkNkNU5MNjhj?=
 =?utf-8?B?a1ltellURWZXYnFzcEVhWXhMVWowKzU0TmJVMWlMeWQ0NVZKTlZjWUNLOCs0?=
 =?utf-8?B?MjBxUVBrVEwxOUNMajZLaWdHY2tGNVhaNzg0SDdDQ0ZGNHBJK0l3SVZQZHVN?=
 =?utf-8?B?MnpZNFU2eGJVZERhemVuNlp2ZVhNMVVGQlJXZHVhbURYM3VPTnYza1Z5N21i?=
 =?utf-8?B?bllnbytwcSttdXczWFVvR0FyMHJjdTdlMkRuOFdTcnJybUxab3VDd2Rscjk0?=
 =?utf-8?B?d2Z4NDVBRHFaS28wMW5QUXdTWWVzbHJib3hrcDVzdzhFazVNVnIwaTd6bGRU?=
 =?utf-8?B?U2hZdWNJbXp4Y21pK0tYSzZObEsvUVhSRnBkTHFrZ3BPc3Z5ZC9NblJ5LzJR?=
 =?utf-8?B?Vk02VlVDbXF4Zk1sN3o5Y1QwcTlQM2E0SHFGbjBYZlppUkpsR3N4SHVIdWZG?=
 =?utf-8?B?YmNSN08yWjlpTkpPdVV5L3dMenlHbmJ1a2o4ZzdWY2doTldINEFrMm9hVi82?=
 =?utf-8?B?d2dhR3NGVXJROWJwSkVwWDRNODBTcU91cUxaTDRzaEVENjZZVUlreUhvVnls?=
 =?utf-8?B?eWVWWlJFcEZ3c1plaXZyclByZFMxWlB3UHptMG5pZjFLZjhZWVpwQkozRUZO?=
 =?utf-8?B?ajlab2Z5bHlQdzVuL2RWNUF3TnBSWDhWWkZWSDdkNktlUWdSYldPM3V2K0tu?=
 =?utf-8?B?VFNnTGVzbkJzWndUbFIxU3EyRXZNQ1pvUGxldjJVK1hHczdxKy9LZlQ5Q2RK?=
 =?utf-8?B?WVVjRFMwYWVIUzBFRC82UWN5NVpkTTdTRC9KYWZudENuTlNNcTFvdWRXVzBu?=
 =?utf-8?B?TmVSRlFFSlppTUs1SkEwUDBTUTVROC80QklWTHJsdjM4MHJIbkQ3NjQzano3?=
 =?utf-8?B?aUxYYUFuOGJ2SUxyZ29HeHhnbDFkRWRFTFNncmR3dmhuRE5La2lva0ZablpC?=
 =?utf-8?B?S0tSc2RRcVkrQkJra3oxcUhhQVhiMVBudjJPSDQ2ODVsVXlMdTdycWhGdCtR?=
 =?utf-8?B?Q1pLdTVXbkU4cUtiQXNsUlZRekdQaDhibTFlZEFmOVJ2UVhsQ09VTW9KVEtp?=
 =?utf-8?B?dmsxM0p4MWZnS2l3VnVFTHp2cTJuM2hUcHd2eThwSC8wQ2tpMlVhTzE0VXgv?=
 =?utf-8?Q?rey88Z+EXm1Qm4fK7cdbUR0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjJkdkhWNkFpc3BMTEZZR1pFbDk2MC8rLzAyODRKSnB3R0NVYy8yVmMwa2lJ?=
 =?utf-8?B?bHN1bHpOSU9pM2ViaGR3SmNkYXF5OFQraXBXRlFFczJuR0tjTzlUYk1oUFov?=
 =?utf-8?B?VFFWVzJzeU52VTlSWU5TOHFuaDdPTjR4Ky96ekI4c2hPZHdnejBWelJIdWg3?=
 =?utf-8?B?ajk4d2JUYW5YeHR4ME8zMHZzUTdnTnp5R2svT1Ira3NwcFpRaE1FekZlVk1T?=
 =?utf-8?B?QlRGY0Vua0hvTjVIcmdmMVpWTXh0aCtsN2M2UTRmbHNlaXQxM0NYTDlLdFJP?=
 =?utf-8?B?VjVpMzV4ZFpnQmZJajFvOVdRN1M4VUdGZjdjQks1aHNqYjlRalhkTXJmcmRJ?=
 =?utf-8?B?ZW5DQmN2S3dlT0JwNnBCVjZKMFRMM25NV3YwVVBTaXZjd1ZVc1ByTTViZmt5?=
 =?utf-8?B?dnZTUmNLb3RjYmVlbFZScXltaGl6R0pmdStDdGNOVVltYjN3WUVxNldZUUdV?=
 =?utf-8?B?OHNPa2lraUZ2RTd2OFZPR1NTVXpKT09ObGk3RU1wTXc4ckVYbWI1STZiZnpZ?=
 =?utf-8?B?UG12VDkwTVROYzlaUWhLVDkwQnVZem1pa1l6VTMvWi9MdW1PNno2TEpKamFX?=
 =?utf-8?B?VTNuNGJQMTRMblpUSmcwZlIrNTluanFVQ3YvOVNzUnd1UWpPL3VKUE90Z0NR?=
 =?utf-8?B?MGR4ejd2Y0o2c3h3RUhqdjc1Nnhub0d1dE50ZlNsQXNlbnBkUDhJdDJERklq?=
 =?utf-8?B?L2pCTXlZaE5rbTdxZDVFQnRUakpJVHRZSWFHcUxSK1ZsR2pPOHhEVHhkMzJV?=
 =?utf-8?B?NDBqMHFvOHRSam13WEJSNXo5WmRtQS8ySE9Tb29LQWpMZkNYRFYzME4wRG5E?=
 =?utf-8?B?UVBjVHluNy9GQ3liL1QzUzNGRk4xRzNxRjd3Y3YrRmExM1dCTlZnZ0FkeWZK?=
 =?utf-8?B?QTZyU2JCUGRsME1kVkFvSDhGR0ZSOHlaamRmQTJFU3NodjcvVzJubUJqTjUz?=
 =?utf-8?B?R3NzSDVrTzYzZ1p6MUE4bGZSRWlnSXJqRVBaeHN2Z05ZRkNqVEUrQmUyK2hO?=
 =?utf-8?B?S0tna3FnRExTWnRMUFc1ckhpSUQvdDJQaUlZV1hNZk14MFBZRUtnbllWYnNq?=
 =?utf-8?B?MjNlYkdESUZaMVE1Vy9wdnVvWjZpTUhqMFhGTlJKYXBZcy9HdTJxQ3d5eVVU?=
 =?utf-8?B?VDlqVmtTdzRsWVd1bnpuVjZRemRtUFRlZFZyc3d3N3NDYVU3MEsxNUd4WURy?=
 =?utf-8?B?Nzl6bnpaa1dLYkc4R2tBdWVGeEdrSHg0RnBzNU1SR3cxWEhreEJWTjloNk1T?=
 =?utf-8?B?bHNxL3pQbmZobVlJR0dmNWRBQzRNUWR4ZTlieUlubjBucHoycXZIMy9FQkRv?=
 =?utf-8?B?bGI3TUxIb2xtSGNvVDdObDZrWGd0K1RlMFJJQm45S1c3Nk1vL0Y1dUNRcDE5?=
 =?utf-8?B?QUVMNTdOS01jUGxaaTc1K1BGZ0hCbW4rUUF4ZHNpY2thMzdGSW4vMmxYMlI4?=
 =?utf-8?B?cGNRZW9GMlJsb0htaW1FNjdCQ0diZzZKTmppSEgwdFRaV3B5TmxwWW9XTVVq?=
 =?utf-8?B?Z01NRjdTbjZzSFB5eHBON3JxdnRDckNXaXBLMnJpYmtxNnBiTnpBbWxXRUhq?=
 =?utf-8?B?YXVpTXZRdGN2UElVWnM5YitvQ2Zyd0dFb2lMR1l5V0RVM1NoZkhNZnNyUzMx?=
 =?utf-8?B?bWNxbGpzYnpxRVhWampJWXk5eHN5Qm15MXVtcWFJOFlVaDRwdnRvY2lRUVlX?=
 =?utf-8?B?MENIQVJyTVZmRE40Y3Exa3VMaStEWlplWldqQUhIejBGeTZ4b3NoMG0wa2Va?=
 =?utf-8?B?aHpNTXArbktPSzZXZWxyY3l4UkMvOXd6TklJN245VSt5cGhka3ZYSUxXQWRX?=
 =?utf-8?B?VjRGeTVSTmx1TEFYZmRPR0JiN3NYaEFIMTZBaXNSeDZPa0pPVlV1K1NJYmhY?=
 =?utf-8?B?VVpXM1BmTnRuYmhLQXoxOElrTjJweWZrN2VBYjljQU9yejYyb2VUWHRabjFp?=
 =?utf-8?B?eTQ4ZnhXb21lZEo1bjY0VlJRN1JNcW5lZzdrU25rUUJPeUltc3JSS05PSW0x?=
 =?utf-8?B?VUNhZlhmbk9jZkhQdUNrR0I1QWt6dUlnU1hOMU9jU3dzUW1PenZLRVk5bW96?=
 =?utf-8?B?TkN2UVVGZzVGWlYrbEROSmoyaTN0cisrendsSFIyOXkxb1gyTHU4dFlxMXN2?=
 =?utf-8?B?MHRqR2dxazRZQ3g4cVRVTGs4clllTGtad290SUd2VVNOQUIvemprbzNWUDhL?=
 =?utf-8?B?eG9OMTRTSkp3ZWFENTlzT2QwTzBMeDg5MmhWWTNpQ3NIc0d4c3lWOThMNFFG?=
 =?utf-8?B?Tk40b1AxVWFWWHJHRHpCQlNOTUxuOTlLVndKL29INVhpWk9VWUpRSFk4RVRC?=
 =?utf-8?B?RzBKcC9DdUpWcHJFY2ltQlZmQkVKNmQwZE5OMWlkY0Nub3YrQzVoUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb3f0624-29f9-498b-2664-08de5e5ef0d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 11:18:19.3368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V7yMC2HARAKTVFFLLgBDXCYND3R0pxGCLspmBlY6ZW0itBXaNj4RXx+VGxBNVdDQ1bJ0pLuMOayB2zNJR8mcNEeade465+aSq9YkGyphsD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769599104; x=1801135104;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bc9XgZiK6lMZRSdz4jRErg0tRlWONA/U9qScgKzPjV8=;
 b=k4bhry5tB9mkVqze2sZ+nMkagj+xaHTZPxHVjfm5thkQ6yOBrvClMiOi
 RHxLMx86EI5lKfaN7bs7mL6DBRVaXMJyUVbLVWFS//eZeddDn6hFB0fvQ
 j8gZ3w3BBXymI98MdbDipXRAAMlLAOdJyhFtpCBiCE2s5tm+4HQd4jKLL
 jsBks6+N+WHQLxvjdQpLj+RfPla3FgJGAR1MIw2h1uiUxOL817mUOEhdM
 517g5QvrrMaKtn80LEmF16xgFG321OdqCYuPRGARbc2j9JIem/T4NpInf
 HJuw8GT9fpv/PWtWd3F6ILyBJmHPpxxibmbNwmhHyoJiOkUQH+caJ9icS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k4bhry5t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
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
X-Spamd-Result: default: False [1.49 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,intel.com:email,PH7PR11MB5983.namprd11.prod.outlook.com:mid,mpg.de:email]
X-Rspamd-Queue-Id: 09639A0317
X-Rspamd-Action: no action

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogTmd1eWVuLCBBbnRob255IEwgPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPlNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMjcsIDIw
MjYgNzo1MSBQTQ0KPlRvOiBLd2FwdWxpbnNraSwgUGlvdHIgPHBpb3RyLmt3YXB1bGluc2tpQGlu
dGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgU2lt
b24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPg0KPkNjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMu
b3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgZGFuLmNhcnBlbnRlckBsaW5hcm8u
b3JnOyBwbWVuemVsQG1vbGdlbi5tcGcuZGU7IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2Fu
ZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj5TdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYy
IDEvMl0gaXhnYmU6IGU2MTA6IENvbnZlcnQgQUNJIGRlc2NyaXB0b3IgYnVmZmVyIHRvIGxpdHRs
ZSBlbmRpYW4NCj4NCj4NCj4NCj5PbiAxLzI3LzIwMjYgMzozMSBBTSwgS3dhcHVsaW5za2ksIFBp
b3RyIHdyb3RlOg0KPg0KPi4uLg0KPg0KPj4+Pj4gQEAgLTE0NSw3ICsxNDYsNyBAQCBzdGF0aWMg
aW50IGl4Z2JlX2FjaV9zZW5kX2NtZF9leGVjdXRlKHN0cnVjdA0KPj4+PiBpeGdiZV9odyAqaHcs
DQo+Pj4+PiAgICAgICAgICAgaWYgKChoaWNyICYgSVhHQkVfUEZfSElDUl9TVikpIHsNCj4+Pj4+
ICAgICAgICAgICAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBJWEdCRV9BQ0lfREVTQ19TSVpFX0lO
X0RXT1JEUzsgaSsrKSB7DQo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgIHJhd19kZXNj
W2ldID0gSVhHQkVfUkVBRF9SRUcoaHcsDQo+Pj4+IElYR0JFX1BGX0hJREEoaSkpOw0KPj4+Pj4g
LSAgICAgICAgICAgICAgICAgcmF3X2Rlc2NbaV0gPSByYXdfZGVzY1tpXTsNCj4+Pj4NCj4+Pj4g
SSdtIGFsc28gY3VyaW91cyB0byBrbm93IHdoYXQgdGhlIGludGVudCAoaWYgYW55KSBvZiB0aGUg
bGluZSBhYm92ZSB3YXMvaXMuDQo+DQo+Li4uDQo+PiB3aWxsIGRyb3AgdGhpcyBwYXRjaCwNCj4N
Cj5Db3VsZCB3ZSByZW1vdmUgdGhlIHJhd19kZXNjIHJlZHVuZGFudCBhc3NpZ25tZW50IHRob3Vn
aD8gSSB0aGluayB0aGVyZSdzIG9uZSBvdGhlciBpbnN0YW5jZSBuZWFyYnkuIFlvdSBjYW4gc2Vu
ZCBpdCBzZXBhcmF0ZWx5IGFuZCBJJ2xsIG1ha2UgaXQgcGFydCBvZiB0aGUgc2FtZSBzZXJpZXMg
YXMgdGhlIG90aGVyIHBhdGNoIHdoZW4gaXQgZ29lcyB0byBuZXRkZXYuDQpUaGF0J3MgdGhlIHBs
YW4sIHdpbGwgZG8uDQpQaW90cg0KDQo+VGhhbmtzLA0KPlRvbnkNCg==
