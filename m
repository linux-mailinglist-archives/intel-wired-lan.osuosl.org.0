Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E63769D1F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 18:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB08C40BC8;
	Mon, 31 Jul 2023 16:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB08C40BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690822169;
	bh=wexWPLAvSoDoa1uim0GEW210MtzZ3Ynr1kHDrwJOEx4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JmsL77kn35OAEElcNSmykrmMd1RQIEDuHrDAa2BIS7GM5gsYXBuqe9CjvTPR5NLTc
	 73qEpIAz6bG1Fvcn1Icw77tQqvbtr24NJldKCF5IC2rcG5t6YD96+GMQ9XDSpijHuW
	 aYYYoGBgvjan4Ivy2erBQCzZrpAWEtz7lVJCr2ezGd2p0HgmUNcSmBW/6rWF49Oxpm
	 bQnWxTiyhDwjy+Px/tkXBPVi8GwOUQbRQvtdu7szmzW3w4p7ZzbWnc3Y/1n6CedodX
	 sRBW5W+bVoMYk/BA6f+Hg7y2J+SGi2An+2Ra9uPnnLbpcnWLB97AkKhxs2EQAiq+Df
	 RuYFGmZTEwSTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C8x_XFcaZOKf; Mon, 31 Jul 2023 16:49:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A54F240BB9;
	Mon, 31 Jul 2023 16:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A54F240BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB2441BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 16:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB4F340BC4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 16:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB4F340BC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wQdRLG2xx2ut for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 16:49:18 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AB4540BBC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 16:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AB4540BBC
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="367972190"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="367972190"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 09:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="871721988"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2023 09:49:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 09:49:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 09:49:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 09:49:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 09:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F4d6yeyGfViDgA2SNIsJGNx90xB8frfxqWj8byHu32UGvquTeQoCsPsYsqrPn4WsM0QXPCd2bOkmwrRuBT2nLl21Aldz++hKtYwa0uPQCr1EmfX8gHiZTlMX0aTWJ45YvY6p3qHIGuPpG5e8nAtqWglHpPn9H2lcGhWwZ73/KkLPvqiAWv+NYJeR44VqkS5oATfljs1eGf369eXaNuci9qUKB1M02mVqQ43Da7qtHeAngFPe/bPfuSEDrang+AuxBTaZrC/mFd/C3A2Lhopz5vQqdxTwGq8VaGxPHGvZptwTRW113uC+7/AFVykxAaRRb2jyKtUV/LPXwixZ2gFBQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2qzr38qEkr8JdlmcvaCRU2VrTHQRRa7FYFDg8eqsutQ=;
 b=Ck9WdSaSIS2qEU5rHXUZf7AoGZWMw6KohMgwQiZbowqVUVX1DY6MatUJZxcqBpMw7ZYBCm9l6FGszJ+aajZhDHYeaplV1ruMmEeWmmZga1I3mx0Pkq0oWvj6QVsPk6dH23DU97zPPq3oYeSLHE5Kb1D+9w/PV89qLo3+uIkVqlWHUlptscYOnAaoVKiuKk6VkIugVQqAgpqfP16f7aEm7Ibuex7XqPPrGoRE0Et27oIz1ZowAC1j266tgpPlm7Y4C8TX8MDk5pILm4LunzoNYp/IMekm0gg5z5vy9ppweSbtYPe1vxTQEn0TYUxnSVOF41Uodj7Qzn7knmTuMJvBjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by LV8PR11MB8462.namprd11.prod.outlook.com (2603:10b6:408:1e8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Mon, 31 Jul
 2023 16:49:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 16:49:07 +0000
Message-ID: <54976cbd-d737-acd4-c7dc-f5e71817e920@intel.com>
Date: Mon, 31 Jul 2023 09:49:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Dan Carpenter <dan.carpenter@linaro.org>, <oe-kbuild@lists.linux.dev>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>
References: <f7214ccb-4adb-4184-9f62-09fba84bd744@kadam.mountain>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <f7214ccb-4adb-4184-9f62-09fba84bd744@kadam.mountain>
X-ClientProxiedBy: MW4PR03CA0095.namprd03.prod.outlook.com
 (2603:10b6:303:b7::10) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|LV8PR11MB8462:EE_
X-MS-Office365-Filtering-Correlation-Id: bb056992-770a-489c-3b46-08db91e60e57
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j2bSqKCEO1i6iw/rJUelpdFG/nXeH6Ol8I5EaFJYaEw6/cnAINXQt6TsEKpwA5DZGOO2TlPgFNa4+S2Z9Cgkp9ljYX/JKiRbobYtrV9oLul+yYkTLq/QLfXQ42eEB1vRK2DMSNQEh7Fxjpj2LBWJR2fLaKVM23uSF6ek5cVkZvgsQ3k/J3qXtcHsgGqh17aEi5WRTKQpsUbYzDYzUbTHIR+P161MgkLB3oaGcQIfltYqAsPRJQvPeSg+6LLT6i+1IYAfCyqnCT0WhLiD/IeByKs5rKgF3O/H7+KilktkwtaLxCxVqaz8XK3pV4/KGlcuLfUka97WmLQ1yaMxoPZujkItWsxEMV1gyRnldOtwa5sZ0nKwoS9ETbpKNruQw6aYwhm5F98EXUSsNxFaffqrEMDa/2fOQ7NziOK9r5n5V6NP3/+ZV5NPYQN2TnZUycp3EJc+qklQ7qL2IJRw3tB1wmeFteMQaRLRi6uLaS6m8239N3uGtJUQ4P/hL+SpBpUdeIlZbnzei9R6x0wlRzZKHrKZRPoDlyfPdmFoHhpu+/2UkSKIiT5m8G9X0OupVVvzVFnGeKvIT01YEXPAm3/Z3wDjj5dKEFZwoJLu+ZSBFyrrq9rPs67kZNmcUinD7SNAWIezdrf5fU0ui44iGofZ9PK0Mjyw8/LVsSkMqBpZURI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(346002)(366004)(39860400002)(451199021)(478600001)(38100700002)(82960400001)(36756003)(31696002)(86362001)(6512007)(966005)(6486002)(6666004)(2616005)(53546011)(107886003)(186003)(8676002)(26005)(8936002)(6506007)(5660300002)(6636002)(4326008)(2906002)(66476007)(66946007)(66556008)(54906003)(41300700001)(31686004)(110136005)(316002)(4001150100001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0pZTk1Sa3YvSHVWZEZlMWxMVHYxT0o5QzEzOVZGZnVRQlJ6S3dqYkJ5dGxu?=
 =?utf-8?B?TEVEZmdPWWJURVdRbnBYOXhSNGluakpBdFdISG1WQmdHVk9GSWhFVENnek9x?=
 =?utf-8?B?OFdRMStROTcrVDdldTZSbzQ0aGlrL3AzaVdnYUI3eGdGRC93a0hDZUFOOTlE?=
 =?utf-8?B?Tzl2SW5WUmRjbXZiQkdNaTlqMkc1WWhQeHJMZUFRSk4vODRnUWR1dGxXR3JY?=
 =?utf-8?B?WEs3U3AzcjlWUjlhd2tYMGtHOElCb0ptN0VhYllZTmFsamlFRmQyVmxkOGRi?=
 =?utf-8?B?VFhOakN3TTBmcTlQemxEUTlGT01SdElKbklQdEgxTld5UGhEZENxZ2Qza0tS?=
 =?utf-8?B?VmJrTDNscHRLTVU0ZkxNNTFQNm80L1J5LzBaSndiWWo0UEtmSGtmQkVXTlZV?=
 =?utf-8?B?Si83S1g2dFoxcGFCcEtxcmtzVTd6cnh0MFVESzFyczlFMkNWRG40SldPU2Zt?=
 =?utf-8?B?WmxzTWp3WjhhZUxBL1poWkNFVzFSTkR6U2tpN0hYSW5rd1hKSzgwb3U2L0NQ?=
 =?utf-8?B?Wm04cXZDTDBlL3lLcTBpUEdyU0FpdFZyWnZxNFNGaUhmaU0yUDd1LzhSck5l?=
 =?utf-8?B?d2diUTlEbTYyMjFLQkc1VGVtMHh1bGNXRG5yRUpsOHBSdmV2WUVTaXR6Q0V2?=
 =?utf-8?B?ZzFiVVZsK3pkN3haTWFpbXRiQnRCNkQ5a3Y5MDArbEtoNituNGpYbThBMkh1?=
 =?utf-8?B?a0o4enlqR0pFeldTSUJjSFRSQ25VTGhuNW9YMi9Gc3o3dHZ3aVBjdndSU3pR?=
 =?utf-8?B?NzdaWlpXZzNLRVEzUXd4R1dxYkg3WWREN0RYb1NrMFM3aWcyVE5rbUJZbFdM?=
 =?utf-8?B?RUV0Qkx3cXIrOEZ2Q1RYaWR2bTVYUDYxMFF1RFFRd0U0UTJ6TktUTGovcFRT?=
 =?utf-8?B?R3M3Y2NSc1dqTWFTaGhYUFE1aHRvNWtlajR5RW5QV0VubzlsdkI3VGNsUkhG?=
 =?utf-8?B?NDJwbStYdGU3NHlmYU1jUjB4WHVjUmUxazdGRmQyNmtYSlk2bFRBMkRVcFQ5?=
 =?utf-8?B?OVEzWGIvbHlQdnJuVFZlcEh5Qlo4YmN4OTU2N0Z3aHVyaXpBU0w4NTZmSkor?=
 =?utf-8?B?MzFsdlpzaWxXOHJiS2NSbGttampyNzY4NkVIeTNDS09CaXNpT3BJUUJyK1lC?=
 =?utf-8?B?WTdnMFJCVFJzcjQ0azYxYjkrNnFkMHFnVlNvcEVkbURSNHpYSGR5ckR6MUVY?=
 =?utf-8?B?U2lCVW4xU1hXTFRsTWZvY3dvdmhQYlNLbkNHdld0V01BNWxEblc1SGZoYXdp?=
 =?utf-8?B?MkpocVNEL0RGdmd4M0VncDlob2Y3ZU1IVWFwYXZsU0xSdlpsUldSQ0NzN0R3?=
 =?utf-8?B?WHpUQXcwQjlXemd1SE05QjRLcFJyTnNCVmozblBsOHpuVldteGUxRkNWT1Ni?=
 =?utf-8?B?T3RYKzUvSm9kdDRlajVjZ3h4ZzlLVTV2U0RFUktwODkrSHJJWE1qbFlpWjFB?=
 =?utf-8?B?M2E3K1VJNU9QMmRaMWlDbXRyWmRyS215Y2xDY1VaSEtlTzRDdUZpc1BZRjly?=
 =?utf-8?B?c1p0WThCM2hyZ2RBemVtZy8vQkJtQzhMZ0E5M3VNVU1tUmFJL1VxeWMwaGRr?=
 =?utf-8?B?T1QrMUFZb2N2Sy9lT0w2ZklLL0M0V3NQOGlsWmQ1ZE96UmtFcktKaG5ac1hG?=
 =?utf-8?B?S1hpTU5vdHlkVmdQelorMjFONFBsV0diVkFIS3N6Ukc3bno1dVZ2WGIreXAr?=
 =?utf-8?B?NEJGb3NPMEVrQXpwWTc1VHNNUTdsNHl4NExPMlMwenJ0V3lpbmVhRFQ4QUtM?=
 =?utf-8?B?UE84azV6dGpPdGdtdkEvWlF5ZlJRWk9XVWlrVTJjWFRYM1MyRDNOaU1vNHZY?=
 =?utf-8?B?YmVwdUdHU1czWWdrTEFhR1dRYllDSWxhL0haWldVUnpuV1BaWXhkb3Vlbjgw?=
 =?utf-8?B?aXRTVnhnMEh0SkdCRUJ4ZmpqNTIxeVlRNys5SnlnQU5KWWZqOElheWYvbXpq?=
 =?utf-8?B?Y0hqeU00VVo4SEhtZTZvM2ZxRWlubVBWRXp5ME9SejF2N1lnd1FCSE00MUhR?=
 =?utf-8?B?dmdaWXREcWpiVjRYZEdBQXhPYjFoZU5PdFY3bFVUNVlZS1NtS1I5Zy9tUEd0?=
 =?utf-8?B?MzFETi9GbDNCNS9WWUEzejJnNU8vYWtZVkdLaVBIRVk0WWhoT2gwZ0I3U2pN?=
 =?utf-8?B?ZkVwWHVGTmZLRVBEejJHYTVDcmhNNmlDUzRSdUl0K2FTTTRwdElLS3FsUjN5?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb056992-770a-489c-3b46-08db91e60e57
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 16:49:07.4229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e++uyyFXtqpE/yMA3FNip8596q9eVCxxUIoJijGkgPbf39NSp/WVBUvlQnWjibD9KCONrE7nkwtr4dEcbMEi+1TjrVbae+Ais90WPB4wLHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8462
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690822158; x=1722358158;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jslrzKWN+iMWrqOzrvW8ZEqYdSd6qmQTo+Z9o6gsrXo=;
 b=DXr4CfucS1S3BueeH+F4avcvVM+WUy+MTKYVRpHyUc+1ZFhoQxahSKLR
 htPt9XyT1k+37s/HN9ks4mfGv+WE7US16yowwqUmTpMt1eXs+d4s/3fGH
 qIVikAThVWg+DJTQFUKgXjM302q/GipQUf3EUfqJrvBG7F033mW6epM7J
 swbEJZrPz8d2UFTL8/KUV12fqPhERpkJVcuDGjST0u/aq7ltzza3IYnGe
 Gne/ZfvmiKaWHkEsRIP02Avwui7mNUdQBTpda3wy6/LXWP7zHHe8Rikxm
 3k5OlGKXIhSUL4D1/YdNe1HoCD6Bdyg0lqE5A7MWr6Q+CfL7ps2tZ1KRw
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DXr4Cfuc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-next-queue:dev-queue 20/51]
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2181
 ice_read_phy_and_phc_time_e822() warn: if statement not indented
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/30/2023 10:40 PM, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
> head:   79dc5308c824de000283d82a4496567bbedae5db
> commit: a9c0311851c4ab40093e5c629881499f2639f229 [20/51] ice: prefix clock timer command enumeration values with ICE_PTP
> config: i386-randconfig-m021-20230728 (https://download.01.org/0day-ci/archive/20230730/202307300951.kWJSF1tX-lkp@intel.com/config)
> compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> reproduce: (https://download.01.org/0day-ci/archive/20230730/202307300951.kWJSF1tX-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202307300951.kWJSF1tX-lkp@intel.com/
> 
> smatch warnings:
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2181 ice_read_phy_and_phc_time_e822() warn: if statement not indented
> 
> vim +2181 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> 
> 3a7496234d179a Jacob Keller       2021-10-13  2165  static int
> 3a7496234d179a Jacob Keller       2021-10-13  2166  ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
> 3a7496234d179a Jacob Keller       2021-10-13  2167  			       u64 *phc_time)
> 3a7496234d179a Jacob Keller       2021-10-13  2168  {
> 3a7496234d179a Jacob Keller       2021-10-13  2169  	u64 tx_time, rx_time;
> 3a7496234d179a Jacob Keller       2021-10-13  2170  	u32 zo, lo;
> 3a7496234d179a Jacob Keller       2021-10-13  2171  	u8 tmr_idx;
> 3a7496234d179a Jacob Keller       2021-10-13  2172  	int err;
> 3a7496234d179a Jacob Keller       2021-10-13  2173
> 3a7496234d179a Jacob Keller       2021-10-13  2174  	tmr_idx = ice_get_ptp_src_clock_index(hw);
> 3a7496234d179a Jacob Keller       2021-10-13  2175
> a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2176  	/* Prepare the PHC timer for a ICE_PTP_READ_TIME capture command */
> a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2177  	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
> 3a7496234d179a Jacob Keller       2021-10-13  2178
> a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2179  	/* Prepare the PHY timer for a ICE_PTP_READ_TIME capture command */
> a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2180  	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_READ_TIME);
> 3a7496234d179a Jacob Keller       2021-10-13 @2181  	if (err)
> 
> return err; statement is somehow missing.

Thanks for catching this Dan. Patch has been updated/fixed.

> 3a7496234d179a Jacob Keller       2021-10-13  2182
> a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2183  	/* Issue the sync to start the ICE_PTP_READ_TIME capture */
> 3a7496234d179a Jacob Keller       2021-10-13  2184  	ice_ptp_exec_tmr_cmd(hw);
> 3a7496234d179a Jacob Keller       2021-10-13  2185
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
