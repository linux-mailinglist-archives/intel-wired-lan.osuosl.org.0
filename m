Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D92357BED9C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 23:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80B5C81F70;
	Mon,  9 Oct 2023 21:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80B5C81F70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696888398;
	bh=eRhT0sTtdKIpS1jgaM3B7NKluTyiGnLqy+sWTaviRR4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MM7bHevc7gckl5nhzBguNqDyd8bPkuWHnR5KuO85QQHhy7OWfQq3Tf72vWnuV4v+m
	 RIvvx+r3pnvbGD/mt7iRYyEA5kQy2TCfdxN4OE/ql0+Cwo9H+9tApIacFLVzFKpC2V
	 7GaoznWKLD3fTBgYtYyrq1IY2u5RXzRvmbZmqFqYvP0AyPsk3HojVA/Dvd2Hi9vp3p
	 Zcb5XmnNpqaVpux0qwPIzLxojuC8U5fdExt9MsXChdGwfqBRuOB1J7fGM2LinrMOHN
	 WU/vywJriiyv4wuH6WXHpjGHOrB1TZwsToVnVt9RKe6xD9WbCK5tJZ3c0hSHkQYQYJ
	 bgM9L7ZQlfKqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vNSFrZvul3q; Mon,  9 Oct 2023 21:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DC8F81EA9;
	Mon,  9 Oct 2023 21:53:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DC8F81EA9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51BE11BF42C
 for <intel-wired-lan@osuosl.org>; Mon,  9 Oct 2023 21:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24B0B4032A
 for <intel-wired-lan@osuosl.org>; Mon,  9 Oct 2023 21:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24B0B4032A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YQluDpT9KmZ for <intel-wired-lan@osuosl.org>;
 Mon,  9 Oct 2023 21:53:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0F5E402DC
 for <intel-wired-lan@osuosl.org>; Mon,  9 Oct 2023 21:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0F5E402DC
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="374587637"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="374587637"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 14:53:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="876979604"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="876979604"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 14:52:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 14:52:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 14:52:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 14:52:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 14:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UuZdBQRmvsTK2H/NXpVa2+LX0ND5fdJa9kJ91O3xWy0ysB1uQl1vg1m8h3XxqHydOueWIs3jsbes6Z2Aa9y//x6B/hGZUtetMOxtUx95FCCaaPh0iTdjPpmmrmh1cr4X3qnO3EJjn1qwTM6daMZUMvdfEdyyBotPIvJZzU4W+YXtgoN91kDequhS3u7rs8jEhX3zWVGmoNsCQLof/SIdAedijYbMJTaNTy48Q0F6/mV/AsaKKK58IKFePhI0GZJZ6C9qw7D/9aNudG7BGR4m0u8o7zKoDAM9EbZzInzs0jWAlDyoKWcfiUIV7TMjLVXLU6XlShDqbu0vNZ3ZoX4+Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKk8lVJJm7O7TpyHxr2wC+dUi7zSjiQntH3t2yKy0pc=;
 b=D5LkRTWcoGcvIV4jnOH+FE3i+ATXU7IQmATFBnUSMdDcd5FRQC/BaBQ3qZARZftkRmSri4QrD31xa+pZoGrokjOmO6M4AedZekEMzxIIsmycXim960q21vFUNbT4ID87qpAGi+Bly/fFLrtNd2trs5JADsQzrrSh1OJ7T5imDYkXzvofkal6/BfqZEzjAAHuUX+ohvG1MpIwduQoUUlWG80q2jEkFvjrp+TWDVh7jdteilPichnKUm55rbwu+iFCFawQEomRohggPQlFFGPqck/JrjfvRF8BJMzBslcDmdPZBX47XSA08PbxiiAaoVhTatwUo9jAjlImsH8FoW1Guw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Mon, 9 Oct
 2023 21:52:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 21:52:56 +0000
