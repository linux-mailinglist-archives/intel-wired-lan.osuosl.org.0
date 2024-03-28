Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876F7890C9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 22:41:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F71D417F7;
	Thu, 28 Mar 2024 21:41:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H7cFWhYMFQVx; Thu, 28 Mar 2024 21:41:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AE78417EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711662087;
	bh=/LvMcZE6e/jRMERpjhiPvZJRHrlG0nY4n3OT0R1CNDA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mFbXLWEeu6JaR89GrdYokDPkOykBNJ1nH6hh6r+xom8V5ys0rt4lj6vOy0U3oM4V7
	 TXQMAw2A3vNDmx0bKExHzTZzkypCZAUGXU8ZgbqQmPP2enwzzdrjOWVg1xQYr85/IW
	 luLP2mMA/R7qgwxxPUvP2qfXSdw45NI71IGXwo65jH2syWdNUDFRZyPmHaEQOLwljT
	 F9jAYP5fmGTf3UrOcLH/E9Hitvy33kt441ajj3UuAW5CpFSD2wuUtNDhTyUL2C5Dkl
	 uRj+xN3MXvEh4Dib5hpP/HaFK3QWikJzbeG/MAfN8aYhYQFAjRWAsEBeSwAD2aM1wp
	 wyHfpbqL6ed3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AE78417EE;
	Thu, 28 Mar 2024 21:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DBE01BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED3EF417F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:41:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NR2HRULrVi4t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 21:41:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 35B69417EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35B69417EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35B69417EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:41:25 +0000 (UTC)
X-CSE-ConnectionGUID: 1/hmFw1fTuKfIbdRXc6x/A==
X-CSE-MsgGUID: uKlPa6yLTnu6tkE5+Y7l7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="29327407"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="29327407"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16604648"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 14:41:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:41:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:41:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 14:41:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 14:41:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGQOK877mCjqg3AAmo+5X8Cs1YRZjbq6iRX7IK6a+lifL6rEy8FW6pJVgrOqB8oUDq2ZdRv5NfMJxmiac7jyI41U6ocWVj6DojCjMTmBJ7Jy5sbwFqrnXBvgsaDNS7Lj0Jx0wtRi5lJ/l4zbsa5Rh1DPVMw1qLtXv9+GZMQDoTaGDNVw5z0MeUkgOxnOtvUPXF4gQbS0qj3GPzcv7syiBTK57rXFGd78XnPbqhZfH4gqWnX1QHM4iMPWVxp9tfwSfNa1sNsoE6JftRpnW8D55aLJAYvyySgIz8zxuI/XhJTdaiWwC6H6j1KWBVUb4fb5qZOvJFQouGjwJrfHSwTR7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LvMcZE6e/jRMERpjhiPvZJRHrlG0nY4n3OT0R1CNDA=;
 b=SApW7Lvl0O1qjZn2txZ4Z/dvbo4idQvQvL1sIjKfNrDm8+VopO8D+00MWz6WWQiTC4fWOXfmva2NcWp5Za0TnX0Av512Tsl6ITRec5xjXhabn1OL/sduQmNUCzlkWVGs9054sDLLk5vL6PY4PXI0PJFWDpAtmdJ2PK4DpXvvUC14wGLNrXEx7DB/oQ5uIy/1D0i0YldvwMvhIqseWSS/qG/LybMgomLd97RuLJgC99ljzthAz3aPJCloHqFTTXekzQ+HPJXF+CYRAEDOJZqksLNU08ex2PPBMDnkaHfbgfQJnWq6kkEbfJKe06mJCNfVFeIpsgqH8Hnq9pA54Z7OJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by LV3PR11MB8481.namprd11.prod.outlook.com (2603:10b6:408:1b7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 21:41:21 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::c8f:b939:aa0f:717d]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::c8f:b939:aa0f:717d%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 21:41:21 +0000
