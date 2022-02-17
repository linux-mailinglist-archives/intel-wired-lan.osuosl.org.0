Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A002A4B9926
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 07:24:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49EF46F626;
	Thu, 17 Feb 2022 06:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUsoz8zxVEZS; Thu, 17 Feb 2022 06:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32A776F60F;
	Thu, 17 Feb 2022 06:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61F0C1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 06:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E42B417A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 06:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvSr3LQfrvr1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 06:24:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6ED7B4179E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 06:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645079056; x=1676615056;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XtxtDkHfFfzAdowxDuKDwm3PzNfqdmG4l/lR5j7DSU8=;
 b=Nl+4gAndSIQKn7WH8tqDh97RxJPt6mUDNWYSb0UeKJJ+qKI2dpscFNI0
 NVsw6n/EgB1kAzKyvYnURF4IHQH2Vu3hnCpchFE/N4mT3y45AbWmxRRKN
 2fyrgJ63iiJYwwHu9SMjl8faZJFlYpGSJ4kBKKFpqmcbScdOF/mGnJZP/
 ApOPnpkYNlZnUMwdy2LdaYfVB6Kxb9rQi3LWj4D4kTDsElfdNqM2I6R9C
 fpbkwgydvkh5b42IcYUu36+4STb+COZWSBmzZYNEkKCz/yr2EiukvFcyX
 ee8DSmQVCxyZNBb9HRkzksRjPjRIQxOJNCpk08ojJcgRAS2yj6idrlMVT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250748354"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="250748354"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 22:24:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="545398043"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 16 Feb 2022 22:24:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 22:24:15 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 22:24:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 22:24:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 22:24:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5go8xkH3+7kFzMRasTkMRbSQZxLCWGH/ZGnKU3JAbjVg+R0js+WMcyoV84K+6wBJlS0CsC2azoRS9yAN1NFzx+k/Gd89FKirpI3sUfLq2e/agHt6SyKMdUkAry0+BuA5rUnuYM4uo5p0JCEqI4ktc35cNE2gO0XkiMgYJq3pAV4Xsa1+cdOxr9RsUIi8/fy4Yo4TVes91bB6aKhUjNmZ5UZzAQmfmE0qJVtsSduwJfG7h1gvR1vn4QvnHpgJQ6urgK2jaSTjKkvzpG6roRSvSGbVoP7NrZJM3n+pTYLDICD3vqKS3jI3eXw9OdpqD1xYmmpuHshK8e0s/Y4f+fQxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cdr3jRw1ws3GA67YuDgebubUaoZdt0x4ADLjrthTdgQ=;
 b=jEAJKIGmQSj2hjsvYXbbxbwtrNVpVeHobtvrpU1mi4OOhK607+ITsHi5fjSPWnoqHrfWZFnTzh6eruET0lYuS/fZAlxINlEJvz9YLgDrmEvqE+ZuSuF3zOLnLI/jfPCI3lBrivGAZyqvNCkV0gj/mLm1LK7bBlqaFatRXt8PRuxuJggmhYPYO6yV/N7zGCjdOpFvPvzVVtSFIvnrcrne1sXbiTllHeMqvDuzS3U6TjInGOPca1QQLt3JokFLcBa0VD2pXV6r505yzlo/aRhl0uDoQvDeHXs+MU7CSL27Co4l/3YF1hKgxx/DSJRZiyYOOKaDRXfxXQrZQYW/MAAl3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MN2PR11MB4583.namprd11.prod.outlook.com (2603:10b6:208:26a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.17; Thu, 17 Feb
 2022 06:24:07 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::5833:873f:6beb:d2e8]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::5833:873f:6beb:d2e8%5]) with mapi id 15.20.4995.016; Thu, 17 Feb 2022
 06:24:07 +0000
Message-ID: <063091d1-5d59-3267-b2bd-41bf0dd1ed2e@intel.com>
Date: Thu, 17 Feb 2022 08:24:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.0
Content-Language: en-US
To: Corinna Vinschen <vinschen@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Vinicius Costa
 Gomes" <vinicius.gomes@intel.com>, naamax.meir <naamax.meir@linux.intel.com>
