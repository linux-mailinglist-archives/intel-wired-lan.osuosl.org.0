Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB704D8BE6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Mar 2022 19:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E053D823DD;
	Mon, 14 Mar 2022 18:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXzmW-W4Agun; Mon, 14 Mar 2022 18:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D026781A16;
	Mon, 14 Mar 2022 18:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6586C1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 18:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AF4A408DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 18:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mDFS9d6JynU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Mar 2022 18:42:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52DF1408D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 18:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647283358; x=1678819358;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MUkZ+/0lUgwZSTpnxOiz5KUOyFKY/AFFWe+3wWQyi+Y=;
 b=lAIslBBTbW56XGppLs1CkeD2opdjnfLRl73Ic522rYLNDlp/VHmDLrGS
 VCMuzT6fqNCLlniUtL/kgLffVb9fU4TiPig8rk/7ykyJcFEizuu7KDfVb
 eYs2aKBryPARMmqUL2P2yGkxr+EEPFTa0U5EVy5P2qUTEdepvi+WqQLXq
 JimZXby/BTLPy13UOFPgEOlsiE9jozOhXvpK5OnS3KUITRvaWun4IS5bK
 N/s/hnt+DI8uWcJiiMGBcpUe9NLqKxjJCwsAUufOD1JkKoSbx2xQ1zcVw
 svX0j4KFekzF7nhdyhpTzaw8iSt/Yw8oQZFqheAFmsWGIZvjPzO/hJpVR g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255846386"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="255846386"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 11:42:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="689933616"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2022 11:42:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 14 Mar 2022 11:42:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 14 Mar 2022 11:42:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 14 Mar 2022 11:42:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 14 Mar 2022 11:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RxeH0XM2xAF48LJ7YPphOUc18sUyfksJq8z9hNhwN3hpU0H/PZFA78Weto6xg5hBphsCH4GHY8sOA6Wj9l68Ffhs2mSg86Yx6GY3v4S3IWp8Nu9Wbl8dhM8NfXGh9j2eJhIBHGrvRdFUzFOC5iIBCoBSPQ5voUi8PA7UJXdcNYaihySqt05oipDgqwGEVrK0+uqMXOsChyiyrLqUZeP0VIrx8cOPuIYzVrHyJBTYRpdHMRIrvxa0gZVYHYG9B+SjquBFduxPQc9k9OQUwASnzmtNqXFvfBqyTBZKNK6939/CjEG8mh1B9pJyBlu5OcqnjQTo3BvXFCx5enPWCYM8bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0OafrchgZ96gGmPjFge41hzSmWNdtIqQKKdjxmNmfDY=;
 b=T6ZPLIw1eB7Y/AW3qY1wgvLcrqxO9NqA4kcM5WBNz21zwMlRr5fe64CeNn+nLbRsNzzwTC91GMZYwRv5z5UBVuAZM1rhuC9F852j7Nta8xQwlfaDRhrT3Fk9+SkAUfcoGD2626q9KiC96b4y4uqoL5g68NxBrTb8WW/GnNnXdr5EVZwqA1q2saMt+z7exOiBRZvO/qroiPvcxM1FQNxFpeL1C6YFm1sS5byiLo7jJzmv6yiZQ8uVty5/ht2P6cijMQUqviebucbroRXc2nmP8Tq10YTXGZX+gNpIq+KiY4qGJglb+p83MvKVzkBlBbequyciMjePg+XW99GzjDV6Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB2875.namprd11.prod.outlook.com (2603:10b6:5:cc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.25; Mon, 14 Mar
 2022 18:42:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 18:42:34 +0000
Message-ID: <02787281-51d6-aab8-6047-59da1ad9658c@intel.com>
Date: Mon, 14 Mar 2022 11:42:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220223003830.25565-1-martyna.szapar-mudlaw@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220223003830.25565-1-martyna.szapar-mudlaw@intel.com>
X-ClientProxiedBy: MWHPR14CA0033.namprd14.prod.outlook.com
 (2603:10b6:300:12b::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d5800d2d-a2d8-4afb-f31b-08da05ea677f
X-MS-TrafficTypeDiagnostic: DM6PR11MB2875:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB287539093C0DAB33C2C86F52C60F9@DM6PR11MB2875.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xJ1jEgeCVHNeaqQuPms+L2aMM0JmYx905qPB+VvCz42Zb+8XLO3EHHiGkibYtAxy/33Ifws90GOQe9thpHwA6bGxBgh8+vBirMJkNnN3rKRZMpvK1TNp+u/l6VKVHq3Xx+EEYyGgZzEzpxLW4fYJagRYtvaebx2aE+mSpYyguLO5y4jyy1JtklGKvTfCrOfd8471iWP5vaqlQU5UTlLuqskI0qUAHWkLhm4Hx8INWrDKk9Huq8hadXYQEq36ld0N8QJazLgwKyynsZxosgw4icBcnAlUhcQ+OP/Ho66IRhB/MqiHc5rew4Dqraxk0CeA80TEqVZtRztQftqGxXYEhdICvVnqRCFdsmn5BB6Tcd++9aogCR2pWekvN5EzRQlGiIvwEHGoYl1tNdxWRFqBd4AHHDsGf/WoCdsBneleUO7iwc2pPUoFx4eT14QjkP5iJFoXQccIRdk84kLp0ELGmOBNBtGW56UUrKANi32Vlc4NrfD3llAGeoYS/lVExlF4sm8Qifk+QC49h3LtorDz3P4P8mO3dFJUzgNkTcPk0QEHRfaE4ZWsqIY9PWv8F59+NxNt6O4jNSZP492lKBkHP4LxV0/254qjx11+nGqgVxU7DD3sHXRZ1hOIVCTs/F9jVDNwJApoMjq95V241pkqNuLTETg0Y84oMl/i6wdAmM1dMk5Be2GPPpSpJeANxuNc9pGmEVgonnGBZjmlOlC30EOsT1U+CU5Vt1Xahz0rgRWM9lVGsXMSwL01fNE23/oa8u2yL8lQVyo3gwXXrp1uAAZPWD73CewTjXussvWKm3oCccR5tFKiH81jTf/9I+SVeG44qfgFAP/t9vHOOkReVXFwBwwSX492awu5GAopmDQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(316002)(36756003)(66946007)(508600001)(8936002)(4744005)(966005)(6486002)(66476007)(2906002)(5660300002)(38100700002)(8676002)(4326008)(31696002)(66556008)(86362001)(31686004)(107886003)(26005)(2616005)(6512007)(6506007)(6666004)(83380400001)(186003)(53546011)(533714002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWNvM2RlTjRWNkVTOUQvb0hlaGpLb0FRbWRsM2FLOWZxYjBhbmVoZ2ErNlNI?=
 =?utf-8?B?bWpnN0RwNHAyWkd1S3JiTTZIdEN1K0wyNWpreTVDL3dkZWV6QTN5RnlnSWJy?=
 =?utf-8?B?LzdFSDVzc01kUzhkR1o0ekw4TTVqaWxQZG9IZk9RU2JyWFE2QkozL0g2cWNR?=
 =?utf-8?B?dmhYeVhjdGYvZ3FYelNzamtwOU13MGNKa0dJdWJOWGUvQzJIRFRielp4citJ?=
 =?utf-8?B?OVByZ0l4a0ZLdVRZNVltR2phYTRKclRQenQ2ZTFvWi9MRVRZQTFjZjJ6UHEr?=
 =?utf-8?B?SXlJajQyckFSUkNrdkZzNUhsL0xBdkdKT0JYZ2hWU01FdzdSYWJJUDFqa0hK?=
 =?utf-8?B?RnB1SSt6VzRHSndpY3k3bkJ6VU5VYmRLTTYyQ2Yyck5hKzExeGY5ekUyT0M3?=
 =?utf-8?B?dUZySTVtTFd4cm5OWCs5UDkyRXIyUDl0UVVGdjYzR2Ewc29LdlV5dEJRa1lZ?=
 =?utf-8?B?S2xQbXR4Rk5zMkUxUU5zaGcwT3ZQSmMwN0x6TFJLZlA3U2JtNkVpN1RCWkc3?=
 =?utf-8?B?L3lQNFJZek1XZE5wOGhBMDlnYkZEa1FnR2pza2Vhd0U2MW5pSEltejdyVGxV?=
 =?utf-8?B?ZFA0bkFNZUhhSVJZaUk1WEpmK2JOaSsyYmVTNTRyWXVqTTdBTmtoK1hmdStF?=
 =?utf-8?B?MVhKYVBLUGhES3JyZWN6SmxzTDNNWlNXQVE2VUdSTlZUVG9lUXVFcWJETmlt?=
 =?utf-8?B?TWpqUVBRUC9nWUlpWm5CT0NTb2F0OFZFZDNadGJkNWpYLzlXK2xuTXp4ZWxq?=
 =?utf-8?B?a3hWTUpKZ3RZSVU5TDZwSkorYktVN1lrVGpKSmJxSk4vWGhQWVE1b0hmdk8y?=
 =?utf-8?B?bng3TTF4TFIzelJDT2hTRjdjb1BtcHlHU1FlYmZqYkFXNEhmSVRxSSswTWJi?=
 =?utf-8?B?N0R4RVl3RGp0elEvMVdvV3lSc0diVmlMc2g3L25aS1pkLytEdFg0bXJDZHIy?=
 =?utf-8?B?UkZCV0JoNmh0MUFCaHRuc2tDYmhNZE54ZkxlSUgrczJhNSs1TjRja0NSUnBR?=
 =?utf-8?B?YjlycEhOVUR5YkhqNm5kZUpua3BMMUxTWElNcFpkVStJWXFHM3R1azN4Z3ZI?=
 =?utf-8?B?eWNYSEZwaHhGcUE4d1FVV1htVXl2QlVJWlo4dklod3NXK2dKU0o2aVd3YlVG?=
 =?utf-8?B?bGZCQmJEaHdtT1ByWUcyYnpkS0FRd2xtMEZyaEJqamc4UHA5V3lOdGRjbnlz?=
 =?utf-8?B?ZjQ1Vmd6OGJGMVJ3dVNRaFdjZjlNR3hRUnc0WlpNLzRGQ3VSRFdxM1BlS1lP?=
 =?utf-8?B?RkRBT1B6L283WHoxMUhMQXo1OVE3dlo5MHB3emlFekl6RndsZGFkT2RvS3lY?=
 =?utf-8?B?TEwrOGRMK215bFZaMnN2bVVRSWVqNlU0aDN6aVRvUDJaeVVHNEwzU3I2SHl1?=
 =?utf-8?B?eFE3cVVGQ0YwSnZQQXUyMlZCZk95eGZpMm94aVA2am1yZVNQWjVML0dJWXAz?=
 =?utf-8?B?bUF6Q3NkdlQ3ZHBrSVZZb3Jjczc0V3dKNk9QdDNBUDZFNUNieDBYb1JNc2Vz?=
 =?utf-8?B?L2JKOHYvcFUrYlN2YW12R2dIaVBheWlqK3BzaWM2VzJ0N3RxS2JFT2xWdUt1?=
 =?utf-8?B?b3RBbU9wU0s1NFM0aFQrdEdSbWw5WDdQZlZYWlhwT2RqMUFQazlnanE5andl?=
 =?utf-8?B?cjErV3BxV0lObE1EUUNMd0pqVm5TdWZKYWVXcURUaXZuMkdVU2dzNFgxR3BC?=
 =?utf-8?B?c3N2R00zTFhQMVpXd3hNc1QzM2FCZnJDWjNhT25uelNzTWxrYkxTcHpabHh5?=
 =?utf-8?B?dldNREFpaGlZU1FMMUwvOVg5MnZDRXQ2WitBYTl6cU1Ua3pWTUJlbXR2djZu?=
 =?utf-8?B?Y3c3VmY1MUM1MThuVmRaem5lRW84NFVOQXhaVVVhR3pWaERqQ2d2MFV1cWE3?=
 =?utf-8?B?Tzh1VXF2TjZSaWcrUk9XQXhpTklDT2Q3VGxxRVNqOWtrTzNXb2lmaGZjZyts?=
 =?utf-8?B?N0hnR2RDcWU2ZDRoL2VOeUhzS3ZSZFpJM2VqYnNzTWI2TmE0YkcrS0s1TkI1?=
 =?utf-8?B?L1pXeVIycE1nPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5800d2d-a2d8-4afb-f31b-08da05ea677f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2022 18:42:34.4833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gxW5n7euKFVVmilXgjnBCcVGNt4IkyTDe/mn72a+Uf1f4EvGnKxewLUFj25WMKMpd0UZqF81OdYdXi12rbVWJ/QIkiIBGllmDRYjIjS1fCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for double
 vlan in switchdev
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
Cc: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Martyna,

On 2/22/2022 4:38 PM, Martyna Szapar-Mudlaw wrote:
> Enable support for adding TC rules with both C-tag and S-tag that can
> filter on the inner and outer VLAN in QinQ for basic packets (not
> tunneled cases).
>
> Signed-off-by: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>

It looks like this was based on changes made with the ice switch 
optimizations that were dropped for updating [1]. I have to drop this as 
well as it no longer applies without those. Please either rebase on 
current tree or wait for Alex's update and resend.

Thanks,

Tony

[1] 
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20220314/028137.html

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
