Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9001C8985CE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 13:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0505E60F53;
	Thu,  4 Apr 2024 11:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MccEEViFWcRB; Thu,  4 Apr 2024 11:12:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EE5060F2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712229164;
	bh=67pjTXmKGja3nvsX5VyMSUYj4cojpU0usl/qyl9Bntw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bGqgImAxNv/bcBwQ/KzNsOeKSaV/4qkfkMSg63i05hP65RnbB5uUpCz2CEsmpt8Yw
	 qJF9wEwKXw15RPELIYdBo6d/ehB6VCFyk4EJR2aKtkCaf0WQsXZwdjxFmflseWaCnD
	 I2FiQsOCvTTcuNi8XTnnzUxMEkanr4BSZ232t/PYH5Fo8Is9lFhBfpOv4Z40VmQ8EZ
	 H1LhvlnrDDx9zjPd6OIJ9iSYLcpIdCJ9e0MzoKyNvPbopq5VpNaMbdNTOlPDQkQ3qo
	 EPnX9DXlvK59NV8AKdQ4WO7QyeVBEbX+fbnYytkqVwAu9n0dChnVECWMRaG3Sr0x2t
	 o/yFK7I43lNIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EE5060F2B;
	Thu,  4 Apr 2024 11:12:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6B301BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 11:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D197960F0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 11:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-MmM6HhaBR8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 11:12:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1860960F28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1860960F28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1860960F28
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 11:12:36 +0000 (UTC)
X-CSE-ConnectionGUID: f0tYLyVlQ1On0QqtiRu8Gg==
X-CSE-MsgGUID: rG0pFevsTGumGdIf4WAhuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18859750"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="18859750"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:12:34 -0700
X-CSE-ConnectionGUID: 2Nm4/uHoRzq8VpCIzUV0bg==
X-CSE-MsgGUID: ToCnF1q3SXeGlxz3sYwalA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19191451"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 04:12:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 04:12:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 04:12:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 04:12:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gn7hHXzf1S7W82JUPOeXeAG0acn2aWRI4EruRFfa7H432wDY9GkWvRqnuniqU7c1+R4fYUBDAK9vbBu2yL7EXa39/eZcjna+Sn4tqrXmDvY92Z1Bv+NyzuhmxldWQCBej2WAI9JSgYN6W/UkeRvB0ivKzbLGCJfuXmPN3hNXWljZQKulL80hQ8AuHWtWA6KQw4pBjpamW7ZzHUcoYtf0kSe5Bh5VyK2RrYdy26LBeM1B7jkdzFJywbB5yPWLk5BXEBMtmALqHz4afHLQNZ8ojalDSPue1ALJW34hX79zwzO7qAwteCmowvpMu2cLc0xaHOQN40LTMCS9c3biPmE8IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67pjTXmKGja3nvsX5VyMSUYj4cojpU0usl/qyl9Bntw=;
 b=IE86erytpKPjbmfUacTGeEmlbglVTM42TgRwR0Qyq3Ieth5BCXVFohhyUyAawbnBbu5SyLTGiHVwyyMjnBSyRz9B0StevqtI9JUMifgM5U8dcF/ZJhVf8s2ix71y7PMluPb1Clvb2QSKGhp6x9vBM01YidZxwkf/PMM/HlfDWqZkzxPUfoomqjuXtWQnhcwGitW/p2/SfChrSY8i1yWHq+nE46q8HnXSplILqH8Na0KBhqusp9iRxlbOciunCd7TaSYGKhEM2laqcvuyjFwUEC70G54C6J5kpARd4TdQfZUuS74C+liy9ODsUkOLj81HRiEBa6SgQ+4NmsZdkKs0Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 4 Apr
 2024 11:12:32 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 11:12:32 +0000
