Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1ABB0EF4D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB81E80D2B;
	Wed, 23 Jul 2025 10:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JbriBBW6aQh3; Wed, 23 Jul 2025 10:06:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 594ED80EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753265203;
	bh=4wqhyOjaOLeJPKh2K3aKjgXONLrFcjLOkpe8U/kDg6E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DDA2kr1kjarRh42+LvU2Z5ESxrB6pDCzmKp6dcRy3uopAeq8GUVsum4SZregrsemr
	 iB5ry0qK9e5lu4wWfDpAmrDK6VlI3wIg36a2EiBib3qokFyMOB+xZEshjb4VxT48eP
	 kzzi4iKPTk6h4gxJQKr2I0y7aZza4UBZ9F6kbd7yQ1jKBxXJoXfcmmB+7M1GPdlWU0
	 ssnRGHznUwiFxBTRB6x5BnZUyP7DfNunGyehck6Ha+FwTzYbRGvRAy159H3tzFezv4
	 luxw9KTydXln4ytWcfjapQt5kmtfZjHyvpcmOZPYLRuQUGSPGHLCs9lKfzwDUynfQB
	 eZWql2nuCa2Eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 594ED80EBE;
	Wed, 23 Jul 2025 10:06:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A56B4CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9587380EBE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:06:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVObpwmGJAIq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:06:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF9F080CEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF9F080CEC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF9F080CEC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:06:40 +0000 (UTC)
X-CSE-ConnectionGUID: Go2zRSTXRfmnjnvv56WWow==
X-CSE-MsgGUID: qwY3W3IXQp63lRy15uxX3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="80989202"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="80989202"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:06:40 -0700
X-CSE-ConnectionGUID: iXPOSsuQSj2CNOf2KTeATA==
X-CSE-MsgGUID: li5fL2arQDaUcN+TBEGhAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="159802861"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:06:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:06:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:06:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:06:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XOFNMqyPRZIIaFHDnPGMPi2/a2Qqjt/GCTgIgt2p/tBBD+gcn7PTZ231BzJPvM+Lbj0T7y7QZppKcYRbH++tWec/8qDl6Co6HyPOwF4w/rv3oyS/xkfP800/xYBZ97vuioOuEemBbYZli0vvlqm7+47RTXc5uJ22H7h0zE6qd+wMdqDeicWA4VbskqOxPw2n6thTeg5dSsoOXhoUtf6ZMQDpJPXCx9qoI1nN4hf/X/8G9mTGnvJlCCm0SZ29OG6mTrnFJ1y07J+Yvt9Y0/U6kb88S+dfQ3f4ovzLag3zHLKzNb0d/tPZAjJokz7l2cxfL8fFdM3Tw07XVqxWe0rWsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4wqhyOjaOLeJPKh2K3aKjgXONLrFcjLOkpe8U/kDg6E=;
 b=MpD4z3s+tT5bnpIYxT2U8Ngi4H21ARHRiJl+QRQJ/zXA7/iRlG7Ahnc93R9R59UYLNB4IFzu0FxaSR9+m30w0qQyskrchCmFXHtY8MUsETcJXSNSmFQAnhXbQqklp0e+yK+0RvJZul/fTlO5NUp/spsk9p6fzd4h9QuK+NT7fAKJIVT2pPoPRGT3AeeVffLiFOO3pUc1TtMZ3acm35O7rntrrjXWgQNkuOTtF1QtxcBWL16ogjoVXtFilXBKlahZEjiuFGGQxSbd25aBkmENor8X8gaQVAhID8fln9cWKF4/r+4jBdVhFC2t94RehBpTOI9h03lBFlHEWHUf063Wkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7910.namprd11.prod.outlook.com (2603:10b6:208:40d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Wed, 23 Jul
 2025 10:06:35 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:06:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/5] e1000: drop
 unnecessary constant casts to u16
