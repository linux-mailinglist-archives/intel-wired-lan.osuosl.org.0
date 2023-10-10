Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B749F7C40DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:08:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5726E61153;
	Tue, 10 Oct 2023 20:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5726E61153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696968533;
	bh=Umv8eHaZSKsF6ar65EcCZMxgwsDU3O8yuN+Ki7+8Vwc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DmXrXTU1fx2GYuz71+EBN/0Ta1YXBiSzDWFZRZoCyQJPWVU2WK2wSL6+NdX7SikfH
	 Q/vFUgSshTGhRUeTzFwNEtR7zK8kGNopGSXc+bWMOZqLxSVdT6SLUjFZlpLj9onnff
	 KFMOrUMqPmwa26F+cAiNXA+eJTrMmvVYDMBpay0dNj56zze5HQwduKl40xPJaiy/M1
	 TBygM2JXbQk6CV+fFiuXHgRADRkyx7iZ/Q6M6k8UJE1vwgUGPCp2atrmYDp79rOyC+
	 DNDv+ZFSkG2GS25muStjJmaTFfIilFBpRKxfyu+sCxJrVHo7NvsVCOP3Q4v//eEDok
	 ZNFmzSWfP9Q5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBYnCx-0gwsR; Tue, 10 Oct 2023 20:08:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C95C60FB1;
	Tue, 10 Oct 2023 20:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C95C60FB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 887E51BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:08:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 602164047B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:08:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 602164047B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ys_ejRXYtt5B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 20:08:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A165740012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A165740012
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="388367519"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="388367519"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:08:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="927282897"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="927282897"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 13:08:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:08:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:08:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 13:08:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 13:08:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C/0sVe20QMGdE4BHajvNhrGv1KVXkjvBVSHnQ0vPNpue//g+2EqlM6TzDjcrOd4JaBuemfDHZE+iYJ+8Ld25Wo9IW8x32XdjETUwtP0oqGC110o15TzLzL7881IDaw0UkPwP1/TXf2AaP/bD7lLk+yneabOnMm9M+NS7tG9aKR6IdRwH7kB3rOr1hq5jsyfh04DBgwl5RolvV3ztPKVT18pA0Aayylf0av6OKlPBTpX8NpYgIfjdNVKcr0sMEsH9J0Ov2S5O3WjwOT8djt8UuYQAZ0EQuLICvM1G2wS68kJmqPaKyYep2/54Sw4liIYMRfHfnPSbIVXCWwK7wVxvXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4xiN61i3RjlKA49nlrzAYRx1eJrOoALij+i1WRTpbE=;
 b=llOuxRAPfrqSBhTdVaoyImRGtrtc7wnmjouqgqUBh+XiCUnkLYBGc7sQRlSzP6dRx6LWaLgHjo1upS3hOMPm/AiDvN/JNzQAH8uULZfo8LITGHZ4WYJYxR1gXhmqVJuEWQz9hzJYp0MvuJ19zszPTyTxfcRXgc0aUzb0lyP5s1NsaSBNgIkFbGv7tUscY9dxJaqyqpSd7lnv0fmx2JDo6iJPkqpo0vuT4mRe1O+vDSAI/apU2Ymt9kvAPTCDU4XErxQ5uhclyjBVmHwE1PsKk1vNqXPWInJKAr6F6pjdyrJMSmcZ7WktB2UdpA7bH1yn0ezldcWwzGve3xLpQuuzdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 20:08:42 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 20:08:42 +0000
Message-ID: <894d006e-f1e4-482c-ba95-e6eaef085be6@intel.com>
Date: Tue, 10 Oct 2023 14:08:34 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
 <20231006224726.443836-3-ahmed.zaki@intel.com>
 <20231009093755.19f9ec9c@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231009093755.19f9ec9c@kernel.org>
