Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YP7oOvGGrmnKFgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 09:38:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D1C2358D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 09:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BDCC813FC;
	Mon,  9 Mar 2026 08:38:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1lCuEFfZe4py; Mon,  9 Mar 2026 08:38:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14763813C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773045484;
	bh=flrbcoY69aidKY9CdX7BAebhlQorQUVA8KTRyBeHuww=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3GjIGMOgGWJCKbOtknALaIDHT6UxSnoEBw0Eka8Ipt20NLas5Bw74wu/OuUOE85Re
	 4LIOaek37IHYB1LqTy4pKZwbZh3KzBDzmGjz4gIpdIeobxgvEKZOtaaN7d9bf4luRI
	 pyzsJLuGfMj2zUoYYOLFJ5RZJHBCA4hg88kpWVfUnQGcTyVkQxL5qdG5I/1wPPvZmW
	 kSyHexMQx53ewGkkxzNv1zkyxzIKabnRsZ23Q73/22WYXTP8tC5KgtZ39hIu14TjA7
	 5XOodHrfzdohuTNElT1RH+GUibocTlM4zJDCr5J86ll0cOd6gau/bXu0UY9b+gQmx7
	 uJns8YW+/z6XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14763813C9;
	Mon,  9 Mar 2026 08:38:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6588C398
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 08:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5750460763
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 08:38:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JeiswnK0YOAj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 08:38:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 702316070A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 702316070A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 702316070A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 08:38:00 +0000 (UTC)
X-CSE-ConnectionGUID: AzqZg6MjQzO+1ciQmXiF3A==
X-CSE-MsgGUID: 0i20DRAESlWmD/r9N/XmWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="99531248"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="99531248"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 01:37:59 -0700
X-CSE-ConnectionGUID: xMSzIVDzRtmPwUscHzFxRA==
X-CSE-MsgGUID: ZqXex3DeR0mLArKCKxmgWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="217755518"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 01:37:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 01:37:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 01:37:58 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.17) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 01:37:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JgGyj53N56HmMpb4Qaal9/hxJoqabctrd2LJl4djUVqxa3jP00DfUGyjCIOaC0bsNJuotFHRPjeXJj1AgOc+OG04Koqn89g29TptX1hRS7X0zLQ69RFdIJiZX/oSB9AMJggw0vctTXpc0BnIfb6zBMGLDJL5N6ErCHNRYu6F7rq/YAhL1wzplMv5itndweyIAprauVBHaQfHqf23capcBU2bpgboFBNXNpxRjajT7RZONv4M9GSBZdAx6nuOhEn2ht/5PEYdsq1n+D7xQzJR1rK2pMg1Nh8x3PJ0XehfLEAO2WnmDSdboPFL65vdDbAOm4lEoWrXiJ6sNXOIi/sRcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=flrbcoY69aidKY9CdX7BAebhlQorQUVA8KTRyBeHuww=;
 b=R3//VnX+QkCGj6MX0tUbszIMV1nyPXP8OCVu8FC3uJyf7evEFtxj2uUmeXYEa/A1+QbhnitnuDzOwQ5orj4zAFRFUYvifsxF6/A1SMB5rKfshVo9g6UqMOjM+C5bIlNAt+6zZ94rFEmovBVAve0y6NeAklF1XiLT4WUYD1j+tizafXvlVyBzeYMd5KRGr6lSQvQ5WJQNO5uDUHGrHGz6nemufRhUs/nBaD59plLD7WlIECsHQQb3AKRJoRMmdEQubqUXYirvHKvEjJdky7eZqw0NK3+2m0G+Gr5kW1LY9BTr7Uyh3omoD76qd4756UDPJD9FSUpf2/mpO9sO0aLrvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 CH0PR11MB5266.namprd11.prod.outlook.com (2603:10b6:610:e1::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Mon, 9 Mar 2026 08:37:56 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9700.009; Mon, 9 Mar 2026
 08:37:56 +0000
