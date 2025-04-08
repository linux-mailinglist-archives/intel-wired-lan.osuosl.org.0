Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA40A80C54
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 15:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 070BB8213D;
	Tue,  8 Apr 2025 13:32:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sct1MdkHYY05; Tue,  8 Apr 2025 13:32:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 255FD8213E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744119135;
	bh=aS9825OvTnkC4cwTS2X7j1LEGQWGlaQmnDZinDIygKY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UpfshG5Xk5bzttWAO8oy+EZtSB55phY4DYirgZFwBPvXsaTAyPF3hIPaagCS9nH/N
	 x8L/2n16Vp1giDlNsPVRrkyWHryRczwL3Emhq0GwJIrkZ7ibTdunjP0s5pr+la+QqM
	 PcawAlHGL65ySfS0UdWuTAdkAQ7oDT821n9yPyrl2gfLelcYx97oCZ48afLpcbihrU
	 N70Zja7MLWGa5Ovdptv3+e4wxpIyAiNki/adpA/r63yhBu0Ue6EBf+NIhuQy35piv3
	 3GNm1wSzOLiU7JIRHPYpAqrFA694l1IobSOZgamw+HIwV7GkxVKMXtC3FO8A1gzhZG
	 0FrUBZE+d/lFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 255FD8213E;
	Tue,  8 Apr 2025 13:32:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 604B8DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45EC082133
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O3Narl9rcfOH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 13:32:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 79BDF8212A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79BDF8212A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79BDF8212A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:32:12 +0000 (UTC)
X-CSE-ConnectionGUID: e34Q1K8xStijr1tdv5kCqg==
X-CSE-MsgGUID: HvhCbDklTniHVuhPWDEuFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56532234"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56532234"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:32:12 -0700
X-CSE-ConnectionGUID: nQq9htfNTTaaQQOYVHUogQ==
X-CSE-MsgGUID: jEUdnAWzQ2+R+fQ77v2l7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="133426069"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 06:32:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 06:32:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 06:32:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 06:32:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xdgYCu9MDF15n89LaczNmi7FqRGBI6xlgdJ5kCBg+qq7R1Lbw7ZT1Nzrh79NHZlZn/0rX1v0093k95Z0IEJaC2JyH+nFtu9jV761IxxkoFiw8sKc0cqFE6teV186vUFILDX3jGGaai2kF96BzNYwh+Du/pMmrpxCHZm9XOB7vmhTNUYCf1wGGD8LLTam8BrZJbncL87UO9cjHJZoTKw713mXCTLipAY9TckJDlfp4f9smgnYlah9Qc2VzcbHtuYrx1YbQ6O/DqHbGJjKklxBXjzyoMVIFGyRYxrrZT7fzInY+uBfv66PTDKKdAfeBA5lhwk0Ny1WMEZMmtBLb6qXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aS9825OvTnkC4cwTS2X7j1LEGQWGlaQmnDZinDIygKY=;
 b=HeZkErSSoSipl+lGPD0UVt1gwhzAiBPtxOdV52jt6bqwYBrT3hjnwiFMFXysvep3yiq+fii9kObkicMslC5l+f8Sm6Jm7sX4M2P2lcyBD8OXxKcTFXnXAL4T3ABCMaqXwrxwo9YD56hI1pFEgSuUcTSAj2tfXOzpiuN/IXDOWr3PUQTLFUNfSulZG9y7bhZZ5/g0eVM96sMtlgUtwEKUsS4xjwTGd4hR+Z7l4Z4kzcqAH7c6sJH0c8Rigie0sCcHCgY5FZUoQYlt2N0CGHcFd8kOGGPhfpU5N8V/WU9Xat4xFuw47OveltC3ii5N3X6E/T8iYPtVabBfg6yehLRMzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 13:32:05 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 13:32:05 +0000
