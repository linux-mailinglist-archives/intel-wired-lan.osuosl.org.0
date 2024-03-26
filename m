Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FBE88C1ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 13:20:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BC5E40778;
	Tue, 26 Mar 2024 12:20:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SF52FRGyjWgw; Tue, 26 Mar 2024 12:20:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E81B740698
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711455652;
	bh=Z9h4iMD2BW1F+KTZ7AKY40Bl/Z+lsKYNZg0trNssKyA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ISm/qWJeTZr22+uH+Oo0zTbkaN8vsOCOTOf+kxW7RwwTdWF+nsF35a8rvFUM78jYL
	 Fim8waiA44DuIBkPYMzDl5M43uh2+YsymIo5vwns7/7P8AHRaBODxxqQ9kUbe0trRK
	 WylYqGBSuJUB1wIj7RlDzSFAGy7tDogDqU985UB2xcI2/Im5ZmzJ7HgPWtuq46yN6C
	 b6ykYgYa9Z7/dOIi9AEkQ4+DCKOk9wtCMY76yDWE2WkY7PZRW9empU2dtmGbNAsped
	 TCYZ+x+PVg4Pv14JgXCTuiyBOtEZBUM8SiVJUgetBEfBpJ84oZe3jghjWmoe6CnZs/
	 yX4GhogY0Xyhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E81B740698;
	Tue, 26 Mar 2024 12:20:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B78231BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A13A340540
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S9jhpXaOuP05 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 12:20:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 63F894040B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63F894040B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63F894040B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:20:48 +0000 (UTC)
X-CSE-ConnectionGUID: f8233v1lTRWSfLcDc62R6g==
X-CSE-MsgGUID: JL86rGmuRCGareCkmp9hmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17134078"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="17134078"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20663540"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 05:20:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 05:20:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 05:20:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 05:20:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qx215VxTmgNnjeTRvFyAStOftuLPWEjtzxVp8DKaFcQ4LHSMv+WlBOmKhBSIrJ2zJc5XAjp5Kxwotd9sTZIhtOmdVZ270R0AHSuMbsQODG6zhu+UZSV5OpZxsAKUYuYi+hm5biqH1viHZg4EFReuWy42MmDRl5df/AGWf1/edHkfhAUFqLljEPsnzuRcewNpAu5qLJtSpncW9dLECtVxBRAU27F4DbK0g8E2sSlSJ0/UBDKFtrXIjg/Qi4u+di1UDNQCZsoPUp4xLJl/y77V2qfnNDcKlVQH1IEvUceFqcSsfXjozesdxUz7FHfx+789GkSUARM+NX7w09wrvWWuWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z9h4iMD2BW1F+KTZ7AKY40Bl/Z+lsKYNZg0trNssKyA=;
 b=YrD57VPXT7t6iFTZzkW9IE7QvoZpA4g8INlHzEcO1wff6S2bSIE/Ly7wmu1/K8s0f9nSjBgosZv+dX/2Hg8Xey+S+iF88aPXxf/7bUDSDIN5agyNiREos13IkNR5lTz89QaHlzul7LqvLBBGVWtwsBQzDbX6LtDaGlGYVWuqdzYEhtKuM2Swd9rmm+Q6OfUJN2vHxznK+nT1rVA2VTsHbjE26WNsTjvp5QWrdhpGXXrto0/gobLxU6He0pmiVYir1MGwKFTZm0hcRARIt57YgXzZPZ7R6k0mT/xqofuOYA7zolG4XxCYLMUWjM194S5mtKd6a5mXzd2f9H18Gxl4rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Tue, 26 Mar
 2024 12:20:36 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 12:20:36 +0000
