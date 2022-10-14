Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF0D5FF66B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Oct 2022 00:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B08994019B;
	Fri, 14 Oct 2022 22:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B08994019B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665787473;
	bh=1UXeteyEABMuswwS1EuKVlfmowU8gNYqAfto7OHB6TQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=otkZS248hpsLq64gQf2fELro6OytEtFJBrNzvkjNRRfvbxXdY6p8NCJqIvXqRIZoQ
	 TxlC0AgbDz0FifGz9RdPjbl9KGFJFqVLfnk9xTW+q64NHNGkBG3DMYL5EXdKGES3P9
	 3NGK0LoRgKoCYe9n56qPpc+a8N+ImrEdnfJTFZN9KX0Uiq976hWKgGhu7TNyFdxaE9
	 PhDsW7MvV7PH6jOkJGrZMGx99VY0kIhoBDo9cTSt8JJZl9A/qUKJZV3fKCCXtvux2x
	 IP8s0uvabGa1lxDNdC/YFOcFigcB3LQjO4dmZt4sAqFxvB3XLxcytzG9uznsK+IBpZ
	 TZcuG913PGU6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LZWLH_cH_-Jn; Fri, 14 Oct 2022 22:44:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80CD0404B4;
	Fri, 14 Oct 2022 22:44:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80CD0404B4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC23A1BF844
 for <intel-wired-lan@osuosl.org>; Fri, 14 Oct 2022 22:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93B5A403F7
 for <intel-wired-lan@osuosl.org>; Fri, 14 Oct 2022 22:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93B5A403F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_leEwPokPmz for <intel-wired-lan@osuosl.org>;
 Fri, 14 Oct 2022 22:44:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D747A4036F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D747A4036F
 for <intel-wired-lan@osuosl.org>; Fri, 14 Oct 2022 22:44:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304226587"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="304226587"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 15:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="630098311"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="630098311"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 14 Oct 2022 15:44:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 15:44:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 15:44:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 15:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EKlQ42KNt4mh4/V48bi64SKOTKyaoje5CrdKho+GEVHhI8X+XkXpNxpxLuNURKDN7N90Vz2K+APG5RIudKS7ebb2ZHr0JcqKS7EMbszmlk1iy/gRwoeAcD8XPri7Jo8srEkqqZsNW1T/Yvh/HGYof85RKxEQE0W0MHn4QNERIbU4cbjg4RxkCEwG00p3My6/DDoxUgitauY8a2BT4hGI4c2pn6CkurGVYLnpqcelSr0wU0VKqf8mcK+Ss5RKUdQyvm6uZiyf0bt2DmNDKYAfYOjDmqgCpWQYRVhIVVayWo2SdEUQTEPL/p9Mfi4i6l0Dye4RRKdJQA7XZN8txfAX9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ItQF1IJA6P73RcADjIi3nve4qrPJ8IRCe6aGdcCnt5U=;
 b=hkarENmH0nsCrIttpH8iH4zARZSrQ72/J6o6TP3N46d3gRGqhjefb9XVHzWvAEc3tR0Z41NDd6XwAph1Fd/B+h8BZeNpWA5654kpjM5wxi25kkltUjLixsgbW5GlnBFRQBDVSEWt4fVOgzA93nlE1wlyWWDdXuL0zo946gP7VDxfHgM2AOb+doIbw8r7G6kdRdNESYXo3E/+Ju6pLMUYy9WIANFm0vlLlGDyLs2BcOXzJSLjOzqYIAAhz4HpaT+UbouTiOTQDA7uFjZeRFVAYKoL6BM0supAon+UddOxIX7MbIlT8tdjptn20Kf/CP6jg2m8DiXkJnirY0EI3U821Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6296.namprd11.prod.outlook.com (2603:10b6:8:94::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Fri, 14 Oct
 2022 22:44:12 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150%6]) with mapi id 15.20.5709.022; Fri, 14 Oct 2022
 22:44:12 +0000
Message-ID: <7b60fd62-e0ca-e417-16ef-23fdbecec277@intel.com>
Date: Fri, 14 Oct 2022 15:44:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221010192223.916578-1-benjamin.mikailenko@intel.com>
 <20221010192223.916578-3-benjamin.mikailenko@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221010192223.916578-3-benjamin.mikailenko@intel.com>
