Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FcpFTsbC2reDQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 15:59:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4BB56E32D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 15:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D61BE41087;
	Mon, 18 May 2026 13:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S6qXXKxYrgLj; Mon, 18 May 2026 13:59:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8C8F41094
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779112760;
	bh=ZhtrHUfihNO3D2BHsJFVl2UFR4pQOGOp2y0PwechgZY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KIhJBsIJyP5H+cNGjm+UWhqbORu5fvYaZBv71sNktlg8ZoXDv/aFcoD2Ihl0AHO9P
	 g6QEkoJtD4W7+7mUgg5353+0YzA27jQBHadztx+Vyl6aitF6oonhx40S+asMyRS4BK
	 efRYAgJ3n+4P8T5UeW6l9zTOuowPZTscoX6r3HQaXaJXsQQCFvdFcYklIgpxXSr5h8
	 XjkIGRDz01WJ+EdFD709xoQHnnsGVegT18Lc2IGcEMDCIX5WL/G8T3LeSeNSVvn3L6
	 77yil6hLUjrdFER9nJbOhdANXK3FA7R0LTsfvkbjgcqezybDg+rBSoZVb5ru34QMvj
	 OuVpbR7oxuGsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8C8F41094;
	Mon, 18 May 2026 13:59:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 923921B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 13:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7845985C48
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 13:59:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 442rG9IyBToP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 13:59:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 256F885C42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 256F885C42
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 256F885C42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 13:59:16 +0000 (UTC)
X-CSE-ConnectionGUID: JmL6XpK8RwuQAjDsi12vHw==
X-CSE-MsgGUID: YXeH3OOXQy+syvXej0O/sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97533512"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="97533512"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 06:59:15 -0700
X-CSE-ConnectionGUID: rJQrD5N9Sba9k6g9jL2gaQ==
X-CSE-MsgGUID: uRHWvfWCSZeRbx21RgsDbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="269768289"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 06:59:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 06:59:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 06:59:14 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.14)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 06:59:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b09B/YD6STATVScgsC5FIZSyxtf/Q5WjKnK1ZcfPwvnKx2Yc37cMOAQI+xb8/+TY5PomS3C6XRhFhSJgG3c067cD2JOLvpzZ/Ypdy6STJ1A94j5tVrJgH0x7evvVyYmkMRAbG3FDsnmyRYDwGvKb8IH5yg3NHBKKbzYUXvXVFso+wttujKqDYI0J2A5lgrcmhfyBEg/pmfOkhN5lo+K6LGb4+xbO4k8vB3wO7jv4l5/WldK/lmQ8k135RVNV+2QnXNA42F2I+fJrgSPuqBXDvBFTKYOueyAFac3ozCtPTaatFYIotbZw1q5W6+hyK6AbbLAJ3wVlk2+FAttk/aTe3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZhtrHUfihNO3D2BHsJFVl2UFR4pQOGOp2y0PwechgZY=;
 b=FVfppNllrihgwnGD3EAcJW4zkZerO0WAyIAZHLslxWgNv5halvi9qXg6pRm6qhDh1Qp6MF/SAYZKOyHGTNLVunvk9L3B1qchgVzG7oZNhFO20nS2qLLBDQFAumCUjdAvrgFQdCLBfWQNCqOLbTQAl3yP00dRdQXvHiWkg3JTOVbeY/n7BF4GiD+h4bokT9Cr6NfBCFDD6JJ9lOOfF5hDCBbRix1AAuFWPt6kreQreLlPYI2x+KxSNjcAj/v4lEcj9NxAS9Q13fXBl/3IBExrxrU0Ne6WNq6RaoGu0vjzpKrIw3mZ9bMms0il25JwPSSjQ0vQJTgEb97LUYfcgOolvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 13:59:10 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.21.0025.023; Mon, 18 May 2026
 13:59:10 +0000
Message-ID: <744d9c62-a5e8-4702-bcdf-c9a8d31a026d@intel.com>
Date: Mon, 18 May 2026 15:59:00 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Lorenz Brun
 <lorenz@monogon.tech>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 <stable@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>
