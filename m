Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKzTMsiMymnv9wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 16:46:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA5A35D1E7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 16:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D0DC60B8D;
	Mon, 30 Mar 2026 14:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WKR77JYp98mx; Mon, 30 Mar 2026 14:46:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C2DC60BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774881989;
	bh=XOpsDAEnW8pbd5DNnj1NAoqW7weIwHdB1qr5UG3CC7g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ubNStgD6TmWEMbfJKSGemjcnzBaaVYqHAW8upYU6ykg6hFnCta6eeryYoMkt28Nfw
	 uA9y7hNNaOptTjMieUxJ0wK1mvvRBiS8i7wSROTPVtB3xQLqO9gcru3sOfMuyws3cm
	 wwRgRr6o3pltlYwLLym2yVKWphEZ699fVC12xiHnIJRBFoFcaVwuBIu3KLbA5Sun4E
	 JBaCSvquXdcqkYM+0jeyWp6Ne0+cf+bTj38NoKMrNDzQKW0ip8aywfJYFke+N7n6hh
	 PpoNMuXxLsdO3/HdX+y0Glti1sehy9IntXkW9W30R2EWJu+O//Keh7o5MfuJGoxg07
	 0DV3McA/6X/QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C2DC60BC0;
	Mon, 30 Mar 2026 14:46:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E6921D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 14:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74B9240486
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 14:46:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bt2vY1lHLECY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 14:46:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C838840484
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C838840484
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C838840484
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 14:46:26 +0000 (UTC)
X-CSE-ConnectionGUID: wHFT2t0KS8W+153MpXigUA==
X-CSE-MsgGUID: oBCR8pxuQIS+aQrAls1JIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75772048"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75772048"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 07:46:26 -0700
X-CSE-ConnectionGUID: GouFC9IUSfWQVlHIi4Pdrw==
X-CSE-MsgGUID: X9d5GtN+Tw+TACyeYfmX4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="225247990"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 07:46:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 07:46:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 07:46:24 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 07:46:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KuR/c/L4OE1lO2Cq+xcRLiW2C77HKWol4OGl6koaDf+7jcUa8CF+4fgPpVCip7t7GIwNQj0C93OWlHt4b/rGsyELH9vdHgaY2+kCI1NYWVaPpdti56LRRuM/hh+mhBS8NNQrM7/mUx+8GNcJZCbn5cj2rY/9zMDwgeStI6MMo8Vn7Z2Myw0Tguo3V4SRM4fomUDXac0qsZb39u1i28XP2t4pBo5KwFSxVw68cR2rRMmSHpv7cp1MEga1eQjvJWluAknJVtz3SUiWIrNRJhn1TVP9Fa0SrDpxK636/Mt3rmEHYhaAGPhdAxPpO/DFmiYeeejsUXZZDCUsKxhWa04scw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XOpsDAEnW8pbd5DNnj1NAoqW7weIwHdB1qr5UG3CC7g=;
 b=lpI/N/HV6yAnYo98upxGElslT0hP5IPyc92aJnJfIDpTisJTOrbj7TzqO1OdGXAXcyjbAn8FcvaZmsN8qSnOQlaIM+jecuRwWUMrObr1GXSRcLS4U4wXP0VccuNMkGafkfWBjiSKer+3dRKktmsLawQFvBFo0K7dNWrs9XwwfH5B7KS3ZPmY7F+mumlWGmbMOaQD1gYofw5uVZZ3Sty9QQa5UmoL1JOIVjN3MeG/ZI84urilbP5ipdnfMR8nttQEPw+LLzKo4P5Fokgu4qiiH6k/TBBqg/Yz8M7hVkn2vL43EOqzMAGpLtkN7SylU652sK2fBsdTtwaJ0jmo1dv65A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DM4PR11MB6214.namprd11.prod.outlook.com (2603:10b6:8:ac::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Mon, 30 Mar 2026 14:46:19 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 14:46:19 +0000
Message-ID: <ddf2b078-5f0d-41a2-8b1f-091215034d1d@intel.com>
Date: Mon, 30 Mar 2026 07:46:17 -0700
User-Agent: Mozilla Thunderbird
To: Fedor Pchelkin <pchelkin@ispras.ru>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Agalakov Daniil <ade@amicon.ru>, 
 <lvc-project@linuxtesting.org>, Roman Razov <rrv@amicon.ru>,
 Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Daniil Iskhakov
 <dish@amicon.ru>, "David S. Miller" <davem@davemloft.net>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-3-ade@amicon.ru>
 <5128e54e-4164-4cb1-8ae1-e58d6a40c005@intel.com>
 <20260325180127-711d8e8fbff840853081f11e-pchelkin@ispras>
 <3a0f74f0-7031-43e3-8268-473badd9f1fe@intel.com>
 <20260329181905-cf917b74fe3e24dd60228601-pchelkin@ispras>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260329181905-cf917b74fe3e24dd60228601-pchelkin@ispras>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0320.namprd03.prod.outlook.com
 (2603:10b6:303:dd::25) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DM4PR11MB6214:EE_
X-MS-Office365-Filtering-Correlation-Id: ab0cd896-5200-4c0a-8a63-08de8e6b1ac5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: idV1UhOAdO7YeAmLH0k6JAFpwKQdNtH6z6BXkFGc3MvVjOlRL+fM0qLZl3plF5kSr/mVD5qh32EYxDs3uDTC76utzo5m+VNwvn9uIpiZi2zXh3np6P6xfSQDTv+kQ7WEosCvgOysywJm8A/aenpPJrNsNJe1+GhiBozgxgaU4cnq8TPwrfZPvwc9Muv6nDf4GDTve/2XESAnycqzeRfd3o4rmWZ+d5NGt81TSyNXsY3IBB1kEB8DCq9z3rtvhN8cfzML8cC/HW+U3+ynXAPMO8xeeMcSms8LSyajZl/Z3ZcxR/E1GG+ndbIaATbGzzh0aAHYe3TLHaH28GFznTl+xn0k5p4dY+SKaIKPpUn2qFTO7gL3mYzvlbb5wBbhVthBwhklfH+uV/yY9Yi8R4hCPeVeOLkDKj+/tv/OTHMEuk2/o33AJr+mXBFejddGlY+HeHk2YDKzz3kNpgiNT2C/Yovc5Uf6HI3+jqc2yyX8pm3Psx31mEihlC014WqyFvQhAB3Y/G0oV4CJNfsEhSh2V7XvxoavCDa2GlHYfgFRKQmtFCMEpWMz10jWz63qJPIxxwq9zzv8Go769csPpToii+WzYEtDjtH325KBTSss+P8ROEWW9RLHdYArcd+Gd1JLF2uPtpMNdhxp/WhUezRTPl9lY/BK1GFFGr7CQ6xAoUdMrY83KvRtamhviexduxBeUYbNWRmDzdPAsJ6oGHs7IVnNMrihVq9sqlMff/i7s6A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3Q3azBPSDY5dTVlazk5TXNJL1IranhiL3NkRDA4aG9oVzFLRUZvQ0ptemty?=
 =?utf-8?B?K2MrSWJXMWNvelBJdHlLRVU5VXlsM2c0bzFaMmtxV0w1c1FGS1RVcFpLYlg3?=
 =?utf-8?B?elJ4cXovM1pNM3VOaVhBT1lCUEJxUndqdzFqVjdoeldpM3U3MG4rV25VR2pp?=
 =?utf-8?B?NDA2RDBYV3pyUTkwRFVFMU9GdGJobEVEVnEzZnZSOXE0SkJheEtCQTJnTEFi?=
 =?utf-8?B?bUo3ZS9WcFB1Q2xkdkRBMzBhTmxLdWMrYThrUjJjYmMwOUg2L052WGdJWHV2?=
 =?utf-8?B?d1oxbVp0V3c2dy93YjFGbjh5M1orbzF5dnlWSmxCMDd6UTlaTjM2SjRUY1ox?=
 =?utf-8?B?SGFWcVdsOWVXWDNqT0tXUDBiWWFtTjd5QlBCdkF4WHMxcDdRd2hTWFUzb1Ay?=
 =?utf-8?B?Yk9pU0kycHhwZVUwZTZKNHRIbzJ0Um9jR2EzNlphU2RFVk9nS3BnUlZZT0Ez?=
 =?utf-8?B?SkhsR3ZFWUY4N2tuNDdmS0VBb290K2JnVHcrSk10cUlPTlJheG8wVjhaZ1A0?=
 =?utf-8?B?Z20zdGROWVZUSkxDVXhuZVNaY1NZMW9Ka2pTSzhaRGR0NnZ0SFBnUG5hZDhN?=
 =?utf-8?B?UkZUdDhYSmxlVU1hYzk4Z2x0RzZWczNRNnlwZlg4ZitYZEdLOGJsKzdxOVJk?=
 =?utf-8?B?MVFxRnhIOGY3SzR5WGwzR0tmYXpEQXFnSHNKbjQ4Z2VtK3hwSHdxZUhDMldk?=
 =?utf-8?B?RlpIQ0R5VmJXbEg4cmpTL3ZnWDcwS1V5WU5xbVpLeTA2bmQ0ZG5qdllkL0ds?=
 =?utf-8?B?U09WemxSeG9NREJ2eFBxMDd2THdmRHZxUGxLaEFRYTJKdmFGblF4YUdOWjl0?=
 =?utf-8?B?V1Z6OVlOYll2THNDaVJTb0U4dlJPeU1uS0pES3p6Q0pGbWJpZU9BeE1ENU9n?=
 =?utf-8?B?Smx4aUhabWRqcXp3Slo0a2pkcEY0azNOc2grUkdUbmNYbFBMR0NzRnkyNW1h?=
 =?utf-8?B?RkpraGJ0UzlwbkJ1WlJhQTVCOVVTMXZMc0syejc4bkQraVNxSmdMaXJVK09I?=
 =?utf-8?B?aHNlRStUZ01WNG9lcjBveDdrWXJhY21mQXdGVFdHK2xUTTJNa25Ia1gwVHRq?=
 =?utf-8?B?LzlHN1hPb25HZlVkZ0VrcmVVdGJvN1RmUlpWYk1pN09IRkQxT3NDeVZsSC94?=
 =?utf-8?B?d1FNYytqWEJ0Nmx5N2ptZkdWWFMvZ0JkaXVXSFVqZkNpV0kvTWFCR3cvQVBu?=
 =?utf-8?B?K0hlL3FmWkdlTGRhSDhGZVZ6MTMxZ0U1T2JxbjY3OUVHVWFVd3RRUmZadUI1?=
 =?utf-8?B?b2lXSTNjQytScDdXcVVrSkUyYlFJK2pZNEpDUEFYczBSMG5oRkdiT2NxR0ZP?=
 =?utf-8?B?NmlValY3NmhHVjZIK1pKWW5WZCtzKy8rQjVLZm9hSUlJTVl0d1cwQVZhbSs5?=
 =?utf-8?B?RXZMTFkzeTA0bVRGTTBZaHBudkdJR20xaks2SzFQTDRiTWp0UFpManZ1Z1V3?=
 =?utf-8?B?b00wRkNYaGxrNDk2ZUgwWTd3aG5VWi9mNzI0VkNidHMrSUVuTk0wcUVkd0k3?=
 =?utf-8?B?d0xpcTRSV0dubno5d1VMNU9nZUNRSVdJSG1tQWh5Y24vYTdpdXBqc3V6ZG9s?=
 =?utf-8?B?RE54b2VLSWZZUXRGbTVyeGF0TzBYeEx1S2ttU2FOMmlxbDVFZzJmOG5nenFG?=
 =?utf-8?B?bjJZb3ZvdTlZcUdYMkFDVGh5ZjU3elV4OEc3VnR4OERQWlQ2UVdXWlhuUDVR?=
 =?utf-8?B?TGNOcE5KMXl5eVBZeUJPck5FeUxFVnVRVEVRSlEzeGhQT1lVNS81K3pNbVJr?=
 =?utf-8?B?KzhqMFczLzZwRHlEeitxNFRzSWJOT2VoQlVXZGVWTmM4clVWNFdXclVINlZY?=
 =?utf-8?B?dlNwVjNCSjhNbmlScHhMeTg3V05WclYxcHBFSDZBNlVBdGYvcHJ2RkZlTDJH?=
 =?utf-8?B?V2RCYkp6bloyWldlYllSdnNuNm84cmNnby9NL0QwSVpZQ1pkZkJ5Wm9yakxY?=
 =?utf-8?B?cy9HOTBVRjl5TGpEd3NBai84VWVzQVlBUy9IQnZBY3dQQTlLdmYvclJRVTJB?=
 =?utf-8?B?eEhabExFWDdnZ2ZUZzUzam9tLzJ1c3FxR0FETzBrNVlIUlE4OXNTZFV0aWZ4?=
 =?utf-8?B?Y1M1L3luNXdhZXZobHpuRDlJTkZDazdGR3hjMWtUc0VJSHZBeGJXYXBkdEZK?=
 =?utf-8?B?R3pJYzY4QUhhenpqUkFQaTA4bXJPRHZEWE1MaUJMbkl3VlkrTU1DZ0hhUmcr?=
 =?utf-8?B?SGlucnQ4dS94N2VXeU9HUkpXWXhFT0djOUZNK0pJKzUrZWh6VWlVVVdJcWFm?=
 =?utf-8?B?Q3VOVEVRYVhsVDROb1plbCs4cm1VWWVQTndLMnB2QkdjQlVuZVJhR1BEb0p6?=
 =?utf-8?B?VHM0SnU2T3BXQk9XUWZjZXMxdkh3SFNLaitTUGRwa3ozbnBvTVcyZz09?=
X-Exchange-RoutingPolicyChecked: kL56CPTjKpRcVd7Dsgl+OcNcW4olyDeNQ/Qh5T2QWhYVjBuhlYo8ffbB1jsn0rxi9uMybeXd9PtHk8t23+yaMy9MmMUu5xrDrrtintmSymwPLIuocRB1P7Zz3MPATfm9IkwciBHrQFrL7tLnb5lv55rmCBOJCs5iwhYyi53oPP6oa8ocEBhN5gbxDuWxgSvBh5HZA2lZaHgRI6kkM4/FS3uEBwgYp8Fy7QpczCc5O/fUHW42p1pQ0CMxWOYZgsv2fCZPdTXNwhbdnKjAMqtZbuV/Js9Jv8LpJaSsSASs1r1/MOemU+Wxb7MAvP6JIhkHayQO/0kJmiWCkB2W4n977w==
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0cd896-5200-4c0a-8a63-08de8e6b1ac5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 14:46:19.6755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dx+04yrQv0IwWS9tz4FE/EclHWxiUzSdYw11vN5OkwHAIDQNs93oUi0AitWP1Z4UZWic5yF05U72DWZbg6MaSv/InxMh65CnE2DG9Q4siXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774881987; x=1806417987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=843NedVYVwoiCzx8sHhRMy0BPr8SSA9v853YHyQWiL8=;
 b=LPM9xCWgvOnxVdKMb5eUUSLwCF7Odx5w1JFjn5HUbvy+S1Llq3mFg1iF
 u/I0GdvVp6R6c5sx0JLivPq0Bg78lxmenxzepMNTuzt8+BWZbZMy5MU3w
 +4e0F7bwRpJuEvyuQwb87F+Z5dX2IKi4n+zKfcQyQjm21POM0bxHyYcby
 zrsV/051FKpUd6tHXf/CeagvQ2afgV6tsWMoxTN+5kGPR8TLama8qawFD
 YKAz1U+hhizXonv7zfbLhyU9QET53weyFCRZpSk5lDspVmbWt1XLq1+mS
 feqdi0pfRC7G5XwTJ36LL5T2MbvFDmsavf2cePBe4gp7qeywoCu5ioVGH
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LPM9xCWg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] e1000: fix endianness
 conversion of uninitialized words
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
	FORGED_RECIPIENTS(0.00)[m:pchelkin@ispras.ru,m:anthony.l.nguyen@intel.com,m:ade@amicon.ru,m:lvc-project@linuxtesting.org,m:rrv@amicon.ru,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:dish@amicon.ru,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: 8AA5A35D1E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/29/2026 9:02 AM, Fedor Pchelkin wrote:
> On Wed, 25. Mar 16:01, Jacob Keller wrote:
>> On 3/25/2026 8:19 AM, Fedor Pchelkin wrote:
>>> Hi,
>>>
>>> On Tue, 24. Mar 16:26, Tony Nguyen wrote:
> Thanks for the feedback.  I see Daniil has already sent some newer
> versions targeting -next.  The problem in question is rather obscure about
> severity of its consequences but spending some time on investigating this
> now I'm more inclined to think there should be no opportunity for UB here
> and it's okay to process the patch like Tony suggested..

Makes sense. Thanks for the careful review either way!

Regards,
Jake
