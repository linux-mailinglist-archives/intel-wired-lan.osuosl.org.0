Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AD5A9098D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 19:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7979181E5A;
	Wed, 16 Apr 2025 17:03:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AovvS7zx0Y3z; Wed, 16 Apr 2025 17:03:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B122C81F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744823036;
	bh=9vDnVYEQcqQ8Hd5qrkRCEW2Q/DQlyDzHU7zLEgD6x2I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mCI4S7wfpewOYBF2Mq9SlTbdW2XEE9p+SnO/SLqgT8yWIzkEzOWOTcGu57tfiKv05
	 OU97tS7AwCuB31Nqb4xahAVMhfS5mTol6fadkf4xAGYu9BEGgGwjPYm0EF6+0gn9m1
	 zW5T98Yu+PQy72klnQkpWUg2XuJBKKs6c5Ay1t3IlibxiF3cau0bxZXi8hRe7U0Q1+
	 qBXjA4BN/Gdb1nolT2Iplq7GG5+fzCqfT4l6xsjaC40SuI9egkBQ89JRC49apHswEW
	 +w4aWfnQ79ronDxNtW7WnzfOGOE7sFrF7fPmIXCjJxqoxGcI89M50QFKQFFmcq9LB6
	 Q/N5vuXnRzvsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B122C81F7B;
	Wed, 16 Apr 2025 17:03:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 205841F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 17:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BC8C417AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 17:03:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id frbE3IOAqWV4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 17:03:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 52440411B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52440411B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52440411B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 17:03:53 +0000 (UTC)
X-CSE-ConnectionGUID: V5p4LIDgR1eMovBaCEkqrw==
X-CSE-MsgGUID: xmk20YVkSNKqE2Ido81iaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57380496"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="57380496"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 10:03:53 -0700
X-CSE-ConnectionGUID: MY7RM7VMQKSsAyoKBLuCWA==
X-CSE-MsgGUID: xwsg4ZGiTNiPXdhihXqD5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130509776"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 10:03:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 10:03:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 10:03:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 10:03:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RlQRHn/Y1TvOMbMh4jJGlL4xD+JeAXp6JtMRIf5ojq3JBuWWBkoMSAX2zkuacDLjD3Evc5yfLO9ipmjz7zoznsAyQyBNtnqFav5Tajqp76uCGYUbmC/InQsTDghdfuDCSVIAStOu1isCawsRHjnHFC4CHdIO6O0IRWWhubeF8ojB/l58FOuUoCSOWw2VUI1SZrZQ66v82530jWE/XASQyMkn+hPoAQlmLnNPi3efitXRZuAA4zkiJVZI7uJrU8/sMYF0dqqXnITFb5WMf6sHdrm5Pc7FIEQc3jPTB7jaU5LWHt9jaH/7a0dj6mOSFvHanglT12m+EH14buDc/Ww2dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9vDnVYEQcqQ8Hd5qrkRCEW2Q/DQlyDzHU7zLEgD6x2I=;
 b=h24KmxQc2Ugo7N02Nxg0dRbf7Zm5cPd1f3WQp60RMRemTvddK+3ztNDO4Kf5c411rRRt47JtpO0Hn+yyp/n+O4RRwCZe+C6Wk6eAcE97dNkBC/NK3HWMvyvhePoZW8j2HxNWJAGGMroojdg3qNLnZCfeYDWYtME1K9ZS6TSSPcelW8qGgtmSNG7IuXJAe/D4RsjSJpgO79lbOHHpg0eOmDHsB6cOvZ/KmV63iiCFxsPkE6v67ayH+SKwi9bOSlNsi1Amf3WeGJGGMgcZ4aFXVohxJSP2GVtdgE9sbgvhJG3LNvKIxvHoxx+yB9EI20dM4hyBpE7/cp4hXKjCib0xwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Wed, 16 Apr
 2025 17:03:49 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%3]) with mapi id 15.20.8632.035; Wed, 16 Apr 2025
 17:03:49 +0000
