Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YK1tFMVPLGrWPAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 20:28:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D0567BAEE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 20:28:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WZEjnEJi;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A693683AAC;
	Fri, 12 Jun 2026 18:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fOR9Njz_x6ED; Fri, 12 Jun 2026 18:28:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F23683AB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781288896;
	bh=ZDU8E5sLXdZguaiaCsg9HwHRQpuA5yt7f1U8P5LlTd0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WZEjnEJiiThB+EUY6c/T9/Iz60tsyDwscOMcaWAP3phDTX5ntmi4KhikGMrOOeYq8
	 P3TMwPQYuEtRSvVIgdtfkotkwar3D6SMHISwIm9gRuQPdHENTw9u41qSTuvu+kiCiB
	 V1OaXqbH9OqUigJa3Dct/f/xkFBtKi9teTWAZgXhZScuc81Q4vSuAokePP8zGADnJT
	 T0kxneV6MwrMdm54vofLYWD4cjkvbfmyKVG/icWrIU/J0DEEKdV0kKwfObv87rdwrk
	 YMzwi7/Qk4/XT6kYZ9+TwPN4YaczVdgeOf15i2HS8pEytx+1WoFHfkk6Aq/IjEiKA9
	 3qnNhy4jsfDJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F23683AB0;
	Fri, 12 Jun 2026 18:28:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AB532237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 18:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D7B0411A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 18:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TnxE80wj2__I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 18:28:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77AD3411A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77AD3411A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77AD3411A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 18:28:12 +0000 (UTC)
X-CSE-ConnectionGUID: O1cLnqfORoy1cTbmBkQgdw==
X-CSE-MsgGUID: SxhX+79OSlCyWLTwJmTXww==
X-IronPort-AV: E=McAfee;i="6800,10657,11815"; a="69670425"
X-IronPort-AV: E=Sophos;i="6.24,201,1774335600"; d="scan'208";a="69670425"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 11:28:12 -0700
X-CSE-ConnectionGUID: TY34qBQWT+WlsozKfWH7Zg==
X-CSE-MsgGUID: Ei0utSIWRuyf7iZN248yIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,201,1774335600"; d="scan'208";a="242511138"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 11:28:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 11:28:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 11:28:11 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 11:28:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lfa6kvV6p9ptLJGUCF53yEXSr1AsFTDdLr/mIeQETi6Amm1hPIuwbMlkb0OmNwuORUpfeZNFhEi0JZ2hGdvvZRfA6tdqatbR12/Ln9LS4g+eF+iMrgykCx5hquUDR2m3iItBQD0qBWEh29+mGQGUyYXETmjKt3ac9C8ErdacmYpfOLhy0YX2GWe5aVXBwkw2r7Oe8sH4RLkfxGVCSiGMzKM31luZrrDGmVvWGiD3n8BzUPhWVOSyrf2UPq61dXqUXdsb1G2v3Z2k6zg8BBOc+TJM6W8h6MvBHoPco/azUDjc8ClE4hlQHtcfdc4XcwvV1PoKxd0wLzzQIDKuoAaUvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZDU8E5sLXdZguaiaCsg9HwHRQpuA5yt7f1U8P5LlTd0=;
 b=i67KPPjbXLTha6pEOk5U5rK6sKrL4hcMNWQ5aAH2q9kRXiAzlwp4Rlsqd6loaoHZ9gBeHxvJEIpNCJ+Xk14s8Jg/20rT5xZ/WsIMMLWZ3hgTYYB8d2I0w3sEPP4tUYp0fefm9I4rX/d7e4+CvmATxriy0yH60qmzBwnTSnBdTMe7/CTdF3rewRwYTBHfZ7BBgMlF+D5pHnh8Y6mUKRRty8bPy/vH+Lbsk8vzV2ot9CAY4z8ECSX3dxX6Btvqv6lCK8eu/A+Nb/LwGVcCWNSX4/YFz7ttAPSXKpCi16kIYJK/ngxn6Y6GHTcNcyIV2rwnYL5+J8EEsMxvyOu6owQYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by IA1PR11MB7918.namprd11.prod.outlook.com (2603:10b6:208:3ff::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Fri, 12 Jun
 2026 18:28:06 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%3]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 18:28:06 +0000
Message-ID: <050f4f93-f276-449c-bab9-a24a467042f8@intel.com>
Date: Fri, 12 Jun 2026 11:28:04 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Danny Gonzalez
 <digonzal@google.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, David Decotigny <decot@google.com>, "Anjali
 Singhai" <anjali.singhai@intel.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Brian Vazquez <brianvv@google.com>, Li Li
 <boolli@google.com>, <stable@vger.kernel.org>
