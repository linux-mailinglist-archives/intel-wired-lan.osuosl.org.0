Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB09596288
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 20:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C099941504;
	Tue, 16 Aug 2022 18:36:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C099941504
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660674999;
	bh=GfFkG1d4fpShC+kpDd3KtuHisSgjPrhLm3XQgKzNchI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KcuY8d01TIvoNRGU0YJ41OkIYYQpJsfCfe6R+FPPwMPyXnraR7VZ9ZHmyijJvTXMa
	 5Q0Kr4gL4wIB2V6CU06rWZhe4of3t8chbnFOErhFXNho5WlFw+aafrhCysVJs0yL93
	 Wtr8Pw8d3k5GW8wf87R9SF/ehfoZNyU1StY2VfQNBtxKOekvBAfW3toc4F5UEX/AfX
	 fJv5iG1XAWYb0Yk0V/RId2CCVcTKnQz0+QB6FcaF6iAuB8QVigFcUIoxXFYtF4iL7F
	 rIK9rDQSUBhfM5JYep1xph+ym8hbCDC6WooXLyBx7atT9pXQaLElT9r9iK2B2V2lhn
	 ZYDAq+0tO+MdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQwlqjgLiauY; Tue, 16 Aug 2022 18:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 780CC40897;
	Tue, 16 Aug 2022 18:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 780CC40897
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB5EC1BF484
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 18:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7ADD381769
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 18:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7ADD381769
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBsSLR7UyE5N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 18:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8BF981757
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8BF981757
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 18:36:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354045162"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="354045162"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 11:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="696481159"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2022 11:36:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 11:36:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 11:36:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 11:36:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 11:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABYHKt8nYI1jEg/MxMXzqv58tYRfvQrg4OUoReTD0AeFDcycRJBYY0KdBX3DXeoRYvExl4lRoFPma/TCDmQ5+s3QIW8bWayaavb4EbXznGUZIMd4AF5e/16IVok475xzOXUMPZeOfEFW/orUywVNJdSB1y/qD1Kc6vhO2Zoq3YnLmJ6LaeivVlkfZF0sx8dC3wadxZqd/f/9/9OXm0E46fs1Fa+ALgnbH6JDXDfzx0rQB8lqbsYFCqn9Y5HaDTlHolrzMhEz7JhCB62B5QnXICHxytMz+9fPWI2Vm/rHKOt32yVRJm8ZefpjA3ldIE0gLG5qwt2i/Pgg7IrS4UmgeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3iDmav6xZPkh0x2zJJvdmfLYjP8A7nJn1HGmU4zisjE=;
 b=RvuamfVYaHIM9aCsjqqLnxkCm9h0jBSAwzrcmfFCRwhfxI6HIZLH8G5X3yb8Roklch1V3NJ/C4HUiKGJ5UALXNOvxX/y26ZuThrgyCphR3/3x4OEH2jJVdlD/9oFgmiMvTlxD7GNqFxKMylzBN4d7IhPomY/lMz+f8KuK3I8gK5p1mGMMtklUX9DX0OobJyu+Pfup87Jg97gs/HBd7cxEDzDXnKXgqqstOVZFgFCTezkhMPmEXVYjLNBM5/59yqTjOfmvi9KtqDGY9XvfrHsjv3ciqXIa9/uVLoTTbYTCoKxE/R+S47oLnOQCN+oTCRNDwn3f5JOBQVytWeWM5ZIhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW5PR11MB5905.namprd11.prod.outlook.com (2603:10b6:303:19f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.19; Tue, 16 Aug
 2022 18:36:25 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Tue, 16 Aug 2022
 18:36:25 +0000
Message-ID: <08bcd4cd-8d25-9aaa-8b71-6c01b23f68fe@intel.com>
Date: Tue, 16 Aug 2022 11:36:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Lukasz Plachno <lukasz.plachno@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220816122242.26012-1-lukasz.plachno@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220816122242.26012-1-lukasz.plachno@intel.com>
X-ClientProxiedBy: BY5PR16CA0025.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::38) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfc10878-0c19-43ec-361b-08da7fb63951
X-MS-TrafficTypeDiagnostic: MW5PR11MB5905:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sh8dSjNfAWBbMh+S/g+min75w44l0N6LeNqMFFXOYOou6tOnS07oxjW5MIqS5iUqsD/fzQs4geT2iV1W0/Ypd9xlzo0jrbHsXaGCHXozF7wCrBjFiDBqkWTWNeTK1vd9H2Roip/8zxC7B2x6oAk7f4kFCePftGNw8xV5bjJc9ZBj0lLlmnh1zoskp3y5WmAYDKMcBwQz651K3D5y7M3LzliHfGFdNjEdkIBJ79G1OG3LfkCTVqfavM3dj4px0oIJ6wYXP3FOAueHxbOLtdLXJU+E1CeDtOvBdxHY/IQ7fboRWbEA7HbYZswIPliUt+Rj5pMlpKPUFCdwo+k0PQivh2jd4pUgcQhbg32emoLf8pBf621EflMkU5klZJqm7rM5965lunZSUHKDmyeQ+nzVyizr9s9IP9d7seIZQqSE+w4ODrQtsj/bh5vgYFRgIw6QPqZkQk0r77QLaDaSF4dH6qCAkJwD958OsqV+fMFU3VQ38yxb5yg28HCFJXAm1YGOAWsEiMhrD7ibgu8DTDS+VkloLqkeohMu+vlr2eDyEI7N8lwNKSlHy9q6HXSbFDW8DZJcWR5QGQCXLKgvPKRQl/mVyANvmja8QvvF/CGzR+r3lAZ0gpn0PP1p4WmOnnUDUWiQA13Z2q1nLDPozIs49yk5l81nECOfTjfTBzOIXDnIf4JI4BYkOMWlXoGmGHsU6Boyw5ykRR3YhbPANK4TUr1us6sb4IOThQkYuYwHOoSfPelS3me1+ocR5xdu9EePq2wA5Kt4WkWnVwl48egphASsINY0oKgV0NIMnnjFrJP5z0B3ld+oxlyoDHZ0xHG/szlnxRyvl3mv/rliKNzqWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(366004)(136003)(376002)(396003)(53546011)(66946007)(26005)(6506007)(8676002)(38100700002)(66476007)(66556008)(6512007)(6486002)(478600001)(41300700001)(6666004)(82960400001)(31696002)(316002)(2906002)(4744005)(31686004)(186003)(36756003)(5660300002)(8936002)(2616005)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1JDWEE1a0YyY09Gakg4SE5FQStnWWdFUEVRQTZtbndKeW8rbXNLREZ1YlNi?=
 =?utf-8?B?R05lM2JNNUpPenA4OTVBbEJKazI2Q1pJNWdMaUZkRXhvaFA0cEpWTkllMngz?=
 =?utf-8?B?czJVSUlxdEh2YTM3b1hUUmNDM1FiUVBKLzg4SER4LzV5YjAwS3BHbSt5TVRU?=
 =?utf-8?B?Rzl4MTlTQnY3RkY3UmxodzRiS2h5NzB6dDBwUHFiNDVzM20yZGN1WWRBUGJZ?=
 =?utf-8?B?cmg0NHVaK0l3eTR1WU5OVkZIOUlOd2cwRHJTbW1wdHhxc0VXbmgydjdMdk9w?=
 =?utf-8?B?VWMrOVZ4YktmNEQwRXhJQ2FOTm5KdGFNT0tFOHMxV3ZuRldCQ0lISURmZmpt?=
 =?utf-8?B?b1Q1T0ZOUnNoeXRndGJzTVpUaUxWaXRlcmxUTWNiVktlVmY5MmxPUXZZbnVh?=
 =?utf-8?B?Sk44MmlVWmZEQXEvL2txU2NVUjVxcE5veEZURm43MFhXOG00dzlOL1VZaWtL?=
 =?utf-8?B?L0FXY3NUNktJSU85RlJvUy9WYk8xa0lpTWJNd2UxZGpPb1dCREVyNGlHNmJ0?=
 =?utf-8?B?cnhiTnNDcDEwMmp2ZG9jQ1hKbThXRWdheWhnTlExQklGa1o2MFBXc3Zxb2dv?=
 =?utf-8?B?WThzdHB2Qzd5ZmQ1czdGVGhLSGJIZ1VKUHVKL01NeVpqdVp6ak12Q1FicUFT?=
 =?utf-8?B?YkRQZnczVFVhdlliWEVHTVUvRGpGbCthL2s4K3FMMnhoQ0ZHSzc2Y3d4MG8z?=
 =?utf-8?B?NVcxK0JiazRiSk1Zb3J5WFA3SWVGMzZwMDJxM2p2c205SFVWWVQ1OXZoeXBD?=
 =?utf-8?B?NXltS2w4S0o3QzlLRGVra2lXMTZTRkl2TElBNHhXeE5XT215UnN1d1NId3R6?=
 =?utf-8?B?bG1QNmJqLzU0WVhMUy90L2Mwa0dBZU9KSk90TkllZ291Z0xlQlBoWFhjbWpy?=
 =?utf-8?B?WkRnTGhrSnJBUUNDMEMrT3FKb0FnaUJzbXZXUWtxeEhBczJYdTF0UmlMdmVS?=
 =?utf-8?B?RWxtSDFQWTM4Vkx6WTJ4QkVDNnlkY0hnblNQZTk1WU1OMDNUOC9BRk1VVDdi?=
 =?utf-8?B?Q1VINk5GeXBPL0dHOE91bjhRUmh3SkVEc3ZHVnlaOUltbWFXSUQvcVgzeWZT?=
 =?utf-8?B?Rm0wVVM1VlBxeHY1MW0yZnBIYjFES3NBZGgzaTN5SENWbGs4cGZPeXhvcVRh?=
 =?utf-8?B?eXlpUEpxOXFpYkV2Z1VtZldNeFVrNXU4c3FyV0l0dkM2OC9oekd3aFhrbW5W?=
 =?utf-8?B?T1g2NTRkQ2lNdGlqYk55V0lneUdMTHJXbE1RMTF0Rmhta05wajdYMUFtNTJy?=
 =?utf-8?B?Vkw5QUNRbWlIWVR1SXhpcFNSeGx1d05aNGM3ZkQwMEZFcGI3L3NFUVdYRmpv?=
 =?utf-8?B?KzhKSEJhQnd5czJURzZwSkowSTRoWW9zMng2VWJXYTFOSVp3VEdZa09mOFpX?=
 =?utf-8?B?TmkrVlZ2RTFiVTFQam9sb0plc0MzNENFYUU4Z2ZYd0ExWEcwTEx6d2d4cktj?=
 =?utf-8?B?ZkhZUTVKVW5mWi9rS0Z6NzRJZGlhV2RWMEU2MUlFRmt2bkFWdnIyVHhGcys2?=
 =?utf-8?B?Tmc2Tmo3VFlZR1JkOG1vNlRGTDJnc1RhRDVXcE9ZMk5qYXk0Nko0QmtseXBC?=
 =?utf-8?B?NWdQdFpvSjlzVTVsV1hmOFNZTmZkbzFneVp3ZkJtVEk0aGE4UW0wSjdNL3pv?=
 =?utf-8?B?cXdTd3VLV05rR2l2cDVudHppT2sxanVKbklLOWZFNUNRQmY3ZE5hSlN5TU1V?=
 =?utf-8?B?QS9BcWR5ZG0xYW5xcjFObXhZOS9EQ0xtaEpFRFRqeFFVVnZFa3NqWkpFTVVM?=
 =?utf-8?B?S3RscVJRK0MrWWUvM3JjYmQzMmV1cE5OM21aRmE3RXIyTjFCYWRUWmZqWGw1?=
 =?utf-8?B?ZWRRTStQaXkwUU1ZclpXOCtKRU1vYXpvN3F4MjFUN1o3QndqQXRxZlRreHdF?=
 =?utf-8?B?THN3YVNFZkFrUmdqQ2NkaEE4UUJzWjhjTGM5Y3FaVVNqbWlEWmIzUk9heGJ2?=
 =?utf-8?B?VnBxTjJuMi8zZFJHeE1qM3htMGgyU2Y1TllBTXo4VlFDTTJzc2lKdko3eERN?=
 =?utf-8?B?Znd5YldGTkE0OE9oN1ErQVpQYkJIcDBNQ3ZyU1BOazhrYjVXUUczVWJSNXE2?=
 =?utf-8?B?ZDd4NGtwVyt2RjlzWlYyWVN6MUY2am5LYXlTVWp2SUZPR1krM0lMUDRWSFhV?=
 =?utf-8?B?c2VCTDRPWEkyUnljUTUvTFRzQ3FtT1M0aHNNdjIrQUxSRCtNL2JTRmlvR0VW?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc10878-0c19-43ec-361b-08da7fb63951
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 18:36:25.6401 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GR9MMwDqNiYAoULMf36cp68Sqfn4GjcZoUkZyWSZ65TqM0lJJ/WRl7dpus5jmnCm74xit9jhvf9gw9E1LdRS5OlIq9B/UxspnMkpBxwoFZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5905
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660674992; x=1692210992;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xA6xNVBiOFnDkUcAHSJ/w51wFe2Qzyf6iyIo5Rlh514=;
 b=PqmPQ4Hjz7pFznPYXNyRcSOkYoehnNyugHr76zWOrRaC+uVWF1Q3CgeO
 4xbtQTXuKrTvXz+KifhGVJbUFWzZN1n1l1iskfNRdsSgIvUT0JRp/iCIO
 2f5sPwhpzWJ0gag9YqMX4rJ/+5D/0T7SNB8q3/qgR3T0JZSYNAUeZPqKr
 rKDp2righ/CTB1MUDsKlti2uEPfDZwotGNWIEwP+cqxEXyZId5rMex1b8
 ektHu8aM4VpsPz7rmQFZaQ9ZZRZB19kaXvRS7RIjv3LDMwj26CIdnj27o
 O+juawj5/iVxDGq/sHLGoVPtAu/7O5aFl94ldaMcBYExCBDVfHBM5LQ54
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PqmPQ4Hj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Print human-friendly
 PHY types
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



On 8/16/2022 5:22 AM, Lukasz Plachno wrote:

> @@ -204,29 +307,48 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,

...

> +	ice_dump_phy_type(hw, le64_to_cpu(pcaps->phy_type_low),
> +		  le64_to_cpu(pcaps->phy_type_high), prefix);


CHECK: Alignment should match open parenthesis
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