Message-ID: <a83efcaa-9b01-4efb-9ac0-42f5db42a576@intel.com>
Date: Wed, 16 Apr 2025 10:03:45 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Madhu Chittim
 <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250410115225.59462-1-larysa.zaremba@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20250410115225.59462-1-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0225.namprd04.prod.outlook.com
 (2603:10b6:303:87::20) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|DM4PR11MB5279:EE_
X-MS-Office365-Filtering-Correlation-Id: 27fb7889-c268-40f7-fe55-08dd7d08a831
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGJWQUhaTFRVRVU3SDJqSndCU1QzUWNyVjZQYkl6Z2NSOVljbUltTE1jTVVm?=
 =?utf-8?B?UVk1V1FPNnV3R21qZUI5NnAvdGhRR1pHRklCb1lmb1dZWFlLa3h3Q3B6NU9x?=
 =?utf-8?B?NWNFWk1uNDFraVRwa1VrU1Z2WVczeGZQUk8wamx4OHVQbUpmVVh1Skt6NVNQ?=
 =?utf-8?B?dXpzWmlBajF0cWdtNlc4NTdHZUpmc3IwNmQyTFNTR1kzWFBpTlRPaWJ1Z1Jm?=
 =?utf-8?B?dWh4TTRuN2ZFRG12RG9IUmZoNWxvYmRJSXZFNlRsZ0VPUkp6OG1RNFNJUVA3?=
 =?utf-8?B?SEtQZUJ4T01sZmZYQWV5SS9FK05TYjVyM1dzeGtsS2xjMnZMeDlhZ0dlUHhy?=
 =?utf-8?B?RFRvczNxYlcxelZlcElySGxDSDJPWUVhNXRJcXlRaTZzMXJHR2ZXTVJlUmVu?=
 =?utf-8?B?OEkyN3FNaU5uMXljMzR0UnNsZzFUbzRwTUJkMlQ5azc2dEk2cmpBZkxOR0gr?=
 =?utf-8?B?ZURwYkUvZFhyZ2x1WUFOQzdwUXExNjh1dUNtemJ2TGhBcXNhWkwxR0IvVEJT?=
 =?utf-8?B?dFNIa0VLUWpKSGp6UmRDeisrR2o2NEM1UXh2Y3dVa2JuREhBSC90VDdyaUd1?=
 =?utf-8?B?dE84ZXBvbll1VTNoUkxLTDJoOW5VWGY5cXpxZnh6Z21pQUNZZTZCTHVBMWJQ?=
 =?utf-8?B?U1BPNXM3aHJiSjhjem50T2VnbjNaOVZPeHdEaldkdGllZmR6dTdFcVg2VnI4?=
 =?utf-8?B?ZGRzWWxseFFEZU5EL204T0lQYitiR2k0YTNrK2ZpRXhYQmJIME5lUTF6VWw3?=
 =?utf-8?B?dlV5Sy9WcEhkeDlJU2VpNWpucktRYjZZZ0JVdzQvc0oxbFVQcXpucHN4ZDdj?=
 =?utf-8?B?d2sycytBVVRPeE5Xckk3U2FhZWpsS1IrdWdDMzRCcVJhakVqRVV0dmdLdHNO?=
 =?utf-8?B?S0puelpQdWRmME05Slk5dmc2My82MlpUbGZUaXo0ait5TEk0VVVyd0NaNE81?=
 =?utf-8?B?VnIrek5iRVJLNk1JdkNVUlFZcTloUTJWb2xyM2lVSDU0L1BVRkV2MS94RTJp?=
 =?utf-8?B?c1lyanovZ2VtK3dJZGNzdE41Q2FwOTZhRFpuNWtVam9ieTFFRWwvVk8rOHJn?=
 =?utf-8?B?ZmtsUytvTldqZlV3cWhPOU50UHR2ZHhqb1lxUXNoS0Q4YjB4RFVpMXRHeFJk?=
 =?utf-8?B?cnZ6bzJmMXByYno5bkNVS3Vncll3UVhmRXZsVG9IeFNvL1poekJXdDFaMWJ5?=
 =?utf-8?B?SjJLMlVySEZFNHpSMFh1cldaR3Rwd0llT2JKajVsOHpTSFIvOHVpVk80blpB?=
 =?utf-8?B?eHd3WlV5dnAwdWY2dUZHYm5sWHhaSy9vSEVPVC9LdkkyY0pOTlpYeVl5S05S?=
 =?utf-8?B?V3hPS3ZiRmo2QzFESGd6SEZHVmlGRFFJRWJFYmdEOU9BTXhiS2ZUc3F6bU1j?=
 =?utf-8?B?eSsyTXpuREUyRmhXSDhxaU9qMjJiTzlqRFJhcExtVEw2dlQzQUtZRU80VC9p?=
 =?utf-8?B?cTRuc0tQUGdXM2JnK3hKSEVpQmdKSFdPWXFkcWF3YTdOMzVFT05Ybjg4V25S?=
 =?utf-8?B?aytGUUhGRVdxMjBFbHM0cXV5Sy9SK0J0R1BTbUFReGF1ZVFEOW56SGp4TjIw?=
 =?utf-8?B?QXQ0WmV4KzVoN3VSVlg1bnIvamt6R3F0UmdWZFcrWlBtODQ2L3JIQnpmajNH?=
 =?utf-8?B?WjZCK3FNRXNHVDJMTHkySDNiNEw2V044clVVT1krRkhyTENXck13L1F4amJN?=
 =?utf-8?B?Vy9ac2wzYnF6T3pJcFJUekZoV0Jtc1ZSNGJGZTRzL0NLTGdwenlMWTI3RUcy?=
 =?utf-8?B?MUtsUSs0QkRMVXhDTnI0KzQwZEZQMVN4QlIzU2R1RnB3eXArVkI0NmZmTHV5?=
 =?utf-8?B?WnBhSUZKcUZ0eDlQekZSek1ic2EyTGRtVDF1TGx3L0I1OU1WUWx2bHZpMWwz?=
 =?utf-8?B?emJHcGVJSFRodjhYWDdpcUdGUmV0TjVWb0I3MVNmNEVqTDNuRlFmY0gzUWgy?=
 =?utf-8?Q?H+soQ7QUS3c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVlNRm1wdDNON1VZYUZHLzlCeUFGMHduNmlHOXBzdDlaeTMrNFpoSndrWm4x?=
 =?utf-8?B?QTJTQ2hkSmNsMkFpMWFoZXJ6SVYrOGJqdldTZStDUGhHUERRQmtUY1pKL29s?=
 =?utf-8?B?b2QwWnNsMUxJMkRyaFNNMHZYY21QMFdCQjNGblc2eWdIMVdvZjYxbFVOYzNZ?=
 =?utf-8?B?M2NuaHVBMTY1Z01hVHIvaWxjZytLbUpRK2hnOUd4eVpoaVNSbWtTZDJSV2dV?=
 =?utf-8?B?ZC92R21hZ2lOc25FQXUvbElCRU1vNEUwc2NCQnArTSs4d0NEbGpHSFphQXpM?=
 =?utf-8?B?cVdsc3A5VnZKZy81RkNWNWRnVndxMnFYZE5TMEtqdTlGSHkvSi9yZW5hT3hv?=
 =?utf-8?B?aWZ0clR1dExLcXNEejF4L1drS2htWldnSTVPSjlYNnZtNHIycGhSSWM1L0Ju?=
 =?utf-8?B?UW5QeFJlamJiNkU2SStpNjJJbnQ0VkFRVmJlME43Wm1CSjYrMVVLVXVVQ1FC?=
 =?utf-8?B?aDhiWTZ3VUkrTlo2bFgwNDh0MkhEcFdvd3FMSUFUaVNES29SZGdaVGlQeG5u?=
 =?utf-8?B?dXIzRGxZTk5Yb3ByOFBOZXZKZVJ3eklXaUdrT1FSV3RhMWVjT3RMS2lSdmh6?=
 =?utf-8?B?bVJjbkJadzNRTm1BeVB0Q0NmVkF5ODZSeHEvQTI1K2RlZnhrS2kwK05RZUpa?=
 =?utf-8?B?MEYwazlKWE1SM001VDlwUWZNU2k4eXdKN0hjTHlrTlRHVUt4b2tWVjFka1Q1?=
 =?utf-8?B?TnQvK0pFaUJ2MTdFRDR3MXNPSmdaUnhIdjBadTEwNkxFNE5TVW04c2NXMUli?=
 =?utf-8?B?emdqazEvUkRXZnV4Tm9OMEhjNmo4alNLTjliNW5mbFVIQ1h0UG5OVVMvazhB?=
 =?utf-8?B?VmVzSVBzakZHb3FoVUdqS2hHT1VLeEVCNzhCRXZmbFVNcTBZbUpWUVBYL2p4?=
 =?utf-8?B?RmVuSXBOZytraFJKWWpuT3RuSHFaSTVpWTFiZlJvaGs0Uk9uY3NNaWU3NEQ3?=
 =?utf-8?B?RjNXWHpWOWp2bFQvRk1meDlNTHNwN0hEamczSjB5SGxlcU9Nbk0vdHJSQzA4?=
 =?utf-8?B?ZmozRjBhZE5jWC9sQzllT1FkM2Z1anR2U2VxV0dUUTFUVi8za3lHelRCUjJv?=
 =?utf-8?B?bGhhdktYaFFUK0kwOGxiNmJyZ1NJdXJkYWhmcU5naFRmditLd2VnSWdIU2hM?=
 =?utf-8?B?QWpqTjdSMEMyajk5bFZjM05DUENqRzRJV0VRNnFnTFJIVWhGV2ZJTno2K1Rt?=
 =?utf-8?B?WXpFc1lFTFNyOG5KdVVtYkJEL3JFUDBaemUycms2cGhKeGROc2piekdMd1g3?=
 =?utf-8?B?ckFpTW5sb2djTHBRcDVaQXUzRUxxQURkSndyMG5LN3JINHE2bGR1YXFENnFZ?=
 =?utf-8?B?bGVtZ1AvVDhqT042aGZPeTZnT0xvczR5SWw1OEFmaTd3U0sxSkIweVhROURN?=
 =?utf-8?B?WUVOeE5qUFo4d2RUejZuQ0RhdjdjVkVmZXRFZ25pSk1jS2RsY3JmM3Z2alVa?=
 =?utf-8?B?b2srVjlKWnU0NjNxeU1Od1VTNmpma01xbWMvMTU4a040eFBmaCs1Q1ZoUFQv?=
 =?utf-8?B?aGU5S2lqc0NPSmhrQ0MxdXBRZEJKdGl1YVMyV1FST2VOR1BTTEdMVFhheHpY?=
 =?utf-8?B?eExHWTZQQmR5STdaVlpFaEpVZHhrWHFhVyt0ZlJsRFFCU0l3amdQZS9tZUdo?=
 =?utf-8?B?eWtMVkJnbnhXZ200T2MxbjR2R0wyZlMwSEkwK2xCblRKL1cyaStlaDFwOER3?=
 =?utf-8?B?dnd5K3JDVUNxV0hrb0hjTW1ocXNVRG04dGUvRnk5NUE1NkRzdW5qUm1EK25W?=
 =?utf-8?B?OVZzYzloRStDUUp6Um5zQVpkc3U3Q0VtQW1QaFlvRDlTM2tpbXhWNkUvamVU?=
 =?utf-8?B?KzZnZXM1VWltamFnd2dlcHExRk10UnM1OWd6OUpMSDc4TjhRSktxMVNXTi9Y?=
 =?utf-8?B?aThPMDhwbVpSTy9VcXVsNTczc3Y1L0RibERpSXFrMEVCTXB3em9NdGVuS0E2?=
 =?utf-8?B?MVdDV25GTnhnOTA1Z3lRQ0U1TjIxdHc0STdxSC9VeDFGNmJMYlcyeXkrbDRF?=
 =?utf-8?B?Q3FWYzFCWW5nVWxyWFp2TTZsTVdwL1RZZGVTMGdpbkNia3FqN013bDcvUnVD?=
 =?utf-8?B?RlNvYUN0L2VTSUxNd1R1SlZGbjFyT0E4ejlXd0p1UEdRdVR6SDJ3N21FWmg0?=
 =?utf-8?B?S0NqQm9KSHo4S0pxM3RBRVB6UmlQaUFsenJFbTJ2Nk53MHhXU0VPc0tHajFE?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27fb7889-c268-40f7-fe55-08dd7d08a831
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 17:03:49.4312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: URA+x3xcngbMHT7C/IIJxQ4Us8O46KsIOdIpFy7L69lYNqGqJ7mX//wzm8KhIAryd5ljIp9nks6tWetCwg4hbQzg9gw+RX9XmV5mCjwYWC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744823034; x=1776359034;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yXQF/mLfntrA7qoeK2QV9peJQ2o7DtrTJ2Tz6YVNvss=;
 b=n2YQtRjKY3hiIs//cwP/bLFuOFnXaqDuc0RqXdDTA6nTnLAAp+0512yN
 FhbkorRfPGWiftUjNVftcWcOxt/npRnusRz7Jw7L0H9Svcw81tuxkBd/a
 c3HLHWK584OFPF3SYaVU+2Wqiaawrxnv9PraOtkesJ3rDJQVNs56RGOjk
 RRgPdq6scwGrtF2C+176i2ooeyeGnYJSiwWuOV5bpVmts5vaUiMy5IoeK
 k4ehVaN33zfzd9rKHa9kgxIols05isSwemaASAwcD80wamMA71EM6tTV9
 yuvCQ5/31gzlQQfXkY15IecLPSDFkVK2HvBr8OLXMVBtz/6gaFKyW9vrf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n2YQtRjK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
 reset
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