References: <20260611002437.1671401-1-digonzal@google.com>
 <b601d0d4-d472-450d-a966-e18c9642a433@intel.com>
 <CAH1CuA-zQveU_pzopVMnDM11Kbz8wTzMP=SvSDBEq8Tk3RaebQ@mail.gmail.com>
 <7a6a3f63-0b69-4e1f-997e-f198e2bc43e9@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <7a6a3f63-0b69-4e1f-997e-f198e2bc43e9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0302.namprd03.prod.outlook.com
 (2603:10b6:303:dd::7) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|IA1PR11MB7918:EE_
X-MS-Office365-Filtering-Correlation-Id: 72da1daa-6867-4786-2f3a-08dec8b058d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|23010399003|11063799006|6133799003|4143699003|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info: iVOA8z5MexRSrWgGAY2eAY7qbLhJ9Kp6h8KRZlp2BIRqUajcCtiw0CQEhVIqD/Ie/IUJoDEKvQ2xjl57h+zbnZsLFskqMCbPgfaoBUFw2LydXlRrkEaqkAZwU9X4vWtEIr2T6IIMsx5tifePsSGCvk7t/EAs6xklSLigsxhau4NLzzAqFmDSxn7r5cx9b9E2mrXmPYH4IGrIHvCQWECDMEQzRpak91bJQHXzKokUlUMNBpdb+PX5fKxkyP+w5++iEJVuKv0NuV/rRQGO37y0nNwkf+wVbkrUtpRKwDB/r3NasGNPVAmGHOSbjpOQENzUO9rEtxk5oQ/XFtj5QJTzlTbQvwPm00n2wHyzgT/2i3AVvxM1vNHOnPjDrIWKOZRJtWeYBGXAKGeFZDBuEkFXrR5n39kWdpd+hDABwdDXBIGVXm0rr/LVCyjJsy+kBt9C3f+JWXk84T9dm1VzyKiM6YCd6gpYpO1OfSPDisnj9waqUAYdG+ro+CmOsaQ3CmLa2QhGUqtbza+s1u33LOXhEF5hICWklTFC05wnVbzyGEcI1ufxdFFUSx2qDF8cPIPAHPBTQQvkRyqBuYB56N4WnwxyuQduM4IKXRAFuHPzKTA77ggpqPpOLRTo/Zg74n5xLlDleaQdY064ovL2CoSys+1jwbpi4q1nipaIfheRLzc2jA+H19hDCfjpJkOSWqzl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(23010399003)(11063799006)(6133799003)(4143699003)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ny9GYlRZT2JXOG00WFdjcjExVnBtTWRkRkV1YXFPcDhBcGZPSWQzaW5GWXBy?=
 =?utf-8?B?a2hPeGRud2JIbUpnNTBWYXZTaHVSVEJyUU5rWXc2MWVFd0k0NW5rQmZRTlhQ?=
 =?utf-8?B?K0NNNmNzbU1mMUs1TWw0NlBHeE9rSm5NMHJwYU01UUZHS09WVTBkY3JWa1FU?=
 =?utf-8?B?eEdrWTZ4aUk5bWZydFJteHFxVk9hM053OFlOM3BPd3BCa1hVQ1NEMGVoazBi?=
 =?utf-8?B?aEpLV3ZUaTB4ZEpzb0RPREdyczNvZ0xzeEgxZnR1Qy90LzZ5TEZqVEJEa3Ni?=
 =?utf-8?B?VzNaNWhJVlgvNU9JR1lLaDhpQThQSXN5R2ZESkhHTy9peDd4aHZnSWpVKzVI?=
 =?utf-8?B?dW9ScFo5UG95ZUpsc2pTZ3VONjlzU0ViVlBDY0hZK1Q2MlhkNmh2ZUJUQ3pU?=
 =?utf-8?B?UXNwY3JDcGJwTkhaZk5JbHl5eW95aUFvZjhnZFV6Nm12TTdibDUrMHowUkE0?=
 =?utf-8?B?b1JCZ0FwWmRjZlBtYVpZV0NkUndFci9zeEdZdmtvTkRqL2lVT1pqWXJ1KzFJ?=
 =?utf-8?B?OXFyS1lSTVJEbDZkci8yMFFUR090ZnB2OHJ1RmVROVY2Zyswdm9yVFZlZGRm?=
 =?utf-8?B?YjVnN3VEWWJMODhwaG9Za3djQmp2YUJ4UXhjWTRxcmFFdUdLSVVnanRhalJY?=
 =?utf-8?B?VkNqb0tIUjBPa3lSNTgyVEc5eXBOTUpidE9mY2JsNFZ0OWhtQUE0Nm5Pb0Jl?=
 =?utf-8?B?VUp3MkE2WEZubjl6eTFZbitqRzZ1ekI2WEcvRWdkdllyYmVDR2NnRGJwbDBD?=
 =?utf-8?B?c1FBMFNhRWVqMi9NMnBsVDFUUytIc1ZrSVlmSThEQkhjSStIQ3MwYU5sVmV0?=
 =?utf-8?B?cVc5MEg3aEdNNFJpNFVmZXl6MTZueW1xcllVdGRzTklDMkQ0UjkyVDBxYUsy?=
 =?utf-8?B?T1F2d2dIVFlGQkpZcGlITU5JdVZUK3YzVEZJVG0ydWxlcnUwSDhrbzMvWG5j?=
 =?utf-8?B?Z1FrejRRTy9PeEFLTHQzRkl2UUYzM0R0QThWY1F6RzQyOWkxbVVweDBQOURI?=
 =?utf-8?B?YW1MWlpkYnlTYXZPdmhXNnMzdXp1UVc2aW1iNlJvbjAwZmFLb21nNDhFSEZa?=
 =?utf-8?B?TCt1ZkNGRkY3Mm54M2RVdU85bmtGcS90d0FqakNSZVU2bDhiNmJSTlFRSVdG?=
 =?utf-8?B?cVAvZnFseVlWdTNMN3VIQ1VERjFva0RCc29nMEJiNU0xTklBQ0NNbmw5WTBn?=
 =?utf-8?B?aDZnY2UyVEpLWlc1MTR0M0R0Y3JpekdZYktqZ2s5VjRKL1l2NGgzOVpkckZJ?=
 =?utf-8?B?aElXZmRQUlBqczU1UU9SQnMzNi9QRXRNMWdaaWFkd3ltSDVDdjRlWkV3RE0z?=
 =?utf-8?B?ME9hcUVTYWZVejdGWHhzb2RoYTZ3THEzYzRxeFJqalMxUzF5dklSSWh5WDdP?=
 =?utf-8?B?aHh2REZMTm1OZTBtOWtVYnV6NGZCalFnMEdvY1JtNVc1eWpFb1d6UEwyaW52?=
 =?utf-8?B?TVdvTXY2UzkvY3ExZXpaR3NXZnJCV3NGeXFQZWRubGFVWjlQdHlKU0p5NExE?=
 =?utf-8?B?QkllUHVwV3NHOURLSjBQSFBHZkpmVlpJZjBuWnNrcFB4bjVEMWswOFM3eWNt?=
 =?utf-8?B?SEJsaXQ4b0JaVHZkbE1icmpSTEEyUTJvZW81dmcvZWFpazdJTSsyalVXaDNm?=
 =?utf-8?B?QkNrQm1KOHllR0R4RUhJY0NRNGJHbHJSdDUrd0RZSFZIK3JpdlM3b3huOEZt?=
 =?utf-8?B?WlZzbDFiQ3M4VVB6dVBjRXZrTE5LOVpQM3FJSUFLZm1RNG5GYnFsYXBWY1Yw?=
 =?utf-8?B?dkN1WVRMb1lsNnNpRUlaRWtJLzdrOE1YSzVJemVoTDd2VlpLNTRNQTFKaVFR?=
 =?utf-8?B?em90TWRlcHg2NFJYTGhqZEhSdnFTaHBjNzhWVGRKODZEUHVSWitxc1NvUGd2?=
 =?utf-8?B?VnZCSElCSks5V3doVCtUU2J3elFWL3owN0k1NmxyeXBjQmY0bU5sWmI1L3Bl?=
 =?utf-8?B?YWlET0lLTlFWV25YMWl2UTJ0Z2M1OTczRmR5cUVKcGM2U05PVWhlMnVZUTRU?=
 =?utf-8?B?OVFEWVhLUHo3c0pySllJTUw0U3BGVE42alIyRTJUaGJLMU5IcjJMbG5HRXY2?=
 =?utf-8?B?Wnl0Rnl3WmlnUVdrb2xDQmhXWTNzamllOERDdnI2dmZLMkdSMnJjMVg1SXdp?=
 =?utf-8?B?VTExOW9ZN2hiaXlRWDNYejVGRHF1ZjMvd2lBcW1sTEpaUCtlNi9vcmEwMlh1?=
 =?utf-8?B?TG5aMVhkVDlsOEUycjFlb2VxVnFwZ0ZWb083Tk1YMGw2a3BiYjM2c2RFeHJ1?=
 =?utf-8?B?ZGtwZ2U5K2Fob3lPNUpadVZwRmRWZU90ZDJyeWNyWXFrL0pYWjBKQ3lHQ1JF?=
 =?utf-8?B?aDBsRmF0OTZTMFhEanVTMlFCZnhsTkNXd3NPTmFnbVlwbHVSMTltU1FCL3dn?=
 =?utf-8?Q?kDjO0jO1nhmTyP0I=3D?=