X-ClientProxiedBy: BYAPR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:a03:74::40) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6296:EE_
X-MS-Office365-Filtering-Correlation-Id: aa8990db-2fb7-46b3-8518-08daae359d66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gWiMncJy9fzP2gBYcYgCQcfs2DkFaIkyIU/p59t4CugxfLQdNB31cooh9z3qmobicSA6EPX0TDUiEDKZ4ilUlATSyejpXfz788ADwtThrZH0UKlorkRKtL2STjlkeMZv1Sf4Lkx6oUQxkvps/q5n5ziyOXDzhnYKJEo7GHyPX4mnfTb+lHQ615rJJbhC02BDBcldENjQfjbt4cxEcwbDrmGfUpXxRssHUWhPdGa1rxJ77R3UA5vWJl2gRLHDOsqLVEakvnE5k7vzzWVPWa81cArN7UVyM12pybekAUrCq2Do5kWi/4MRlYyO0QnoO7gc1we+RkKPrDM2C6IfJhj7mvNrDXWyvHnGQ/ntdtC0jssmbo0DhfDRMmCiQ/BTXP/+WrGSiYVHjdIWifoUf+ljAMmf3jMqVAEN2e7lyrGDOnanthdgCpe0Ua8e6+vLK5t9U2OUu4s9Lc1FUyqsn/jYFWe5lbKKv4oCdf8IHwhF6gFHhN9M3KwrxxnlOS404Z5C5kez5+6kMsYQtObZHwlFz4QMH9f36HfTvVb0TebX8gG0jEETx9TzkyGce8f/CcgfK6wJPkdBHPy3JqF5L0esD6Wdb7khNQzRRG1jgUtw/Yf3REbV0jWtK97+Jgl/w3ijruoTpJtZCei3JOQlC1XLHQt8aiE5zAEGLJ02IQiD+ag/CNCpkDvuOpvO2ZHiWBXcLMHNcZTI8vgGVoCt/bOELoN+civGz0ihnrdR2BUSmIiOz0SnmusYb/G4nJqZN7Axxo79nDXK2lfG7HSu2aH/kt5YfsG/7/gMGZCg2ofFKYw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(376002)(396003)(346002)(136003)(451199015)(478600001)(31686004)(6486002)(31696002)(66556008)(53546011)(8936002)(26005)(41300700001)(5660300002)(6512007)(36756003)(2906002)(82960400001)(8676002)(66476007)(66946007)(316002)(6916009)(2616005)(186003)(86362001)(6506007)(38100700002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFExNUFTWVBPeWFuMzBrRFR3eG5oMGNWT3h5MkxEZDhLSHdydUZHNW9UeU5x?=
 =?utf-8?B?RUhtY0czb1BuN1kzT1pHeHZQamtnMmVIcVZpeVdkZjIxRVZtTmJEMXlDdFpw?=
 =?utf-8?B?Rml1K0podGVCU0I5VHZwNHBEUjFmblZPcVlaRnlzS04zRWExUGhHVkE5Zjlq?=
 =?utf-8?B?RUVNL2xsc3pMYUVJU3VrVWNETEpUUjNWVVltVUkwT3RzbUYzZkhycDBkeWg0?=
 =?utf-8?B?Wi95NTFobjk2LzVLVmkvQ1RKczhjaVI5QUlkZWFVM0pBZUFFMElSQWowSWd4?=
 =?utf-8?B?K2xiQVFDekd6bTJaVTgva3dReXNqSjYwbW5TaDUrOW91UlVqQkRxVCt2VHZF?=
 =?utf-8?B?MFBCVmk2eSt1ZVA4Q3VNZ2crQ3l3UmtqdEJuM3VId0NxckRybWQ1Q1BBUzBo?=
 =?utf-8?B?ZU1hNW00M3R5TnFpUDVCUHNXNWFuQnFHWHRKS09ZVDRodXRVUThyZVFLQlVY?=
 =?utf-8?B?bkxUaDl3QTg1K1FHK0dxVVJGeG41ZjJEWGp2dDgzNlorS3RqaG40K0hHL1dn?=
 =?utf-8?B?bmJwTVdCSmJhNDZIWkxIZkRtcTZKWnBON0xaYnhtUUhFaS91TU10cnV1ZTJJ?=
 =?utf-8?B?WCtFVEIrRTBGUFBFeGNSTTJXc2xMRTZtcG43UDIwTzZlQzMwY3pBM0pmTTRP?=
 =?utf-8?B?RE1JTEtoMkk1dW5GUVcvVWo5Y1ZkSXNiY29sSEEvd0s4VDNEaUJ6S0FKZDRQ?=
 =?utf-8?B?Z2R2Z2hML0ZLM0VKQ25lTHB3elIyRnJIMjRQQ3A1enBHdlVpc0ZYVG9RUUxB?=
 =?utf-8?B?Rm1sdGhRV1p2aCtYQXZKOUFaTUxkZjhndk9yNmZoa0FEWVVnRi92V3ZOWHR5?=
 =?utf-8?B?VVA5Vy83TnZNSy9KSHFsOGFjbXlTWlpkTmFvWU5DZEpER0FpMnI5Ly81VkdJ?=
 =?utf-8?B?bjJqQ1BtMlAvNG1uMFo2OW5teVB0b1FUZnhkQlp1WUJLYUZGbW1PRVJTWFdZ?=
 =?utf-8?B?YSszeTJ1Nit5azdrYWNpaVdQUkN5ZVJiZ1lkbkxpRU0wMy9qRS82aThOVDBN?=
 =?utf-8?B?RXl5dWdzRURTcjkyWWFFSVVNTmJTaWg1UEkwcEVtb1RJMkIxRVRHUnhzMndt?=
 =?utf-8?B?UGE2MDU4V25xdUdPL1FwQWZaTEpSazhRajE1UzVWa0pBdHZKZVg0ZGNXRnNu?=
 =?utf-8?B?bFFwekZLejhWUUJXQW54RE5tWXNPb0U5VmsxQlA2clQ4RE5wajVVZm9zSUtF?=
 =?utf-8?B?MDlwSmc2eEFKaENvNHJKQUdQZHFlUkJvY0pHNCtQM215OXczZS96RWdmRTh1?=
 =?utf-8?B?TFJEZVpqUXVoeUliL20ydWZEcUovUGJJMSsveVUxbjhvMkxGT05CeGF0cUd2?=
 =?utf-8?B?UVp2eE1xRkxnZzRxWCs4T1ZDYzA2WXJVSkVYSlo2ZTAvRHIyZ1dtSTQ2R1BN?=
 =?utf-8?B?UWg3NnNRWmF5VUFjZTh2dFdBTlhMbFhKUlBjYktNa3hUKzdCL0FqZHFoVk5q?=
 =?utf-8?B?TzFkeVpYc0lkZE5xZEpCcml6c3hibnMxSTZGYm80d29HQjlIUEMrNnZJN2xU?=
 =?utf-8?B?cjRsQXNJUG9wVUt4bG15SVZPbi9TUVJuWEhSOHFlLy9OOE1vQUZSaWxTY0hl?=
 =?utf-8?B?N24yQzZiclpQNU95L0dSTWxMZ0xMNkxweFhvc0djSWFvUmtNeFUveXJ2OENk?=
 =?utf-8?B?TTFjcFdZRDZWMDdtcWJVQml4WlZEeWxvZFpib2tiNGV1dWIzajJGVFZNVFVz?=
 =?utf-8?B?eXZNMkRHU3BmYXlFNVlzeDZqMVFIVmlicHRiL3QxTGhNNjR6dW9xMy9ucHcy?=
 =?utf-8?B?VUxSeFBVZ2ZWR0RRRkpERU10T05YN1lJMXN5TTdLbGJxRFhTQis4VS9jQjdR?=
 =?utf-8?B?RkVaRFVLczVBUlorV0JuRlM4TThObVZBbUNycnlZV3RnUkpHMHl3eTVZZmwz?=
 =?utf-8?B?NFZhVWUxQVFWUzM3Um9SL0hseUtWTlFTVnplMUZkN0xDa05NR3RVZzN6emM0?=
 =?utf-8?B?YWtOYlovb0kySVlhbVltL0tlNys2VHBiUzRGNGJKWllTZEtwemV0TjJRRHdS?=
 =?utf-8?B?b2JCL3dMdERrYjI0b3kvT29FS29tYStqQVlJTWdlWm9SdUlLaWNURm1aUC84?=
 =?utf-8?B?RTY4MEtKWTRxOEtLaDdXd2s0LzhwVDVNbDN5Q0RDei80OWsrNVg3bnlQKzdr?=
 =?utf-8?B?aEk2aEtzUXRnZ1hqTlZWK2daUE5IS2ZrUnhwekhSSm4xQmxEVDhpSWhSNWFF?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8990db-2fb7-46b3-8518-08daae359d66
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 22:44:12.4837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s7uHfqQWBPAbG0E5lcla4I1O02PkT5DNYIMZpX3XvysHoAv99xepYEVPXsFRp8StSfsd59G/pxNZvD+sDqBoOsE0flpvT12VZG5SNb0hK0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6296
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665787465; x=1697323465;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OzAtCo/xDl4t0VEujaJr9zLh1UlF4kwE3GVCIkqA330=;
 b=oHORavA1cD/iCbmbMehNfeOtUHkwzSOlpUIiS5p7GJnOrk8g3tXoxuff
 fO6CCu1wtXGmWQUo4PlbN0+VgxJQDFvTmFDFk8e8ZDOixTFh0VeEi5d5C
 TE9FWvigI2WNH1+OF8ij90GccWAZp1miApGidqEdbN1rEQme5L2dZNQVZ
 +q9+0Ror7jkIgxL/h9RDJs1rhLv5aSh1S/5WWBhM7BSYMEno3jZyPGFoT
 kd+X41J/mzQ/iEEtu2gfQ6+hCSEOUDwOtfiCq8ZURCAnrYwq0sQ1QrBuX
 81CnHv3EXu+1vNY2IHTdhC4BwISi8X+MKKSQnuyWH/z9nIxRJyt6nnCn4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oHORavA1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v2 2/2] ice: Accumulate ring statistics over reset
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



