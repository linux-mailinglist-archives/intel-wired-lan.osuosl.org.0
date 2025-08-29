Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7C5B3B606
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 10:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9272F84079;
	Fri, 29 Aug 2025 08:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 64xNeE0efx7O; Fri, 29 Aug 2025 08:30:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C25A8407B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756456245;
	bh=xN8cTACto49SzX1rEGhAdOLJyQ3SoBT5cVCMxp5HI/g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YFxCNQVQeYnRLDOftrEGr6CEDuuu15XxpKXK8A0sOcSpFuRa8gcN+hhVn1VE90XMT
	 e2FilZKy7lBtSYs3AIDhKTpjcQDuCnySXpQxSFKemnLuXCqysH1ru25euaTioaac02
	 yIyBciB463eoSMPEsBUvyOz7vNcpFAyuvahSxypMw57vaBWhQcibb+G4iqr1SXrDLZ
	 7XyZ89p3+wYyuBECKdAdCVEGpv/d8NQUzouMVapAqhPAe2vPgukjd7gXdTTgf/KIZ7
	 KvlOMkm9T6StHwqtlC1xPrSxYzGtrT5/0xRyj+1Yqv83l04OrK8QKQCj57OqM6Vck/
	 RfQ6gsdVW0TGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C25A8407B;
	Fri, 29 Aug 2025 08:30:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B1350D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 08:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9193E414B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 08:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQ4T9LJvtnS4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 08:30:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BB5C740335
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB5C740335
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB5C740335
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 08:30:42 +0000 (UTC)
X-CSE-ConnectionGUID: f2AxtDBkQBackZTGsyRKnw==
X-CSE-MsgGUID: oBwC8Hb0QUiodvBlhvhWZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="46308142"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="46308142"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 01:30:36 -0700
X-CSE-ConnectionGUID: IW614/r+SViUBciF9buhDA==
X-CSE-MsgGUID: sjHh/CmLS+eyh4/aWqNKTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="175626022"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 01:30:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 01:30:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 01:30:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.52)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 01:30:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qCAbOmvRcUm4NZY7LGxbf9U/PPC0BkbtbobD+QQGVJ4734qkoEgiU6jNFy7kCljQYKe7YqENKSEH6wlpynNh1v550HkAQ/bS5Vp+GXUQ368RtfpjSJTnNZSawCLlCnE1YmAwp/PiCmyjOe+lvjHZfoDIRyJVxQuI96bLmPr8oLc2u/OJCU4gbLlL4KFsRqeQdRhgBZxK7CAodxgm+FuKglx8QcMheqg5LN/03BOpyl9hCpJNaTX7GPOrfoch8IzeetOG0iOWeff5tT8GgfFg/nD/MjIp1aK7KqF0yq+HfSh4Jmp8j3vd+3JpLo7b81BpX9j5Kc4+5t9b3u/7K7Q7AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xN8cTACto49SzX1rEGhAdOLJyQ3SoBT5cVCMxp5HI/g=;
 b=OQS4vTdcwmNWaHzGxFw4C+A/0/bY8DmbbHwWiaETOnenGOQohR7C4JHeDxyW5WAzRqC9bgoLJCAi4SDQH4IU4X8m2e4d197Qh/SGkU8C4QHh/nEytNATC6fWwwtmT26QWMRmgtmOu1xA2pegYGG1d+TXHXkuk4oGkwSlC+/543VkwiaWToRF4i0ta1Pzpbzd8W6+bIQqofoqSL5gXOFjs2w04ttSCA9jEcUEYZPCz5SIoTqAlDMjr8ult+f8Omz35pUWkgooKHChNbske9y9sopx/9eq7dHYDUFys0FW3OZPi9RlbX7vEmqmR5+InnPx3vgW6L04+vrvbFc3nOJIrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by SA0PR11MB4560.namprd11.prod.outlook.com (2603:10b6:806:93::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Fri, 29 Aug
 2025 08:30:26 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.9073.016; Fri, 29 Aug 2025
 08:30:26 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v1] ice: add support for unmanaged dpll on E830
 NIC
