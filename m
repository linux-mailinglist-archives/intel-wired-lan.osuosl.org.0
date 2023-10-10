Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A23217C40E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1BC7612F8;
	Tue, 10 Oct 2023 20:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1BC7612F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696968626;
	bh=IXPuvopp4XdMgrA/6Yxl2LuuCxMTwWOjzWXMkH/K1zo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y3W+AfG0HJpsNLVzj5OzTVBBn+Z8VQ5FFWeAVcn1koldRlWYmwAUccC7PYLyhywcV
	 eZGodO8DPR4cPVuzzwvhqugc8XcoNZrE/q9BPdtkbgZLoLyKQoAFvwMW/IN14aOPcW
	 iTpedf9ZTjMCs9homwFDmUlztu9vy3y7oPxEsSKs4HiblVJtu4nru/oLg3IKprku5U
	 QQIIpJS4B+hQJJnGTzAw7SZ/JlSGDlo5xvERZd2Cx3LZrCUu6ohDeY8NI+jURcfKt0
	 5VjSPA5kU6GSNGeMFiffPBW3BrwfT2kIwYkeU+jeI91jBW8iyOI/TPESFn4r4Mk6FG
	 XmD43/StqKl4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nNdfCMRmhrjj; Tue, 10 Oct 2023 20:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F6FD60FB1;
	Tue, 10 Oct 2023 20:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F6FD60FB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DE4B1BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08F4E402B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:10:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08F4E402B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMfpzZB71d_r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 20:10:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB21940293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB21940293
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="388367714"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="388367714"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="927283409"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="927283409"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 13:10:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:10:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:10:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 13:10:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 13:10:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCZjBgn7WTRT5KJ5AEyCxSK91LOTIAKl7nbp3zpdHpKTvw3vh7ZNyQc/gm/0Yi7U3hIQppQdJYwT7/P01vqn6lnG7+eLPuCqvH8mRP7oD2srIKufUsB6kv7+kESMAcA3AhVzg/0e4WgDjtQCJ5+Xs3ZSuJatbG6+H20ebBbwhkYLp4rOe69nYIG3JflT91ue2sWpSpR9lve2K4wksEa3Hcg5OenM3U9Zuhdwrh11hdyKvT7YX+QmqQNdyERWcigdKS8kMtqaNQrrCYy6Yt/5ZZOZ1yIBTr/vzMu/eqPaARIhEZ/iQHGhyTv7xcVOr/5nU9LpiQV4P4+EUopa75hOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAFnqPzrp+ul6ZogO3PvqKOH0pDiFH+xFCc/ZRz4kys=;
 b=HRWj1m6IcTo/Z7rJ0eizSLBJwVZZaDJRDOq+elkhCT/QJBBK1pFH2pVHsGt/Q4otoLuBeZ8Wh8ntzaCTrdTVhRjvqgC4J92MQhAisT/FPANSeCBg4fv9ccrw4To2l0tHTPR1Fl9NXzryDth0ZQej0A8HxTncxO2eH2lOsYFY9YGQZTs3pJfzLYeN4JtemrCFc0V3mHomIPCO3NyoicnB7uJKr9t5/EF0/wFUtW0v3JH+YCcuFQ2QG+imUydeTyfYHwlGgoE7jNYvVjronW2R2uEuU5zf+pOSx9Hf4yGvUk2S/7vIsFXUbszMEE09HBwg0OrxQatla0BpldJC6rMkZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 20:10:14 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 20:10:14 +0000
Message-ID: <fa769f39-d109-47b2-bf72-218f0ae846f4@intel.com>
Date: Tue, 10 Oct 2023 14:10:09 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
 <20231006224726.443836-2-ahmed.zaki@intel.com>
 <20231006172248.15c2e415@kernel.org>
 <CAF=yD-Kp8-iQtDM3+mgfJ6Ba0vkAeb09VZBa_k6RUequEyjd0w@mail.gmail.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <CAF=yD-Kp8-iQtDM3+mgfJ6Ba0vkAeb09VZBa_k6RUequEyjd0w@mail.gmail.com>
