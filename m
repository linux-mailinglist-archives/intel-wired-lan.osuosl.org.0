Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F265854C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 19:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D9A0421CB;
	Fri, 29 Jul 2022 17:51:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D9A0421CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659117100;
	bh=xrGxvjuNPZUSkMiLvc3Kn+/kV9uDBo/dN4CIJaNd4SY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b/h5MXou6t+VquNLd51y0gd5/b14mXDJLKcQhB7qq8K5yY8rA2yYqKjnGIX6+wyTU
	 yKmb24YwKMB6dbcm+Tc+kkkML4hea6Av4BISHwrW99aBOnSZ35JhAIkAluMjaxbMKI
	 FFKerQ6cb4UPbGnjjN7UBEgcqO1q7cPZ9Pd2fEbjYGJhznMBd6UHDu7rNsCVDzCjKs
	 Rsd98FlBXSII0Jk/Y8PdSBxyibue/90AIBW+Wh2TTFNTUct0A47uekpqHq20fJi6o6
	 WHamaLAY2UsmRFDs9esH4M/uQbRN0s1/RnZoGlc8DWfxCk2I/ddR6WIIwCAlQC1MLP
	 itlc0fbhpb7Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 77naGtbVjefP; Fri, 29 Jul 2022 17:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAB1440228;
	Fri, 29 Jul 2022 17:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAB1440228
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE4A71BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97E8560B32
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97E8560B32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfX_b4rZAiW8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 17:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8176D60B16
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8176D60B16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:51:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="352818117"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="352818117"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 10:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="847190691"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2022 10:51:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 10:51:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 10:51:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 10:51:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=la3PRfEzKGAV4oNHyQW7zWrMM+NfQKcn7rtpsJIr4/Tl1oWzK/zZ/1OCXSKDPxk41DlIRDhDsDrDCyJujA5RgVmXo5lHDx3jV1GX9P9OoSIiSP0w1WRn5y5YyWnQdZsd8FcnL891DJtTeb3/GIYFVO/68tkAj+63rjDrh02m2Mzpun141xhimpacuq5iSBF4TgRDxG21ikBUOwsqvgCjraAgDxTfhwbkYYMf0lqRPkMyEcJP5Hvzl3bbCLy76vFNqmidXtzLdysq4YIAMk8AfVz217GvV35lchnzLNxSnzeOFWLD4OBjWqdiyt36dlqpM2dYNCg/uCC7e1AdMnOsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixN3tb+r20qc3VFYPTZ3zH54kCxvAv00acfDsFxagVI=;
 b=UnD3QLgWVspoB+vCgrklz2N6f09KY/QLGd+fw9m/4WG9m1KS1Xe/PYBdX/jOJqGXaKCmNaZX9GoiGuikm9B649Ip1WJ4Onz8ttbgsV+PTRm4cBn1OAyKU1RW4dM28nynyhPR23aHLn4RlanVcAcQdV+wYIa8pJIiznW9v0qiaARJNxH08ZyDAw/uTzzczXstguxkZ29T/TUZmTNzBRd5nka2q4Le+hPddfUZR9e0vHTyl8u0F/eGUxHOsfZ1Y8GFWfasgO8JIBTItK6VsHTARSkQiHTcE4xWxA6tZud/E02pI2izOlcSbrhy+NxpSiUNyjoptgKo//RANNpM02l2Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL1PR11MB5239.namprd11.prod.outlook.com (2603:10b6:208:31a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 17:51:27 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 17:51:27 +0000
