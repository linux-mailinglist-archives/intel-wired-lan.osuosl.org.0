Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6FC6189F5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9F0561044;
	Thu,  3 Nov 2022 20:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9F0561044
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508819;
	bh=jKmwSJwIypSAmdfI9B11Z2A64qSX5XpjCzgTf6SxdFM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EijuRhw9YPbTE9Uj1ztuTRQUqJkLT4sjVcJjRAeUV0U+A9lvSLROuZCQGOOHCyw4l
	 fsjyLIQxdaDbeFGt3434pCL6SCRRC7F+ZbYNuUTEkEESVx+EcEE2J3yhD1kt9zvtv+
	 v19VerRQg38rMc85idL9z8frnSX1rne7moCDQ/mn4tvDRyzfgs9c9O+oYmGWWgeKEj
	 DUCtggaG29TYYRmKdtdBYfPv6IBh3MHk5w8U8KsIUBfI+kaJjmIP8gGx9uk4PgrG8i
	 QRTEhpeEXxxtrkzgrRq+RI9DNXYAMKIrXuqlfSGuwy13Se2oQEV4bFbBn403VnNrYF
	 /ZaUmWMuxPjIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80Mdlua4aUQK; Thu,  3 Nov 2022 20:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5D2D61043;
	Thu,  3 Nov 2022 20:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5D2D61043
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE3FF1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81AF34185A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81AF34185A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EW4qgF-GODZn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:53:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D6D841858
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D6D841858
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:53:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="311536021"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="311536021"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:53:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="668110641"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="668110641"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 03 Nov 2022 13:53:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:53:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:53:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:53:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EW2P43NL1CI/cx0IaMxK8EpRZXHSzf8Iclbf3XRLT7KmFRxwJDr3dVVr/hIUrdsg3DVpIXdW2w4tEdL4sDlAZldPK7HjtlUFNWfh3Mqjwezy5cYdAsh9JhoVdksmUJf2W882zBzzX5fXMUAKQdK0/55T4XmzFO5Uq9+NScSm2g4IAHD5kx2Xf1WoRmqB4xzH8dwHlAWPLmmEm9JfuZIeoaou5ixl42B7pUT5S38pk9WDVsEClOUPHLMv9417GRQ9FW9oxhqgIWrgxBAwr27oIlfKr9fWCaqSjLah9gBtG42ay8TjIm+9Qpcs/BXPvZi1Sgr3x0yBsQsIeWkVDhoueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQ67eaKc8pHjSH3gSJjzU1nBvmcM69AJ+IFlmpOJbjc=;
 b=IopGVEJxFdHoIcj2lLTOFe9cmsf6Y9UC3IXmiMxMWpCuXdN5hcJpshbmnxWcAD06okAFALRz0UKKL84pYFx0rXRZy776sU2FQbyfBLXN+cqN4/t9U9LvDwFB40F6VWTz1b3ZNQFa9nRoKCcevsYOmsquN3/hQob1yxcbRePk0LPtFdHi8BA4alZ8bV8AY5GQSw/wOK7RlwabsTlo2Lqyz7IHHBdwOzPsWtV9t7jKa4+0x8CXGntCaD+RItwFaZ57qzRS6KmfBPKLr5vtaCfSvroJwIKa0NO5i9C/jSyjvOthNwlXoLAZYu6TDAeiy3Us5UkDNUcN8ZJPhYYQOHQyKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 20:53:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:53:29 +0000
Message-ID: <80643ca7-5e43-d885-6565-33d7a5663c9a@intel.com>
Date: Thu, 3 Nov 2022 13:53:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-2-jacob.e.keller@intel.com>
 <16f5979a-0df0-0f21-0654-72d8791a0a76@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <16f5979a-0df0-0f21-0654-72d8791a0a76@intel.com>