X-ClientProxiedBy: DU7PR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::18) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|BL3PR11MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: 89e40ab0-e71e-4465-9264-08dbc9ccea4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RlDan4A1cxwCio1J9j+CGEf14tIfqHBn2eCySDa3u10uwmrDTv8bqxEqwtFSbm2nkl5JOqCT1l4DhypEVfTLciR+wxVSlWUSlvTNDvr0KW7t1HQu99mhi29lZQwsO6HcJ65otHrzfHT23BM5QU1kXQjfOSOZUlFRaTx8Njr7KfFL0eLnj6cUuA/a2OaO4v8gW+z/bzfm5+56A3hPseeY7W128cLzw1RGCnH1Z5CYpZeBnTDQ2oKf66YkLdePHTa2jIybXqi+JExww4x9lu8c04KmCz8lSyH/xCoMNBM26VIuAPrzve2nGOST7+Ic6VDzRHRCUnekc+usPaJOWBBElFoCHnUxpa5VNrsLuYaohHT2EyBkNyXaDHPPLh2Ke5N2Hmit3uEkjS79B6LhQlGKUmeVfrCkaRVEvOEVszXA3tRrZf/bbNrALJORjbgXSe6/FK/nR8duQNwNSoxZSWFzVS87Kdnb2swVEwQDpSJbIgboyJMHvq1y2nH/apJUsrsPeQdwwMeRtFnKoruwRbAakKh9OJWOoj2WK5P+z0gZy220pUVHL3WYpFMGNKa1tfPc0PLLpXQCdn/VL5B8ZCT5tp+/03kovBcqIKkbs05umfsVrU361xNQJzJ+8d3B+1tR5iX4lTF/EwKUdCqlDkFRWX684QfgglST35/PevLYC9vT8GVVa1Ir1qM7GDojiNsB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(39860400002)(366004)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(31686004)(36756003)(86362001)(31696002)(7416002)(53546011)(2906002)(44832011)(478600001)(41300700001)(5660300002)(66476007)(66946007)(110136005)(2616005)(107886003)(66556008)(316002)(6512007)(6506007)(6486002)(6666004)(26005)(8936002)(4326008)(8676002)(38100700002)(83380400001)(82960400001)(369524004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1dpaFArUUZ5emFLZytzcVRXVWZ3Y0hHZmcvSmdRMlNIS0tjRGwxNGZZYktX?=
 =?utf-8?B?VTVlSW1od040bzIzUHBaejRib3d4M0NzRW43UHQ4OFM1L0o5OUZjWUcrQ3R5?=
 =?utf-8?B?d0JSWGNDcGpaUHBVWDB1c0pwdTh2WVExbGQ0bThFZVBaclZlb3FJUTU2R3hL?=
 =?utf-8?B?QzJTZWpTVlR5cnFRT1R4eDcxb0dGeTEraEpEeWRCN01jUi9YQTFHQmFMYXQ2?=
 =?utf-8?B?eXBIVzVYUEhZTzlDTlB1eEVZb2VmOTRYODRsM0RzdEJPWllYSnRVNytyUnNU?=
 =?utf-8?B?SjBOYUlUem11RXJWNCswY3NiWWRxcDB5MXZET3M0K3FZdmxSZUNyMmtvSGJQ?=
 =?utf-8?B?aGtnQ2hNVnBoNFMwQzVrVTFKTjV6UFBDUFVRWGJORzdvVHhNSTZ5V3prQjly?=
 =?utf-8?B?SkVCMXVydklHS0I3blVOY3p2bk5MUGVpS1cyQWhjSVNYY3lFSHc3YlBsR0xB?=
 =?utf-8?B?ZWlGckdUOWs1Z09SZGlFZFV0Y2ppRGdJTFExa3QraFdHL0lVcElNNGdMY1Mv?=
 =?utf-8?B?bVhTUkE2WG9QdTRta3htMytZUTJGVnNPcFA3a3RhZmU0bjBUNG5OaHd0KzNy?=
 =?utf-8?B?c1V6c1F6a0JySWZnVHZnTUY5NlpRbmZSOUlVUlozY3NKdk5uLzNadE5ZUjN6?=
 =?utf-8?B?dlUxd01pYXViM0JEVFNkVDNVdjI4N296eWhqVXZDNU9UL2hEZjBVN0pGRGE0?=
 =?utf-8?B?aG0xS0VpOGFRZmpUT2F3SHh0N3VLS21CaWYwZTZ1MmZPbFpoT3JodFdZSW8w?=
 =?utf-8?B?WllxazR1WXRVSlU5dngyb1RlbW9FUDBiSzZtbUhNVjF5bGczM2F4djBNKzhX?=
 =?utf-8?B?dE4vRFphZXh1bmlTYlY2Z3RMRzlQUDhOcFhMZjZXTElvOFgyR2xISlJqZnZL?=
 =?utf-8?B?WEdLZTZnbU9jT0daVHZuQUVoNEhIVHdwMzR4dGNrVk9UYnZWL1IwdDhWNGwx?=
 =?utf-8?B?Qm9LakFRT2lEK1VJMWw4YmNOeEFVZThVS09WcURMeDFuVlZGZkp1dzNQZE92?=
 =?utf-8?B?UzMrK3NDUXVxNzRtSmlLZ09ZdjlZWHlIOXBELy9wOCtZTFZjMC9TMzNHQTFS?=
 =?utf-8?B?czBGZVFMcmFIRzdkTG04QSsxMUE2Vkdta1EyV1VpdmlFSlVqKytTNU9NajVs?=
 =?utf-8?B?MHA1NVkvUXNaVlF3dG5FellvUWpEUWJzS25Va1NmUG1ZV2NTQXhEY2dSVndo?=
 =?utf-8?B?ZGJObDRKRUVXOHFzMmZWM0hWR1l6dGZSWTFRZjRxUmFUR1hyQTVyWFcrazdm?=
 =?utf-8?B?SWYxTnZSa0MxYmlYV1I2Z2pTdzUycGh3dW9yUGkxRWVoczBBZmpSdzdZMVEy?=
 =?utf-8?B?OHoxMkRrZndJMUJTcXdrYXhLM3kvaCtZZXI0SUF1ZWIwTldhV2t0VTR2TExy?=
 =?utf-8?B?dG1yYThoY3ZpczYzWkF6YUg5RXBlT0sxWU1qUUEzOHpYMFNTbTRuaFlxSkRa?=
 =?utf-8?B?eEluY1V3N2thampGOUZiTkFuWFVIQzVSMmhzSmFuRm1DQWt1amVQQ2ZtZzdT?=
 =?utf-8?B?NnF6MzA4MVQwUFNWU3loM3VHZjZaMCtVRWQ1eFlxRU54RXRBTWJkT0hISUc4?=
 =?utf-8?B?SnArTVF4TzBVRk9vV1Z5V3AxVTRHUVpIOWRlamZobjdrd0FIUGpSVjZTSUVj?=
 =?utf-8?B?WVlLbmhlaU4wb3VXeG5pNWxlQUxLMFlnc0Y3cXZkeU5UVHBHVGQyeVg4ZkJh?=
 =?utf-8?B?VDFUL3MybkVvOVREYmUvczNUa1pHbHN3MFVvQjNsMG5EY3BGdjg0a1RBdHhO?=
 =?utf-8?B?VkNvSmlWbE51ZE1PR3AxcDdUZEFFQWdSRWlyMFFNRHNtY3pqd1VWQmFVOHNv?=
 =?utf-8?B?aXFsamJhaFVZK3pkZ3JUa294SDdpV2VIQW01clNUK3NaNWVLRDM2dVNKc2tB?=
 =?utf-8?B?bEw5NElxS3B4MnNpRmpxd1AvaFFNdFEreGkwSjVqU285L242VWpWalMrWThW?=
 =?utf-8?B?ZlN5dU1jb3hiZWhnbHZwMVJUajVPbllSamtsVCtoYXgyeXpNbGJkUFpQeXlk?=
 =?utf-8?B?MG0wUU8yZ1JnWnV6SVhSdkRDY2pvanFOQUZ4bUo4RkZBS3VNSlNsc0tmSzU4?=
 =?utf-8?B?Z2FmS0llNHVkTDJnaE5uMGVPbEtZUU9vQ3ZFSzhkSEFjRndUSDJNaXJrcjNP?=
 =?utf-8?B?bmRObEpkVmdTZjhVL1hGN0c5MTJqWjBpOG1Rbk9QYnMrVG0rSHJrYWVWT2lR?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e40ab0-e71e-4465-9264-08dbc9ccea4f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 20:10:14.7047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QNNwDWBFaip1I1BfOpduAZ9BBqz8BQHfONBanulLX7G076sXwsJfVVkCOR5Nid1y4QoAMgNDi08D6Tsaa38gXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696968618; x=1728504618;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3wpJ/tJQtoJtF/Vo6hM3OodLWE+A1V7clnaxV8dD0XQ=;
 b=QbV3idjgN+8czxZ9W/K/sxfc/tAWkWd2KGJB+N0buPAHnAkZX4DDix7Y
 KzRnqAXtOkIfHHVBmhRZDm+/7rurEIa7zL1HTBoRGBVC6BgvXgQjrk/1+
 UVFQtWh0AJF+5zuL7v+jFacp3iwggMV7BjxdLzgZUAPGKEJ+Fnd6vr/qg
 NGe328EpYa45Vgs1vfqu8VbQmHaVdT5uHlYdfrKMg4fZon783w0TF0iJz
 1G318hl1/l4ZV71b8jTMAm3xzXAER61CveHKfmMhKqDtDAa4ZrUueAYjF
 /FSPxhwqSOmhaEFpx7e/ZjhQPEShx1BD0n9N7F59UuHeSEEQdcylauFKA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QbV3idjg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/6] net: ethtool: allow
 symmetric RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMTAtMDcgMDM6MDEsIFdpbGxlbSBkZSBCcnVpam4gd3JvdGU6Cj4gT24gRnJpLCBP
