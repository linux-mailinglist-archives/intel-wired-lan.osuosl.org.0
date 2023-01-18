Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (unknown [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A77672632
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 19:02:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EFFD418CD;
	Wed, 18 Jan 2023 18:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EFFD418CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674064932;
	bh=+Ppqjfb8gdj5Ej+K3j67RjssQsN+dR4M3pCO1VDzzpc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sb5y1761hK4JXlpnQCRJ99yeiSSyyhf+r9toZ07Qv3NMkJU/PlMYUcVPz2vpMrj3D
	 TiP5nh3a003n4fjsdiUyudmRpAa7XbWaQ3SIbVwg3+qpsJeGxgD4smJPxfL/ByZ12i
	 6zGW3p4XSjP3XV15/mpeiJ8+bEGcOZlThwakm/yjXldVKALNGuxuWv5nUQ4D+lfIKU
	 8Y12NuYqZKmSYKW0Qb4n7oj9ZxrWAXzRm9zrK2BvA/DVCwWWfcE6cCXQPs7JGU6Uv6
	 sPqivd7AsTaQ4cq/N6rOZ+YLLL1/I9m2JgrXi3d25k2FYogPV9q/LSiJ0QpeQ9S58I
	 PzCflh0850ppw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id myqUPxiMZxtB; Wed, 18 Jan 2023 18:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58650418A6;
	Wed, 18 Jan 2023 18:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58650418A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C608B1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 18:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B709418A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 18:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B709418A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkCViSpzmWJ8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 18:01:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9E2541899
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9E2541899
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 18:01:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="305430200"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="305430200"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 10:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="728310347"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728310347"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jan 2023 10:01:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 10:01:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 10:01:53 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 10:01:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBxxOdkwaWjxRdu+S4FLkEwWXyChHgiwZgDq8kQk+O+sksDQ23+d9FeyOOv1dn2hPxy7CeT3hgOUGeW7BEo54NeJgpBCRxxQdo+dd7iTbuzpZ7U8nU1+UJP2FpneaFN95i23+U/go7U5lSUM7xUMpusSx2JqbAQ48QaI8oIqcQXwCqN70+Qg36oEA6PGDGK0alr8SNa8z/rEGq1XGZTHa0PwI6ZmpaUhT5012Svp6rC9LoyF69VhBbAqDg1Ol9OZQGzfmJxMQuy7SrcvsOY1witarzF27qgNs6Tk9auZZ+Yr5OfQJ36Er01758od1z4JeJ6gS17BanBbOlKQ8EOhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R3FYfH1Sg43uTcPR/37fpNW0sOItS7xr4hHUQ5VAaR0=;
 b=UP/aYVj4fTcuB00Rmq/HRaS56HlsX2+3VN8ngekdQfUyhQcXn/xG5lgeKgnUlkMCpyhGoO3dSkMVw4m1IsahENGgPohTR7ep31+nyI+unKckW9TE1MQfiW/PCrDxOgYugMuqo05oDJ8Jl5/QLBFt87aScGT1Wf74JHhcslHJM5fy73Mqk/l4qaIsFNGC1ueRIXvFBoyr0zbLGA92Ip0UsvNgZwbjuMYLWD4Z3vHdPmtxNG1n8rtX9OYlDGw0t/zHKMoYh7aZi4us3GPadHTpwBBJphQrcIX62s6hNHreMXtqIEbEDJT+9TM5LgZi8slkuC1wSBsORPTXwabyKfEmlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH8PR11MB6729.namprd11.prod.outlook.com (2603:10b6:510:1c5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Wed, 18 Jan
 2023 18:01:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5986.023; Wed, 18 Jan 2023
 18:01:51 +0000
Message-ID: <6b45937f-709c-b87d-9bc9-423fb2429587@intel.com>
Date: Wed, 18 Jan 2023 10:01:48 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230111142029.318092-1-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230111142029.318092-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0P220CA0027.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::18) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH8PR11MB6729:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b0da2ed-c121-48c0-7aae-08daf97e1344
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ylns0I5IqXj/iI3mAuvqjT0QhhQFF0yOCe0zRnw5iHMgG1uohTLnmsyG2BheJrmgw6Z3d3rKRC6rpC9zgepvvH5gzwe2eNwSC/kd0wMMU0YwbrsWJ4Fv6sMmS0CoHEWoWB9nwBDANz6y49D+ea1Fa2lEaBrPuSp/lzbZbjqjiGJlIiyozkgHlhh++az5He+8ZDZFevuPggXryAFuXvjB5zwWjmoccURRniyJKANBuy/ts+p5eCl4XRD7YHQ0Fwx4ij1bgVZTDOqbsdE9W4HJoxYIQpCAWeFV2Cq4pX+AwtpOsTUm2I75tPxi5ZQHwVVIs5GNq5PA0SI1Hkuw8Nbn2xRNNtlw3/rawx5pAfHhYBDTnc+RYe/07sogr/zKbec2oWmZ9Oex9xdD8BhEtlLeLM+CoEvkdpNvW6gADBYe5TdW/KQOFllIWVojXsmpyrazzKg8HKlQWw3+bikCMvmqeOCLMFPesh2Zqm4xCp5143ukeokCB/N+kWOCuNAcWq00SFRI7zdre+ou+LTPd9NJuENDeUPIU99P9UDOaQldijvQMGtB6KLFKU1jJyXSr1D4ZQdgs1aFsLl+bgGUS+3mNNCFN3YvEnFUCaN48J6sZWZprSOf3lz42N9ufg8eBpeQavm1Gp4D3jLhUehSyvvH8w3n3mL99VJUsBwjvWP4wACbszy5zHXdP/Abp1O9rgu/I/WfvaXso/ziGdvFl56matjy9arsdcx+DJ7Qof8CAWsYcnoV4CKymI3syuDT63WLwjqBLBYVC5Wu3173FQmh7Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199015)(31686004)(86362001)(2906002)(66946007)(66556008)(8936002)(5660300002)(82960400001)(31696002)(38100700002)(66476007)(316002)(6666004)(107886003)(53546011)(45080400002)(6486002)(966005)(6506007)(478600001)(36756003)(8676002)(4326008)(41300700001)(186003)(26005)(83380400001)(6512007)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkxmanVMMzRaaHZtRFVVRk9keUNrVkxpN0hmelJnRkdWcjhZRDY1dk80dGZ1?=
 =?utf-8?B?dFVaUEx4a1hGdnlMemlXbkxESHJyN25LUEtPT0E5Z2pPN1lxRXlwSUxzMWVE?=
 =?utf-8?B?N0tUNmNMRnM0b0tXeXMwaERUenAwQzlqQVZVMGpqRnlCMWFaRDhoMUYxK2tn?=
 =?utf-8?B?L21IaHhwTHp6RnRiZWdHNndyNy90R0pGa2t3R0trdDZETHNrOFQ3MTU3U2hZ?=
 =?utf-8?B?U0I3TStINHhPL1RZa2M4Y2VOSVlXb1Q4eXBjcUNyTFhKY0U4M3M3ZngrZURP?=
 =?utf-8?B?WU92VTlqQW9SSW1PSCttRG1vOW1taC81eENRaXZidzVEY0VnZGhXelJvZU9L?=
 =?utf-8?B?T2JLOW9idVFNczJ1enFncjZGL21RWUVhTnc5bWw4WnhMN2ZpUHg4TWl6N3lT?=
 =?utf-8?B?cW9aakRvSWw4bTFXTDBYaGI1VSs5Mmg0aWpTVmFaOURZTkg1alI0dGMyaWUr?=
 =?utf-8?B?NlVSa05SUVVJUVlIeEs4cytwQ3BidldWM0JCN2NWdWtIWWlmTmE5MUMvYkJO?=
 =?utf-8?B?MUZJWDV4QWMwU1NmVXkwQnA1d2JERFBBRFc5c1k5RE5SS1c1ZnJWMGVPUWd2?=
 =?utf-8?B?NG1pS1IwTjdhUTZ4K2NwdXMvTFBObXZxZFhvRk1PWTFwZ3VNTU9COTQ3Y1lM?=
 =?utf-8?B?eVBNcWd1SHVDYm92WC9YQmtKR09CRUV3VTFuMTk3Sk5hZlBaVTVZdzgrMTFk?=
 =?utf-8?B?Q1pqNEMvaUpLaXdtb0tSRmdaUHFWWllnY21yN1Z5azhSTnI3Q2cvUksrQW10?=
 =?utf-8?B?V05ZYkZVaEZjWTRHNWIzUEFZMG1sd1hZWGZKNUgrZ2VobWNMS0hZOUF2N09y?=
 =?utf-8?B?TDVYTGJnZ0s4UTFtd1pMK2tsdFJRdmd2UlU1Y3ZVN0UvU0xyMXFZVmkrWWtK?=
 =?utf-8?B?elJpZ0N5ZkRxTWdsVTdOZjR6RWUybnlwVFluOUQ5RlgzeHZlM3EvUkVjaFVC?=
 =?utf-8?B?OGdDYSswV2cvNGo3VXBNUVVScXIxb2N4S0Y5dm9UTFpJVkJTT0FJbmEySjJq?=
 =?utf-8?B?Z1JIYkV3RThrTFUxeXJYRk8ybTkxNFd1YmIwMXd5dzRRN2FkaDBsZ3dUL1NX?=
 =?utf-8?B?ZkkzQkp2NW1hYS9QRjRWNGVnM1RUQlV2bmdRZjcrWDNaTXNNMENVeC9iWDhw?=
 =?utf-8?B?OG5IMC9mbGZORHRRb0ZNWTAwMGxJWjZXbHNwOTk5WTA3ZnFvREtST1lQWVpW?=
 =?utf-8?B?dmtFOHVmMXpyVXpRWU1JOUJlc0VTMkdwZENWQlM5QnVhZEhKY1dRVUNnbTFH?=
 =?utf-8?B?c1p6cmR5aDVvODZzazZRb2VrTWRqMEJiVERVNlUrZUdmZWo4cGZkYlAzMnFV?=
 =?utf-8?B?NUJXQkJSZXdEMVAwZDlhaHZ3TGZDVWg0NS9oVjJlZytSWGcwRU53dk5JTXVD?=
 =?utf-8?B?RHBPcnZIRDgxbnhtaFNmdXViZHBJUFJPck5iclZFSmpuZVN3VG1MQ3FIckdw?=
 =?utf-8?B?c3g2NFFjaS9GTDRaT1lsN2RxNi9rUHFCU0hBTWw4WldnK2JkYk9wTFFDNUZ0?=
 =?utf-8?B?Q1dOeVQ5aUNrd1Y4NktSRm0xRDMybEVrY05nRU5OdFVHdjhjVC92ZUo5WmN4?=
 =?utf-8?B?S2tGR3d6amRFdmsyOWZ4UXVLZDdGdmRDMEhXdXlyREdySUxNY2Z6Y2xMcXNz?=
 =?utf-8?B?NVRSTTVhQ0QwWmFBSFRrRnQ4TFZ5UnlVMUNFalBwZ1hWbk1WMktJcXNOclox?=
 =?utf-8?B?elRobUZrSHhwb212ZW1lRlRLdVJ1Z20xYnErK2Y0ZWI0WkZwclFFRTl0VE1Y?=
 =?utf-8?B?OGh5SVJBUFFBellKL05qTVN2dnQwWWszYUdPWXlyaDZiY242L2d1bUpWeDY2?=
 =?utf-8?B?TEs0MzdhRDJuLzB3K2Z3ZWFFSlhTNy9KSXR2SWNpeElrbkpDa3VtSjRNUDFI?=
 =?utf-8?B?RTM5RzQrV3F2dVVLUVUzS2FoNmt5RW82TmFOVi9RNmVpeEpJeFQrdmx5QURH?=
 =?utf-8?B?MWxTZVNPZjVWNXFTVkdIOXBKcmN6b2tnd0VSMW9jZEZkODRtVkM3RFpGRzNM?=
 =?utf-8?B?d2ozdVBrdjVoQ3NSbmxBU1VPKy8wYlRMMDE5dnloZWVHYUNKeFB5Z05zM0JO?=
 =?utf-8?B?L1hHbUtFS01kNG8vekZua0tBdEpSZCtvN0IvejVKMSs5NDRyUGozQitkd1B3?=
 =?utf-8?B?Y01vSmpYR0dnbEk5TEdPOFhuY1BXTTM0VHVuZWU0dW56YzBNMVlxSEtKSEMz?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b0da2ed-c121-48c0-7aae-08daf97e1344
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 18:01:51.2671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHLUU7RblI26Z1Gj7m+rSsllxNfBlAz/BxRuRgVpGj8xyNHGGc3mJbIVOnH/0/u5siwC/qfS5KlVBMQ3UmvCwPTmuOnJLytjTMsvEyo12NA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674064918; x=1705600918;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1/ozcBfdMBAizq5Mkdmht6zTTVzQKLm2GSWnT5xUR1Y=;
 b=dcz48roLIMvOBaCy2fu6toT4qAPIs/QPcgdQtWCIpPohX54hD75lBhCW
 MlkgWTe6LcebthgsCYpfoO+FrUqzsIYZVQtHNPprd1QbAjUqxAaNLHaTZ
 DwFYbuTI4uLagrsuNMpdEFXKfRrAG7bZYgKokeWQWsDr2SRA0oeSaVeSb
 MUcaGfujbTu3SXZwBiduXFo7ISDSUl9xwzZMNttkzr99kM5JxpZY7w+qe
 UkVFr+wftEYE0MYSl7hhd/H1S7KlwDq0br0OfL1vrwNq0Utm1duJW2lU0
 kQIOLE1+XOB2PI55IqoVqrl5ndUx9Qp//+F33APsgBhT/mdaLUMFJTplD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dcz48roL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
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
Cc: Rafal Rogalski <rafalx.rogalski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/11/2023 6:20 AM, Kamil Maziarz wrote:
> From: Rafal Rogalski <rafalx.rogalski@intel.com>
> 
> Commit f70b9d5f4426 ("ice: check for a leaf node presence") prevents
> removal of VSI with leaf nodes. This is an expectation of driver action
> induced by FW requirements. However, this caused RDMA scheduler config
> removal to fail every time a qdisc was added or deleted.
> 
> Fix this by ignoring errors from RDMA configuration removal when qdisc are
> being reconfigured.

Would this same issue occur [1] in this situation? Have you tested that 
RDMA works?

> Fixes: ff7e93219442 ("ice: Fix failure to re-add LAN/RDMA Tx queues")
> Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h      | 1 +
>   drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-
>   drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>   3 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 2f0b604abc5e..b572d07bc126 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -306,6 +306,7 @@ enum ice_pf_state {
>   	ICE_PHY_INIT_COMPLETE,
>   	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
>   	ICE_AUX_ERR_PENDING,
> +	ICE_SETUP_TC_QDISC,
>   	ICE_STATE_NBITS		/* must be last */
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 22bcb414546a..0ee3acbea108 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3448,7 +3448,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
>   
>   	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
>   	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
> -	if (ret)
> +	if (ret && !(test_bit(ICE_SETUP_TC_QDISC, pf->state) && ret == -EBUSY))
>   		dev_err(ice_pf_to_dev(vsi->back), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
>   			vsi->vsi_num, ret);
>   	ice_vsi_free_q_vectors(vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a9a7f8b52140..5ff137645f08 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8706,6 +8706,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>   	cur_txq = vsi->num_txq;
>   	cur_rxq = vsi->num_rxq;
>   
> +	set_bit(ICE_SETUP_TC_QDISC, pf->state);
>   	/* proceed with rebuild main VSI using correct number of queues */
>   	ret = ice_vsi_rebuild(vsi, false);
>   	if (ret) {
> @@ -8716,9 +8717,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>   		clear_bit(ICE_RESET_FAILED, pf->state);
>   		if (ice_vsi_rebuild(vsi, false)) {
>   			dev_err(dev, "Rebuild of main VSI failed again\n");
> +			clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>   			return ret;
>   		}
>   	}
> +	clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>   
>   	vsi->all_numtc = num_tcf;
>   	vsi->all_enatc = ena_tc_qdisc;

[1] 
https://lore.kernel.org/netdev/MW5PR11MB5811E652D63BC5CC934F256DDD1C9@MW5PR11MB5811.namprd11.prod.outlook.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