Message-ID: <61bfa880-6a88-4eac-bab7-040bf72a11ef@intel.com>
Date: Tue, 8 Apr 2025 15:31:58 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-16-aleksander.lobakin@intel.com>
 <Z9Bf9o+t4BmFsMQG@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <Z9Bf9o+t4BmFsMQG@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0047.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB6750:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f0e0c27-89a7-4787-fbd7-08dd76a1c080
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NTFRZGUxZCtYVnB4alRaMm5TWDhzTHRDYWtENlVyVnJrN0F2QjhPT0ptdktT?=
 =?utf-8?B?TGFUT1l1OStsTVI4TG10Tmo1T093QUpWbG1zT2sxemhxVU02TkdwbG5VT0xy?=
 =?utf-8?B?alZTMUpneFVJQWZZcExVQ3VRNzFSOC9ZQ200UVFhTXdpRFJkeTc5eVU1Rnpj?=
 =?utf-8?B?a3ZPNjJVdGFOMEtDSUs0emI4WlRxY0daalllOWN1cTE1c2loS2Z4bUF3WXpl?=
 =?utf-8?B?NlJpTUhRNnFJZXN2WW9nRmVyRkpId0RTeExXN3E2SDcwaUVQRG1vNVlHWlhF?=
 =?utf-8?B?T0EvK1F3Q20xTEYzamlKY1JHMjQwMUV2cW8yTXZpamdLelFycW1uL05MZU1C?=
 =?utf-8?B?a1pZeEpZZW02L3FvbHlkNzVTenRLYmhBK2hWV3dxbnRGVFMyU1BwdksvOUNm?=
 =?utf-8?B?Y2h3RVNyaEZoZzlScllDVElqcjcxVVJDVnU3cmgwbFVBTVFwYVpjVzNybTJp?=
 =?utf-8?B?U1BmaVFKb0pJRGduOUx2bU95T3d1OFpmOXBKZldqdWY4aGF5UjdpeVp4TTFX?=
 =?utf-8?B?b0o4cy9sNE12WGxJWkNJaXBtVDF0YUQvYjg0eGwxNFoyYVgxYlZvN2FIeVlR?=
 =?utf-8?B?bFUzWnB4T0czYndUeXp6TFZRdDBKaERPNGpIU3FvWUtLclAvKzdjS0RYTFV0?=
 =?utf-8?B?WjZucWNvUTk5L0VxdnZqaTRaU0tZSU9vYkZvRzE1VDExR29EUFdmYjVWRExS?=
 =?utf-8?B?b1hkWnNKZlI2U25ud1NsOHRyTll5MlRLMC9jb1RaVE1GTy9YMk9uYnRWWnZ1?=
 =?utf-8?B?dGV2ZCtnSWRWUlk3dW4xT0J5V0tSODZxSE12TEt1U1Nsb0JSRXh2bG9GTzRv?=
 =?utf-8?B?Q3lzbCtIQUdSUkY2bU41dzgxanZmSEowdGJicVFqRHE5TWFpUUFuSmJXNXpU?=
 =?utf-8?B?aUZGREhiR0phTDgyUHJqWEVWNFkveFVEd2o2WndhcmJCc1ZLZSsxU0FsY3Bn?=
 =?utf-8?B?cGtwK3dzb2FncXBQWm9vUXozUEJQN08yYWNqZDNiZVpzdE9OQlJOMWxqNGdN?=
 =?utf-8?B?czVudU0zdUxtS1drLzhpMERteVdhVUxSRUxZWGtLYUN3R2FYYmJka29ySFdV?=
 =?utf-8?B?TmJuZlhHeTZSSnZPRFZkbXhoQVRMRzdOd3ZXSGFyVVBpYlpBN1pwN1BldkRq?=
 =?utf-8?B?T2NpdlNHSnRXT2llVlV2U3FtcURVVFJuRS9kcHdLTjh3M0MvNkdHWUl4T0Vk?=
 =?utf-8?B?RXJJNklnSGhZOFlJODFlT3JEQW9id20zMGp3QWpDS29WMTQ5TXBhSHFUcFN6?=
 =?utf-8?B?NFBmMEdZT3I4MWk3cTdmSUZaa1NvNXplNDFyeG9mdnVxUVJTQVY1V0UxV1cz?=
 =?utf-8?B?SkVpREZQYy9EK2Qrc2VSZDVQOURCY1NFbmJKOUZhRHZESzNVRUlocFNQMmd0?=
 =?utf-8?B?SmUvUHQwbHpMU2UxM09jRC9lZGtqVDhqS1U0S0pZRzJndTZteU1jb0ZtNS94?=
 =?utf-8?B?M2t4endZK1hIU3NTcDRMMy95VXl3Yjh6MWxUZ0l1Wm5FUGJ0bVpPMWFZcmxN?=
 =?utf-8?B?Qmx0Yk9BdFZDbGxzUVhHOUFpWkdCK2trNTRCeVlHS3BWM2xaN3ptdEE3bFNJ?=
 =?utf-8?B?MnQxUGZWQ09kTlVPQW9iWlBZODRsNDVocXoyZjFnczdKYXNWRFphNVNuSHlk?=
 =?utf-8?B?WDRRQUNEeW13S3o2WEZZdzFRS0tLV0g3K0NmdG9BdVJQUFppL3krTWk2ODNr?=
 =?utf-8?B?YklFakpJWXR6cnNsTDIwVE1DbnRqUjAzNXVZeExxeE9YbURaRHhldUJoZDdo?=
 =?utf-8?B?YTZXTlIyTG5TSFlnbUk1d2lLblQ2ZUJkb2lCVkdieWc3SFloV3Z2R3E1dEZx?=
 =?utf-8?B?QUExUzJ0RUtUdEdQNFRKWERjdW53Q2MwYkxPTERYWVMreTNOMTJ3c0NBamdH?=
 =?utf-8?Q?Xnp59tBz2Ugdo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEtYRTlPd2FhU2tydmhrUDg5REFUVERoOFIyV3dUdW5Bbk1RRk5LM3lodFZN?=
 =?utf-8?B?LzlDN1N1d3dBdHVxaUduNTVhaVo1eUVhMEZKT1hmdTNGSHJMUkpCaVJXNEJs?=
 =?utf-8?B?elhVQ1JuVEZtVlhTTXRCcWVjMEhrVnZtL1NpeVhHRnRxQ2FsalNwdGtCeUtW?=
 =?utf-8?B?OTdRRmdGWmQwYWh5Ym50aWNOcERkaW11WDF1cFQvTlc1T0d5SFVDWFhpRzNG?=
 =?utf-8?B?enZjakhKVFJSU2Z3d01uMFZWVU96S3BmYjFITWh0aWtEeVZ4eWFPd2pYb1U0?=
 =?utf-8?B?YUJoM3QzZUxWbldTQUx2VjBDMXhwZW1BTXE5aE9YOUk5WDFxTzNtYWswT0du?=
 =?utf-8?B?S1MzVEJlTFFQWWZUbFFZRTZ6cmxoODZ0QVRCMENDNHhETnVSdEtBNVRZZW45?=
 =?utf-8?B?TWpZczBvWnprc3JBL0kxZ1JBb3c3cjdDSkFqTVlDVjBaczZlL3ZDMmt0Rmdk?=
 =?utf-8?B?Nkw5bUpUV09SM0gzRllyOGs0dmdVUXlDODk3Wk9Kb0hvb054YkRQQnpXNUFY?=
 =?utf-8?B?Sy9FbTk4a0svZlpPZ2FwNEVLM1ZiZE1JZk9sZzJ1aE41T0lKTG94bmlLY2xI?=
 =?utf-8?B?dllaSk8vTWZJQWtIMDRTbWJXd1VRaGY4VDE2bmhiU3I0dmtkeW0vSGVpMVNU?=
 =?utf-8?B?RzhvMk5vWExoK1dwcnpyR3FuTkptdVI1K3djZmRyWjZVN3l6bFdpY28yV3NZ?=
 =?utf-8?B?REdEN3JhcXFTcjlRRXBUNkczQUN0a0tZb1hJL0Z5SHZNZi85SDNNRUtEWGRY?=
 =?utf-8?B?ZjZISGtzMkdtWHNaNE5MQVY4dkt1MkRZWFZEOWxUTXludnM0c1ZBL0N1bmtZ?=
 =?utf-8?B?VzRzNWdQU25Nc25wL25oUkZiSnl4STUyN28wTVRXSGZKL1JCS0JWUzhaTE9P?=
 =?utf-8?B?bDdHU05Pd0Y4YUQ5Qms5M3FUUGthVGMvblB2VmlTL2p4Q1NHcVBuRndZcml6?=
 =?utf-8?B?eHFoQnFlRnhOY3RFWkVIWi9iek1JN0kralFXdFhaczZGWHhQbVJNaHM4YTVJ?=
 =?utf-8?B?VFNUc2JNY0ViREJWU0wzT2hpeHo5Y2RqMndMSUtxcENCQzJyZmJSYTB0VEV4?=
 =?utf-8?B?aGkrUEFDNHYwV0FTSGhRVngzcVk2bnBleU4rSVBlR0NXeHk3S3lVVFdiaHhI?=
 =?utf-8?B?OVFESGVXWnNHRiswcTltcC9FSzE1NTlWY0NvY1AwVGg5cE83SVNhYTJISU1r?=
 =?utf-8?B?Ymh3SHlJR3VlZzFHRnRRWGd6US9uSi9PeWNERlNIOUZhSFZuMnk5TGRiWW1q?=
 =?utf-8?B?RC91NXRGTlVsbkV5OGxLUFZJMUZ0dm5MeFN0VXczcms1THdpZ3JyQm9taU1D?=
 =?utf-8?B?S0x3TEY2QUJLRkJGSVBjTUJ6RHdqRnZXYXM3VXhuMXZUQmRTMm1VeDhFbnQ4?=
 =?utf-8?B?UjQxRldxZG5leWJWTjlEK2tBS3d3MzhlbFd6SWJJcTd3S0lseE51MkVMeU1a?=
 =?utf-8?B?S1RnTHBZd1J1V2REaThVNk5UZ3VVbGExN1ZYM3FibUFIQU82Z2xPWndDdTNz?=
 =?utf-8?B?VndWWHRvM2lJMnZ3MDFzUUhCQ3d0c21aeFRabHhaQXlFY3U3aGxGQmZ3TXhT?=
 =?utf-8?B?YkJXT0xCSitsQ3dXdG9qN3FRQUtsTFB1LzBNS3k3WFA2dzhNN3QyUmQwa0VI?=
 =?utf-8?B?N1o4dDIySVRqeFRyZEZnTmF3QTFuUUhBK0g0SnNXeEVRV3lKUHNCR0NOWmt3?=
 =?utf-8?B?eklob3N0MloydlRBL09MN0JKRlNQSGpwMjJVa2xGU3JRQmkwK2pDVndnOHBw?=
 =?utf-8?B?QTNaNE9ucU9laTNMdk5zaVVaN0lLQ0J4QnBHSGZxVXhscFdKT2R6TVRJZFM4?=
 =?utf-8?B?QlNmQmlPYjVaSnVVM3N0ZmI0RWFnTFo3a1pzN2c4UXV1VDRDYzJJY09QenZY?=
 =?utf-8?B?blAyMk1zaHVtVzI3Z25RUVZSREZhaU9zeWd1eDNOaGQ3MGEvTE1SVG1YOGFj?=
 =?utf-8?B?ZUhMSzhQUlk1Ti9tUkZEZWxtQTJYN0ltTGI4elRORWloZHMxNnpOcGp4SFFD?=
 =?utf-8?B?WmVxcHg3U09HaUlDcDhidExwYjdOY0RodFNZaDdaWVdOZE56Rm9senNUSFFx?=
 =?utf-8?B?MEl2S2ZGNW5JSkd6UFVoakNyOE90TjFxem15WUErZEZrMmgzQ3cwN21ycHUv?=
 =?utf-8?B?TXNSR1ZjQkdPYncwN0cydW9HNjhoVHFmQzV5MXIzaWJadGl6U3UyR3FGSmtJ?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0e0c27-89a7-4787-fbd7-08dd76a1c080
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 13:32:05.1050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S7jKkjap+5mgJbpsTRhzZHoUlrA0cmmRm0VP4Pjdbr/zgFcVFUfwWkP6zAslp1hr0lINvNAAUJr1T2nhUYZ/yRpbZL7U2Q92Y6Ya03ekjL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6750
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744119133; x=1775655133;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qr8D3141EUVU1rgNxis+a+PdEFs6a3Rdy2zOVdnpST8=;
 b=O6NpFcWXlRNpk2sW6KwE8AXw/mRVsYUpaq6tOVhJrV91iXjZJZSnqfW5
 RRHDWcZIgFP2yK10dPZ0Y4CSs/f7dAcJAz6YeS2E2ZJtng3/ffTaX0dM/
 XVYDM9OTKG6RZLh1Kz8ezfseBOkZEZVBpIn9DJiDmyuZYcrI+tcM7GOhb
 Bj9kjVIKOQ7uve1aRpriYI68hN+1YbagVUrISOC89lw8Nfpc2Vyf19by6
 TzDZ6uHoRrH4AZRnFsPon9I9BBUbYbUYw9YvPGOYCDSkdSrSfufSlnP55
 UXgPqzCn4p1+T1XU7Bey7eCq1tx6raj4YM0gK0DQSPvfrfPgh8bg97IQ8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O6NpFcWX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 15/16] idpf: add support for
 .ndo_xdp_xmit()
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 11 Mar 2025 17:08:22 +0100

