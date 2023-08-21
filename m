Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC80D78361D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 01:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06E5D6114A;
	Mon, 21 Aug 2023 23:09:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06E5D6114A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692659398;
	bh=mP3aXg02oHxqkQlQnzy3ZRCaPYzQZAdPU0mqBM3T1do=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RuTWsrFgVMEE9rssD0jwQ1PzvF2WTg5jyomBJWHNsvrpwvpjUMCYbfBVKypTLbcfG
	 QbfAaV3CwR1TdO5AEfELP5DuhJ69aSIB7KXrDCPZlzTeknqXZPTWA2Lh2Y1Vw+t9SN
	 8lfwZC0kTGBmtpKwbMVwhiOGMb82bi7y7iQ7XH0f8yXtqRiuzTAnAkF2+MVEakN2c+
	 Lz2F9+4LxSil2T4z32RO06F/bZlO/xwH5+3ew9gSVD6DX/wxiytyXWseJ3UMOJkgU5
	 9ARgvP3XdG9j6YeLbV2SRZcxhY6Nw7VPjoJ6g/+OM+9W7Xg7wPByKCWVKS7hESTd0a
	 pls3xIbpg44ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSXq38D-e8aa; Mon, 21 Aug 2023 23:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE2926113D;
	Mon, 21 Aug 2023 23:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE2926113D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF51E1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 23:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6F5361140
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 23:09:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6F5361140
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bi08ISSrUe-6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 23:09:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94CAA6113D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 23:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94CAA6113D
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="460088919"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="460088919"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 16:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="712942467"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="712942467"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 21 Aug 2023 16:09:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 16:09:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 16:09:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 16:09:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 16:09:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acRFsNtr6iuZUSwneG0K28YygV17JboUZAixLKFO0AfK+oqO3ZvKSV51w2nqxkCijndTEOvz/yhh+QwMUEHJAeyu3Qbtk3j3sz7ncdPdjDVpDIYLv0Gq6VzyAcnl38EVl8bq9rvw34ACD2u2SXBvenxLdnsELQ8tCSu0EYnkkKPgrOYFpRYNZ+N4rh94QWUepx38ZRjRn0JGoFLLKcuf1Smn4tFEYUNhsU1ifMdZS19LJk0PwEJQ8qp45eN99N6bwPeePeRH9gCy0z7ses1l88rkQCV7hKUm9QSPdEiCvEn5B/TUNYbSapwHsnht+5rjGsXUqNo5lMOOQapQfpBRWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OX6OkCv3LR8Xkpi68q7jR0pVauhk+RvraWbM1dJ0ZA8=;
 b=WJqkWFI0MWhtN7Z9zY1nFq+8MYnpkTslHGBAjiJbllwaxyJDVSyqwKTn4zdORtSdl1tq1ZL+zvC1CPl17ALWoXBOdtj3TFlWFWBWuNK79aYQXVnbp9Y/mvrhWvnIiwNFjsbrL+QH52gYBN6rjD+Hzc1EN8w9MYj5UebNxmcG4TbsBnO2cLWp4xYXmJNFMtyL44D+ux58AX+goodaEy+nAQEQxssnohrOBFioV2O3cKppvFb+PPdlQD+zxpqU0yfsq2tkKV4ga22917h4y7u4dIpNgfO8LBc/2uN5RW7zEB+nveZB3UWfoWV4E6vs8ql4Qp93i8OuB05vOGsKRcDVhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB8277.namprd11.prod.outlook.com (2603:10b6:806:25a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 23:09:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 23:09:40 +0000
Message-ID: <5b658cb6-a0eb-2999-c627-762bda6b6f8b@intel.com>
Date: Mon, 21 Aug 2023 16:09:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Radoslaw Tyl <radoslawx.tyl@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230821125504.169064-1-radoslawx.tyl@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230821125504.169064-1-radoslawx.tyl@intel.com>
X-ClientProxiedBy: MW4PR04CA0328.namprd04.prod.outlook.com
 (2603:10b6:303:82::33) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB8277:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f597593-bee3-4b7f-dbfb-08dba29bb2a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KqAEBttzHPLpmYN0vZtnEVuN3cLS/0AV9q1RFtGA0D6VAhOboKkYVwbvLVpmW24i44P1LvH8kugESmMrndqqotEFICm/jolyr0d7aNUIBl2OowMRyLcKIfoxbiGImXgH0r+AFj50Xe6eBV+p0gUIqDeR6/DL44ZMsRiebKAQ8dFP5cBrIloH/7kBe/75m36/M8n10gf5BnvoZVh+KLYmweRnmSR0ANvxIJmgl5B52bO45TyVq6sAhKIORMv9F+A5Ye78dypvL805N4UiL1UnbYn0rsJoVNeAQoYP2Fxm0pGlzD5d60/ZEoGGNcpP3ZP2A5tX9h200aKapqVcyBMaORn1gADW2ZB77kZZL4ojL7ZDRU9r7maefQG0PnWQDVymsxfrgL+su+YRaKaOVgaoq+kntXim1PfrPcUKN4AXlAzsWM07BMpL8B1rjIEj3iKwirqYZRgTVywzL1KfB8PyNaeU6I09IIkD0JKWCOSkWjD7xhpFtWWsdrdhil9A0omO4jq3Q8QME0a9reOta8xMMIJGQ6YSGkdSj/msBh2SH64uaNgl4RRN/OwS+0pdQH5Ob2Hf8bdgt457WAHodkX1CIFeF/JaQpbxvklZ62U7HagEtLTglLEJm542xpsh6WpVJWjIaW9JJmDW8lHko4GsDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(82960400001)(86362001)(31696002)(36756003)(31686004)(316002)(66556008)(66476007)(41300700001)(478600001)(38100700002)(66946007)(6486002)(6506007)(6666004)(6512007)(53546011)(26005)(83380400001)(8676002)(2906002)(2616005)(8936002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFU4Zm00R1ppTkxDN2VBR0dBK1poUG1JdTBNdzNkMC9RY21pZXdCdCt2Z3ZS?=
 =?utf-8?B?WndaWEhuNE9Ta2N3RndveitZTUlLSmJpQXpjekF2SitPVEx3ZDdycFB0VGJL?=
 =?utf-8?B?T2F3cW9DVm5rQWxQWGFmSTFWbERCVHZmZUxCWnQ1NUxkeEhvV0lzSHJtaXNu?=
 =?utf-8?B?cUg0R0hWYnhXWWUyS2tualFQWktQWUI3SlZPemNlUnVJYitHNDdFOHdheXJO?=
 =?utf-8?B?OFJMY1hMOXFURytXRDdZbTR6KzZwZU5VcXRlUmpBTzZ3dzZNT2RIMHZhM25k?=
 =?utf-8?B?THppSDNQZ1BJTkN4LzBuWjFWbDJ4dU9yM29SbkpNSkVwMUhaczZ2cUJXeVht?=
 =?utf-8?B?V1Y5UytGamYwVkxpRlhveDhKcEFKaHZQL3RvaEtyL016VndheGtiR3BwcUk3?=
 =?utf-8?B?cUZNK2dEWGxhQTFqTmJqR0ZzYXNDQjB0bXhwbjlvZGM1TStTWVZ6cEpsVFc1?=
 =?utf-8?B?L0dhYmdrNlFEVERoQ2xzQXYvSHFFeFRDV01mS2RGN1puRW9oZmVyQng2aysw?=
 =?utf-8?B?NlVPSmxGakhoRE5kOUJGRTBzZ1VkSzN2TVVFWThuS1hLTldzOTdBQ2FhNE9D?=
 =?utf-8?B?SFlvRURMcXhFUjhENTBNN0QyQTFvazZpeFkxNzZxaWhncmFzN2Mrdng4YjIx?=
 =?utf-8?B?aFNocCtJN1Y1dTN2YTdFWmVRbGdCYkJBVEhEb0JCNFg2c1duQlc2NTJzb3pV?=
 =?utf-8?B?MmFBazhBOTVKSnM2aWcrYk1hcHNxOWV1cDUySGRaZTM3dEZ3VmJkUTdZeUtI?=
 =?utf-8?B?aDY5UnlVOHl5SmVmU1BuYTBBd2Z6TUMyVVVLRXZzc29MZ2pnMFkvc3Y1clR2?=
 =?utf-8?B?ZDNqMjlQM1VkYng0SGlMVWZHbXBodzNxYVBnSUNjbzEzV3RzVEZnejJzMG45?=
 =?utf-8?B?dXJSeHB1bThKekZLN2NCdkQ0bDJCR1o0M2JCblNZb0dzS3JlV0tVWCtERnV2?=
 =?utf-8?B?dElXd0lhNFZTaWJuaGs2dnBMTllwczJEZ24waUV1UHBWOUJlL3N6NStMOGh1?=
 =?utf-8?B?Rm04MVM5bm1SYVc4SDViL05vOFJqck1jb1BuVWtJamtSaEg5NklsNDhsYUYw?=
 =?utf-8?B?TWE4aWhsVE85bmtQc0ZDR2VjbXUyNWNCbHF6cFJ5cEN6NE5IZzM4L0RaWExY?=
 =?utf-8?B?Ui9maVdOSWpFODh3N0puWEhuUWdoRFpxTEpabis5enJTN28yUy9uUjlkWGxZ?=
 =?utf-8?B?YXRkRHZIRDdEd2E0SjdDZjhBdXMrRGpzVTB1WWFTaDYzR2VPVGZuTkF2eWtQ?=
 =?utf-8?B?S2tCY0RvVjM1TXdEck1NaUJmZXgzcGFDWUpsVnJTNFI4VnNhaHIwL0JOaGxO?=
 =?utf-8?B?aGkzaS9hcEZLOEloa3Urbkk1Y2J2ZzlMZVpMVFJXNTA4cHFSZFhoWUdPWEhq?=
 =?utf-8?B?VGVCbDE5N1VmRkRHUWhJVVN6QTJVb3NZK2NUWWNPK3Q2RGsyNGdRUFp4S1hi?=
 =?utf-8?B?Q1k3Y2JQSnBFajRGaEp4T1RNV1c3VG5KcXd2ZUhtVUxtVW5hM1FCckZUN1Fh?=
 =?utf-8?B?ZHIvTVJrRTNLSzBmK2luN1MvZU9SVEdFUkhyQ3VaZ3lmbk45SEM4ZXJIUUZQ?=
 =?utf-8?B?blVWaXhxSjY0TDl3ODJkVjg4TEtxZDhUNkhudlhKTjJraElEU1Z5NWpqZ01s?=
 =?utf-8?B?VENkdWtHMmpWeGZKZTY0ZFBOSUxLUldRLzZUYXM0T3pGQ1k2NzNPdFJYNHAx?=
 =?utf-8?B?dU1xRkhFOGpGczRiWGk2Q1l1WDdvTEtPTzd0VHRHOWJrNEd2MVNwSzlGNEM1?=
 =?utf-8?B?aE5TWkZUbUZRZHBBQ2ZGOStLNitPY3dQS256R0hyYmwyME5Za1VqUFdObWQ1?=
 =?utf-8?B?ZE1XNGxXMlhEaWUvU29RemhEQVF0dGJzOXJlNkpNaDJYM3lCd0xva0EwL0pM?=
 =?utf-8?B?YnB3VWYvN0IxV2RNUkJva3BFc0ZVNnVkcWJuNVE1Q1kvekVLV2FIcVRDeHZP?=
 =?utf-8?B?SDVITnlGVkErUmU2NGU3YU05T2VmUU5hWEZ2NG0vbVFNOGZWZ3JlWngwVk94?=
 =?utf-8?B?UExXcE5NQjlHcjFFVUNKNnBnUXNXTkl0MTB1MGFHNlBuTUZpb2o4QzM5VGk5?=
 =?utf-8?B?bVJNMEFzR3BiMEplc0NHek5IQWpHV3JiNEZPdmNpQk11WkJPaU9JSzV0WXRy?=
 =?utf-8?B?M0FvOTZtTmNiSDdkbm1CU1B3VXpqUkJKbkVIaEY4SDhTMVk4aTRvd24vMEQx?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f597593-bee3-4b7f-dbfb-08dba29bb2a4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 23:09:40.6294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BGOZgebvkVMo8yYyHPFTqWe8OXiPeGnKzScUzb8kXhBMweJZA7IH8WImR30GOBRxc+ajt0tkp8oPp+xMsez4VjEMUJr5UpAPYVs5+A59L80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692659390; x=1724195390;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cEmai1adQFf6srvYyJaox+J9927bgNT2FnK7is1e/8w=;
 b=K6JYUgC56bF32aNgUOi7iY4ozzmAtXbI62BW+MZ+il72iHoOM3x/nkDf
 +fC3bW2AmRm/JpBuBWlBP25QiPmo7GB2Buqt/+vqlGThY6UYo2Fp32qOL
 37zTU+9isY2KbccR6zwmfHfMzLAGK3y0580SYg3kIDB2zrMvlrCPc69KZ
 G7Zke+EManFl0labPfBenafeF6WkrtCoIP8HtEjG4q9EOBWgQcIB7UaxU
 Pumc83fB627sRUOknTsN+jl7Iue+FxmY065c/UIsBOnnm19qTG2RhTCZx
 urEJx/GASuTFZos9lTta1kt6TnxeiFGC6T6WnXdBaPqQkPVi1iGlymyei
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K6JYUgC5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igb: set max size RX
 buffer when store bad packet is enabled
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/21/2023 5:55 AM, Radoslaw Tyl wrote:
> Increase the RX buffer size to 3K when the SBP bit is on. The size of
> the RX buffer determines the number of pages allocated which may not
> be sufficient for receive frames larger than the set MTU size.
> 
> Fixes: 89eaefb61dc9 ("igb: Support RX-ALL feature flag.")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
> v2: fix lkm build warning
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 2293ae78f711..5d15bbdef03b 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4814,6 +4814,9 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
>   static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
>   				  struct igb_ring *rx_ring)
>   {
> +#if (PAGE_SIZE < 8192)
> +	struct e1000_hw *hw = &adapter->hw;
> +#endif

Need a newline

>   	/* set build_skb and buffer size flags */
>   	clear_ring_build_skb_enabled(rx_ring);
>   	clear_ring_uses_large_buffer(rx_ring);
> @@ -4824,10 +4827,9 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
>   	set_ring_build_skb_enabled(rx_ring);
>   
>   #if (PAGE_SIZE < 8192)
> -	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
> -		return;
> -
> -	set_ring_uses_large_buffer(rx_ring);
> +	if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
> +	    rd32(E1000_RCTL) & E1000_RCTL_SBP)
> +		set_ring_uses_large_buffer(rx_ring);
>   #endif
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