Message-ID: <5238eaf3-cc47-470e-85ba-4930a2acbc15@intel.com>
Date: Thu, 4 Apr 2024 13:11:13 +0200
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
 <20240404092238.26975-23-karol.kolacinski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240404092238.26975-23-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0007.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS0PR11MB7459:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HXBluIW5kUBQbC7AQW+DR541fKMCFpxycVx3BlHC63u8iatd9NR/gGhnqB6T97NJJWUjaGuAAuXXS44utbca8vz3zt+w/9jizPbZsCdH+K2jkL2nPAiJGLPh6r4dZApixxuC+CcLW6XRJK3UrEsPa0xZkq1pBg7qArv9MYsTfHWrNDOoxQ/uyPOStUzNrM1bwVux7x4Al+CT7CS8fYzTXXC4Zk80R7HtlCGptpuXvB+MA1kTD/XrxfAMZ848A78J1u/U0X0nB2feBtIurdTHOUsnDANY5xs5GZ+fD8uNzr/hPy5aiTJRbkTvKQ61qrGzTwpVt9LQS9zck1ac8Psw4AjFwv6wQhxmMBEcNGwToDwnXK0j2JW9EzEcVDNRlSTFC4I1UA4iYcJ3SmQoB1GgThaD/m/f1iQ6eaBD7tYYwgQhk6IrSSRJWTwAZqASjNpKGJ998h/6oGuSFwLQKWvNrwGZeRiX53ijek14hwP69T8N/9CKKCrV+QM1q+NQQaB2k44MVoTEQffRTrR3cEwgs0hIxEhxjiOd6kOUjuNP0lNZdusoFwf6Z7X5qf7txU1tKGSU2vbH/RMhqLdf0FHh4Abyy2AgWZh58/4UBt9taV50o9WlXitADYavdshVUxn4h0AJ3raIzNqqC5pbnEHbT+AygCfekTd6HALUZ6MlOcI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXNtSWlPbi80TGdtaysreTQzcHBRVWFtMlNlM1cyVTYvRWxpM3BDQktkY1I3?=
 =?utf-8?B?NXNRZG95Z2c3YU1HN3Y1bThLdUFBWjhtMUhhYTdpRnhFZmVOYjRZSHYrbTJk?=
 =?utf-8?B?N0lubUJuVWp2cXpNaDVqUGs2aXRJY0I0a29mMWpQb3hkOWZxbDhhODZkMHhK?=
 =?utf-8?B?Wk4zYWQ0NUplZDVCWTl1OEM0WHpENElNMTlmZWp6ZUtxT1NIaVZhUmY1NFpL?=
 =?utf-8?B?QkRxeGdBa0VkY1JjaVBiTkNvUkF6YU16YTJXVktrMXl1Tk9ETU5kb2VoS3JQ?=
 =?utf-8?B?Z3UzMWR4bVJJdnBwY2RPV1NPak05NTI5T1RETDZEWnBsQTZwOTQrbXpYQXF4?=
 =?utf-8?B?MHVUYVY1Y2h4VTlUeFJGY2FNdHMwbm9ZTFBDQVhMNHhWbGxwcXNQNWRiaE5o?=
 =?utf-8?B?cUxkbldHcEZhRkpzRlZpa3RoV2VJZ1NGRzFQejRxV0lPaXRQMGFWdFZxVmY5?=
 =?utf-8?B?MnB2Tm1lSHp6am94eGpPYzlNeC9VQVZ0aDArUkdzZGh4WXR4QXJoUFc1K3NO?=
 =?utf-8?B?aXlEaERicGFOL25ZQmV1MlZtbEkxVU9YbEdaQUUvZEtaY3FwU3AwczhmVTRK?=
 =?utf-8?B?eHJvaUx5VUs3R0Z4Y2ZTbFlRNXpoNkFZQUh2NCtyVXpGYjI0S0ZBRnZrWmc3?=
 =?utf-8?B?ZHd6OEFvb2hwbWlCa21TWDBzTTBrbVR5RExjSWpxWGgrbjQzWkxKRkF3N3BV?=
 =?utf-8?B?MHpJZllucXBzaVp5WW5PMjFndTVwczRVcWVkYStadjhWYnJ2NUJaNy91bHZr?=
 =?utf-8?B?ME5TeFFMUm5hajVaQ0ZnRWxKNkZBbDQ4QUVwZXRJRk1vVWl6aHJjTGloQnhF?=
 =?utf-8?B?KzRjSHpDcUpGeW9EUUtER2xWU1FiN3A5djdiQTJhQWM3cGl3amI5enU4SExK?=
 =?utf-8?B?ZnYycTBDbFppQ2JKRFl2Snp0Rk1TWGU1QzMyMnkxbldyOWZVdnJjV1pNcDhR?=
 =?utf-8?B?bnBRKzlLTlpDemhHNkpRV25DWEJpaVBzUFgvM2pMdWlPV1JSdzVUUHBPR0RR?=
 =?utf-8?B?clB2cEo0WHVTS0RqRVNnZ2tWc2hGcEFGcDRlcWFSWHpkWit5a2lyZEcrMzJP?=
 =?utf-8?B?bGdXQXFXSWJZcFMyTGEwVW9BZTNNbS94dHFOUW5HdE1IOXNTNEd5ejBFenNT?=
 =?utf-8?B?R1Y3QVVqRGQxQ3d4d1lrRG9wejJWVXBWcGE3TXZkZkxVU2VLSDR1UEIyU2gz?=
 =?utf-8?B?TzFRa1ptVmc3Zzc2eGdlcjdCL0V2SUtCV1JnNzExZ3pHeWdjQ2pLNG1wTDJM?=
 =?utf-8?B?YitkSHpNcGFibFEvcTRidnpyTXozcXBmWUtkUFEyNGo1bU1tc0x6Z3RrcWNH?=
 =?utf-8?B?dnZlcmVGOExrWjFkSTFrOHJIT2ZWU3BPY21mT2pDclVFL3VyU09XUGtIVTdw?=
 =?utf-8?B?S2sycHFWODdMSnVQQklwa3NwQXlpakVvR2t2dXFTRFQ0Nlh5c0dYM1FzbDV2?=
 =?utf-8?B?OGdmcHB0QW1VUFBiVmhoTFJqZnFPcGtGazBQNVpvc0g4UGM5TDlSU01BNklE?=
 =?utf-8?B?Q25nRG8wRkZkT003SWJGeEJoSFFPVUZOZGlWL3hHU2dScU16czlEWTM2QUlr?=
 =?utf-8?B?OHdnekdkTkhhaFVCWFJCU1FFcm50SWc4c2dUbGsyY2plUVYyRmJ1bXQwdEZ3?=
 =?utf-8?B?U2M1bHhwTEFESHdudk41QXZ6OVc0N0FjZHJsRUFWb3dpaUs4NVVyTzhxR2lE?=
 =?utf-8?B?ZlpMUGNIaWVDcDIyZlRELzZublFHWlFhU1JsK29qaDIxSTlYMTlUcGFZTjd0?=
 =?utf-8?B?WmxBWFVGTiszUkg2eUF0Y2tJSkRMUFZaME90NnQyQmJIenRYT0tqcWFTQ3F5?=
 =?utf-8?B?c3dKZ05ESXozSVEwRnhlSnVBWGtpK2FyQko1QUFEMDUrdmx0TFJVK09vU2Ev?=
 =?utf-8?B?UHRLSmdiNmc2RWZtdVFFR1lQSFpqYmNBREdrNGdWTWd3R2Q5VTI0cGJ0TFY1?=
 =?utf-8?B?T1MzejNGKy8zVTNDS1FpYmZ1VjZuMUlma1VFbk1kNWlBM0dkVkIwNG9ZelNI?=
 =?utf-8?B?SUxtSGtVNnBtNXdiK0tJYjBUeG0yTHVmdUhZZ3M4QU10TE5aY2h5TmNSWVBP?=
 =?utf-8?B?MkJaS1pseE1Yc2tiVU1xYWx0T1VrNmFKdnNxMW5HZGRnem1tcUdlVW93S2lU?=
 =?utf-8?B?THkweUZOVE9TaXJWdjJJTFJ0WExnY1RyZVZVM0VtVXdyTmxZbjF4QjBDT2h2?=
 =?utf-8?Q?ed4z5KOYkESKEpXPmbzV1dY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: febdb839-dcdb-478b-0231-08dc54981f80
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 11:12:32.2191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kh8aiq3J4kXwkIw4wbNPiqD18qAUTvcZLhkzHVGirLo5co6LEWBZliRAHkAHvwvlRkl8WHBkmedvrmIUQ5P42mnC4zkUIWlOSQsC0Q29VOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712229157; x=1743765157;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KAGAplH3iWNgt5A7WC9H31Ln7Llykq96brf4ZzURb0o=;
 b=aslP3FmKq2UL3xtYFHJDpR5nMa/iLdbqFBLq3KUqccDB8v2bZYh8w5Z5
 80hcl0Gf6zjijR4E9clHP3448rk3KO6V9rKHSI8F7RvAPvBizZBIk6Ou8
 uwXbsk9kMGU/QweZ62wV0r0fct00+NDhYAcu/AGMXQ/7IqIGrfoVWeYun
 UhLgiRlMTY9fV5JPllv1pZdHFQrIw8DFuN0Ql/nyhi5zysI7/GEJgm5vJ
 Furpu0CQIBWY43rSdhp8+TBvo6lWg19HGjE/oIeuAc8gXkI974GtHKe+N
 HsG1RI6gpZRsDC54KP35pTaMW4Mf7qlxWQm5Y6wOnnXAJzc+Yv4OiUkPY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aslP3FmK
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 09/12] ice: Add support
 for E825-C TS PLL handling
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Thu,  4 Apr 2024 11:09:57 +0200

> From: Michal Michalik <michal.michalik@intel.com>
> 
> The CGU layout of E825-C is a little different than E822/E823. Add
> support the new hardware adding relevant functions.
> 
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V4 -> V5: added UL to some of tspll_fbdiv_frac values in e825c_cgu_params
> 
>  drivers/net/ethernet/intel/ice/ice_cgu_regs.h |  65 +++++
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  87 ++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 247 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  22 ++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   2 +-
>  5 files changed, 410 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
> index 36aeb10eefb7..10d9d74f3545 100644
> --- a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
> +++ b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
> @@ -27,6 +27,17 @@ union nac_cgu_dword9 {
>  	u32 val;
>  };
>  
> +#define NAC_CGU_DWORD16_E825C 0x40
> +union nac_cgu_dword16_e825c {
> +	struct {
> +		u32 synce_remndr : 6;
> +		u32 synce_phlmt_en : 1;
> +		u32 misc13 : 17;
> +		u32 tspll_ck_refclkfreq : 8;
> +	};
> +	u32 val;
> +};

Will this work on Big Endian systems?

> +
>  #define NAC_CGU_DWORD19 0x4c
>  union nac_cgu_dword19 {
>  	struct {

[...]

Thanks,
Olek