> On Wed, Mar 05, 2025 at 05:21:31PM +0100, Alexander Lobakin wrote:
>> Use libeth XDP infra to implement .ndo_xdp_xmit() in idpf.
>> The Tx callbacks are reused from XDP_TX code. XDP redirect target
>> feature is set/cleared depending on the XDP prog presence, as for now
>> we still don't allocate XDP Tx queues when there's no program.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/xdp.h      |  2 ++
>>  drivers/net/ethernet/intel/idpf/idpf_lib.c |  1 +
>>  drivers/net/ethernet/intel/idpf/xdp.c      | 29 ++++++++++++++++++++++
>>  3 files changed, 32 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
>> index fde85528a315..a2ac1b2f334f 100644
>> --- a/drivers/net/ethernet/intel/idpf/xdp.h
>> +++ b/drivers/net/ethernet/intel/idpf/xdp.h
>> @@ -110,5 +110,7 @@ static inline void idpf_xdp_tx_finalize(void *_xdpq, bool sent, bool flush)
>>  void idpf_xdp_set_features(const struct idpf_vport *vport);
>>  
>>  int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
>> +int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>> +		  u32 flags);
>>  
>>  #endif /* _IDPF_XDP_H_ */
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> index 2d1efcb854be..39b9885293a9 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> @@ -2371,4 +2371,5 @@ static const struct net_device_ops idpf_netdev_ops = {
>>  	.ndo_set_features = idpf_set_features,
>>  	.ndo_tx_timeout = idpf_tx_timeout,
>>  	.ndo_bpf = idpf_xdp,
>> +	.ndo_xdp_xmit = idpf_xdp_xmit,
>>  };
>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
>> index abf75e840c0a..1834f217a07f 100644
>> --- a/drivers/net/ethernet/intel/idpf/xdp.c
>> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
>> @@ -357,8 +357,35 @@ LIBETH_XDP_DEFINE_START();
>>  LIBETH_XDP_DEFINE_TIMER(static idpf_xdp_tx_timer, idpf_clean_xdp_irq);
>>  LIBETH_XDP_DEFINE_FLUSH_TX(idpf_xdp_tx_flush_bulk, idpf_xdp_tx_prep,
>>  			   idpf_xdp_tx_xmit);
>> +LIBETH_XDP_DEFINE_FLUSH_XMIT(static idpf_xdp_xmit_flush_bulk, idpf_xdp_tx_prep,
>> +			     idpf_xdp_tx_xmit);
>>  LIBETH_XDP_DEFINE_END();
>>  
>> +/**
>> + * idpf_xdp_xmit - send frames queued by ``XDP_REDIRECT`` to this interface
>> + * @dev: network device
>> + * @n: number of frames to transmit
>> + * @frames: frames to transmit
>> + * @flags: transmit flags (``XDP_XMIT_FLUSH`` or zero)
>> + *
>> + * Return: number of frames successfully sent or -errno on error.
>> + */
>> +int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>> +		  u32 flags)
>> +{
>> +	const struct idpf_netdev_priv *np = netdev_priv(dev);
>> +	const struct idpf_vport *vport = np->vport;
>> +
>> +	if (unlikely(!netif_carrier_ok(dev) || !vport->link_up))
>> +		return -ENETDOWN;
>> +
>> +	return libeth_xdp_xmit_do_bulk(dev, n, frames, flags,
>> +				       &vport->txqs[vport->xdp_txq_offset],
>> +				       vport->num_xdp_txq,
> 
> Have you considered in some future libeth being stateful where you could
> provide some initialization data such as vport->num_xdp_txq which is
> rather constant so that we wouldn't have to pass this all the time?

Is it? Especially in our driver where there's no XDP Tx queues when no
XDP prog loaded?
The "state" of libeth would only be a duplication of already existing
data in the drivers themselves, but with additional problem with
synchronizing this data. XDP prog removed -- you need to reflect that
in the libeth "state", and so on.

> 
> I got a bit puzzled here as it took me some digging that it is only used a
> bound check and libeth_xdpsq_id() uses cpu id as an index.

It's also used to quickly check whether we can send frames at all.

> 
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
>> +				       idpf_xdp_xmit_flush_bulk,
>> +				       idpf_xdp_tx_finalize);
>> +}

Thanks,
Olek
