Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DDD771F0E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 13:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77C134052A;
	Mon,  7 Aug 2023 11:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77C134052A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691406053;
	bh=ybDt6iO36uvhAVaAHoZLpf1Qe8XfujQoOocehNvC9eI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=coPsppfGFcYQEBFoIMJ2mYRWAn4LVlPwvhE/B8c4h7TKDplsYLOdHHHxD4n0/MQeC
	 +rIscOyEkOZUwZ4U8tvw4o9AZ7jKRJ82YubLp49atLz+QMRQTEZj7EFzLSKLtRVKeU
	 KetZtAqtiFBO6WcgT73hWx2t2bI3IoFsqK2Sj5eEfqL6ETgsojJ2+lQ3Ovwccta0Ec
	 9U5buEhZprWUtn6gxKCVc0/7ExjhefYKnsX/e9lY3Y1cQgDwu+PtreXcRiABldbi5N
	 tTKg3PEZi2/4VYovoxN5Hy2CMQVv7j4Fj5eJJEiLS8Gzn2LthODPMItIrJPshZHlRp
	 zZCnswFZO4heg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCctxllRQFTx; Mon,  7 Aug 2023 11:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24840404DB;
	Mon,  7 Aug 2023 11:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24840404DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9F361BF860
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 11:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44C65404D8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 11:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44C65404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlspoLvz7ln7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 11:00:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5DB34044C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 11:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5DB34044C
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="360597202"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="360597202"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 04:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="844990638"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="844990638"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2023 04:00:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 04:00:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 04:00:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 04:00:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiivZQg6YAb4ovVAjIcegfNNmptLAwhB9bRnx6/NzXynIsk68gQMiayokZT9Bz1EZerwGJixvFat+OP1/hawca+WIDF+I8wqrCRbNsDgeU/6kym+949B6bZdFY0N09ho61vUme+XcqMRUPIKRiFgjlyqBBWbYbHOrF96ZhMgStZe1L++evvZEf2owpUrsfUaB+Tcd4ksbFSbsvvXPmspmuYtuBY2JsuCGp0GQ4ClWy9MPhlLSYE7q/W9m2m4pKdzK5IaPNHoFv6Bkx7GNLj7iZtl204Cq2ur3Q+Qcnp8QjBbMImI/NYjpQKmk2GoOgOdjn/yW+22Iu/n+J+ZshUfiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RTCJZ913+/QrEs/araeA/7qj3KbilbeNijlJ6MHV6wc=;
 b=gAaz1Hcc9Cn1p4T4pMKCqa8qpKW5gcRwV9zHkq70IIpiDepQxbVItT3HyNxRXy3jarSruB2b0gQUCkVKsZjXxKXkFJdJE+gUNBuPcYEnaS04/0pHR3xcikwUrrcjq7pcGCGMUI8WDxBi/3BC60YoVa47Egxn7LDDYN5pRLFUdymLS8nb1GbmXB625ngNNP90mK51F2VtpZQ5ylTBpD7xNqVGL60uhPt2P2x5uzp2e77GSYZ5k74x7hqOQjHDDPMmRWa+mG1qoDgeAm1OHmiiOzssDi+TrLLLfqEiHta0O+e8e++nZhxdrVemMb+tij4wUqKVBsxpZb/3HBB7oIcVnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CO1PR11MB5170.namprd11.prod.outlook.com (2603:10b6:303:91::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Mon, 7 Aug
 2023 11:00:03 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 11:00:02 +0000
Message-ID: <028ad477-ac88-52a4-25fe-6c7815f94ead@intel.com>
Date: Mon, 7 Aug 2023 12:59:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-2-karol.kolacinski@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230807103624.468230-2-karol.kolacinski@intel.com>
X-ClientProxiedBy: FR0P281CA0170.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CO1PR11MB5170:EE_
X-MS-Office365-Filtering-Correlation-Id: b4dbae82-6977-4283-230c-08db973572f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hPYgwRcHdB0Qq+RqgYD1S7qXYIAHE0G668STkyLNkZjK0FudovzSjzwO19tRn8tizXsvJMaHMoL28wRFwZRQw+8t1Scy4IjtNhf5ZooW/vqPZRBwpZnHEZOvILhLgqNNulOzJ5yNXcqnvuX9fchITMISunQLiouqFSNVtU2XNEBLTgR3HZB9Vb9BoSHlaa9uV6Be2rjfR/Divh3d1zJkICBbAPPKlgKjq+8co5ejhBrcjLfL7m1WO8vr5SPTyAXVclEAuu/8gueoA32B0e6OlpFh69ZyEE0ONVFJOwENygx+Knp3zjSyUtr2wxcATKP05y9ZLn7cpZY3q6vxCetS/Wpiasf/qGD3DsOntTcojkrXYLRjf8qTgI+Rg81uh9JtOeZraepKS0xSX2Zjddf8c44eEiBh848cJAYkwQiObzMiCHOZVyK0HY3mm2f/BiagqQfI+5+nWHEAMWYBPcee/c+3RfVia3wOJgtRFiXhblMlvY+7eiz+xBFmdVNuCOXJaG0LgrpJ0Ti7MPcd0nW92WkdCLvypTQEIR5YUNmHeh9pJyGWU9uDhy1Q2rBCvP6l2CfBHWeBWZmD5MwcS5k1fzbBHZS8iolFPL0iFo5rRbMGqEnbH5i5z0nOWmhj8FL9Ud9a4X5Yp1uTyY5iQPguVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(136003)(376002)(39860400002)(451199021)(186006)(1800799003)(2616005)(36756003)(6512007)(316002)(86362001)(478600001)(38100700002)(6666004)(66946007)(66556008)(66476007)(6486002)(31696002)(82960400001)(53546011)(6506007)(41300700001)(26005)(8676002)(8936002)(2906002)(83380400001)(5660300002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QktmeXFySkFvY2drNWhNUkx5b1ZzdzNPWTFEek9OT3FBNmc1NHB4VUpxc1dr?=
 =?utf-8?B?MTRXNGVudmJxczZkSFRtcE9nb0orMEMwUTBscGl0YjZDOVRaNURTOTdIdlFN?=
 =?utf-8?B?VXFqNzdoWjlDR095LzN1NUtwVWJ4L3pNM2NRKzdsa28rbElYbER1YTlSVlp1?=
 =?utf-8?B?Z2MrR1hLYjFQSWFvd3ZTZ0dDc0MrRmhSNWhpN25ZUHVlMTR3ekltSmRHSS9U?=
 =?utf-8?B?KzNKWFNvYVBtNG5MUS9MSE9tMWtUUFdvU2pObU1Xc0FNT0dHdmQ0bHRybGdM?=
 =?utf-8?B?KzJYSE9tRkt0TGVRNzJEeDQ3UnFueUprQUpCZHI5Z0RTRm0vMXdiRXk2YnB4?=
 =?utf-8?B?TmJ1dWdlQ0RyMFVOSTBUYU0zSjNhVWZ3WE0yZ1NMbmVub3NxaGpUaWp4UWc4?=
 =?utf-8?B?VXY2bFMrUXBQc1Z1TXc1UTFuOUF3ZkxmZ0UyejlZU0l5dnh3b1pWdlJQZ2NM?=
 =?utf-8?B?QU1sQlpEZm1ySVBERGN3ZWk2c1l3TzN1eExKZWc1YXZiais1cTFlamkydEhZ?=
 =?utf-8?B?ZUpaUHlVQllTbVMxWGdnVHJKNkg4NDYrR3U2aUVhZ1o4L0hSNVVKdUg3NUVE?=
 =?utf-8?B?OUVaZjBUbFJld2pCTVN1OG9pTFNpL1YxY090dEh6QUFxKzBhREpMOUdqYjhm?=
 =?utf-8?B?ZWpRZEs5bUl3eG1KaGhZL0NqbWNER3g4UWJrdHhPN2ZZVjVyOHdHNncrV25P?=
 =?utf-8?B?bllVOUlFTFdMQW43TklJQVJ6MlF2b29NZDlScEJzN09sWFlXaWtPeXdNTWV4?=
 =?utf-8?B?L2FjT25vQ1FHN0tNZFpYVFVYRnhNaVdyYjJSbVJvNmlaYUJ4VjZlaFg3bnJ2?=
 =?utf-8?B?ZzZteVdQbzY5bDdidkJySnAxYUlBdzc0bDFXU2FRZEUxUDNNbWZjVmlFQzFK?=
 =?utf-8?B?d1ZTSVE5UnJhSVJLeWJoS2tiQ3BTNG1JQmdGU3lyZFFuZGZ2QlhXdzF5bEJL?=
 =?utf-8?B?WktFR091OW5XREtZVElDamhnSDhiSmFUNXZYVDREb1VRZ3dEczZNZzZsUk9t?=
 =?utf-8?B?QXVZTXpTcXpyQ09maVViWjE4clhITGNENzBEVjQ1NE9OZ3Jjb21aazN2YTBq?=
 =?utf-8?B?QnRENStuVFQyN1NycEpKSkJQRnlrcDBPVFZib1N5akxIc0JxOG92ZExIbXNk?=
 =?utf-8?B?RXRCUnoxTFVLUytqSlQ1a1R0ZE12US93VHY4eDRCb05YTThlVis2SUVNSE1U?=
 =?utf-8?B?SjRic3NUeUVIbEFhZDdiNDFyY240YTAvWE1WOWc5OUNFUXRiQWpzaHVKQk1j?=
 =?utf-8?B?V05ua3pHTG9kRGpGa0l5WDNSdGtCanRNYWhaSkRObXVVM1MwUGNOWXBNU25y?=
 =?utf-8?B?QitwMzVLdDJPNTJYYzhyRC9Tc3NZOGJxM2t6d2JkaVVJM29vd2RTVVRIWkMy?=
 =?utf-8?B?ZnVxRlRpK3BVSk9mWEY3Ulg0eUhYRVpSZFl6VDdMTDBjYU03L2tDYndRaFB6?=
 =?utf-8?B?RWJsR3BQVWJ4ekM2Q25Ua0liQ1lpTS9kTll4ZXpsL1U1emc1dSt2VzYwbGNC?=
 =?utf-8?B?b1J6NUEzVlJ6YnR2L3REOXhReUpkNmE1c1o3Q1M0RGhsb3o4YXcva0FDNERJ?=
 =?utf-8?B?OFZGWWtZZ2ROeUZISjUxcGJWWkRUYldmOHVrTE11YmZTZmxCeGpGUU1tZ2dk?=
 =?utf-8?B?bENxNmhDcFpTNVpaWFdPRUJkRE5CS3dISE5TaC9pcXZpRWNoelhkQjBIQkRp?=
 =?utf-8?B?dE9iYzRzanR3QWlJbGZKVGZ1eXh0UkpybG1RSzBnREVnWWRtZ3BJekNCOVJo?=
 =?utf-8?B?N2swS0l3bWZPZy9NNDB6RU9PbTRsRE1yMjQrRGFRYXdjcnJyYVNtSnZsWmQ5?=
 =?utf-8?B?UEI4WnBCQ2dMNmpnL2QxbCt3dlpudGRUYTF2RFJEeS9ZMUJSQ2JQTm5ETFAw?=
 =?utf-8?B?U1JrNGxoMDZRK2NWRWNoczFvOGxPeGxrVUY0NHRlRTdxeUlITjFKWnFiYlVO?=
 =?utf-8?B?b3VqZVNXVkx3aEd0Uk5OZUE3cjhZdWRvNVJZZ1ZYQjFibnlHNFQwQnkwcVVY?=
 =?utf-8?B?ck9FVjlnZXlWK2FFSFZJMEdXUFBHampLVmhyQVVIRTNMdUV1dUtzS29IOGQr?=
 =?utf-8?B?T1M3dk1PbHNTZjNIZklXS1hwbjZ3cHlJMnp6QXhFcUVDaUx3MUhMd0gwZXRH?=
 =?utf-8?B?citvRHdkQ1hUQTJHbEtxOFFLaFJvTlJzN1RoYWs4cnFpanZhdHh4b3MxemZD?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4dbae82-6977-4283-230c-08db973572f4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 11:00:02.3255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LbSVrWPvjAI252zOMdFIzai0LGgX6w1ZUXX5svDIL1DkdTxIQDY580Z/cmWFOUtC788f9dklaTPLlUKPipd8XhplolrQv237T0Cu8r7FEyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691406006; x=1722942006;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wOjPMp+WZ1oC4+tr23NSPrqUOTXuP0+ClExzEvBD83A=;
 b=WVWbiz/LTlcDC8p0p2xoMz5BS0E3wtKnH3A+58CxxxBU6ja8QxRHe8C/
 GMcUHlxGpRumqpR9h3uOnz3ENwnR2rGp6xZwRSMiIIyn2KSNQmLx/rJAp
 /Y4lyV5AcsvEYC3W0H1RYpbh3od7pHJdEmnLcBp37nHFjoJfULSfPxt+i
 fkwcXMrQw1JFlB23NiY5bv5p1yBuzl+2o+Ht6vDFw7Bh8FRV1Rh91g6zp
 +KoAb5lwwhw8GNSG+yjtjOhWUPDab6N4aIgRz1nmfWsOttOD2MW9CvOnu
 Jjp/yjHvnOIcT0CiAN41HLYMCO9AtAv7vaRD9BLj+00CVuBaATFY1LliO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WVWbiz/L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/9] ice: use ice_pf_src_tmr_owned
 where available
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

On 8/7/23 12:36, Karol Kolacinski wrote:
> The ice_pf_src_tmr_owned() macro exists to check the function capability
> bit indicating if the current function owns the PTP hardware clock.
> 
> This is slightly shorter than the more verbose access via
> hw.func_caps.ts_func_info.src_tmr_owned. Be consistent and use this
> where possible rather than open coding its equivalent.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Hi Karol,

sorry for not reaching you during internal review phase ("e1000").

For future submissions, please ensure to set target tree via subject 
prefix/tag, here it could be "iwl-next".
For IWL submissions, you should also CC netdev ML.
You should also CC anyone mentioned in the patch and/or last author of 
given area of the code, +our maintainers Tony and Jesse.

For this particular patch - Who is the author, you or Jake?
If Jake, you should send it in a way that it is properly accounted 
(here, and cover letter),
if it's yours, then what is his Signed-off-by doing here?

For any case, all patches that you send, should be decorated with your 
S-o-b, as a last tag.

Przemek

> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a73895483e6c..1ac37a3f8de5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3158,7 +3158,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   
>   		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
>   
> -		if (hw->func_caps.ts_func_info.src_tmr_owned) {
> +		if (ice_pf_src_tmr_owned(pf)) {
>   			/* Save EVENTs from GLTSYN register */
>   			pf->ptp.ext_ts_irq |= gltsyn_stat &
>   					      (GLTSYN_STAT_EVENT0_M |
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 97b8581ae931..0669ca905c46 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2447,7 +2447,7 @@ void ice_ptp_reset(struct ice_pf *pf)
>   	if (test_bit(ICE_PFR_REQ, pf->state))
>   		goto pfr;
>   
> -	if (!hw->func_caps.ts_func_info.src_tmr_owned)
> +	if (!ice_pf_src_tmr_owned(pf))
>   		goto reset_ts;
>   
>   	err = ice_ptp_init_phc(hw);

codewise, this patch is fine
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
