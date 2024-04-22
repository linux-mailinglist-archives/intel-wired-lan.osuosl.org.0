Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9538AC8CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 11:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2664881F0E;
	Mon, 22 Apr 2024 09:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YGg_Bnz9mXk7; Mon, 22 Apr 2024 09:22:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F066B81F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713777746;
	bh=ZklnuR2/FGJ4c6HkcUOSpfDCLMnLLoPDjwP+HOdXcRQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cQ1BfwodTNDC5CgxiGhVSaHncardMtACR8Kn91q2iqTP1nr1w68r9pVV2ydPaR99A
	 gZGu3ywCJlVBvCQnBqKfnJMFyilhtD11BkCHc4gidArpjVdtOJjiscJq6lFMUxCNbi
	 cxrRkmQs55NXA8AyTn1AaqXw53YhpW+kyD0wIcN2fPsn2uk4rL9PY7f9DoSodE3r5X
	 sMZYXCCucWOeStNVNt90b1bqMF/AY0s9hAWX85btgaVmUgdMyaakJllOr9wucVIsqW
	 t2Z6bVYzUqljhMcT1ZAd9z19GtGf2LDH/ZcQVtA+KZkVZnP47uuwNMYOdtQ94q7gnE
	 YMMDhcYf3Yl/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F066B81F15;
	Mon, 22 Apr 2024 09:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 085321BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E79CB60819
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTqyHXagjlwg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 09:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9A764605F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A764605F0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A764605F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:22:21 +0000 (UTC)
X-CSE-ConnectionGUID: lEAhETk/QF+lk4kexsQAOQ==
X-CSE-MsgGUID: VE5V4OirQLqLjV84mpOvxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="31796365"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="31796365"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:22:20 -0700
X-CSE-ConnectionGUID: d7Gl47WDQWCT0XEFSqlepg==
X-CSE-MsgGUID: GAQVqdZuSwWd3fvSVaVVHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28624660"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 02:22:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:22:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:22:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 02:22:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 02:22:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/C9AJT96+NgSGUSKIWpRn6w4kkdB9184Ju/+x4AW5NXlv2WoJ4d0JlasOMCn6Fc+ipWl7f6bmfrEchta3ZX0oOdv4YGwYssLkVi50ojzibE8lsKITQdNeNFkLNtpA5hXAeYsO6fIGmR5OZdMxAad8oB1jsWrG2DD4aWhtsh9OsjXWv6PzAHYUEc++C5MZqbPxNrd8oA8IQAGFk43Bb2IICpXfVtJo4TUPP920qu30bB/JmtFMfLcb9e1OYt1CERNBUvYefqC3BP2sQh8B8dqz0bVbJCjcDmsJMBYlcWuRRevzsKJMfS4S+8W59AWxMwa1epnlo6BCo8NS2yCEB8FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZklnuR2/FGJ4c6HkcUOSpfDCLMnLLoPDjwP+HOdXcRQ=;
 b=AT32AyrpiZZd2PSKzE0Jtyx8JGuysf/RB2yBTnWJqZ/s+HOJKdf7W/vjILINsV4L0RS+hn0LPCuaWiGSOJkZ05pCKaL8y6aoo6+DNEqTxZohRX70UMDgDofOePzbYFK0yijfbiD1+zOMOWKHAObloZfly1179QYNPEzIszsOlydyLgMLCLOKy1XVuG6tSGeDWCKsr5QMEuM09w41WIMFgpWGVZG2NRcz6jv0tbLbnQGMcjCbTnwgMCNe8viTnWSshAVhfew23SFwj/FLkh6cAv70sQG7i+g+znQ3ngLhd2UZlhnVA1TkQt37XwEwsx8qJGKtUws5/AknjL3B1+3hyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SJ1PR11MB6249.namprd11.prod.outlook.com (2603:10b6:a03:45a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Mon, 22 Apr
 2024 09:22:15 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 09:22:15 +0000
Message-ID: <7be58f82-77de-4097-973e-36085b63a576@intel.com>
Date: Mon, 22 Apr 2024 11:22:10 +0200
User-Agent: Mozilla Thunderbird
To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-10-mateusz.polchlopek@intel.com>
 <87frvie8qf.fsf@nvidia.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <87frvie8qf.fsf@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0335.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::19) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SJ1PR11MB6249:EE_
