Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5CA84707C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 13:41:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 759DD84D6F;
	Fri,  2 Feb 2024 12:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 759DD84D6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706877690;
	bh=bEqMi/th0dOUMlR0sK255BoK9QdVZsIxL7Ce1T3ND+Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vpjHUDlR1m6RG1v5q4FUt8Mbq3fsCLsqfeAJbGgQEXx4ce79YMKGBXGPDS9BS/Z0b
	 Gu8+LL17R+aepnkiW5yGmnOfxzOomBpAF9vO+ScX6A3BNIZoFqUWjbxyOEX3RNBvjA
	 03Cd3nHUUl2dVaWeUFHli9ukR9tFj7MGcZ/O5OSV4+xkWoHfhxdgce8nYU2PHrk1G5
	 IhAocKAEQL3V3LtAcDqn5JzATb3wgEa63MBxrVi3BPICuPFjF5zAm898Rqlubn8yJF
	 ii4047P/F6ae07AuwWj2Bqudq4/t2GfYPe1+YzED73QShWoxxS5tTZU6sdsbrjLpqd
	 xLoLFR9G47X1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtQXHwvD0aSK; Fri,  2 Feb 2024 12:41:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A13F84D5A;
	Fri,  2 Feb 2024 12:41:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A13F84D5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE361BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E27DA403F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E27DA403F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkQJpzzRdaGj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 12:41:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82FA5401D8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82FA5401D8
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="4051327"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="4051327"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 04:41:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="77914"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 04:41:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 04:41:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 04:41:21 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 04:41:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wnf84XGDc9TW5AJrx6/xWL4D7TVgZmTkP78PM6Yqzd8PmUwbm5qyvHvCKGJP6RJCx7ivR9GL2GxEBPOCBEzWCXOYqPIExEmq1TCxu+cj0XUPVep8P0pms7z73pFeowKBcLS/EJrccSIqceeIzACIoq6SQuRB7vi0FzBKhhlJe3oKhd74OdXmrP8M5dFZo+EqNLdbXsJbo8A5bKX5rFdiFkOxru9AULY/RmRf4H1v2x/CeNEO5hhf+EoGZjYExng/d5z63UcSE3tG0Xco5XOpUDYQ9iB47qFuCA2vN3ZZpW/ud1+6UndqTphBkzNTosPeSKTW1YdC23poBRDxTZzdcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bEqMi/th0dOUMlR0sK255BoK9QdVZsIxL7Ce1T3ND+Q=;
 b=FF+3xTI1Ou/9GywEHnuUSN+6IpeyclJGZd8Xl+H5G+DG1GiYiME8xvEAkS/RhDJyknWkQA+ti1cn7D1Qt6utjdIdg2JRoWU6ZE7waJBM+fVanEbwy+HXFQbbKVGpmd+lrqYyFt3DXJfhkumcnrRkB6uKNXiljV+bsfr2WLrjakXSRZS8vpC1kQoLBp14tQAvMC9UVph78sabdkcTBQy9sK6oiHJ4NDosqb+PA4ghC99QWoJmwGcryrFf+nujscw93kZUmpuNNHryqQdlU8llvABR0rmxxbGQuhFu7OdnkfIWj2D3umYcd3mqaLKxqrEvZHyXFycBnibWn6gjGd8orA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV8PR11MB8533.namprd11.prod.outlook.com (2603:10b6:408:1e5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 12:41:18 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 12:41:18 +0000
Message-ID: <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com>
Date: Fri, 2 Feb 2024 13:40:18 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Michal Schmidt <mschmidt@redhat.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
 <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
In-Reply-To: <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VE1PR08CA0032.eurprd08.prod.outlook.com
 (2603:10a6:803:104::45) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV8PR11MB8533:EE_
X-MS-Office365-Filtering-Correlation-Id: 6da289a9-2921-4ab2-0ae9-08dc23ec40b2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: avBNqqHm+8ziZD68JUsu6QijbLVXY+vlAcxE3PB/FG9McWNJ/tF0NnKcGXwwEsxbtzMlwN45V1AWDhwTPg8LetwIgOhClHEywAH2iELygT7w7K6tkNlJh9Umk08fGBp08MjF4C57E71ZDE0Xv0PP0rL0311eW4MbZLkjY8iOv61jIRIGKet6UeghvM9AOoGE6d0SPsC7CvJRCXVJ5PA9PorOcUjscn+y9pXrMO7RsAd2+lF4XIeXKhaxMvSJvpeiUM2gHITqDZJbN1h1hEU3waANzBNVOD45uMbbe1FW+gajeEzJrFZoDjt5Dh4/K/dXWr4as+UCcBZcfJKk9fwGZ92lLGe2jTJ6HrL8ae9PE/nI2Mrs97NfNz6UMfAPnrJqjMOc/NMwEqAv5xmTgVah6aJ20n1WeeDldzVK/2kmi5tLPygPZJGngUGDpKVzxpshDBkMR+yoT6uzyLcbmcqIADqpfT1YRvURe1Jg7NZ0guZK+GjUVPyXqRXRBpLWJw2AFj5fUsahoX85stplZN7gaR0YYRrBy3t+OsOsg42b166F44npzvKuQz1mbaV4SubZlwpSoZXBeA62aHkGmtmmpcvo5uj/ZnPODHZbF2WsgvUGUQf5mhMsz/mTTkyNXeeqLBOjYR/Kot1agAd/Adx2IQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(376002)(366004)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(5660300002)(478600001)(966005)(6486002)(86362001)(6506007)(31696002)(6512007)(53546011)(8676002)(8936002)(66556008)(54906003)(66946007)(66476007)(6916009)(316002)(4326008)(36756003)(38100700002)(2616005)(41300700001)(26005)(82960400001)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFJwYXZTWmU0UjZneWI5dWJVcFYxSUxRNVFLeTJKMk5oSmlOUTV0eFhOcUJm?=
 =?utf-8?B?KzdjTGdaTzZPRFBvUjZEWGl4VWdwS1BNQW85WWJVbFpsbVp0aWZNYVVTZTNO?=
 =?utf-8?B?bjQ4dmN2TlZBSndtWlRndGZPTTBGSnBwSXpCRFhpYmhCSk1BdklHKzMyUHBP?=
 =?utf-8?B?NjlTSTdSdzNoTFpSSHg3blJ3VVFpeVV0aCtnYWdWYXhOamU2dVBkMERpNTNm?=
 =?utf-8?B?VXZ3czBkV2R5OFJJOWJHRFVxNVdWSlFudmRSQTRVWXNoUUdKRUhsWlpHNngz?=
 =?utf-8?B?YTltbzllV0pQUUVzOGdVekZGZXc5aE9xOXJPbWtFTVZMekdvdmhmaU9oN2VH?=
 =?utf-8?B?bU1rYU5MZXBSbWpYdzJNWUI5MmN0QzE3MVFxZC9DL29LekdyenpNVjQ1VElu?=
 =?utf-8?B?cWtkR3ZNNEpGdlpyd3Z1cjlxMEFMdTdYdXpkVzJYbWh1RCs1akxJUFI3R2VG?=
 =?utf-8?B?T29rYWRmWDF4ZTVGcjJlcWhaOHgvRnppNkU1SmF0VTFyMUY1ZW1CQVh1aG1P?=
 =?utf-8?B?QTdVd2NEUFhId21GZ3UreGJQVVBTSSsyNzFKakpINFlJdnNpOVlpcUNyZTA4?=
 =?utf-8?B?cjdWRUd4eHpSNG9PUmx5aVg4TWpBUEd5c0g0TTVoNFQ4bEtNUmtDN21tTi9p?=
 =?utf-8?B?L0tLR1kxYUVEWGRkeWZqakp3V3dpK1hJLy9lVWZleEljVXpXTlNTa0hjUUFC?=
 =?utf-8?B?NGsranVvMVpXeUJTQjJseElwNHIwZXkrNGVFWUM5N0hDR011emJTZXpZR3Fz?=
 =?utf-8?B?RjFGR0N1NHZnUTNEaWx2VGNRcWZqNGYzZDZ6akZXY2F1YmFTeTRSYlptT2py?=
 =?utf-8?B?US9yV1JBdHRSSXNXK0puMVZkMHFON3h1dVVpV1FDSklHVFlYNFlyYUNuVlVY?=
 =?utf-8?B?anRoYmVSay9NVTExYmVzSkRDcURhVk5SWTlGaFh4RTQwak91QU5IaUhLTk8y?=
 =?utf-8?B?QUxYSFRPT0hTRWQwMWg3elZUakhDQUxNVThRKzJvcXZFNU9Ranc3RHhpWDM3?=
 =?utf-8?B?SUdtdUJCRkF2WnFNWFN1ZHZhQTB4dC9XS0UwcjB5M1dETlhob3VINGdLRXQ2?=
 =?utf-8?B?dmZROFp3aHVqdVphVTIwaGlPNngvU1pvRUhaRzc1eWtQVnQ4NmFYNWV0bkg3?=
 =?utf-8?B?amRpdWhKNzA3SVRvTDhScmwwTm5TMm1vamgwTTBpVitFRCs5eWxTNGswb0VI?=
 =?utf-8?B?UHB4cGhJOHY4cmxidkdRRVMyb1BpWGZ2OVU2cy9WUXZpa1pueWxNZkRBNmgr?=
 =?utf-8?B?RU05NEh6bVVya2VZZGFjRDhSTE5wRW1sOG1ROW81bHAxT2tBdWVmWXF0ZXY0?=
 =?utf-8?B?MEV0SWJEYVJpWGRHRmd1T2s4eEdlVGlvMnBmRDdaTnhvajkrK1hiZ29Ca0k2?=
 =?utf-8?B?WUtMT2lHUWxxN090L01GbDJlUllPUG44T1ViN1NRbWJ1cG43c2pNQS80OWgx?=
 =?utf-8?B?N0ZoelM5ZncyaWZMM2szS0RwcWJMeVdlMk1veHYrQTNmOWRJb2pSTXhpV0tP?=
 =?utf-8?B?M0lsTDdIY2ErNjRHb3RGRHc3YjBiZmxGdkV0THdnT1NDWGhKRmxIdjgvWTB5?=
 =?utf-8?B?cUFRa0ZBYjIxaEU0dXFHeEZVK0dIUXlnVGNLWXNEcDRGMzlTRWdsTkV5V082?=
 =?utf-8?B?NzNtVzd6ZmdsN3VQd3VNZE51eUY1eE9OckQyNlJqeVJWSHFVVWJRbVpaUHNX?=
 =?utf-8?B?UCs0WHhzNnJMRWgwbkJNc3lobmFDVWJLdkt2WG9DSnAyVlJZRXAvMHExMEpm?=
 =?utf-8?B?Si9SZzRTdGNjSTZFQ1RlK2E1TDV4bGNNZ09XM2lEMEp4dUU5S1NybjlERm1U?=
 =?utf-8?B?RTJIMlBBVDNaenF3VEo2SUVQbFQyM2lnY2F4Wm1SNU03OGcraDVOTDBuWWI5?=
 =?utf-8?B?RzZHZFdsSVBHRTdYbENSU0ZIRjVIcHh0RVhXb3dVNStRSDdFd1JZZXhXT3Ey?=
 =?utf-8?B?bjVrd3dkTTRhcmpaTEtuMllxeTVPTEVDVW5lWnU1eVJHak5lY3p1TkdHK3Ba?=
 =?utf-8?B?Ymg4RkR6ckVmSzRFZTBjVHlJZHVmUGZPdGVwa3RiT29QTURWVTBmTFl5T3pV?=
 =?utf-8?B?cnR4UmppcEROdjc2dmxPSkJwZGtIZVRMUUg0MkY4SktTb093NFliejRhUis4?=
 =?utf-8?B?VlZFZHU5Vnc3NEwxTTRoWXBPdW1UTXJKK2RIM2hLQkhzUnB3RTIySzJZU3B5?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6da289a9-2921-4ab2-0ae9-08dc23ec40b2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 12:41:18.5276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: grQgY5Dvgw2NEsH3FUptub1xAbVeu7AKkDd1KAGXwm9zDfGEkjWWq0rMcgTQ8O1Ht0gTIKvodeAGL4O3mCMyFB8UrSvYouN/L3bhLYkf64w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706877683; x=1738413683;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EnZBeD4Hpg4O4YTpRUE4l119FfFUTkvxUvinaHhFpfo=;
 b=LByo3m69wdx5gPS26fGOuDde5Wa35pxIogoRA5gJfDS6eLVAv0uvBXnO
 Hay2HMY0l6T4s5dKTcFKZyRm83bxPn0eQi5kvTh9HQS2u1z7peeP1DJ7g
 q7edouT9o1svLQpoV/xWlsmEEJndXYWkZyjFdXNuy4SkuEinxX+2uC6hQ
 b/7tsNYIhr5ejujXnN82wnvKsTHFEOxi4kN3lEOP0iCiUSz6AJMoQwwHi
 fBN5FfNwc05qeXlFy0YyVBfMA3/aXznzHVQw+vgXiTnjdl3ErCm69nqCz
 lc9FA9zCIroyatVRbCyRXFFdMXCbEPtxb9VBqXCEe5oM/u6o3DYDreO74
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LByo3m69
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Jiri Pirko <jiri@resnulli.us>, Daniel Machon <daniel.machon@microchip.com>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Dave
 Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Fri, 2 Feb 2024 13:39:28 +0100

> From: Michal Schmidt <mschmidt@redhat.com>
> Date: Thu, 1 Feb 2024 19:40:17 +0100
> 
>> On 1/31/24 17:59, Alexander Lobakin wrote:
>>> From: Jiri Pirko <jiri@resnulli.us>
>>> Date: Wed, 31 Jan 2024 13:17:44 +0100
>>>
>>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>> index 2a25323105e5..d4848f6fe919 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw
>>>>> *hw, u16 *rid,
>>>>>     new_rcp->content.act_ctrl_fwd_priority = prio;
>>>>>     new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>>>>     new_rcp->recipe_indx = *rid;
>>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>>>> -            ICE_MAX_NUM_RECIPES);
>>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>>>
>>>> Looks like there might be another incorrect bitmap usage for this in
>>>> ice_add_sw_recipe(). Care to fix it there as well?
>>>
>>> Those are already fixed in one switchdev series and will be sent to IWL
>>> soon.
>>> I believe this patch would also make no sense after it's sent.
>>
>> Hi Alexander,
>> When will the series be sent?
>> The bug causes a kernel panic. Will the series target net.git?
> 
> The global fix is here: [0]
> It's targeting net-next.
> 
> I don't know what the best way here would be. Target net instead or pick
> your fix to net and then fix it properly in net-next?

Sorry, forgot to paste the link :clownface:

[0]
https://lore.kernel.org/intel-wired-lan/20240130025146.30265-2-steven.zou@intel.com

Thanks,
Olek