Thread-Index: AQHcFp9iGCnCyumMAk2pU9WPyeV8BLR1Y9uAgAPtA2A=
Date: Fri, 29 Aug 2025 08:30:26 +0000
Message-ID: <SJ2PR11MB845213F9695C92849A2ADDB19B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250826153118.2129807-1-arkadiusz.kubalewski@intel.com>
 <f94db328-fe7a-44b4-8fd9-bda904bd9540@intel.com>
In-Reply-To: <f94db328-fe7a-44b4-8fd9-bda904bd9540@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|SA0PR11MB4560:EE_
x-ms-office365-filtering-correlation-id: 63c2b4c8-acbb-44b3-2a93-08dde6d64e1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UHRYcm1tS1RSSVp6WGkvM2dtVGQzallXd0FPcWZRUnBENFFuRkY0Z1FrOGlq?=
 =?utf-8?B?c2p3NW11REdhc0ZVc0ZlWHFsc2NoK2JwUXJIcTZYZ21JLzJSWE1RNDhWSWRR?=
 =?utf-8?B?UzRkNU1vRkc1YXRGd0d3a1RnZGNIRVZnYVhFQksxdHZlQi9BNk5SVEhLcWV1?=
 =?utf-8?B?MWF6QW9oWGRha1FEM29YMkhhMDJEdGNIaHVDb3RiOTdRK3ZJMDZ1b2VtNk5Z?=
 =?utf-8?B?TlBNS1lCWGNLVUZIQkFjV2dWd3AvWGZsQ3FpRXpCVFY0UytWMFJweXdxeGhy?=
 =?utf-8?B?VGF0c0hwNlJqRzFYU0p3cC9ENHpYSzZOQlNxOWRFZitsbGxRYlYvMlc2N0lF?=
 =?utf-8?B?R2JTemRYVU4vWHNqbXNFd0s1NjRTUkRsc0ZXN01lNDBpZDVWWUhaZzl3aG5t?=
 =?utf-8?B?UXhvbURuUzRiSXo1R01hZW9wc2lVY0w5L3NqL0g5UVBFWXVxdUU1T2kwaFNU?=
 =?utf-8?B?U2JnSkVoaDVPYkhiZUJkY1REMFVhekdKeGF2cjR4NG9HTmdvWm5sMWdVRjVT?=
 =?utf-8?B?SjJwZXI0RzFETEJjeS8vUThaNi9Wa1l5R0VxZzcraXpMUVM2MTQxK2hNRkZL?=
 =?utf-8?B?dUY5UUZ0SjJBUWppS0M2M0F6TGVkRG9iQ2xTejBIaGhFN3B0SzJIQ08zTlFo?=
 =?utf-8?B?aEtLbHVUU2ZpYzBkT3NIc1FOdCtnVzZ3NCthNHdYUmRhSXNLd09UNWRwZmZT?=
 =?utf-8?B?OHNBSTFpc1Y2cmx2b2ZVUVpEbnRUbDFWUjVEalFpVmhUNW5QK2xQNk43QURZ?=
 =?utf-8?B?WU9HNVhrd2d2S2hMMi9xZ3pOWWV4ZG05VmovQ1JEQ25Gd1d6VnZRQzhUZ2ts?=
 =?utf-8?B?WVF0d3J5K0JucllUMTVKVDIxaVU0bDNZbWhTalRmTUpHUlEyR01EL2labzVM?=
 =?utf-8?B?U3FqeHJzNGJqOHlqTThYck1vQXpZc1BYci9LdDNnY25OakJQc0NWM04zeXM3?=
 =?utf-8?B?WjRsKzdOdHpVVDE0U3BRblFjMEI2N0ZQMHl3ZlZReFc3aWZzYzNmSDFtSlE0?=
 =?utf-8?B?N3RmWUFlSlNobjlkWFhtYnBBMWM0Q2FVaTFWUFY2QW11NzB6RFgxakt1ZjhX?=
 =?utf-8?B?OVlyeGtSMlZkTmZXNk5rU0l3cnRuOStrMnFiN21ZRWQvclkzUlBHRWY5YWtC?=
 =?utf-8?B?czEyVHNacVlFcDFldTk0ZDFvNGZZelgvYmZpazZaUTRrempqVVJTSWtKRnFt?=
 =?utf-8?B?b0xuaVpsR3dTbnUwdG5kRFhheGR1V25iS2UxMEJjMis3V2RRTXVGOWM3Z1pQ?=
 =?utf-8?B?WlpMZjVsNkpmbExtam1Bc1NjOEJmV281TjFVbWxJbWV2dktNRHlmRGwvTzBm?=
 =?utf-8?B?cVhpaThyU2h0bDB4ZGFzVTcyOVpxbXlsSWJXSzhBY01hQ2VCalpONGpwREpx?=
 =?utf-8?B?MGdFbm5SbzdEZmVxTlFBcUZuMG9VcVBrd2Q0SmxoTTY2cERuaU00SWpGTXBH?=
 =?utf-8?B?dDBuRmVPMk1GU21VSkxvS2ZBcWFKVC9UblNzRjFnY1MxVDgyNnZQSklhU2Y1?=
 =?utf-8?B?V2RqMVJncUtsZXBNMlphdTJGeVg0TWNiQjVtVTgvMkR4UDE2bEt5aUczVm1Q?=
 =?utf-8?B?SEs0NUlLMTNpelNRdW1mc0M5VVVDWmx6VkpYK21KZmYxQUFGT1JjeVhSWnRV?=
 =?utf-8?B?Z1pVRFhkSE5DeHZrRUNFVWduNWJ0U2dORGxjQW9vTkhtbjNPWjdoaHVNdEsw?=
 =?utf-8?B?UFdrRmpHL2JMMlNVdDNPZWdxakZUd0VWbzNYMEJVN3dpVkVpb1hTZXl6TVN3?=
 =?utf-8?B?dFo5ZWp3eWY5UEc5VE1rNHk2T0I2bWNWams0OUR2NWNheHRCQTFLL2hCVzNr?=
 =?utf-8?B?K2ZMZ3JPOExtSm92ZHFhZEw1OHVEckVteG56elN1cWs1cjF0RzZhdjNtU3Av?=
 =?utf-8?B?NFFDdUNnRFFFVWlvV2w2RjZaem1CU1VoMTlHb3V3SnpyWHVwK0luSmxFUU8r?=
 =?utf-8?B?U2piMTNURWdBcnNkeHQyU0dYRHJFMitWMVA5NGtjOUtuSERndENKQThVam5z?=
 =?utf-8?B?dXBiNldvMk53PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTBKVVE3M0E1SkpiTUdZZEpFQ0xMV1dBdVBreVBOQXhic0gwSEYwbG9WUXJK?=
 =?utf-8?B?M1MvaVVFa1JvWDd1cnFvaXQwV1Rqa3dMZVp5SjUwR2JrTHVWOFVKb3RzVjcv?=
 =?utf-8?B?S3NleU5ydlgrQ0YwQ3hoMjhYZ21nb090ci93Wm40OEM2NlRrZVp0TVJWbVAx?=
 =?utf-8?B?TGtiNW1xZjlqOVVrQjJQNm1UbWVHSWhBRE01NW4vU2pKcDFIZWNCSHNtWDJl?=
 =?utf-8?B?aXBRejg0MWJXNjhqTllKRWFRZytPM2FteXlsamE4ck1pRmZpZ2NqcHdpbzVk?=
 =?utf-8?B?UDc0WmpGc1U3TXlWWWdIUzJzd2dnT0VOVkVHMG9wMXF2TVNTMnlybGFjNW5y?=
 =?utf-8?B?djhSYjRaZXpGUmJld21PWmgxNFVtTXdCRUlzdDE2ZHl3TjlFQXhlYTNKM1BF?=
 =?utf-8?B?aXdlclZlVzVZNXFqaHRuTjEvQmZ6blNzNHNUald2Ky91M252T094UEN1UmlV?=
 =?utf-8?B?dHlWa01YU3hvRzViR0tIOEhXTHVqd1pvblh1T2lHMzhGV2plRDdtOWc2UDFS?=
 =?utf-8?B?NXBKUXFhcm1yMGJYS2JISE5KQk1iS0FVQlQ5N2s0UUozcEhPRUpGNzhGNDcr?=
 =?utf-8?B?TThWQXk5M2wzK25yZS9NTTE2VVdQUU5VKzlycU9nZDVxUUtyM21LbG1tZU0y?=
 =?utf-8?B?M1Jma1B0alpBWVJacysrQ2l3NnlubVlLMCtCb29RVkxpNVlYQUNqbmlZOWMw?=
 =?utf-8?B?QmI2TFB1U2FLbTRDR2dOK3FzZUEvMWpJczNubUJYc0RlY28rWEZJbnYxMHZP?=
 =?utf-8?B?Q1ZWMis3WTU3TnVwd09BcGlkcjh3dTk5ZGtuMjNPUTh4TGxaS0Q2ZUNKU2ND?=
 =?utf-8?B?djRJd1ROdFhrQ24yMHc3Vmdrd256NTZ0NWFjZHg5WjZubWxSSjZtMm9sVHEy?=
 =?utf-8?B?Z1U5UFk0anp4UFBQSzYrTkF1Sjk2Z2x4NTZHeS8wSEtRVDFMSmd3TjJuZytF?=
 =?utf-8?B?MHhSbmZPNE1vbFNVMDh0enBkOWVVZlYzMlllTmdYT0U1Wi9NTGtubXNva1pq?=
 =?utf-8?B?Nk13QnUwSU0rNmRsZndENTBEWVZoYjFmWEVvMm1JbnhNK3E1VzdqZ1FwRWcw?=
 =?utf-8?B?dTBaNlNHaFNILzZVcERCb3lxZEpNeFVXYjZ1NHpvblBTcEZoWXVnMFdxMVdP?=
 =?utf-8?B?SHBWVTBaY3A4Sng4a0xVYThQdlhmTjFYQ0JNYmZsZEFoWEd3ZTV5VUNGUEpu?=
 =?utf-8?B?VWJUQXNwZUdtZURHa2tZaFZhd3NJOHdPTEFsQkNKZEVXaElwcTNLZk1oRE1P?=
 =?utf-8?B?T1FLbzdoWW9BTExybmZPTmZsQ1hlNUNoUjRkUmVsZVkrQ3RTbm8vT3dXVDFX?=
 =?utf-8?B?UXJSMXF5SzNrVitqR0phZEZaN3FGeW1HSU5WM1FRUWd2cWVJVnFrOXlXc0lt?=
 =?utf-8?B?eThpWmtrZmNwd3BXeGQzMlFzWFVoQXZ5MkVqWUpSaUFqVkR1SXo3TG1CMkt3?=
 =?utf-8?B?VE8wa3BFSENFeXE2L0hSeVRYeUoyUWZIMlBXWHdLMzBhLzFYdkhoRmQ4aXly?=
 =?utf-8?B?dThpaVBZU3VoZFE1VVN4elJOb2RxdC9saUNPWjJRZ3RXQVp1NGl1M2t2bFh2?=
 =?utf-8?B?aDhFb1llMlZWM3pDbi91d0RqazNFeGFGSHBBdEp4aVZZaGlEQXk4czhsZnNY?=
 =?utf-8?B?QmZreUFaYjBaN0RhekNRWlRGRkx2ajZ5eW9HVXEzT0M3M2tadFBCZHZhMm5n?=
 =?utf-8?B?YXFaODAxYkNPOFRUaTAxZUdnd0ZIMndCaTFlNS85M0VheUk4VzkxZE5JUWEz?=
 =?utf-8?B?Y0tLN2F1aFoyK2FSc1F1OWdXRUQrY0JwZXAvektWY1ZYaXlrcXorRzJ0Z3d5?=
 =?utf-8?B?TGlvSzRSYzROZTBQT1BZN2owZWJrRWtjMVpOSEFDR2FHRk9uMlpnWlZnbC9Y?=
 =?utf-8?B?RWlPRE0rdkpER3BEM1NBVkVFZlViQk81Ukx4ZGFCY09Vc21YWmNQWmc5OElw?=
 =?utf-8?B?RTFtbHpRZG9DQTBZR25OS2dCUTYvdUZ0TXU0cXdyaUpMTDlzUitlNW8ydXRV?=
 =?utf-8?B?ZkFWVkxPb01hSXpmeWJ4VW9aY0hBTEVCWFhnZFhIVjdrZm9kSmN0WUcrbnBK?=
 =?utf-8?B?WnVQSC90c2U0K0VySERFRDQ3YlhiOFg4QWd3dGxwVWJvZkFmVWs4bjBVUnA0?=
 =?utf-8?B?TTZzOVhCeDQ5emhuRGUrV2lhRWhkanlKY2lKbXFYczZmb3JzUXpwYm9sRFJo?=
 =?utf-8?B?TUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c2b4c8-acbb-44b3-2a93-08dde6d64e1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 08:30:26.4145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QU9gwOekYuM6ZoSrsrlpRNRJo9p9sLFf9i8nECwSF8C003tjjey4V3eVnzfq1I39AUc77eXgqvyRKI+tgmW+FCgd/F4Jv0b2273UcQcCnRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756456243; x=1787992243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xN8cTACto49SzX1rEGhAdOLJyQ3SoBT5cVCMxp5HI/g=;
 b=NbyHx4jAeYFyMhBHf8xcSyNMnzTQHiglrbrAf/1QiVMyfWpUOm9PsPAg
 GtFl+VsnCzNVmV9Bs/APCPoCvdvEuPAlIF33bhs9jvFxWPhv9m43eVxnd
 Ogm5TwGjOLt101AV2TUfK8yMf4pphGC9OQc2/wnhIiN0TNOSEm8rxQD7M
 pMg7fmLcxEMi333wkpbtYLzPtZPQvsCjB6KwcXw5peUq6HqcWGTsDTOrI
 m2HJ89tjR5i/6mANZRQ6sQ9wdLpkH/y7YdU3wBGdi3FUT+/djdNP6dir9
 8ptpZ3m9Hl7TstMogHaqBHEAzZj59b5a14tlLORGo16qJdLawamgqROa3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NbyHx4jA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add support for
 unmanaged dpll on E830 NIC
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

