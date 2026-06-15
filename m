Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZzvdJNgiMGq7OgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:05:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA01F688173
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:05:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=VHiMvSOa;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B54FD6144F;
	Mon, 15 Jun 2026 16:05:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brEDvoyMMbIz; Mon, 15 Jun 2026 16:05:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08A5361450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781539539;
	bh=+M/3QJPBeghGUkmBXQ+EZB6lZQTo/WPb+zxrg4XskHA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VHiMvSOa4NAkbM3xoqep8EZLjAT6Onsj3RK4RzHa0r5bLmgsybXMS5zreZRgGlooZ
	 TPmYUmIWn/a68q/mSiOY6VWzFfEbQ/ICBLYK864s2m91e9BYY0nFWGFblZU50K0YmH
	 krO3v/RhB9rfnBJIiUiGzS7/JG2oIVZL6oIQEq087rJxBAZs64U8k0NW/Kag9yq924
	 DGdYk8STWJc+5ttI+PShZzdCnrW5ascOuLr5jZkSKzY6TsXEXmkeFNP6bfEnTV7lmw
	 n9UZV3TVfO9GNxXzICSzxx/IChSjYXLxc3BhcScaM8UHgXPPg3AULkwUETI2ashcFr
	 Cqm58vDDmcCUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08A5361450;
	Mon, 15 Jun 2026 16:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6E6CDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CBA983A0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vB7OpHDik7Dj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:05:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D9D72839F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9D72839F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9D72839F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:36 +0000 (UTC)