On 4/10/2025 4:52 AM, Larysa Zaremba wrote:
> Before the referenced commit, the shutdown just called idpf_remove(),
> this way IDPF_REMOVE_IN_PROG was protecting us from the serv_task
> rescheduling reset. Without this flag set the shutdown process is
> vulnerable to HW reset or any other triggering conditions (such as
> default mailbox being destroyed).
> 
> When one of conditions checked in idpf_service_task becomes true,
> vc_event_task can be rescheduled during shutdown, this leads to accessing
> freed memory e.g. idpf_req_rel_vector_indexes() trying to read
> vport->q_vector_idxs. This in turn causes the system to become defunct
> during e.g. systemctl kexec.
> 
> Considering using IDPF_REMOVE_IN_PROG would lead to more heavy shutdown
> process, instead just cancel the serv_task before cancelling
> adapter->serv_task before cancelling adapter->vc_event_task to ensure that
> reset will not be scheduled while we are doing a shutdown.
> 
> Fixes: 4c9106f4906a ("idpf: fix adapter NULL pointer dereference on reboot")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index bec4a02c5373..b35713036a54 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -89,6 +89,7 @@ static void idpf_shutdown(struct pci_dev *pdev)
>   {
>   	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
>   
> +	cancel_delayed_work_sync(&adapter->serv_task);
>   	cancel_delayed_work_sync(&adapter->vc_event_task);
>   	idpf_vc_core_deinit(adapter);
>   	idpf_deinit_dflt_mbx(adapter);

Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
