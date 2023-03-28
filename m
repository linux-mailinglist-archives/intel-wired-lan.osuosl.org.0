Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A776CBCB1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 12:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E72DB418B0;
	Tue, 28 Mar 2023 10:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E72DB418B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680000126;
	bh=h70xqq4BIITg12LmtuWkVpZGA6col4ZNynySCGfCJro=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fRsZ8+gGBBrhHV3VmtCeRB00JZCH9t93+JKF82oEMOKl83zH83X8/1py/wbeG1DPS
	 qbReN4uRJTj1Oh4tGswiOKm5YKzKOvsrf/oX7y/KizNsAMAxZSKUgUCyumjbQqpl9f
	 ZKKvELIHumUIX+XK7BF0nwyzJDXLQph5rskR/idpEq3UZEe3LoH63AOg8tzVtdGDSb
	 qRrPXy5vgb6F9W8ke3pix9XvAFLh2zwKq/g5wDVPBfXVclxQt3RVMawZmGqweERyeb
	 fYbmAYgI+fiFPCOQuDs6PQwV6dqstey2Hb5YgUPY5Q0mSO7rZEvw1qhrSL+dlflMqE
	 xem7d3Kx2kpbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SUkBBsurofBh; Tue, 28 Mar 2023 10:42:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 820CC40891;
	Tue, 28 Mar 2023 10:42:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 820CC40891
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6811E1BF388
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 10:41:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 363A261171
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 10:41:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 363A261171
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wO8upfL0FC-D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 10:41:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5992A61169
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5992A61169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 10:41:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320183418"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="320183418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 03:41:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="827438352"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="827438352"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2023 03:41:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:41:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:41:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 03:41:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 03:41:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P49x79Ec96QrmJ5bpI3NKBZ8tTdGHy6XcJ7Jee5zANob+lL/d3qNi8Vi4Gxj/RjFOiQt9H5tsUYEhwGVq/yoUSd5tGiPGHeePyBoxInFG0eFGogm0knnRx1LVDHW6AzEpUCvvihGKiCyS3kZRdljnVP42/CVdYl84h9bOMBkxs28QKCtO9cI1TEDIWSK2Q2xoDjjyu9SzeJXzZ7Tx18+W6VmMRJfHxxKScWBrIXFYpD6mz74oVb2+iDGJKuEBcbvEPcKjXnHBDemDNsNTRPn4d8ezwKAqjLCilILlDThXQdp5ZRwxLsNUOfe+ZD/2CTZziNBWqtrCBFlP5jV6dilZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eVVvA5XgewRvVcLveZzVeT77uegvW4UFv9xPRQUHj/s=;
 b=QpEvPbeXErMZgvlznzxZP0j+UJLkr0ne6JD9o4TgOMPV3ckVlMiXvSdvYW77YIx+qWQztDzUbb+vUEtPQBFgULIxfdtG2VRlDTNnOhBnaHAcho0cJmIA+ePwtktMYCjduvCw0hUMU5XYivO3S37k24beHQAmiSa+KjbdWOQ9q1hxL1b6SeNpBj7cAUaPHp1s4IpnBJvXDkeKzOAvxs4kJ4H9zJ3eoivZ5ka5yxjjemKQUcLSZfB9ckrUDnxcIbht/L6DdyWRz8BMibjSaeqqYnMfAGRpchE18GxHgqtH8dohRNN6wCE+SRxDfLN/w5U1NUPQjo9pWEhsVa+WU3DhNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3055.namprd11.prod.outlook.com (2603:10b6:805:dc::18)
 by MW4PR11MB7161.namprd11.prod.outlook.com (2603:10b6:303:212::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Tue, 28 Mar
 2023 10:41:53 +0000
Received: from SN6PR11MB3055.namprd11.prod.outlook.com
 ([fe80::d455:2b7a:1a26:bc9e]) by SN6PR11MB3055.namprd11.prod.outlook.com
 ([fe80::d455:2b7a:1a26:bc9e%2]) with mapi id 15.20.6178.041; Tue, 28 Mar 2023
 10:41:52 +0000
Message-ID: <4c90c3eb-b6c5-9033-de96-890e7e11ee88@intel.com>
Date: Tue, 28 Mar 2023 18:41:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Junfeng Guo <junfeng.guo@intel.com>
References: <20230309024934.151120-1-lingyu.liu@intel.com>
 <13024a04-8592-e59b-a2a4-14ce8d17a154@molgen.mpg.de>
From: "Liu, Lingyu" <lingyu.liu@intel.com>
In-Reply-To: <13024a04-8592-e59b-a2a4-14ce8d17a154@molgen.mpg.de>
X-ClientProxiedBy: SG2PR06CA0214.apcprd06.prod.outlook.com
 (2603:1096:4:68::22) To SN6PR11MB3055.namprd11.prod.outlook.com
 (2603:10b6:805:dc::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3055:EE_|MW4PR11MB7161:EE_
X-MS-Office365-Filtering-Correlation-Id: df20b01d-f12d-4881-4506-08db2f790acd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sIdFYLxnfrolW9/AO9jFO7aXQeAbzOL2p/qD6MIeYnzMKA5BFSw/kWZcZoqdTRxOIYJgyOhmdwA1GQi/w0ArOk5dODIa431X/YTapMzjj8sO70fACDE5ETa4fvrFE3f2uAH/oalF+GP7gWNqcfVyiKfvtBmDWj7Vm0pR01p6nKi4BfeWF04VjG8yFLqLyKD8eggSDYGNh3TQH6rb/YdPRqSPZ7X/DowIWDt8GSnSxreEumdHC6SISI26zXEl8yb2OL2/D+ZqqIx4N7D+qiKI7DfS7q8N5BzDNkvBqQe8ZI/abyWTHrs5Lb4t5iQ49jEzat/z/7DP/K7YApl3Yg//d8uXxJY/9fG6zPaf0PDK5CLoD2Q0XLWymRZojxtm/yAUPNORjkBEFYHCnxiTk3cUPlBCu3CLC3SXUXZofOblvVo5+KJbUQ1fMxT/ulY9h2p3U476OWLa53zclNLPbKT8RrIjFDxfsTCOf+p5aCGKcB81Jg8AiTZSc2HBJuhwCA51FJSucZdaIEZY0lAa7+BggxaOTMz1JGdU9XiOek6IkjVRFafuHLyagZpsi9vfcQ8cIQ+8zIUDmhwSmSpInMWnezWlfPYJIAxF00z8WaW8F9rA30CiO967LKrDbEIVDczdpd49e8VFKOi13KVykaRnKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3055.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(346002)(366004)(376002)(451199021)(38100700002)(110136005)(478600001)(66946007)(41300700001)(4326008)(6636002)(66476007)(66556008)(8676002)(31686004)(316002)(8936002)(5660300002)(82960400001)(83380400001)(6486002)(53546011)(36756003)(2906002)(6506007)(26005)(2616005)(186003)(6512007)(31696002)(6666004)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUFvN0RYSDdiSTNsaHhhWnFTQ295cS9CTGFHL3NWQ05Zb3hTbHV2SGhsL3Bs?=
 =?utf-8?B?MEp0NUJydnpNbVFpRVBPbVlobTVNSzN0bEFRbnRZakl4UVF5aDJKS1p3M2g4?=
 =?utf-8?B?T3A4YWFOOGYyREVGZUNyR0pWZXdraDlCajk1NTNNeUVGeG9ZeUJPbnk4cTdY?=
 =?utf-8?B?QjlUcWRUdW1mUzFBcERHMHFubXBTNjBDSElwUDNqVjBISEZJVGw0dHJINjVX?=
 =?utf-8?B?OHlhaUJjZFRJbWhiVHZlRjZTUE9pTmxyN3NZSU81Tm4yL0k2blFadXJFMXFV?=
 =?utf-8?B?WmdGWVgrNHpDeFM5WDVPWDFNS2RoTlFWaUNmUzlERjNJallSaGZ5OGNrZjlP?=
 =?utf-8?B?RWVab2lUays1K0FIYlhlREVVS3REYjIzRnI4dkJ0WmhSM1BMOHQ2K2F1Tk1Y?=
 =?utf-8?B?YjQ0MmpBQXlWQmZ3dFBhSHNHVVA5UkFJYkNZVEEyVTJ4Uys0TDFiQ0JrUDNW?=
 =?utf-8?B?R3laV0dGVU1jRkYxMUs2bDBuNm9aZkJsMlc3SVBYTTBmMWFmQWI4TW1GSWJF?=
 =?utf-8?B?YWY4QkpRMWtMWVNLUzVTeWpyaTNOZ3BMblIyK2lzOG1aMkkrRFVtVDcrNE0r?=
 =?utf-8?B?YklXK0pHL1NuVWdSNWJTNTFBN2Z0aFZFMTh3VXFLU3UvRWRQR0djN3NjS1NL?=
 =?utf-8?B?dnFpNWZ0bXRKRkxlWlFCSit0YS9ocktYMzRDU0NFcVRXTHZQUEx5cDF5L21l?=
 =?utf-8?B?YkliczdVdDJGZmRWcjJWM2N3bHh0a2dVWkw4cUFuMTdQaVptanZHcWtKZ2hR?=
 =?utf-8?B?TXpram45RStWQi9Ba1U5OW12dEViU1c0THBqUGh4R3hFUkJySk1ab2phZ1JM?=
 =?utf-8?B?bkFEN0k4WU40aHpRWWFVTm1DR0R6c0RJbmZBZWhQemgxbzVVSXAyeWk4R0Rk?=
 =?utf-8?B?VFV5R2VGaWx0TUFEbnVqQ3dJU3EwWWY3Q1dHRlVjNXZFaVBkbFBmUTk1TnBS?=
 =?utf-8?B?bEpRR1dpdE9YQzhZU3MxNUdlUGZSeVZGRHQyYStFUzZESlVQWUJpRGVHY0lZ?=
 =?utf-8?B?dzFPUE8vVHp6VXJTeWp3MGIyVGJpRXQxeTFsK2djcTJuMUFIWVpEbjRtMFRD?=
 =?utf-8?B?S0tRc0RIOWxxWWIwbyt2RjhGalJTbjRDOGNMSHMyUzhLeXR6eUNwTEJWV01O?=
 =?utf-8?B?NzU3VEtHZG9veUplSDF2a3hYbWhmc1BaTXJzdzU0ZVJqeEpPUW5tZHdUZzMz?=
 =?utf-8?B?Mk1yNFFyNitGVVpMc1FqTzFVWFpYQnhYTlpxRURvRXFPUWtQTUptU3drSDNr?=
 =?utf-8?B?NU9RN3ZlL3lPOGJRRUdSQmUxK0xHVURQQXZ5dXRYRzhOQmlxa0poQXFTN3Rk?=
 =?utf-8?B?cXRrVVFiN1MxbTlyQ0VLb3FCNncwbTMzTHNsalRLN2xDa3EraEY2V1ZXOHly?=
 =?utf-8?B?d0tuV2VGbkdlRUxYc3V6bGI1OVZIZ0FYL0VNSjhOVG4xLzBTU052M3JOSFZL?=
 =?utf-8?B?SG9xTngxa3gxTmNVc0J6OVNaV1ZoZGxIbkpKQzYweVVBTHcxcE0zWlhYbGxs?=
 =?utf-8?B?S0FhWEpBTUltUjNBTDFqSklJbDE5V1MzblVmdzc5dUFNUXgyNGZrdFlJdE9j?=
 =?utf-8?B?enBTRXJLNHF5VThkazRvMGRYUy95UW84eGh2VTNBSytVLzhHdjZYZjB2dU5L?=
 =?utf-8?B?c1dvcXZVQkhsL0p1S3hNd2lVdDUzTDlDSFpaZkN0a1hJd2VuaFBGVHhyU0xD?=
 =?utf-8?B?bmVwK2lMdXNiczJMbi95djRIT3RsSmFWdWlQbnVWczRhaHZ0R25yejQxZ1dF?=
 =?utf-8?B?OGRQUWlqOUJ4QlJnN0ZVWXRYTXZCakljN0RHZEhleFhobjFnVzQxSTBYNTRS?=
 =?utf-8?B?TkdVbzdEYWcxb2grMUpNUS94RGZBWHEwVEwza21GVG9PMDBKaUl5Y3ozSnNI?=
 =?utf-8?B?Mmw0dmtobE8reXlyeEhKbXN0OFhBZEVTSnBpeWlMWFZ0cTkySjJZNUR2Nkkx?=
 =?utf-8?B?NWFqeU1ERlRvUEQzMmFFMWFETVFRRGJleGlMZXFLY0JHaXNCa2dtc1hqTnpY?=
 =?utf-8?B?bHhHN21La1orUU5iNVhZLzhKY3BrQldBMW94TlZaWjBBTlFKZWdBLy9scUpC?=
 =?utf-8?B?ZWc5Tk9SOGsrT3gyQ3I3anlTYW1YczFUSFBxRGxYeXNwcU56akV2VzZONjRv?=
 =?utf-8?Q?x85dwegg7XjjCMBsQ4aAh/beP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df20b01d-f12d-4881-4506-08db2f790acd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3055.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2023 10:41:52.6673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UN1XCds+XE9kKs46tj2FXWntpJRQ3+H1qWZRYvEtFCsw6iEGaTc+ha3c26d3vV+uzlE1/EjqPngVYPD6aQQlRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7161
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680000118; x=1711536118;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YWzcfvOtXQRM6ZqHicGmomAKmAVlTsJgLR8Obh6V4bc=;
 b=lGEF6wHoT/w2wR2+z5S7d5Bz0JdO2c9EcIHjSYcttOrNJviJnIyePtRh
 nxHHJYerQeepTMukXaLx493hMd8bqj5/VrfLfimr/dRez+WKaPKD8jU2R
 SAHAfRbOw0x/1IZtZLV6vgm+++Jbh76okMNF/LI9ESAoeCZHzbY5uxW9v
 62u/BxJLlYxb9+ZEu8oi9LtMbgwhRuwoJ9P4I0WwbowJU99oOAFK0XHvV
 0DRqdR/AqYKphkRQftKbLecXJPzUsD61HV5mZ7fSfH8TG0Arcj28iZTwE
 w4KVvr1MxQLK+DA2g+IlWjKa7fvmYp5G6vOL4kUX56p8QEUg80U6GdUlJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lGEF6wHo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add FDIR counter reset in
 FDIR init stage
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDMvMjcvMjAyMyA1OjA4IFBNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIExpbmd5dSwg
ZGVhciBKdW5mZW5nLAo+Cj4KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPgo+IEFtIDA5LjAz
LjIzIHVtIDAzOjQ5IHNjaHJpZWIgTGluZ3l1IExpdToKPj4gRnJvbTogSnVuZmVuZyBHdW8gPGp1
bmZlbmcuZ3VvQGludGVsLmNvbT4KPgo+IEEgc2hvcnRlciBjb21taXQgbWVzc2FnZSBzdW1tYXJ5
L3RpdGxlIHdvdWxkIGJlOgo+Cj4gUmVzZXQgRkRJUiBjb3VudGVyIGluIEZESVIgaW5pdCBzdGFn
ZQoKCkhpIFBhdWwsIHRoYW5rcyBmb3IgdGhlIHJldmlldy4gVXBkYXRlZCBpbiBWMy4KCgo+Cj4+
IFRoaXMgcGF0Y2ggYWRkZWQgdGhlIG1pc3NpbmcgRkRJUiBjb3VudGVycyByZXNldCBwcm9jZXNz
IHdoZW4KPgo+IFdoYXQgY29tbWl0IGRvIHlvdSByZWZlcmVuY2U/IElmIGl04oCZcyBhYm91dCB0
aGUgY3VycmVudCBjaGFuZ2UsIHBsZWFzZSAKPiB1c2U6Cj4KPiBBZGQgdGhlIG1pc3NpbmcgRkRJ
UiBjb3VudGVycyByZXNldCBwcm9jZXNzIOKApgo+Cj4gQmV0dGVyOgo+Cj4gUmVzZXQgdGhlIEZE
SVIgY291bnRlcnMgd2hlbiDigKYKPgo+PiBGRElSIGluaXRzLiBXaXRob3V0IHRoaXMgcGF0Y2gs
IHdoZW4gVkYgaW5pdGlhbGl6ZXMgb3IgcmVzZXRzLAo+PiBhbGwgdGhlIEZESVIgY291bnRlcnMg
d2lsbCBub3QgYmUgY2xlYW5lZCwgd2hpY2ggbWF5IGNhdXNlCj4KPiDigKYgYXJlIG5vdCBjbGVh
bmVkIOKApgo+Cj4+IHVuZXhwZWN0ZWQgYmVoYXZpb3JzIGZvciBmdXR1cmUgRkRJUiBydWxlIGNy
ZWF0ZSAoZS5nLiwgcnVsZQo+PiBjb25mbGljdCkuCj4+Cj4+IEZpeGVzOiAxZjdlYTFjZDZhMzcg
KCJpY2U6IEVuYWJsZSBGRElSIENvbmZpZ3VyZSBmb3IgQVZGIikKPj4gU2lnbmVkLW9mZi1ieTog
SnVuZmVuZyBHdW8gPGp1bmZlbmcuZ3VvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTGlu
Z3l1IExpdSA8bGluZ3l1LmxpdUBpbnRlbC5jb20+Cj4+IC0tLQo+PiB2MjogY2hhbmdlIGNvbW1p
dCBtZXNzYWdlIHRvIGFwcGx5IG1vcmUgdG8gYSBrZXJuZWwgdXNlCj4+IC0tLQo+PiDCoCBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIuYyB8IDE1IAo+PiAr
KysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNo
bmxfZmRpci5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNo
bmxfZmRpci5jCj4+IGluZGV4IGU2ZWY2YjMwMzIyMi4uNjBjOWRhNGFhYzFkIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIuYwo+
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIu
Ywo+PiBAQCAtNTQxLDYgKzU0MSwyMCBAQCBzdGF0aWMgdm9pZCBpY2VfdmNfZmRpcl9yZW1fcHJv
Zl9hbGwoc3RydWN0IAo+PiBpY2VfdmYgKnZmKQo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgfQo+PiDC
oCArLyoqCj4+ICsgKiBpY2VfdmNfZmRpcl9yZXNldF9jbnRfYWxsIC0gcmVzZXQgYWxsIEZESVIg
Y291bnRlcnMgZm9yIHRoaXMgVkYgRkRJUgo+PiArICogQGZkaXI6IHBvaW50ZXIgdG8gdGhlIFZG
IEZESVIgc3RydWN0dXJlCj4+ICsgKi8KPj4gK3N0YXRpYyB2b2lkIGljZV92Y19mZGlyX3Jlc2V0
X2NudF9hbGwoc3RydWN0IGljZV92Zl9mZGlyICpmZGlyKQo+PiArewo+PiArwqDCoMKgIGVudW0g
aWNlX2ZsdHJfcHR5cGUgZmxvdyA9IElDRV9GTFRSX1BUWVBFX05PTkZfTk9ORTsKPj4gKwo+PiAr
wqDCoMKgIGZvciAoOyBmbG93IDwgSUNFX0ZMVFJfUFRZUEVfTUFYOyBmbG93KyspIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIGZkaXItPmZkaXJfZmx0cl9jbnRbZmxvd11bMF0gPSAwOwo+PiArwqDCoMKg
wqDCoMKgwqAgZmRpci0+ZmRpcl9mbHRyX2NudFtmbG93XVsxXSA9IDA7Cj4+ICvCoMKgwqAgfQo+
Cj4gSW4gYWxsIG90aGVyIHBsYWNlcyB0aGlzIGNvbnN0cnVjdCBpcyB3cml0dGVuIGxpa2U6Cj4K
PiDCoMKgwqDCoGVudW0gaWNlX2ZsdHJfcHR5cGUgZmxvdzsKPgo+IMKgwqDCoMKgZm9yIChmbG93
ID0gSUNFX0ZMVFJfUFRZUEVfTk9ORl9OT05FOyBmbG93IDwg4oCmICkgewo+IMKgwqDCoMKgwqDC
oMKgIOKApgo+IMKgwqDCoMKgfQoKVGhhbmtzIGZvciByZW1pbmRpbmcuIFRoaXMgaXMgYmV0dGVy
LiBVcGRhdGVkIGluIFYzLgoKCj4KPj4gK30KPj4gKwo+PiDCoCAvKioKPj4gwqDCoCAqIGljZV92
Y19mZGlyX3dyaXRlX2Zsb3dfcHJvZgo+PiDCoMKgICogQHZmOiBwb2ludGVyIHRvIHRoZSBWRiBz
dHJ1Y3R1cmUKPj4gQEAgLTE5MjQsNiArMTkzOCw3IEBAIHZvaWQgaWNlX3ZmX2ZkaXJfaW5pdChz
dHJ1Y3QgaWNlX3ZmICp2ZikKPj4gwqDCoMKgwqDCoCBzcGluX2xvY2tfaW5pdCgmZmRpci0+Y3R4
X2xvY2spOwo+PiDCoMKgwqDCoMKgIGZkaXItPmN0eF9pcnEuZmxhZ3MgPSAwOwo+PiDCoMKgwqDC
oMKgIGZkaXItPmN0eF9kb25lLmZsYWdzID0gMDsKPj4gK8KgwqDCoCBpY2VfdmNfZmRpcl9yZXNl
dF9jbnRfYWxsKGZkaXIpOwo+PiDCoCB9Cj4+IMKgIMKgIC8qKgo+Cj4KPiBLaW5kIHJlZ2FyZHMs
Cj4KPiBQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