X-ClientProxiedBy: SJ0PR03CA0210.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB4792:EE_
X-MS-Office365-Filtering-Correlation-Id: 39c3c2d9-1890-4132-9d95-08dabddd75e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jKpCBAQLZn5d8zN/+tn9u3rsaKrI49lNEhEsA82nL85Ez/SKugw3Whs+hiIUghBENtMDSJmlSnGr0NrI+JkA2MCUWog80whoYe0CN2ADngfJ5vL6okdfIukTzlBAy4dbJLPh+QRxDzQRao+nMsTodGcMW/QF06P/gpDoPGmUmqMG1zJXW2tShAzSt/8HqzAYG11YxsVSRTvSVe+Sqd0iea7TkseoQK3mhlkqab0+3b0qTK2LO6J0yqKlDfygk+tdnLbF5npxpsrqVzrqoGuxakqwEo1nwKf+oPkKIwtnql/m9VabxvAE1myb1k3kVdseeiOom2oya22SiLvPt3IvEfV1lBfRjMBVoSHhy8QIzL7bmhF3R89QzJcZk0nYwZUE/JM20hlEJAl+dCWuNhn6cB2r0mxVqfbiRGlJ1d8sJdP5uSo12OdpNRCmyS8z2QMcQMAwNQIl1t9oUtkHG7Ec3MbFGNHWvDmLyi/w5zjHo89wfAU9hCZRbgXHPqt478cdScQcZEZZD2sbwdvsqNxcjb1bLXOittxbOq4TJiiW50CvMqohBzuCUrLLVLywMSKKqshveYRKrB8IzArko0q1yT08dgH456Rrb7nKQ7OK45r9KPV3aUMjjkWf27+S1Nf14zcs1++Gk7+3Xbw3qVLkCwuNfrvVeFVQkLL2gf+Vg4Ybm2s067xjKFUxW8u76aFOsDA5kLHsLhy1eisckmixWYpZn5+w7oOtcCpZyZZefuzdCenm4Bi5lk9SAiEv0IVA2i2x5Arn5B8xLuJ0VgsTbzzKc8+NOYmV5iG/Bh2C2cpidiyrX3/ZXuYwfBPPsU+iY4W+lZfqQTER5XH1ljvY+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199015)(86362001)(38100700002)(36756003)(31696002)(31686004)(82960400001)(186003)(53546011)(2906002)(4744005)(26005)(83380400001)(6512007)(2616005)(107886003)(478600001)(6506007)(316002)(66476007)(4326008)(41300700001)(66556008)(6486002)(8676002)(5660300002)(110136005)(66946007)(8936002)(41533002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDZKNWlNRlZ6aFBXc2N0UERPaFNBaU5pNnFvNTFVVTJIU1labWZwVGxCNjUx?=
 =?utf-8?B?aDdGa1NBNUNMeW4yZE1ad1BIN2ZDcG9RYjgvMDR4YnBsRzkycG5TMkpvK3Ju?=
 =?utf-8?B?cDZxN1J4WWZXbFVDKyt3eFdWRmFFSlVqTElHWFVHS3ZuTW9QbnhrOTBDdGp5?=
 =?utf-8?B?NVZhcXFKc3dBR1JRUDUwR0VyMzlQK0dhejVzdnhMdnRqaXZsQnJCQUUveWRS?=
 =?utf-8?B?dm8vM1NuSGpuVVNiTVFMMEh4cmdyYjA3WUFpSTNzS1A3dTZpcnorQlR0RGJZ?=
 =?utf-8?B?WEgrRngzbkc5M3R6Ym8xdXhqbmR0Mk1iSVp5Z2E5NWlZVXRmR1RLOTF5cUFo?=
 =?utf-8?B?TDlxakhaRzR3dVRCV1c4c2JTSkorV0FoZFI3bEdWSVk3M0RJSkszVDRsejRO?=
 =?utf-8?B?TldWVTFoWGh0aFYwTzVZS3FHSzlJWms5bXRPNHR1NXZRT2lqdGhZSytTdS9i?=
 =?utf-8?B?S1krZ082a08xeFh0ZmYxd1BNNElxNVJ6Q0NhM2FCeFpkWUdBVkJnY2dNTXVn?=
 =?utf-8?B?V2JKN3VRcVRyUTVjQnV5cmdFZERyT3IvY3plY1JaU3pMK1prQmpXbGx0cGpW?=
 =?utf-8?B?bnVhMGR3Sk45QlVoSXJYOG40VThhM2t6VmhBSDVZemQvRE9NOE9STGlQZFlB?=
 =?utf-8?B?WkhFQ0JndGllSkxpdlVnM0VNTlNIdVh0WnIvOFphMkRwSTNiWG1tOFlEalQr?=
 =?utf-8?B?bVRPS0R1VVRUTC9MNmdOSDhuc1NUQWlpRldNWHJwQUViaU0zYlplUTVGeno4?=
 =?utf-8?B?ampRNU13UXRVcHNxWlQrMDlTOElac2hVSkNjM3JYVDlvSG4wZXltM2c1RkRa?=
 =?utf-8?B?ODVzaVVBNUVRd3RyY1gxV3M1WmkxWVFDZXM5dWppcTlKQUQrTkRrd1ZVaTVD?=
 =?utf-8?B?ZFhMQmpiTGVxUHM1R1Y5RUNCWnFRUWU0SUVKRmxiaUVaWWNaOWM3RG1Cdllp?=
 =?utf-8?B?RkprVHZKV05jL1N3Qi9uTGRteVZpTXJ2QzE0emJHK2VTMCtWdHNMRWNOMDlV?=
 =?utf-8?B?M2lBbDlqazNDd3BKQ0ZRYlNDcUprTDhJVmg4K1FxQ0FDdHN5b1l1VTg5dStD?=
 =?utf-8?B?UW0wQXJSQW5MRkR2K1krWG5pb1JFV045cWRDODhQSGszczQvanhXcjNEanFU?=
 =?utf-8?B?aGxTTzMyeVpjemI4OVk3clAwbEtjdDNyb2NLbnIyV0NlaGlQV1EyN1QxZ1Rm?=
 =?utf-8?B?c2RxclkwN0Y4dWhYQnJIUzlrek5OODlUN2FPU1JGVHozOS9SWG1Ycmdsak9k?=
 =?utf-8?B?UEcvTEJlZTZNMS9VYXNBNGdObVdxdExXOC9Mekp2bGVOTFYxVVo2STZvbWNC?=
 =?utf-8?B?R0FiQlhnSmpXa2p6T3Zqc1pNNnhLYzJTbXNnanhkWkpvc05FUUk2L09KZ1pT?=
 =?utf-8?B?enVjNnRXbFUvM0pnckhDaVlZZ21RS0F4VWJZbG1NM3VFN1lONzRpaWUrN1dw?=
 =?utf-8?B?UmpCUDM3d0dYZjM3SEwxYTRETzhPMWlZRGx3Nk9KL2xLUldYdXRnem9IN0VM?=
 =?utf-8?B?cHlCd1FsbHRDZ2oxemw3eVBnc3ZlTkFjOXhDRzlVTkNtMDlMeGt0aHgvY3BM?=
 =?utf-8?B?aFFNclJOOFQrUlpiNkJkOThsaXBvSW5CaVY5bFc3dEpVaFhZU0RJMk90NGdt?=
 =?utf-8?B?amh5N1ZxY2RBeitzNVAvdDJwVVBSSkxDZTJSM0JWK0FlczI5ZW16Ynp4c2JG?=
 =?utf-8?B?RWJjZlQ3NE9YMVZyNytjS2x3Vk1mdVk1ZFBSYVNMMkRNaW9GbStHZ2FZNTBo?=
 =?utf-8?B?VERHVkVoVEU3SllCUWJUUHFKME5ya3d2bnZNVjdqdGVDSUlGOTUzNHMya2pE?=
 =?utf-8?B?dXdzSFRwYUYyQXNZSVNjbVY2NlgwVEJ1VDRCM1d2NHJhdTNNUmJSN2V2azUr?=
 =?utf-8?B?ckJUT280OEhvV1JlM1pLbHZKL1ZLVURPQ25PNWhINFhuK2I5ZzJBbkdRUmxQ?=
 =?utf-8?B?T29VRHc0TlhhMzdjbUlaZXpVZFJXMG1hZStqbVRDZW84ZUxsVjhpcFRsOE1V?=
 =?utf-8?B?bjBLa1E3RTlndytMWnZUVzhUbUU1bDMzOHgvekxFVmZ0QUNlNzlwc3RHN25z?=
 =?utf-8?B?Q2VFRWxrN1VyTEJhVnZ4U2s1dWdUZXRuZlZ2VzBkUzhSd3FseERGblNBS1Zx?=
 =?utf-8?B?c09INWRwM0ZyOGtxZE5Hc2o1bU9LZEU3RWlLVWx5NTVSdVBpUEVzWWtaQXlG?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c3c2d9-1890-4132-9d95-08dabddd75e8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:53:29.1041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: voRmWTi/MylZ9vhK6Kpl1OK+OBjUC0Akb3Rm7o8eO2OUTRWkVsYlXnNN2ziSTlHV6b3Q9xSSswAXs/4d+4o9iqzj33F4C0hgCHp9d1aypas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508813; x=1699044813;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tjDJq++br+CzpVK3jCraNYyiZmeR34Pt4u3uZ007VB0=;
 b=FdUVbWFl6zq9qjvCAIEfE+gBQp7UbWhH+Y10zWz1nXlgz592cKExXzrx
 v7+2XJoIopEh0oBWiCHLIrcr7t33X6AHiw8MsZ6O06ps7nKYTE2OitRWQ
 Mura1tW9c6ntQn8LQyzQtIE7Pzass7F82xj2G4X4ph7G0z32WJpdgbwgE
 C1FGBsbiXygzpXZTwWD81X72dnZMRrgQrPPDNcyavM+oIuZ9Mfh4qpez+
 L3y+dj8tUDa1lAEPhMjbi/0dmfbVY4/bGrHUdeBQY/O0NGz5HBS5LqpLj
 DSC2Nf/npKzZQr4RUAleJAleivoYd0V+26Rju1z2oZAIMR+jmtsRMU/1l
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FdUVbWFl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8zLzIwMjIgMTo0NCBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMTEvMS8yMDIy
IDM6NTIgUE0sIEphY29iIEtlbGxlciB3cm90ZToKPiAKPiA8c25pcD4KPiAKPj4gQEAgLTEyOCw3
ICsxMjgsOSBAQCBzdHJ1Y3QgaWNlX3B0cF90eCB7Cj4+IMKgIC8qIFF1YWQgYW5kIHBvcnQgaW5m
b3JtYXRpb24gZm9yIGluaXRpYWxpemluZyB0aW1lc3RhbXAgYmxvY2tzICovCj4+IMKgICNkZWZp
bmUgSU5ERVhfUEVSX1FVQUTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDY0Cj4+IC0jZGVmaW5lIElO
REVYX1BFUl9QT1JUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoSU5ERVhfUEVSX1FVQUQgLyBJQ0Vf
UE9SVFNfUEVSX1FVQUQpCj4+ICsjZGVmaW5lIElOREVYX1BFUl9QT1JUX0U4MjLCoMKgwqDCoMKg
wqDCoCAxNgo+PiArI2RlZmluZSBJTkRFWF9QRVJfUE9SVF9FODEwwqDCoMKgwqDCoMKgwqAgNjQK
Pj4gKyNkZWZpbmUgSU5ERVhfUEVSX1BPUlRfRVRINTZHwqDCoMKgwqDCoMKgwqAgNjQKPiAKPiBJ
IGJlbGlldmUgdGhpcyBpcyBhbiBleHRyYSBkZWZpbmUgKElOREVYX1BFUl9QT1JUX0VUSDU2Ryk/
IEknbSBub3QgCj4gc2VlaW5nIGl0IHVzZWQgYW55d2hlcmUuCj4gCgpZZWEsIHdlJ3JlIG5vdCBy
ZWFkeSB0byBzZW5kIEVUSDU2RyBzdXBwb3J0IHlldC4KCgo+PiDCoCAvKioKPj4gwqDCoCAqIHN0
cnVjdCBpY2VfcHRwX3BvcnQgLSBkYXRhIHVzZWQgdG8gaW5pdGlhbGl6ZSBhbiBleHRlcm5hbCBw
b3J0IAo+PiBmb3IgUFRQCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