Message-ID: <ecacc5fd-b3b0-4d66-83ab-4152e4ed22b8@intel.com>
Date: Mon, 9 Mar 2026 01:37:54 -0700
User-Agent: Mozilla Thunderbird
To: Miroslav Lichvar <mlichvar@redhat.com>, Kurt Kanzenbach
 <kurt@linutronix.de>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
 <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
 <87qzq1rq2k.fsf@jax.kurt.home> <aaf8xVPWQ0-y1BnX@localhost>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <aaf8xVPWQ0-y1BnX@localhost>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::26) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|CH0PR11MB5266:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e948b72-ff04-4eb1-7ebc-08de7db72954
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: /2WvZ6tBQCmKkpGcvEMWNdsSJdssB4sjVjAGtBxtAIMknCTWkkVvUdHvN3EmwR4/0xHwWRnmBXXZvXDETNs3JzETzp4cnGlbGL9y0LoJiRH9zWF67B+zmeF4OhuXIezrVsKUAawbysv85yh7VSeM0w6CEtzJdks5zC/czk1rWHK503voG6kr6w/3PZ+NhKEuezQVNFnmTe1ZpcCtOIkkp1rRc3IxWmpVS3/q8aJxiUmPSaCS67Bl0p3zIV4JtEpL9PxIVLxFr6CKVkoEs/+/XBxv7OYu9VAG7xQZaVyZeNOSaJUjjV9OHSlz06Oeqe7lzdL5fgY4cSYH0wSKhgN+DoF914/Q17zllPNHrVdny/4JnCr3mXiyGI4q7krOXOJzGTYcv27voWL9XSAb1yVu586k3q6lSucaxzTk7hko0KDFqBUyCOMuCP4mSn5UeHiyC2M4C3g42dghbvtJI8CViNaTZaj/VJolh702BsZ8oeRx+a8jGKFZYYusSZTgid/+OOtV//cbDtGvhzqpkkW/qyHJztgbZcE8rC+iMQf+SpAgtPr9ha+JrlgBvMr7gmcaurjiGQyd9a1MSU/tbG6KMBMWbGwss8D0oR3vVo8/P/ijyx7i6KaGgKiRK+8vKucp1l8dNMkaxGMTiqfh9mBTO/jRpf7jYcWwTdSMeJX5rylce5f88VaffgMnIHt4whGv+c5OGASRk0Vo/TDnJ9OLFVRq3HR53BCPFJj020bJsd4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGxTRkx6Rjc1QnlkMmVlSHZ0RFNaVkJDZ2NBN3F6TEpUczB0V25Md05HVHF0?=
 =?utf-8?B?ZmxYb2w3a0Y0VFpMRlRKeEVNMXFOZG9tejVwOEVJK0Zkb1Q2a1kvRUVoVWNp?=
 =?utf-8?B?cHB2SWlmZlJXeFAza0doM1Z1elYwbDZoZnYweUlSN0x4Z282TEdSaUxMZW9J?=
 =?utf-8?B?bFVxMzljMjQxRjZlZEd4V1BETmZsaStmbC9ReE9aRkN1VTJhRnBGNS9JNm9U?=
 =?utf-8?B?NitQZmV6eS9US1JxL3BLK0EvQ1FHZmRmaWpKUnF3b0JaNUd4Z2FBakVhYzlD?=
 =?utf-8?B?QWJETHNrbjFLeG9EVWRma1NNUWI5M0paNGRmUGZveUxRdDhmT2lpZGFuaVVK?=
 =?utf-8?B?d3FMQWxXSHd3YmFOL1BGYkZVYmNwYnBlZXhxQVBaQzBYTHlYOEdENi80WlJl?=
 =?utf-8?B?MTJuSHM0SXpMaHMzRzBvek5NNWJqVko5bDFoK1FpL01QWkd3YUhLako2NUpy?=
 =?utf-8?B?QmovVFRBbkdhdmJqVSsvK2VkV1JrREtEclBIODNESTJVakY5VEhmNFArOWRC?=
 =?utf-8?B?UUsxRmEvQi8zQTBRa1Rtc2tQSWF0NTZVdFNrS2NBQXB1aGx0OFFnYlZjdDI3?=
 =?utf-8?B?MVdwUFQ4MFhyZFMwdWVndHowbFY1eGx6TTV0Z3pYQTZoaktFb1ByOVZmZWor?=
 =?utf-8?B?ZVF4Zk9URmd5RzFLRkw4aFVSeGRySnVwZ0luM2p3YUk3aW5zY1laWEJ6YUVz?=
 =?utf-8?B?S3NmVEFvZmZLQzM3Si9SSzkzak1hbnoyOU55NmhnVjhSZXY3WWoxdXBOTElw?=
 =?utf-8?B?TmVVanNBZlI5N3lkQk9TZ3lQanpYc21nV3dFWWZ5TDJCZXkxRFZGWlFXcEFw?=
 =?utf-8?B?WS81QnEwRDUzbXZnNm9NMk96TGF6UDY3U2lKYXdoSGlNU3pjaUdpTFRhakhX?=
 =?utf-8?B?ZGdQTG5uUHo5VHZ2dzdtMWd0L0JCSzNGY3c0RHdCaE5QYzdIaHNCRmphaG1U?=
 =?utf-8?B?L2RWdTFKQ0FlNGlNendxdkI2MUlyblFtNDNvS1NvZCtVbWZ4bjg1UmVTSG51?=
 =?utf-8?B?YVY0OCtjejdvd0U2dk5xQXFrNkFKc0N4YjBrUVd2NFQ3RnZKWXpHcmpIYXJt?=
 =?utf-8?B?Z1FqalAyVC8ydnJabzVOUzVFcktVd2FlMHpkeG4zaUV3cnVRaHZobHdMaWNQ?=
 =?utf-8?B?bmhrL2gwZlRLYm9mdFN3NWxseVlGSDZqMGdOcFlNZkNGME5lbkRoZlFBeWh0?=
 =?utf-8?B?T2toMC9HMDd4clkxMlFzQnZEdWd1d3FaVUNIVkZGcUNmZXo2YUpiT1Q1cHlZ?=
 =?utf-8?B?eTVSYXlMYXczdFVXOWREOGNwaFBmdWV1YXB3UVJMSTJDdE9veFB4QjVpOXpz?=
 =?utf-8?B?TmRqaFF3WENsYWlrYmwraExRc3hTby8yR2hrNjFGcXAwSDUxZXQrQlFyenpr?=
 =?utf-8?B?S0tKbEpaQmovTWpWR0c5SUsxQWNwUGlIek9wVWZCKzE3YTBUY1ZXU2dBZ3lW?=
 =?utf-8?B?aDVwYWIzZ2xLbXN1YXlNT0FETUxVenVWNk0wSnRVRTJEdGZmVUFwalpidXRu?=
 =?utf-8?B?VkEwS1lFWnVWczZIT0djaXRSVU1HOGNLcG9GSG5uZVBBRjZ3UzQrdm85WnZH?=
 =?utf-8?B?SmZaMi95bUYrQzd4dmJuamhaNGhNQ2p4QlNMbURDNmVTZDBJWTJTRlp3ME03?=
 =?utf-8?B?U2RDdWZWYTBiMkptUFA0NjlkSitKUU8rejV1WmlBNmVIQmxyNlRlTlArVE9y?=
 =?utf-8?B?M2w1MU4zajkxd1M0S1J6WDhCMGNnWDQvMmVnODFPQk12ZDBBMFgvRDQ1aXFw?=
 =?utf-8?B?NWlFclk1YnArcU5VbTZPQlZYUnBmK3dRMWZlUFVrRngvbnpya1d4aG4zcGV3?=
 =?utf-8?B?bEord1RzeTZHelhOYTN5aFM1WS9va1pKRmFyakNqRTZWSzgvQ1lDRzdkaHl1?=
 =?utf-8?B?V3ZYa2tlMkw4Vzg3V005emJmM0o1WGVaUFZlZ1lnWnUyWjhiZjRGZEptK2xz?=
 =?utf-8?B?NkdZSCtWOHNsdVpJL1Y2bWdPWDcwNkwyS2ZLU3A1SVNieGhnWmRTa2h0T29U?=
 =?utf-8?B?eFU2czN0L2dPNUt5bjJ2VFNPWTRMeVd3S2RtOEVWazZUZzhSM3gyTDI2UmUz?=
 =?utf-8?B?MDlBOWpPT3FiaDdwVUdDMmZqWTNpNW1VU0VKRzdXK1hwWTM0UlN5YVp3RlVI?=
 =?utf-8?B?NFYwMWtmbWcvb3NTOTVkU0ZPSC9rL054d0o4bE5tUlNhWHpIT0gyR1JvNDNB?=
 =?utf-8?B?bEFndTBEUzdPa1kxTENFRGxicm1GNmRSSTdWT01VbTJrZjA4UXhHeVo4MEow?=
 =?utf-8?B?UkFxNmpHK0psQVJhV2dTMFBlNzVtL29MSVI5UlRveGt0Q2tUbHZSWTUwaWJN?=
 =?utf-8?B?dldrTk1kdUYzM0pkdmZoYVc1RStFb0xBdy9VMGs1QThpK2xsUHF2dz09?=