PkZyb206IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
DQo+U2VudDogVHVlc2RheSwgQXVndXN0IDI2LCAyMDI1IDEwOjMzIFBNDQo+DQo+T24gOC8yNi8y
NSAxNzozMSwgQXJrYWRpdXN6IEt1YmFsZXdza2kgd3JvdGU6DQo+PiBIYXJkd2FyZSB2YXJpYW50
cyBvZiBFODMwIG1heSBzdXBwb3J0IGFuIHVubWFuYWdlZCBEUExMIHdoZXJlIHRoZQ0KPj4gY29u
ZmlndXJhdGlvbiBpcyBoYXJkY29kZWQgd2l0aGluIHRoZSBoYXJkd2FyZSBhbmQgZmlybXdhcmUs
IG1lYW5pbmcNCj4+IHVzZXJzIGNhbm5vdCBtb2RpZnkgc2V0dGluZ3MuIEhvd2V2ZXIsIHVzZXJz
IGFyZSBhYmxlIHRvIGNoZWNrIHRoZQ0KPj4gRFBMTCBsb2NrIHN0YXR1cyBhbmQgb2J0YWluIGNv
bmZpZ3VyYXRpb24gaW5mb3JtYXRpb24gdGhyb3VnaCB0aGUNCj4+IExpbnV4IERQTEwgc3Vic3lz
dGVtLg0KPj4NCj4+IEF2YWlsYWJpbGl0eSBvZiAnbG9zcyBvZiBsb2NrJyBoZWFsdGggc3RhdHVz
IGNvZGUgZGV0ZXJtaW5lcyBpZiBzdWNoDQo+PiBzdXBwb3J0IGlzIGF2YWlsYWJsZSwgaWYgdHJ1
ZSwgcmVnaXN0ZXIgc2luZ2xlIGRwbGwgZGV2aWNlIHdpdGggMQ0KPj4gaW5wdXQgYW5kIDEgb3V0
cHV0IGFuZCBwcm92aWRlIGhhcmRjb2RlZC9yZWFkIG9ubHkgcHJvcGVydGllcyBvZiBhIHBpbg0K
Pj4gYW5kIGRwbGwgZGV2aWNlLiBVc2VyIGlzIG9ubHkgYWxsb3dlZCB0byBjaGVjayBkcGxsIGRl
dmljZSBzdGF0dXMgYW5kDQo+PiByZWNlaXZlIG5vdGlmaWNhdGlvbnMgb24gZHBsbCBsb2NrIHN0
YXR1cyBjaGFuZ2UuDQo+Pg0KPj4gV2hlbiBwcmVzZW50LCB0aGUgRFBMTCBkZXZpY2UgbG9ja3Mg
dG8gYW4gZXh0ZXJuYWwgc2lnbmFsIHByb3ZpZGVkDQo+PiB0aHJvdWdoIHRoZSBQQ0llL09DUCBw
aW4uIFRoZSBleHBlY3RlZCBpbnB1dCBzaWduYWwgaXMgMVBQUw0KPj4gKDEgUHVsc2UgUGVyIFNl
Y29uZCkgZW1iZWRkZWQgb24gYSAxME1IeiByZWZlcmVuY2UgY2xvY2suDQo+PiBUaGUgRFBMTCBw
cm9kdWNlcyBvdXRwdXQ6DQo+PiAtIGZvciBNQUMgKE1lZGlhIEFjY2VzcyBDb250cm9sKSAmIFBI
WSAoUGh5c2ljYWwgTGF5ZXIpIGNsb2NrcywNCj4+IC0gMVBQUyBmb3Igc3luY2hyb25pemF0aW9u
IG9mIG9uYm9hcmQgUEhDIChQcmVjaXNpb24gSGFyZHdhcmUgQ2xvY2spDQo+dGltZXIuDQo+Pg0K
Pj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2Fk
aXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gICAuLi4vZGV2aWNlX2RyaXZl
cnMvZXRoZXJuZXQvaW50ZWwvaWNlLnJzdCAgICAgfCAgODMgKysrKysNCj4+ICAgLi4uL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaCAgIHwgICA0ICsNCj4+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYyAgIHwgMTEwICsrKysrKysNCj4+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uaCAgIHwgICA3ICsN
Cj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmMgICAgIHwgMzA2
ICsrKysrKysrKysrKysrKystLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2RwbGwuaCAgICAgfCAgMTEgKw0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX21haW4uYyAgICAgfCAgMTQgKy0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wdHBfaHcuYyAgIHwgIDQ2ICsrKw0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oICAgfCAgIDEgKw0KPj4gICA5IGZpbGVzIGNoYW5nZWQs
IDU2MCBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCj4+DQo+DQo+DQo+PiAraW50IGlj
ZV9pc19oZWFsdGhfc3RhdHVzX2NvZGVfc3VwcG9ydGVkKHN0cnVjdCBpY2VfaHcgKmh3LCB1MTYg
Y29kZSwNCj4+ICsJCQkJCWJvb2wgKnN1cHBvcnRlZCkNCj4+ICt7DQo+PiArCXN0cnVjdCBpY2Vf
YXFjX2hlYWx0aF9zdGF0dXNfZWxlbSAqYnVmZiBfX2ZyZWUoa2ZyZWUpID0gTlVMTDsNCj4NCj5v
YnNlcnZhdGlvbjogbmV0ZGV2IG1haW50YWluZXJzIGRvbid0IGxpa2UgX19mcmVlDQo+DQo+PiAr
CWNvbnN0IGludCBCVUZGX1NJWkUgPSBJQ0VfQVFDX0hFQUxUSF9TVEFUVVNfQ09ERV9OVU07DQo+
PiArCWludCByZXQ7DQo+PiArDQo+PiArCSpzdXBwb3J0ZWQgPSBmYWxzZTsNCj4NCj5pdCdzIGJl
c3QgdG8gZG9uJ3QgY2hhbmdlIG91dHB1dCBwb2ludGVycyBvbiBlcnJvcg0KPg0KPj4gKw0KPj4g
KwlidWZmID0ga2NhbGxvYyhCVUZGX1NJWkUsIHNpemVvZigqYnVmZiksIEdGUF9LRVJORUwpOw0K
Pj4gKwlpZiAoIWJ1ZmYpDQo+PiArCQlyZXR1cm4gLUVOT01FTTsNCj4+ICsJcmV0ID0gaWNlX2Fx
X2dldF9oZWFsdGhfc3RhdHVzX3N1cHBvcnRlZChodywgYnVmZiwgQlVGRl9TSVpFKTsNCj4+ICsJ
aWYgKHJldCkNCj4+ICsJCXJldHVybiByZXQ7DQo+PiArCWZvciAoaW50IGkgPSAwOyBpIDwgQlVG
Rl9TSVpFICYmIGJ1ZmZbaV0uaGVhbHRoX3N0YXR1c19jb2RlOyBpKyspDQo+PiArCQlpZiAobGUx
Nl90b19jcHUoYnVmZltpXS5oZWFsdGhfc3RhdHVzX2NvZGUpID09IGNvZGUpIHsNCj4+ICsJCQkq
c3VwcG9ydGVkID0gdHJ1ZTsNCj4NCj5zbywgdGhpcyBsaW5lIHNob3VsZCBiZSBlbm91Z2gNCj4N
Cj4+ICsJCQlicmVhazsNCj4+ICsJCX0NCj4+ICsNCj4+ICsJcmV0dXJuIDA7DQo+PiArfQ0KPj4g
Kw0KPj4gKy8qKg0KPj4gKyAqIGljZV9nZXRfbGFzdF9oZWFsdGhfc3RhdHVzX2NvZGUgLSBnZXQg
bGFzdCBoZWFsdGggc3RhdHVzIGZvciBnaXZlbg0KPj4gK2NvZGUNCj4+ICsgKiBAaHc6IHBvaW50
ZXIgdG8gdGhlIGhhcmR3YXJlIHN0cnVjdHVyZQ0KPj4gKyAqIEBvdXQ6IHBvaW50ZXIgdG8gdGhl
IGhlYWx0aCBzdGF0dXMgc3RydWN0IHRvIGJlIGZpbGxlZA0KPj4gKyAqIEBjb2RlOiBoZWFsdGgg
c3RhdHVzIGNvZGUgdG8gY2hlY2sNCj4+ICsgKg0KPj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNz
LCBuZWdhdGl2ZSBlcnJvciBjb2RlIG90aGVyd2lzZSAgKi8gaW50DQo+PiAraWNlX2dldF9sYXN0
X2hlYWx0aF9zdGF0dXNfY29kZShzdHJ1Y3QgaWNlX2h3ICpodywNCj4+ICsJCQkJICAgIHN0cnVj
dCBpY2VfYXFjX2hlYWx0aF9zdGF0dXNfZWxlbSAqb3V0LA0KPj4gKwkJCQkgICAgdTE2IGNvZGUp
DQo+PiArew0KPj4gKwlzdHJ1Y3QgaWNlX2FxY19oZWFsdGhfc3RhdHVzX2VsZW0gKmJ1ZmYgX19m
cmVlKGtmcmVlKSA9IE5VTEw7DQo+PiArCWNvbnN0IGludCBCVUZGX1NJWkUgPSBJQ0VfQVFDX0hF
QUxUSF9TVEFUVVNfQ09ERV9OVU07DQo+PiArCWludCBsYXN0X3N0YXR1cyA9IC0xLCByZXQ7DQo+
DQo+bml0OiB2YXJpYWJsZXMgd2l0aCBpbml0aWFsIHZhbHVlIHNldCBzaG91bGQgYmUgb24gdGhl
IGVuZCBvZiBnaXZlbg0KPmRlY2xhcmF0aW9uIGxpbmUgKGhlcmUgQHJldCBzaG91bGQgYmUgZmly
c3QpDQo+DQo+PiArDQo+PiArCWJ1ZmYgPSBrY2FsbG9jKEJVRkZfU0laRSwgc2l6ZW9mKCpidWZm
KSwgR0ZQX0tFUk5FTCk7DQo+PiArCWlmICghYnVmZikNCj4+ICsJCXJldHVybiAtRU5PTUVNOw0K
Pj4gKwlyZXQgPSBpY2VfYXFfZ2V0X2hlYWx0aF9zdGF0dXMoaHcsIGJ1ZmYsIEJVRkZfU0laRSk7
DQo+PiArCWlmIChyZXQpDQo+PiArCQlyZXR1cm4gcmV0Ow0KPj4gKwlmb3IgKGludCBpID0gMDsg
aSA8IEJVRkZfU0laRSAmJiBidWZmW2ldLmhlYWx0aF9zdGF0dXNfY29kZTsgaSsrKQ0KPj4gKwkJ
aWYgKGxlMTZfdG9fY3B1KGJ1ZmZbaV0uaGVhbHRoX3N0YXR1c19jb2RlKSA9PSBjb2RlKQ0KPj4g
KwkJCWxhc3Rfc3RhdHVzID0gaTsNCj4+ICsNCj4+ICsJaWYgKGxhc3Rfc3RhdHVzID49IDAgJiYg
bGFzdF9zdGF0dXMgPCBCVUZGX1NJWkUpDQo+DQo+c2Vjb25kIHBhcnQgb2YgdGhlIGNvbnRpZGlv
biBpcyBhbHdheXMgdHJ1ZQ0KPg0KPj4gKwkJbWVtY3B5KG91dCwgJmJ1ZmZbbGFzdF9zdGF0dXNd
LCBzaXplb2YoKm91dCkpOw0KPj4gKwllbHNlDQo+PiArCQltZW1zZXQob3V0LCAwLCBzaXplb2Yo
Km91dCkpOw0KPg0KPndlaXJkLCBidXQgbGV0IGl0IGJlDQo+DQo+PiArDQo+PiArCXJldHVybiBy
ZXQ7DQo+PiArfQ0KDQpTdXJlLCBhZ3JlZSB3aXRoIGFsbCB0aGUgY29tbWVudHMsIHdpbGwgZml4
IGluIHYyLg0KDQpUaGFuayB5b3UhDQpBcmthZGl1c3oNCg==
