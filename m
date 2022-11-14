Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BB76283EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 16:31:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81C7E4067B;
	Mon, 14 Nov 2022 15:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81C7E4067B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668439891;
	bh=iGtDTKknDRSiAwTSiYYJHIjMQT8WsWIMouow2kln+so=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7n8zFroH9waJXIZHc+qdvYxWbAICT/fNv6HVhD9odkcmxImGV3GjX7Emgh6UiygYw
	 2NJPfQc5TwnQCBeoRO4tQNDEvsDbJBmlhHUkARa93ni1lwOY93jTpSH0rWJKvApPF9
	 uf4IQzZYpG+IDI9S+6DGUSpemRFD1kdqDcA//n66LyEV/2jH7MgCcNYz5QWBmdU8bg
	 WZvS4V6MHUAPkHv6W9E2KbBZCC2PRm8YavfSmXZo5JMP81EMsyq/0fo4C4u5222Mnl
	 Dan0xdLiAZeaj5/y94tI0CM5Qqa+T74I84IJ0ScgHfb9PxsHoWpUwFYPGpUDOJOHNh
	 1TmcMOAUSK72g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ITfvXa4CCW5; Mon, 14 Nov 2022 15:31:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EA494064D;
	Mon, 14 Nov 2022 15:31:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EA494064D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 833A61BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 15:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 695AE60DFA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 15:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 695AE60DFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqdKIwKXvjis for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 15:31:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A8B560BE7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A8B560BE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 15:31:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="291713789"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="291713789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:31:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780966071"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780966071"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2022 07:31:19 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 07:31:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 07:31:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 07:31:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 07:31:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cnTdqACfvvbX+n5xDCsKK/0YqnPj+MiASLCBm7miarJWTzM5Y/Vt8mAf5njj25V3O+MyWdT+wGxx0PO3zacqUorMMrcgnDhrzK42qDLp8ogjpRsA1x8NOvbrfzQaxNdoxQB4X640LcJDLLVheKmnoG7eoqy7jyuuv6nExPENhJX0ofUsSDzf7Pf9TuB4tRf08VShBh7t64wVSj+m419BYKW1T5gI7PKNubXjJz64GRNfvv32bgpviJvLS49/s4rZlgGubzTwQGadmUx7J/ZiN58UvUIgezGVu+m4X7DOP92TdKKpd9tR6iO56AzPtsF1rWjuTS96p7yUn2xfwFYMBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FsoPy7dgthLwzm/xYc+8idWrQ+q4SAyMdzPfQMjsQsc=;
 b=DpSolQa7w5xzaku8RSJyYG0dYJCtk1PRu50eYbTFDVrdNvkwzDzXihifyEB3IBa5cucuAikxJEMtixwt0HxN+HKjubnhq32WtPoDDJZ0txpxbuLYI+vepQDh5G4oWM89tY8EL9l4vONh3OBQxvKhIXzRwTL8OalWmWJuGdNxDBCqL5poDm6NI4Nmlle5y6xyDDHeoFtJkKBRoZHotK5XQ3al2VxkD1XLQYgAtyYLg8WAr5FrDffnYUgSriArVBbQcqSQyTZhE8Lr26BJtRyEkJf302frI6bK6jPgJ/b6CYqYR1/ZAO7Zbi9iJFJa4fO6kJlWGt3bpCfPik1B22mK+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by DM4PR11MB5357.namprd11.prod.outlook.com (2603:10b6:5:394::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 15:31:16 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::f09b:dc76:ce14:2d2e]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::f09b:dc76:ce14:2d2e%9]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 15:31:16 +0000
