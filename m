Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BE47A0EDD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Sep 2023 22:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63630612C1;
	Thu, 14 Sep 2023 20:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63630612C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694722644;
	bh=Woy5gh1X+NgObj4odoZ5Ni6o6EPwzujm6ymHoT7N+fY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a1NXWiueQyJS5cV6MCXx4B1RwAj8nQTk6w3U2YaJQvSBn6wa8cosSrmf6zH3SsQJi
	 aMSD2P4MM0dE9UVzcZUbIqSpHxritvnm2Hzy95R6crpP04iMpNJep1FShJxOCOreOH
	 d2qBee9vcgexd/XfoxzagDKDPzFvDRxdedIrLGXzePmB1gvq5vnM1irP+EGjxbRiHP
	 oyosxHnleV4mMFuYMxQ4kPVwclr6Obh+8Iyg6SpqC4KKPk+zkNb2lLPRerAKbbOJ3z
	 R8MCNSO1R/5lSbZX9etNn5iN/2hSzAw+5HcD2+JSNrLKGEO2BwmcDkY1HDHNGEPI3T
	 l7+UbNAe3eiCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eDJFBfR6ivom; Thu, 14 Sep 2023 20:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D536612B9;
	Thu, 14 Sep 2023 20:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D536612B9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DC781BF3E3
 for <intel-wired-lan@osuosl.org>; Thu, 14 Sep 2023 20:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24DF683A8D
 for <intel-wired-lan@osuosl.org>; Thu, 14 Sep 2023 20:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24DF683A8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DkOCMEZaWp49 for <intel-wired-lan@osuosl.org>;
 Thu, 14 Sep 2023 20:17:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD3A983A8A
 for <intel-wired-lan@osuosl.org>; Thu, 14 Sep 2023 20:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD3A983A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="358480277"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="358480277"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 13:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="834888123"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="834888123"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 13:16:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 13:16:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 13:16:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 13:16:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DLewV43VE0V8MPyTVZhHpAvntuo4SBccokcN1BSBFuqx4h3NwbmLCYyQxR7WYSOOnuSPVO02UIjH2LXtxOIi75PYRmmK5eFXJ0mdK9GlqK4TUCqgjUvAN2ippK3MIf8tuEy6qxOBSxxjhlTgHgE37CQckHMvcgFhHPoP9lDeW8AhWaLN2X7LX2N9vpcwIyrbydx4yg75PVsp1rczsoTCODdWGgNs6Xaq8w7Kw6NLIvRouOMJXtxpSVv6kyOoEZ0RC4ceU7qgRYlpiwf+LZ05hfou51wP9/bzGIVMwuf926qDdNTuqOjUKMX0vq64RLnKgFOHD64eNDFyE5iUAnueGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjH3nV58CvGFYcSt3e1HNkutWYkW4u0oKENInZcs0d8=;
 b=avIt9FzVDDCgPIHEdM8cxdsCr+wnYZWwQw/69PkZmEc+Lf8Y38Jo+L65mxAjQqPkwxK9EqWfCpyC3XgnqODrpdBXzfo+l2bQdKFEarV+On3vOIrw58SZwOSaCY9lCDeUDnTy12WxPwYYjeNHSsCgzwuO5Yz7aizhWc5DjqMPrOtHqy2+IrtS0KnPmVLUM1Vn/Q3+HtpnyCa/1ijQJVtv3nP4kH2+0zRLr0WD56QKukWxt7Ldmt9iEsCz+mHm68Ya/ffpc1dWfmSn4INLnxyrkFf8uArfSeWMDxilTWWrZzMA8jEtfScVTwi9il9rO/eeAj+H075XUTRdaVOUybUTCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 14 Sep
 2023 20:16:53 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 20:16:53 +0000