References: <20220216133135.356870-1-vinschen@redhat.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20220216133135.356870-1-vinschen@redhat.com>
X-ClientProxiedBy: AM5PR1001CA0069.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::46) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fc9a23c5-10d5-4037-73ed-08d9f1de19f1
X-MS-TrafficTypeDiagnostic: MN2PR11MB4583:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MN2PR11MB4583CEF143271FCC5C028B9297369@MN2PR11MB4583.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tJfi6iyQqNxfW3AJ6tI+rZcYf+q3Ls/3QlXFOl/qw+j/tqpEg603G1F5BHjA5MLOyRp2mtRWaX3d77aXobIC+ccAMommeTNiZ5QwWbMOf42Wu2G615DOmAiJrCt3nYMwahnz1V3wjMqaogiQnYiZMDD9z/M3nGXjDKP6rsn5pwRZ3E8wQYp4ddRAwno1BjxwiVDecymKZIFDj5RTkrGFjl0vS2iz/AmELr1/8ke8x8hEz4QKgI6Ct9j7q2f25nJSi4YRQBCKFHlM/npuqOb1bfdITAbV1V1tgLYKEsgUwRLT9O9j81NyUjBYs1G21unBxhct7aDr7TVyY9ORYbmVYPieIVBXKoDksA/+ThoW4CXzsxWEI4LD6GtqDq9D9LOIXDc8f8pmBmFsT2r6/3+LsdzKBRT0ib1RrBNkrwlP3LNFS3BP25RZCdjkrCHHwyp5v38cL22OPIqhdYvO3UDgjI5VgAlvYbl75jsg2BGV/Hm3EiGHSpQyaF9+okP3ZFZIERAjZvPySDEcnpVv5F/OBS99aeK9qjvtVfJylxt+3ktkIGechlK6RovL8iATnu4EEkyDG4H0B0PE02gKMYI+R3PXxbgdjZXq+GC9XVQgjCQjnDmmJ0lkbUjnwz//Qr/1/ftETN/XlBHzjuK0K2WDeuhtj79FBW01LJK5Gnc0vdeFCrN1YltRywWcFejMpHHFflgLGBsj+yLkgjGDBv0KPc8P6lVKjgdZs4sR2qo54f2qYRnoxRNiqmaRpPuyJoJY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(66946007)(316002)(31686004)(38100700002)(2616005)(86362001)(36756003)(66556008)(6486002)(66476007)(186003)(26005)(6666004)(6512007)(31696002)(2906002)(110136005)(508600001)(53546011)(8676002)(6506007)(8936002)(5660300002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmhtcVhnaHBoblBmK25oZFJTL0Zucmh1djhpY3pPdGRLU3B4bjEveWwyanlP?=
 =?utf-8?B?S2lyZ3dOWWY2bXhwYVFwK1lXWnowaUNWdzVlZHA3dnduRWtHZ3c1MDJsUWdY?=
 =?utf-8?B?aFJDZ3FVZ2EyQXdaNGtiU05nQlV2VCtOVkV6S2gwUVFncUJzQ1FWNzQxaGFV?=
 =?utf-8?B?MTdJeFdvazRld1VsUG1jbjdxTU5mM013U0RtTUJYTm05YlFjVWVoRkphdW9s?=
 =?utf-8?B?N0J2bGNuS2U3N3QvK29ZVG1HWDlOT1h5Q21iTzRuNXJzNXZDaWVNZkRyNE8r?=
 =?utf-8?B?OFRlMFJjR2FpMTNsY2RIWmx3azloWUk1UldkOW96dkQzbEJNNEVzYXZlR0dv?=
 =?utf-8?B?NHhtVitxclpzRCsyRFpreTlkUkdNL2xocDluOUM3ZFB2bFZnancwVU5kb0dV?=
 =?utf-8?B?THZNWEsyVkFtN01qQXhvbkxaTFM5ZmxzSlZhVGxFUG4zMzdvY1ZQNkI1TVNP?=
 =?utf-8?B?cG9jNjhuWEhPMWRLZTJPYnhqT1BFYnhOb3lFWkNSQXFTandUNU5iSWhtWFh2?=
 =?utf-8?B?dnBxSDdNRXJuaUl4USs4bzZWL1h6Q2pNOWx1dUlBVlI1Ti9Xd0ViMVZRbzM1?=
 =?utf-8?B?eHU2b0FlUzRnSFhicmgxOEpHbjJJWTFBZ0tUU0tOUWc4ZUR1Q0hlM0JhVzRa?=
 =?utf-8?B?VmFUT0pkNk05OFRzOE40WVpvdVU5Q1FUOVhqc2J4UElRbEZYOEVoeWRxMVJG?=
 =?utf-8?B?N2VzTVBnYnVjTUhNR2M3TXR3S2NLUVh1cDNyOWUwK1M1Nitqa2w5M1k4bUFF?=
 =?utf-8?B?UUVkNkl6eXNXa3Y0ZXNpR3p5YXRqZEdZTS9GbTVsM3I1aElpRWR3WTB6c3hP?=
 =?utf-8?B?SndrSkdtbFk2RytGSTZFRHNQMng4VzgzdHdreDZ3QnRjc1ZqNTNlcS9KQlZB?=
 =?utf-8?B?SXBKamlkQWI5S2NoTzhzUzhsTDJwRUtmS2JaUXlxN0tTb3BIUVIrQ1Q0YzJT?=
 =?utf-8?B?VER5Y2diZmM4T0krTCswT21jRTZZQUhUaHhPSldWOUJ5Ymh3Q3R6RFk2MlpT?=
 =?utf-8?B?WjJ3RWZVLzNMMjcyazFYVTgzbUVMMjJ5M0V2VVJLK21NdlBlckkvWndncjFT?=
 =?utf-8?B?VEpGbWZLbHFxc1ExbEVERkw2RXFyUms3YTE3bmRUV0ZndDcxYm43bDhZRmwy?=
 =?utf-8?B?ZnpaVjJXREppTm5PM3B2dzVkK3phS1VoSWY5ZDY2UEtXWmM3dkkwb1ZEQkk2?=
 =?utf-8?B?NHZDbXg0cm1qMUo1RDNnRHhVYmhuWmVNNjgzU2VsODNSbU0rT1pPWGlFQURE?=
 =?utf-8?B?U0hnZXJuQnJrLy9CSEpZMCtuR3FVSCt4ZlJTRStKYlpqSnRDSlQ0eE4xbjNh?=
 =?utf-8?B?RTVDOTRFSTI0RG85NjhXZW5hcHFEc3p6blFVMFNRdkQxQVAyWTYvVENtZ24v?=
 =?utf-8?B?c3o0VVl5Z3MzcHE4K1MxRGhGendWWCs1Z29yblFlbHZ5UzRMRXVka3JkM3JF?=
 =?utf-8?B?RGVUMGNYTzFIaVFUYS9tbUNpN3plc1phQ2o2N0Zza215VnVnWEo0UTVRbjdF?=
 =?utf-8?B?ek1xbU9Vc3dGL0J6eGtaa21temxpdkFUK0dCa2hhUGtzY1VyYVVCOGw3R0Fs?=
 =?utf-8?B?SmhRYjFGekJmMWl1U0hMdWljSklXQ0tFYlFvTVdrdUFJQVhhd3Q0Qkh5RDhj?=
 =?utf-8?B?VS9NYlQ4R2NIQUZieFNRcHo0WTQ3cVMvNXgrUDV3NFlEN2VhdStmbHVzdkNT?=
 =?utf-8?B?Yy9LSVI1QU9QYngrb1FIS3V1OGpVWW90SklMenY4dEFJWE5NbERSTjN3TGZo?=
 =?utf-8?B?M0liSUNySUpLLzBBcTlPb1NjVHFNb1ZOOW9NMzN2YkZqTjRUN1hmT2duYmJj?=
 =?utf-8?B?NTVoMTZ4UmRXTU9GSXNkb082aTJKM1V5VVh0UFVGVzVKaWxJYkYrUk5rdTNE?=
 =?utf-8?B?bUNRSFJ4Mlh6bnFDdTdlWTFZbnFycmlBaGQ3cDgwb2VwYjl5NCtPRTRlSmdp?=
 =?utf-8?B?M3RkUkNMRVVydlA4dUdqUnN1V3FCK2E0MmRGY1NMZUp5aEJCaHp3M1pYVHNT?=
 =?utf-8?B?ZTFKb2Qxb0Y1aWEzNzU2U3NvNW1IY3h2YWhVaUZvTVFsZlRaeFl0UEExQ29R?=
 =?utf-8?B?K3hFWXd6dytJaVViSWY4WjVRSlpTNHdKZkpwUjhNTU1CeGtNMi90QWpkNzc4?=
 =?utf-8?B?cVdIZ3lNUWJpQTdsZjNPNEZqUFR1U2RBbmxzZmVHa20xdVZiN1dtOVdqS21N?=
 =?utf-8?Q?cnZsETTxFJ4QSiWseQquuMs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9a23c5-10d5-4037-73ed-08d9f1de19f1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 06:24:07.3528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I/+cIOKiu2DSv+HXszM67zyfmx/DgGKoeSSjyZAjHK4vCHKiO0R39XW9TnQLg13VarVxK/HWbBIHLHbJZFl1CQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4583
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] igc: igc_read_phy_reg_gpy:
 drop premature return
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

On 2/16/2022 15:31, Corinna Vinschen wrote:
> igc_read_phy_reg_gpy checks the return value from igc_read_phy_reg_mdic
> and if it's not 0, returns immediately. By doing this, it leaves the HW
> semaphore in the acquired state.
> 
> Drop this premature return statement, the function returns after
> releasing the semaphore immediately anyway.
> 
> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
> 
> v2: Add "Fixes:" tag
> 
>   drivers/net/ethernet/intel/igc/igc_phy.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 5cad31c3c7b0..df91d07ce82a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -779,8 +779,6 @@ s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data)
>   		if (ret_val)
>   			return ret_val;
>   		ret_val = igc_read_phy_reg_mdic(hw, offset, data);
> -		if (ret_val)
> -			return ret_val;
>   		hw->phy.ops.release(hw);
>   	} else {
>   		ret_val = igc_read_xmdio_reg(hw, (u16)offset, dev_addr,
Thanks Corinna
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