X-Exchange-RoutingPolicyChecked: mDWHeKPrOa8T340RU5Oz7UKp/WJgv1P5wikk/oR3RgpvExtDn421rBO20GpPRI4dAqbJzhqDWpVaX+g9Xjjk4dKOQwuVUa2NxVypno/HBiyTpMGCKWS6/6sZI47tSCBZlwrvEPRmP485EkMhNQsqeR/afsa1dhRGwjmASOPiHj0nbQDRvV5sQfY8mhQhex3Al5xwtBWFvTtlZFUK7mAGv9GoVVkLfZBuGJzH1BPoYQ8jfXzmQpooRZXj6cVXz1IeuheKI7lo5y3PX7Y6OhiRGQGEGNuK0rb/RRy1MH7KFGhJayFiQlzwdVED/oaJvPv2zP0lkJrM9/6aw4m7zdmKow==
X-MS-Exchange-CrossTenant-Network-Message-Id: 72da1daa-6867-4786-2f3a-08dec8b058d5
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 18:28:06.5903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Xu/lYRz5Nk5ke4DTlKhyNfUtdWl3BTv++H427oi7ss3zk5WVp+QxIZ3lNCHCEdJhrPUzTBXrPvgUIdyWJZZrPqhpbPSQHnHg/ZZrsEg7lg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7918
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781288893; x=1812824893;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4/fpGxfhbnDALeDKwhoXuQClqBsIA5WhRjUUtagX+uY=;
 b=j+4rmcB4hqi1xRBLdwmQQTz/ehCU27/WzFxdRaVyyb4XRYh0bXDfTwnH
 e7NeUmUyJUxC1DVuyoVCcfFEtZAXVMjYdNcsPvKvQCdUVb23Fy4nXF/HU
 ZFk5YA0MmmyecTi/fYktjhYkxj670jJC4h7Yw8rp/W6QdjX6GzLs8KMfP
 0yMmzaHg0D9w07PxNhWVtWmfkuGwHIVSvZEvVpzr1JmXwNVcybELrC3zN
 sO2m8dlufPWyFzxtj2cxD6ntZ+6BRrU41gStF3Jdvpmld+rcDqXmNtnkN
 Sy6Uov9B5NUzlw981VNEW+slVDZ/f5+gdO1Ea9T88VAuwijoVNCsLd+TL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j+4rmcB4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: decrease statistics
 refresh interval
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:digonzal@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01D0567BAEE