Message-ID: <c4d03bf6-feab-40cd-a9f7-b31e8ff60a69@intel.com>
Date: Tue, 26 Mar 2024 13:20:28 +0100
User-Agent: Mozilla Thunderbird
To: Yury Norov <yury.norov@gmail.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-18-aleksander.lobakin@intel.com>
 <Zd9hmZaMIcip4ndA@yury-ThinkPad>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <Zd9hmZaMIcip4ndA@yury-ThinkPad>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::22) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CY5PR11MB6365:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0/7ByZmecA38ZI22VbJPtQ42aI+P9I22jMzlHawVQbJLK0OTRRGgCSbLXMvUvLnvTgPrejHS6R4pGrwJiFv87O7VTGYFbtNLw1gq4xU4O/C0xPG70EpCT/xG6qVpONCVpjgQGxN0Kd8xxiVKpSrZnJpOe57H2U4ib5GuuLrIHxRIuqQ/oR8kALY7Hz1O0iRz02FDl3OQLRkj1BUaqKCda/A6bf+unWlQN768FS7nujCXfVqoib+fuYJrSiV/e0zOffZjlO+qefMot7y64bTy3GwsYN5n3RVlGZK6ixF7l0OWIzTWnh/of4+QSlwtzANap6AtLsUD4OQox7JWUnGAsMp4mtFDcEYBuRDzagkfkb7NPIkV5/zHm1abttpMQ8+sI2v8pBNvQ9h2yZro1uMErImxxs/Iv9GjohQ5A+JQtVFIb55bNs0LNKZslk/9krkIscePJBxJ9GzK60G+QV+lzymazwboXkRdKzfEiSqNI2Jw4MjfbiGgJf2GglPFAY1+/KoGTYeTHoSO/yUlCCZm6Sc0CCUR2lW2lHCsMUvATOT8k6MwqruW+IQ9kW7PsWL+j/1va7oBuczScU+jT4g0GljeJ7jv3znnSyooGMlvOfiWa1t01tfRg3obwhobNWguYekzCQmEijR7c+MMd1Ysfdx3aBgsSfXjOuPPk25ATGY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2FlVitkTXBIRmhXaGtMS1VpV0dBRGY3MzR2UTJkekNIQ0JDUFNEMmE1S1Na?=
 =?utf-8?B?NDVhZHRLelp4WEVJNFlGL2VKdm5ENGVnNHdWM0N1YnRUM09xb1BCNVQvRWly?=
 =?utf-8?B?UTZNdDlVUitHUkV2SUZHUTFiNXhCTS9TWHcvSjJrYnkrMlVVWDhhNkNoTE1j?=
 =?utf-8?B?VTZPb0ExYzE0cXM4L1hTNER6SFVRS08zMGRhME83RjEwZ04wWDFXZkw3ZERY?=
 =?utf-8?B?NkVZalV2dmNMRXU4TVNjRUh3ekJ0Q214b2JuQ2wzTVJraGdkbExyNE5MWHpE?=
 =?utf-8?B?Z0gzN3V2MWZCdHUvV0lHNlhwWDB1T1p0WmxEdXdqTTJzNXhVV1kzOUFUSnpH?=
 =?utf-8?B?L2N4QmJ6YkorOTVpa3VaaTVSN0NjVXNkclYwL0ZXem1KZlpNRE53VTlsYjcw?=
 =?utf-8?B?SXpreEJxakNOTUcxZ3FuQ2o1bnFYQmwva2JOSjduUDN1WGpmVlpqOW9Nbk9W?=
 =?utf-8?B?L24xeWp4WUtWbVVpVUhBTjdSdUxQWU9RQUpUWEtFelQwdEM1bzhXTEU4VWhG?=
 =?utf-8?B?QWFsYmN1NFZkRnF3TWlXVXhzUGlrWms3UWpRNkVFN2laVHVmWlhFQ0tlT29w?=
 =?utf-8?B?MGxPM1IxUjYySlRNazhLRXBRckJIeTIzcEJCbkwyOEg3Q1dtS1JCampQRjhy?=
 =?utf-8?B?WXR5bW5TNnRPWnk4MGxzem9YNlI2RUNPSzNaenhkNDVWQk95UlZHSk9hQ2Jp?=
 =?utf-8?B?dU9oMGRKb1NKeWdtOTZmL1ltK0FPQTVPVlZrUW5HM0VwUjZDdDl3YWtPZDdD?=
 =?utf-8?B?SThEYjVOckVKZjdjam5FWWZ2LzhmTGs4OEx6NW9iYktVNzZIYUF1c2dDcU5M?=
 =?utf-8?B?OGxaVmpwVy9ld2lBOVhNNWRsd2FJMHJTZWNpQ3FKWDE3ZjdyRjdDZkNmQ1Nt?=
 =?utf-8?B?OTBDYlJNZjhBU3ROSC91NkR1aXNkSDdwOVVRZFo5bFBGRGsxTEoyemhYMGFT?=
 =?utf-8?B?R3ZseldxaWY0VzVFRlZHbWRybnpveXRaU0E0Rmk4Ylp6OVBSaC9KTkFuWFI0?=
 =?utf-8?B?YXdoTldnT3BPNmk4L2FURWdveU5JNkQ1eDA0VEVKOUNJK2xRaFgrWEIvUklx?=
 =?utf-8?B?VjRkWjBLMDBaM2Z1azkzUWFHZzVJL3RJN3dzSklDTENQcjBKQjFJUDlhdElm?=
 =?utf-8?B?dHMrc0Q4SGxMa3FKajJzbDJDa0FyeE5ucDdFekJJNkpHNkRKRzVsN0hOQk9w?=
 =?utf-8?B?NDF2YjRJdUFOekJnOTVpY2QyT2xHZDI4YmFiSEhucU1YM3JaTCtrZTViSXhu?=
 =?utf-8?B?aVl2QzhEZXB6UkhiSW53VXpEd0VOZ2dxblQ2TGpKeVZGd3Rwd1dpamRNWlhp?=
 =?utf-8?B?aDFKZVNiL0dreEZ4NXlrRFo2SXduOHduVVNhTWdJTEoxU052M2VtVjRjMEc1?=
 =?utf-8?B?K2VoTXJ5Q1pxZHR5REovTGFkOVVveDhVZXdrZUZaMTNNdnJRTHRxYldaRTBX?=
 =?utf-8?B?RnZtUnRIbUJtT2svdUs5NW5Ob3BVSjRnVzdid0RrMGVxTnVZcDhVTG9WZHF3?=
 =?utf-8?B?MTVCVWkxRWs2ZGZsbURmZmZmUERXZUdJc09OdUJsdnFEeDBNaFFmODdlemIz?=
 =?utf-8?B?a3ZGWkMxMzZOemYxV3pwVExwWWprWXIvdjIxMXBabUVQZGEwa0lKbEFRT2VP?=
 =?utf-8?B?c0pwZnBkNGVaKzB3NFROSXphZWt1NUkzZ1RrcWdmSUhlS0syVUk1TUkzMElL?=
 =?utf-8?B?QnZvbHVzTFFTZFRwODNyZ1V6eEUyV2I0M2VLNmpWcHRFa3JXVTFDemN2S0ZS?=
 =?utf-8?B?TWtmNzMzZHdGSS9lMG5GTjFmdmFTSzFpNHZkYW5wenlCMm9aOUFvWWgxaCtT?=
 =?utf-8?B?d2h4Q3lpSnZYVkU5ak95aTBSL0VnNUU3bVVIWkJrOEdrTGpLMXhLZDR3eGhk?=
 =?utf-8?B?RkU5ZE5ZVStraWpMU29NaWV0Nk9tVmNxTDJGWGVDZWpzK2lYeG1GbFhjd3Va?=
 =?utf-8?B?L0RyUWlGR0MzRS9nZW5Jc0dsOEk1ajV3K1AvS1JHbzFSSnNYL2FHRVpZQitr?=
 =?utf-8?B?K0VnS1BBZkhrZnlPV09LOU5YRUhjRy9TYzlCV05TeURLUm9qL3hSNThLRGdm?=
 =?utf-8?B?d3g4NVZrTTBEc0pkYUxybkY5Y0I0QU1YdVFTU25NVFhKYVBESEI0R2x3bkFL?=
 =?utf-8?B?dklsUGZQQlBzWEtkM2tjQktZQnoxK0tTckdSMXdXN04vakdwMHJwTjRTNmZO?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ddcdc94-0892-4944-6a88-08dc4d8f23ef
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 12:20:36.0801 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: itRBogoD2uLVRkVGOkLo2TOCl/DAoZQZr/HNrfbJ2b4cT5eWW/0YeRmjo0HItJCodiSFz60Ab3ZYGQ2NqXZMymg18lrbxwIVsmovVUNZx/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711455648; x=1742991648;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iPFYSVHJcFLTCXXN+kc5VrPkNfwtH48278R6LmUyfPA=;
 b=b3EYvo65ilKu7FcA4FvDz3iQK1IC8PYl5s+bsDFgtWVXxBJs9HL1Cbae
 L1tnt7AW3IMnhqmt0vUo90KUOVutrhWxnI9z16z1k85SjLe89aCPfZHb9
 xoNVmmbEbBLn4UTgR/VytpxMbuHkscsC8XqYPimx9roZKZIzr0FBDcfVX
 6LlePNCN6Y5ngPp1EySA/CzlGJgkBYC4iWx6KXc8I+3ECojWeh6lOXqKW
 yr18KgeASpRrMX5nfLOxIcG4OeTLttVqmTSMdGOZG7KuqdaoBmTbPo5xs
 H101ssKUJEBcEdEdUf0mrlOlA9UlWyixdvNoyPvI3uXqr5/3MeZCOshdJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b3EYvo65
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 17/21] lib/bitmap: add
 tests for IP tunnel flags conversion helpers
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 linux-kernel@vger.kernel.org, Jiri Pirko <jiri@resnulli.us>,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yury Norov <yury.norov@gmail.com>
Date: Wed, 28 Feb 2024 08:38:49 -0800