Y3QgNiwgMjAyMyBhdCA3OjIy4oCvUE0gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g
d3JvdGU6Cj4+IE9uIEZyaSwgIDYgT2N0IDIwMjMgMTY6NDc6MjEgLTA2MDAgQWhtZWQgWmFraSB3
cm90ZToKPj4+IFN5bW1ldHJpYyBSU1MgaGFzaCBmdW5jdGlvbnMgYXJlIGJlbmVmaWNpYWwgaW4g
YXBwbGljYXRpb25zIHRoYXQgbW9uaXRvcgo+Pj4gYm90aCBUeCBhbmQgUnggcGFja2V0cyBvZiB0
aGUgc2FtZSBmbG93IChJRFMsIHNvZnR3YXJlIGZpcmV3YWxscywgLi5ldGMpLgo+Pj4gR2V0dGlu
ZyBhbGwgdHJhZmZpYyBvZiB0aGUgc2FtZSBmbG93IG9uIHRoZSBzYW1lIFJYIHF1ZXVlIHJlc3Vs
dHMgaW4KPj4+IGhpZ2hlciBDUFUgY2FjaGUgZWZmaWNpZW5jeS4KPj4+Cj4+PiBPbmx5IGZpZWxk
cyB0aGF0IGhhcyBjb3VudGVycGFydHMgaW4gdGhlIG90aGVyIGRpcmVjdGlvbiBjYW4gYmUKPj4+
IGFjY2VwdGVkOyBJUCBzcmMvZHN0IGFuZCBMNCBzcmMvZHN0IHBvcnRzLgo+Pj4KPj4+IFRoZSB1
c2VyIG1heSByZXF1ZXN0IFJTUyBoYXNoIHN5bW1ldHJ5IGZvciBhIHNwZWNpZmljIGZsb3cgdHlw
ZSwgdmlhOgo+Pj4KPj4+ICAgICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1oYXNoIDxm
bG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljCj4+Pgo+Pj4gb3IgdHVybiBzeW1tZXRyeSBvZmYg
KGFzeW1tZXRyaWMpIGJ5Ogo+Pj4KPj4+ICAgICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxv
dy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4KPj4gVGhhbmtzIGZvciB0aGUgY2hhbmdlcywgY29k
ZSBsb29rcyBnb29kIQo+Pgo+PiBUaGUgcXVlc3Rpb24gbGVmdCB1bmFuc3dlcmVkIGlzIHdoZXRo
ZXIgd2Ugc2hvdWxkIGNhcmUgYWJvdXQgdGhlIGV4YWN0Cj4+IGltcGxlbWVudGF0aW9uIG9mIHRo
ZSBzeW1tZXRyeSAoeG9yLCB4b3IgZHVwbGljYXRlLCBzb3J0IGZpZWxkcykuCj4+IFRvZXBsaXR6
LWJhc2VkIFJTUyBpcyB2ZXJ5IHByZWNpc2VseSBzcGVjaWZpZWQsIHNvIHdlIG1heSB3YW50IHRv
IGNhcnJ5Cj4+IHRoYXQgcHJlY2lzaW9uIGludG8gdGhlIHN5bW1ldHJpYyBiZWhhdmlvci4gSSBo
YXZlIGEgd2VhayBwcmVmZXJlbmNlCj4+IHRvIGRvIHNvLi4uIGJ1dCBubyB3aWxsaW5nbmVzcyB0
byBhcmd1ZSB3aXRoIHlvdSwgc28gbGV0IG1lIHB1dCBXaWxsZW0KPj4gb24gdGhlIHNwb3QgYW5k
IGhhdmUgaGltIG1ha2UgYSBkZWNpc2lvbiA6KQo+IEkgZG8gaGF2ZSBhIHN0cm9uZ2VyIHdpbGxp
bmduZXNzIHRvIGFyZ3VlLCB0aGFua3MgOy0pCj4KPiBDYW4gd2UgZ2l2ZSBhIG1vcmUgcHJlY2lz
ZSBuYW1lLCBzdWNoIGFzIHN5bW1ldHJpYy14b3I/IEluIGNhc2UKPiBhbm90aGVyIGRldmljZSB3
b3VsZCBpbXBsZW1lbnQgYW5vdGhlciBtb2RlLCBzdWNoIGFzIHRoZSBzeW1tZXRyaWMKPiB0b2Vw
bGl0eiBvZiBfX2Zsb3dfaGFzaF9jb25zaXN0ZW50aWZ5LCBpdCB3b3VsZCBiZSBnb29kIHRvIGJl
IGFibGUgdG8KPiBkaXNjZXJuIHRoZSBtb2Rlcy4KCkkgYWdyZWUgdGhhdCBpbXBsZW1lbnRhdGlv
biBtYXR0ZXJzLiBJIGNoYW5nZWQgInN5bW1ldHJpYyIgdG8gCiJzeW1tZXRyaWMteG9yIiBpbiB2
My4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