Message-ID: <8cf627a3-18d6-692c-7b83-6a2e24c3ddea@intel.com>
Date: Thu, 28 Mar 2024 14:41:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Rustad, Mark D" <mark.d.rustad@intel.com>
References: <20240326163635.1529314-1-paul.greenwalt@intel.com>
 <20240326163635.1529314-2-paul.greenwalt@intel.com>
 <212d2acd-5f5a-aa20-ca24-13746f23d492@intel.com>
 <6C819B98-E110-43A9-8578-3C04B03FC954@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <6C819B98-E110-43A9-8578-3C04B03FC954@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW3PR06CA0002.namprd06.prod.outlook.com
 (2603:10b6:303:2a::7) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|LV3PR11MB8481:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S0FIj0Leke/aB5WWI/KvgeYxnagWvR2L7OQaGUJE89zHopmGAkcYiMvc88w/G2NxfpT0+px5103sllBTSDy+6vD31j2x4YusmGcJ+tAk1qR0tOtx8FRNdolarjV9B2UdAXvKs/gi0RzT0pB86zCZSR/0ymnxNps28msG6GFp/AxlHzwwUHXeCwZ5Yx1CKDlYvMw6F/Z00eHEXPHW3Ds6UExRj94g0hft5Fsuv3B2x4ODNdNAAylu/cg7sYujr5m8XEd+NGr1ICuRnOiLqrCG8F8Uy/feiJW0wZjrPPmUXI4vQwixmy+YMMq81612baD7gliRM1eixdcpq9ySS8doEPopKJNkR6JTl/EaPWSecdBL1L6tYW0ja2us0Gm1efCronmU4Xqh1CIxz4nDYo+PEe9LGMbx18EQQBR6jf+NPKAWmhaDEVKuRoE5jPz8iDA+/yU/aZIaDmbjwr1slYHFYHMKfttbS3zp98RB81xkvg4ghXvSv5e/lQykRsFnpCgAAG9Kn+rJDs7HZElVjvyWoOrdFb3d1hCwJbc8K3XFJDZEQkPY+7lHAj/QFUnqLWQi2rsIzLqiCh2/I0Nd3mvfnYP9C+093vdTWEajVE2SpBEkK8n9kVHj7oqxaSdcBOEdhYrILkaiiHIauviEv1EAh3OcPpwuDkhr0zU/i2gEGxg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXN5SHM2K2ZwcTBIMk5pL0RQemxhTUc1d2Y2eTNEKzFDNEEyWkZHL1RKN08x?=
 =?utf-8?B?bmFsNkVnZXVIbE1pTmVVQkVjN2QwN2NKZTRwTng0VzZsK2l6NjEvZ2g3bjU0?=
 =?utf-8?B?Y2pIMm5OR0FZNHNQc0U4V3pTZGlUYzFzOHBnT1IwamN0WkR4dVBUUEpkZjRH?=
 =?utf-8?B?Q3BHNUZxMlI3YWJsVm9YeER2MFI3RVVQRW16YlU0bUVaRjNPM2pZSlg2OTZ6?=
 =?utf-8?B?bytMT1I3YTN6Uk9jY0UyYU9MZEVuOEJYREhmNjcxa2NGb1didHZWSWx6eUdi?=
 =?utf-8?B?Q0diL05wZTRPNmhXN2QzNFFoUDhLYi9XOTlaanRkTkVrdW9SOEhRTHl0RzRa?=
 =?utf-8?B?SUNISWkxZ1ZaMEFDM2VRR0JWMHZzQjBQTzA0cThudjlHL2hEbG1CTHh5dHg1?=
 =?utf-8?B?MDNOZ3laNWtKUG9RRkhjenhySjc4MmowcHBZVzVHNGg1djJsZUR3QUs3YVBI?=
 =?utf-8?B?NlRRM0pKaG0wT2Jla2ZzL3BiK2xVSWdYTG94UUpnb2VpZXdPUzVuWThhR21M?=
 =?utf-8?B?em8vaXdNaFlqVlg0bzhNSStFeWluVVArVVB4Yk4wNDkxUEl4MnVsTW5DeCtt?=
 =?utf-8?B?Mk9UVEl0cm16M1FjKzJiK3RQUlNya3RiZ2xNWXd1akVINXNJaU9vUHVZZG4w?=
 =?utf-8?B?aDAyUU41U0VPcnJYMHFrQUphZ0J4ajVaM0NENFpMZlovcTZKTHh5WGlsMEI1?=
 =?utf-8?B?VXZIRXljYWdsbC9UcVJWWkMvbnVIaG4yRi9CNWlEdjE0Z1NoajhITGNaWUhV?=
 =?utf-8?B?SGgvRGNnR1R6cEpib3Qvai9uay9sMEF5T0hBSzdCV3poVzFycW9vaFEwcWpl?=
 =?utf-8?B?eTFPSTdtREZ3eWpVR3FFWWFQL29MaExHVUJacnloOENsVjhCWnhMZy9mZU45?=
 =?utf-8?B?QnpNTXRQRSt4VXAzMDZsNFEwdDk2MXVVTTc1SVRrR01kUHpYd0svVXZMSG1U?=
 =?utf-8?B?RmwwMDlyY0h5dlMvZjArMzBCS1lMWmVIdE5JK2thWmFrRFpoZFVPNkNoelE2?=
 =?utf-8?B?WXYrVkhOUU1mWHdpMWRWcW90ZkJGbXYxV0ZrV3NYSkIxNVZrOEY5Yy81YlF1?=
 =?utf-8?B?S0lhMWovY1djdTZVUURrYTR2Y1NoMVJBRmVPQmprUzZZQ0J0MnlzSDQ1T1BM?=
 =?utf-8?B?TUt0WkNPbEZWT0JXZDhyZjFqYnBpckdKTTljby9kM1YrT1RodVJ5WHF2emZP?=
 =?utf-8?B?anN2YUxXblBubkkweER3Yy9YRjYwaWQ1SFVKUFVQYmhCMW10MXpkQ3hPR1pv?=
 =?utf-8?B?OTBMZ0F5MjRrS01vM3ErS1I3YklIZ3dSbVdGeVBNeGk5akhGL0JxNm5PUUFR?=
 =?utf-8?B?TFFIeXlOSU8rSGZuSWFXWWxnaEN4cGdBRHlNV0hocGYvRFRZYmRMa2VlT21F?=
 =?utf-8?B?ckhqN2MxOE83bVFqR2RpVXdrYmhwNkgwRE9DTUZJSlk4QkY5cmNBNHUvcG9h?=
 =?utf-8?B?TzBZT3BDOHBualhuUWFzLzQ0amxGV1ZUZDE1UDdWNUdZWWw3UjNWTnM2RkdD?=
 =?utf-8?B?TFJpRXFRVFlhNk9GTnl1cDFsUHpTMGV2dDFFRzFHcUlwei9CQjU3ekNydEYx?=
 =?utf-8?B?VnM3NmRkVHZtWC9ISzZmRm5mYVZ5WndKVHhub3pmU0dMS05oa2prQS9IeHVi?=
 =?utf-8?B?dzhlUmNKM29NZDNQcDBQRmlpYnpQR2dCVTZhTzRRcXhIeXF1cXYwRjU3YVEy?=
 =?utf-8?B?KzJ1MlBpU2pTeEpsclhaK1BNNERjN0YyK2djSjV6ZnRKU0ZpaXUxYUd1bnQx?=
 =?utf-8?B?WEFaalR3d21EazJJM2ZvZC80Q0xVR2JSUzY2ZFovZGpjdGVwVzgyTE90aEgx?=
 =?utf-8?B?RDlDekhoY01DcHJqL3J3Mzl5a1dRYkhFK01kbmRVRkIveHZWUTE4bjBEMUo1?=
 =?utf-8?B?bG1IT1ZQZkpkZzJKK3Iwcjd4VTYvQXZZc1k0ZHBYQndYMVhhbHBHbmlic1ht?=
 =?utf-8?B?bTZZbGFxOHFVcm9QZEpISm5RYnFBQlBibEs4dC9lcVBjdll0czFDdDBld0pS?=
 =?utf-8?B?MnZVUE9kb3VhajBUaGw4SWJyTGVaVFBvbDVVaXJCZGI1S3RORjhhNWt0N0o2?=
 =?utf-8?B?WVZhQ1J5U0ROMmM5eDlrSnpKRTcyZjJUajRYL1BsTU1oelRvbFp5ZUk4K09n?=
 =?utf-8?B?QTFyQkttbUJrLzIwRHo5OEh3RUVFV1dHaWsvNDhmcVRxSzdGYzRuUDBBYTJl?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 138f8fa6-8866-4960-b32c-08dc4f6fcec4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 21:41:21.0474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BUiko7feqqBBUz3QCDmL+qzrJxgi74ThTjm4R4hMAHUGSmRErLnNguDHD61KHe/BsDv+P5b4VqsAYDKzoUfLCarQCCU+nAxyoDpMwrfENjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711662085; x=1743198085;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U6uo1wnx3je312wyLyqgpxFrYgkasPAs6R3NNbJ10Wg=;
 b=WyH5x+zASfIJZ/3YJ/BrYYKOvR0wO7SXAbiGPzxGu/eJs6bI4cykZkct
 uUs5/QqUuHVnvcSdpcF6iSqlWJiHOvXYQST78oBcECDi/w48ce9dpUGnl
 TP/FM7WIvZkxMMxlqFMdzFm8+d7JpqmDb20omPzRXjHndkEE5nx5H1jqc
 OF7Z6Snl0nT+kcvL1/ee/KzVvbSgDqjIVxlDFcy9/W1mZwLBCgeMdtYFB
 NwkZ9S0QIzQYYr6okCZccimCvtFWUTmVMrSBgjP9E1pv52XddbLigvM8w
 O2AEDsTj1vItwrNsGPWKrpYHjG/Im5e9gw5YvNbJa8vxKjLpgPYoKXxkx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WyH5x+zA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: update E830
 device ids and comments
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Greenwalt, Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/28/2024 2:37 PM, Rustad, Mark D wrote:
>> On Mar 28, 2024, at 2:16 PM, Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
>>
>>> +/* Intel(R) Ethernet Controller E830-CC for SFP-DD */
>>> +#define ICE_DEV_ID_E83CC0_SFP_DD 0x12D4
>>
>> This doesn't compile; there's a stray '0' here.
> 
> Not stray, just mispositioned in the definition above.

Missed the missing 0. Yea, mispositioned. Thanks Mark :)
> 
>> ../drivers/net/ethernet/intel/ice/ice_common.c:166:14: error: ‘ICE_DEV_ID_E830CC_SFP_DD’ undeclared (first use in this function); did you mean ‘ICE_DEV_ID_E83CC0_SFP_DD’?
>>   166 |         case ICE_DEV_ID_E830CC_SFP_DD:
>>       |              ^~~~~~~~~~~~~~~~~~~~~~~~
>>       |              ICE_DEV_ID_E83CC0_SFP_DD
>>
>> ...
> 