X-Exchange-RoutingPolicyChecked: ELFDghk5x7RlGyV0R8IXGXOKtgPVpLbYJtBPeGaSJqHRiSf7pAMlwwqbrBMf96zUpe0fFLY6NbU9oCmS85ckksKUJZl4EpiXn9Ka3XjS9nBdukT2s5lZibLbSpTkV60Qy0cFn0ZgLkC4NhF2klE4WzA/Q/3uk33l5j7cC/t9MduAAus+E9LrEoGYSq6fxgrj4Ifv+B6lfbyNPnGGQQRHI0I36SSxi5MF7BlGMj/ISIi2N/yV0vOgWupmVeI6WZ0aE3yDy3/hiALITBnNhVRrvr99dPpJ4lNq0vJ4liFMMNOBZNFCV9+6f+GjVxBbdpVFEIW1BVKCNygRiyfNfgoW7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e948b72-ff04-4eb1-7ebc-08de7db72954
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 08:37:56.0312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NCeuv2SCU4aVcZ+bwHiAVje89RJGMTWEUW+s/ynVrKbNRgfUWpn+ELH/e1RHPGEe4Ce2ATUqy+FZCmJPbwSXlTAU+/HQD4co7mpCFliWbbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5266
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773045481; x=1804581481;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F85KYftHfSphloFGhj17FDvy8qDlA/SaZqKG7V45/xc=;
 b=kQ0La+7x5Q8n3LGD56PXor+C2iQUSjCljlCyD3FqrFiYVoXVM/0gsCxW
 Ha58NMfgSSIgig5eYnvPGkro70ATAF4JDK7ymnYV1kgzTYFaCmMUBYda/
 fDNgrA7Nx6A22O5f6pKh66EKKiiKlttE77VrCi51650eyNscRKuNlIVKz
 tcNeXUDYwrLljXAXQyU29yS1Cbu2EROlS1oKLkHTUN0geWrFlvCf5jZzk
 d0C8EveqfPFzwjEhReGs6nD9iORIVPkuwGbS4A1beCzw1VM5FAU4/Wu/v
 Xy/vG0G7eI/Cc1aeGE2HUGmfscgN1U+TEt24y0YX+2WbjvxooK2qHiJHb
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kQ0La+7x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] igb: Retrieve Tx
 timestamp from BH workqueue
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
X-Rspamd-Queue-Id: C9D1C2358D6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mlichvar@redhat.com,m:kurt@linutronix.de,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:vinicius.gomes@intel.com,m:bigeasy@linutronix.de,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[molgen.mpg.de,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de,linux.dev,lists.osuosl.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Action: no action

On 3/4/2026 1:35 AM, Miroslav Lichvar wrote:
> On Tue, Mar 03, 2026 at 02:38:11PM +0100, Kurt Kanzenbach wrote:
>>> It would be great, if you shared the numbers. Did Miroslav already test 
>>> this?
>>
>> Great question. I did test with ptp4l and synchronization looks fine <
>> below 10ns back to back as expected. I did not test with ntpperf,
>> because I was never able to reproduce the NTP regression to the same
>> extent as Miroslav reported. Therefore, Miroslav is on Cc in case he
>> wants to test it. Let's see.
> 
> I ran the same test with I350 as before and there still seems to be a
> regression, but interestingly it's quite different to the previous versions of
> the patch. It's like there is a load-sensitive on/off switch.
> 

Could you help me understand this data? I think I've been confused every
time I've looked at this.

You mention a load sensitive on/off switch... Which i guess kind of
makes sense with the numbers here:

> Without the patch:
> 
>                |          responses            |        response time (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 150000   15000   0.00%   0.00%   0.00% 100.00%    +4188  +36475 +193328  16179
> 157500   15750   0.02%   0.00%   0.02%  99.96%    +6373  +42969 +683894  22682
> 165375   16384   0.03%   0.00%   0.00%  99.97%    +7911  +43960 +692471  24454
> 173643   16384   0.06%   0.00%   0.00%  99.94%    +8323  +45627 +707240  28452
> 182325   16384   0.06%   0.00%   0.00%  99.94%    +8404  +47292 +722524  26936
> 191441   16384   0.00%   0.00%   0.00% 100.00%    +8930  +51738 +223727  14272
> 201013   16384   0.05%   0.00%   0.00%  99.95%    +9634  +53696 +776445  23783
> 211063   16384   0.00%   0.00%   0.00% 100.00%   +14393  +54558 +329546  20473
> 221616   16384   2.59%   0.00%   0.05%  97.36%   +23924 +321205 +518192  21838
> 232696   16384   7.00%   0.00%   0.10%  92.90%   +33396 +337709 +575661  21017
> 244330   16384  10.82%   0.00%   0.15%  89.03%   +34188 +340248 +556237  20880
>

This is without patch, and the "lost" is 0% for low rates, and we have a
lower response time mean, max, and standard deviation... But xleave is 100%

> With the patch:
> 150000   15000   5.11%   0.00%   0.00%  94.88%    +4426 +460642 +640884  83746
> 157500   15750  11.54%   0.00%   0.26%  88.20%   +14434 +543656 +738355  30349
> 165375   16384  15.61%   0.00%   0.31%  84.08%   +35822 +515304 +833859  25596
> 173643   16384  19.58%   0.00%   0.37%  80.05%   +20762 +568962 +900100  28118
> 182325   16384  23.46%   0.00%   0.42%  76.13%   +41829 +547974 +804170  27890
> 191441   16384  27.23%   0.00%   0.46%  72.31%   +15182 +557920 +798212  28868
> 201013   16384  30.51%   0.00%   0.49%  69.00%   +15980 +560764 +805576  29979
> 211063   16384   0.06%   0.00%   0.00%  99.94%   +12668  +80487 +410555  62182
> 221616   16384   2.94%   0.00%   0.05%  97.00%   +21587 +342769 +517566  23359
> 232696   16384   6.94%   0.00%   0.10%  92.96%   +16581 +336068 +484574  18453
> 244330   16384  11.45%   0.00%   0.14%  88.41%   +23608 +345023 +564130  19177
> 


With the fix, we have a higher lost percentage, which sounds bad to
me..? And we have a higher response time (which also sounds bad??) and
we have a much worse standard deviation across all the values from low
to high rate.

I guess I just don't understand what these numbers mean and why its
"better" with the patch. Perhaps its the naming? Or perhaps "xleave" is
bad, and this is showing that with the patch we get less of that? But
that looks like it gets consistently lower as the rate and number of
clients goes up.

> At 211063 requests per second and higher the performance looks the
> same. But at the lower rates there is a clear drop. The higher
> mean response time (difference between server TX and RX timestamps)
> indicates more of the provided TX timestamps are hardware timestamps
> and the chrony server timestamp statistics confirm that.
> 


So you're saying a higher mean response time is.. better? What is it
really measuring then? Oh. I see. it has a higher response time because
it takes longer to get a Tx timestamp, but the provided timestamp is
higher quality. While previously it was using software timestamps so it
could reply faster (since it takes less time to get the software
timestamp back out) but the quality is lower?

Ok. That makes a bit more sense...


> So, my interpretation is that like with the earlier version of the
> patch it's trading performance for timestamp quality at lower rates,
> but unlike the earlier version it's not losing performance at the
> higher rates. That seems acceptable to me. Admins of busy servers
> might need to decide if they should keep HW timestamping enabled. In
> theory, chrony could have an option to do that automatically.
> 

> Thanks,
> 