On 10/10/2022 12:22 PM, Benjamin Mikailenko wrote:
> +/**
> + * ice_vsi_alloc_stat_arrays - Allocate statistics arrays
> + * @vsi: VSI pointer
> + */
> +static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
> +{
> +	struct ice_vsi_stats *vsi_stat;
> +	struct ice_pf *pf = vsi->back;
> +	struct device *dev;
> +
> +	dev = ice_pf_to_dev(pf);
> +
> +	if (vsi->type == ICE_VSI_CHNL)
> +		return 0;
> +	if (!pf->vsi_stats)
> +		return -ENOENT;
> +
> +	vsi_stat = devm_kzalloc(dev, sizeof(*vsi_stat), GFP_KERNEL);
> +	if (!vsi_stat)
> +		return -ENOMEM;
> +
> +	pf->vsi_stats[vsi->idx] = vsi_stat;
> +

This should also be moved to the end of the function so that we don't
modify pf->vsi_stats unless this function succeeds.

> +	vsi_stat->tx_ring_stats =
> +		devm_kcalloc(dev, vsi->alloc_txq,
> +			     sizeof(*vsi_stat->tx_ring_stats), GFP_KERNEL);
> +
> +	vsi_stat->rx_ring_stats =
> +		devm_kcalloc(dev, vsi->alloc_rxq,
> +			     sizeof(*vsi_stat->rx_ring_stats), GFP_KERNEL);
> +
> +	if (!vsi_stat->tx_ring_stats || !vsi_stat->rx_ring_stats)
> +		goto err_alloc;
> +
> +	return 0;
> +
> +err_alloc:
> +	devm_kfree(dev, vsi_stat->tx_ring_stats);
> +	vsi_stat->tx_ring_stats = NULL;
> +	devm_kfree(dev, vsi_stat->rx_ring_stats);
> +	vsi_stat->rx_ring_stats = NULL;
> +	devm_kfree(dev, vsi_stat);
> +	pf->vsi_stats[vsi->idx] = NULL;
> +	return -ENOMEM;
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