> On Thu, Feb 01, 2024 at 01:22:12PM +0100, Alexander Lobakin wrote:
>> Now that there are helpers for converting IP tunnel flags between the
>> old __be16 format and the bitmap format, make sure they work as expected
>> by adding a couple of tests to the bitmap testing suite. The helpers are
>> all inline, so no dependencies on the related CONFIG_* (or a standalone
>> module) are needed.
>>
>> Cover three possible cases:
>>
>> 1. No bits past BIT(15) are set, VTI/SIT bits are not set. This
>>    conversion is almost a direct assignment.
>> 2. No bits past BIT(15) are set, but VTI/SIT bit is set. During the
>>    conversion, it must be transformed into BIT(16) in the bitmap,
>>    but still compatible with the __be16 format.
>> 3. The bitmap has bits past BIT(15) set (not the VTI/SIT one). The
>>    result will be truncated.
>>    Note that currently __IP_TUNNEL_FLAG_NUM is 17 (incl. special),
>>    which means that the result of this case is currently
>>    semi-false-positive. When BIT(17) is finally here, it will be
>>    adjusted accordingly.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> So why testing IP tunnels stuff in lib/test_bitmap? I think it should
> go with the rest of networking code.

When I was creating these tests, there was no networking-specific KUnit,
but now we have one, so it makes sense to move it.

Thanks,
Olek
