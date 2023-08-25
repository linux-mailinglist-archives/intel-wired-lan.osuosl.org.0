Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0341C7882B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 10:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB8F160FE0;
	Fri, 25 Aug 2023 08:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB8F160FE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692953800;
	bh=WiSEUwlv39uCm8J/iI5VhD16f5lPPk4DjHCuzp2aEOc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=krt5k3PXOLVwj8UT5+Uy7T3bz9pdsMQZS9D3+2tcQLNegQdu8/PczaP2vOiH0ESeD
	 Ljg8DlrmxDkZNFmSVlE3Njzc6PxklDjWll1/r0Y95cniXeqGtrvCGnuBkS3rtUhEud
	 5lmg7rKdsMawr1mCKbTWcuW5trirbHwaZv/rQ+42GfpvTK7KWpD5ZbmTjSdSf6sLEg
	 8mbuyw/fX4vy5A5UnqnX1XvPwRM5AkOPU2uJy3z+aIQMI/gCCS6yJ53o8dLeA4DH0F
	 p/rMyZHFFko9hd1hD1fXSBgxBoExfgzjU4vbq0YqUhYoT6WSEzhpNDjeiZV8IaLo+5
	 Iqm527jgwa/4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXMNMtvIEoV4; Fri, 25 Aug 2023 08:56:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAC9960F98;
	Fri, 25 Aug 2023 08:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAC9960F98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5540D1BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 08:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36F5040278
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 08:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36F5040278
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXJHM7diEdHY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 08:56:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3058540211
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 08:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3058540211
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354998232"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354998232"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="807476514"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="807476514"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2023 01:56:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 01:56:14 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 01:56:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 01:56:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 01:56:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtT+a9ZqLC3qOP1Rn1hcZ2zqV+eKOa/Yt/17eM5aHASb9e4NkLqZPgGW0hXs5Ah6HARd1MTcM+FjsB8QZmvLqo++kFTguBppJx31bsTcp6ZTn0iICmiaFLPyZBlTqNfbt45Vq5yOxkjFxxTDmnKZcFyialEJeWB56oORbpxYZQploomN48H2auTdmuHEsFnmCto2IQh/AX7eXQI3gqKC4Fdp5OGumyjE3EoBm2u2gx1iE90VJbAGK8XTdERpvskZ3IJ5OlH4WwTjRpYsTgBNybsBef8sBBTpNV1qdsGTorSfFzmope4/QYBJbWl4I2BP3OGiec3VYYrGLSIeCYYSxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yzHG31FvpJGV7oMpAwPn5Ctwf267bJIsEwYYG5WY7Ts=;
 b=AyY/UC+6GmMo6+JF0Supu9ZV3bLxC6+zkcf1jps8GbmY37hbc0BhyWF5/SmZX4PJYebyOHRN5V8ku7pBBiYSOz1VCa/IxMY9QajARzKhMvFphbS5reKUNUPHKU0DuDnO/Vrmp3BDhcqEvNESTYn2vUPXea2/ljnA4jZpbQt2myIpKXUYc1Eea6UULl4a80DtnW7v7LN3tMt/tRR0mcojhn7wPR7bUJzivJIbmF2pBZ+INloOR5TPRI2ym7AN5ZfIEX+VIRDUjAAKxdySerOFjTMIPjj65EpOpJuJaN9Or/YwxLd8WSFyrtc1lh1LVBUq3/fZh07J50ptQHyPKcVSjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 08:55:55 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5ef8:e902:182c:c41e]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5ef8:e902:182c:c41e%4]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 08:55:55 +0000
Message-ID: <10f610ef-41b6-c3a6-787d-2506c7a25e2b@intel.com>
Date: Fri, 25 Aug 2023 10:55:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: "Guo, Junfeng" <junfeng.guo@intel.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
 <ba8b1093-c68e-a707-8d89-edf7c7f07965@intel.com>
 <DM6PR11MB3723B0A7ECEA7F8A06805D7BE7E3A@DM6PR11MB3723.namprd11.prod.outlook.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <DM6PR11MB3723B0A7ECEA7F8A06805D7BE7E3A@DM6PR11MB3723.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0205.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::17) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DS0PR11MB7262:EE_
