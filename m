Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C72941441
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 16:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5603608A0;
	Tue, 30 Jul 2024 14:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HFk46G-JWkah; Tue, 30 Jul 2024 14:24:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BD5A608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722349493;
	bh=eX7TikIU1NYv3zZWmlK9e2KPBv+F/0y7teL82ja+LJ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MF2EMdLBjLcHdaxk1rCJpVcTX12KCwPoZvdPQUfNGltHy1zKUfl/NDlJ0aiKRn1A+
	 cRJ/JGFTL0qhVUEvd5DPumKkztnVzC9POGW5eKtuYh4tGN8aKZ13TyxFM29HsIASvi
	 iUttxgiPwRPmYsK2BejeC1+T2E5O7ipEa1XfV9J/dqo/grklUeeFIjEkFux1dPQz9K
	 npzmwbJomsVmrbprX7I1V9SpI9NzigufAJJ1COrrAjJi2BfPzR59dvOn/+9AOjnSJl
	 gHgMdKwmZtcGtlRzcA92HGVxtm9ggUV216y8mAj2Rf7cI2YDMM40Hb8TljVqWCZRN2
	 toIIofF8jjTxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BD5A608FD;
	Tue, 30 Jul 2024 14:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD8181BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9BA5403B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRj3rLOHuUrh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 14:24:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6084D403B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6084D403B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6084D403B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:24:49 +0000 (UTC)
