Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC56784660
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:56:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE2E940BCC;
	Tue, 22 Aug 2023 15:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE2E940BCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692719809;
	bh=MefZhSiTNqtMHz8aK1KORXyYdFoHlGaD3GHRVPamkkM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=71O06p8cCahgC2kbXTptGxO+U1yPj+F/ojiRGK/rTS3edGuIMazjF7vaTv7LOKilg
	 CA8H8RYk0421oPvO4viVQCEGwTDMpjBu733c2kw08wWZvLH8Bt+tm+oAKdhRFygpBi
	 C3Ryk8jH0aujYWI/RzIKUfNixQt9SF+PnbCfUKdiDzqoAT3sLbrdjjEjTZM6iR02uW
	 iujpHcuM30KBmapoZjF9TpQK+eveNf0PcTVkX/LTtX+9U7N9GwBaXEmUDqwKwRBBVH
	 anPAHTm38l0+JCrNQAZC6bP0XU3Q5Er5rOcCTse+8IFuY/t53TI/ztWGCFrlRxxBR9
	 J5V9eUYnToIfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_pIjlz4WHni; Tue, 22 Aug 2023 15:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86E9E4094F;
	Tue, 22 Aug 2023 15:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86E9E4094F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39BBC1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 116B8611C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:56:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 116B8611C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1gT756QYLGYa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 15:56:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 145D0611BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 145D0611BA
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="460283434"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="460283434"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 08:56:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739369932"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="739369932"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 22 Aug 2023 08:56:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 08:56:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 08:56:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 08:56:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 08:56:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=as6+x6Z61eS5C6tLJE6v7Ao/Zs8Oqh0Zt+U/R1S++utQapO1T4vdf1DiaZm/E6PIqSiRDn3MI8c0eaFf2eXMmzCeBjEOkx5lzW55M/SiD/SQQKM8C/JT9BGznVZpfBKQdkHGHqTgl3Mn6SjyirfTXmv2xgr0FY6zq4Rem7ckaoQ9ZkylYlSWiexGyhuJvMQNp5aqwF9fsr2reBzk9LJObEq3cn+qwuhdXGVEgzE6p+40AUekIYu0iZqH6G3hZp2Bp7kRgcL3OfuGIxqtluTOjf6LHPiCOcR3L8AyeIqOdlQg0oSzY9pTYG0RzAxINEbHvdBlsmu/enHNnv+/uUAgcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6igrI5Q/RAkVG/f6hiX1SzWteCTuK3XsCeNXOm5GWo=;
 b=WtYpzNSW6UvekWNJWF7IEQjq7IwlNJLCBFo+HIupYNvmc5s+xJmMLPq5GzSaQKz6dHpqn4zNzWZlG7bR816TvdSG5K5o+pFR22hATOXNj2gc000Z3zz5GWKAGsSTzdVWDxcLaOthZd01Wl2PwefAb43uAVjEmiyY6W8AKbQsXomU1gEC9uq2uNsoSq3EjfTZZM/XxO8XbVjtqZQXPRTGlVWFYu8Gq4CBNNYS0nhFLD3C3Q2w6jxU9Mgyif1n/eQKIdigYi0em+iGDCgvHQL1qly/b09MC/2/6DKnEEITweEsHckvRpSMkgMbCCGeze+829jH1RfvYeI5Fr1PRKuPww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY5PR11MB6308.namprd11.prod.outlook.com (2603:10b6:930:20::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 15:56:33 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 15:56:33 +0000
Message-ID: <8a0e05ed-ae10-ba2f-5859-003cd02fba9c@intel.com>
Date: Tue, 22 Aug 2023 17:56:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
 <20230819115249.GP22185@unreal> <20230822070211.GH2711035@kernel.org>
 <20230822141348.GH6029@unreal>
 <f497dc97-76bb-7526-7d19-d6886a3f3a65@intel.com>
 <20230822154810.GM6029@unreal>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230822154810.GM6029@unreal>
X-ClientProxiedBy: FR0P281CA0111.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::12) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY5PR11MB6308:EE_
X-MS-Office365-Filtering-Correlation-Id: 410f2241-c4a6-4830-6ad1-08dba3285b7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bAYfvVNZrVFFULmr3IrGpDr9opP8mslsqxzSgnBzQTvxV/p3Vbdt2JvubD1SaKSb8+wSzT4sMtL/c5bnHBb5EgkHdWcEZsNJSC//ya+VXbAH/3ZbRYQe0nttLdMWtFVYc31SMttCz47UCY1REk3ykYYP7iPsUlCgC2ceJ9SVgp0ZjrDv3t0PcqrioZaxFZAkwKDqJB03NF8mO+lIjoPBvE/GYPF/1Lx3QRrDDX8bgmDLlvCmb2GnBP/7w+5zyZ96UZMZzKoYVKdJbA5Fuj/SP5pW1Q5phey/UWOITunlsW46T8L6q+1L7DcFMBGZ8r3XzEBk0SZwb3U7HC9XuQ4g9ki2k3KSsoTzYl9K7PbKhBKTD8xpBNJCHmrT2XEGUkcl15Q1kz9DBV8fsK8DvZzLWu5t97dLuW91Xo0Tk6P8xseI5kRDUA5SiGg51Gg30Vi++4Ie15YyaKp/qyyjnbmpIbmtFjR6Nbg3+0lCDYPmroAXFPtVP7Hcc3V2ouywE/EuXnspOJ/WCHpCNsS0DlC2xJiHrVkkkbz9Mi41BuC/wh+rDQgOnKb7B07YnOX4D1Kjg8OmgfKW6en91u25ZsgTj/GPM4snIl/q/Q+d9fbIqLvNAbRZlWrnaDKHa1ZQIQqp6acg7FZUPsjtuvuuM7tCdVaDNI8WP9K17khjm7gmreczH2J3giFKw4AbMe6wZQJo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(54906003)(6916009)(66476007)(66556008)(6512007)(316002)(66946007)(66899024)(82960400001)(966005)(8676002)(8936002)(2616005)(4326008)(36756003)(41300700001)(478600001)(6666004)(38100700002)(6486002)(53546011)(6506007)(83380400001)(2906002)(31686004)(31696002)(86362001)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnZCd1ZqTmx5dnRONjdHQlNVZmdSUnVmbWdJclJTSDlhNktPd3IwYUpabDIv?=
 =?utf-8?B?Zmg3dTJPUnlJL3ZVQkU5RUFOVUFRZFBNaGhKVzJJelpkMkVTb3VhbFZ4SGI4?=
 =?utf-8?B?TUo0L0hSKzQ0TGhVM01hb0NGUGo4b2svK2ZnZDZ2M3dRZk1HSzVTcnNuV2lS?=
 =?utf-8?B?MFZjaEVUYWlMRDBjRFFZaW4vZ2R1WlZxcFExL1ZKREdVdUpZeWYzNmhjQmJL?=
 =?utf-8?B?ZGpTSTRLcHZZNmJlV1dyQTN0WkZrV0Q3T3RkdUJsNElvdUlvakhlUlhvZks5?=
 =?utf-8?B?OUlkSUtVclFMU3JDRXFHRlZsa3pVOG1ZREtQaDRXV0RmNUUzYTdHOSsyUHRU?=
 =?utf-8?B?Q25ZeUErK2tRODJUSHFXKzJHR2VBVHpxbmtNcUpIL3RQT2FFMVliVnNOL045?=
 =?utf-8?B?VlNBbEl4dXBUQ3V2NzQ2bFNwcVA1Q2tXSWQ5Rkc4cGtZS3QxZVdTbUl2UzNh?=
 =?utf-8?B?aTJ6OUkydkkwSWpNVEJpMzlIRFBCeU5mNENHNUwxQ25HTlBxRWVaNzhLVUlH?=
 =?utf-8?B?eGtSS3FQbFc4OGNRNXJrcFVrTERjcm5Celk2dStlN1ViaStLV0FVQVdkVktU?=
 =?utf-8?B?cEZqdTZKYzN5V3ZNNmxibTdha2ZxL1JaRHl2T3l1WnQ0T0h0aG5QTGlXb1BK?=
 =?utf-8?B?Z0ptYXJDUG03dkZuMjMvUzFCbW0rUmk4TkRXc2NQMkp0Tk9WYUh5d2lmcng2?=
 =?utf-8?B?aUozKytleUo0bVVsN3o3V09CVG9TTy9JY2xCa0s3K2Y1V3cxZmNwUUN1eDBJ?=
 =?utf-8?B?MkN3czF6YWtBTFl1b3hlM3ZONkRkcmhIdmhza2dOckxuTHNNTHlEVGNvWGNS?=
 =?utf-8?B?bnA1T2grWnovS2V0aEwwOTlKSHVEbjU2Nm9LcVJJcUJxejBpdzZDSHp0TU1M?=
 =?utf-8?B?SEhsYWFnVXFhaTlOdExqOExaTEdkTkVRLzNXVGFsbjArV0xPeUZKakJZWGhB?=
 =?utf-8?B?SDBRNUVLODlDdzNET05wbmNqVTlablNnRWJTZUY5R2FrTks0NVhzb2ZLWmZO?=
 =?utf-8?B?ZlowL29kb2taaWxBQkVEU0FGZzNDNmhDZGs3MHpiQmxSVGlxMVpVczl3TE9q?=
 =?utf-8?B?N3FmbW9oM1F5OVl3aCtKQ1RHWVAyMU0yTHF2cndTREg4SmFqTEMwL2p0WDdG?=
 =?utf-8?B?aWRwMWJKMHRpaDBwMHBwa1lYODZ0QXJlZmQrM1FTUFhPUFpRdGZiQnJNREY5?=
 =?utf-8?B?cHN4NkZJWXI0bEE1Tzhzblc4TkNXWXBnOXVLWWsvTUlQaXZrQVcwenZ4bFpW?=
 =?utf-8?B?enFjUnFCVlBwT0FNTnZ4Vm5WWFlFUjBEOUcyYzEwZmdvSk5rUjlqbjVJU0E5?=
 =?utf-8?B?SzJvSGJvZHhOZzUzdWoxY1JxTE5xREhCVTZheHpLSHdkMlhlc0wyNlZUalRB?=
 =?utf-8?B?UXVCcDI5emR4ci9sUUp0aXIwUU9tWHRKZERYSXFqbjhXWWdnb1oybjJTUXoy?=
 =?utf-8?B?VGhBenRjTzE5ZnBzbHpBeS8vQmh3aWg3S0VZRG5RcjUzMko1ZDZ5OHpCcjFH?=
 =?utf-8?B?V3VVRENSV1BYNGF2K3MyV283ZGFtbDJkMnBnTjBMaGRIdzQzQWZVRXNTY1Bq?=
 =?utf-8?B?azNwL0JyVTl5djBaSlJuTDlZNDl5STF2RytkbXpnMmtlcTRmQVF4UFNqcjNx?=
 =?utf-8?B?ZHhCWERoVjlSZkIrM01TWUMxaTVQdHpKM01MenhUckUvWG1PVzhEcmpSU05R?=
 =?utf-8?B?YzYrWHFCWGxwY01yRUJsTXhJb3FLOGpRNzlmOE5tcFN4bERVeHUrcUkrRTIr?=
 =?utf-8?B?aWxJdC9USW44UEIxanN5cWhHaVdaa01TbFRLY1lFdkZFZ1JCTmtaR0hzOVZT?=
 =?utf-8?B?cG5jQkpZMGltdjFkYmVUOTQ3eU5pWkZibXNtbVMrYUdoRWU3WW1CbEpZbTJz?=
 =?utf-8?B?b2hHZXhTQ0ZlT0ZtdnBTMEVpRnFyZ3Jaa3BVYi81bTVObVhnZzRIQ1hQeWpn?=
 =?utf-8?B?SkpUdVdVRXJkYlZNa1poTUxCbmNMbDJiOXF2cndEaVIrUXYxN21Xci80VnNC?=
 =?utf-8?B?SlFKS2VZNG44MjZVNEJzVkxOR0ZOdkN2M09UOXE5bEQ0MWlxZmdMWllKK3Ev?=
 =?utf-8?B?UFp0c2lhRGZHR0Zyd2FxUmdvcFRJUjJyOGdTME1lWERsUC95SjJDNEpabVY0?=
 =?utf-8?B?eW41aWNRb0YxSmhneU1xLzBrNnJLVE5pb1hpRnN6ZG44bHQ3WjBDMTB0YVpM?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 410f2241-c4a6-4830-6ad1-08dba3285b7a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 15:56:33.3216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SIhuyqgGdbc02o5vdDSG24QYnQjinaNTgkYkQMdUXDM33+xM4+MXHLre28ySAgBYoSLTVlIxkZvc5vGlznXznVc/8d4R5RuoOClHI1/j4Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6308
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692719802; x=1724255802;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5B5bb/Jwfh2WdWpGAB4+v2I1Ym+a5AWdi1ZIAdNKTbM=;
 b=caD3wIcmilgkp2LL22lYl5pN77XPqZL0JgnEY/A1K49+IgWgumS9cLOD
 sObe+CugJZlY0CtRQRglrsxPZtM+mklGCacqWVIkcI4NOx30aqyHWt2ZQ
 bLkNPcQpIP9Sn4QOTYCuc1kFtDv1Iq9X4dECwSxfo+0k9WWQ0fG2sLKEJ
 /lt+rZCVsWW8kOUY2x7BEZuz/0cGRo2AsA5h6f9b5etbwF32R0viFdsv8
 hdsNkIDTdABjH0pRWP/bBoixxpXGcE2VUbgORYc8VNYBMMrdDZMNAVu76
 znS33hINi7U1859ICVnYqUDVgbADhRi6Zpb6cHzC/c3EVQ4tXSZ3/Fb05
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=caD3wIcm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 anthony.l.nguyen@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8yMi8yMyAxNzo0OCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDIy
LCAyMDIzIGF0IDA0OjQ0OjI5UE0gKzAyMDAsIFByemVtZWsgS2l0c3plbCB3cm90ZToKPj4gT24g
OC8yMi8yMyAxNjoxMywgTGVvbiBSb21hbm92c2t5IHdyb3RlOgo+Pj4gT24gVHVlLCBBdWcgMjIs
IDIwMjMgYXQgMDk6MDI6MTFBTSArMDIwMCwgU2ltb24gSG9ybWFuIHdyb3RlOgo+Pj4+IE9uIFNh
dCwgQXVnIDE5LCAyMDIzIGF0IDAyOjUyOjQ5UE0gKzAzMDAsIExlb24gUm9tYW5vdnNreSB3cm90
ZToKPj4+Pj4gT24gVGh1LCBBdWcgMTcsIDIwMjMgYXQgMDQ6MTc6MzhQTSArMDIwMCwgS2Fyb2wg
S29sYWNpbnNraSB3cm90ZToKPj4+Pj4+IFRoZSBpY2VfcGZfc3JjX3Rtcl9vd25lZCgpIG1hY3Jv
IGV4aXN0cyB0byBjaGVjayB0aGUgZnVuY3Rpb24gY2FwYWJpbGl0eQo+Pj4+Pj4gYml0IGluZGlj
YXRpbmcgaWYgdGhlIGN1cnJlbnQgZnVuY3Rpb24gb3ducyB0aGUgUFRQIGhhcmR3YXJlIGNsb2Nr
Lgo+Pj4+Pgo+Pj4+PiBUaGlzIGlzIGZpcnN0IHBhdGNoIGluIHRoZSBzZXJpZXMsIGJ1dCBJIGNh
bid0IGZpbmQgbWVudGlvbmVkIG1hY3JvLgo+Pj4+PiBNeSBuZXQtbmV4dCBpcyBiYXNlZCBvbiA1
YjBhMTQxNGUwYjAgKCJNZXJnZSBicmFuY2ggJ3NtYy1mZWF0dXJlcyciKQo+Pj4+PiDinpwgIGtl
cm5lbCBnaXQ6KG5ldC1uZXh0KSBnaXQgZ3JlcCBpY2VfcGZfc3JjX3Rtcl9vd25lZAo+Pj4+PiBz
aG93cyBub3RoaW5nLgo+Pj4+Pgo+Pj4+PiBPbiB3aGljaCBicmFuY2ggaXMgaXQgYmFzZWQ/Cj4+
Pj4KPj4+PiBIaSBMZW9uLAo+Pj4+Cj4+Pj4gTXkgYXNzdW1wdGlvbiBpcyB0aGF0IGl0IGlzIGJh
c2VkIG9uIHRoZSBkZXYtcXVldWUgYnJhbmNoIG9mCj4+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG5ndXkvbmV4dC1xdWV1ZS5naXQKPj4+Cj4+PiBT
byBzaG91bGQgbmV0ZGV2IHJlYWRlcnMgcmV2aWV3IGl0IG9yIHdhaXQgdGlsbCBJbnRlbCBmb2xr
cyBwZXJmb3JtCj4+PiBmaXJzdCBwYXNzIG9uIGl0Pwo+Pgo+PiBNb3N0IG9mIHRoZSB0aW1lIElu
dGVsIGZvbGtzIHdvdWxkIGJlIGZpcnN0IHRvIHJldmlldywgaWYgb25seSBiZWNhdXNlIG9mCj4+
IG91ciBwcmUtSVdMIHByb2Nlc3NlcyBvciBwdXJlIGZhbWlsaWFyaXR5L2ludGVyZXN0IGluIGdp
dmVuIHBpZWNlLgo+Pgo+PiBGb3IgdGhpcyBwYXJ0aWN1bGFyIHNlcmllcywgaXQgaXMgYWJvdXQg
cmlnaHQgImNvZGV3aXNlIiBzaW5jZSB2MSwgc28geW91Cj4+IGFyZSB3ZWxjb21lIGZvciBhbiBp
bnNpZ2h0ZnVsIGxvb2sgYXQgdjMKPj4gKEkgZGlkbid0IHByb3ZpZGVkIG15IFJCcyBzbyBmYXIg
YmVjYXVzZSBvZiAibWV0YWRhdGEiIGlzc3VlcyA6KSwKPj4gd2lsbCB0YWtlIGEgZnJlc2ggbG9v
aywgYnV0IHlvdSBkb24ndCBuZWVkIHRvIHdhaXQpLgo+Pgo+Pgo+PiBHZW5lcmFsIGlkZWEgZm9y
IENDJ2luZyBuZXRkZXYgZm9yIElXTC10YXJnZXRlZCBwYXRjaGVzIGlzIHRvIGhhdmUgb3Blbgo+
PiBkZXZlbG9tcGVudCBwcm9jZXNzLgo+PiBRdWFsaXR5IHNob3VsZCBiZSBhbHJlYWR5IGFzIGZv
ciBuZXRkZXYgcG9zdGluZy4KPj4gT3VyIFZBTCBwaWNrcyB1cCBwYXRjaGVzIGZvciB0ZXN0aW5n
IGZyb20gaGVyZSB3aGVuIFRvbnkgbWFya3MgdGhlbSBzby4KPj4KPj4gVGhhdCdzIHdoYXQgSSBj
b3VsZCBzYXkgZm9yIHJldmlldyBwcm9jZXNzLgo+Pgo+PiAiTWFpbnRhaW5lcnMgc3R1ZmYiLCBJ
ICpndWVzcyosIGlzOgo+PiBhZnRlciByZXZpZXcmdGVzdCBUb255IFJlcXVlc3RzIG5ldGRldiBN
YWludGFpbmVycyB0byBQdWxsCj4+IChhbmQgdGhyb3R0bGVzIG91dGdvaW5nIHN0dWZmIGJ5IGRv
aW5nIHNvIHRvIHBhY2UgYWdyZWVkIHVwb24pLgo+PiBBdCB0aGF0IHN0YWdlIGlzIGEgbGFzdCBt
b21lbnQgZm9yIChsYXRlPykgcmV2aWV3LCB3ZWxjb21lZCBhcyBhbHdheXMuCj4gCj4gSXQgbWVh
bnMgdGhhdCB3ZSAobmV0ZGV2QC4uLiApIHdpbGwgc2VlICJzYW1lIiBwYXRjaGVzIHR3aWNlLCBh
bSBJIHJpZ2h0PwoKVGhhdCdzIHRydWUuCgo+IAo+IFRoYW5rcwo+IAo+Pgo+Pgo+Pgo+Pj4KPj4+
IFRoYW5rcwo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPj4+IEludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCj4+PiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4KPj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
