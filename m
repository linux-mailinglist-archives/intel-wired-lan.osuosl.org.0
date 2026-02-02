Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN85InnQgGlBBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:27:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9E2CEF3E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C33C407C7;
	Mon,  2 Feb 2026 16:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ssomlvtjM3d; Mon,  2 Feb 2026 16:27:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 466EB40870
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770049654;
	bh=HDD3YI8pyZ7B7Mq325Lu0Cyvb0lulX7xGgN1lymEVGs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ysOZF4Fn3cS4oC5ApYT854bdu3JCufOHq/zALDxZDEUtFDJSdIiI6bROKwC0QURR4
	 xxNvmeQI/4Fd62euAUd30Q+m2VCs6/o4jgsoE3yyGCpRdDxFx70/qwpJiO/1Ll7xMB
	 WlQ7VYMXtDOAZBPnPRz0c/WA4NH7FYEVzjq4bsoEc+VhKQ9f+uILkj3AX/n7ejXt7O
	 auTGC7jJNf/iBUUbxsHV/Wh5dlS+zKFKjn+j8TfPEgleDxRZgBVXrqdxcsfy+xBQw4
	 8ywzOlS8I5OlUnvb1Wg2o7uvB2RfLzojiy3OnWyzXFja9wQ0RhfvQxekHfdHKiuxVL
	 rgMm8jdNFw4rQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 466EB40870;
	Mon,  2 Feb 2026 16:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DBD7E149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9B5060BBD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sej05tPBdPGA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 16:27:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E933660B60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E933660B60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E933660B60
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:27:30 +0000 (UTC)
X-CSE-ConnectionGUID: lcgikbfNTNCanNI8EBfQ5g==
X-CSE-MsgGUID: o9ijCymLSyuv5bVL/MurSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71264242"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71264242"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:27:30 -0800
X-CSE-ConnectionGUID: XBI7984MRcOG6vR0NmS4CQ==
X-CSE-MsgGUID: TQa/00SiR9CdM0t2XpM8JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="213682004"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:27:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 08:27:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 08:27:29 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 08:27:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wLzzVJy5KqviqnbSd9DrMU7x7e0mqZkDALj3P8rSbBj7VDo+YNUWQF1X/B5E7MaOyh7DLGHbGR2ZgukhM7EWH2XUi69ZoZ2W3GfK1E1BQeb5p+HghNdffio3AEJ8lyXuAKbPGvu9GFSpOld31uY3LIQy53Njn7cI18inhudy3RGG+zVgva8w5NkgfxXpVFri3PXbRdu+DzVxsOAyFr/qVHkOYRmpnJQMcChnfQDPMrcQZb18VDLsiUIBNocFYDTvWhnUpgWlD1BGUzJm8Il3i8JRu9s7HLjpGUys4E6Jt30rzb0vQeGmzvbqyg1K9wnGAXIbvTZ0TzB28cvOXV8bLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HDD3YI8pyZ7B7Mq325Lu0Cyvb0lulX7xGgN1lymEVGs=;
 b=miwnqMeJvCJan723G4HpZ06KPiC0L3St3kNcV6CJUEoY7WyPjn6mZQOaQVUpIR5Fml7069UcFRU/XY5HJvrivW5pMWTVf/gMhO1X7kwktGcX4RtKjII4hXiN9UQRwqaUDE/2pU3rKXJCDEzSrQZrue5h7uno1our6Dw+2n/aQgK9Cu3fi6Baqfxoczt+MMrgDMA80lMZ8Qf8HXzcvk0+LYI3veEvIX5pouoSp9GzJAN9FRsMbqbEFwd2OT7jjfnDR5t4Mg4GkYPmNGiZbAHxcO76p2K5q+JMlZfPW+ovOcuoRkrBDSgFPgnQu3LeT7BhHTyUecORPfboLVb+s4SzpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 16:27:25 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 16:27:25 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Li Li
 <boolli@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] idpf: skip deallocating txq
 group's txqs if it is NULL.
Thread-Index: AQHchBivdyHdOsNfskK96kHaSvWKG7VPtgqAgCADQCA=
Date: Mon, 2 Feb 2026 16:27:25 +0000
Message-ID: <SJ1PR11MB62970818D081F425257EDE519B9AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260112230944.3085309-1-boolli@google.com>
 <20260112230944.3085309-3-boolli@google.com>
 <DS4PPF7551E655297416F46D9B28A64BF2AE58EA@DS4PPF7551E6552.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF7551E655297416F46D9B28A64BF2AE58EA@DS4PPF7551E6552.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8297:EE_
