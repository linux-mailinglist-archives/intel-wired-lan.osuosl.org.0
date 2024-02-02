Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4784709D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 13:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10E1843701;
	Fri,  2 Feb 2024 12:47:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10E1843701
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706878071;
	bh=caSO4772LzqAm6dfj4PZfyv3FfdZF+hngXpLLbFvGN8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7I6eHciK4b7h/Bb4Tu47GVyVBK5WksOkkSSr1DrWA7TRAMuIMuPxR+tXhuWzBW96E
	 x2QIadxluQRYWMRuWK4Z2tawhuoOKg75UUcXWs08237QqY9a961YWDjISpLHIeyrXB
	 vGBRcwfOcBReNZEwZEdXRNpBOGuEH7WPvIvOuW4bEXHnKmHE+Eom1UnvtquY1weo8F
	 0huslKR6jguYgKad4e36jIY/zCQAgSZgmuGUjaegf9e24mSaByU2wjW7fL/KjGoMzL
	 Mkal2GuYGf+l82Ga7x/gQ+x/7vop7MBSljppz3jKzuJ107BIxSWGbf1/m26BPOIYxP
	 0ZRjt1PygljMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9MXKJ4r58W8Z; Fri,  2 Feb 2024 12:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4A38436F4;
	Fri,  2 Feb 2024 12:47:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4A38436F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37B8D1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:47:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F1E184DEB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F1E184DEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-kra_wqqcNJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 12:47:43 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 02 Feb 2024 12:47:43 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32FC084D72
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32FC084D72
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:47:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="68301"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="68301"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 04:40:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="70307"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 04:40:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 04:40:34 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 04:40:34 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 04:40:33 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 04:40:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dS9Rk70TTP47wcwgtwxol63qTOuXMs/3TNE+MQsL+UUo+lliGmktByD9Ht2GIBNvoaOVlJGKqQDfQYc+l58Vl/mSys1XrD9WRWh3mcud0XXw3Q7lItzit4I5MPfWwMKtyBr0dXGHIPNRtHd27M5RbE4a5qnP9kS/SgNEgXe0ykITEBfSrO4XoAb+fqnzexVj0y5S8SHmp5WpuUULqqL4DCAP9G5TaNP30puwNAGg5HKX2FxPYwB0/QS3UClfsmwqUqcm1+tW1aZSoDVxxMZ0Rn0N6SmuKbvyoerzYhfcK4NI+2AXUniVgdtDagOr67osF+4aUEdI0HW+RETvzg0Xrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=caSO4772LzqAm6dfj4PZfyv3FfdZF+hngXpLLbFvGN8=;
 b=lsZ9GZ77Hsz9hnph5qf2HC6Vdd1GFv4AnGmzLgHQvZAdn6SFKZLJ2Ae58H7J/QYDyIyLJJMn0L5UtBMiSrblja+lddV4iQoh6GY3kACLPa6RxCR0KckqSe65eHwlLzLzoo9LthJHbokIlVrIspRM3iJ4/X36gVFH3bC6lnvuTRpLZATcI9MyTuQ31p9afsYv8bqUD/YBc1faoRm+DwhWaXEoCDosRUObFIHA7GAJUwEA8IrRJ8OU6ZzYzTQc7u8qPrbLnnH2QOjundUtorZkefOJ9wX6Ed+rMaVxidbJhMNsM5Y/FTIKfbgnOXWgMEBaGt+s3X9wUfzXBoDB/pxdSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV8PR11MB8533.namprd11.prod.outlook.com (2603:10b6:408:1e5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 12:40:31 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 12:40:31 +0000
Message-ID: <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
Date: Fri, 2 Feb 2024 13:39:28 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VE1PR08CA0032.eurprd08.prod.outlook.com
 (2603:10a6:803:104::45) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV8PR11MB8533:EE_
X-MS-Office365-Filtering-Correlation-Id: 7769929f-9c02-4a59-b3c6-08dc23ec2480
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VDoAiSp/RFXyvKa+OnDocv46dQ482Vru4F3Q/vepDDTMUkxm8h+8h+NGN3ClyRcXOGJT4TGW7sqIs8OPzNBMuEE3qG5RSSSomhaebfpHFyFGUEB5OS+EQ8NmrNYtUaWndJ3xG/eDuhdL26wuSsqRbbNNO1PRzOuMGII/AzOWjgmEZfqQJgCU35On4jlHszZfENi8DpxLg/ZxO4qevv4kZjmltbQCGjxagFt7VhjGO8AkGAP6prsbUBl3eX7fvjmm1iCy3LJKgIBIMTB84rjPLRxdjPMEHx+YN3GfJ2AAHyLAw9UzHl+W1NSpXN9Z0ctfoVMLFvgfX8WOFNmOZw6yIdtt7TvehRSx0na4dg0rdNDih5G8Uw1krfrv12Zx5tOQIOun6tOxkcIHAzh8p7LQmwbdXCDS1+wf+w1A6Xk/J5YGCPjiRjiNpQEl71WSGN26cKeBXthpKKzPKB9weI7J6N40KiCPEFvvi4FVjSyg4kBMVHe0rdxXdOICPHCrKXCwmKD6ylhhEVYSVGDwLm7wknonPkmW6CTKLzSTAekBZu93KJ6clJjShD6fLtsjUaOvAFq3pHffLUYyYLIfwdCDreneyuTtCPXSVEQqxyM7Q4ZWSITR0q+6msy8M0FAqACxep79cg4xWkMiYuArtNTRBQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(376002)(366004)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(5660300002)(478600001)(6486002)(86362001)(6506007)(31696002)(6512007)(6666004)(53546011)(8676002)(8936002)(66556008)(54906003)(66946007)(66476007)(6916009)(316002)(4326008)(36756003)(38100700002)(2616005)(41300700001)(26005)(82960400001)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmRZbWIzTzV1VkZpSStibHpndDVieUpkRmtGMzFxRUtOdjl3QnBuclFzTkxm?=
 =?utf-8?B?dkMxejJjZWllTXBGY3dPbWRzWEVkNjh4VFpCc0dmL0VIQTJYdzBHdnUyZ2Rx?=
 =?utf-8?B?YnczRkg5cHkyVXMwTHFWM2ZLZno0bTVYT3Zsa2FiR3F6V3FwQ3ozNERVeDVy?=
 =?utf-8?B?YUptT2NhQzlabWYzSGU1S21NbGl4U2pLeU8xdkJmMFlpWEdDanhEYzVKRDJp?=
 =?utf-8?B?MXVFdnNIQ2pMSHg2V2Z0UU5FV2ZpNlJPQ3ozemNleUg5amMxNUszVnc3Q29T?=
 =?utf-8?B?c0NlVnZzeWlLeDJ1K3djZHdyUXFCSUVOT2JxcGtZQVBJTUJiTXBybVNGa1o0?=
 =?utf-8?B?YlpCNU5zM2UxRHd2bDBIMVV3bkljZjIxYXkwQVZ2ejBrNFVHTUtlR2N6TG40?=
 =?utf-8?B?cEt1dzM1czdHNXhvN1liSVBkd01QamVkbmtrQU9jcnhwWk5xKzJhUzhSNDZO?=
 =?utf-8?B?aGdCMTh0a0w2YlhGcXlodUdodU52d2VHcFJWcnB4bEhGRUtBeU9pd2ZLekFE?=
 =?utf-8?B?dnFoMHQreHB2ZnpQUk8xMkhyTENoNXF0RDlLaytYR0QvOWVFL09idWs0cHZN?=
 =?utf-8?B?Ynl5SnAvSzRtTDlMMnRrdWkxZFBvcDMvZTdKbjI0K3F3dVFhUGd2SmdWOG4x?=
 =?utf-8?B?RzdEUW9XYjhRcGtFTnRvUGEyNnNUQmprR2cxaisxbWZkakZiTzBOZ3pRWlVW?=
 =?utf-8?B?N0haWDVzbTBSTnB4TktLREx3cVdBb3U2S1BjVkczRzRHNXF2dExHRmZyblU1?=
 =?utf-8?B?S01DMXNhOFhqczZMVFRZQm1NMDdHTlVQTFh6TVY3eXg3SDYvQzNHT3BMWUJp?=
 =?utf-8?B?OHIzRG54OWdmOFFpNmlGUk9xL0ZyZGZkdEMrWUhuOElxYXdLSHI0U0g5Tk95?=
 =?utf-8?B?aFpHZnRZeWYvVHdkT2NBbmxiSk5hWUdNVWhlbGVhMWpONWxoMTVrWWtNQmtE?=
 =?utf-8?B?bjdVbGVQMm5UOUdBUGNlU2l2Z2hLSSsrdU83d1gxclNRTC9LeXJsMDJNQXcw?=
 =?utf-8?B?NzZRSnhvOEhib0I2WnlZd3RybWZMZXkvc1I3dXlseXd3N0c5eFpHSXVSNDNY?=
 =?utf-8?B?bnFQREJzNWVDc3c1YWhWK1R2RlNDek9mOTcxSXp6ckl5Y3RnSitEMFRLVldC?=
 =?utf-8?B?aEN6RzlsbjJEM0pvQXRkbysrRzBHekpmSk1wODh6VFFlOE5vQWRqSlRwckJV?=
 =?utf-8?B?MHJPL1pTb01TSm16VDVXMjRBNWFqZWQ5U0RPNVNXb2txWmY1MGZJdHZ4TDds?=
 =?utf-8?B?YjZrTXZXR3dNZURRZjQrUlV2ajZ5OHU0U08vUC9ja09QdkxWeldmclBLQTRr?=
 =?utf-8?B?TmU3RktqaG1zQXBETmJBVHR3enlDbGs4bG5zaHh2dmhQT2V0eEJXTVU4ajlr?=
 =?utf-8?B?MXlVNGZQMmdzdStRalVueGlxZkdmTTljSTc0RHFabmZObjZPVU1CZXZyempQ?=
 =?utf-8?B?TjRnSDFlSzRwc2JMcmRhRExGbEtWaUZKWGpXQWc3UURvT0hLOGg3ZzJJS2V6?=
 =?utf-8?B?WDBOc0Z1SnNVbkxqUkJWOU82ZUIxR0k5S2dFYjNkUzRyaEg4azJtNmc3c2ZI?=
 =?utf-8?B?eWszaXVnN3ZZWGRvQWpkNE95WjlpdS9WSUJ2Q2RpWWRhdjlhc2VFSkhNNWZh?=
 =?utf-8?B?QVFieUV0YXJHY3kxVUIxNUViKzF1VVFiUnVpb1dieW9nT1FMZ29LcnRVa3BV?=
 =?utf-8?B?a1dPTEVBRlJqT0F3TEF0VVVkT1JvNStEaDVUejlsSDZtbWxSZmoyeE5vRjNH?=
 =?utf-8?B?M3pnNHRTRi9iRjU4QWdKd1ZtVnFwU0ZOQ01yUXozaXpKcDZSTCszUThwbGJC?=
 =?utf-8?B?YTYxMmRTUkNmQ2FQalVpQ284YlNuN1BPWEZrRlFTdmtHNTFQV3BIV1I5WGZ3?=
 =?utf-8?B?bzRIQ2hzdnNSeVViOFVTZ3d0ZFd3MGJzZ1gzcUJFMFIxQ2wxMlF5MS9LcG40?=
 =?utf-8?B?eWw1WXptbmZUYW0yaEhJeXZCdFNxYU94VlJwYm5YVWxYYkpwY2t5aThPQ1dB?=
 =?utf-8?B?ejM3YWI4dFlDQ2Y3OGpianlxSnE2NzYwdnR4SUFRcnl1QkRyd1BER2JrVTZT?=
 =?utf-8?B?NkswRW1VZzhaaEZQaXMwbS81UXByVE52bE9UdE5NYnRnTm1UR2ZvS01BVXA3?=
 =?utf-8?B?bXBNWndEenlkVUlHck1tREdQelBrYU91bHFkdHVldFRiR1Qzc1ViQ1BIM2Zj?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7769929f-9c02-4a59-b3c6-08dc23ec2480
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 12:40:31.4311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kR/I+Vq/vc75QI5opR86xOq8supaHKM/rBvHaZDB6yx+3H/hpjNDtdayok0ishufDl6RkzW4s4gcYhKzoQQxRv1Qjr9Kq3hBJXzC9rQwTmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706878064; x=1738414064;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xcMG62Za2izbem5zmjVxGY3IOioNXsS6N0ch/K6lxzI=;
 b=J993hJHitqkjKaCx3TB51aI4zNXHL32QZG2XQ4r9+zsVh9kqDedEW8kZ
 nd/idcQNFV6jL/2FxOUYPMGceetoP3rs6IHs2VWjQ0Cdo99f9eAkK7oZ9
 KOcvkvcYnVLR0Vuxo1aG2TAWOFI+OrphZqZcFndM4mU3Ivt+pluf3Hfoo
 oCFOVVidrikpDsLPM2oU6tczzKXgzOdOSPdbsWk0dmpjt0j7IiJet+ES8
 Bj4GQeM8rbXQ0kC0vSVk7cr6RBbVTL7Mj/tODYfCWKDCK/GJsgAiUrw2E
 6K0hGezAvDA/DLT3WAJkH9TYg8Yy387EbuIK7+35+gr9dnMQLmAWj0+fV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J993hJHi
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

From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 1 Feb 2024 19:40:17 +0100

> On 1/31/24 17:59, Alexander Lobakin wrote:
>> From: Jiri Pirko <jiri@resnulli.us>
>> Date: Wed, 31 Jan 2024 13:17:44 +0100
>>
>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>> index 2a25323105e5..d4848f6fe919 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw
>>>> *hw, u16 *rid,
>>>>     new_rcp->content.act_ctrl_fwd_priority = prio;
>>>>     new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>>>     new_rcp->recipe_indx = *rid;
>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>>> -            ICE_MAX_NUM_RECIPES);
>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>>
>>> Looks like there might be another incorrect bitmap usage for this in
>>> ice_add_sw_recipe(). Care to fix it there as well?
>>
>> Those are already fixed in one switchdev series and will be sent to IWL
>> soon.
>> I believe this patch would also make no sense after it's sent.
> 
> Hi Alexander,
> When will the series be sent?
> The bug causes a kernel panic. Will the series target net.git?

The global fix is here: [0]
It's targeting net-next.

I don't know what the best way here would be. Target net instead or pick
your fix to net and then fix it properly in net-next?

> Michal

Thanks,
Olek