Message-ID: <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
Date: Mon, 14 Nov 2022 09:31:11 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Leon Romanovsky <leon@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
Content-Language: en-US
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <Y3JBaQ7+p5ncsjuW@unreal>
X-ClientProxiedBy: BYAPR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::16) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|DM4PR11MB5357:EE_
X-MS-Office365-Filtering-Correlation-Id: 59288f2b-7ea9-4fa1-2af5-08dac6554538
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4hZjK9vboZTw9Zt6iRBpyuINuBc3w01azkbRQfFrqFLg8jHSieP4VeSl0JgjfW5l42Me5c/T1GmLnK6mAmI6R6/ZXPple4+8hN925ynfblG/AIlVQ7l6ApmQFia3aaLEWZwWgDRMueklD6fdfEKpAFLjJ4XajaEnETUpUfsakckHL0hgxuyPMPb5Bs7UeSZX70txIZsFAvzezWAb8LoyIq1Ry9oM3fFM3iwu4gdpTo3GisVLzl3beR7jcyPUZE1wD7YH4hqO5eXSHcirUtIDjO2n43ZS4y9hK6SUaKOChsl6pzmBnRR3hCEIrRXc1fQ5rJuWNQbwiIhS3rsLyZNs+1RnEcyPmtENN6mVCmwb68P06UCUaeLJB65PIXSTd9McwHAkNlOxGalwnWpym1xZg1Wx8N/qVW9M/qosn9lKg8+chlRLstycQ8PBhwMM7dtuLiVMCTChUHDrXWDbC80TcYMteO3GHZpoq5/MCMRKSsMWKr/VDJ0s9i/MxLyQW1K12H9m80DnDNw/hUbeyhOHVFtLK7oEokxME1QtMUDRpwkevHvS229jaYP4Tiq/XEvutXR+dCMmg2H7rtyfFPEJrW5Qkn+Z7TWf8Vd5d/NpL7c7YeNBkN0VHaBGB/dxjkkFbM8M7zYGvpFzUjudQokky6PJxi+zZ7+59EmIWYGVVslHO7pXGq20Tbk6oHEvFy5NZ+kQhakFZdMi3r7yhqWPtDMBqngRbCYSl6FUWIoudcFlE6Yobk6lSNoCJZ9zjEGVMU35+ClvX+OA/r9SkLqc4FwHPm+K62vSiLaAlugjxX880xWCl8tLzG/TIsR74g0mrJEO1wDR+ODyujWaE8NlQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(39860400002)(136003)(346002)(451199015)(36756003)(31686004)(41300700001)(31696002)(86362001)(83380400001)(82960400001)(38100700002)(186003)(2616005)(6512007)(53546011)(26005)(6506007)(2906002)(6666004)(8936002)(6486002)(478600001)(5660300002)(966005)(110136005)(66946007)(8676002)(316002)(4326008)(66556008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0RRUVBBdnFYclFtVVh6aEhNSFBNOHlJMlJrWUtNQXBUMHEzMjZUbmd3c1lZ?=
 =?utf-8?B?VDQ1SEQvL0RHZ0trUjFLbTRPcTZySnRETWZGV2pkeUJST3ZrSVhBMUN3WUhn?=
 =?utf-8?B?dG96djNpWklIajZKYmRqMEV0VTVhV0JOL0RJSlBuTXo4ZzMycDdRM0hpdy92?=
 =?utf-8?B?Y1RhQko5azNaelY4cG80RFRxREFvaXpwMDNvTVRMTWQ1eTNydGx2RkZqRVlG?=
 =?utf-8?B?NkNtT0Vlc25HNHp3UjNmdGY5OXBpbkNOcDdTeTRPV0NTNzg1UWYxR0VEMzBY?=
 =?utf-8?B?cW4vOGdCak4za1hLMWVQK1dQUzlsNTVOMVF3RW8zS2pBWm5XYVZUZ1ArRmpi?=
 =?utf-8?B?RkljUDRHV2RtTzJKV1FqTHY1VkU4ZGpaS2VIZTJHcDBRREhDVHB2K0tVSXV0?=
 =?utf-8?B?emhpaW1maURWUmtYd2pjWG1wMmFsTENBVGYyd3pUUXErNTQ4YzlSckl3R2hG?=
 =?utf-8?B?S291dGE0VmFWOUxQdjhNZ0NwZG43N1RrN0dtTjNPdnVvN2M3bldTOEVXVTVz?=
 =?utf-8?B?bGNZeVpIOUxacDBPZVZtemZ2dHMyZGVHeUhBVFVIQU5ncE5XV0tNS1pSVmgz?=
 =?utf-8?B?OW4rdS9kQ010cVo3dDZwcjNaLzlQYU4zMnpBaVY3ckN3VDR3M21oWlF2dG9m?=
 =?utf-8?B?VGpVYjJmTWo1S2pjNENJeWxFVzBCNEhzbFpkeEVXZVRBVTJDTlJUblI1RlhC?=
 =?utf-8?B?VE1EblBwQVpjcXJiTFN0cVUxZkdWZjF6cXczSlJNeFBXRUZBaFpzWjU5b1A3?=
 =?utf-8?B?ejVHZEdGMXNabWtwMjdXMlpFcjBvaXBXdkVLWUkyandrdjlDR2NKN0V4NHpz?=
 =?utf-8?B?d0lWL0tRYUJXamsyb0NmUUxIbFZhZGo0YVExQTE5bzJGTjJYazFYeWV0TEJM?=
 =?utf-8?B?cm85Q2NGc011U1loNTVqMExHWGdyZmVMd3pVWnNnVlV2cU53RUxLSks3Wm5z?=
 =?utf-8?B?UEtMcTRGbjZHUVA2aGNxNW5rUElHV09HTmR0K1B1VXRmcG15bG5rd08wc0hM?=
 =?utf-8?B?Y0dzODRSblE5bTBHeVh3a09nKzdFVUlLQUpVcXJkM3ZseWtWYnlKNmludUZV?=
 =?utf-8?B?d1QyeDVJTEJmSnFGSzRIOTg4MU40OG9OejhtRmwxK1B2YW5XUWVINzFRMW0v?=
 =?utf-8?B?OFFVZzdzRFNxV3RUVDZCUDBHWDJ2azFlS21ha2ZIQmNiVi9hdE5taVJEc3Fw?=
 =?utf-8?B?MGQ4eXJqMlphRjI5VU1kMDh0dmMvbzJhQzNuaWI5QUhSS3lHYVRzTUp6MUlX?=
 =?utf-8?B?QjRtSldiT2FIcVFnTGNVNm04SDQ5VDhGV3lFTXREcnNrcHZPbnp6Vmh4eFNG?=
 =?utf-8?B?eEowSzA3R28wcFhsL0FYVzJ0eXBvYWpiaWVZK1hlenRobGtVQUZxOTBxMU8v?=
 =?utf-8?B?RFpqdVo0T0FqSzdrL2dTVUdtV3BrZTRMWXdKbUpWWDdKQ0FxQVdrNHlCeVNx?=
 =?utf-8?B?cWpybUxTREc2T2FKb29VMzIrZWQrRGlEVm1VYkRuUEFWUE15K1dFd1k4LytC?=
 =?utf-8?B?em5Md3ZMaVV5MHRIUWxzanllWGthOGtvdS82OFBLb3FPUTdjZnVZMHlWcTBt?=
 =?utf-8?B?eEh1ZzJDQW1PRTVYaDBRc2dwakYzNTd1ZXBsVGhqTnRVZFVXSFEraThxMWMx?=
 =?utf-8?B?QkJpOTN4YXlCczl1TGo2Ylhid3NpeWZyOHFUOXJPM3lPNVpPZWQ3OEhZL1FG?=
 =?utf-8?B?TyttL0NQTXZJcXZib3p2bFpJRXZ4enJFbm5VTnRGU1o4NkJqTjI1VlRrV1Nn?=
 =?utf-8?B?QnZMSlVTcTlqZ3BNa0M0bkQ0bW94VCtYdlM3d2lrZEdTcWdXeUJsWUN3c1p3?=
 =?utf-8?B?OVdmSEVnWWdaSU5sbDRlZ0VtVWx5MFM0cTRxRlE1MnYyemlualBCVGdXRFJu?=
 =?utf-8?B?c1hxUlJjYTlnUGdoaXF0Z0JlVThvNWpRclE5RGNnaVkvbWxLa0JNVmdRRlVQ?=
 =?utf-8?B?SFFZa1FkbHJob29tQ0VjcmFtQmhmMkVGaTZBYWVxYU90T2pFeWlDVXhPNTBZ?=
 =?utf-8?B?b2RjTE8vditESFpxVmZhU0xxMlJXSHdVTDRlSnBIMHFiSFhoei9NTTdNOTRu?=
 =?utf-8?B?MmNKdU45dGFKRm55bE1JQkdqcUl3QzFvVzdJdFhxaWxzbTFkUXlmeGwramxx?=
 =?utf-8?B?eDNCUmYvTDhkWHc2c0hyV2NPci85N2JEQkpqUVZlM1VPZytkMUxsZDY3aitD?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59288f2b-7ea9-4fa1-2af5-08dac6554538
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 15:31:16.3737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ug/YTH5Pg4jzgKppUuaT8ewwjs0yNuAzatpCChbiddAI3sTYzeJRjiyMMhnldjShlR4nIOFIXx1SWRKKM8lWx1pPpwf0ee+vDmKQIKAyFSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5357
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668439884; x=1699975884;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FsoPy7dgthLwzm/xYc+8idWrQ+q4SAyMdzPfQMjsQsc=;
 b=iTsnbGk5cpBnyA7aDKutxwcwlKoE2PcpxzLLLMAdbphNvY71Ce6Wc+Hk
 yJBmA1nGYEDzIAKihtULCrpu1M0rBUV8VDKfbRUNH1UOlC82qtwG15Mau
 XXLNEy1PRYmk/y7w3N0w2Y6AafapTR0sjxoaQVxVjr+cm7M3+rygLYtly
 uwiVUvqWkcw9Oq/AZVWrt/x3mDcp5bcLa3cVslresVr113kEafVMt/J+E
 9u1v+lzPLgNCAdlma9Xyjw8N60paZQyrd9HBldaJwlFOLJYLdRHQ3Mnq2
 ioCHLZfXv0LAntI5GfTcjsGAbPGEx/+B1qX/PNPGvyXzN5ad0QNn/Pkrr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iTsnbGk5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: mustafa.ismail@intel.com, netdev@vger.kernel.org,
 leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jiri@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shiraz.saleem@intel.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
>> Currently the default value for number of PF vectors is number of CPUs.
>> Because of that there are cases when all vectors are used for PF
>> and user can't create more VFs. It is hard to set default number of
>> CPUs right for all different use cases. Instead allow user to choose
>> how many vectors should be used for various features. After implementing
>> subdevices this mechanism will be also used to set number of vectors
>> for subfunctions.
>>
>> The idea is to set vectors for eth or VFs using devlink resource API.
>> New value of vectors will be used after devlink reinit. Example
>> commands:
>> $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
>> $ sudo devlink dev reload pci/0000:31:00.0
>> After reload driver will work with 16 vectors used for eth instead of
>> num_cpus.
> By saying "vectors", are you referring to MSI-X vectors?
> If yes, you have specific interface for that.
> https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/

This patch series is exposing a resources API to split the device level MSI-X vectors
across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
in future subfunctions). Today this is all hidden in a policy implemented within
the PF driver.

The patch you are referring to seems to be providing an interface to change the
msix count for a particular VF. This patch is providing a interface to set the total
msix count for all the possible VFs from the available device level pool of
msix-vectors.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