X-MS-Office365-Filtering-Correlation-Id: 2146a728-e48a-4d54-6f29-08dba5491767
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mN6/9h3PGgjKVpC/xOZu444emCCj03xmaUqs+OcaI/5mpcD8CM6315E3Y0bU386o7OS+WuOTjRgOPxQgV1ctX3Ly6WgvoZbMcB62WVokK2NRv0VUaJBQM7YDOOoQfwrDVa3vH2a2nEbUm3ZAtF9y3SpVCbFffvBxHqPxicvF8X8EzPJ2qqAugstiPuVXhsghk08rcay1UjjJ645gzXizpKbnP3Usc6ePdybctcOznmDyV9tNrGWa41qkWKRb0YOxZ4wIdmJn0LxU2qJTzuiBp9uz4INtLaxBlAVrz9vzytWihbuWTLhH5Aa0qgPdlRPLWO8S3L3dWlvUChwU4d72zhPs7m96vBJBn4mpL/itbWQan6r0Mb5F9zmm2dB2hQzriU6h0RM/s9iQDZ5CbUh80g64WKlL1kYliIJNwtLPDALbD5w1CR/zolVMB0qvkWjjAiuldTBCqH5ziJbkps6bEfJ3tehr23svQlU3ii3Q4/n7QkIZMx353GHXcFmQjut1mNT1W5UDSxekI7+hLibpKjs0pJR2fVEKDzfWeMVU1LmF82L01r6d+egnOf7uUw4098SR8yjTQcXUZ1xAigIDvG01vvWubDxG4cDm5anT36wZs9HOLkdt8a4ZZEAsPCSl9hOvGWNfm84RN7nBCuVLsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(396003)(136003)(366004)(1800799009)(186009)(451199024)(2616005)(5660300002)(4326008)(8676002)(8936002)(6862004)(36756003)(83380400001)(26005)(38100700002)(6666004)(82960400001)(66556008)(37006003)(66946007)(66476007)(6506007)(6636002)(54906003)(316002)(478600001)(31686004)(6512007)(53546011)(41300700001)(2906002)(86362001)(6486002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEJHKzBjVFJ0ODNLdFB0dTYzM1RNeXdWemhOc0xlbFNoZG1OdWV6L1pGNkRQ?=
 =?utf-8?B?dFB6VE9KYkk3RStJMkxNWWlCWGk5M1dtYTQyazBKWnM2WGVuOHJ1UkdnazN2?=
 =?utf-8?B?aGNKWWRzMGV2M0ZSNzFPUmVVSEZQTmhpVFhTWmYzdFBTeVMrNkdJeVZiZTQx?=
 =?utf-8?B?alBhenZ0Mm1GTFRvcFhmYXRhR24yYU9RbmF3K1phd1RyYVAvOHdkNjJxOVJx?=
 =?utf-8?B?NFB2cVlGZDV3c1NrR2UxcUdFOWhvSHhXaVp6SjZyaVZWZmZvK3hjWC9jQS9n?=
 =?utf-8?B?TmpEeDFNWkFOY05nZFRGU2s3d3ozNmhUSE9VVS96QjdISXRiK3pQekFsL3VU?=
 =?utf-8?B?VVo5LzRsNkxmNEZZQzBYTHVpVzZvbnlLbXdGZExDZm5PczFUcldTOHJkS0s3?=
 =?utf-8?B?djU3WDYrZkYzbnlQVTBlWC9ZVzlRczkycm5jRkZaT0MyNXQxUnI1Zi9PZEta?=
 =?utf-8?B?V2VWRWNyNmMzYlIyaUVlM3E3Y2dyaUlFUUx1cG1NaUdqazB3V0RqaHdwS2Ft?=
 =?utf-8?B?OUY4aThzZTR5K09ZNklBeVA0MDl4bUF3eVJ0QTZyalZtSVVjMGYrbFRjU2R3?=
 =?utf-8?B?bXB5RnNBR2dYQmdDU3R1WFVwNjdzYVg2R044Z3krbzJ6VDRwNEZSQzBwQ0ZE?=
 =?utf-8?B?K3BXZ3M4YnJRQmNNSzNLSEVISDVNOWJ5aDY2MFpBZFBXSGp1aXdGMksxbE5z?=
 =?utf-8?B?SzBnZXhhcDY3TVdSdUxxQVZsVG1BaEY2K2l5elFaY2lXeFpPcDE1NlZGVXRL?=
 =?utf-8?B?WjlnaitRWVFUS3RNQlc2MGpnMTg2ZXlVY2ZhcHoxeUR4UUNTZFRQUSs4Z0gw?=
 =?utf-8?B?WTdqS09XckRmeXZhMHp3US92OU5WSWRyWWlPa3V4RXMrNjdlMGN4akNqTWsw?=
 =?utf-8?B?ZDZ1bitwamZadGRNcE1VRVNFd1hKSlgrNG9Zcmhld1B4RnJxQUprNzJDVmtS?=
 =?utf-8?B?Qktjai9IRDkyNGc1bnZYVTBDUnR4OVpDQy8xY3BJdTR5TVB4VlV0R21yMFBK?=
 =?utf-8?B?T0syVU03NWJoUXdkM0k5UWRSd2ZFZmRSQWpZOExUWjFMMnI1bC95TGR4Q3ZV?=
 =?utf-8?B?MDFiaU0wYzZYRlpwbzExR2IxVVlCcDZMelZmdkVXZFJGWVY5Y0RjYUFoNkx0?=
 =?utf-8?B?VE9pK1JnK2d1dUdrZDdqb2pjcFRoRUFxMEl3NEozQ1NnWEdxM3Y4R1Z3eElN?=
 =?utf-8?B?Z2FwcVdsT09RRnFOajJSZGhoR3lYY0ZLUWVsYXNBTU84YmRCREppZXk3THl2?=
 =?utf-8?B?bUZqQTc4Yml3QVBvU2xuQVB0eFFyRWkxNFJVV0NRUE5SM1FtbDBqR0pHNHRl?=
 =?utf-8?B?ZlRvZ1ZkTVhtSnd1M2VKUjZQdjkxajMvYkNHaXBOd3FMRlpzRmJUTzdCREZ5?=
 =?utf-8?B?T0k3QzhBQXlzb0M4N2hKdHFrRUtWVklrUEgyRmJuTFhPUWFNTksybndydTc0?=
 =?utf-8?B?QW15Y2svS0dmYnFhczNIWTdOUXRZTjYrODdGbVd4Ry81QXkxczBVU0ZVT2Nz?=
 =?utf-8?B?Z2c1bDcxbUozSk0vL0ZNZTMranBTUnZYVHZmdm5wOUd0SmtQdkpUUWJqVVBq?=
 =?utf-8?B?SklkaVhidUM4cnRLamd3UTQwbHhnRkh0L0dKTVJudk1ONEhzeGZiM3hZZFVp?=
 =?utf-8?B?R25reFlDc0poTUpRbUpoOTl0T0NjTXIzOUtzanR2NllvTW15VDk1S2JXTXYv?=
 =?utf-8?B?cGtQOGtRM3pQRnlDdDAvcG1rVEV4UHdXKy9xN3VhbWVubkl1SzIxYW9pNUVU?=
 =?utf-8?B?V0pCZlZDOEFJWEQ1aWJMRXVTYVJQRktzbnpia2RPdFpxTzhyamFsL3o5L25i?=
 =?utf-8?B?b1BDU1J5N1p5TUJ2NDJRSnBOUDdnSVNuZ0lSWDV5V0I1MEE4U2ZCWFZjczQv?=
 =?utf-8?B?SUU1MEJsaFJLS09weU4yNW56emxySDE2bHZSTS9tNjd1elg5R0tUVVNySFkz?=
 =?utf-8?B?MTF4eHBuN3JIR1I0ZjR1cVFuQ05UT2dRSmN3dStpUDFHY1Vwc3NPdTVySG9r?=
 =?utf-8?B?bEtaSDk1NnJGa3FXYUREN0poZFJzNlU1bE44YnlEQmRLMFJCdmRIWkdVK2R4?=
 =?utf-8?B?UnVtcEIzWDZ0UEl2bXE2TithTW9xYnhhUk4vU3VGc1RCcUFzNEZ0TytIWmpW?=
 =?utf-8?B?Nk1hTUQ1MTBUWVJ6aFpjYVJGSWlMQlB5cFdySC9SMjAwcFVRZ1hBT1dCRlhM?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2146a728-e48a-4d54-6f29-08dba5491767
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 08:55:54.9526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NOIPtJr7meYD8bHe4Dbh+KddyrEfV5UZ7ZYgvb2P9lko1TZQlT64mKWjsHCmdzlwL4Esuo0qPO3xKBlCj9sILobJ6iG2fw5EC+qrIGGQyHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692953792; x=1724489792;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gA4oOv/o+bTnaO4S03UIycqgB/M6kV7sRchOyFQESuo=;
 b=hFqYOJXK7MaEHGxWsc8BKanHZn3vAwjD935bVd/v0OCrYaP4iZcg+E8P
 65LJIqPUA9utxcf5DpXmjYNI7jRjQoB22/haPNaQRyjStf09fDTeZ8BJY
 oGTvI0hdMXnVVWVzd6s89P3BQod4c8JpIhLvIHLkJdRPGysW5JD9qdEny
 8L9sRmaQDPycwmvKjoVxvsQ3ka5q+o5ODWhjQRpDWwlvokCNU1LsgBxfz
 o6yPF24/rilV7FDABuSX6VAfelgYWBQFYvgJmcJ7mXyaLCD4xUew4qQ3v
 e7TRhytrWAlF57pv3+lhq3OdMi41Rf9Y6ORqIotTmDiqxCzBjj6fUMxOU
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hFqYOJXK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the
 Parser Library
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
Cc: ivecera <ivecera@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/25/23 04:48, Guo, Junfeng wrote:
> 
> 
>> -----Original Message-----
>> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>> Sent: Saturday, August 19, 2023 02:41
>> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Cc: ivecera <ivecera@redhat.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the
>> Parser Library
>>
>> On 8/17/2023 2:42 AM, Junfeng Guo wrote:
>>
>> I assume these are for IWL, so it should be iwl-next, not net-next.
>> Also, please cc netdev on these patches.
> 
> Hi Tony,
> 
> So the above suggestion of "please cc netdev on these patches" just means to send new patch series at netdev from v1, and stop cc iwl?
> Likely I misunderstood this comment. I just kept updating new series also with netdev cc'ed from v5.
> 
> Is there anything I can do to fix the mistake?

for next version:
- make sure you do not use in-reply-to v8 (or any of the previous ones),
instead post as a separate series;
- subject prefix should be "iwl-next", you got it right;
- defaults for postings are as follow:
   To: IWL,
   Cc: netdev, Tony, Jesse
you could extend the CC list to include people involved in discussions 
on earlier versions, working with you on the topic, or touching nearby 
code previously (get_maintainer.pl script could help here);
- don't top post.

> 
> Regards,
> Junfeng
> 
>>

[...]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
