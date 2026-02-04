Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNgrHlzjgmnXeAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 07:12:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF9AE235E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 07:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E67760A72;
	Wed,  4 Feb 2026 06:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aUcZrvcS3HYS; Wed,  4 Feb 2026 06:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3726A60A73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770185561;
	bh=5ZeK3jD3KtOQpD06+laTz+IY70CSYD+QAms+tlpyT4g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qb6v3wHqBKLtb7iQAcKPCCrlw38DDBZHOfXBH4OGVNxow8VNhyYcNxCZ6lqJWhGr5
	 TPMN0TSxmGiTCm8DKjLp0+/0gVrfGtC3Wsa7wuajixpwhytVKXraPLz68NID/v5E+h
	 OZILSOtGNLf6Oq+EiPjtrAGJLFtjbuldqPT/3D7Kau0kLD7qNg5Y+uJdqYNCfQai1b
	 C+btJunv8YXWVPKo7CfWjqnYyfPCBJIuyFqZJQxG0qXLdDscKG6rPQHrtHjUbgtY9B
	 kkDZr1YrIjJu1Wo1CeBJD0ghQiQ4KCy+v7Ji75F6IcM/xqKcdAgC+pxVkyxgtSYuwO
	 S9qc7IkBx9krg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3726A60A73;
	Wed,  4 Feb 2026 06:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DEE77F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 06:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD69D404D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 06:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CC9ILrEGR4Q7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 06:12:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4409740448
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4409740448
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4409740448
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 06:12:36 +0000 (UTC)
X-CSE-ConnectionGUID: hWF1SBzJRnuFiPNPPzzh0Q==
X-CSE-MsgGUID: Jne6iiw5QOWtYoaAj5iKTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71090896"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="71090896"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:12:37 -0800
X-CSE-ConnectionGUID: K5oJMyu8RZiX6nWiGO6LHQ==
X-CSE-MsgGUID: ECtDqo3uQZWQ+mPKMAqwww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="247667463"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:12:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:12:35 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 22:12:35 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:12:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gaXaPmFPH6qaoAhBUrl86ByHwm+opcHqfast12gRY2g8MTQ1OoBKlzESrmv3lJhOKHULOlZBPE5FY+zrFznZ7YccwGl3fzT9zW5Ko+xUDtaNqQ0n6L1WUiriIFDtEH0nI1cdLCEeQxM8ZaRBuSyy30ca4bIqRjnxNvBxHmkPBKObYBTMMHw3xLqiGydAfGr5PMlQJCn6UsTJfxhjZgZ6il1u4YaWCBdFH7qVGDe6x/JoEmu6gLLDPBM9cJrDkB37l72KAmJN/68Nxxlvne3qKjBdkzrrgWfMBXYLusU5al0kczWcuXseh/JTSWTCsr7J4xoHpsazMGJNUOjR6rdO7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ZeK3jD3KtOQpD06+laTz+IY70CSYD+QAms+tlpyT4g=;
 b=kNvZGiesa4dnHa4VAewLP6GVSTxVY3n4pLSt3Bw+8ThWfJf2JPiVuwoJttwQzxb7RbQcr60mPYjQfH1lnSM4Ca89Y2XRZuhyqClipDGKxiy8IM7JqdVhjV8d0M3eyNYdvFmkzmIaprzJtp/ni3evn9sDz2nZEc36t9CkcdaFZBsnV0hndcKA014UuCRylowmqFsPtyXA6wkvgXWnlXdJTHwEjLVvOnj5YcC1Z1bfPPxLfVI0l0iv4o+RSKtAPPQopAKJuq7jEfWiIBxnQXz6i/eYC4J1IEXPKFltz7JYK5F/CVm2yJHE7RO7NJkcqYaDs5dsfXvi2iC2uNEZXt7VXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM4PR11MB5326.namprd11.prod.outlook.com (2603:10b6:5:391::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.14; Wed, 4 Feb
 2026 06:12:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9587.010; Wed, 4 Feb 2026
 06:12:26 +0000
Message-ID: <0e17cadc-5cab-44f2-8998-67ecde033a06@intel.com>
Date: Wed, 4 Feb 2026 07:12:19 +0100
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Petr Oros <poros@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>
CC: <ivecera@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
 <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
 <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
 <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
 <79960c2a-26ea-4472-bebb-4657fcca2255@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <79960c2a-26ea-4472-bebb-4657fcca2255@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR04CA0030.eurprd04.prod.outlook.com
 (2603:10a6:10:110::40) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM4PR11MB5326:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f37d71d-58cf-41bc-0d5a-08de63b45dff
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STl6WGRNeXdSbmVNRFZJNG9QVElVVG4xRm5GZzgwdUxYY1dWV3hqUFhVRHJC?=
 =?utf-8?B?TVdOQ0tDVE0yUEU0bGV2bEoyd24yQTl2cGU4aFRMRjFWb1NwSndOcUJsVGRB?=
 =?utf-8?B?NExqU2FKa3l3b2E3T0kvdXlRS1d4MXczVWoyZTFOcjVDWFJYNGQvK1JvbndN?=
 =?utf-8?B?Kys3TFpkYUVJSmFqSHhTRHZubXBIY3pFVHFtQnBHNTc2bHRRSjBxVEI1QkNU?=
 =?utf-8?B?bk1FblI2b29kVjJqc3FEQ3cyTmV4Q3hkcUllcUJ6MEJDdVk1YmUxODBWenVa?=
 =?utf-8?B?UlBLVjBmeGdRc2lvaUFGQ1ZLWVROY1h3RXZqbzVpMWRaVWRFK0VHSVU0Y2JT?=
 =?utf-8?B?UDduVEsyZGlzaWhBcWtuUU9sb3hCdW10cWhQM3dVb1dvQnVGdSsreWV0d0kr?=
 =?utf-8?B?ZWFqQVN2OFNWa2VKUU1jcWI2WWdNQ2g1NUU4Rk92RlA0ZGp3QWZ4d0tlcXph?=
 =?utf-8?B?QUYxWlVDT2JSblo2WFZSWDdoL1NrYUJKSlhrNWhWQU1FakdHbmh5dzUvSHBR?=
 =?utf-8?B?Z25IMFZjdzdjck8vUHBFZGlBS0l4bWFBVThyN0lFNS9hSm5yZ1hqRW14R2tl?=
 =?utf-8?B?SVR3MTFKZ2pFMDJEbE93S2VTSmsrdVZGekl5TU9wbkExZ0tJYVVDYnJaQlVE?=
 =?utf-8?B?eDVrOTRta3lTUVlNV2RNTjhIZVlZYys0S3F2UDZQWmxtbzNCdTJzZmVlZXhX?=
 =?utf-8?B?Nms0NW0rMUg3NHg1c1J4bTVyVG11SFFDNkZCOGo3SmRpdU1UM1VqaHBRS0Zy?=
 =?utf-8?B?Z2ZnaDQ2TFZqencvYmlMK1RCZERPZTJ0cjlHNVpaK2lNK1lvb01Zcjk3SUNi?=
 =?utf-8?B?K2hpV0g4N0RiZEhTblhMVmo2aXRCbGxZMHBLNk1Gd1FLZ1J5TnhjT2hneEJo?=
 =?utf-8?B?VHhQSHNLQjJ4aWRFakQvQ1o3OVFscEFwV1h4cFNLS1FBc3VwUU5MbUV5N2or?=
 =?utf-8?B?alFsUjMrUmdrY1RzdC8rQzljTmRsREthdUgyanZXa2N2ZU5rL1Y0dlJJd2tU?=
 =?utf-8?B?RlhDdHZoZFJCM3p1Rkt1cDRzWUdtOHF4RXp2S2F0L05EUlpSUWdFMDJmY21Z?=
 =?utf-8?B?M1BlUmlJNVJOUWFISW1wNmVBVjFFYXJmQmoxMGNURWN3T1E1Q3AzS2lRMlRR?=
 =?utf-8?B?Vkk2T1lFZTVWamN4eXJOSnVHWFVFNXdTSnVPMHNuWk5veEJKKzNzNFR0S3BY?=
 =?utf-8?B?TCtDY1JEVW5uVTduU0lCUTJ2KzZ0QXY5QXhucmpHQU16UFJTdDF0aFlpN1hU?=
 =?utf-8?B?VXk3RnAzTm9EaWVzdXFNY3NKNXN0YUEwL2NPTUxpcjlwZy9VQ0JzOFYrOGcz?=
 =?utf-8?B?eVUwUE5WVGZhaC9RN3lBaWVwdFkxdjJxN08vVjhHZGZFcEVWM0c2OS81enRh?=
 =?utf-8?B?THJkNTJUeU94T3VwbzdId2pDTXJrb3pCZllmd29uVXBFTmxqQ1IzNVlrQjRB?=
 =?utf-8?B?YmNLZlJIVzBVdDlxeUhOZVRDYWx2cG5OZHpwTUhaV2J1UnR3YS81VGc5RVlO?=
 =?utf-8?B?ZTBsbEpMWkZUdXlIeldlN1pycTk3YVE0Tk5VbjZ2VnE2OG5wdTFrK3o3c2tk?=
 =?utf-8?B?VTJMOGttYTJ4SE5sYThrblhEaldXOTgvZHg5WFNxYjdURmdCTmUwNm1qeEt1?=
 =?utf-8?B?bE1jOXM5RWVyQ29VUlZzVUNGZFhLL05BS2NoYjRyYWQrcFJNbnN5UGdjVXo3?=
 =?utf-8?B?TTk2UVBHOXFSODh3dy8zRHZRYUNUVHFMenFNWXVpOWYyNFd4UU1BTlN4QjZF?=
 =?utf-8?B?V0ZhR2lxTUF3RWtkQ2I0SmttS0JYZHZRRCtnUE9vc1EyRDBCbVRLNVRyQlpl?=
 =?utf-8?B?WWw5WXU4MTZVV1VvZDBVTTl5WUk1cHJQVitXazhHQVlrUCtUVERicnY5Z1BT?=
 =?utf-8?B?OHJ4QUhGUWh1c2s1M3FieHhoK3R6UFZRTmpQOCtEdlBnayswaEwyNlRPK3hu?=
 =?utf-8?B?TTE3YkhKcm44VXhON0JYNjlyOXBNYksrRnFDeXpYWENkT0NJbi8rbEFydjkv?=
 =?utf-8?B?L2JuQ204bWhia2ZrODhTeXhWRkJtdjd1K3dmYU5scE1rNHZ5T0FrR2FnVGVY?=
 =?utf-8?Q?ZM+Pcn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzFoTG5wN28rcFdOck9ERlFaMHdJRXdMYXIvZWZQeGNGb2J5bkpCbDI1THZH?=
 =?utf-8?B?YlJ3eVAxQ1llZjhQcFdrRjE1dDZqejZqcmMxMkxKc0JPM0NUaDBoU1ZQSTU4?=
 =?utf-8?B?QzhzcXdYVnJUNXFSRG90aUEwMkFmVHMxamQrLzNTVGluQ1g1YmdLZUlBc09X?=
 =?utf-8?B?Qk9wcVBKc2xsS1dqdEpyN3pIL1JIZGM4WXVwSmM2QWs4eWxkUytHRk1vYTJU?=
 =?utf-8?B?a09JMGRrNDFIa2dBWkhLWnlLUEpxR0VNTFJZTVIyWUd0dmI5UjJhc05oQU1F?=
 =?utf-8?B?QUs4bGY0RUNtTWtjTTNNTXYyWW5GNjFYYUhVY05CSThaOEQzN1N0NDFZd2Rs?=
 =?utf-8?B?bmV0UC9KWVRUbGVzRldlbWxEbGdVajM2NzI0VmcrQWZPU1lqbkNEdERGRHo1?=
 =?utf-8?B?bU1TWTRKYXR5VkpUb2Rac2x4L0pEdFNvN1NxUm00YnFIdGtjNnRIQkVoV29X?=
 =?utf-8?B?b0xZZjJRZk1GZE1PZ2hpeFJrSHRORkEzbGlKOXRHQ2UvbFpubU0vTzllbmlY?=
 =?utf-8?B?NTlyWmduM3RBcm1xNjVJWUhIVnpBTDJxLzRsVDJHbkNQR1MydWkvTGhtRjdn?=
 =?utf-8?B?eGJZZ2FwYThwT2Qzc2xQRkRMS1IycVB1Tlk3aTF2UGtJUmVONWM3ZDBTc3h2?=
 =?utf-8?B?Kzk0ZytIWW45ckFTb2dlaUxnMWltZEVuL0xFR2VuZ0U4eHI4R1lMTkErVlZr?=
 =?utf-8?B?b05IRTNuektDbFU5TkZsWWl3VkY1UlVDV3g0Ymp5azF2cGo2NlVFZ1UwSmpV?=
 =?utf-8?B?K3paZmVSYW0zZzNBSXJjZXYxWUtSazFBQ0NvdjUwTUVLeEQ3YVFzNGQyZ0sx?=
 =?utf-8?B?dXA2OWtuSU13OGFmM014RW9MeTJDWHFHRXdBNnJMS1FvQmhWSmlBa20wMVI0?=
 =?utf-8?B?ZWxlcGRVQnptLzR0eDR2Y0FYdU5IbDNiSUxneUNTRThISDVZU083bVo2MDlv?=
 =?utf-8?B?YVIxbE1zZXNHU2g2bDYxUzZsY0NtbmJrRFZZZWMweHVLUHkyRDlwT3RUMTg0?=
 =?utf-8?B?dGlJVFgxaHdJWEpaUWlUK3g0WW1URkJUZjJ1OVJFa0kzNDJkR3ZZOVdGcFhC?=
 =?utf-8?B?d0oxNUxwZ0dpaCtMczZvSG5aZkpLb1VWeElEeGhrdU45RzBRNEZxZDMrYmdB?=
 =?utf-8?B?eG5zTCtrS3A3SjBxUi84TXdZZ3hia2E1TzgvOE9hUnBjT0piSWZvV3ZET3di?=
 =?utf-8?B?Rkd1aUFOaHdSMzQrU1hOWDRseTJkb1NtR2JCL3EyekRPTytIT3JsS2ZOeDlT?=
 =?utf-8?B?ZnJpS2ZPV1VDV2xyUlB4MTRZZWhXcG5ZNEgydzhyQmV1bnpIbjdHa1U2cTU0?=
 =?utf-8?B?eERzMVk0K3lIdmZTWDZENG41VlIxV2lxNUJNZVNsMDlWbGJVZHU0NjI3Q2px?=
 =?utf-8?B?WXlSUlhrZVVENGFCUm9ncnNRWTN5YTYwNGpKZnl2MTc3VWx3aEtrbnJQZUxh?=
 =?utf-8?B?d2VwVlRLVWJSOGkzT2IvZmdxNm92eUVULzZPUjFQU09GUGVZeFI1YldoWEhQ?=
 =?utf-8?B?ZjNqS04xVWJyOFNpcVg1NXM3TXA2d0U5WjRmREpEOEVqdHZCRi80TG1HUUpE?=
 =?utf-8?B?NXNMc1AxWUdYL05kZVA1Z0VUMWNNeXlRVnQvd0V5YTA4cmY2ZXl0cnVrUjRp?=
 =?utf-8?B?U1BvbFhETmx4MDVNZ244SkNxM0h5aU9rbVZ0L0NBT0FSVTZNVW1CRVQrUDJP?=
 =?utf-8?B?RGVFYWtza0YyTmhqSDFoRldzMi9KM3hudkNzOWloOUJHWm9xcU1na3I5b284?=
 =?utf-8?B?Q0ZsZWVkQnpNM1E2VEdGUmJLOWIvUGJEWk5vZEJDR2V3MUsrZWVkc1R0TjQr?=
 =?utf-8?B?aDh1R00rM0k0dU5kYW1rN29ZNG5ITGlpN3d3SDYwNERBQUlEMTRRandkOXBZ?=
 =?utf-8?B?cFZsbmdyN2piUjIzTWR6OW5uSnF0UndMSCs4VE4rRXZ4YWhIaG1TcW04c2Vz?=
 =?utf-8?B?cmt3TjhEUU8xb2kvVGJCKzErejFqMTNhdWR4SXY2Vyt3WDVCbWR5NzUvdWVk?=
 =?utf-8?B?c255WHRCVjU1RXhLdHdtdzZMK09jRzdCSVV5SnlMRlFvUEFDMllLZ25TTVZ1?=
 =?utf-8?B?SWdXVVZNL0F6bGdFaG0wVDZyakRWc0NpQTQ3Q3JjV09tbS94UjkxMGtZNFFT?=
 =?utf-8?B?ZXdTNjA3TjNVMndLNDZJSVErWHVsUVVMN3VFZ2NtV1JRdWdvbWNHdStpelZC?=
 =?utf-8?B?cFQrc1VSb2s0dmZmeWJjVGcxYjZMSnZZM2ZoTmVqeDhrVE9LdHdTM1Fwellv?=
 =?utf-8?B?Z3c5bjdldGt0aXprVnE4OU1kZUQvRmw4aHBWRU9uaUU4TlpENmh2NXpncno5?=
 =?utf-8?B?ZWJhcktZRnQ1U09obXpvMzZ2a2l3aXBnYjl1UzlUVmxUbnZpdThBckczeU9L?=
 =?utf-8?Q?HzHJjaL5Cw845HHs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f37d71d-58cf-41bc-0d5a-08de63b45dff
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 06:12:25.7998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YcTLJFh5lsxzRZXOaxu0QowntfrJtbBlYQXEJoLrcnfbCvjNvzPQ22Fa2RAXAA59kh63a1Fzo+w1BPZYJ7U7MNSwYh82XeUXsQIYug0P3CM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5326
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770185558; x=1801721558;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Beh2mmrO1uURztvhnxsFcMk9zQo+iKisdQFbPQpJsc=;
 b=nsTc+qgVWS0YnWplMGEuumPWYYjxb7fKZwlKdL5nycDBIo6RvGlKTQ4U
 ojHRJ5E0i0a+phYG9IkqMSI7zafQ+8ceaEilRfWXhwaqMskkfkWy97QJV
 4BA8J929Jq+bY/PLY73+a32ip4lxmHJg7zmB/UydAaGuk+/tMSNq7kp7I
 C1cHTd+RmjYZ0PBJZXFBpbznGjti14YjWO9H6fuhL3wv8EVnH51gEN7BN
 Q92QghRi7b51n+IdZSipQvdt3GtlKOGBvlP4b8gn6+ldWTcW4mN3ubLyM
 0hWhynetWA05nefDcOMfRIKUUprPJfb2XbGR9eN1tt8yrFSrVFMtFnKND
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nsTc+qgV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:poros@redhat.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6BF9AE235E
X-Rspamd-Action: no action


[...]

>> If dropping the lock is a no-go, the only viable path forward is to 
>> split the
>> reset_task so that the waiting portion is decoupled from the netdev_lock
>> critical section.
>>
> We used to do this back before the netdev shaper ops. We didn't acquire 
> either netdev lock or RTNL during reset.
> 
> I thought we had some code in the past that would handle netdev stuff 
> outside of reset.. but I don't really know and git blame is not making 
> it easy to find this information.

IIRC it was iavf_config_task that is used to complete stuff requested
under RTNL but later

> 
> Perhaps we don't actually need to hold the netdev lock over the reset 
> task.. except Przemek's refactor to remove the critical lock now makes 
> us fully dependent on the netdev lock in this case for reset :(
> 
>> The fact remains that MTU configuration and ring parameter changes are
>> currently broken in iavf. Changing the MTU on a Virtual Function is a
>> fundamental configuration not an obscure edge case that can remain 
>> non- functional.
>>
> 
> Agreed. This needs a resolution. It is just very tricky to figure out 
> what the solution should be.
> 
> We need to hold the netdev lock during reset, and we need to have our 
> handlers wait for reset to complete in order to be certain their task is 
> done... but reset is a separate thread so we can't really communicate to 
> it that we're holding the lock, and attempts to do that would be a huge 
> problem.
> 
> We don't want to go back to the critical lock and all of its horrible 
> problems either. The commit that removed it is here: 120f28a6f314 
> ("iavf: get rid of the crit lock")
> 
>> I would appreciate any further guidance on how you would prefer...
>>
> 
> I wish I had some better ideas..
> 
> Bad ideas I've thought about so far:
> 
> 1) this patch with its drop lock and wait, which we discussed as 
> problematic before. It creates a lot of issues since it means the 
> operations are no longer atomic and we could potentially get stuck with 
> some other operation in the event of another thread starting some core 
> netdev task. No good.
> 
> 2) not holding netdev_lock in reset, which is now a nogo since we 
> removed the crit_lock, and apparently we held netdev_lock prior to that 
> too anyways...
> 
> 3) we could maybe do some sort of ref counting dance where we take some 
> reference in threads that queue a reset, and the reset task would know 
> if that reference was non-zero then another driver thread is holding 
> netdev_lock so its safe to go into reset without locking... but this 
> feels extremely ugly and error prone to me...
> 
> 4) convert reset handling to a separate function that depends on the 
> netdev_lock, and call that directly from within the threads that 
> currently "wait for reset" while holding the netdev lock. Thus, we 
> basically move this entire call chain into the thread already holding 
> the lock, and call it from the context of the function like the MTU 
> change, etc. 

reset_thread() {
	while (!stopped) {
		netdev_lock();
		reset_step();
		netdev_unlock();
	}
}

looks cool, IIRC I did something similar with the "after crit lock
removal refactor continuation", but I've put it on hold
https://github.com/pkitszel/linux/commits/undeadlock/
The linked code went even further and merged all of our admin-worker 
threads into one and the whole was protected by the netdev_lock :)

This feels like its also a huge issue, and could
> potentially lead to some sort of issue where we need to still block the 
> reset thread from going if we reset at the end of the netdev_lock thread..

that should queue on the "do later stuff queue", which we don't have
right now (and keep some of such stuff in the state machine), but would
be useful for many other actions too (like virtchnl messages, for which
we have queue-of-1 right now

> 
> I don't really like any of these solutions, even if (3) and (4) aren't 
> fully ruled out as completely broken... they probably have all kinds of 
> issues...
