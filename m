Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF01CDgb4WmmpAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:24:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9A2412A07
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0D5160867;
	Thu, 16 Apr 2026 17:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0lnzlhs4Iiv; Thu, 16 Apr 2026 17:24:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E0FE60861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776360244;
	bh=UllaGTdkukS/tngHq9MnCT59r+A1DbIIRzo4YNRHkIc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=srCT4wLCSFBz4OdQpmaeyG1clp0vvzao8zQo/toAO6Nmsn4v33wX6QFQE2ov6lVIq
	 7Vrr55Nsk7p8+x8r0LXoyU7r/Thj4heMg+DYjl1e3Z8vpeaK05Zru/g9M3uuNk6/MV
	 4FXA+85vAoUiIOY8UM5ddEYckJhFGeD7gzAkvzH1ZggaewwuSSG2mkGdcg4rUL8nzR
	 Myh8Xll+EgcjtfzlwdKYZ2j7uL818E0EVWPzR0RjR9KDS1RjVplF9oueLZ8U0ZaT2S
	 qk5k4HTZQvwh4ROlIrgsbdRIEu9Aiaa0/kRbjDmCdxgOncMoB+fjBZpiRWTyeVWSgZ
	 CIdqC5Y1OPg7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E0FE60861;
	Thu, 16 Apr 2026 17:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 256AF259
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 233AE409D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zb5IVG5mIzWt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 17:24:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 578E6409CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 578E6409CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 578E6409CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:01 +0000 (UTC)
X-CSE-ConnectionGUID: Ui1jGzj8QNaepRzE4VKlTg==
X-CSE-MsgGUID: rliudm9bRqKkjA+aEbAC4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77486168"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77486168"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:24:00 -0700
X-CSE-ConnectionGUID: JzGC+IsySbmrurrTIIUTpA==
X-CSE-MsgGUID: ZHWIqVVOSDSDpQ2+b+E5vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235169369"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:23:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 10:23:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 10:23:58 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 10:23:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1iPpCD7Xztn4hl6DjREZYBcL7WmU2cyuubPyhEgzrxshDDnXqqWxbgs09DDvM62KM5VWBJePpcY/W8SMPRQENFY0cdt7Ww/9z81eMNS0piUki+sB+MHi+47ewaLQZE/uFr7tTSr2IYbW+yVPNTxmewSleasY4JhTymrMNX4T9eqCTNRvlJjTdTDBPh1KKuqk2OP3yNNKWllKNb/9hmNHlQYCKLuHRNaCpxJrfX33vs/8n2KCvkt7QxP4wgSRJK3YkSbUA0FbuuFle1muIoIoafyP520+XwcWWhs6pK5rXWEl0iWxTXokCg4xoZPkEZ3OXxidzwrMmFpqhQhOWOTmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UllaGTdkukS/tngHq9MnCT59r+A1DbIIRzo4YNRHkIc=;
 b=gYILZ5ezyKPOmYbczv5A5Y8b7PJzOz2vmOHT69HQD4aneKifMH3hHZxB1KIkYkjOYLvADU9kxO4RgN1nFjGlqTOj/9eBZPAGvdUWfk9IbD0fHXLFh+1HhPJj2xZOuJM++jLhgCHYU6Efs05/OtKlKFJunVl0yc5LyuNCglYeHEOdlifCxAYeIwwn9vyLd8e1jFp7a3DohuHARS6qFY8n6WBmW/tiHR8n7ut6irYnJSgImolK9WjORfQS30Y9ByLkipp6XgzjKh+UsH7u3Cowc7q4mOdMrigIm0ioObKlCULbp/1ON0i3puE/d6npBlzHglmv9aC8jQTog7ZjSU0zRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by DS4PPF240F42FB7.namprd11.prod.outlook.com (2603:10b6:f:fc02::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 16 Apr
 2026 17:23:54 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.046; Thu, 16 Apr 2026
 17:23:53 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Miskell, Timothy" <timothy.miskell@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: perform PHY soft
 reset for E825C ports at initialization
Thread-Index: AQHcx4g17OXN50bq3EeiH1y1UIPRlrXh+nGQ
Date: Thu, 16 Apr 2026 17:23:53 +0000
Message-ID: <PH0PR11MB75226BC30C8841D6EF04C383A0232@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-2-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-2-b959da91a81f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|DS4PPF240F42FB7:EE_
x-ms-office365-filtering-correlation-id: 60d172ae-4ca1-4a43-1a5d-08de9bdcef09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: hY8R/eP8DLax/sXMc1A20CrntkBlpJG40Oy2ivmSic+SbJSmtwTLLCEv6bkIEii0ew/pAXQXKEZR6xgAUHKUjeG+fIDU6JQ7uL63c8F/F/+G3b9hEjt6xcLFaIBJyqZefYXFlXxbC9tht3xRO6AViHL+KnKnjhPzXR43d3eqDkXimlQaMbvvhqx9TSHAuVITr9WB+XjCdPqeh0xSRgekoC8xJsVeG7KiN5PGH8mckbO3GeiVGJ4OPa/LOZISKH8oaA65GZNX01XnDQkJcBm6WzhviRNh4Ng7nLsIwZD3VqKRIPPGSNyzY8NFTh4Arv2o6jnG8t+S6hztldf4SKBA0wj7dG/6DD9i1nA4zjyhQ0G6+QsiM5RQmRkizETt9Got3jq69tcLGWM8bdmr+E1m0fUFgml+X62uSW5Eavnzg6leezllWpV4u9aTxO8ZvSKzCjilXbPhOqr2tPnqnRGSLKZIMWVMDFPvZCGqFzQSaE56LAZ3L6nFBgVtddF5T1TOo8DU1YR0m30GOjTza3BuMJZd3wCbr2JmKs2W0/JPJabxkg78pPavQrVHja7wMyCf/SjAjkO02ieESfo3RNMm+kZBJt8iTFzzXN+r9CCySAKn+S8S0KMJyGdHq+hE/kjzCYIm8oYgxzSKtrFdolXkjj0H50sO2Ytw+iFH9pRkXIm1JdTJyi72spyX53RALF7dhPszPaQ5PSodIYREnbrpkM6HSwEV2wk3uPGqOQdsCS6TDBTwfzj3fsmYRVmizgW4m9tHT1hXLlxmE5lDUxXkVhd4wlmhmdMA3v2apSZXQCc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEx4UkoxTFRQUlFQbUYwUFROUWM4Y0dac2hIeWEyMWhzVTRUQ2xURXNra3Fw?=
 =?utf-8?B?a0R1ZEpxOXUxTHNYR0lGZkVVQjBxdk80dE9yZnQ0L1lqVDJFTmV2UmxiRnBE?=
 =?utf-8?B?OUEzdDRZZ3RUQnBtOW5BTWZLR0M1TXU3MUN3L3BOeXN1SXJJRXhhQytHYjlz?=
 =?utf-8?B?bDJkeXFjQTJqdmNCeStrUUlzRElVTzFTT3VvdFdXZUc1SnBaNC9QcWpudnRD?=
 =?utf-8?B?eGZscWFzL0xuOHE2R1hIR0ttd2RaOWd5RXB3ZlNHNW1zdXlrZVJtckZWTG96?=
 =?utf-8?B?ZTFCV0dwZm9JaGFBRXdHcFJMZlE2Z0JCMWp3U1ZoNVBaYkpMcGZVcU1UNnpR?=
 =?utf-8?B?Mk4yVlZPd1hDbDdIOElydVYxdFMyb25qMlRXVnhNVW1Za0gvbW4rR3F4L0sz?=
 =?utf-8?B?WXBNZnNMeDl5QkpHZTV2SzdBSmFKdXpXVXJITS9GcDN1SitlRXM5WCtTd3R6?=
 =?utf-8?B?cWdNZG55eGFaUXRWb3NxYVFPeFV6UytiMmJyQUZlcTM4MUJ2R2pmNnhzeHBW?=
 =?utf-8?B?ZWxwV3VrT0ZuemFpUnZhQ3Z2Ti8yMWRheXVFcDQwdUtnYmpVWHRQMmdtaEdz?=
 =?utf-8?B?TERQdkx6b3FvdjN4VGhWaXVrN3cxMjdSTWR4YXVqSi9XWFhVWHFtYnF1VEpY?=
 =?utf-8?B?aXhUM2VtUFF6N0o4bVdnT3NYSkg0UTRPSTdRYjhQcUdhRFU4SE5xUGh4eTQv?=
 =?utf-8?B?c0s0OVJzcEJSVXVyd0thamRSSUVxWDE5UjJtRzBVcWhEMWFKbEJPeDBuTkJ6?=
 =?utf-8?B?RVdxTEE3N2ZYR0hPVzdsdmw3dmRTMVEvNVpjb1NaS3JNYy93NzFleEZmbm1Z?=
 =?utf-8?B?cVloMXJ0WStITUhzMjhVekFrWnhWbzZPUkx5VzMzWHBaQlJIVXQrenVEWmVC?=
 =?utf-8?B?RnU5Zk9kWUIwWXVlRlJKdGhpdmQrYVNickpTVDhvNnhWdlRnc2tvOWZHT2tY?=
 =?utf-8?B?eXE5dklMZS95MlU1VGgyMkFoY251S2FrdDl5RnZaRHJ0VE5laGl1SUVTcWtW?=
 =?utf-8?B?Z3FScE01WFRvMjYwbmhjMDBjYlk0OFlrWEFLNHBRMng0TVpmNE5vaUZKV0lq?=
 =?utf-8?B?cTlxSE9uaklMN3NzM012UzJUVzBxLys0RUpIcjNWdFlWWHpFb0FNYWEwNEpK?=
 =?utf-8?B?QTFPNzJpOXppanZUMVJwOEgrVEZJdUhzeHR6aDlGbDRWdVpGTUV5V1E1Ri92?=
 =?utf-8?B?eVh1WXpzbmRCS1BCakZ2SldIbXJ0MDNucVdHYzZjM1F6MTBIV0lnZjFwbzdt?=
 =?utf-8?B?SnRwLzQydDdEbjdHbmNZRURnclVVMGtEdHBCWGpHR2d3VUh2ekM2dHA1R0VY?=
 =?utf-8?B?MTFWQ05ONk9nZTRtS0p2NHJrb0xibEJmZlh1OUhnVTZINHliVjY0eW9QVUZY?=
 =?utf-8?B?LzZMRHBxRWtRelowelNQYlhwbW41TEYyY2l6WDZUVWFwbnBHRllCWDAwZDNn?=
 =?utf-8?B?TE1tSnY1STBaUldIWGxBN1RKdTZlb2pIRWRJaVhrQVBPYlQrZVFLbjBtZjFp?=
 =?utf-8?B?QlNCYUpKcytoY1VJa2pOMnYyaGtDdW43VHgzMFVCTEdtakJDUVRkQ2s3SHox?=
 =?utf-8?B?OUEyRDRnWWhHU0dUQWI0TlJiK2draGdOZVhMUmZ2VjZrbUtRWGtCZTN2Ukxa?=
 =?utf-8?B?QWVTMFA3cWVGaVFIVlV1aDczWWtoNG4zeE9ubjlGdzJhSVJYaGhzZHJGVjNZ?=
 =?utf-8?B?TnRscjBsV095cXRnYm9yV1NUck5mMFBYZGR3cExoZ1dCUjVqUk9KS05lRjlp?=
 =?utf-8?B?UVB2SHhySjh5dmhEWmxWT2dscXhFN1BseDcwcmlRYlZ4bEpkNHpOY2lHZ05Z?=
 =?utf-8?B?MjA0SXBkT0k3b3Zmd1d0Z1dzU00veDFxa3ZycFo1NDV5cXZzRm40OXlyQlNH?=
 =?utf-8?B?ZlBLbi94QjZRUS9jR1RJYm4xL0xyR2JQc1BJbUZaVXk1NGNMYTRLZ3NQS3pZ?=
 =?utf-8?B?cmxLZXIzbGp2dkJKUVc2aTNoNTJZa2svcFFaZStqV2pwTEZtRXZ1UFEzS0VH?=
 =?utf-8?B?bXdwVERUVWdZRFVYYTJqQkVRTk1BOE9DdVgvUXN5N0FnaURPU045dUtkelh1?=
 =?utf-8?B?WXhmajNqWkVVMUdiVFRoUFltZDZ3SEJKSnZaTlhFQW5zcFAxN0xGSk52c1dQ?=
 =?utf-8?B?bXRRQXZIMitRWXBxeFhkUTZTTGt2UC9SNjZJR0VBUFlOMXZCU2pQNEUwY0Jt?=
 =?utf-8?B?Vlk0cU9KRHZqZDRYbW9pNzNNL2txV2xzdjMwL1J4U0l2dmpTT3V6QjhVTUUw?=
 =?utf-8?B?clNxYUROeDZkcXlUMWxaMk5oU3J3MUoxYWdNVW9SNzI5Nk44ZVRmYXdpT0pX?=
 =?utf-8?B?WDZnSXpUVW1UQ3Q0enlOL1hQV1h6bzdTQXZ3YmxaYk01S1BQVDdVVEFYQmls?=
 =?utf-8?Q?PsqGAPjrbNPpondQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IH3mfl9bhNnzgBZKAJLkeTmuMdGPoZMQGdl4IuL8aDTF/10x84pp1KtpM0GNkDDWpjSHOT/EnWopzN4rCbIiryDxyF4ArVIjnI06R1lF8Jt0HF0ki2EAiu20QXmR9pf/u9vzik3vbSJSt2A3Yr1Yk3tjkfhvjOVPIJ+p0SEl+p/xlbPyBL0V4oxhXqegX9S3Ooba7u1bOZvwofpGcpyVnHIyJmMV1BxHFRgK6pW0TFig/egA+wOyPQXVDzyS8xEolmU3v2LqxcgTqHAkBmjKl3/9plcYOTkcQeQdaOxlz94ymz3yoydpkFbnWV0MsLakVSMriaG2H//sJGLDLNSL1w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d172ae-4ca1-4a43-1a5d-08de9bdcef09
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 17:23:53.8063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HylImk599YNdVR+IIMWFT+VmmvvShEOMwevcdfSnBtq5CgKs6KmEWonk9QACbQqQMu3VsBhrXMpzhcDSSYhn0NxTVKZIh+UxlgbtVLS4qRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF240F42FB7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776360241; x=1807896241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UllaGTdkukS/tngHq9MnCT59r+A1DbIIRzo4YNRHkIc=;
 b=noXgF3hl2s+ZQwdFnoB5jUh5sv/EmgEVqTocR1rU8/toNIYr/a8vN7vs
 CwKo2MJglP8nSEHlPTTm2hyYtvuLhCBFgqq+WZjhEKEgd4xm0rv69CCse
 7aYxscq6Yoqg2sYd3fyw+QjDrZV7V5/YiUyzbKKlq66rJeXXsmNLch72f
 /wI11vtexEEnKiCnXWNRlFvTyWsfIwKzjlOiblwLB8Ct0X4APhLByY1ae
 EK9HJrAZq25ZX2CpakhGSOxZrehq0ktdrNnBRL/WNSZ+5spRHJVozGNmM
 R4BZ9Ht1WyzWNEbtQFbHmUtq/vmHdXKys/tz892UHuLH7MTHv4qXNACPG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=noXgF3hl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: perform PHY soft
 reset for E825C ports at initialization
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[PH0PR11MB7522.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 5C9A2412A07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCA4LCAyMDI2IDExOjQ3IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZw0KPiBDYzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBNaXNr
ZWxsLCBUaW1vdGh5IDx0aW1vdGh5Lm1pc2tlbGxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50
ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCAyLzRdIGljZTogcGVyZm9ybSBQSFkgc29mdCBy
ZXNldCBmb3IgRTgyNUMgcG9ydHMgYXQgaW5pdGlhbGl6YXRpb24NCj4NCj4gRnJvbTogR3J6ZWdv
cnogTml0a2EgPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4NCj4NCj4gSW4gc29tZSBjYXNlcyB0
aGUgUEhZIHRpbWVzdGFtcCBibG9jayBvZiB0aGUgRTgyNUMgY2FuIGJlY29tZSBzdHVjay4gVGhp
cw0KPiBpcyBrbm93biB0byBvY2N1ciBpZiB0aGUgc29mdHdhcmUgd3JpdGVzIDAgdG8gdGhlIFR4
IHRpbWVzdGFtcCB0aHJlc2hvbGQsDQo+IGFuZCB3aXRoIG9sZGVyIHZlcnNpb25zIG9mIHRoZSBp
Y2UgZHJpdmVyIHRoZSB0aHJlc2hvbGQgY29uZmlndXJhdGlvbiBpcw0KPiBidWdneSBhbmQgY2Fu
IHJhY2UgaW4gc3VjaCB0aGF0IGhhcmR3YXJlIGJyaWVmbHkgb3BlcmF0ZXMgd2l0aCBhIHplcm8N
Cj4gdGhyZXNob2xkIGVuYWJsZWQuIFRoZXJlIGFyZSBubyBvdGhlciBrbm93biB3YXlzIHRvIHRy
aWdnZXIgdGhpcyBiZWhhdmlvciwNCj4gYnV0IG9uY2UgaXQgb2NjdXJzLCB0aGUgaGFyZHdhcmUg
aXMgbm90IHJlY292ZXJlZCBieSBub3JtYWwgcmVzZXQsIGEgZHJpdmVyDQo+IHJlbG9hZCwgb3Ig
ZXZlbiBhIHdhcm0gcG93ZXIgY3ljbGUgb2YgdGhlIHN5c3RlbS4gQSBjb2xkIHBvd2VyIGN5Y2xl
IGlzDQo+IHN1ZmZpY2llbnQgdG8gcmVjb3ZlciBoYXJkd2FyZSwgYnV0IHRoaXMgaXMgZXh0cmVt
ZWx5IGludmFzaXZlIGFuZCBjYW4NCj4gcmVzdWx0IGluIHNpZ25pZmljYW50IGRvd250aW1lIG9u
IGN1c3RvbWVyIGRlcGxveW1lbnRzLg0KPg0KPiBUaGUgUEhZIGZvciBlYWNoIHBvcnQgaGFzIGEg
dGltZXN0YW1waW5nIGJsb2NrIHdoaWNoIGhhcyBpdHMgb3duIHJlc2V0DQo+IGZ1bmN0aW9uYWxp
dHkgYWNjZXNzaWJsZSBieSBwcm9ncmFtbWluZyB0aGUgUEhZX1JFR19HTE9CQUwgcmVnaXN0ZXIu
DQo+IFdyaXRpbmcgdG8gdGhlIFBIWV9SRUdfR0xPQkFMX1NPRlRfUkVTRVRfQklUIHRyaWdnZXJz
IHRoZSBoYXJkd2FyZSB0bw0KPiBwZXJmb3JtIGEgY29tcGxldGUgcmVzZXQgb2YgdGhlIHRpbWVz
dGFtcGluZyBibG9jayBvZiB0aGUgUEhZLiBUaGlzDQo+IGluY2x1ZGVzIGNsZWFyaW5nIHRoZSB0
aW1lc3RhbXAgc3RhdHVzIGZvciB0aGUgcG9ydCwgY2xlYXJpbmcgYWxsDQo+IG91dHN0YW5kaW5n
IHRpbWVzdGFtcHMgaW4gdGhlIG1lbW9yeSBiYW5rLCBhbmQgcmVzZXR0aW5nIHRoZSBQSFkgdGlt
ZXIuDQo+DQo+IFRoZSBuZXcgaWNlX3B0cF9waHlfc29mdF9yZXNldF9ldGg1NmcoKSBmdW5jdGlv
biB0b2dnbGVzIHRoZQ0KPiBQSFlfUkVHX0dMT0JBTCBzb2Z0IHJlc2V0IGJpdCB3aXRoIHRoZSBy
ZXF1aXJlZCBkZWxheXMsIGVuc3VyaW5nIHRoZQ0KPiBQSFkgaXMgcHJvcGVybHkgcmVpbml0aWFs
aXplZCB3aXRob3V0IHJlcXVpcmluZyBhIGZ1bGwgZGV2aWNlIHJlc2V0Lg0KPiBUaGUgc2VxdWVu
Y2UgY2xlYXJzIHRoZSByZXNldCBiaXQsIGFzc2VydHMgaXQsIHRoZW4gY2xlYXJzIGl0IGFnYWlu
LA0KPiB3aXRoIHNob3J0IHdhaXRzIGJldHdlZW4gdHJhbnNpdGlvbnMgdG8gYWxsb3cgaGFyZHdh
cmUgc3RhYmlsaXphdGlvbi4NCj4NCj4gQ2FsbCB0aGlzIGZ1bmN0aW9uIGluIHRoZSBuZXcgaWNl
X3B0cF9pbml0X3BoY19lODI1YygpLCBpbXBsZW1lbnRpbmcgdGhlDQo+IEU4MjVDIGRldmljZSBz
cGVjaWZpYyB2YXJpYW50IG9mIHRoZSBpY2VfcHRwX2luaXRfcGhjKCkuIE5vdGUgdGhhdCBpZg0K
PiBpY2VfcHRwX2luaXRfcGhjKCkgZmFpbHMsIFBUUCBmdW5jdGlvbmFsaXR5IG1heSBiZSBkaXNh
YmxlZCwgYnV0IHRoZSBkcml2ZXINCj4gd2lsbCBzdGlsbCBsb2FkIHRvIGFsbG93IGJhc2ljIGZ1
bmN0aW9uYWxpdHkgdG8gY29udGludWUuDQo+DQo+IFRoaXMgY2F1c2VzIHRoZSBjbG9jayBvd25p
bmcgUEYgZHJpdmVyIHRvIHBlcmZvcm0gYSBQSFkgc29mdCByZXNldCBmb3INCj4gZXZlcnkgcG9y
dCBkdXJpbmcgaW5pdGlhbGl6YXRpb24uIFRoaXMgZW5zdXJlcyB0aGUgZHJpdmVyIGJlZ2lucyBs
aWZlIGluIGENCj4ga25vd24gZnVuY3Rpb25hbCBzdGF0ZSByZWdhcmRsZXNzIG9mIGhvdyBpdCB3
YXMgcHJldmlvdXNseSBwcm9ncmFtbWVkLg0KPg0KPiBUaGlzIGVuc3VyZXMgdGhhdCB3ZSBwcm9w
ZXJseSByZWNvbmZpZ3VyZSB0aGUgaGFyZHdhcmUgYWZ0ZXIgYSBkZXZpY2UgcmVzZXQNCj4gb3Ig
d2hlbiBsb2FkaW5nIHRoZSBkcml2ZXIsIGV2ZW4gaWYgaXQgd2FzIHByZXZpb3VzbHkgbWlzY29u
ZmlndXJlZCB3aXRoIGFuDQo+IG91dC1vZi1kYXRlIG9yIG1vZGlmaWVkIGRyaXZlci4NCj4NCj4g
Rml4ZXM6IDdjYWI0NGYxYzM1ZiAoImljZTogSW50cm9kdWNlIEVUSDU2RyBQSFkgbW9kZWwgZm9y
IEU4MjVDIHByb2R1Y3RzIikNCj4gU2lnbmVkLW9mZi1ieTogVGltb3RoeSBNaXNrZWxsIDx0aW1v
dGh5Lm1pc2tlbGxAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBOaXRrYSA8
Z3J6ZWdvcnoubml0a2FAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIg
PGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0
aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmggfCAgNCArKw0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDkwICsrKysrKysrKysrKysrKysr
KysrKysrKysrKystDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkzIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCg0KVGVzdGVkLWJ5OiBTdW5pdGhhIE1la2FsYSA8c3VuaXRoYXguZC5tZWthbGFA
aW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