X-ClientProxiedBy: DU7PR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::18) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|BL3PR11MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: f74b193c-05dd-477e-c7f4-08dbc9ccb310
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3AdjJh8JFS1o/PFKihf06BwaflfO73J6sR7WPHP6elhIP7iJyi+rgpx8Jov6YPmVveZcUx8Tfkq25ck8IS2rIBj64ZVg3CydxUGjiuSf42vdI6JtCe5XE3kFuo/4T9zsiBOuUCTQyECnILWUtYnK4HvIIT4pNlSQOEydETza56dz+m/IaRT94VlNkjRDaYygzCPV6SsmpqUHorddLs4e1raGrFAT/kILnX3MIeU0ixqLkhpgTJdGeOulWikkxPoqZezd6BxmIBYXkxJXwpzMMsd4ogVBusWGfKbcCIAa0cjOhBA6uEICd1YFDZTYbfZPV6iWgZx0RDZAvvZ1Erps38LI4O4/U4jmxFitXz92yLob494uK6JcLIORGy9vBvgzNnqHLJd4VNA2s+ujcHe7JNzgIor+Tc3g8+TuCkBqHKLeC7UcV/mj1aFxV+VTvyXZvTgO4IE+T57JRSqtKkym25vIW1myNB4FW8f+RvH/MRqoehG3m5Z2CjsqKEXqEmbICv6nzJUAbD0frGX9TyfEtUKrugNntzE8gIbJv20av7EQMJfMQl1umk3Q1t80XabBsyoiZiNqoUgbV/xDe7tieWgWVVduiyaPnh7KYqocvhUpOBz28Y0fZ1XNgyskpijNEPS2s0fKGx1CxpNeTuSmhQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(39860400002)(366004)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(31686004)(36756003)(86362001)(31696002)(7416002)(53546011)(2906002)(44832011)(478600001)(4744005)(41300700001)(5660300002)(66476007)(66946007)(6916009)(2616005)(107886003)(66556008)(316002)(6512007)(6506007)(6486002)(6666004)(26005)(8936002)(4326008)(8676002)(38100700002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHpIN2JyZHJpeTREK01oTGhUNzNyWU9jeUFrWE55WUVqWSt3UmdkMXRmUnU3?=
 =?utf-8?B?NU9mOVhuVmxRZDVBQlNSMG5XbElEUG91OFpoWTRTUHEwTzIrT3o1M2wzS0xh?=
 =?utf-8?B?amFsNXBYY2xQSm92SWhNUWJadVZra01mUXRYeDdTajBNaDRPWVBhbCtFV0lD?=
 =?utf-8?B?OElaUFVSVjFGWFNNM0wwVGRRc1Y0b2I2S1lVVEUxSDFnRjhKQ0x4NDBkTnh1?=
 =?utf-8?B?Y201dlRwdFIwM0dGUUszUy9TMlluNEZFV2Qyb3poejcwNCszVVQvSHdqZnlX?=
 =?utf-8?B?YnUwWmZkMDM2V1MrcUJOY0lZWEJrQnVJZnVkeU5FcnFKdlpDM0tpY2FTcVR6?=
 =?utf-8?B?RC9EN3hJQWQ5azFaKzBQcnY5K240eEM5Yk9JZnZyRHdkai9nOC92V0lmRWwx?=
 =?utf-8?B?MW1hY3VoOTUzRnczS1hucTJpRTVKMjNNTFBDem9jZE9lczBaYWgxWEVZYW9F?=
 =?utf-8?B?VXVzcnpBZi9FMnJ2UXBUKzJVVXBCZU9sQVpIT1F1RDRTdjMxQUMwUE91MlJV?=
 =?utf-8?B?V2NIMEw0ZUZBaG1BNnlWczJDTmdxVllra1Axb1cwTlVENGpIK2dBUUQ1Sk9u?=
 =?utf-8?B?V1ZUbUdhQnpUMG1aRzNSY09EZGRWZi84QytYc3FqUE9ZcURqQmRTNTFOV1Zw?=
 =?utf-8?B?SXRBYmliZUtVTkFzblZ6WTJIVGluR2QvVGdJNTNqc2szcE5GMnMyUVl0STJj?=
 =?utf-8?B?VmZFWkRzdkRFL3liaXNDQUlKOU95VkhOZFlydmlKREFLMmd2dmdJZGhQQVNN?=
 =?utf-8?B?aEpUanhYZXR6RWxobWJhRUtPUDViWWlGWDJkMUcrOWlVSUlEdFYvVzllKzZu?=
 =?utf-8?B?SnQwZzAzN2NNR2g3clMwLzJKSnB0eEJkSTg2ajZTaHpjNnlOWE1JVW5GQmZz?=
 =?utf-8?B?UDl3SUw0SWtVQVhML3owVlJPR2pZSXVjYUY1M1J4a1YzbllHREJGOWFvVnpa?=
 =?utf-8?B?a0ZaMXUxdk9sQjdaOFhjcUFFSFEwT2czTGU0Y0xNOVU2Z3BDd3IwQXhsdzBl?=
 =?utf-8?B?ZTBzL0ZMMURyejhRVUx0eTZCOUtaRnptSWN4dzVnZWNvaTBXYmVjU29yNzRP?=
 =?utf-8?B?dzZBRGhvck5mSkdmWU40R1ZYNWFYSUZMek5lOUdqUG5PbkpyYUdjUmdwWHgz?=
 =?utf-8?B?aDhscDJBS091VUZWbkRNRXFSZUtUK2J3eHhjNU9QTlVIRFhucWN0STdlQlNv?=
 =?utf-8?B?cy9oaUJ2U0ZFbkxCajVsdmxBcGlhOVcwTFd2WnBaREpzekR6UHJqV0xtQ1V0?=
 =?utf-8?B?cDJ5ZTVJWDVvRnNVWVVoU0Jmb3czUmlmZk85OTBtL0NHMHJHZHY4OXBCUjRI?=
 =?utf-8?B?SHlLeE9ubWExb0RMOFpjWE1qNzV4YlVVSDRNb0x0RUpYaWJTc3Z1dk9jaVMx?=
 =?utf-8?B?UEFRTkRVazd5MU5Fem0wbzRxNWdmcUZNaEFneTB0MUsxVG54UFloOWZWRjBh?=
 =?utf-8?B?UER2azFuUXpPRFpxNkRkNmNOM0pXaGFpalQvNXlNcW8wN3djY3UwYnRaeDdH?=
 =?utf-8?B?NXZnbkdWSnVsem9lODJDTk1wL1ZPMzhTM0hxamJnSmJEbHZTT1RMNzZua2RT?=
 =?utf-8?B?eG1hSXpkMjlxWXRlSjROR3pKTjVnREliajV5NG1wamFiV0xoRG5iUUpvK1Zw?=
 =?utf-8?B?UzZzT0pDRm9pRHR2VGU3MDI1YVNUaDhZQVpka0lyVWVDczNMNG8yN2E3M3Nt?=
 =?utf-8?B?VGxTRnhNNXRVQ0tDbXBBcHAvckk5MTU4cTZKamtwcmxLQkwwakNpWDVFUnk1?=
 =?utf-8?B?L1E5MWFZZUpBdkRCUXNiV20xZ3BYRWd1MUxBSDFVMjd4enpXRzY1SjlnUHRr?=
 =?utf-8?B?S1d6cmNIU1ZMSVQ3OVNUQnEwRi9ZSmV0bWo5NWU0bC9CZmhWd3dNb0kzOVQ4?=
 =?utf-8?B?d3hDbzZEVlFBSFprajZSR2d6TUtpMHFPWjJxdzdmSUh5MEpiVXNZcDBrTkpj?=
 =?utf-8?B?MkRNVnltOHF4M3Z6ZzIxbVovc2o4eE51anZQY2VnM2NsQ3U5WisrdTNXNGl2?=
 =?utf-8?B?RjRtNzJkNFJyV2NGdUpKczR5R3JZY0FoTXowM0tlVGpmSFBuNllNeHEzdSs2?=
 =?utf-8?B?SFRvbVE2TDgzTG5WYXlSWi8rU0luR2ovYTA2UFlVNjhiV25lcVNwOVZsSHJT?=
 =?utf-8?Q?WGbj33JV/u6V6j9DfOho2eZ81?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f74b193c-05dd-477e-c7f4-08dbc9ccb310
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 20:08:42.0484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YqZsZSe9QjUH5ZydPg79biwGe10MjlS/GSCf5SWPRpEYI64jamYxzhYU61Ea2fY//H8PhGCAOHNSmX2IOmtSRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696968526; x=1728504526;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iAf0dm+L75u4ih7degI0cz3aJLFoEVQaF67EL3FSCsE=;
 b=e//fUxVFpZeHKFVk1Lsn/s5q2DOlkRFyYgX77LdjSQhvFSXPEon3jZff
 +t1FJdGPMZR0JLjzOeMEpmOot9V1anXn32WrmWVT80rcZXgXDC4fmRKfK
 YFe2fDADqV5KdQ9XXRm9eStT2jP5eEsOUDqBalhUWv4/KHkTvX25NubZU
 4u4BnK1+sTmrh/KYC83KV2Tkv73lejGu+PLK1vf/C4vqGdqWP8qgOtNUB
 3BsehDw8MqnYyApt5LnGztrX2M+A0Y34T3zJXWSHT/8FuTTc4PdNjmPKN
 Fc4O5D82fVWv8I/g0nUSA5Js55YFGEDML/G/LI82TPvlxiMDH6A4jMDsX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e//fUxVF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/6] ice: fix
 ICE_AQ_VSI_Q_OPT_RSS_* register values
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2023-10-09 10:37, Jakub Kicinski wrote:
> On Fri,  6 Oct 2023 16:47:22 -0600 Ahmed Zaki wrote:
>> Fixes: 7bd527aa174f ("ice: Adjust naming for inner VLAN operations")
> If there is v3 please drop the Fixes tag.
>
> If the mistake doesn't result in a triggerable bug there's no need
> to backport this and therefore no need to annotate the source of
> the problem. It will just confuse people into thinking it's a real
> issue.

Dropped in v3, thanks.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