X-CSE-ConnectionGUID: dazoCWvsS7a2dFPM6wGuFQ==
X-CSE-MsgGUID: p8nf68+ARPeOdb1BDjRA3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20306735"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20306735"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 07:24:48 -0700
X-CSE-ConnectionGUID: fWv9Ad2wTgqcFaDPB9fp+w==
X-CSE-MsgGUID: p+CgOmunQ3OQg69rtCsLYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="59430786"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 07:24:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 07:24:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 07:24:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 07:24:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 07:24:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jnV2KUVp9rVjMJq6ntDCqUWQaB5JPpZYu29DCcS/7inWStam4Y1265kdz9VW3wLH77bbJxwFrr1dDb0SqOT+RDC/TRI02h+RFR8bmdupTflN3XnPtLPui7r8I1cPxlLKOgGSiJiwq+HHSqLF3oGmf+xegRjXuzZlONPAspFf2iQ/9tvLZMO8ISZfFKBU/QqV5/61P7X5NCFzWf5GgHbq98me7E6gsQ2sAnyLkgqe3/L0qTirlvC+4IATLYm3Q9I+k/XEzDQs5ibweBylYHKico5IBou/d7sxKLIAi653cwCPtDrV73MEtg5XwZu5McgSjlNgmAhXwfbdKACGp9PHYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eX7TikIU1NYv3zZWmlK9e2KPBv+F/0y7teL82ja+LJ8=;
 b=AGnV+fcsdsPj6EvElRl9fhXn3at/ZhYdsoR+vt4Huj/UO9Xo8u1vJ7bFnosczH3N6SkJDdkUkgO1AF1oaSY089s9MawGmmPrwGZzzbhW6ue94UHrsKmU4xWzIs8QBtBlXUgQZr0M3uwgvlWZxJL0pBNao6k/wk8vDumFOohyhI0tKr6OxvLgZN/tTT/cURLWurkldVYS0psrn8U+U8e2PImCTtsC7HRJPiZAtQLNYi9oroxCBytQTTbCHSN5N28SmxmJ9rxH7wCuXy0GsV2G2arQuPFCybSsCXWgbgIE9DAxDFiT1GXboZ3ITj4f6cWi2dAjVd9LD5UsTxKxRIAXDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5919.namprd11.prod.outlook.com (2603:10b6:a03:42d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 14:24:44 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 14:24:44 +0000
Message-ID: <086bf4f8-7a4c-4323-ae7a-c7c23223acec@intel.com>
Date: Tue, 30 Jul 2024 16:24:40 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-10-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-10-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0179.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:66::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5919:EE_
X-MS-Office365-Filtering-Correlation-Id: f2462a44-f0ba-47a0-ec99-08dcb0a35ba6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVQ5cjVPTWNyT2s3K2dIaTFoZmdST2lmNzR4RE96MFc1ZzcxTVRNU3hoaW1j?=
 =?utf-8?B?U2ZKU0FhYSs2QVljdUo2aXJDYlU5QWdHZHBBenUwNDFJS0J4dktjbEpoOGZP?=
 =?utf-8?B?bG5jd0RhTFNCZVBBTmp6bTZ2SUlySFdXNzFaTHRVWnk3dVVtY1hPdHZ3WFRk?=
 =?utf-8?B?TVZyTTkwSnFXRmNMSFNaS2J3MG1qejMvWUtOZGRDdlduZnkwbXFXR0Qrclpo?=
 =?utf-8?B?QUpTR2lUVmRCZzN4cHJYVVhwL0hIdTk2SUFxYTZMOGdOdTlkMHgyRm5ZYkM0?=
 =?utf-8?B?R1B1MVNBalVWZDR6OGlBSnQ5dDdIVUJQV3NVd2lkc3VGQWtDajNEL0hRM3JJ?=
 =?utf-8?B?VDB2Qnh3SkxQNUNTbnRLVCt5NTgxdjFzTWZEc1doUGtFUDNPSnF5RFhWNnFS?=
 =?utf-8?B?NmdaWFBWVnpPZlFDNHVqaERqTG02UlNpMVpBRDEzT3llcnMvN2VVay9OeGJU?=
 =?utf-8?B?SWpxWmtZVi9SNjRSRkFpdWRHaVFxRC9OVnpkbXdMNHZpMkNxUVlRTXRhcVBN?=
 =?utf-8?B?QTJGQ2hTMHRaeWZRMDBjZ2JtTTZ2aEFKa3M1OUxqZWZ3RmhoOEZPcUVjY29D?=
 =?utf-8?B?dk5FK09wVG1sUTJKR2Z0QkVxUUc3NlA5WWZFVmE1Q3lxTUxZdWM5Z0wzRUZC?=
 =?utf-8?B?SkZEdzg2R0x1b2xzVEdBT3VnTFRZWFVDSzRXS2prUDNoTGI1Zlp5MXg4anVY?=
 =?utf-8?B?UEt4d3hWUFNxTHcvQmFrQi9vTGo1OWk2U2ZEcWxpbllwMUJtdnRDcXVLUENM?=
 =?utf-8?B?eU9jUmpaL1NCeTk3NDhkblJlSFN4ZVA2T25aMEswQ0FlZHAyWHJhUlVJcStX?=
 =?utf-8?B?Zm54TTQzWVgzNHpLak9JajRqdjEwT2MzemFQUkt5TSs5VHROaUdGVXM3eHcx?=
 =?utf-8?B?TmR5R3o3QzMwR2lCV0hKYkZaSmtSSWZaNWMvSkJJT2dUN2ZwbTdidVNzRjFh?=
 =?utf-8?B?WDhQYkhlekdrQm9lNkt4NlBuUUU1bzAyTGNRa0RFTmxNbmVEdlFaanhhMlZG?=
 =?utf-8?B?blNSRjNMQlJuSkpnUW9vRmtYbC8wZnJFT2V3VUhoVkRYcW1uRzZlZy84dGhH?=
 =?utf-8?B?Skdicm5sdzk3ZUZVenZlVW1iRHMrWlVOSGErZ1BmbVRTbmprQ3B1WFJCb2VI?=
 =?utf-8?B?L01Gck5JWVlxMmEzL2t4UHYvMXVHWVVHNkNiZDYrd2FtUWhVZDZTUHl6MEk2?=
 =?utf-8?B?eTRVTEx5QW02VFVndE1NaWNmVENWcFlZL0VyT1VwRkNKSnB5QjdBVUtVRktZ?=
 =?utf-8?B?Zllra1RuN3VOZ1hkYm9YU0ZyMldGMWVKZjVZbUd4VnlRcGR0M2dJRjdVSnhu?=
 =?utf-8?B?WFA1WWdBbDA3L0lNcW1lRE9oWEJHU1pJVzVzN2FGbnRWQWcrVVl1Mjk5UUcy?=
 =?utf-8?B?dy9PRUtKQ2grSW13RzZqbjJRSmhacmtVaUVuTWRLU3hJcEplQU9rVGFDUDVz?=
 =?utf-8?B?S2w5M0MzZS93VTlwL0dRUGo2OStLMXpmdkFnT0E1TkpVcHhzTnpSTGdkL0dB?=
 =?utf-8?B?QmRid2tqOHNvM2ZhL1BJb2V0TWNhZzdwSU8wYkVGeFROUFVwRjQ5cVNuOHdE?=
 =?utf-8?B?d2RaV1p6U2hsU2I4V01XN0toM2E2dWpTUEowZHdpN3JzSGkrendoT3RuRE4v?=
 =?utf-8?B?eDFQL1paQ28yZFpSczRHL1l5c2pVYjErNFFjNDBWMU11bExXckhic05WMzBw?=
 =?utf-8?B?eVphRGg5RDA1OVd1T1R4VHB2RHFxd0tnSklTMGZWNzQ5WGpyRElGaGZXUEZU?=
 =?utf-8?B?N0lHTjBPNU5RbnFXQ215dUZVVWVxV3M5aUl2ZC81VWQ3RXdZenhnT01qZlRY?=
 =?utf-8?B?aEVYc05ONS9SU1I3bmMvZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkhRTWd2OCtkUmxMZ0NpU0JWTTlFS0JqVVRRVlhhK3pEcTVaUFFXK1hsaDBT?=
 =?utf-8?B?bXdUekNTS09sUURzcGdMVWNaa2RGNk1xOHo4UUZhMzhLdzZjd3ZyaVFJSU5x?=
 =?utf-8?B?OWF0Tm1FRjhtTXlnalFFNjU2U2Q2eWI3M1o2UTBkdVEwVTlnZE9oQVljSHdn?=
 =?utf-8?B?NUhtTUJYTXpXbDR0NzFIcHpKcWpBM3ptSUtTNEVjaTZYUWU1Tng5TVR0eFRD?=
 =?utf-8?B?WjRiNU9XV0hCWk5DcURRempjT1pkSTNKYVRsbUFqQ0RmWXJZZFBmenhvTlFm?=
 =?utf-8?B?cXZjSlp5aUhzcG1oeVhiMFBXbTdpaUdqVVNpMkFqR1BpV3BBaVREY0w5bVcy?=
 =?utf-8?B?V3E1a1YrQytGSVhkTFhaZ3BmQXRTVHNWWG9aQXJiOStvK1NhbEdkTlltZU9u?=
 =?utf-8?B?SlFpQUEzbGN1ak9tbmM2QWpKZWkzamRpNVZEVnpMa2NUQWwxZmVYYVFpQWpX?=
 =?utf-8?B?MFFERjhlcjk2RXlCaldqM3JkdHR1czhyMWZDNkQ0VHk3d01JZ0dZVGRCNm8z?=
 =?utf-8?B?US8wTmdHS3NDYnRUajduR2N5RkM1d1NlMlppNmw1RXNMUmtZcUtUQzRNSjcw?=
 =?utf-8?B?SmxsOW1Pa0w5QUhkbnM1UkhUc3EzS3plTXZnWDgzMHZkZURhUGE2ellKYm5u?=
 =?utf-8?B?NVRidmlTRjlia2pOTEVCcmFiYzlxTkRRdmlyV0t1WWF4dWdkOFpTS3J3cVVi?=
 =?utf-8?B?OGQ0U0xxNk9Dd3Bkc2xxM1dRZU90VEdQdHZhUGh4Q0g5aXpYakt1S25scFlV?=
 =?utf-8?B?d2pjTDd0eW1LOERGR2V0emI4b0xqMUN2WStjS1NNSytmWmE5MmlNL25yQmZ5?=
 =?utf-8?B?Qzc4ZDQ4dnZVWk9pUS96SG9qajZPbHJuYjdGOGs1S3dzV0paMTQ5dDFiREp6?=
 =?utf-8?B?RDVEbHgrQXlvOHhPb1VsSWdFbGFLQkl4M1MyZzR1cEp0ek5aQU8wMFdSL094?=
 =?utf-8?B?cEFIUWYrQjMrNjJSbjJOaUdwaSt6S3ZNYTJYQUQ1aWRkbWt1bjlQMWphaEt5?=
 =?utf-8?B?QnozMFk5S3pYUi9ndXY3ZkpSUjhJbkcxVnYxNFJBalJSNk1rOGhnMno4My80?=
 =?utf-8?B?RTNMak1sL3Rmb3pBZm5TQ1RZaEJLM1pud0ZwMU9yZWhwM2FLaS9jTG9lUC9H?=
 =?utf-8?B?bzlPZlhPa3N6VGU3MHV3VlcyMFVrRTB6SllwbHhRa1FreFRnejBkYXprTEdR?=
 =?utf-8?B?SENGZjBjL3FWYThmQWVUbWllTnFacko4VWtXeVRBZ2RQci9YQ1FXZnNvUmNU?=
 =?utf-8?B?VEJZeGlGd21iQjB2djh6bk15WGpQd25ERy9SWVZPL0oxYUJBbE8xY285NXAz?=
 =?utf-8?B?S25la0VqS0FFT2poN3BCd015UWVBWlU3aUJDRThLWXBqZGQ5RTJSZEd0M1NY?=
 =?utf-8?B?eHdRQ3BBamdPMEVNaGlPOGxod0RmdENrOWZnNUdFN1RCL1BsK2dORDh6cnhv?=
 =?utf-8?B?WU80T0pUS1AwdmJpbzhiQ0RrUENVUXk1Z2dtckgrS2hiMmc1cURBZHlrN1VJ?=
 =?utf-8?B?MllGMDVKNi9QY29vaGZPUXc0TzI2cFRBR3lZYmJLb0pNbDRvZ3JrQXEwWG1M?=
 =?utf-8?B?ZGxiSy85OGV1Q2xGenE4aUZNa1I5Q2V1RmI4UHVCVTZTVkZTYU9uRGR4Qmk3?=
 =?utf-8?B?TTh5aWlIT3JlQTAwMkozK0RLN3pTUi9nakZYbE9vc2ZxUk8vQVRSamZja2ZU?=
 =?utf-8?B?ZHVVMytMZHIzZVRMWlFzeVQrQVI3TnVRdjBxZWQ4WUF3MVJZN0o4R1N2MVRN?=
 =?utf-8?B?RXNKamVrTDBid2pIOHFlNlhnNUExMmxsUzQ0eWdtSHZnZW1zVDVnNzdiWUhY?=
 =?utf-8?B?eTQwU3g4dFFxcTF3Ri94NzI3SXp6WHZkN3JYbjZWRGZ3UlI1SlYrTFVUb242?=
 =?utf-8?B?TFBPM2JCelpXdmRkWVBXS2xSNmZQa1lvT2d2dXU0dk9GNVQxSGdWYmx6Z3lM?=
 =?utf-8?B?bEIveWY5M2IrMFp1M1RqNC9SWndXZE0zUnhzbDBHbnZoTzA4ZWswSUFmNEhU?=
 =?utf-8?B?Zk4vbStGRnd0RW5mNGtUcWg3R0VKNW9wYW9wcVJFbzFYMEFKTGgrRzR5YUhK?=
 =?utf-8?B?dVJOYkpvWVh6aFZqeG9wMEtQOTlibjNaaU54Vitlanp5UTNKWGhqc0pyb1la?=
 =?utf-8?B?V2NSc3BoYVVOUVpsVkY5M1gvYVQyL1hlOFlQS0wwaExhYXQ0UTBLemNCd2Za?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2462a44-f0ba-47a0-ec99-08dcb0a35ba6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 14:24:44.4561 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RnqHHYXZ+cOCcakYBhBWwsf/agyq3sYXmIAP1TmBcW0enj6Q2jhkO7e12ym0CsXPqbv6110JYcwxnH9rWsV4ptmZOHPIsKTRRbTWqQbo0AI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722349490; x=1753885490;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rMnSNG7vsR5SV8/C3dutU+QwjH9m/zigFLISGzDwyrY=;
 b=WUSraCtY2LAER84qNK/xg0UGWT9rET0fS7r+pgwkA1fWgac3fvbceMVg
 YxPQfJW8pqFqsXDjSm3VLkc8JvT4YDNro5NB+vM/ElFLHM8FLFYyRxkiL
 Wog+Rf1/l3aoJD6DhUZHExQnhpFX2+nIM/Bb9w8xFR/DmaBkEqnL08HEr
 rzfAuB+RBZA5gS3MlUEVBEUxEou5TX6Qv/RqdSIXxz+DTT5V/pLRn8rS8
 OkF1a80HZ41Y1yB/QDWIOvTdC7xs49eKOyFKi4O8BodoYH60VkR4gHceQ
 pYcfftp8pprkQnobp1oLMtztzPxXLXlr0l6C0e0bzJHS90kBkYjxC5jR4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WUSraCtY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 09/14] libeth: move
 idpf_rx_csum_decoded and idpf_rx_extracted
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:15:04 -0400