X-CSE-ConnectionGUID: ycAB/3aIQBGNONO3PubJog==
X-CSE-MsgGUID: Z47MgINFTau6hXgT5ashHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="99860665"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="99860665"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:36 -0700
X-CSE-ConnectionGUID: D2+6pzcsQyWwF1AZuHKJvA==
X-CSE-MsgGUID: XwqpsJr2SkeWI2oBePHTJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="277709671"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:05:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:05:35 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:05:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uEXw8dGfFTn+9RUUQJj/YMxwGylcfpndHTkcNMxHmhZmEEbEVHKDCghebr3dvzOAtfb/KKjPps3nSrR5AeRZcDrx7kzvxEN5w5wB9/lfFTVfqQ1rL8CwDCm0gDmBwuRO7/W1mgJv4KguxtFEzVpqc4P4+Dse/XsklpslUNoYQdQP8F5yA10kTR/We5HiBM7K5oESwtpn/rVIiK28nDUoM8cqBgazDJq/BqllM3iRecNYJEr4XvSFKnNQZIgeWI00GMg8R+ZwHKHQW5aqukiAdQNb0rsiFsHZmiYCwE39aBhmzR8lJCndrU6bjdb6RVD9MQ13o+i1EeoYXmXfs2TohQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+M/3QJPBeghGUkmBXQ+EZB6lZQTo/WPb+zxrg4XskHA=;
 b=st5eBH+6s2mn4a78BW4X2bJnwvrImdXD09KYP9avexWAlW3AjCmmP6wXIQfPkb5p63Nsak03TBQJzV0itNFW3MTacMSgEQpF3x5diS82tqaUlkAu1TcyeZKvLbmJaxhVTYgLl/h31H4FCAt3YyJyEldt+GF4qeYZOSeNutZu8rlupkGDzri564FkS6dc3sLOquAnZUhTBBo23LlqT+wF8idgIepe/EdBAyrRG6DWVpHuSz9Eht+Yg1mEN5T3Ib+xTIFZoDUT34GlV07Fj5NdKyPoed2Fc/hvPuS08ptsel3uy0l3HJSlfCfhtNVOBnV81pt1PJtY99FOn0a3gkBnMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PR11MB8714.namprd11.prod.outlook.com (2603:10b6:0:b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 16:05:23 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:05:17 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: remove unused
 aggregator node functions
Thread-Index: AQHc8iUGgL8pz2hX4U6EsGIIEWVOq7Y/0y0A
Date: Mon, 15 Jun 2026 16:05:17 +0000
Message-ID: <IA1PR11MB62416E9FC941752C3C0E85128BE62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
 <20260601-jk-cleanup-vsi-aggregator-nodes-v1-5-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-5-36d6ecbe5ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PR11MB8714:EE_
x-ms-office365-filtering-correlation-id: 1aa91843-f1f9-4a33-a597-08decaf7e477
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: uS72huq7Pqc6KqSaAt7zQAkv3/4t6pJjzQs1SZ9XmHwvQU3hMF+zOsyD1xoCyRWQd4J5qEVNQ7fSY83Ve0SkRL6O8be/Vx992cuBloPaU+NBGA1p37mc3i5zh6BkJPr3ITagBT5q6OipG7QtKNPB/h0L23C/Cy4dSbI+69hCLg722xco+hKdjpKUHJcwsItVFPy58YLqV639soRaxIphdVOUXA3foiIScH5I/n2A8J15d+S+QPNrd7b20qi4vBrGGkSoxbNfB6LhU7dEEJLEwbCic0DDXH6qYoCDCFMDNpdVXEr1Ebi2jLMNFPBPI/EGbV8DbyWhcoE5KblHbgHxltaGByAHH6P+/7n1+b401g2ZPnKnU7sYdHmJD06IO3WJH6wuWw3QjIlE4fFj59zvIs8CegLleA2fxS5zpzZSrV/ZX1fLPs+m5jrgXxIE6LCixu2UIigB1VelGHDLSUscbSGwwhiNhwWWaBJd4RYcIUn2px5jk8PfRAqsnrvqq0m0i4NAUP8KdrjFl3wE1wTapdeTU8xrbCfhaDRpLdIZqPYcwUdInF7FXA8ccCzZoSUoKpbGOsKYaVzKoAhKQLa95zB2lTxHQIktSpiBon+US4Qc8JgQB8NLZZMGj7Q+HvkiOYNmY41eoUGHrGf1ongOOuIDu1ez6kGmNzfPiUSDdVRRkOZJMXqckC9P58C+AYOlbMBb1iWYrkeu+JK35TOwUIlAvOoVI/mpuADecgPCwP+2fFpbjo88q9fSuqXDWsZz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3E2cjBhY0tpd1B0SDR5WDc0SjhIM013akY5eG94bHhra0JyTUtuMkdvWm5B?=
 =?utf-8?B?SlNFVzgvWWRlWGIzeXVlUXI4WG5EUnRDK3lVSzdOdDFnNGFQZGVYcUEwTktm?=
 =?utf-8?B?MmZTSXF2SjZ4Y01iUFY1bFZHOGp2U0pyUXdHbXJaK2JQQU1aVlAyUElwV3Nr?=
 =?utf-8?B?Ymhqang5Nzh0aHoxVm5LYzdmc05QS25iMWdHNjVlUko3ZTJESEpBdHhRR0pr?=
 =?utf-8?B?TFZVTmhlT096NFdhSWxNeGNDejI3cVFhM1FxNURHUUE3bHRjVEV1cWJYY1Vl?=
 =?utf-8?B?Qko3dEtvNi9iVFNkTHQ2V3lOR2lvS3Bsc2s3TUNpY0pDUjhWcjVGa2lsZ243?=
 =?utf-8?B?YXUxU3RvUjBvUkpsc2dRWE5aaE0xRGYzUzFub2RqTnEvVVZKU0R4UW52KzZv?=
 =?utf-8?B?bUVVTEtXWTR2WjI4OUtqL3l4QWQyMkJGbDBUZTFUQ2RqcTliRDRvQXFUTHhD?=
 =?utf-8?B?TXVnWi9SWW1TWEgybUFvdi9yb3U3VXdkY1A1MWx5cTVaZ0xqdnJMb3FTZmww?=
 =?utf-8?B?blBSbmozZDNIRGZjaEI5SlBBNmlSVHN2eU9BSW0wU3EraFo2S2ZMK0lXZ0Ex?=
 =?utf-8?B?T0JrenhRTHRqTm9lcHJzTlhXMTJyMWZNY1lwZUxJekpSbUJKaDJtUHRGWDdx?=
 =?utf-8?B?MCtDcmNKdG1RVzhNbmxVY3A0dkpHL2o5V2hnVEZESzlZbE9YRGUvbUM4WmdQ?=
 =?utf-8?B?VTVJcllQdzhuNEdBS3FGUDBpY1R5NkRvV3g5Ym1PNjkyOEZKVGttU2NOSjdS?=
 =?utf-8?B?MDlrb1RjeVhKZTJwTEd1OGpFVUFRdGdHcmVod1dmSURaWTNqN1JxVXN2YWl2?=
 =?utf-8?B?MGtPRFFFc2k5K0h5UXkyRUg5ZGxLMlZKTm9NYm5ydWJGTThCRUQzYnZkcXBQ?=
 =?utf-8?B?TlBhOUUwZmxobHBhWlBGaUVsZXJBLzZPWUUzY21HV3Y3djIvL3VjNFlTQStW?=
 =?utf-8?B?TmhSQkpwZWJzRlp5ZDc5RlBiMTU2T3ZwcmFRcXVnTmpNQUcrV0xEYTRrZzJQ?=
 =?utf-8?B?Ui82VkpXY0c3ZFR2S3N3cUtxeVNnWUtqQWFsWUdKZGhhdEwyWk1CSTFBa0dq?=
 =?utf-8?B?NUkrcE8rcm1scW04a2xxZWZSa292L3IzMkV2eFVQY3JxNVRYT2dVSEJ2clNR?=
 =?utf-8?B?dlhnZWdwNWZ5UFh6U3RKcXdOK2gyNzc0R2VtQzA4SmVIR20ray9kYmMxeVRl?=
 =?utf-8?B?TnVLRFhTWUt2VGxCWGJkSHZVRVRKcWlVcWdpMXV3RFo1eDhqb0d2K28xRGll?=
 =?utf-8?B?YTRvUmFSUm9mR3NJSzhuRlVrL1V4RURkVE9sWWVER1Z3amQ2aldJUmhuUUE1?=
 =?utf-8?B?eDQ5TkdoYnJpaHNpTCszRnhTMlpCZXJtU2tWR0R5WVl4VmJ0SFpQdGR1aWEy?=
 =?utf-8?B?elZSNXdXRDlYaWxlVFl2V2xqMEFLQzV5ZURDY0QzelNWS1NxVlFseTdUMHRt?=
 =?utf-8?B?TjF0TUQySTJ3R2FMdklvNjdoMlRTb1hKbTVFSHEydDdjUGwrMHZoRUhBa3I2?=
 =?utf-8?B?UjBmNFFHa1hLRC9uS2Q1WnVXbVlobjBJMjFSaFhUTzliVnVxNTBLVEFiYndu?=
 =?utf-8?B?WXNJNnkvNzRPbG5Da2JITERSRGcxM2VoQllXUkw3T0M2OGFGVmZ0WXRGL3F2?=
 =?utf-8?B?S1pVOTVaeWVIRk5mZWhuZG5Bb2s1TDI3MDk4WWFWTFVQaWVmazBRMndRRUs2?=
 =?utf-8?B?MnU2bnJEc3VQaWlTT0dudUI3WHQ1MS9OT0pjeFFzKzJsQXdsRGo4NHZuZGtr?=
 =?utf-8?B?QUF3T1hCOC96YWhyYjVBN0p5ZTB4ZHlGeDNqTHJtSHJLaGlUY2JUb2JoeWs4?=
 =?utf-8?B?T3RYL3poR0ZmenNQVittUTNBczY1eVRaWXlRTGZqcUFZYXA0dVkxWjBLSnc5?=
 =?utf-8?B?eGN1L3gwckFpQVI2elpid3FCRnBieklhL3JPdVRKeVI5NW95a3lreEY5dGo5?=
 =?utf-8?B?cW9EblhoTlBLdjcreVhVYVJoWkxvK1RYRjc0M0VHUTY0MW9ZVWdubngwZW1h?=
 =?utf-8?B?aTk1eHlQYUNYbGF6aG45UTI0Z08wdXBqWUpsSDRvZ09jYUlaS2lSdzlKTUk1?=
 =?utf-8?B?QVN2TmF6cnYrTHYyUCt0SUMxQy9oc2JWdThPb2dVaFljcEgvOWF4RFRXTGov?=
 =?utf-8?B?YmFVdytsMGRuK0FlVE5pT1p2aGZlYjhVQTczMlVuWVFvSjBkelhkdHdQZW5v?=
 =?utf-8?B?b0xIM3lUUVhxMDVpdGdsZE81a1Z6dVBwbHRaODFoQXgwdlFSYXFrck1JWlJu?=
 =?utf-8?B?S3lPMGllMVlLRzJja1NvZDMwMEdvS1BlRkxIc1J1UGJ6UVZwZy9IWTVYVWU0?=
 =?utf-8?Q?OBuOIT5qtiNtUzGsD6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: a7QiphY5GgijjVj7MhCdiiSrEXTEXrxIJEuPAaEjwLEbwXQnSJ8rH9RS4XB3W8XrNhuJnpphMyWd+/Wd5ruM2I4Y5zrqKELWQhF1++1sRC3/tMkGt/0pVtgHMSChy5Io7MesR29f+g3+YlxlMhVIPMIGxT5/ssT6G1qhkTknJT8IVFTWeTHSeWiEV4kSkUyvzeoJmid3U/ZjHQQr1RiWakDrAHyZS22mrEkiKHDspqCufKAHWu8Eji1OsNFasncJ2TlCJ+PmjtXb7s2CigcceUPe+SS68z0avxX6gs6sW+COa36mkEY04luby4FTkHKQNKzch9wkcBRs7mRVT2URXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa91843-f1f9-4a33-a597-08decaf7e477
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:05:17.1621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSCQFMGdpNvEqvUGM/dgswxReQFsfZ+LyWsAtdNIfMVBU3Q7l7+YXq1seoO0nJaDIyz6ldszmwAPzWSPnk1ocw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781539537; x=1813075537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+M/3QJPBeghGUkmBXQ+EZB6lZQTo/WPb+zxrg4XskHA=;
 b=jcAnNtlmz7f2xx6dmgsdTMyl9IIDv/NGpGgNjyhEzrdO/XKb/b6CoyK4
 tF7rr3P4kK6RLRqleoC2Qxh5VbUw8TYo8hj2z6ZxRgawyhFRKoo2O1Mh+
 +hzv1iH9BlYVAvWYHMc8RKEF9JZ8VcXfDxAZxeR05rqKuVh4kiELwAYpd
 fm7Z6nmQ+VwhHeib1tGclP3rQOYa9197fZ0YPrNvSTO4zce1LiBoZjywU
 tsTKlStoKmdNX+A1wkNg0tgZE8NQZrO8KkHco0PObDgNEEIPGtkiVen91
 c1Xh+NslShoDpjRfJmuR6dH6zr4Wnt39UIrAuaRs1fpRImv0hvk2/Jt+n
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jcAnNtlm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: remove unused
 aggregator node functions
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,IA1PR11MB6241.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA01F688173

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgSnVuZSAyMDI2IDA1OjQ0DQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgNS82XSBpY2U6IHJlbW92ZSB1bnVzZWQgYWdncmVnYXRvciBub2Rl
IGZ1bmN0aW9ucw0KPg0KPiBXaXRoIHRoZSBpbnRyb2R1Y3Rpb24gb2YgaWNlX2NmZ192c2lfYWdn
KCksIHRoZSBpY2VfY2ZnX2FnZygpIGFuZA0KPiBpY2VfbW92ZV92c2lfdG9fYWdnKCkgZnVuY3Rp
b25zIGFyZSBubyBsb25nZXIgdXNlZC4gUmVtb3ZlIHRoZW0uDQo+DQo+IFNpZ25lZC1vZmYtYnk6
IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTog
QWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IC0t
LQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NjaGVkLmggfCAgNiAtLS0t
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NjaGVkLmMgfCA1MCAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gMiBmaWxlcyBjaGFuZ2VkLCA1NiBkZWxldGlvbnMo
LSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBD
b250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