X-MS-Office365-Filtering-Correlation-Id: 80d106dc-0d98-4265-7408-08dc62adb301
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cE1PYTFoSTI2a1RXMVdLY0s3SzdCRnVtTjFKRlJ0YVkwME5aZDBOdUxXRDds?=
 =?utf-8?B?SnRGdEtwdWFQdDgrR3FoWEEycDlLb1c3QXZYaXJiV2pIVExDRkg0ei9WTXhN?=
 =?utf-8?B?OTZ0dEJVTlFWMndtUkVidXkyeDJaVjRhVnpBa1lKano2V1ZzaG9YUm1FK2FH?=
 =?utf-8?B?NEVsbm1iQXNTaExwVys5NHZzMDhtTXdHOVJ5dWpRbGVYTGxaN0hNL3M4VmhV?=
 =?utf-8?B?TGpVeUdHY2thR2RHSjRzWG0vWjlSZFE3Zm5OdkxwOXEvNHdEeWk3MytTRnk0?=
 =?utf-8?B?RkcxQmVudHJjWWFvTnF0MEwxUGJqbXZGRGt2VmtaMFZkbDhmeGV2VlJIb1BH?=
 =?utf-8?B?dGpaZ0duSVdsd2xnNk1KUDFoOC9SRW1ycTlXbmxJWkgxS21wK01xNy9ZaEYy?=
 =?utf-8?B?eGVnTTcrUzJZR0JIV3VoWXpiZWJLekFWRnRPb2tTdnNvOHBMVUFLRWl1U1kz?=
 =?utf-8?B?V2dBZy9lSVhCaWJnc3FtbEFWVm51TVd2SUliWnJuekdJNFU5RVpCeUZkekRw?=
 =?utf-8?B?UU02TWt1Nzh6VEJCUC9hZ3p0emkrUXlTY1VEYkNGZmR3eUVnSmtqbDMwSksz?=
 =?utf-8?B?WndZYi9IcEZSM2NCUVVnTFVZc1dTdk5ZSm0xY3BuSUpiQ0JKVzdaSTRUWVE3?=
 =?utf-8?B?bU9FekhHWlZ5bVlleXNvSEtqdGhYcTF2UUxZZUFxcTF2UEJLb2hzVjBFQ2Nz?=
 =?utf-8?B?N1JXOUMwZkJCSXJSNzZESGdYUHo2aTg0c3NibjBvRUg4b2d0UkRqRjFXSzlr?=
 =?utf-8?B?T2owYTd1NmZKS2hleE12eFRkdVVsZElwbVU3a3BJbnNubzF6N2hyVm41MGMx?=
 =?utf-8?B?bVVUZ0FxL1I1SEdvaUlQYXRxZzFUU2I4WUdvYy9Wd2g2Sk4xMUEvLzd1WVQw?=
 =?utf-8?B?Z25QS2FCVjBJeDh2RlhnZUF2QVF5TlNhOUhLRUxtaDJnY0trVFpOcEhDdjQv?=
 =?utf-8?B?OEowNkZBNXR4T1QrTVNWSk5vU053MS9zbm5YUVYxQ1JMU21nYlZnOHpjUHRT?=
 =?utf-8?B?N2ppeGM3dEg4VmV4U0pTRVh0cXpjSWU3dFBKMEViNm5iSTQzYU9SR2toa2F3?=
 =?utf-8?B?T2h0UVFnVSt4R09hY21TWlJVQkMwbmlnUi82YXdBc3d1MHdvUkJWN3ZHMXhp?=
 =?utf-8?B?YWFEYW1WSm5YUGlVczJzaUg3QnZtdHVhaFdMQjJHWjUrVHB6RGs2amNiVElB?=
 =?utf-8?B?STdoN0xBdjBXdnEyVU5mY2hWMUh4VXJCQVNDL0pHQ1VkUXZEZXJ6eElLNkky?=
 =?utf-8?B?TnhzdnJKczBrUWNpY3hsZkVFOCtXTzVHQm1CWUlMZ0xNRHdjV0ozSytlNUgr?=
 =?utf-8?B?L0w3czhVYXJ0UFAxTVZuNVlrOVJEZC85a1RPOHoyWTgrc3dRdE9iR09hZVpT?=
 =?utf-8?B?OFNyVklnM1JPQ3g5Nmg0ZG0yUzY1dDhWampJY3pBdTR2M0tybXMwWFBRTS8r?=
 =?utf-8?B?YnA3b3lPUWxFRFg2ZEZTbWM2cThoNXFxaWdST21zc1ZrdUxmVEFkRmhLVHlW?=
 =?utf-8?B?SEJTR3labk9Da0tvSUR3OFpZYTVRSzVPUkg3TFY1NHlqRFVrY3h2TkZSb3pr?=
 =?utf-8?B?OExWSUYwQnlUWGl6b1V0WXhjQXMzUWhSWU5peEp3T2doL0syNHlOTHpYZDVE?=
 =?utf-8?B?eHBzOXB1Z1VWUmZ1YlhaRnBGc0JNRkFYSHVzamZzRlZxUS8zK1YrVmZjNS92?=
 =?utf-8?B?OWJ3LzJaQXhENC9GZExPQkkwN1dXYm1rVXpyaXNpalZMcnNvQ0ZjN3FnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlYxd1M0eWVzdU9yK1pJSDdwMFc2dGtLR0hwVTlzYnAvZjVrM1AxSlpFanQx?=
 =?utf-8?B?WTdvMUZtdWNnYkt5YnFpT2R4THRYelhOL1V6eC9WeWsrZXYrU0xnT1ErRjNs?=
 =?utf-8?B?YUt3ZUV2STlQVGhsSThwd1YxWkFBS214S0FCbTdaaFpMV1hvU1J2OEozYnJv?=
 =?utf-8?B?Qkx5SlZCakdKaW5XK1lzN1h3YkxKZktCNzNCVVVpSE9sZHVqaHYvYXRxdThU?=
 =?utf-8?B?SG40bkpvQTB1RjZyZHFsdnBUYlJUMDF2d2FMeEJFeHdhL0tONW5Ea2N3K2Ev?=
 =?utf-8?B?R21lcjJHUnRLS25zdkhyRGUvK0tybElYWkNJV0MwbVlzM1YzTllrMUFzSmt5?=
 =?utf-8?B?SnRFbTdqRWpHQVVvUnlSMXpMYkErMWdhUWx0Q3M2anRLaFFCMmVWQzE1djdq?=
 =?utf-8?B?Z0tlcGNnMGlnbStMbnBCcC9FWnlzQUNFMHFEK0lsak5mWTZmdHZpT01BMzBw?=
 =?utf-8?B?Z1ZRUS9VSGhHaW5QcG9XZC9Edk93WnJhWDJQZXArQ1Vkc0VzaC9mYUgxRHNh?=
 =?utf-8?B?VkdpaThSRDVBRmlCZmhSNWFNSW9FL0xUZkdEZlVRMnZGKzRTYkdtS24vRnM4?=
 =?utf-8?B?V014MEdzcHY3YmRwMUFhSGoxSWtiOFZ4akxFb29oY0xZNVNaMzhUYlZiOWFo?=
 =?utf-8?B?dWtXbUdKYVVuREJnemxkVWVLMFRIMXZ3dkJTbzVnekZTTjFTQkVPcmxkME01?=
 =?utf-8?B?bVVLU1VTVDkyaC9Ud1VLdGV0c0hsNW1pY2dEUi90emZYWVlBdmNlWERPNG85?=
 =?utf-8?B?NmVZLzdxZElnY3lhdTZoVUwxeUI1eDQ3ZFIydVhUUkoyaFBHRkFRZXZrd0NN?=
 =?utf-8?B?SVErbVpCQTV6MXNzVjRyS3NDb3ZuYUROUVpuQ1N6eG5sWkVZYy94VG1JTXVV?=
 =?utf-8?B?T3RlSVoxNGFZclMxYzZwN2gxenJsMmxnWEg2UFJneHVBdlRMclZhNktjRGpH?=
 =?utf-8?B?NWR2MWozVHNidXUvaFlHN1N3RWtNT1Nid0NPV1JHSFV3dWRyeUNHREFDaVJi?=
 =?utf-8?B?aEdPRWdydjljUkh5SzJIY1JKTUordzFVTXhSb1VpTWZaV25HbDhXVDJmUkg4?=
 =?utf-8?B?RlVtUjhJOStLUWx3NTFsMU1LZUdWU0JIUHVIdUU2c20wY2QxUDAzckpIWmx0?=
 =?utf-8?B?YWpQaVp1a29PTFBzZkVrcVByaHJ1V3hJNjV3Q0RuV2x1dGVxckF5TkpVMFd6?=
 =?utf-8?B?T3JTMElGYVBqSWd6R3hXQ1VqemVBc0tPTURQNXg0YjRSeVVGQys5QkowZU80?=
 =?utf-8?B?SHltaVMxWDRTV1NvSGUxc1NlbFoyMnNFNmdLY0thdWRtbUN6aEVENmw2TXFx?=
 =?utf-8?B?TnkxQzZnUTZGUEswc1ZWWU9hZ0xRbTFEbGNRZGVEWUJPUzFFYmE4R1ZFYnJF?=
 =?utf-8?B?aDhxZE52OGVkS05YRm9VNDR5QlhZakNJRXBwTkFlMVlvREEvMFh5a28vZDY0?=
 =?utf-8?B?aUdzWFE5dFo2alJNOHZqTXppTmRFeW10bHF3blhDLzUrbFJBeXE5Q0pVaHJi?=
 =?utf-8?B?VmNUZEtFaUhUMll5cFZUa0hJaHpEbThraklqT1dwbWlwbEpYWml0Vy9CWTZ6?=
 =?utf-8?B?WXVuZzUxOFhvd1FLWjlYSWkrU051RElPUFJPelhSZSsxSWQvN1BIbEF2MDlC?=
 =?utf-8?B?WXB0NkxidVk2ZmZjVUNFb0ZoTDd6dk5GWVhEdnhJQTc0azBQNUw2c0hZVTZ6?=
 =?utf-8?B?WTRTaFR2UkdsZVNjVDRPVUNBMXk3U3hUT0phWnl5NlFGTjIyOFBnUGJFUnJt?=
 =?utf-8?B?RDQ1Vk13dzJlSmZEMVJvQUE4QlBmZy8zYUY3Nm1UWkdMOUdsRTYxUnc0UVVU?=
 =?utf-8?B?ejZjWDVZREQ5RmNUMWtYMFdJRWlxMWVyNjA0NDU5UUQ2ZHN6TWRtUjVnRU8z?=
 =?utf-8?B?VFJCbEI4NE54ZTh6TW8xcVYwMzRQZWVRUWRWM0JqVVd4QkR3V2RkWWZOM1VX?=
 =?utf-8?B?blY2aEpQYVNubDZsME9hRXQ5RXU5eHFWWGE1c25xWG5zaS92OURLdG1KRlZa?=
 =?utf-8?B?YTJtVGludloyd0hLTTRxM1Q3Y1VGdVJTai9aYlIvYVpHQktLTkRVU0ZRK0RL?=
 =?utf-8?B?TDRIT0JxQ2hZK2plMHRYL0R1MzNvWDM3WGM0NjlGSFFPZkpqTFlmM09DbS84?=
 =?utf-8?B?M21wbksxZkpxdGFuR3hzN0dQVWl3T0w1U3dDVmpEYTIwZ0FhUW5vamZGRzVy?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80d106dc-0d98-4265-7408-08dc62adb301
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:22:15.3671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J03T6YtJD2VDkxlngwTHuwNMicRKevu4cI8EyILusUbLExHKIQMQOOc77D9bjZ6HFXJh9kW2IpGaswd3s49QqXRRpB/J4I+IR+Nk4LcdZ9c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6249
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713777742; x=1745313742;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bGrAXIqb6Q1J004oFRjzLJbHpoX/cTimKu7m9nghOg4=;
 b=aRWKrpK8jFUsLzolgrc22XX6Tt618Q4owyVI+fram86aqaTijQh6wt5Z
 0raP9Bkm1vMJjsILivUsaPYQDLnOJsxbv9nv4FiTZpB3dgtZh2qei33ma
 8gZgNb7KJ13WBJE5JvtFZ9KAMcEnoIA7OtT2TDk8MgQC7enRfdrMvVieT
 yXa2M84A0BBE3IQNcx2uvxd603GhScTuu+kl6RSsnFMSSNJybcgNwu6Ws
 MQeDIbs819OT94ymszhqPksbTj8bgsR4Okl+e284/iYaHpTtLLBXjK8qG
 5DSVdvXJ3/aq7JAB8CYr/EFz6TuBsc9/6Nd+K0cBQEQczBRxsCj7U5113
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aRWKrpK8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/18/2024 10:00 PM, Rahul Rameshbabu wrote:
> 
> On Thu, 18 Apr, 2024 01:24:57 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
>> negotiating to enable the advanced flexible descriptor layout. Add the
>> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
>>
>> Also add bit position definitions for the status and error indications
>> that are needed.
>>
>> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
>> descriptor, including the size, rx_ptype, and vlan_tag.
>> Move the extraction to a separate function that decodes the fields into
>> a structure. This will reduce the burden for handling multiple
>> descriptor types by keeping the relevant extraction logic in one place.
>>
>> To support handling an additional descriptor format with minimal code
>> duplication, refactor Rx checksum handling so that the general logic
>> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
>> structure which holds the relevant bits decoded from the Rx descriptor.
>> This will enable implementing flexible descriptor handling without
>> duplicating the general logic twice.
>>
>> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
>> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
>> format instead of the legacy 32 byte format. Based on the negotiated
>> RXDID, select the correct function for processing the Rx descriptors.
>>
>> With this change, the Rx hot path should be functional when using either
>> the default legacy 32byte format or when we switch to the flexible NIC
>> layout.
>>
>> Modify the Rx hot path to add support for the flexible descriptor
>> format and add request enabling Rx timestamps for all queues.
>>
>> As in ice, make sure we bump the checksum level if the hardware detected
>> a packet type which could have an outer checksum. This is important
>> because hardware only verifies the inner checksum.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 354 +++++++++++++-----
>>   drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
>>   drivers/net/ethernet/intel/iavf/iavf_type.h   | 149 ++++++--
>>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +
>>   4 files changed, 390 insertions(+), 126 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> <snip>
>> +/**
>> + * iavf_flex_rx_hash - set the hash value in the skb
>> + * @ring: descriptor ring
>> + * @rx_desc: specific descriptor
>> + * @skb: skb currently being received and modified
>> + * @rx_ptype: Rx packet type
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
>> + * descriptor writeback format.
>> + **/
>> +static void iavf_flex_rx_hash(struct iavf_ring *ring,
>> +			      union iavf_rx_desc *rx_desc,
>> +			      struct sk_buff *skb, u16 rx_ptype)
>> +{
>> +	__le16 status0;
>> +
>> +	if (!(ring->netdev->features & NETIF_F_RXHASH))
>> +		return;
>> +
>> +	status0 = rx_desc->flex_wb.status_error0;
> 
> Any reason to not convert rx_desc->flex_wb.status_error0 to
> CPU-endianness for the bit check?
> 
>> +	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M)) {
>> +		u32 hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
>> +
>> +		skb_set_hash(skb, hash, iavf_ptype_to_htype(rx_ptype));
>> +	}
>> +}
> <snip>
>> +/**
>> + * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
>> + * @rx_ring: rx descriptor ring
>> + * @rx_desc: the descriptor to process
>> + * @fields: storage for extracted values
>> + *
>> + * Decode the Rx descriptor and extract relevant information including the
>> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
>> + * descriptor writeback format.
>> + */
>> +static void iavf_extract_flex_rx_fields(struct iavf_ring *rx_ring,
>> +					union iavf_rx_desc *rx_desc,
>> +					struct iavf_rx_extracted *fields)
>> +{
>> +	__le16 status0, status1, flexi_flags0;
>> +
>> +	fields->size = FIELD_GET(IAVF_RX_FLEX_DESC_PKT_LEN_M,
>> +				 le16_to_cpu(rx_desc->flex_wb.pkt_len));
>> +
>> +	flexi_flags0 = rx_desc->flex_wb.ptype_flexi_flags0;
>> +
>> +	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
>> +				     le16_to_cpu(flexi_flags0));
>> +
>> +	status0 = rx_desc->flex_wb.status_error0;
>> +	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M) &&
>> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
>> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag1);
>> +
>> +	status1 = rx_desc->flex_wb.status_error1;
> 
> Similar comment to previous in this function.
> 

Thanks for that comment, I will take a look on that and probably will
change in next version.

>> +	if (status1 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M) &&
>> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
>> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag2_2nd);
>> +
>> +	fields->end_of_packet = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT,
>> +					  le16_to_cpu(status0));
>> +	fields->rxe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT,
>> +				le16_to_cpu(status0));
>> +}
>> +
>> +static void iavf_extract_rx_fields(struct iavf_ring *rx_ring,
>> +				   union iavf_rx_desc *rx_desc,
>> +				   struct iavf_rx_extracted *fields)
>> +{
>> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
>> +		iavf_extract_legacy_rx_fields(rx_ring, rx_desc, fields);
>> +	else
>> +		iavf_extract_flex_rx_fields(rx_ring, rx_desc, fields);
>> +}
>> +
> <snip>
> 
> --
> Thanks,
> 
> Rahul Rameshbabu