Message-ID: <b8e01dae-73f8-d777-fa22-807353c28e80@intel.com>
Date: Thu, 14 Sep 2023 13:16:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230913042752.11947-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230913042752.11947-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: MW4PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:303:b8::6) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN0PR11MB6059:EE_
X-MS-Office365-Filtering-Correlation-Id: 6006428f-23b6-4bef-f90f-08dbb55f8939
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kFWzVz/jBKjfpy0Zle8ciUgewZgdcm5EBaitSamrOilYhjHqrfIFYNsxyVIbew1WisDwK5Jr9aqaS0IterBFJzsKEO0qOkF+TtwUwXTCCY1QNGxyIRzDXjsSKrQf+nLMyQ+xgok7xTmT6LT/HhybM9znjSfzb+fdywsBRJfQcCHl/k2tRQifbV3QF/HS+VLcfhgGQNpZ/18cS9NT0wln0V6upy75WoUs8tIPQZu5mHahdMaORxe+kkeWKmt/bL7Rxo3TYtzWlszfpH3GMRd5Jz87EbwLI8EYz5dM6EuxhI3nnbiLkhfBXMFAb3DrlZ2pPA4MLY6MUwHTGPsR3pN1slavV3W55fgkXkJFhPuI847XVNAo6hCqbhUUtjHq6zo9Wa1oXC3B+857K2459KZCqsHFBChe94iFvnPqWpM2sn3YSd9PAfxA6HO7PgtWWsjfByjgiqV1JttM4JxQ+QPdqMGMHyBX+RAErloH1XYUuxHJbgYWJlSl07xKQc3q8hi2jpcNloi8RXyqY/pvGybOzj010oRwqxdRlt0mKX49HutdP/K/xoamWETWUAvPX3OU5Gr+NYXOGFra3THYWE+B8HxQPZAPtrrTHY3Q5Z//ts+foQl6ElDsqNXm61CU+78KeFR4/8ZLAAM/o+QrEyxXNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199024)(186009)(1800799009)(5660300002)(4326008)(31686004)(41300700001)(66946007)(66556008)(8676002)(8936002)(66476007)(316002)(6512007)(82960400001)(38100700002)(83380400001)(86362001)(26005)(2616005)(53546011)(31696002)(2906002)(478600001)(36756003)(6506007)(6486002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFlBS24vR0lzb3RVOTRycUM1WXlaVXpoNHNsMGNZOHRvTitmSkg1TW94RDFX?=
 =?utf-8?B?c2wrdE96aDE4OWljejVlTzc1RWN0VnRzRUJiZzVWb0pBcGlXcEVDMXlQaWxS?=
 =?utf-8?B?aFg0clBPcFRSdW01bE9Memx6QjBBYVdKMCsrWFdlbHFVZzNmem15NGI3bEZQ?=
 =?utf-8?B?Q3JCSk54Y2RjbUVPZEJkOVpuclNEdm1IR2F5dzcycVc1akFaSDczdUt0VXVK?=
 =?utf-8?B?OWkzQkNuNFVZTWNkTVdIZXNCcmxvaklndmNsVlJTUTZDa1BxYmNxVHROSWlF?=
 =?utf-8?B?VFBXQ1E3SWJiWTQ2MCtYVStvN0IrdFJqWE9BaXVHN0tQalMzQXhKVTNuV0Z1?=
 =?utf-8?B?TUIvT0V1bDU2L2pBUVdSU0N3MjNWZTJnM2c4emxaU0dKNEVHMnRGaGZHVE8x?=
 =?utf-8?B?QTJXWjRlakdFT2FYN2lRSEZyODNmd0x5MkV6L1R6d2hLYlpSNnBJLzd6M2p4?=
 =?utf-8?B?NE1lSUord3hpOHdNTzhZeDhWa3NNQlFrS0VRUUJUaEJyNEZwSjNLeGo1R2NY?=
 =?utf-8?B?N1VEdlVmSXQyYytOOXNMM2k3dlQ4WDNPVU1sa3V4K09QZ1I2OFpTbUlYTzBW?=
 =?utf-8?B?SmlpcHMvdjUyRUxJbGJmaDRKemRVZ3RTMk1JajYxYUNrUEdtcUZybWF0TzB4?=
 =?utf-8?B?UE5kQUxmRkE1a2V3WHd3dWJOWWtGejFlRzZJMWFHTzk5KzdkUGtGb282YXMw?=
 =?utf-8?B?RTZiRm92NEhpWGxMNC9NUTZveVdGcGpzeVZodXl2bU9LMGY2T2tLRk93R3kz?=
 =?utf-8?B?VXJTUEQ0bG56NER5WUNGbmZxSmRjSjMvYTBSK05NeGdOSG1xdWZoWjNISjZQ?=
 =?utf-8?B?SFdPNjI1Rzc4NWN3UmprTXhzRDlmMFBJSUd5OEFzOW9EczRDV09iaUxJTU1i?=
 =?utf-8?B?S2p0U2JaeEpKb1lkbXp1STdLZWpKdEVmdlprbElvTlNTaVF4U0ZzeElZck9t?=
 =?utf-8?B?dElsYWcrWCtrdU1yeTNKdml3SkREdmEydnFFQkNLQnZUaGxtYnltWDNjRFU1?=
 =?utf-8?B?OHNaWVRDaGw2YmMvRDFkMXVBcHpBb1FXSWNCalRGTWMxcXR0WWFYUEhZLzdn?=
 =?utf-8?B?SjZXRHo5ZVMrclQ5VzJXS20vUXdEZ29jVEZsa29NZEFvVGwwWERBcEdjc2N0?=
 =?utf-8?B?VXhKVG1ReXo4bXJMcVVESlJINlFKd2wycTY0N3NDNUNRV21BYjdVS3JkTGl2?=
 =?utf-8?B?QStPcHVZNU4xdTBaYVk4eTMyTDhQR2k0aERFdG5oeVpUZmlNVkN3V3ZuaXBn?=
 =?utf-8?B?bFhSYVl0T0hacUtlb2dzamFsZC9jU0hkMVp4NmI2K1poT1RyRkcva0hiK3d3?=
 =?utf-8?B?WDREUGVZU2hqNG9ndERWYXZ5VjIvaHV2bDBkRWNIM2xxcXluaXJnbXJpR0s2?=
 =?utf-8?B?cXRhYnF1cVFKVWFDTVpZQy80TjBYUzlZdWJkN2lDQUxrcEUzM0lkTk44aWpy?=
 =?utf-8?B?Vkt1K2xaMHFxT1RtczlkbThORmcrSmtzSHNqRlljOTMvMHl3WXMzQ0RCRnd6?=
 =?utf-8?B?dHZXNGVKNTJBU3VDVkhiMzR5NnVDZysrT29YcTc1N0NicEduQ3dDUEIxSDhi?=
 =?utf-8?B?NncwbjFIMCtXWWlKeE5VSVVDM2lUcDBWOG5saDMxd0laMGlOcFdweXRNcTJT?=
 =?utf-8?B?T3ZRTTU4TFlwcWFTalRndWVMMzFleC95UVZiaUdITEpEV01uait3eXVMSnRC?=
 =?utf-8?B?dDZOQjRBSFk1dEQxR3dpUTRiczVCY2JvdUNzR0hXbXZRQ1pCdHkydmIrWEFo?=
 =?utf-8?B?MFV0UlZheEhnTVJpNmgxY2l2YTlXa1NWeTV0S0xYUVZ6anZVYXRRbk5jdHRV?=
 =?utf-8?B?WURyZzBmOWNQb05ob3BkbW1ZTW8wbE5MSW5BT1JreGl4di9WcVVUZUFrWWdF?=
 =?utf-8?B?eko5WmxvSEQ5Q1hBY2hILzhGR2pPN2xNWU45cXNZUVRlZGVTdXY5M3hIcGpo?=
 =?utf-8?B?ekZFTUpxVnM0T2xpeW1Sd2JmRkdBV2R3VDMzWlB2dEJCZ01sdUsrcmxlT29T?=
 =?utf-8?B?Tld3ajIzVWl6THRZL1pCQ3ViT0pjcnJwZVVYdlMrbmRhYmJuQWZGaXZOd0d2?=
 =?utf-8?B?dlpzS3hhNXhBd1QzeWNRbGZpZ0I0SjdHbDhheDhTNldIRGtZdzkzSUtJZTJN?=
 =?utf-8?B?UU41Q05TdmJLNStGRFRzbEx3NTg5S0xUc1RWUzRza3dFQ0RHVzJPTDc0WTFM?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6006428f-23b6-4bef-f90f-08dbb55f8939
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 20:16:53.3448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mZST6yya4uyJKs+jfWcPWLsCIYZjhzVrL9wmvsIHG7T5ypkJKinlN1gIf2RK1L6cb6bgUjta7ZIWBu9l/rRakM9uhcVuFGAsKvACD/ZZZA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6059
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694722636; x=1726258636;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TXzVYgWVW5aw/hkNJ9wR7v4Mz7WIKKgXJeeUvtxuD6g=;
 b=SxPpWZLwbuLtbC8AjOl3VzkCCe+54u+Zo2DSB0GA8xTHFvw0XD+Y0d2a
 XneYb41IhR/ljEFCoTcCACK/f0IsRhW66jWG7JqKLfHg3kU9hrsTJCIh4
 TGcBW8WZTb/Y8Rz+UJ59wpF2Hs+rTBbX82iUi8Ebsz2U5897YTC1vTAGL
 R7gnVZKdqr+A3KqfZkMtY/2FiYawBp6U3nO5+p3cnWHbpOI5GVWKIbv75
 bbmnnql78GcYY2WKMSrL0bMGwA1O+VCmgfarOwj5fzfvoWp5ZQaH0s4U+
 aIZmJ6h24PkA8IWUA6X4TORNPLjfD70Nvx+E07JUeCuge1yN8Wb4umkJG
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SxPpWZLw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Add support for
 receiving error frames
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
Cc: husainizulkifli@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/12/2023 9:27 PM, Muhammad Husaini Zulkifli wrote:
> This patch enables the NIC to (optionally, via ethtool) receives
> the errored packet frames as it was not provided to user before.
> 
> According to Software User Manual Chapter 8.9.1, once Bit(2) is set
> in Receive Control Register (RCTL), bad packets will be received and
> sent to host memory. Receive descriptor error field (RDESC.ERRORS)
> shall have the corresponding bit to signal the driver that packets
> is errored.
> 
> By turning on NETIF_F_RXALL as well, all broadcast packets will be
> received and any flow control packets that aren't recognised will
> be sent to the host.
> 
> How to test:
> User can set to receive all frames using ethtool command.
> 
> Example command:
> ethtool -K <interface> rx-all on
> 
> Previous output:
> 
> ethtool -K enp1s0 rx-all on
> Actual changes:
> rx-all: off [requested on]
> Could not change any device features
> 
> New output:
> 
> ethtool -K enp1s0 rx-all on
> ethtool -k enp1s0 | grep rx-all
> rx-all: on
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")

What's the bug this is fixing? Seems like it's adding new functionality.

> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> V1 -> V2: Fix typo in commit message
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 98de34d0ce07..e3f4b3e95cd0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6850,6 +6850,7 @@ static int igc_probe(struct pci_dev *pdev,
>   	netdev->hw_features |= NETIF_F_NTUPLE;
>   	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
>   	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
> +	netdev->hw_features |= NETIF_F_RXALL;

I questioned that this was all that was needed, however, looking at the 
driver, it looks like the the rest of the implementation is already 
present. It would be good to explain/add to the commit message.

>   	netdev->hw_features |= netdev->features;
>   
>   	netdev->features |= NETIF_F_HIGHDMA;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