Message-ID: <c4ed1714-7c3a-6317-feff-66b96ff837ee@intel.com>
Date: Mon, 9 Oct 2023 14:52:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231006210211.1443696-1-david.m.ertman@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231006210211.1443696-1-david.m.ertman@intel.com>
X-ClientProxiedBy: MW4PR04CA0107.namprd04.prod.outlook.com
 (2603:10b6:303:83::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB7104:EE_
X-MS-Office365-Filtering-Correlation-Id: 45343ace-b0c3-4c89-f5f7-08dbc9121887
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q/2CphNCkh2FQLinqijdwDy/tHcu+Z26O6Fg51jfujQOmHn9gRA6byJpS4tQtIgIPs/6h/gkHO4jgUlkCs/VtMUlGnXc9+KibgRRlstC0IbKRuzwpct+NQC8nf53hA9KvJhGWt4wZqju80BYdCH73lfrYX15f3MuKEMKUaWTUqw61UOnzTSiV0yPhGRjhza8kCepmzGRhEug03smf9OFvEpZIPPPyEvQcmM70Lh4OHzbsoc0oFntxvTz1OJYcPV21joxck+sTeqZEUFZWOC2hF8VsWqwn9e9pDsi//iQkNrCGdkDDDpySuX5hpCnGUU3dQyxfhnnzfwVcLDTx8je16TjGj+a2S7uWjzV78u1O1cq8EZZhNzU4KESJXWxoWY4HW+NVb6iOmL4IXUvffE8JSK19sW6Q9UT8OSgCOmYE236ge9QpveNS0/84U0PTrcEPE26IqO3ElLNT8dAH0ms6fywW2iAzp7PPu4FwNIxVEXw5/bng+cqo3BbMeC3H2U4l1PbnOFz+5Gyv7sSaD75iAzMfPmDzEQroQezycpSFRMt1Bbvl0q/RCeR8hgiEjlsZG/+Vc8fUofpTmjy9f2MCd1fS+VzFvOn7djZujrMbFOEQ4F60h7h6AOr/J74TOaAH0F61C617t2dqHtb498NRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(136003)(366004)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(2906002)(2616005)(83380400001)(26005)(66556008)(66476007)(66946007)(6916009)(8676002)(5660300002)(6506007)(53546011)(8936002)(6512007)(41300700001)(478600001)(6486002)(316002)(36756003)(82960400001)(86362001)(31696002)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlRWemFLL3FSM1BSZmxMaXhXRDQvR3dUSURxNUFjbGJsZTNmUXdZVmtRMnhs?=
 =?utf-8?B?bHVyTjJDN00vR0t5aXVhUWF2V2Nwa1hTODlZQWs1TUJNTzBiV2VyVWtiNkNo?=
 =?utf-8?B?VFJ3QUpERUZZWm9saSsxeHM5RXdzR09peWMrSkg5dW9aMHhia2xIUm1ua2Nv?=
 =?utf-8?B?YXdqeG5ranZqWmwzVUlsMHAveVd5eHUxNTVBL09yTGdSSXhSYURlZHRyNldj?=
 =?utf-8?B?a1Q5QkpmWHV4bS9PZ3ZLczFYQ3lkMi9rakRxQzNIRHdzMnhlTXA4NGllL05i?=
 =?utf-8?B?Si9SY0dvQ1AxYTM5b0RwblRmOUNqSE9USjRHakx2Z3MzS2MrUHdmOXFucUZL?=
 =?utf-8?B?RGdPTjIxRFNsUm9rU1k0RlVhK0FXdXRKWHFzTUx1TWcxTlpKZy9obHNyTWhP?=
 =?utf-8?B?U2plWnUvZHRqMms0alNheFBwWWpHY3pESXd3NzhUclRRZGw0cmlTL3M0aVdD?=
 =?utf-8?B?OTUrK2tlZ21qR2ZWU0RTM04wV3JGRUNvOVNYUFlpOUltVUlZUFFKam5wMkl1?=
 =?utf-8?B?dkNLT01QcjhlZEl6cXZIMlBPcHpPL0NhNENLZlloZ2dVLzVoWmNGZ2grR2Vw?=
 =?utf-8?B?T3lmRXIrSzlKWkpiS0tzUFN0SURpeEk4VWN0RnJRcyt2T3hLOStmRm9vU2Jz?=
 =?utf-8?B?VllmS1VUaTR2Y2c0azFNU0xrWExZeVZBSVVsOHNacUpDeW0vUXNqQ0dvclFV?=
 =?utf-8?B?bHc3UUVvRk40UUdhdi9acUtrRjY2cFdhb3IxazdPNG9JK1YzUmdjMTFmeEdo?=
 =?utf-8?B?QXcxUTJDMkZXdVBtdXhDaHN5Z0lVTVdKRnBGNEMzRkQwZytvbEIrRmVMVEMv?=
 =?utf-8?B?anVYeGYvcDh6REFGRytqKzhDRVIwVGRrbGN1UUQyYWlMWkkwcmVUMkprSS95?=
 =?utf-8?B?cTlvYUNzWVpPY1ZlazJXQmIvUml5QlhyOUFHeXZCbTQ1Sk9UdEJJbVZldk4v?=
 =?utf-8?B?SHRKZXk1ajJyYTExN2VMeXRmTUc5NEFOVitMOXhnSW9pdThPaXdOU0c1ZVEv?=
 =?utf-8?B?ajBjZXhoRHBlZEphVmdKV3VuSU43R293VGNObm9EOHdvbFJNY0NmeEM5NXRC?=
 =?utf-8?B?cU9lb2ovNitFclF2YTNpWnlGNmIyeUJRenY4T3Fxc0l2QWJDaURnMEJ1N1pB?=
 =?utf-8?B?dzNVTUtiWWp6eERTN3A3YXJ5cmFQdWVKVVFiNmVveDl5NE5id1NObmdhVGNz?=
 =?utf-8?B?NC9mZi9CZUdsbFk4eWhXeXcrQ1lCUUhVNU1HZmNLQlpaTWRQVXVQckNRNFEw?=
 =?utf-8?B?OTFqWTQrcFNsWG04TUhwZG1BMzdHLzdJeTBtUWxSd0ZwMVVqekhVMUh6Z09D?=
 =?utf-8?B?QWpxdFYvV3ZLeEZHL3lzWW84d0FMRXM3R29ZR00xangzeGlaQk9oNEhDZ0Fj?=
 =?utf-8?B?RzkxSnlBRVdxY3pFR2xVbVlOaXBpUEFFS3JSL1Y1OGNSOU53QWZrbldWQ0hK?=
 =?utf-8?B?YXR1alAxU095QzNndjBVNXVmcnY2WUlEbkR5KzE3S1hKRUhmcDVZMVVDZDdQ?=
 =?utf-8?B?eVNWM1VlNnRNamdxTzB0dndMeHFOM1R3a2JEL2EzNnFCN3AxSFN0Wk81N21C?=
 =?utf-8?B?Q09idGMyUU5IakRMc2Y1azVaK1czMlBJaTJuSVBvV3c2ZGF6K05DSWk1UC8r?=
 =?utf-8?B?RHpFbFF1ZGczVmlJUmFqTEcyYmR1dXZ5aU0vUnJxcnMyeno3TDN2Ty9FOHRz?=
 =?utf-8?B?Qm9iZS8xdjRjTkpPODZaUzJzSldUS3lQT1hIMExnbjBOMnd4WDB5USt1WnUw?=
 =?utf-8?B?TDJxMXpvQW9MYjl5aVBMR2hyTml1M2p3ZVlYbFBLRjRWNzNLdHBGNzh0cDh6?=
 =?utf-8?B?SVNTUlE2QzN2QXNZdlIveGNzVUhRSVpHbDIwdFlYZHhneEpiVUNXMG5lR0x4?=
 =?utf-8?B?V3p2SXZCWGZMZTZyeWlhZlFrRCs0dkRrT25JNkU0aitiUXF0Q2xJYUZVTkU0?=
 =?utf-8?B?MStmL242cUFuU05qZWI5TXZyT2JySUNHWUd1UVB0b1FjTzB5WWxGU1ZMTjAz?=
 =?utf-8?B?YjdxQ1N4UElWWXgwUzRYZkVUSERGeGpyZnlkNUJKbTJKa3NNaWo2MXhLUTN5?=
 =?utf-8?B?OERiMVI3RDhzc20yRkFIWEsrMVdXZm9YbE1JSTVPVXZhK3NYdjdoVVNMVDBO?=
 =?utf-8?B?Q3UvSnorRGpYQmttVVU0NENUaHI3YmQwWmtVallJOVN3bSs3YXV2cFdRVFNY?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45343ace-b0c3-4c89-f5f7-08dbc9121887
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 21:52:56.2122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hGVcCt2sldqGBeBSMcA1tgjBo51cR57gYgMuvRVSfQvnHRNentP+HgPjU+5dkZgLBDaRoVrVHZwblvIjY5PwKfik1F/FY0TVf85qVmhq10E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696888390; x=1728424390;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=V9xhU+fxeIYDRU78IesLA0cYv0SmqH3jHuf/DJg1Te4=;
 b=BCP6tQWU1nkxEYAn407XXzY/DGpx16JonOc3eC5ZKt7Ab7q2977eb1qu
 eOZfphjjsMuGhX/9xyptg9D2qV92Sccyo/u+gQ3A5+fMvSjVOmOvzWMJu
 WsAgIRVISguT9izGNmuO3SSZA1k4DqQz6KXMo6eHucEo/MJ7I3bu8xH0t
 1+q0gXaf+tEXeYoR6ShlAZpv4CVhbHfMsBWXPTs87MtXdbHBrqBjYn91A
 nCjDbalJqKzvG1BxBZx8MwPHyUBEfTZkFvKxi7N1SInf+q4bbVk8K/LqG
 WZxl+2Pft9FsUcDLsZb8VL6fjmWK6CbSF1u3BjK4PTlLGfcSNmjhH2uWg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BCP6tQWU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Fix SRIOV LAG disable
 on non-compliant aggreagate
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/6/2023 2:02 PM, Dave Ertman wrote:
> If an attribute of an aggregate interface disqualifies it from supporting
> SRIOV, the driver will unwind the SRIOV support.  Currently the driver is
> clearing the feature bit for all interfaces in the aggregate, but this is
> not allowing the other interfaces to unwind successfully on driver unload.
> 
> Only clear the feature bit for the interface that is currently unwinding.
> 

So, previously we had to go into each netdev associated with this bond
and disable SR-IOV? How does that happen now when we're doing this
disable on the non-unload case? Is that handled by having some other
flow? Does it just not need to happen at all and that was always a bug
to it this way?

Thanks,
Jake

> Fixes: bf65da2eb279 ("ice: enforce interface eligibility and add messaging for SRIOV LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 2c96d1883e19..c9071228b1ea 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -1513,17 +1513,12 @@ static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
>   */
>  static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
>  {
> -	struct ice_lag_netdev_list *entry;
>  	struct ice_netdev_priv *np;
> -	struct net_device *netdev;
>  	struct ice_pf *pf;
>  
> -	list_for_each_entry(entry, lag->netdev_head, node) {
> -		netdev = entry->netdev;
> -		np = netdev_priv(netdev);
> -		pf = np->vsi->back;
> -
> -		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
> +	np = netdev_priv(lag->netdev);
> +	pf = np->vsi->back;
> +	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
>  	}
>  }
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