References: <20260512152658.2818805-1-lorenz@monogon.tech>
 <9c49ecf7-1d35-4b03-8a71-9d724562594d@intel.com>
 <CAJMi0nQN+XB14Z81=W2reEGnax526-MB=Armx+f_miWMWUmRFw@mail.gmail.com>
 <agsUHNss20SweH3a@boxer>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <agsUHNss20SweH3a@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5040:EE_
X-MS-Office365-Filtering-Correlation-Id: 68714062-f936-409c-684a-08deb4e5a260
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|56012099003|22082099003|3023799003|11063799003|4143699003;
X-Microsoft-Antispam-Message-Info: NWePC7xdSIM6PhVP8PWKAUi2KX+h6yPROPVrR8hAGi4Xut6RGzqMscNzznVKTbESM1AntuD65Vnj1UogkHneKt+eCttD633Xfkhz31xiBXzHwdYWsKvWfGMK2mEodMzXGMe2350j/YagttdfWxW0pf/iCk65IqxwrqbHZoAMPwMIKB3RxY7uyE7A2AK/+keyCt8uzTF8Q5Qzl2Jz1pl4gWpm+TVBmEFAPXw46NPjdKQa2cLv85DBwcGClQFSQTDKR+Nq6IZx+86GOYyXL6eNvSqIK5m8jAKIG/aQj05dKzfDSr4zfN4IZgrPl4GI3IdWYnGzzD2/079FHP7R9wyqwqcBngeP3XCuQWJj/XKOPiwGzoYSB6BdWHuQq+3ZPnq9KSSfC2Hjb/tiSfuqpzvEQNMQUwvwGeHZYe8OltsvrKyDdxs4n6uUdwEJGrEb18kX419YXVRfrKqZ71F9+TNg/WNpPHshcv5fRb+N6RS9+Ils6ozz9Vwxzsro++52oAI0wKkPxB2EH/7Ewf1j9pheMma1e9B6HFK410aL65tjKddReVKfR3/L2H/rffT+m1/2FFUJNlZi0r1Uh8Mj3VKb4d/wiw8UQksL3pCbu+xIpj1/v/nGrjS5LmBbY3fIkqb42yWLZIT2Ctw15tGsx+cooPoZoy/a2BiWX3ybGsclrrPUV7q1oBKuKTcbnzm+NcHQNLY+csEqVGLqTefiiT1Igg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(56012099003)(22082099003)(3023799003)(11063799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkJYTWJzd0N1WENwUFJIYTkvQThtN0pkejhDRU1PcXpzV212Q0djVksxS3Nt?=
 =?utf-8?B?YTdGWUpCMnNJcTR2R2Q5Zk0waGpyUFY1MzhzSU01MWdwd2hmOW1paU9zUmFl?=
 =?utf-8?B?YmUrNmhyNzR1YzBnSHAwc24yVVErcTl6RXNsQjBBU1dXZ2xCMG5YY2NRT3dw?=
 =?utf-8?B?bEdnZzN0eExWelVyeGdIVXlXSkw2N21va1c4aHJzOHdFaUhMN21CUi9XaTFo?=
 =?utf-8?B?SVRwaDlQaktpLzIxOXp2SmNLNW85bW80TUdKU1JOajJNRWxjUUtKR2JJMlBI?=
 =?utf-8?B?VGZaZFhwM0hmTG5XMGdXYktaZmlJR1hha0RQUTNIbW5rd2FrdDNXcGllK3R5?=
 =?utf-8?B?QjRQeTgraWFIR1hHL013NTFBSmJ4V3d6enlUT0habHQxeldlQXFCTEhrVVBr?=
 =?utf-8?B?T0UrWStZMHdpQWw2QlJFNHROMnRnVUZpK3lReTUzN2NQR08zRFIybFlvOGxF?=
 =?utf-8?B?bEF6MGRPcUVLbUxZZ080OUxiZk8vVEdGZzFMeDBoSkNET3V5K0tzanVZem9y?=
 =?utf-8?B?T0htd21YZkdaOGlpV1RQczNzbzdVRWJmOGNtUmZaT2drTlRhQTd4STNuSzVJ?=
 =?utf-8?B?dU56MEhSNllVa3MzbWFCczFLUVUxWWdYN3p4blErbUJHN0hOMHZQVjloNTZN?=
 =?utf-8?B?c0JvdkFKc0tRdFJ2RUJFL1ZWRDhQOG1tNzkxc3ExZXBvdzB1VUtHMTlUcGtJ?=
 =?utf-8?B?ZzNwbU5yQjJkYmtSU0RybzZqWWs4blU0SkdvMng3dWZ1ZUY3a2Y1emJJaHpQ?=
 =?utf-8?B?azI4RlB5Zm93ZmFmbU1OeEtwMVg5NFZnMTZyQk9CbzNFK3RsdkpLTWhiRFhk?=
 =?utf-8?B?NzRmRU54THpJUThZZWR0UDQ1SnRjS0t3emRuWisrNkVZYUFRcm5tT3dwcTdN?=
 =?utf-8?B?ZDU2aDd1L1RIbkxoV3FIMFZaZzAvTFg0Y2ZOdTMxR292NEhPRjBpZEIrUmdT?=
 =?utf-8?B?VUtybDA1S3lOSnpGNWw4TmhGTmVtRTk3cDFUQjREbGZzeFUvS3VVUE5QbUQ1?=
 =?utf-8?B?dG50UFp4djB1ZzJSMFh6a3llaHhWRDJEekxDQ3ArTytRWVFCUGQ0cXFURVhQ?=
 =?utf-8?B?V1ZtQmg3SXpwOTdZR0tNd2c0K3NEbkVBMXRzTWdxMnhXdjd6aktOckhhQnov?=
 =?utf-8?B?NEpabHNCWEVmTWQ3elFJdDcrNTEzcnRmMCt0VkxQcURyWXNiRk1lSEFVWVRI?=
 =?utf-8?B?WDVTRU1Ia201WkNtdlU0dWdvS3lPNXN4USs5UDQzRkcxSEVkTXRLTjdHVGwz?=
 =?utf-8?B?SU5aUWRyYVVIT3BvR1V5L0lkMk5obUVoQ0RBeTk2ZmFrWEpzUlI5R1kwVStx?=
 =?utf-8?B?TlNzT09VdXZWYVhHMnNFWnJvN1lrb0RMQWdveG16L2JmQWIydDg2TTNTaTdw?=
 =?utf-8?B?QmQvVWJjMXhsMnFKN3pPS1AzdWNibkZSeGhrQng4b1paOVJoUlhGZWg1Wlpt?=
 =?utf-8?B?bkR3dGNSTWludVhWUlkzalFQdDYwTXNvVmN6aFdWbjhQcjNjSnc1LzlnRzlt?=
 =?utf-8?B?aEpsWTNLbG9UZGdLVVNtWDhycGQxQVZZYUxweTVEU2czQjdKSUl5T2d5d2ln?=
 =?utf-8?B?dVVlSmc5NHNSSCtObFpwSW1maDg5TE0zcXJMY2taaVc1K1hyTGZLWGlmaGVM?=
 =?utf-8?B?dkhYRzg5NU9oRGR2cjJ6eThjVXRyZHB2dkNYN0JzWjE5MFA1Y29zUHhHRzhC?=
 =?utf-8?B?emtKK0gxZWl6M2s3YUxJbjhBdUcwbUpnaHZ1clJzdHhBUnpPbklRNHp1TGho?=
 =?utf-8?B?ZFN4aGNycUhPVjY0N05iZ28wZ1ZpZnVzTVV2eE5RQTl6c1R3TlF0dGthSUR0?=
 =?utf-8?B?c2dmOTc2d1FEaE5VT3J3TE5ZNzFacWFsUHhTZlVIZkw4Si9UakJWcFp4SC9I?=
 =?utf-8?B?Q09Oenp1TTEwKzlGK0FnVFhoMWx6Y2V5YThjb0xDNkFFb3ErZmlTdm9WUFIw?=
 =?utf-8?B?SnNLeCtTbkIxZ2tlUisyWC9XamlXZjFCOXpIUVVpVFZVYjhWRVJmdHNWYWw0?=
 =?utf-8?B?Uit0UEw5V01TVDRhVmw2cjVCdmpQM3c1eko5RWhZcTN5QXErVnNKcjROeFQ2?=
 =?utf-8?B?d3djT2NOMzVRNTZWSFNKVTRWanVjNHIxU3RLQytWOUQrZXc5N2F3cDE2blgy?=
 =?utf-8?B?SFpjQUxXR2ZNQ0RVTUp1ZGN1R0NZUHBsWDFBbkJOUUpZTmZLaWRNMHE3QnpX?=
 =?utf-8?B?VGtuNEFoRGxIbERnNHJYNVMvNEFxY0FDdHh4dzBSOVZHOUtjb1lMNEsxd2sx?=
 =?utf-8?B?NVhQOHp5NVBGZEgrYXRNZlJ3b2NkamYzOXg2MXNyUnpEUUpBWCtCdHBiL3cr?=
 =?utf-8?B?QVkwT0JKcis3RXM1eWFwN09GbmFOSnlKQjZZcmNpMlYxTHFkakR5cU8xbGVY?=
 =?utf-8?Q?iezpAkbtpMInSC2Y=3D?=
X-Exchange-RoutingPolicyChecked: ar89Dg9cGgqZRmnY2EDl7mY0WGxnXlmbqgi2SvWMlTbDTfHnb1J3ottQ4FVZBlzA4a7zwKENyiBPgW9GmTBWXSDGTOWAqJi4Su53h2ppD9NnVPst4tJT/atTbm2B9Wa6Xre3s166Foegd1QjwVZz9IFIFX/WAzBWIVtiTMAOXHsItKyfO5Q8rpZDZgtw5h8XXdM/yhmJzJIM19weT+wnsZhgEiVMQvULfOrnlzwLtiMl46vehDr5hcdaC0+q4gLelZWQdI07IiQQlleKtut1gODS4HoPt4hFfw+/3oUMsSuR7IIl/xG3dwJhm8E1ucdI2uE4UJu0+r9lnk6MBCRlUA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 68714062-f936-409c-684a-08deb4e5a260
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 13:59:10.0714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/xTwygXAMDZV9RQ9Xv6/JkWn2DWpnsehstdWNDujGzvUboGuFWjgwHBTKoj6Y3M1qbmgqyCYuVEE62B+ZH4kxbbWDB5yDtZDmYhL7bEH3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779112757; x=1810648757;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wr6Vh7XCq5XvvJu5uRQzqL8LInn/C7H8UBpBCdwnGkY=;
 b=YWclTNSoXRxyNyKCMtAyQwX/1dwjiCcT5FvH5IVi2Oe4bA4Lx0Ax51MH
 SGdOR2J7rcmL0JLi8iikuVuWORnhaBFkKfqr/wULsLyCBgtjY3faHy+Vr
 6Syj0zyu8KEb+DSDxH5ba/e8ZDQ3MFZC3nFn+0/903KkapJtP8joF02ga
 +LZcR3irEOnXaw+rcWeSh9KapUgPfz/B89+mts1Qc/dv2lTvdVc9rWZbm
 EJLvtfJNwnWqt3UtVEayB+DC9+6h6x0SQzOqrBtqf5vkbohJ+hnkyGWzf
 ujIabsIHEAaYAuK4ibHjPBAvJur9C+UxQgdzVHKXboCY/Knr5lGdbGe9r
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YWclTNSo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] xsk: switch xdp_build_skb_from_zc()
 to napi_alloc_skb()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:lorenz@monogon.tech,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:stable@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org,lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim]