Message-ID: <2744b8f1-a669-cb2e-73c5-1402605cc616@intel.com>
Date: Fri, 29 Jul 2022 10:51:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mikael Barsehyan <mikael.barsehyan@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220728192332.159990-1-mikael.barsehyan@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220728192332.159990-1-mikael.barsehyan@intel.com>
X-ClientProxiedBy: BYAPR06CA0060.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::37) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38c9e145-45f6-4ded-1e5e-08da718af5f7
X-MS-TrafficTypeDiagnostic: BL1PR11MB5239:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SphWv2OfxFKtE+GZ2nmvR1lb+1pFBB91LKUiFtvQO66MwRX/VnjAxEGlbuGm9ECy8e8qB+NpK2Lbcy2tciFvxzljS9Yku3Xpj/sT0bBVg6W/0Fz/K1bLK9uR0Ze77z2HLMkSV+zqbOfOhwtqQVcu73kveokHU8WY4B1t1cLU+dUM+QqBJSgH9Y4+IBQMJya2ah7cLQl7kqwCT/1NH72xHTKMI0/qTuKuz+DSkOrkVVeuwcKp98tRJw/oXp1VlBhinkJ3K1uWi1Ln4my1EFH7b3Xkf+RYAlFN44LH6jiCMm1gW/Ed5Lk4kfWGMRMX+E/a6zkZHEO8wZZrZG1r140T+0pgOhK7ctyM1yt3UD/HAlYLAOvX5aouwE8a3rJ24CPOFzYUihHb6h8JDPwmS4T1tXvQ0oWCnU6w6c9LolvG7pPSAJIWIckl/pg54CLp46+nYLDteoJWHcPgpddQGD4ph0a8/EdxWwBJDWFzkeCx4gBphevhec8cu7suB8hoNHJNliuy5xSgQc+nj1y9uhn+QueMfwnzt+koe1T4kUcBXu44cP+IFbpwOWJkHaOGwL/u0xIeQAZhHfylz7qahYpmLfRdk+6XLOQe4lwFYf/G/zHG63jzRIBEkkKxN+hU5ECQzvC5D+7yavKzZ5x29GF2gDrQZTjks5YRqE38DyGBUgGoB2HoneNOBTio9BOwDdotJGBB6eKSuC7mpfqelRmt4U9rKYuT/lQAvu0y0hTAsxe0REw0iW5OqivwabFSK2GdrwknRo8s5BgIdhgqfDvv43DPYApIkbnUlwm/hh3kJY0NDrQ+sid7P2QAjKqH9MS3GPTUD6yFTd+LNi90iMLYaw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(366004)(396003)(39860400002)(82960400001)(6666004)(186003)(41300700001)(66476007)(66556008)(66946007)(8676002)(4326008)(26005)(6512007)(6506007)(53546011)(2616005)(2906002)(316002)(31696002)(107886003)(478600001)(86362001)(6486002)(36756003)(8936002)(38100700002)(5660300002)(83380400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDYybDFwelEreWtuajN2M28xRmV2ZXc3WkRDY3pTWVhRZy9IK2QyNm13VmZY?=
 =?utf-8?B?aEQ3aDMvZ3RMamVnbDcyeENCU3FlOERuS0pTZC9UZkwyVkxSUEpIYVRFVWM0?=
 =?utf-8?B?T3VudXFtejkvMXpTOTN6ejRucmdmSFZ2N1A5K3dFR3UyTHpyK3A3VHNKei9M?=
 =?utf-8?B?TStqNjBjam9BUytaSnVyeUZNNG9SaGhXTU9HL0lsYlppN1ZIRXIvRnRsQ2ZZ?=
 =?utf-8?B?OUFJYXRYR2pBUDZEbXZLb3NwVTZBRGgzTExkQW9nOWkveW1HWEFBTm02NG9H?=
 =?utf-8?B?b3FLKzJJRXlvQ1VCaXd2QUxwWUdZMFhVbWxMeU5vMEprYkRYT2h4aVJ0OEha?=
 =?utf-8?B?M0xielRHSG1yN1NubG8vdVVNK0lEMWhxN1pEUytoY2ZUNy83SFBGQ0xEa3Vl?=
 =?utf-8?B?YVhKV2IrY29kQnJZWEcyWTlObm1FaDI3bjJUREJ3VmJKZXVydERNYkF4ZXZK?=
 =?utf-8?B?NjFqak8yYStEWXpXNlhrRi9jb0tvTThjTDVIcXVVUzNnV1l5ZWZER2pJazVh?=
 =?utf-8?B?K2JxS3FuNkJFR0M0L1pyYWM5Wk9hU0g0azJLcFlrNUtrTUhZSlJPV2YwMGtU?=
 =?utf-8?B?b3k1dTh1QncySkhoYjIybW10SDMvcWZlMGVwWWdxYTNYT2I5c2Q1Y0lHWk54?=
 =?utf-8?B?aG0vWjN6SzUyNVYvaDBZTCtTU3ovaW1LSkg3eGVYK1BkNk1JRXlhS21IT0Jv?=
 =?utf-8?B?L2tYQW9xV0I4RWlYZERPNTFkUUM0NUM2YzF5VmcrMDdzVkVyQlltWVh5L04r?=
 =?utf-8?B?ZG5SZFFMd0RuVXRSeTZhYWpGNVo5dCtQUFdWRzJOSXlkSy9RNUpnN0pWVFdo?=
 =?utf-8?B?WVBDSXRjWEdaNGpVWHdtNkxEUlgwSlpQd1puVlhhaCtGSHJZWDZiSk53cTBX?=
 =?utf-8?B?eVhmSk0vM0dJMVdkdGNZVU9jbExFd0dGcC9BMVdVaXA0aHRZVU1DbThCbkM5?=
 =?utf-8?B?SmNCbEF3R011MWV2d0dlbkRvTWVDNlY4aUhYWWxQb041c25lVWd4dmdWZUds?=
 =?utf-8?B?cUR4ci94c0pmb3lCZkZUNTh2MlFLRjA1WGNtYkdvTkJKNmNXZkVOQXhtVmt1?=
 =?utf-8?B?cWJZM013cUZmRjBDZmVyTXhkNTREWTJlN2lhY1Y2MTNXOTZhLzlWdGVtc2xR?=
 =?utf-8?B?Z0hpRzNvN3l6WjhlYThDZ2hEZnZKVmNZeTByemtSWExmLzVTa1NPQS9CMkEv?=
 =?utf-8?B?RVJmdmhpa3RFWTExbVUra1h0UTQwb0p4SFdxUFVDV2ZwS1AxMVZKVVBSalcr?=
 =?utf-8?B?RkROT29wQ2RTMXJkSWdwQTBRNjdncHF0bFVUeW5lb01sVjhmZURBaFpxTThI?=
 =?utf-8?B?bk9xcmZBcEMwVGU5QW1jdjZPNGpYcVlLdlVsUkpsa2ZnZ1hUMlVZeU11RHJ1?=
 =?utf-8?B?M1crYllEZitpd0VyQ3J0TTkxMWkxaWNORDNzNXRyTHJvZjFrN0hLY1ZWY1pi?=
 =?utf-8?B?MTQrTVZSSkR0WjJhUUlXVTRKbm1qS2VhNnFGYmEybVZqaW1tVThXYkQ1Mnlk?=
 =?utf-8?B?QUxnOXU5NjNqZE9EaGFVUm53dVNkOXdVZUNTMWsra0QrU01VME5OalZ0cmdm?=
 =?utf-8?B?NElIN01TMTVUMTVHZkZEYmt4MnkxVjZOVkxBRDg5RUMwQ1VLdERnbjNuMmpi?=
 =?utf-8?B?YWRDckU0a2lTNlVuUzdJZSszNnJza2o0NlRoNUhHZFc3WVdlcVhYblp0Rmcw?=
 =?utf-8?B?cHlsSFJHbm9naWQzTWVKd1hEVUZ3VlJYU0NQMGNyRTV2WGNzMTJzYTJXMnpZ?=
 =?utf-8?B?Q0tSdDhQNHFxRzNWWHppdWpIaC9YQXE0TGNuNVdTZmtDd1FVOEt1WVlLMUlt?=
 =?utf-8?B?L1RjWWp3dUpTL1hPRWh6dkNhL0RSRUNFUm9iWERoV3lOeExzMk5Namc2N2sv?=
 =?utf-8?B?ZHU5UHk2N0pVRjZCeFdmeFdrL2hZUzJVcmN3VlBMZU5FVC9LQlByVzdMOStm?=
 =?utf-8?B?YjhGMmkwUjdyNUsvb2oxRnV5WEZXTjZvZ3FnU01mTDZpQUZTSDZwbWYxUTZG?=
 =?utf-8?B?Z08yajRCNy94MUlrd1RkZVFVbmpBTW9WRDYzMVd1TDN5MDYzczNzMjJ2cnVt?=
 =?utf-8?B?RVVNRXF6eFVDZGpwWmRLWG5rZzd2dE9NUTRsTXBxblNiYXBVeWxJRTloYlpw?=
 =?utf-8?B?dVUxdGp6Q3VXb1FEODI5dmVDcUpNQjFZV3RLajM3emJ4ZWdxLytLSis0d0dk?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38c9e145-45f6-4ded-1e5e-08da718af5f7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 17:51:27.3947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QvWdGyVv6jdE1u+GJgvGJvUIJQenexyTonbFEIP9dmWQVAD5mBoX3eug/P7vRjkMrb5iGIFxiaogDM7DSNSXQLh5PA7HNsLldgX++StBbIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5239
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659117091; x=1690653091;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UeuFFW/t/EH0vO9Taq9yvrnKWcsjEaGdUdCdWlivlgA=;
 b=CBM5lysCMBCtLqUIRMDa5wnOMnlCOUnvWLdhcVaXy2WLCh6zcrLUSGGX
 WoVL+zZTPMp+6BSC2rvFTMZgBoHuxCSJrT/SKjxmWxfJ8FNrGJqbWOnW/
 lPW81O7QWXnqwwVXuTXYdWwGiNY16YoQHAHMT3QSVojc7Pf0TzqfwvYtd
 PE7V/3K1IWAr45ONyIBnZjdgXdzKTHG4ZOYOGAhuGATliZEi6NNiL6kxk
 4g2Mh3v949bu5dAKNqj6RzqYXc+5YSvoWBiTqUFGgvaNnHys95jC8yiH3
 l43+KOa81o3zz4rkV+4YxCvEbvXaeipwYjUMoAoxJEh03YfwcmUOf7481
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CBM5lysC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Allow 100M speeds
 for some devices
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
Cc: Chinh T Cao <chinh.t.cao@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/28/2022 12:23 PM, Mikael Barsehyan wrote:

<snip>

> @@ -1503,20 +1503,22 @@ ice_get_ethtool_stats(struct net_device *netdev,
>   
>   /**
>    * ice_mask_min_supported_speeds
> + * @hw: pointer to the HW structure
>    * @phy_types_high: PHY type high
>    * @phy_types_low: PHY type low to apply minimum supported speeds mask
>    *
>    * Apply minimum supported speeds mask to PHY type low. These are the speeds
>    * for ethtool supported link mode.
>    */
> -static
> -void ice_mask_min_supported_speeds(u64 phy_types_high, u64 *phy_types_low)
> +static void
> +ice_mask_min_supported_speeds(struct ice_hw *hw,
> +				   u64 phy_types_high, u64 *phy_types_low)

Alignment needs to be adjusted:

Warning - CHECK: Alignment should match open parenthesis

>   {
>   	/* if QSFP connection with 100G speed, minimum supported speed is 25G */
>   	if (*phy_types_low & ICE_PHY_TYPE_LOW_MASK_100G ||
>   	    phy_types_high & ICE_PHY_TYPE_HIGH_MASK_100G)
>   		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_25G;
> -	else
> +	else if (!ice_is_100m_speed_supported(hw))
>   		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_1G;
>   }
>   
> @@ -1566,7 +1568,8 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
>   		phy_types_low = le64_to_cpu(pf->nvm_phy_type_lo);
>   		phy_types_high = le64_to_cpu(pf->nvm_phy_type_hi);
>   
> -		ice_mask_min_supported_speeds(phy_types_high, &phy_types_low);
> +		ice_mask_min_supported_speeds(&pf->hw, phy_types_high,
> +					      &phy_types_low);
>   		/* determine advertised modes based on link override only
>   		 * if it's supported and if the FW doesn't abstract the
>   		 * driver from having to account for link overrides
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
