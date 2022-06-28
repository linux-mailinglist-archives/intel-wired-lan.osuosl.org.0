Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5A255F0F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 00:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A3E3403F8;
	Tue, 28 Jun 2022 22:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A3E3403F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656454888;
	bh=h/XHRjeDFuw1y90oAIkVoJKcvAUeap+GyFcA+Ff3jUM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T8S8MPULd36sNrZnUxjM6cZlxOri32mR91az9ThN7XBtM35jASh9Bzh4JOgvW7tFC
	 NTWGCCVj2lqcybVMUhIQpAMKBBBNBpx8jUu9Ibq6PwUtE2yeNDQegYUDlIp9XKes7R
	 48nR/9FDE+k9wbdkqSOcBeuZcwWcWPEp4Ao94zke2KNyv1GQXfT+z6y64Vtm9kQvlq
	 lFR9QKfrlp0GVLl8vpUHEopcUf9LhRGmjyRoiBvHA5eZUPVJQW1CXu5ck9VfCG9B22
	 HCzBGRiy/sHBD+kV0blH+R3PGKz1nXTDiGARGnFtWbRljHco7YjXowc9km6Ejp3SYx
	 wL5+ABCxKBp/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 67IUHakpJ2Ba; Tue, 28 Jun 2022 22:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6309140443;
	Tue, 28 Jun 2022 22:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6309140443
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FDA61BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07AA181BA9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07AA181BA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNbwX1gnIrVI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 22:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF232817BD
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF232817BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:21:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="279408496"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="279408496"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 15:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="693302448"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 15:21:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:21:18 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:21:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 15:21:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 15:21:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L1+sGb+2Se3ITxv5S1ww3R/f35xTGdw9W/cKJOD7QLgKHCGh/LIvR1jMyaFqO/Djjzecqld3dKW6iYLiRxxr0GPKbdaseDndYaua0WWOR3Yp/bNFlaxsq8fUJhA37ZF6ET27HKPjZF18j09hjImP5Ogme6D46KMdRvlp3dv9DfqXGJINFRtremDEzw2kafBWbnfVR+m9Nxldp38YaYZ8pMn34fzzhg3m7J6udmNPKcqyCNO3ctQ6PG84NgsHGdyXJIi7hOi2G7ZWeC9eWtyAqatHc5dd4y/O93+ebsLQUKDtMv9T/YQ6v0n4YEthyEJsBGl3pGSqJx9FKNJxPkNRcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tuR7ZTXa2se0/NdIyhwcrHyAKpj56fn1Zc9GA6+hzC4=;
 b=lUAHLCgyW6q+PSZaMAPbs4rsZspKbAihdEP7x5yM6q7TiShcSgLzr0t4jm/40sRKhYcXrimrm4bMAdc4xsoYTy/MGWyDYCjdahfTCkNipD6O6n0pY1f9SaLm8O0lvKTI+uy1RIwinJoRXnTfK1DA7FRdVkhCj56cxXITQzTn5HIU2uPr6PO4HPUSEYdae1sGpNBWZxe2jaSNbsL/+bqSawxnuCNN9LE5Dd4lotp8XQahRzjtcb7Wcvx3VcWhYZmYj4Iz+8Bbu/ZWhjcdTx3GYP2WGM1v5RjTBE1QyT5ZEKZl+Y00saDKKxo4LHIkkgpKsLuXTUkh3IluCpRRHUVY/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB1405.namprd11.prod.outlook.com (2603:10b6:300:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Tue, 28 Jun
 2022 22:21:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 22:21:15 +0000
Message-ID: <2a67c395-d2cc-1826-ae43-5f02c808d518@intel.com>
Date: Tue, 28 Jun 2022 15:21:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624102110.1008410-1-michal.wilczynski@intel.com>
 <20220624102110.1008410-2-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220624102110.1008410-2-michal.wilczynski@intel.com>
X-ClientProxiedBy: MW2PR16CA0056.namprd16.prod.outlook.com
 (2603:10b6:907:1::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 498b4625-658b-4ef8-7974-08da595483f8
X-MS-TrafficTypeDiagnostic: MWHPR11MB1405:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E0TNjIsURCWKTCrxa+KcbtPmMwsdwvWgaGvOWYYoMmHcyH1rft7vUD071XphL+zCGLUERpNEWp7xH6pRNxHnPS88nq2RudAxY1JEkfiSP6+yubNO0lb4a3V2VWbsHUuNBpp46hzOI/Du7lhiMmjt5mTqvs/YRg7nt0CEK5PCsA9Nq4VCMv9+dxUQuVXTSaoGXyu2lEwHsEbxMUrfUeCNyazqkDf551D5n+C+el055Y//WjrBtg9w9C7qxtFlIsnh6bheSPbbVv/7OKhcct0Qjpkyl5kJq5wKjcJSf7hSTcHyQPyEh0INFkAdPhdH8CRbSeYDnHJtdl1d5k8RAV7pUnjmSpnvJp8zctc9IkGRDUnjprJSSwFf3ENtsLeqPdiDNEfXAwIsbAmE13fubMRLq97P2juzpk+ErXr9BnZ7P/JWXyPd4ttbi3zsIQGccTzhGs3l0JpyhBk+iv2twuIWngtjgW42EUB2Vyd12JuNdimm6Jjn87c86dKlAc59TdV0q79ahBP1YOBO/jy6H12R6mMkUPbfevDIjx7pSxvu0eWyMQqCCGuas78VMXvxrrnDnc9TCdt+dAf7igcxN4c12LQUkGYrPbdNjCnmgiMRKd06XE5cLwNTT08s5MusMzoXWPbG7B3iOJX2k1DAsZ0czPJmbP9d4OW+oRdGWreQ711wDtSkrucoPsztkskvhVlRHPzHE1uox+UawXZC9hou4poMN2jlSB86ln0v+HU4U4i1iFjkcExsJs5hHiflVPAIRY+25wTF0p57T53Ks2zPnWXhPxzYjNzXr45G9WogEogezBC1JAePd9ss3cXaQh2ClQKRKnIys/sIQPiCqk2ebw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(39860400002)(346002)(136003)(366004)(478600001)(30864003)(5660300002)(31686004)(8676002)(8936002)(316002)(2906002)(26005)(36756003)(107886003)(2616005)(86362001)(186003)(6512007)(6666004)(6486002)(41300700001)(6506007)(82960400001)(31696002)(53546011)(66476007)(66556008)(83380400001)(66946007)(38100700002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXRYbHowdytNZUlOb0lDbVZnR2ZvMzhGemlEZDhod2F4K3ZERms5eHYwNmZX?=
 =?utf-8?B?b3JYZkF5eUJhMW1ITEJMYVRpNXduK0dsZ3FwaXN1OGR2cFFHRlRaOWIyV0F4?=
 =?utf-8?B?T0h3R1FCY1pHTks0SVpVNGx6cGs5cnlTRUtkUlFIS25UTE05cEJlaWFOOCt3?=
 =?utf-8?B?Wi8xaXY3ZGV6SUQ0M0VYSFVTYjh5bDVMUHBrc1hGZTBkQWl3WUNINnd0ZmxO?=
 =?utf-8?B?WXIvQzFxSm9RRDY4bmdqUmJLTm8xZmFPMmdJRXRBN05reHVET1FEZ2hCdkVy?=
 =?utf-8?B?U2xXaE54c3V4OFlRSmtoZnVXc0drckx4M1FOckRrcWFhbllpSm5ubTQrbDZ5?=
 =?utf-8?B?YjV3WFFMSERsZXoxWFRBcU91aGVJK2ZjSExqcXY4L2gySHduQkZ3bjRzb0pV?=
 =?utf-8?B?bFRkU3BCVzhDaGtra1h1QWgrdXpVUXp4a3psWmV3akNmSXBISHAwV1hMbU4z?=
 =?utf-8?B?alpaTWpBSVBSWFdUZlpJRFhONHdwT01yMDROT2hDZmFDODJnQmJmc1NuOUpX?=
 =?utf-8?B?OTZnK3FTYlZaSWprMXR0eUhYREpDcnllaHdJcXF1UDk2SzlwbHgrNjhGNWpM?=
 =?utf-8?B?czdZa0xaOFFhTnBHeElOY0VNbXEwLzcrTW5XcFRxWUFFMmhHMDNyT3BTZ3Vu?=
 =?utf-8?B?aUxEd1FKOHdPaE1QbUtxeUZhckI0ZlRuY2w1Zjk5dzFxYnZHSlNOZlNhdFBY?=
 =?utf-8?B?U2FSVk5KdkgxV0I2S2hpZGVxd0UwOTNKY0dRSERTMjhJa3VMdFk4dENwd05w?=
 =?utf-8?B?YUNFUHRkcEJTTjJ3clJxc01IRFZkLzlUa2RJUjE4a1FJWEV5MU5GNlNiczd5?=
 =?utf-8?B?OCtEQ2t2OGdyT0JLcTEyMS93NFp3L043VmtTZXJ3NENad2F3L3ZkOFh6ODVx?=
 =?utf-8?B?RW8wRW1NMU9MOXRxZ1RHTWtmWUtyY2hXOVhjdVNLL3cxdXBLUXlOQ2IvQ2J5?=
 =?utf-8?B?alJKZFc4Vm0yZDJWL0FsRnRxTEZXWXVodEhGZWlDWFRhLzlhL1o2T1lmZ281?=
 =?utf-8?B?QklFQ295a3hEYVVvc0dLN0hQUmF2dTlOWitXdkptWWhESWk3YmkxeUswTEpo?=
 =?utf-8?B?cXh1N3hZSlFNdkxoYy9BT1Z2ZWFDN0FHclJXS2xYRVg2c3JraTZWZC85WFpk?=
 =?utf-8?B?bkF1TVlLbUt4NzI1LzdySjZtTVBmaTgva1pLSUFXcVZwWjdHaEtUNG5nL3RE?=
 =?utf-8?B?SDJ2SHJnZWNVYmZld2ptZVV1dlN1UjNlb292aWdwZFlBWWNlVzdsOUdCR0Zu?=
 =?utf-8?B?UWFKaFBuTmZSSmNHeHpvUi9JeXB4VUh5cXhrUFB6VDNFZm8zOGpjbVBrS1Vt?=
 =?utf-8?B?NnB2NWxWT0s2UnZMTnRZTUd1b0FPdVFVRlJlVVdyNjU5dTZMbkxNU3JQTnAx?=
 =?utf-8?B?R05RYkhPZnpyc1lGZjhIM1BKVE5Ha3h1YjhCR1dtVC9WdDRhYnQrRHQ2a1F3?=
 =?utf-8?B?ZHVsam9DdlZkR0I3Tk83Wkg4VlhJNjVzblpUc2Y0QXljTWJvak5NQW5IK2dD?=
 =?utf-8?B?allRWGpWSUpkeTl5QzdNN2ltTmxQcEptSmd0T2tXQ1l4RUE4NFlEMHRJeURq?=
 =?utf-8?B?WE9kakVmYTlGdUxYYzd0RkFRYzZJanZJdUNVZm1WcklUZ0pOOXNZc0o1TEZ6?=
 =?utf-8?B?MWl2SWRLVFF5MnNUL0dzcWQ3cWY3MVhrOEFGK1dha2pwYjRiVGFPZ0FjUDYr?=
 =?utf-8?B?cFJycmxGVDFkVnFSTFNHclVXK2NTcGRmZlFaemVmZUFHelVZWWpYWFF0b1Ux?=
 =?utf-8?B?WllmUTQ3N1JrZE5jWERaMGtiSlZVa2hjNUgzYU1jZFhQM0JiRDk4K1Zjb1k0?=
 =?utf-8?B?TWl0cDNJcFg5b3d3Z0R4dUhuQU1nR0ZHK2ltSndOVFQvRldCdzNOL0RpeHJC?=
 =?utf-8?B?SlhIeEFsZDdabXVrMCsvcW5NNldOR3lncWdPYldjK0pwcFZMcXBxOHUyZFVR?=
 =?utf-8?B?RHpJSnJ0cGsxMEpydTdZV2U3NHhZTkRHVXBtL1kwVk5Zbk92bHZMNUE2b1JL?=
 =?utf-8?B?NUdjNkZRbnR6N3pHQlNaYWQ4eVJNS2R4UEcvV3YrY0l1WXlHNHZnWUs4RHZX?=
 =?utf-8?B?cTRCNEUwR1VhRUhBYlVWVVA2Y3pKLzdZQVlpdndyVlNlVDhGWlR0ZVFKcGZy?=
 =?utf-8?B?d04zOXlZNWlsbjFmVmpGY3pVY3B0aTlOc1RKbUpuQlNSU2MyOThlQmJWMTZx?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 498b4625-658b-4ef8-7974-08da595483f8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 22:21:15.4133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Jf323orGPJKIuuNFhP+7A3486qorxZfouWY2MSFitWW/LJlf6/mJ5JVOiwO3do/NtdCeyoi9B0v+GxxV+V0YVdH1jYfArtqwbG0naXMAcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1405
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656454879; x=1687990879;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+OhCXbs5wvRjYgvCmtrk4iyx/Va29v2OULZ24wEhJso=;
 b=TD41Pok0WK9XXcmODresDx932yRXhwDQv0cjZp0QcZwdtiTKiocbuIO0
 dybvs3tQFr0lFbDQsHxSRJ/KZl1G+L5sfWATZoTm40amIFaZq19hMcV1A
 f34iBCz/bzFhku1Cvuga1a5IH6piveXvQP7Kb46OjlJBbNItxIu4uHUNa
 hVhHYGZmpQoL5YpYpQyjNbrTE3c2ibt/TgUP8BRM4t91OlAmDs+HlmQOM
 31VGW5WClpNd6FMxkzHEESI/9KeW87vnma7OM+usRZvAJrVMHHgrZfZaE
 FVcG83avQ31nabb/Z8ss8MbdRmQVcBy6tb31F60vSzKsE1AbLsQlzR9Ex
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TD41Pok0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ice: Code added to
 support 5 layer topology
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
Cc: Raj Victor <victor.raj@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/24/2022 3:21 AM, Michal Wilczynski wrote:
> From: Raj Victor <victor.raj@intel.com>
> 
> There was a performance issue reported when the number of VSIs were
> not multiple of 8. This was caused due to the max children limitation
> per node(8) in 9 layer topology. The BW credits are shared evenly
> among the children by default. Assume one node has 8 children and
> the other has 1. The parent of these nodes share the BW credit equally
> among them. Apparently this casued a problem for the first node which
> has 8 children. The 9th VM got more BW credits than the first 8 VMs.
> 
> Example:
> 1) With 8 VM's:
> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
> 
> 2) With 9 VM's:
> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
> 
> So on average queue 8 statistics show that 3.7 times
> more packets were send there than from the other queues.
> 
> The FW has increased the max number of children per node by reducing
> the number of layers from 9 to 5. Reflect this on driver side.
> 
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  23 ++
>   drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
>   .../net/ethernet/intel/ice/ice_flex_pipe.c    | 202 ++++++++++++++++++
>   .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
>   drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   6 files changed, 247 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 05cb9dd7035a..2d1da00b4926 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -120,6 +120,7 @@ struct ice_aqc_list_caps_elem {
>   #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
>   #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
>   #define ICE_AQC_CAPS_NVM_MGMT				0x0080
> +#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
>   
>   	u8 major_ver;
>   	u8 minor_ver;
> @@ -798,6 +799,24 @@ struct ice_aqc_get_topo {
>   	__le32 addr_low;
>   };
>   
> +/* Get/Set Tx Topology (indirect 0x0418/0x0417) */
> +struct ice_aqc_get_set_tx_topo {
> +	u8 set_flags;
> +#define ICE_AQC_TX_TOPO_FLAGS_CORRER		BIT(0)
> +#define ICE_AQC_TX_TOPO_FLAGS_SRC_RAM		BIT(1)
> +#define ICE_AQC_TX_TOPO_FLAGS_SET_PSM		BIT(2)
> +#define ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW		BIT(4)
> +#define ICE_AQC_TX_TOPO_FLAGS_ISSUED		BIT(5)

Not all the defines are being used, please remove the unused ones.
Also, please add newline between the member & related defines from the 
next to make the associations a little more distinct.

> +	u8 get_flags;
> +#define ICE_AQC_TX_TOPO_GET_NO_UPDATE		0
> +#define ICE_AQC_TX_TOPO_GET_PSM			1
> +#define ICE_AQC_TX_TOPO_GET_RAM			2

Same comment here

> +	__le16 reserved1;
> +	__le32 reserved2;
> +	__le32 addr_high;
> +	__le32 addr_low;
> +};
> +
>   /* Update TSE (indirect 0x0403)
>    * Get TSE (indirect 0x0404)
>    * Add TSE (indirect 0x0401)
> @@ -2126,6 +2145,7 @@ struct ice_aq_desc {
>   		struct ice_aqc_get_link_topo get_link_topo;
>   		struct ice_aqc_i2c read_i2c;
>   		struct ice_aqc_read_i2c_resp read_i2c_resp;
> +		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
>   	} params;
>   };
>   
> @@ -2231,6 +2251,9 @@ enum ice_adminq_opc {
>   	ice_aqc_opc_query_sched_res			= 0x0412,
>   	ice_aqc_opc_remove_rl_profiles			= 0x0415,
>   
> +	ice_aqc_opc_set_tx_topo				= 0x0417,
> +	ice_aqc_opc_get_tx_topo				= 0x0418,
> +
>   	/* PHY commands */
>   	ice_aqc_opc_get_phy_caps			= 0x0600,
>   	ice_aqc_opc_set_phy_cfg				= 0x0601,
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 9619bdb9e49a..8b65e2bfb160 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2091,6 +2091,9 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
>   			  "%s: reset_restrict_support = %d\n", prefix,
>   			  caps->reset_restrict_support);
>   		break;
> +	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
> +		caps->tx_sched_topo_comp_mode_en = (number == 1);
> +		break;
>   	default:
>   		/* Not one of the recognized common capabilities */
>   		found = false;
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index c73cdab44f70..b3bd345ea0f3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -4,6 +4,7 @@
>   #include "ice_common.h"
>   #include "ice_flex_pipe.h"
>   #include "ice_flow.h"
> +#include "ice_sched.h"
>   #include "ice.h"
>   
>   /* For supporting double VLAN mode, it is necessary to enable or disable certain
> @@ -1783,6 +1784,207 @@ bool ice_is_init_pkg_successful(enum ice_ddp_state state)
>   	}
>   }
>   
> +/**
> + * ice_get_set_tx_topo - get or set tx topology

nit: s/tx/Tx
a lot of other places within this patch as well

> + * @hw: pointer to the HW struct
> + * @buf: pointer to tx topology buffer
> + * @buf_size: buffer size
> + * @cd: pointer to command details structure or NULL
> + * @flags: pointer to descriptor flags
> + * @set: 0-get, 1-set topology
> + *
> + * The function will get or set tx topology
> + */
> +static int
> +ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
> +		    struct ice_sq_cd *cd, u8 *flags, bool set)
> +{
> +	struct ice_aqc_get_set_tx_topo *cmd;
> +	struct ice_aq_desc desc;
> +	int status;
> +
> +	cmd = &desc.params.get_set_tx_topo;
> +	if (set) {
> +		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
> +		/* requested to update a new topology, not a default topology */
> +		if (buf)
> +			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
> +					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
> +	} else {
> +		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
> +	}
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
> +	if (status)
> +		return status;
> +	/* read the return flag values (first byte) for get operation */
> +	if (!set && flags)
> +		*flags = desc.params.get_set_tx_topo.set_flags;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_cfg_tx_topo - Initialize new tx topology if available
> + * @hw: pointer to the HW struct
> + * @buf: pointer to Tx topology buffer
> + * @len: buffer size
> + *
> + * The function will apply the new Tx topology from the package buffer
> + * if available.
> + */
> +int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
> +{
> +	u8 *current_topo, *new_topo = NULL;
> +	struct ice_run_time_cfg_seg *seg;
> +	struct ice_buf_hdr *section;
> +	struct ice_pkg_hdr *pkg_hdr;
> +	enum ice_ddp_state state;
> +	u16 i, size = 0, offset;
> +	u32 reg = 0;
> +	int status;
> +	u8 flags;
> +
> +	if (!buf || !len)
> +		return -EINVAL;
> +
> +	/* Does FW support new Tx topology mode ? */
> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
> +		ice_debug(hw, ICE_DBG_INIT, "FW doesn't support compatibility mode\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	current_topo = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
> +

No newline between the error checks please.

> +	if (!current_topo)
> +		return -ENOMEM;
> +
> +	/* get the current Tx topology */
> +	status = ice_get_set_tx_topo(hw, current_topo, ICE_AQ_MAX_BUF_LEN, NULL,
> +				     &flags, false);
> +
> +	kfree(current_topo);
> +
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_INIT, "Get current topology is failed\n");
> +		return status;
> +	}
> +
> +	/* Is default topology already applied ? */
> +	if (!(flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
> +	    hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS) {
> +		ice_debug(hw, ICE_DBG_INIT, "Loaded default topology\n");
> +		/* Already default topology is loaded */
> +		return -EEXIST;
> +	}
> +
> +	/* Is new topology already applied ? */
> +	if ((flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
> +	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
> +		ice_debug(hw, ICE_DBG_INIT, "Loaded new topology\n");
> +		/* Already new topology is loaded */
> +		return -EEXIST;
> +	}
> +
> +	/* Is set topology issued already ? */
> +	if (flags & ICE_AQC_TX_TOPO_FLAGS_ISSUED) {
> +		ice_debug(hw, ICE_DBG_INIT, "Update tx topology was done by another PF\n");
> +		/* add a small delay before exiting */
> +		for (i = 0; i < 20; i++)
> +			msleep(100);
> +		return -EEXIST;
> +	}
> +
> +	/* Change the topology from new to default (5 to 9) */
> +	if (!(flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
> +	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
> +		ice_debug(hw, ICE_DBG_INIT, "Change topology from 5 to 9 layers\n");
> +		goto update_topo;
> +	}
> +
> +	pkg_hdr = (struct ice_pkg_hdr *)buf;
> +	state = ice_verify_pkg(pkg_hdr, len);
> +	if (state) {
> +		ice_debug(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
> +			  state);
> +		return -EIO;
> +	}
> +
> +	/* find run time configuration segment */
> +	seg = (struct ice_run_time_cfg_seg *)
> +		ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE_RUN_TIME_CFG, pkg_hdr);
> +	if (!seg) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment is missing\n");
> +		return -EIO;
> +	}
> +
> +	if (le32_to_cpu(seg->buf_table.buf_count) < ICE_MIN_S_COUNT) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment count(%d) is wrong\n",
> +			  seg->buf_table.buf_count);
> +		return -EIO;
> +	}
> +
> +	section = ice_pkg_val_buf(seg->buf_table.buf_array);
> +
> +	if (!section || le32_to_cpu(section->section_entry[0].type) !=
> +		ICE_SID_TX_5_LAYER_TOPO) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology section type is wrong\n");
> +		return -EIO;
> +	}
> +
> +	size = le16_to_cpu(section->section_entry[0].size);
> +	offset = le16_to_cpu(section->section_entry[0].offset);
> +	if (size < ICE_MIN_S_SZ || size > ICE_MAX_S_SZ) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology section size is wrong\n");
> +		return -EIO;
> +	}
> +
> +	/* make sure the section fits in the buffer */
> +	if (offset + size > ICE_PKG_BUF_SIZE) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology buffer > 4K\n");
> +		return -EIO;
> +	}
> +
> +	/* Get the new topology buffer */
> +	new_topo = ((u8 *)section) + offset;
> +
> +update_topo:
> +	/* acquire global lock to make sure that set topology issued
> +	 * by one PF
> +	 */
> +	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
> +		return status;
> +	}
> +
> +	/* check reset was triggered already or not */
> +	reg = rd32(hw, GLGEN_RSTAT);
> +	if (reg & GLGEN_RSTAT_DEVSTATE_M) {
> +		/* Reset is in progress, re-init the hw again */
> +		ice_debug(hw, ICE_DBG_INIT, "Reset is in progress. layer topology might be applied already\n");
> +		ice_check_reset(hw);
> +		return 0;
> +	}
> +
> +	/* set new topology */
> +	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_INIT, "Set tx topology is failed\n");
> +		return status;
> +	}
> +
> +	/* new topology is updated, delay 1 second before issuing the CORRER */
> +	for (i = 0; i < 10; i++)
> +		msleep(100);
> +	ice_reset(hw, ICE_RESET_CORER);
> +	/* CORER will clear the global lock, so no explicit call
> +	 * required for release
> +	 */
> +	return 0;
> +}
> +
>   /**
>    * ice_pkg_buf_alloc
>    * @hw: pointer to the HW structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
> index 974d14a83b2e..ebbb5a1db8c7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
> @@ -29,8 +29,9 @@ struct ice_pkg_hdr {
>   
>   /* generic segment */
>   struct ice_generic_seg_hdr {
> -#define SEGMENT_TYPE_METADATA	0x00000001
> -#define SEGMENT_TYPE_ICE	0x00000010
> +#define SEGMENT_TYPE_METADATA	      0x00000001
> +#define SEGMENT_TYPE_ICE	      0x00000010
> +#define SEGMENT_TYPE_ICE_RUN_TIME_CFG 0x00000020
>   	__le32 seg_type;
>   	struct ice_pkg_ver seg_format_ver;
>   	__le32 seg_size;
> @@ -73,6 +74,12 @@ struct ice_buf_table {
>   	struct ice_buf buf_array[];
>   };
>   
> +struct ice_run_time_cfg_seg {
> +	struct ice_generic_seg_hdr hdr;
> +	u8 rsvd[8];
> +	struct ice_buf_table buf_table;
> +};
> +
>   /* global metadata specific segment */
>   struct ice_global_metadata_seg {
>   	struct ice_generic_seg_hdr hdr;
> @@ -181,6 +188,9 @@ struct ice_meta_sect {
>   /* The following define MUST be updated to reflect the last label section ID */
>   #define ICE_SID_LBL_LAST		0x80000038
>   
> +/* Label ICE runtime configuration section IDs */
> +#define ICE_SID_TX_5_LAYER_TOPO		0x10
> +
>   enum ice_block {
>   	ICE_BLK_SW = 0,
>   	ICE_BLK_ACL,
> @@ -706,4 +716,7 @@ struct ice_meta_init_section {
>   	__le16 offset;
>   	struct ice_meta_init_entry entry;
>   };
> +
> +int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);

I don't see an external caller, should it be static?

> +
>   #endif /* _ICE_FLEX_TYPE_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
> index 4f91577fed56..86dc0f1f4255 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.h
> @@ -6,6 +6,9 @@
>   
>   #include "ice_common.h"
>   
> +#define ICE_SCHED_5_LAYERS	5
> +#define ICE_SCHED_9_LAYERS	9
> +
>   #define ICE_QGRP_LAYER_OFFSET	2
>   #define ICE_VSI_LAYER_OFFSET	4
>   #define ICE_AGG_LAYER_OFFSET	6
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index f2a518a1fd94..ff793fe2a2e7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -290,6 +290,7 @@ struct ice_hw_common_caps {
>   	bool pcie_reset_avoidance;
>   	/* Post update reset restriction */
>   	bool reset_restrict_support;
> +	bool tx_sched_topo_comp_mode_en;
>   };
>   
>   /* IEEE 1588 TIME_SYNC specific info */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