X-Rspamd-Queue-Id: 3A4BB56E32D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 18 May 2026 15:29:00 +0200

> On Mon, May 18, 2026 at 02:57:55PM +0200, Lorenz Brun wrote:
>> On Wed, 13 May 2026 at 17:21, Alexander Lobakin
>> <aleksander.lobakin@intel.com> wrote:
>>>
>>> From: Lorenz Brun <lorenz@monogon.tech>
>>> Date: Tue, 12 May 2026 17:26:56 +0200
>>>
>>>> xdp_build_skb_from_zc() allocated xdp->frame_sz bytes from the per-cpu
>>>> system_page_pool and built the skb head with napi_build_skb(). The
>>>> latter places skb_shared_info at the tail of the buffer, but the
>>>> helper sized the allocation as if the whole frame_sz were usable for
>>>> data. Whenever the packet plus reserved headroom approached frame_sz,
>>>> the head memcpy overran shinfo with packet content, corrupting
>>>> ->flags (SKBFL_ZEROCOPY_ENABLE) and ->nr_frags, which then drove
>>>> skb_copy_ubufs() off the end of frags[] on the RX path:
>>>>
>>>>   UBSAN: array-index-out-of-bounds in include/linux/skbuff.h:2541
>>>>   index 113 is out of range for type 'skb_frag_t [17]'
>>>>    skb_copy_ubufs+0x7da/0x960
>>>>    ip_local_deliver_finish+0xcd/0x110
>>>>    ice_napi_poll+0xe4/0x2a0 [ice]
>>>>
>>>> The overrun bytes come from the packet, so an on-wire sender can
>>>> corrupt kernel memory remotely whenever the XDP program returns
>>>> XDP_PASS.
>>>>
>>>> Rather than patch the sizing math, switch to the pattern used by other
>>>> in-tree AF_XDP zero-copy drivers like mlx5 and i40e which use
>>>> napi_alloc_skb() sized to the actual packet plus skb_put_data().
>>>> This sizes the head exactly for the data being copied, drops the
>>>> system_page_pool local_lock from this path, and removes the
>>>> structural mismatch between frame_sz and the skb head buffer. Frags
>>>> are allocated with alloc_page() per frag, matching the other drivers.
>>>
>>> I used napi_build_skb() + system page_pool to enable PP recycling
>>> improving XSk XDP_PASS performance a lot.
>>> Are you sure there's no other way to approach this?
>>>
>>> napi_alloc_skb() used in other drivers works, but it's sorta old
>>> approach which is way slower.
>>>
>>> System page_pools always allocate a full page, why can it create an skb
>>> prone to overruns?
>>>
>>>>
>>>> Fixes: 560d958c6c68 ("xsk: add generic XSk &xdp_buff -> skb conversion")
>>>> Cc: stable@vger.kernel.org
>>>> Signed-off-by: Lorenz Brun <lorenz@monogon.tech>
>>> Thanks,
>>> Olek
>>
>> Hi Olek
>>
>> I looked at the code again. While your approach is indeed faster, it
>> is only faster for traffic bypassing AF_XDP, which is generally not
>> that relevant for performance.
>>
>> More critically, it currently corrupts kernel memory and panics the
>> kernel very quickly when running with frame-size set to 2048, 1500
>> MTU, and passing received packets. To be honest, I'm not familiar
>> enough with the XSK subsystem to know exactly what specific sizing
>> assumption was violated here. By comparison, the approach taken by the
>> other drivers is a lot more obviously correct and works perfectly.
>>
>> If you want to preserve the current approach, I'm perfectly happy with
>> that. However, I don't feel comfortable sending patches for it, as I
>> don't understand exactly what the expectations of the various data
>> blocks are.
>>
>> AFAIK, reproduction should be fairly easy. You just need to run a TCP
>> connection to the receiving node (which gets passed to the kernel)
>> while receiving some UDP packets via AF_XDP at the same time. As
>> mentioned, it also needs frame-size 2048 to reproduce quickly.
>>
>> I checked if I could get you an easy reproducer, but xdp-tools is
>> quite limited. If you want to keep your approach and can't reproduce
>> the panic yourself, let me know and I can see if I can synthesize a
>> minimal reproducer.
> 
> We now respect the tailroom in UMEM which is supposed to address shinfo
> override cases. Could you re-test this on your side with cited patchset
> being present on your tree?
> 
> https://lore.kernel.org/bpf/20260402154958.562179-1-maciej.fijalkowski@intel.com/

Either way and regardless of whether XSk XDP_PASS is
performance-demanding or not, fixing an issue by replacing the
implementation with the one from some driver "because it works" is not
something I'd like to see.
If you have difficulties with root-causing the actual problem, I can
take a look and fix it since it's my code.

But yeah, first make sure the series Maciej mentioned is present in your
tree.

Thanks,
Olek
