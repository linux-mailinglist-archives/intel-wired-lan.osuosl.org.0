Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3840A288FE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 12:15:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A75680D1D;
	Wed,  5 Feb 2025 11:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NySAkA6o8GpC; Wed,  5 Feb 2025 11:15:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4EDA80E36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738754150;
	bh=HKs3K8jUr1SrxTOyoJ441lvGTjwQl+mDcEpjghrZj2s=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fqmv4wcTPdLYmX07Pzw5nAccTr29nIQJgv75OmRPRvhODdNOcug8Uu8M32jbDyHTg
	 0EaoPe6l4pTtZFUbTXICuKfwp0valHiX89z+9ByJrGXapL38eHNIHDtejz+uxBIdVl
	 dL62PzaGw1aRQKWJasDffdF7pDKmdUkleJMtiJ+Hj85GiR2oYXZdupimHt2FJDcGls
	 PA3loBY2V1DU76D78ig6lnQHDtpdqjsVtedwkKH1LGLPSPA2I0x1tDwmyZgYtdWy6D
	 auQH5ft3GEGCkjCZJFd43pUoe1Q3hC8u7OV2wwkVyUQjAHcFTDlh7A7gAS/m+q4cPP
	 +18pyJK6RBVqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4EDA80E36;
	Wed,  5 Feb 2025 11:15:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B4A58CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98B4260B14
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wo_vH9JH26D1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 11:15:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAE2660B0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAE2660B0E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAE2660B0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:15:47 +0000 (UTC)
X-CSE-ConnectionGUID: Vu01GGj2S+WQZSXXZQ8FlQ==
X-CSE-MsgGUID: SUjxpeyMQD6fF4jbDUEa6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49963174"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="49963174"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 03:15:46 -0800
X-CSE-ConnectionGUID: 4OeEDkZESXWMSEEvZN567w==
X-CSE-MsgGUID: 2QJQzFzJSkeDlLYc1sr5NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115868156"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 03:15:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 03:15:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 03:15:46 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 03:15:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBxFEyaO7Q/SQAPHvERyF0QxJ4vPRGqoU4OO6Uzk/7Gvjg/7PM4cT/B0AD7rZCo5djo/1Xg8L9YVldHbFoR62IZ86R8hfH6mpLHUeTG28pvnigqWealpx3nSX/IMQ+LOaGjCpZM4PbFMh5EuOzdzylmM4vTAxpPfoOhPwvwyKIUct7UBbgue/yD6tyLN8gwH7BZ60A8u6/WyH+WmPXleYeajb2d/xnyhtZ7xj9ABSvj0qbobAUckpotUlZ8nEKNU1+LASlrsOLy53CHC2uqX3wAOwv4bhncchzB//IF2IuWgvpcQhXEqSX4wAWlD3v87+n4gWOLK1RzQvoKKHdjw7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HKs3K8jUr1SrxTOyoJ441lvGTjwQl+mDcEpjghrZj2s=;
 b=mn5iiIqA73svEun2JstXcJOpldjg7uG15Q/R9NwjfScQaT53oabMGkLHxyG1gEW6L2KnWEaAcU8cPVEcq7HGC84CgAPZZylulluJLp6fh+zAUoXHazfahgPy3ZKFzlxCbV7As875r6oM+XAnJ6dtNOG9PTFsey/KkUAsNVThFQmi2cspNsoLY4IHRHbjjxaUCvbyDUpAjK/w6ekXEi+fakzBpll/+fT5c10TFs1og6xW6R9qPUkKgAYFZ583oI8s5HFFHVjzaNH2jw0qPz3bIRKyT6rHpI+RZV1vfkbe4j9EAFXWWCblWz/iA/4fEGD8Fxip8oWoC51WAgUnC0eTFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH3PR11MB8564.namprd11.prod.outlook.com (2603:10b6:610:1b1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.24; Wed, 5 Feb 2025 11:14:57 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8398.021; Wed, 5 Feb 2025
 11:14:57 +0000
Date: Wed, 5 Feb 2025 12:14:50 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Vinicius Costa
 Gomes" <vinicius.gomes@intel.com>, Malli C
 <mallikarjuna.chilakala@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>
Message-ID: <Z6NIJsr3T+4O1lD1@boxer>
References: <20250205023603.798819-1-yoong.siang.song@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250205023603.798819-1-yoong.siang.song@intel.com>
X-ClientProxiedBy: VI1PR06CA0179.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::36) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH3PR11MB8564:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a68f6fb-f978-4e5f-be32-08dd45d65300
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?68qO6fVMGAuA0YigVFdcVQeQXYo/9o97yK8ALlVS08Yyk1NOnCIc7WssJgc8?=
 =?us-ascii?Q?LWy/JWw7NeH6EDXD5oGWj34wjx6xtQC6Zc326/iinlldHoh2hDqIuCF/+6On?=
 =?us-ascii?Q?Yvwhr0My8wVgkmCWHvPLjbfCt7UglJ5iFxWx2xUnRwCOm6052oiDYCVC2uph?=
 =?us-ascii?Q?i+CRdiTsU6fLoFT6yeZZFDxwv8AJ9j3qwHOJ7aHEL6XfkU2BpQUrUoFPmx8H?=
 =?us-ascii?Q?wNQHnxfHnvkI385ZeUNsgc+21jW8ORCxDMaQg6MCpHlJLtBzdQHN5UDQeWJn?=
 =?us-ascii?Q?5zPtjRD88fwZj/mMZZZjPC1SP3vKKhbK+UNL6aPKR21q3fRUKMB8O2URPKgy?=
 =?us-ascii?Q?ezL8io2sOIOH+eY+lNco5xpFDl2yNzwbaw+eWV2pHEwiXHLRuGQba0JMq3Bb?=
 =?us-ascii?Q?zLR4ErIu9hwhjWlBcIlArA++wnWCKyTPIl1wx3QGA2abeyIowtk3ujNiDikQ?=
 =?us-ascii?Q?vLBk/Ru9sPbZ/xtE9Ls13fWvcL4aVThj9vVeC710JIaCF8O8LZ83gDFhViAD?=
 =?us-ascii?Q?YBMe6WTFXRr48+RBWyaxfgstAYCtxzh4VeHAom7JWBgoSReK311fufbVeNRO?=
 =?us-ascii?Q?e4spyFOmZixj3aEp2qtNRmolPnN2aTP81bFWMMnjTyZsyx3/tLF4T7uSldvd?=
 =?us-ascii?Q?9KM9t0xVDU11Wli5zfi8/lo6qRsNsm/6VDncPoPfJ66V5WvtaJqQXRinmC5d?=
 =?us-ascii?Q?kJZnEepUbA7wE84DnUT94lu7NqnnTSmaNJ3lTyMoWYtTt9fFcPlsQE4h/eo4?=
 =?us-ascii?Q?L4ysYNh3MLsJsWpige9iv/Lz4sbaAHCR4lMy6upSKNOvvA77sCZ0c2tcgZ9m?=
 =?us-ascii?Q?rhUUApYj800zZDxy9f3nE5aZSSBT7Vka+hPUF8WYYeahI9HJBPIs9E80Yxnt?=
 =?us-ascii?Q?okmq5vYbOi2UvSMiDRLVtIuaZgsRg+SbT8Mo0LkUzQzdlz423eaNw9FBbqpG?=
 =?us-ascii?Q?ALqsP6PcFTp52IeCboX9Gbtt9knO/Bx8uYtuCxYU9N6Cpwrck2Ps/9h9Xv4k?=
 =?us-ascii?Q?3pQGi0SSdtUeSwoqpD1fA54OQFRcFshaoD+qd8dyOj5kBGlUPfzw98P8j/EY?=
 =?us-ascii?Q?0FVAImmZkYBFmeLTBjuHTMV0FJD3JRg3yRbOCC++wALGW5pfdCVNI6tn1O7q?=
 =?us-ascii?Q?NK60bKW8VJI8qw7WJewraQ3bNKY1DJau5VKUOMtZrQrOCdCYjXnU1sKeXH3z?=
 =?us-ascii?Q?jRIYHhtqSi2r4fW4mz4lftimKZ/v5vn4nURjUnLP3AxvV4mSI5VSUlAUT1bf?=
 =?us-ascii?Q?9ZP67KVAe3aAtt2mukTSAWk0RkYOWjSf8ZSRskrNFE1FIWUvFW+qpUl/3KVi?=
 =?us-ascii?Q?w75dvuf3nQWSy1fmdwO0DvMbDUeEUZlU8+MOdccV8gyR2Ol8xSPV2GH1/d7X?=
 =?us-ascii?Q?izZmc5ZDa/yRUASAhH9rHLHVbZmi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K0wDHyTH4T5yKRnLTBpfP72k7/4OUYMAF0TtzMHAqsO6Fv5AkD2OSLzv/MvW?=
 =?us-ascii?Q?4b0oVXKVAXddhW8emnginIV0j43HZb+nxctZP69lCXWOPHCcZy0NzeqK3s3y?=
 =?us-ascii?Q?VU2ei/bQt88H/E8fs7h5uiOIP0bofRdPne8vqsYbK95H+nWmErHT0iR/0TzM?=
 =?us-ascii?Q?XiKAAZKt3B4cy1Qtect4ygoxLoS8F1C8qyWlXbp3FlJEvgQiz5WqN0njHsCI?=
 =?us-ascii?Q?4GRad4jv2R+vrtXMS6fU//tQBKBLIonqdpOcbBA6Q0jQOsnnoHXW7yXHgk7M?=
 =?us-ascii?Q?V4PExrB0mVF7V/hAoDQdkKTwNTIp4ZeNSVFMMWzxuosMS49HXEWCoKzYEbi6?=
 =?us-ascii?Q?hPmtX2JyM7CkaZjrvWGm9QsGNCYT8aHzH0lma3qe7+lgwjJqYCW92NrJJx3Y?=
 =?us-ascii?Q?VO8bJYF5xTkTCYVt0aZgpMbnri2m6Vk9FMrJ7ItOmzgU0e4P1IS24z2JYbKi?=
 =?us-ascii?Q?qRDCZOxkDGDUxzi2Z2chy9n/319M61KO12s47hN5uCU/GUwFfbMN6BOTF1Wz?=
 =?us-ascii?Q?Xi4uwtj0ftmADFyeRrWYVUO1LVX1FG7svILZNDxKkSvjsLKO5viZl49VbMUt?=
 =?us-ascii?Q?FszQMTY82Ff3yH4Ba2EpOgqEcqoJuYKpt4OPS8guB7HQGOGf/3hxvBteIgOD?=
 =?us-ascii?Q?HOHYolIN7mPJ4kKPP9IwOJ+bXiHSfYn7WFQ8U+r37DVkRpsAt3GdvGetzFMT?=
 =?us-ascii?Q?EogkjeC+18PP7z0ZbsOMEPj5wOf12WDpxIKlKtzTKUKNyL5rWtvuwbUWGavQ?=
 =?us-ascii?Q?yFVJlduoTPaYfM/sMza2kyZ9XCCiRejR7RK68+RVFbDqCsRWUc7nbykN1oSj?=
 =?us-ascii?Q?NypX3FC/K6kJxFe9cdw+Vwgwht8CNmiFRl1kOW35bwmRgFrmiXP/HjYORd3Z?=
 =?us-ascii?Q?xRedG8yMS5ItZQ7hcIHMKKz1xjO21EJxfYis/+TPhIyuNQcNINUD39jCUNHb?=
 =?us-ascii?Q?bQB87nxFtrLCdWYnTdbj7Yd6rDcGY/nQvfYv2NkN5s20ccoHwYgHoTBupzo8?=
 =?us-ascii?Q?FyGAYH2ZxG3U6V4d6KZdo8yfOyC9xfiju3mUX8pUaDKTCFC/oCGdGEGgj0w6?=
 =?us-ascii?Q?2bTjrV5Mxax1wGe7r5hYmfveKMVKMwJoPHKUDNwRuT8NaFTHw/N/6Ya+ELQV?=
 =?us-ascii?Q?MPBZ55bBlKBff52q7b+dj5ErZr/yPfOMHir0+cW7o6RoPbISB+2s4xG7Alq/?=
 =?us-ascii?Q?/YJXnTKDWvGqshOmTRjuowrMooabyrhEfX5IDIyXqWxnSLQc3qJ2bSbwGnNK?=
 =?us-ascii?Q?ebkU70Dqql7Y6qf/OCifKAphILHwqZQmkxQA7xcMzr1t8qWYlfZpyYuzrX3N?=
 =?us-ascii?Q?r4N4cWkJQf6MVtuXR4cQ2g8IV2t7cwXNe9ms1FQifu0+61KPLLcJb9/X1MYF?=
 =?us-ascii?Q?SRrC6C1Kg8153rPtsDHEC9vZnbNkj3gT+QWclTa9gQjXm9AN1ibqniF6TRFx?=
 =?us-ascii?Q?04LbbUfttUqc3Zl8tdpZsVvmqklVKZGeDUCvQaYryho0lwzAMnsn+goQ2XkF?=
 =?us-ascii?Q?wznPPmez41I37l1wrHhV+iqpM3pjUba5wQ33ETmznnM/qSuBYEIU5NSzypcp?=
 =?us-ascii?Q?OMxbtsid+AKZ3d/rPxs3eUa1gMUacSn7VGvmL+3ck/zQFnJzqU1sq0BZE11Y?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a68f6fb-f978-4e5f-be32-08dd45d65300
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 11:14:57.7111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BjkRG65Y4awcEa7N4z8Bm3Wz/0Yw8GxchVq93KJWnUTrhrJkc1sYUp/qjBjXJju5kAPiHN8hduNm1D24rUpncQ4nJSFTMNF0PqjZhsEcnIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8564
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738754148; x=1770290148;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=c7f18SncdrFdMEvGNDZFUNpk3wJw2SpyqVYkVj3l4+w=;
 b=UqqWsN6JPEn1cGctgXp95Xq61ApsazSWgD+NwElTlVjMVlOEFco2QCs3
 hL7OOEYtt3RlNxR8kCp7MOF+XBj/1ViopiQXavNCgZbbTSv+3E5asFtDT
 YdX6d1ovGLJ1Pb6qFd12fkC2vRoJvq99AjBO3Jcd4aozqsvVCKiBDKDXf
 /1yj8eyYJOcdJNVrdoYqAc8hYdork8/tVmAcMjJq2MZkeVtHXLK25o4+0
 ZU6LFJ02iERV/wloscdWPgW9iPMIU5PT9eN/96ZB65Ml3FecPexXT8K4A
 ly6wWowIlUgopXOcSfMix+TwLJPU8iFtlwPU4kP7/IcmZGqkLd5cv9Wmd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UqqWsN6J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Set buffer type
 for empty frames in igc_init_empty_frame
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 05, 2025 at 10:36:03AM +0800, Song Yoong Siang wrote:
> Set the buffer type to IGC_TX_BUFFER_TYPE_SKB for empty frame in the
> igc_init_empty_frame function. This ensures that the buffer type is
> correctly identified and handled during Tx ring cleanup.
> 
> Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
> Cc: stable@vger.kernel.org # 6.2+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 56a35d58e7a6..7daa7f8f81ca 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1096,6 +1096,7 @@ static int igc_init_empty_frame(struct igc_ring *ring,
>  		return -ENOMEM;
>  	}
>  
> +	buffer->type = IGC_TX_BUFFER_TYPE_SKB;
>  	buffer->skb = skb;
>  	buffer->protocol = 0;
>  	buffer->bytecount = skb->len;
> -- 
> 2.34.1
> 