> Structs idpf_rx_csum_decoded and idpf_rx_extracted are used both in
> idpf and iavf Intel drivers. This commit changes the prefix from
> idpf_* to libeth_* and moves mentioned structs to libeth's rx.h header
> file.

[...]

> diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
> index 43574bd6612f..197ff0f5e34c 100644
> --- a/include/net/libeth/rx.h
> +++ b/include/net/libeth/rx.h
> @@ -258,4 +258,38 @@ static inline void libeth_rx_pt_set_hash(struct sk_buff *skb, u32 hash,
>  	skb_set_hash(skb, hash, pt.payload_layer);
>  }
>  
> +/**
> + * struct libeth_rx_csum_decoded - csum errors indicators

1. I'd name it just 'libeth_rx_csum'.
2. The brief you put at the end of the doc can be moved here.

 * struct libeth_rx_csum - Rx checksum offload status

> + * @l3l4p: L3 and L4 integrity check

What does it mean? kdoc should explain everything to help people understand.
From this desc, I don't get whether it's a "valid checksum" status or
"invalid checksum" status. Whether it means that both L3 and L4 are
correct or can be only one of them?

> + * @ipe: IP checksum error indication

'indication' can be omitted. Just 'IP checksum error'.

> + * @eipe: External (most outer) IP header (only relevant for tunneled packets)

1. 'outermost'.
2. Please start each field's description from a lowercase letter.

 * @eipe: external

...

3. 'only relevant for tunneled packets' can be just 'only for tunnels'

> + * @eudpe: External (most outer) UDP checksum error (only relevant for tunneled
> + *         packets)
> + * @ipv6exadd: IPv6 with Destination Options Header or Routing Header

Maybe 'IPv6 header with extension headers'?

> + * @l4e: L4 integrity error indication

Same as for l3l4p.

> + *
> + * Checksum offload bits decoded from the receive descriptor.
> + */
> +struct libeth_rx_csum_decoded {
> +	u32 l3l4p:1;
> +	u32 ipe:1;
> +	u32 eipe:1;
> +	u32 eudpe:1;
> +	u32 ipv6exadd:1;
> +	u32 l4e:1;
> +	u32 pprs:1;
> +	u32 nat:1;
> +	u32 raw_csum_inv:1;
> +	u32 raw_csum:16;
> +};