On 6/12/2026 2:29 AM, Alexander Lobakin wrote:
> From: Danny Gonzalez <digonzal@google.com>
> Date: Thu, 11 Jun 2026 11:26:18 -0700
> 
>> On Thu, Jun 11, 2026 at 8:57 AM Alexander Lobakin
>> <aleksander.lobakin@intel.com> wrote:
>>>
>>> From: Danny Gonzalez <digonzal@google.com>
>>> Date: Thu, 11 Jun 2026 00:24:37 +0000
>>>
>>>> The default 10s statistics refresh interval is too slow for real-time
>>>> monitoring and causes network selftests (e.g., uso.py) to fail when
>>>> verifying traffic immediately after transmission.
>>>>
>>>> A 10s delay also causes aliasing in telemetry tools polling at shorter
>>>> intervals (e.g., 5s), leading to inaccurate rate calculations on
>>>> high-throughput NICs.
>>>>
>>>> Decrease the refresh interval to 250ms to ensure fresh stats and fix
>>>> test failures.
>>>
>>> Have you tried a bit more conservate value like 1s? Wouldn't it be
>>> enough for tests to pass?
>>>
>>> 250 ms is also okay, just curious.
>>
>> Yes, 1s also allows the tests to pass.
>>
>> We have a preference for 250 ms since High-Freq Telemetry (1s poll)
>> 1s driver refresh rate causes aliasing:
>>
>> # sar -n DEV 1 | grep eth1
>> 10:52:15         eth1    390.00    339.00     51.92     55.54
>> 0.00      0.00      0.00      0.00
>> 10:52:16         eth1    409.00    360.00     54.72     58.64
>> 0.00      0.00      0.00      0.00
>> 10:52:17         eth1      0.00      0.00      0.00      0.00
>> 0.00      0.00      0.00      0.00
> 
> Ack!
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
>>
>> Thanks,
>> Danny
> 
> Thanks,
> Olek

Unfortunately this doesn't scale very well as it introduces a bit of an 
overhead for the virtchnl having to update stats at a higher frequency, 
which is why the delay was so big to begin with ... You can have 
multiple vports and thousands of VFs. We do have a different solution 
for this case in the OOT driver, where we only speed it up a bit when 
there is an actual request from the user via mod_delayed_work():
https://github.com/intel/ethernet-linux-idpf/blob/main/idpf/src/idpf_ethtool.c#L1735

which would be a better approach for this issue, IMHO.

Thanks,
Emil