x-ms-office365-filtering-correlation-id: 61a67e90-2293-45d7-b683-08de6277f318
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VXVPdStWODlsdU90cXJtSTBMZHBKUjZ4UEEwTENxcTl6UGVmSXUyMlJ4aWtI?=
 =?utf-8?B?VDZLdVBDUGdJZG5aZzVyaElQVzBJdmdXZTBwVWJwc3czRTBEZldJRjNJbmhs?=
 =?utf-8?B?RVRZZGtFQVgvVU5taGpGRm1zRDlyN0J5ODMyTVZ2azNDUEhFdGpVdkFzQjN6?=
 =?utf-8?B?Sk1LcHoyUG5kbUZKS01ldFRWRnIySUg0bEh5ZVJ4aUd1VTBHY3R6NWcxeHNF?=
 =?utf-8?B?TTR4MDNKK1QzKzd0d1RXU1V4TlR2TW1YSXlkT21FcEh3NHJ1dGlST0J1MTBa?=
 =?utf-8?B?Yk9sZkwybW9DNHNndlNvb21rekt2RGFpYVJtM1RjOW1XSjRCWWExVHk4d0oy?=
 =?utf-8?B?Rm9JMksyeTZSNFBaRzZsMUZrYVJncmxQeEhqR2VFZHEvcUUzQWFIRng3R2la?=
 =?utf-8?B?RkVFNm5KZE05RWlJTko4dDhGKzN3YUlMQ0NjakpkUnVicjh1Sm1iOWFoWUNo?=
 =?utf-8?B?UzNxVEpNMTRCNmwwNjZZejlHR0wxdENKYVhJbXRjR0dJcnhjcXVUaGVjL2VM?=
 =?utf-8?B?Y3FITHRuYlRDRXpNNHg2c21qWmk1em9la1ptaWdBYlI2NVhjMDlRMzV5VUI2?=
 =?utf-8?B?eTNoV0ZscEJ1WktJblQxcEdwMzlyc3lJaTE4d0FKNTFnWlF0eHVaZEE1dS9l?=
 =?utf-8?B?ZERXQlBqRlVvem5CcnE1MHFud0ZrOUg5MkxqN09wRkl6RSt0RFQ4VGdFN2ps?=
 =?utf-8?B?Y3l5RHFkWFlxWFFpQmlqZVFSaHlWSGlqS1dITXRFUTlpZUFXVTdCbFo3cUVi?=
 =?utf-8?B?TUlTaGEzT1NJV3UzNWNuQ1l6SHpEN3JtS2RnMnR1eGN2Nnh3OUlmdUN2Qmk4?=
 =?utf-8?B?eWlmQnpqY3doUG5zeDFTVjMvV09rSGx5TGlwQ3ZqYzh5cmxVaTk3ZHZrNUEw?=
 =?utf-8?B?M2UyYnZYUUlGRlJxTlA5WUZPaEYvNkZON1lSREZDV21FaDJFTm40d0FlZjhE?=
 =?utf-8?B?S1Z5cUxCYjhxWTM2M2FhNTZhUXNoeG1zUW1DemFpSGwvdnVKcXRjc2NnM0lU?=
 =?utf-8?B?anVMYVhKT2tNU0FCVWhZTFBKcjdxQldoMU9ieHQ3WGJJZUgvazI4YklrNGow?=
 =?utf-8?B?NVFyaUZ5a0UrVld5S2FYWUNJNnpEUldhWGxkUlh3ZXpXc2s2dkdTQXMrSUdy?=
 =?utf-8?B?S1hQRi9qZWEyZXN5WkQvdHQ2RzRCazFmTFdhZUhHU1IyZG0vU0RMdVRNbThn?=
 =?utf-8?B?ZFZnQmxndXBqQ2JsMG1qdkN2YTFlcjZFU1FaTStHYlAwdnppN0FxNDVNekVu?=
 =?utf-8?B?bDZCL1RmTkpBcXVuMFFMMlVyaG8xMnBQUy9ra0orUWhHellmeW9yODNYREt0?=
 =?utf-8?B?MUZrWnVKd1Bvd1MwWVNJbjNjSHhXWHU2MG5LSlptUjZydzU1T2svdU1iQlFN?=
 =?utf-8?B?Z2UwZmxPVXRhTlk1azhhQWhYakJYOHFTYjJjbURjemwrd2VZampLTUcvN1Bz?=
 =?utf-8?B?eld6bVZGSExRMlBzV0tsbDVRMWt1TUxHVXNpYkNycDZxQmZJRWhBZzNuLzM2?=
 =?utf-8?B?WnlGWGRFQkhMeDllaU1qTEYwdlE1T1BmQW4yMnplVzhVcHJqZGRlUDhiZzBQ?=
 =?utf-8?B?YlJQdFJlVVVKQ294N0dMZk5oSU51ME9JM044QWtKY1BKN3lQOElocHFkanZY?=
 =?utf-8?B?WlNoOXJMb05JRjY5c0V2cmQrT2MrNllPM0FwS0cxVzMyMm1wRUo0bG5hcExz?=
 =?utf-8?B?WlhSTEFlZkYvbEt6SS9yNVZiZnFGUzE2cEtZUkNlNk5pbWNrL0MwcHBzQzhj?=
 =?utf-8?B?VnRKRUVrTUdHMzdEczZOdEFRYVg5empyYVdpSUlHNThBVUJzbXhnaElDMWR5?=
 =?utf-8?B?YXpwd1RGdHhHTnUvSnNENGNrUlJkT05SVExQbjJ2RWNteXdmdU9QVVRDeUpm?=
 =?utf-8?B?TERrd1BYYS9MeTNjUGplcS9JUWwyZVMram5pckdvQVV4M2ZEZGJqNjk0aVVa?=
 =?utf-8?B?S2Znc3J3OVg4cGlBNVRqbHFPQ3lRQ0t4MTkrK2NmaUhud0JWcGNheTBvS3l6?=
 =?utf-8?B?TG9LUlJTRU5MTTZaUzVOdWRrNlFoZWNxVWxvUFduNENCUE5IVFE2SW9KWkU3?=
 =?utf-8?B?K29zazk1c2VQV0pOcnMwWHVtM2g5SjJ5T1g4K3h4QlBpVzdmdFdRc0Y1a0Ry?=
 =?utf-8?B?UWlBWlBaZ01oTnp4TWt5OEdmTkhkS05CRTI2cDV4bE9xL2luYTdVTDgyN2RZ?=
 =?utf-8?Q?4GWbU+Vk0wa8INE0glKQeR4LYTcILh7fJazwnDX2gFe6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkJrRFVYWW5FUmRxcG9uY3MxZnJXWXVUbmVNcldLV0FCNWxNYjdld1g4ZDUw?=
 =?utf-8?B?aU9Cc05ZdWFmczFPMXhQMmdXZHFwZDdxa0E4ZHJ1Vnk0bVVtNGtkL1U2azcr?=
 =?utf-8?B?cG5sQ2FwNnFUMVU4VFdmN09LUVVCMnF4N0JNbk5xTGwyU2dJNGlWTHF1TExw?=
 =?utf-8?B?N1YvSWo0UFg1UXIrRWJKNlkyK0k5Q0I2enlreldxU3JKZGhQL3NKcTlCTGQw?=
 =?utf-8?B?cWtndGo5QlEydTlaS0ptNzJvRjYrcHlZMWRkS0xvRERQRDNwUFZkcXh4RUkr?=
 =?utf-8?B?cnRSd2UzTlRDL1RwOHFmcDVabktMOHJ4ak5zMCtraGlIbTh4cFJFZHQ4ZTc1?=
 =?utf-8?B?cDZrR21zbUxnYVNvaU9Cdm52eUsyclJTS3RxYzZmaFNBWUtIR1VjV0Z4VEhm?=
 =?utf-8?B?N0VjRDc0VHpRN24remlxRGMzWHNxUWxTdnl6Wkg4N3JYeC8vM1VnT2d4dW53?=
 =?utf-8?B?N0o3RlhiZjc3S0N1K1FyQ0VsOWJqM2RkWHFIZXlRYzZXVCs2aXVHYlpVWGxI?=
 =?utf-8?B?ZXNuczZFSitVa3hyOEtHMkdVZEpCY3d6SnI3MWFFMUVpVVFteUorSnVva1RM?=
 =?utf-8?B?cndLc3FLVDBLRVRrTmVjN09pVDFPeUc0NkhYVDJKb2xVVEhqdkZXb3I0b24x?=
 =?utf-8?B?bXFtcmJDQUdTL3ppQ3c1dWF0bGtmQWZ6dGdDeXFmSWZJR3RxM3VHaWFUWDZV?=
 =?utf-8?B?NTNzQS9Hcy82OGRvZEJTMXdpYnl2bXdwVnhhbU95ZFBxQ2g1OGRWMU45T2FO?=
 =?utf-8?B?WXVRTjljS3N6aXpZWDdhTEdtTnB2Y295TzROUFlORzhIL0t2VFdRMXBLem50?=
 =?utf-8?B?dElhaWFlWkJrdXF2SEhqVDNUcU9TTjNrWUZ2dE16T2V5RVlSNkZnSWVVaWYx?=
 =?utf-8?B?V0RqOUxablNCQjBzMW5jYXVVZm1xMVl2UFZoK3VGWGJsQ0k2eWFUVmEzMWtu?=
 =?utf-8?B?Q1YrWUlaUDBoL1YxU2FLaHBUY0pqVk5Fei9OSTNjdnhQdkZsMWlvOVBTcnVo?=
 =?utf-8?B?d2wvc21lRjNFOXBDZ2RqTlliOGtFUVVuT3EzUlM3SVpVU1FIZEpHK2xVMHdu?=
 =?utf-8?B?YWNIZC8zZjcvWERSZGdEYXJGNWR4SyswNERhNDJnNTZhMmdKTFF6UTV6dERJ?=
 =?utf-8?B?R25ZWnJtb2FyVXVDbUNSUlhiY0VDb2FOYnpJQ1JTV3FGWklJUDBUWlF2NUVW?=
 =?utf-8?B?QlBsd0NGNHdVZUU1UG5UbFFtTndmUFNuVENsWEc4ZzBSQUQ2bzVOR1YzTXVF?=
 =?utf-8?B?VzlFeXBKblNBdDlQQkZuVStiVXRKZnQrQXBBNlRnaDVpYXAzdDUyWDQvR1Vp?=
 =?utf-8?B?dHRzL3VYcmJHWmlJRG5mQVVxRlhUUEpDa3FIT090Unl0Y3c0Vm1vOC9lQm5F?=
 =?utf-8?B?Z1d6WUlkeFJ4QnRGelJheCtRKzVtdUZLMUVvaVRuSHRVWFhoSFRHRFh3L3Jy?=
 =?utf-8?B?cVJQTTR4RldORHpkUnd6UHRjcFdyYjBLbVgrMHk0ZWxETDg5c2FhUUYzcTIx?=
 =?utf-8?B?ZHF1Q2QwMm1iTFdsMmZyM0ZyT3NHUERKZXNxVUdCWDFiTytSbjdad3c4VlJE?=
 =?utf-8?B?eXJGeVRmUHMzTlY4RUpMbVNaNWZ3NVh1TTdBbXFzWUtoZS9ncWJmZ1R1M2Vw?=
 =?utf-8?B?STVidU9KVk13U3NEMFpUalNzMUg2NDUzR0xDMkdjYml0dXNSSWhHOFRFWFJu?=
 =?utf-8?B?Zndwb2JEdG4vR1FHbTlWNFA0eGw0dVArQ0FKbGZZVEVHUThZN0h3VGlKY0VB?=
 =?utf-8?B?d1pVdnV1aWN3MGR2NnpUdURyeXNCSnBkdERJYnNnKzJtU3FVY3h6WWdVaWFC?=
 =?utf-8?B?NXlzZnlFZmo3T0UvZXBWWkF2ZDFWOVI2cnVPcTJtWmtRbmtGNGdzMTh2ZjJH?=
 =?utf-8?B?eElCbUJ4S0pFc1k2WnJ5KzBDZC9kbnU5U3Q2NlF6Wkh2c2Q1U3lONkc4MzFr?=
 =?utf-8?B?M3dkYUJRRk5Bc1Jid0xvaXE5eUZGWktqMFFNai9LSm1zditZMU53TnlUSk04?=
 =?utf-8?B?Rk94alQxZ2hIZkticy9ZOWRKdWhBK0NYb1hDaUd4alVLNUZKeUloVTVxWEM3?=
 =?utf-8?B?RDdidkoxWkdzQlk1bVozNGkyVSsvREVuNE9BMXFsQWpNUGVtS1BueVFYUE10?=
 =?utf-8?B?cklVRFplMngybnlJNkdrdWRkUEJtcTNSejV3ekpBcWRidXJUakhUdG56ZkVZ?=
 =?utf-8?B?UHUvOGRzckxacll2Ym1OS0ZvUmoxaENaVitTOHQ1ZUp1T01KMUR5UVhuY3FG?=
 =?utf-8?B?TXI4bThVRGhQK09oNDhmY2p3c0hKKzhYWW10ZUF5N0RubmE4Z3orSkVscVJk?=
 =?utf-8?Q?NUsNyFMVCtJfX51JKl?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a67e90-2293-45d7-b683-08de6277f318
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 16:27:25.2029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Thnp9q42N2fxcK+3McUaSus/Tt29ZBw0jSW2f8vNpYPFY5Tl85cMU79za0dQa+4PKPjP6LQdYtsJRxFlHbXDVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770049651; x=1801585651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HDD3YI8pyZ7B7Mq325Lu0Cyvb0lulX7xGgN1lymEVGs=;
 b=IuwMOXJPWLbY6rVoH1FqsdTrb7HkzJKeRsni0OSd+Mj3TkUsjxuepVZs
 D/CzzD7SI2HnX9Rq/yJiPxNjVyDdvt4/eTfnMVa3FmlxgCBC3QmGD7/iZ
 UW6kLWpmZxxapxxjlR9wR+x4p4DOyczgKhhvl4ePJg9pf06PvaacNijP5
 xYvu9kiTM+L6Z94Dsc7p/yK3wCdyh+XmWxu9gHy3wOpfwpT+XRlK5Bk00
 4l84sZNruLLCDRKXvTfj4XGVGXSHb3gQjn2dh8LPhuwGc3viJpRGwPlpi
 eWXz/+BNQKy5tQFx9fqwL8BaZllYm21FuewJcMMsjzXmtmKOxDAHlFS0n
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IuwMOXJP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/2] idpf: skip deallocating txq
 group's txqs if it is NULL.
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,davemloft.net:email]
X-Rspamd-Queue-Id: DA9E2CEF3E
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDEyLCAyMDI2IDExOjM1
IFBNDQo+IFRvOiBMaSBMaSA8Ym9vbGxpQGdvb2dsZS5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVt
YXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47DQo+IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vv
c2wub3JnDQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnOyBEYXZpZCBEZWNvdGlnbnkNCj4gPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFp
LCBBbmphbGkgPGFuamFsaS5zaW5naGFpQGludGVsLmNvbT47IFNhbXVkcmFsYSwNCj4gU3JpZGhh
ciA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsgQnJpYW4gVmF6cXVleg0KPiA8YnJpYW52
dkBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCAyLzJdIGlkcGY6IHNr
aXAgZGVhbGxvY2F0aW5nIHR4cSBncm91cCdzDQo+IHR4cXMgaWYgaXQgaXMgTlVMTC4NCj4gDQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLXdp
cmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmDQo+
ID4gT2YgTGkgTGkNCj4gPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDEzLCAyMDI2IDEyOjEwIEFN
DQo+ID4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
IEtpdHN6ZWwsDQo+ID4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47
IERhdmlkIFMuIE1pbGxlcg0KPiA+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2ljaW5z
a2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVtYXpldA0KPiA+IDxlZHVtYXpldEBnb29nbGUu
Y29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gPiBDYzogbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4gPiBE
ZWNvdGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPiA8YW5qYWxp
LnNpbmdoYWlAaW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+ID4gPHNyaWRoYXIuc2Ft
dWRyYWxhQGludGVsLmNvbT47IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47IExp
DQo+ID4gTGkgPGJvb2xsaUBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRh
bnRpbG92QGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
Mi8yXSBpZHBmOiBza2lwIGRlYWxsb2NhdGluZyB0eHENCj4gPiBncm91cCdzIHR4cXMgaWYgaXQg
aXMgTlVMTC4NCj4gPg0KPiA+IEluIGlkcGZfdHhxX2dyb3VwX2FsbG9jKCksIGlmIGFueSB0eHEg
Z3JvdXAncyB0eHFzIGZhaWxlZCB0byBhbGxvY2F0ZQ0KPiA+IG1lbW9yeToNCj4gPg0KPiA+IAlm
b3IgKGogPSAwOyBqIDwgdHhfcWdycC0+bnVtX3R4cTsgaisrKSB7DQo+ID4gCQl0eF9xZ3JwLT50
eHFzW2pdID0ga3phbGxvYyhzaXplb2YoKnR4X3FncnAtPnR4cXNbal0pLA0KPiA+IAkJCQkJICAg
R0ZQX0tFUk5FTCk7DQo+ID4gCQlpZiAoIXR4X3FncnAtPnR4cXNbal0pDQo+ID4gCQkJZ290byBl
cnJfYWxsb2M7DQo+ID4gCX0NCj4gPg0KPiA+IEl0IHdvdWxkIGNhdXNlIGEgTlVMTCBwdHIga2Vy
bmVsIHBhbmljIGluIGlkcGZfdHhxX2dyb3VwX3JlbCgpOg0KPiA+DQo+ID4gCWZvciAoaiA9IDA7
IGogPCB0eHFfZ3JwLT5udW1fdHhxOyBqKyspIHsNCj4gPiAJCWlmIChmbG93X3NjaF9lbikgew0K
PiA+IAkJCWtmcmVlKHR4cV9ncnAtPnR4cXNbal0tPnJlZmlsbHEpOw0KPiA+IAkJCXR4cV9ncnAt
PnR4cXNbal0tPnJlZmlsbHEgPSBOVUxMOw0KPiA+IAkJfQ0KPiA+DQo+ID4gCQlrZnJlZSh0eHFf
Z3JwLT50eHFzW2pdKTsNCj4gPiAJCXR4cV9ncnAtPnR4cXNbal0gPSBOVUxMOw0KPiA+IAl9DQo+
ID4NCj4gPiBbICAgIDYuNTMyNDYxXSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVu
Y2UsIGFkZHJlc3M6DQo+ID4gMDAwMDAwMDAwMDAwMDA1OA0KPiA+IC4uLg0KPiA+IFsgICAgNi41
MzQ0MzNdIFJJUDogMDAxMDppZHBmX3R4cV9ncm91cF9yZWwrMHhjOS8weDExMA0KPiA+IC4uLg0K
PiA+IFsgICAgNi41Mzg1MTNdIENhbGwgVHJhY2U6DQo+ID4gWyAgICA2LjUzODYzOV0gIDxUQVNL
Pg0KPiA+IFsgICAgNi41Mzg3NjBdICBpZHBmX3Zwb3J0X3F1ZXVlc19hbGxvYysweDc1LzB4NTUw
DQo+ID4gWyAgICA2LjUzODk3OF0gIGlkcGZfdnBvcnRfb3BlbisweDRkLzB4M2YwDQo+ID4gWyAg
ICA2LjUzOTE2NF0gIGlkcGZfb3BlbisweDcxLzB4YjANCj4gPiBbICAgIDYuNTM5MzI0XSAgX19k
ZXZfb3BlbisweDE0Mi8weDI2MA0KPiA+IFsgICAgNi41Mzk1MDZdICBuZXRpZl9vcGVuKzB4MmYv
MHhlMA0KPiA+IFsgICAgNi41Mzk2NzBdICBkZXZfb3BlbisweDNkLzB4NzANCj4gPiBbICAgIDYu
NTM5ODI3XSAgYm9uZF9lbnNsYXZlKzB4NWVkLzB4ZjUwDQo+ID4gWyAgICA2LjU0MDAwNV0gID8g
cmN1dHJlZV9lbnF1ZXVlKzB4MWYvMHhiMA0KPiA+IFsgICAgNi41NDAxOTNdICA/IGNhbGxfcmN1
KzB4ZGUvMHgyYTANCj4gPiBbICAgIDYuNTQwMzc1XSAgPyBiYXJuX2dldF9lbXB0eV9zaGVhZisw
eDVjLzB4ODANCj4gPiBbICAgIDYuNTQwNTk0XSAgPyBfX2tmcmVlX3JjdV9zaGVhZisweGI2LzB4
MWEwDQo+ID4gWyAgICA2LjU0MDc5M10gID8gbmxhX3B1dF9pZmFsaWFzKzB4M2QvMHg5MA0KPiA+
IFsgICAgNi41NDA5ODFdICA/IGt2ZnJlZV9jYWxsX3JjdSsweGI1LzB4M2IwDQo+ID4gWyAgICA2
LjU0MTE3M10gID8ga3ZmcmVlX2NhbGxfcmN1KzB4YjUvMHgzYjANCj4gPiBbICAgIDYuNTQxMzY1
XSAgZG9fc2V0X21hc3RlcisweDExNC8weDE2MA0KPiA+IFsgICAgNi41NDE1NDddICBkb19zZXRs
aW5rKzB4NDEyLzB4ZmIwDQo+ID4gWyAgICA2LjU0MTcxN10gID8gc2VjdXJpdHlfc29ja19yY3Zf
c2tiKzB4MmEvMHg1MA0KPiA+IFsgICAgNi41NDE5MzFdICA/IHNrX2ZpbHRlcl90cmltX2NhcCsw
eDdjLzB4MzIwDQo+ID4gWyAgICA2LjU0MjEzNl0gID8gc2tiX3F1ZXVlX3RhaWwrMHgyMC8weDUw
DQo+ID4gWyAgICA2LjU0MjMyMl0gID8gX19ubGFfdmFsaWRhdGVfcGFyc2UrMHg5Mi8weGU1MA0K
PiA+IHJvW28gdCAgIHQgbzYgLmQ1ZTRmMmE1dTRsMHRdLSAgPyBzZWN1cml0eV9jYXBhYmxlKzB4
MzUvMHg2MA0KPiA+IFsgICAgNi41NDI3OTJdICBydG5sX25ld2xpbmsrMHg5NWMvMHhhMDANCj4g
PiBbICAgIDYuNTQyOTcyXSAgPyBfX3J0bmxfdW5sb2NrKzB4MzcvMHg3MA0KPiA+IFsgICAgNi41
NDMxNTJdICA/IG5ldGRldl9ydW5fdG9kbysweDYzLzB4NTMwDQo+ID4gWyAgICA2LjU0MzM0M10g
ID8gYWxsb2NhdGVfc2xhYisweDI4MC8weDg3MA0KPiA+IFsgICAgNi41NDM1MzFdICA/IHNlY3Vy
aXR5X2NhcGFibGUrMHgzNS8weDYwDQo+ID4gWyAgICA2LjU0MzcyMl0gIHJ0bmV0bGlua19yY3Zf
bXNnKzB4MmU2LzB4MzQwDQo+ID4gWyAgICA2LjU0MzkxOF0gID8gX19wZnhfcnRuZXRsaW5rX3Jj
dl9tc2crMHgxMC8weDEwDQo+ID4gWyAgICA2LjU0NDEzOF0gIG5ldGxpbmtfcmN2X3NrYisweDE2
YS8weDFhMA0KPiA+IFsgICAgNi41NDQzMjhdICBuZXRsaW5rX3VuaWNhc3QrMHgyMGEvMHgzMjAN
Cj4gPiBbICAgIDYuNTQ0NTE2XSAgbmV0bGlua19zZW5kbXNnKzB4MzA0LzB4M2IwDQo+ID4gWyAg
ICA2LjU0NDc0OF0gIF9fc29ja19zZW5kbXNnKzB4ODkvMHhiMA0KPiA+IFsgICAgNi41NDQ5Mjhd
ICBfX19fc3lzX3NlbmRtc2crMHgxNjcvMHgxYzANCj4gPiBbICAgIDYuNTQ1MTE2XSAgPyBfX19f
c3lzX3JlY3Ztc2crMHhlZC8weDE1MA0KPiA+IFsgICAgNi41NDUzMDhdICBfX19zeXNfc2VuZG1z
ZysweGRkLzB4MTIwDQo+ID4gWyAgICA2LjU0NTQ4OV0gID8gX19fc3lzX3JlY3Ztc2crMHgxMjQv
MHgxZTANCj4gPiBbICAgIDYuNTQ1NjgwXSAgPyByY3V0cmVlX2VucXVldWUrMHgxZi8weGIwDQo+
ID4gWyAgICA2LjU0NTg2N10gID8gcmN1dHJlZV9lbnF1ZXVlKzB4MWYvMHhiMA0KPiA+IFsgICAg
Ni41NDYwNTVdICA/IGNhbGxfcmN1KzB4ZGUvMHgyYTANCj4gPiBbICAgIDYuNTQ2MjIyXSAgPyBl
dmljdCsweDI4Ni8weDJkMA0KPiA+IFsgICAgNi41NDYzODldICA/IHJjdXRyZWVfZW5xdWV1ZSsw
eDFmLzB4YjANCj4gPiBbICAgIDYuNTQ2NTc3XSAgPyBrbWVtX2NhY2hlX2ZyZWUrMHgyYy8weDM1
MA0KPiA+IFsgICAgNi41NDY3ODRdICBfX3g2NF9zeXNfc2VuZG1zZysweDcyLzB4YzANCj4gPiBb
ICAgIDYuNTQ2OTcyXSAgZG9fc3lzY2FsbF82NCsweDZmLzB4ODkwDQo+ID4gWyAgICA2LjU0NzE1
MF0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc2LzB4N2UNCj4gPiBbICAgIDYu
NTQ3MzkzXSBSSVA6IDAwMzM6MHg3ZmMxYTMzNDdiZDANCj4gPiAuLi4NCj4gPiBbICAgIDYuNTUx
Mzc1XSBSSVA6IDAwMTA6aWRwZl90eHFfZ3JvdXBfcmVsKzB4YzkvMHgxMTANCj4gPiAuLi4NCj4g
PiBbICAgIDYuNTc4ODU2XSBSZWJvb3RpbmcgaW4gMTAgc2Vjb25kcy4uDQo+ID4NCj4gPiBXZSBz
aG91bGQgc2tpcCBkZWFsbG9jYXRpbmcgdHhxc1tqXSBpZiBpdCBpcyBOVUxMIGluIHRoZSBmaXJz
dCBwbGFjZS4NCj4gPg0KPiA+IFRlc3RlZDogd2l0aCB0aGlzIHBhdGNoLCB0aGUga2VybmVsIHBh
bmljIG5vIGxvbmdlciBhcHBlYXJzLg0KPiA+IEZpeGVzOiAxYzMyNWFhYzEwYTggKCJpZHBmOiBj
b25maWd1cmUgcmVzb3VyY2VzIGZvciBUWCBxdWV1ZXMiKQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jIHwgMyArKysNCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiBpbmRleCBiNGRhYjRhOGVlMTFiLi4yNTIwN2Rh
NmM5OTVkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYv
aWRwZl90eHJ4LmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lk
cGZfdHhyeC5jDQo+ID4gQEAgLTEzMTEsNiArMTMxMSw5IEBAIHN0YXRpYyB2b2lkIGlkcGZfdHhx
X2dyb3VwX3JlbChzdHJ1Y3QgaWRwZl92cG9ydA0KPiA+ICp2cG9ydCkNCj4gPiAgCQlzdHJ1Y3Qg
aWRwZl90eHFfZ3JvdXAgKnR4cV9ncnAgPSAmdnBvcnQtPnR4cV9ncnBzW2ldOw0KPiA+DQo+ID4g
IAkJZm9yIChqID0gMDsgaiA8IHR4cV9ncnAtPm51bV90eHE7IGorKykgew0KPiA+ICsJCQlpZiAo
IXR4cV9ncnAtPnR4cXNbal0pDQo+ID4gKwkJCQljb250aW51ZTsNCj4gPiArDQo+ID4gIAkJCWlm
IChmbG93X3NjaF9lbikgew0KPiA+ICAJCQkJa2ZyZWUodHhxX2dycC0+dHhxc1tqXS0+cmVmaWxs
cSk7DQo+ID4gIAkJCQl0eHFfZ3JwLT50eHFzW2pdLT5yZWZpbGxxID0gTlVMTDsNCj4gPiAtLQ0K
PiA+IDIuNTIuMC40NTcuZzZiNTQ5MWRlNDMtZ29vZw0KPiANCj4gUmV2aWV3ZWQtYnk6IEFsZWtz
YW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KDQpUZXN0ZWQt
Ynk6IFNhbXVlbCBTYWxpbiA8U2FtdWVsLnNhbGluQGludGVsLmNvbT4NCg==