1. Please place this struct (as well as the second one) after
   &libeth_rx_pt and align the indentation to it (my style is
   that I keep one indentation level per file).
3. You need a padding, so that ::raw_csum will be at offset of 2 bytes,
   i.e. aligned naturally. See how I align ::hash type in &libeth_rx_pt.
   I.e.

	u32					raw_csum_inv:1;

	u32					pad:7;
	u32					raw_csum:16;

4. I'd invert ::raw_csum_inv to ::raw_csum_valid.
5. kernel-doc for each field is needed. Here a half of fields doesn't
   have it.

scripts/kernel-doc -none -Wall include/net/libeth/rx.h

> +
> +struct libeth_rx_extracted {

The structure name says nothing.
Maybe

struct libeth_rqe_info {

"Receive queue element info".

I chose RQE, not "packet", as this info is per-descriptor, not
per-packet.

> +	unsigned int	size;

'len'?

> +	u16		vlan_tag;

Is it C-Tag or S-Tag or both depending on something or...?

> +	u16		rx_ptype;

Just 'ptype'?

> +	u8		end_of_packet:1;

Just 'eop'?

> +	u8		rxe:1;
> +};

1. kdoc. I've no idea what 'rxe' does mean.
2. Why `u8` and `u16`, but `unsigned int`, not `u32`?
   (I'd make everything u32:bits BTW)

3. You waste 4 bytes for only 2 bits.
   Since maximum ptype is currently 1024, while u16 can store up to
   65535, you could do

struct libeth_rqe_info {
	u32				len;
	u32				vlan_tag:16;

	u32				ptype:14;
	u32				eop:1;
	u32				rxe:1;
};

Most important: do you realize that not all of the fields are needed in
the same place, but some of them earlier, some later, and sometime not
even all of them are neede? For example, if it's not an EOP frag, you
would only need ::len and ::eop and that's it. The rest is only needed
for EOP fragments.
That means, reading all of them at once to one struct can lead to perf
regressions. One way to avoid this is to read-fields-when-needed, e.g.
always fill ::len and ::eop and the rest later if/when needed.

Also, can we just do a ptype lookup right away when we read ptype from
the descriptor and then pass &libeth_rx_pt everywhere, so that we won't
even need the ::ptype field here?

> +
> +
>  #endif /* __LIBETH_RX_H */

Thanks,
Olek