Thread-Index: AQHb+69rhBzGKIrg3km+Jk9dWn2ckLQ/e3cg
Date: Wed, 23 Jul 2025 10:06:35 +0000
Message-ID: <IA3PR11MB89860B51341D18976D2ACA7AE55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <6abd035f-c568-424c-bdbc-6b9cbcb45e1e@jacekk.info>
In-Reply-To: <6abd035f-c568-424c-bdbc-6b9cbcb45e1e@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7910:EE_
x-ms-office365-filtering-correlation-id: 3dc26491-febd-465e-47f6-08ddc9d09b6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?K3RMWC9FVEVKOHU0ZW9kWVo0ZkRXOGJjekFSOWF3K0hCRmRCNWphMzVjOGhh?=
 =?utf-8?B?d3BsWmN2TWk5S0c0Nlk3QmVqK2RFQmVTVXh1TjRvUnRYRWVEdSt0aFArN3Ar?=
 =?utf-8?B?V3RlaWtvZEtWUFJrLzZVUkhrVng4V1dBOXZmZ0wxL0hnc28wYkJnR3JpdlVN?=
 =?utf-8?B?RnYvMDBmTENEamVhdG5WNlZleUU5THhWWGt4RW1ncUZBRUQxaS9zV2ZTVk8w?=
 =?utf-8?B?NjJDb1k4bENNWTdjampaSTBKOTZXa2ttdUpFUGMxWUdPYThHZG1UaVZRcmJQ?=
 =?utf-8?B?NVJXRlBjbTVQNE1GZEJaY1pqN25YbU1WaUY2MXhZOHl0MUJmSURuUStSQkZK?=
 =?utf-8?B?TndYUXZrdUxDdXNhRUFsR1FDWWFzRU9RdEVoZlIzbGZ4cGxxNHZ2NG0zdXdG?=
 =?utf-8?B?ZWRPL3hFRmJhN21lbW1KOWwwdVRHeDM5dGgxUFoxdTFVenRQc3V3TXRnbUhj?=
 =?utf-8?B?QjFwWVl5dFdSMnI2cEdKaldWN0ZrNllBUlAyVjdzL1RxSEFtWTdrR3kwaDd2?=
 =?utf-8?B?M25YV2lEMlRaYm4zS09taHVpMTE3MFVtY2FkN052a1RVY0VLOVRNSWM0eUJn?=
 =?utf-8?B?TGxoeGcrV2JTM2hLVVQxSkc0WjEzM0xYSHowUVlWUzdCQ0QrY2hXRC84RXZr?=
 =?utf-8?B?K3NjeGhTUFlRQUVqY1hDNkdIbVB0bHVuTERwaXVwM0g0YnFpY0VUODVlOFFT?=
 =?utf-8?B?S0hHbllRUENiUkhHcEpRWjVheEV2emxoSFVsSXQ1RVZmWGhmempqUEFTWGIx?=
 =?utf-8?B?QnlZVm16dmtleFRzVFF6QjlaMTZtQ3d3MzVLUmlwWXpDb051RmpESXBZMXly?=
 =?utf-8?B?YWo3OWJIUmVMdGNBdmdGam9qVmpwQzJ0NG9kZXplMEVJRkJhdmJWZytPQ2Y4?=
 =?utf-8?B?UmtJeE1YaXE1WjF6Z2pKZEc4OG9UZTRBd0krN3Z5am91WnV1Y2lUNGVGbUdy?=
 =?utf-8?B?NndVbU9MbU1jSHQ4VEJOODRDMmpFNENxREdDY2NhcXY1Q0k3Z2c0YmlYd1NG?=
 =?utf-8?B?SkZqWkdySWc3Kzd1bFhpZ1VsMjV6dEs2cGxtYUxmS0JRMXpkZ2o0OEI5SWNx?=
 =?utf-8?B?bCtaby9RMUZYK2prNmZncFFNY1BsMFhZV2tRMW0ydmZyMnp6aU9Pb3g0Zjkv?=
 =?utf-8?B?OGF5MjVwMGNyK0RPOG1uMGRERVNSTEhsOURSemJ3Qm1uMGsvdnpnOXg3SEV5?=
 =?utf-8?B?WHlJaUJYZ205Z0VFdHU3d3pmNE5haW9FaU9NSUo5UG1nb0xjVlBKMjlPcEJm?=
 =?utf-8?B?Rmx6RDVxczRnUWV3a1ZVMXkxTHNYUjdnQlR4Ym81blJ1TmtYcXJZYXZsQloz?=
 =?utf-8?B?T2VDMmVyeSt5MHVQcGs4RkFycnNPcHRuMlQ4YzIwcndsYXlZQjZnTlJhRXJs?=
 =?utf-8?B?SzNTL3ExNWRlZU95Nm5WVUQxeGx1QUJLTzliYmlBQ3QyMlFvc3dnOUlKa1J1?=
 =?utf-8?B?Y1ZrSUlJem9GMXBOd2pRUHpwS3VMVEhwZE9TdjlLTHBPbWNyU21VVjBzcm9o?=
 =?utf-8?B?SmEyQkduMEFYa3VmY0hORURqT3UvRGQ3K0lBOHFJZGVXRW8yTnRPU3gveE95?=
 =?utf-8?B?VDRWc0h4bVQyL3RaUlRVdDIxZ2ZmY1N0K2FvVWdlWlV5aFpzc2l2bmZ2UHNW?=
 =?utf-8?B?RjZFZGxweVNZeFBhL1c5UzRxS1hMdFg1RFRhdzh2dTlndWpQMEh1cTZEb1J5?=
 =?utf-8?B?UjZYdlBrci9mMnpRTndhTHRaaVJWV3VzTVNvVjlMQ1hsUmtVYnp6MzFtNGlH?=
 =?utf-8?B?RUp3YkhRUDJkZDhrNWMvOTh4RE02bzBxaUFHbkpRRFBYRGo5NnhrUWRzNVJ6?=
 =?utf-8?B?Z2hkVTVqRFY3dmIyMW9Cay9YaXhrcm90VElSR3puYjNPa2dDWHM0S0Nqcmpn?=
 =?utf-8?B?bHZwSmdJVzhpUzhNVUszd29jRTdtZ2MwTXNTUlA0bEN6c0VVR0ZqYzA4T056?=
 =?utf-8?B?eXRMbzZVbStkWmdjWkNIeitjaTdXMldhMm8zM2lZN2FxaE95dHBnNjArRFpV?=
 =?utf-8?Q?PLQzU0sUhwZFn1mH2Gu52Ty6VJCw7Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVhLQm0rSU1VNGxubkwxRWw3NE00RFhlYkNBZ1F1UDFjS2VUZGJQMzRVdCtP?=
 =?utf-8?B?UEtXVFdST0UzOEcwcngzRlVzWXdNYjJCTExCc0l3N01jSlh6TFM1cXJuYVd2?=
 =?utf-8?B?QzIxVzR2M1BlRzFDRU9RVmJ1emN2dlc3ZytNMmZPeFVsUVpaNXFxSDdYSE1V?=
 =?utf-8?B?UUU0L2Zha0txaW1pNmtpRk1IeVdHMHVQTFJYRW5HdFpsK2g1dUNhaVUwY2Nu?=
 =?utf-8?B?UXBjZ1d2TE9aV3lhZm1rK3FselA3a1pvRzFXakNVT3lOcFBYZVpwNDF6cnpW?=
 =?utf-8?B?dFBOSGxwN2FlTjJNcHNtcmtUZW1PeFR3SmJVZmtPUWx0QW55QzIzVnhqYnJJ?=
 =?utf-8?B?ZlFvdFBQTzRabERUMG8wcWJ4dWxDRXYxWnZlVTVNQ1FIbmtySWJDNGxMS1Vt?=
 =?utf-8?B?d2NPNEMyNjBLKzhVTmpMUWVmbStwNkNMMWxFVlQxNHNWM0dMSW53aUhwOEVx?=
 =?utf-8?B?YVlOcVA4cHRvaTBQb3Q2dEVlaVU1YUVjbENPcDhDZkpnNXRqeUNZeEVlOWt4?=
 =?utf-8?B?Q0pUa3FIR1ZRSTNyWGpqekV3UnhNR0srY2o4QWpIVnJkZ3N4NDBJcWYvbC82?=
 =?utf-8?B?QnRpb2FEK1JOcE9TZGoyaGpZTFJzcUFxSld3YldJc0lqRXEzbjFuV1ZMNHli?=
 =?utf-8?B?TUxZa0ZBUjl3ZVlxeXQ0eFpmUEdOQm9RYjVjZHd0YTRIVUFLMjllb0ZDeWs1?=
 =?utf-8?B?MSt4RlRrNERHL0tiaVQ1WXZGSGdyRkhBcmZWRTBBRXlHVkNNVSt2aU55S1NM?=
 =?utf-8?B?cGNmWWxidHJTWTBNa25KYUZsMkJ5RG42S2xPUG43aktJdzJxMmtYdVRMZ3Vr?=
 =?utf-8?B?MXNqTVpROU1COUg1UG1jUkFmN1ZnNThwa1pTUnJMWHFnNzVuTkdkRWNaMk9k?=
 =?utf-8?B?ODJOSmt4bUV3SDRTd1dudHc4Nm5rbllYZGZzVldDU0RaNXZmWXBtVlgvRUJp?=
 =?utf-8?B?MFBtaEM0S0ZKWWY0Q0Vrd0J3eStJYmJPNi94bmp0ME9SL0RSenNiOUV6Smlw?=
 =?utf-8?B?eGI2ekhXVVVCZ3p1VnhWeEhScTVmWElxbk54UFpEdlhoU1BINEg4T2hocVpL?=
 =?utf-8?B?S2FzWmpRNzZHZlZEeUZTVnNGdkVRNXlJZHloWVhReGJSL3Y0d0h5ZXAxMVRp?=
 =?utf-8?B?RDM1TFJJUmhnL0lYS2pwMU5VZVcrQ04wemJ3Ni9YMkpiMU5HMHA5MmFjc0lT?=
 =?utf-8?B?eFExUE1kRUEwaGdJWmNpK2ZGM1grNDVENjh3MWVHL1pBdVZoaUpwc1dWcVNG?=
 =?utf-8?B?K1B0Q3VzZTZRTzZ3RWFLK3dPWkpRMi9FZjFWMFFDcis3OUJjQTczQzlLYmVR?=
 =?utf-8?B?bkRwcG1FbVZRbzFKVkIvOFZ4dzAzVk00ZjlzbUtvdlkzMGlOWmNRNFgxMU45?=
 =?utf-8?B?WUFKdGZrbEtQYk9kMlgwS2VuSmhqYjFxZUpzbTFzbCtxcXNjVFdiN3dGNjdC?=
 =?utf-8?B?VzE2SG1tdXRvTXRlKzZ5Qk96Q1lLZ0txS0xIUUxudkQxM0lwbnJheDlCTGtX?=
 =?utf-8?B?NFBoSUZJNjM4VGt1QnY5R0V1T2pDWks1dlNMazduaERUQkwyakRDWEU5a3Jz?=
 =?utf-8?B?QVlBemVvTE5sbk4zRVVvSWtXT050TlJ0WjV2bE5RbS9VaE1HL0xBWjlqS0Fk?=
 =?utf-8?B?VENlN1VRTlpOSnZrb3JyTnVPdmV5OVVWTWhiUzhIZUJZRHVxZFJxdUNYTDlS?=
 =?utf-8?B?ay9BY3F3MkNjYll1ZFFuWFptRHUrSnduK1ZHOTBJMUdkUzlHOVJyTUVvaFM2?=
 =?utf-8?B?eDV6eHlHK1FYeFFJUVZHOCsvU1VxREFUK2ZqZ1NzU093cVVjalZMZ1F0TTFI?=
 =?utf-8?B?elFiL3RYTjA3eTluVDhac05iYWEvOU9LRG9ySXdORGxDdWRKcEQrd1hRdmJ1?=
 =?utf-8?B?Z0JhUWRuL2U3RDMvSFBMTm12NklIMXJaVmdjenhUZitidW8yTjJkZkF5S0ZQ?=
 =?utf-8?B?d3BNL1VBSC96ZlVldEh4Q2JlcHYyNTRuLzBsM2pqY1h0amg3QndxY05taWpn?=
 =?utf-8?B?VExmRHd2RjV0T09Qd0J1QVdUalhJZlZVbW5NbEFTanB5VURXZDVScmErd3VO?=
 =?utf-8?B?cjgyZ3R1Y3FnNzNVZzhyOGcxVytjOEZTT3dkM2l2RldlLzREa21Qc2w3Q2lE?=
 =?utf-8?B?VkIrUHE2c3czVG9RWWFMQ0ZtcXhVbWdTZ0NvVmZHcFg2ZjJ3b3JNT1dKNk1C?=
 =?utf-8?B?a1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc26491-febd-465e-47f6-08ddc9d09b6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:06:35.4030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zh4j3+cf9O9NWomCEU+uhgWKZHXytmFfWulSBA4Cf8fY0CZ0weGX/j68RQMBK3c6+19W+tw5VwE+hKohIiQ/00tYU+xMBrirMr7vN9qf9kE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753265201; x=1784801201;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4wqhyOjaOLeJPKh2K3aKjgXONLrFcjLOkpe8U/kDg6E=;
 b=Jef2h/Ogp34dnPeZ8xOCIFobCr0MOJw3IEbfpeuNKUwsN2KFelYL1TA6
 Kd11e/hkqiC/zxI5CDvrGUNdFSb9LXcgm34O6oEWVyA+AQXzUy0ty04JI
 QTxcSzMRCymLUfdKspER1J5mXZ7lkMl4derGjW2VdF6AfYAsCc/q7OvBF
 orOTtqS0Q7OBDZmJycqYdY8e9+Pzb4VDUHDaaa7m35cyHFebBupIx/WaS
 yR4/ESzOEiEP5FhxOLupda9x+agvHhWXizJITnLLGNQ1sDMMchM2go+Qz
 +fiv27VpG0yIqLr6N0LrLNoq0aimnLGOm9dKOwKAVoDVx1DkGz0gM2yC5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jef2h/Og
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/5] e1000: drop
 unnecessary constant casts to u16
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
ZWsgS293YWxza2kNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDIzLCAyMDI1IDEwOjU0IEFNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3
IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjMgMS81XSBlMTAwMDogZHJv
cA0KPiB1bm5lY2Vzc2FyeSBjb25zdGFudCBjYXN0cyB0byB1MTYNCj4gDQo+IFJlbW92ZSB1bm5l
Y2Vzc2FyeSBjYXN0cyBvZiBjb25zdGFudCB2YWx1ZXMgdG8gdTE2Lg0KPiBDJ3MgaW50ZWdlciBw
cm9tb3Rpb24gcnVsZXMgbWFrZSB0aGVtIGludHMgbm8gbWF0dGVyIHdoYXQuDQo+IA0KPiBBZGRp
dGlvbmFsbHkgcmVwbGFjZSBFMTAwMF9NTkdfVkxBTl9OT05FIHdpdGggcmVzdWx0aW5nIHZhbHVl
IHJhdGhlcg0KPiB0aGFuIGNhc3RpbmcgLTEgdG8gdTE2Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
SmFjZWsgS293YWxza2kgPGphY2VrQGphY2Vray5pbmZvPg0KPiBTdWdnZXN0ZWQtYnk6IFNpbW9u
IEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlv
bm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMC5oICAgICAgICAgfCAyICstDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ldGh0b29sLmMgfCAyICstDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jICAgICAgfCA0ICsrLS0NCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYyAgICB8IDMgKy0t
DQo+ICA0IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMC5o
DQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDAuaA0KPiBpbmRleCA3
NWYzZmQxZDhkNmUuLmVhNmNjZjRiNzI4YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDAuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMC9lMTAwMC5oDQo+IEBAIC0xMTYsNyArMTE2LDcgQEAgc3RydWN0IGUxMDAwX2Fk
YXB0ZXI7DQo+ICAjZGVmaW5lIEUxMDAwX01BU1RFUl9TTEFWRQllMTAwMF9tc19od19kZWZhdWx0
DQo+ICAjZW5kaWYNCj4gDQo+IC0jZGVmaW5lIEUxMDAwX01OR19WTEFOX05PTkUJKC0xKQ0KPiAr
I2RlZmluZSBFMTAwMF9NTkdfVkxBTl9OT05FCTB4RkZGRg0KPiANCj4gIC8qIHdyYXBwZXIgYXJv
dW5kIGEgcG9pbnRlciB0byBhIHNvY2tldCBidWZmZXIsDQo+ICAgKiBzbyBhIERNQSBoYW5kbGUg
Y2FuIGJlIHN0b3JlZCBhbG9uZyB3aXRoIHRoZSBidWZmZXIgZGlmZiAtLWdpdA0KPiBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2V0aHRvb2wuYw0KPiBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2V0aHRvb2wuYw0KPiBpbmRleCBkMDZkMjlj
NmMwMzcuLjcyNjM2NWM1NjdlZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDAvZTEwMDBfZXRodG9vbC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwL2UxMDAwX2V0aHRvb2wuYw0KPiBAQCAtODA2LDcgKzgwNiw3IEBAIHN0YXRp
YyBpbnQgZTEwMDBfZWVwcm9tX3Rlc3Qoc3RydWN0IGUxMDAwX2FkYXB0ZXINCj4gKmFkYXB0ZXIs
IHU2NCAqZGF0YSkNCj4gIAl9DQo+IA0KPiAgCS8qIElmIENoZWNrc3VtIGlzIG5vdCBDb3JyZWN0
IHJldHVybiBlcnJvciBlbHNlIHRlc3QgcGFzc2VkICovDQo+IC0JaWYgKChjaGVja3N1bSAhPSAo
dTE2KUVFUFJPTV9TVU0pICYmICEoKmRhdGEpKQ0KPiArCWlmIChjaGVja3N1bSAhPSBFRVBST01f
U1VNICYmICEoKmRhdGEpKQ0KPiAgCQkqZGF0YSA9IDI7DQo+IA0KPiAgCXJldHVybiAqZGF0YTsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3
LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jDQo+IGlu
ZGV4IGY5MzI4ZjJlNjY5Zi4uMGU1ZGU1MmIxMDY3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3LmMNCj4gQEAgLTM5NzAsNyArMzk3MCw3IEBAIHMz
MiBlMTAwMF92YWxpZGF0ZV9lZXByb21fY2hlY2tzdW0oc3RydWN0DQo+IGUxMDAwX2h3ICpodykN
Cj4gIAkJcmV0dXJuIEUxMDAwX1NVQ0NFU1M7DQo+IA0KPiAgI2VuZGlmDQo+IC0JaWYgKGNoZWNr
c3VtID09ICh1MTYpRUVQUk9NX1NVTSkNCj4gKwlpZiAoY2hlY2tzdW0gPT0gRUVQUk9NX1NVTSkN
Cj4gIAkJcmV0dXJuIEUxMDAwX1NVQ0NFU1M7DQo+ICAJZWxzZSB7DQo+ICAJCWVfZGJnKCJFRVBS
T00gQ2hlY2tzdW0gSW52YWxpZFxuIik7DQo+IEBAIC0zOTk3LDcgKzM5OTcsNyBAQCBzMzIgZTEw
MDBfdXBkYXRlX2VlcHJvbV9jaGVja3N1bShzdHJ1Y3QgZTEwMDBfaHcNCj4gKmh3KQ0KPiAgCQl9
DQo+ICAJCWNoZWNrc3VtICs9IGVlcHJvbV9kYXRhOw0KPiAgCX0NCj4gLQljaGVja3N1bSA9ICh1
MTYpRUVQUk9NX1NVTSAtIGNoZWNrc3VtOw0KPiArCWNoZWNrc3VtID0gRUVQUk9NX1NVTSAtIGNo
ZWNrc3VtOw0KPiAgCWlmIChlMTAwMF93cml0ZV9lZXByb20oaHcsIEVFUFJPTV9DSEVDS1NVTV9S
RUcsIDEsICZjaGVja3N1bSkgPA0KPiAwKSB7DQo+ICAJCWVfZGJnKCJFRVBST00gV3JpdGUgRXJy
b3JcbiIpOw0KPiAgCQlyZXR1cm4gLUUxMDAwX0VSUl9FRVBST007DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmMNCj4gYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmMNCj4gaW5kZXggZDg1OTVlODQz
MjZkLi4yOTIzODlhY2ViMmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwL2UxMDAwX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMC9lMTAwMF9tYWluLmMNCj4gQEAgLTMxMyw4ICszMTMsNyBAQCBzdGF0aWMgdm9pZCBl
MTAwMF91cGRhdGVfbW5nX3ZsYW4oc3RydWN0DQo+IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+
ICAJCX0gZWxzZSB7DQo+ICAJCQlhZGFwdGVyLT5tbmdfdmxhbl9pZCA9IEUxMDAwX01OR19WTEFO
X05PTkU7DQo+ICAJCX0NCj4gLQkJaWYgKChvbGRfdmlkICE9ICh1MTYpRTEwMDBfTU5HX1ZMQU5f
Tk9ORSkgJiYNCj4gLQkJICAgICh2aWQgIT0gb2xkX3ZpZCkgJiYNCj4gKwkJaWYgKG9sZF92aWQg
IT0gRTEwMDBfTU5HX1ZMQU5fTk9ORSAmJiB2aWQgIT0gb2xkX3ZpZCAmJg0KPiAgCQkgICAgIXRl
c3RfYml0KG9sZF92aWQsIGFkYXB0ZXItPmFjdGl2ZV92bGFucykpDQo+ICAJCQllMTAwMF92bGFu
X3J4X2tpbGxfdmlkKG5ldGRldiwNCj4gaHRvbnMoRVRIX1BfODAyMVEpLA0KPiAgCQkJCQkgICAg
ICAgb2xkX3ZpZCk7DQo+IC0tDQo+IDIuNDcuMg0KDQo=
