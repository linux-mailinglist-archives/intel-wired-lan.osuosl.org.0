Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F077C5755
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 16:50:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8858440A65;
	Wed, 11 Oct 2023 14:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8858440A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697035815;
	bh=Z7KKIwr2SfBrzl8etnbcEs0JViwQCNnNwWwLJcdNOVg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hfIe9XgqOlj23SEiPsfBbV88u1ZNkHpaiTIcr7H/fKzS6yR+8jeZD2ooxUEQAG9IE
	 hK0tam+zMGfwzsonZLSewzCzJN2TvF6XXnqndZUxSuDzZATQXr6q8YC1R6a4Q2OQdo
	 At0hOqTqH1TrSk5HMVMWG+czQIIb2ImoNTj/RRayWDt0CDp/VL+LjIxUDoPS1b5DQu
	 rgQZ2X3PCjLfGb2b0QqS44m1IYu7kYXyf9o+Iaww5nnppuuFRlIspppGEGxcUIz7z8
	 f7Qmuj1bcUKn9xQSEqsIPlN9GxlHUnkULlZGPQPjBROrwWPtMlpTQMWyYCAqV6qLSK
	 4OXC/LcTGuJ6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QPpfVmGSWoIC; Wed, 11 Oct 2023 14:50:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC54C403AE;
	Wed, 11 Oct 2023 14:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC54C403AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78BCF1BF299
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 14:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59F62813F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 14:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59F62813F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJK3n9MttU9a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 14:50:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4A4B813B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 14:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4A4B813B6
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="415727494"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="415727494"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:50:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="819745999"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="819745999"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 07:50:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 07:50:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 07:50:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 07:50:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 07:50:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtV7sBc4Rg2NtQcRvnz+Ew+JV7gGZKsFGRtSodixSTAGBuAymr7W83t5sURfPco1p0mOxubrpKIHB31SsJHLe1ib7WkBfw9/czyACP0+wC1pXjWBHbpEm/tuhN/EFI4An+ivs1gIkBgK/huyXimRvMlFjuytG4eZ5m9lw8HzsgY1erExNOMKLJbfamX6qxHDw96aYY3nXT/ch5DbWS0dexJFWbtmuIPEqNeM5bKooqpLcW4d9KUqauYo6NuytvSZiyeRxYfehXNAEz7liVv/HWTGkuSHqhGj9VJUaL+jj3uhFCtw62ypLokD3CnaofS+pe/blQuiUlnOZtF84XzPXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KLzZu6Xe/W0QTcGpHDKC9DJiphCwHAiBiGQdEK3WILk=;
 b=Py0ztFCozFNh07LSaSyGt9Au7cjO9Y0OlqBDw3/GPtX6w07okf93PA4PiIB2JKr6vZuRU+UEL0B+a57JoEjZ7icqeQenLdh6F7J7RuyM0qouZ31xiE0bHARpycA0cy8pBCOILvXX3abJxEw7OOWASvBD8DHuJuJMiDGLr0kN6uBAYL6FYhnteZmOCWOssEhiAO9qa0VciAdbRiv9IkbSvwydt6LZYqSLhPj2V0QsSVig+jCpqgJUD/t8KigqTLvRRRBlD9xdtBywruY6+vPgMGYXaUqLMuxR+OFI/FyCsNhn9VKnRKMZQykXbfybOoPJvnzkokuT4sH7OVvNlsw7jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ2PR11MB7427.namprd11.prod.outlook.com (2603:10b6:a03:4c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 14:49:59 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 14:49:59 +0000
Message-ID: <f3b10f76-4ae2-45b0-a5eb-57e5d41804c5@intel.com>
Date: Wed, 11 Oct 2023 08:49:50 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
 <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
X-ClientProxiedBy: DUZPR01CA0028.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::7) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ2PR11MB7427:EE_
X-MS-Office365-Filtering-Correlation-Id: b3d901d9-32a3-4633-6e57-08dbca69576c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EGHi4I6i8dS90JS5VtpCzJJNZBwexJTyTHDTx6cztiybk1m6BjD5pjyU3SAVI+PTEhCvIY2RfXjikT7g6bWy9dsVJx4JrY0XUqvjkNca6Ve10EYDUYt4MWYYq7+yTXO2IJP1kqm+Nic0hWKw+KXl0bdfB/7JG8iyAQQQIQrQ+8wyCGnRuTWruFbL6nzB9YmmLFpZRZ5sFLodfwS1vkAZRkA5/ZtoPy6cDcHoiMW/p/awTtQ0B6UbQ+rqiXHVwQf7O86C9/iBpMfuOMZL0JP7wXLLQZdHvlIOkY+LLFMy6+g0oY2aZeJ4HqQMulEJtwdf0i76Sn5OoO/7dgwty2BHxKx9WH6FxTPzGa9TQs2aqP91xencSwM54DytI80ajop7BTGu/jSndFs0vZesBKIXI94hIBeIewER39cDXcPcUNRH4XLV9+O6iMJO17tuzLuCgYiHMRGEBL0qPz7mQ0yJ7D417dZUuIt7E3UoR1NSbZp3/oj4WHbofWJ3Oxxez2MnVU4s8lU4YboftpgtRjJcVBauFGV/JdRhq6nNCNpn1UfVU6zhAF8SydRh7EyINKjBlEQAPVF3L3BxBKkwHhJCKcb4L1iSGm7+1jjhWiMbfgW4CVk2kEPqWM9lsIl8NNyh1JjoEC79rsV9pv646Npmzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(396003)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(41300700001)(2616005)(26005)(38100700002)(82960400001)(83380400001)(8936002)(107886003)(4326008)(8676002)(6512007)(66476007)(66556008)(5660300002)(316002)(6666004)(6916009)(478600001)(44832011)(4001150100001)(2906002)(53546011)(7416002)(6486002)(6506007)(66946007)(86362001)(31696002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVkxMDluZ05KMVFoR2JkYkk5T3hTc1cxU1dPbWMvcjUvTVZLSlFqQWFBc2Vt?=
 =?utf-8?B?YTlGTjd3TXNOY3Q5Z3dTejRUbmlzdEhrczVTVkg1Ly9mYUVuZExvdFRiamlj?=
 =?utf-8?B?aHBTSy91N2taTVZKV0xrZ2lLSUJzbWhnTklWT29VM1BxREZnQzVyNkF6Vi9l?=
 =?utf-8?B?U3ZSL2RmRjMwK2VDZzhuNDc3cmZuNlhhaWJhUXNkTGVnRU5uRmJmL0dNYThw?=
 =?utf-8?B?NndWN3Q2dWdsejVCUG11VkJGWHNBWHJiaVBvZXZlN0FmTHk2OVdHci9ueFpi?=
 =?utf-8?B?ZFk3NHVLZ29yblNVZWRoZzE2Z0JsdXNOSk92R1EwY2hlWklGNXJ0R3RaNjZV?=
 =?utf-8?B?emtrc0JZYlVOa2o0TVFhTitpMXFlUVI0UGdIbk5Ea3d6b3pxMndZMFpISGJh?=
 =?utf-8?B?L3kvb0g5andpemlFbUdhMmZNbVlwRHB4V1pudEh1alZVWlQzUnI5L2VSNXRy?=
 =?utf-8?B?OC83Kzh2djlTZDVielM4bFlYaGZMUU5xRk5uTzV1RHNHTlg1ZEcvVGRsT0l0?=
 =?utf-8?B?S3JnRzQzejdXYzBHczBkcDJqWDQ0SXN2d3ZvZ0c4aTVFRktYWGhjQ2JlM01G?=
 =?utf-8?B?b1Jub01zNzd6Q09GTGFQRm14M3lNSXJETDNGNDFOR3Joc3M2eFEya2F0L2Vx?=
 =?utf-8?B?Ujljbzdtd2FGR0JGditOR2dUemprRWdVajdwbFNRdEtrTmRFY2xzaFc2SW9p?=
 =?utf-8?B?VXpVTEd5N3gyT1dqbFdUZDArVUF3UEtROEx0V2pwblE2Ykx3Nnkxb0FjZ3Rt?=
 =?utf-8?B?eUlYZVBRV3cvVjVxT2JiQlZ0NnJyZy9Uckl0cHNqNk0yUU1vcEQxLzN6VGR2?=
 =?utf-8?B?MmR6aHZYMVZtaG5rTUJmdjNFQTVmNzdyQkkxc3YvMkNhRVpaYVczSFgxY1pT?=
 =?utf-8?B?c25OcDRpem0wRkJZRmVPOUptSVhkcmUvZDZTWE84UU1VSWxaQ2hDKzFOc2dv?=
 =?utf-8?B?MlA4UmF3cytWR0FCOTY5QkxWNy9hTXZIQjBaaVhna3N6NG1yNmF6MGxScFRP?=
 =?utf-8?B?TWM0L1R5Vlp2eWRzOVFWRWErMkJBWFZJUDRicHd4N2NpWmJya3JUSmkxQ3Ny?=
 =?utf-8?B?emdZeFdZVDNGVklhdDNBd1RiZVhzV2FtRlp0Y1ZrN3BZMWltc0ZXNi9peGFj?=
 =?utf-8?B?V2plZXFZajlXbHhTWDJ5NXJ0UUZjdnowSGZweGNrMVp5RCt1RlBHU3JJaUs4?=
 =?utf-8?B?cmdmb1Z3YUNHT1BnSDdXSWpyQ1RYZ1ZWNjAyNzduZGNsWTR0RnN2Y2FFdzhJ?=
 =?utf-8?B?QTFFeFpwL0ZXWk5GVUZLcVFPam5kcWhaazRhalBEN3lRYzlBVE1DeFFKY1lM?=
 =?utf-8?B?b1NUNWtxTFRiTU85Vjg0STRETE1rMC9lU0NtL3FXbXZaMUVWUUVRSG9YWmNx?=
 =?utf-8?B?amwrdEl6VisybDZ4NmlaQkJxN3V0LzBHeCtNcm9NWnZHbVZ2UHRhck9LS25l?=
 =?utf-8?B?eER0M3owblFISEJWSzkxQ0hJeWVIY1dZRXhmV1hKKzk4WmQxeWR1OUcwTzVM?=
 =?utf-8?B?YmYvbUM3aFFwK1VGVXdoK2EvMytzVVcydjdKeUtDSzVUUlgrNWNWSmZ6SHds?=
 =?utf-8?B?UHlZWENkay9oU1IrcEgyNWdaczgyY3pxelVJS05QeVFOK1piaGdPYVlMQ2pq?=
 =?utf-8?B?TzhNUVYzeFg2VVIxeDV0QkwyNndLa0JSNURrdml0VGRqZkJSZERwMHlxOGxR?=
 =?utf-8?B?ZDIybGFpRUEzY0VmUnVuMElldEFxdEhrRjFqTnppS0xKSEt3MFdrSW8ydXUv?=
 =?utf-8?B?bjU2V093RVl1MUhxOWZjZmEvSHVUdllxZXIxQ1F2NHBITDhkU2dtYUV5ZTBR?=
 =?utf-8?B?NDk2TnZxYjg4Zm5PNVo5ZXV0dWo1MVZiVmFmdU1qQ1plOFVxNG5uRmZsdGxj?=
 =?utf-8?B?WjdRRzhGY3BONWh1RUFscDhSbWVoaWFTMlU3MGZMUXJhems4d1FUQ2VmTmlT?=
 =?utf-8?B?NFd5VFlNUTZDMVJQQm1yYzlzQkxlNHMrMVV0eWZST1RZdWFkZUROOVlqNG02?=
 =?utf-8?B?OGoyMWN6SU5nRlpHTUloWHNDaC9yVEVIdGx3VHVIZzhGV2ZVMWY4a2NteTY0?=
 =?utf-8?B?eVl1UnFBb1VpSno1UkpKL2V3QXJ1SzU4aElPTFlqUmJ6L29VZjVQamZtK0pz?=
 =?utf-8?Q?IWTqbvhODZ8qPt/WMhtHOiky3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3d901d9-32a3-4633-6e57-08dbca69576c
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 14:49:59.2699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xvkOmHWda5le6I9COpwoCv+lVDaADKIurO6ZxRbewkwjk5PuKjJ+yvGPZBj2jS9pAdpiGpDuUaSJLJrvXBZORQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697035803; x=1728571803;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QuvvH6EI4Z8bMInoFTae7QaGm8DUhlfUgpTnk/CIoSs=;
 b=abiIdkFzW3BHOl8UDFAH/OQ/gM1ma3A3+sKQ7ytoHfZLg0z8MZDy17aw
 0OhYEsBq8JO2NLCs007m39tyfh0GMmo/XYa8XHStsMytbV/SwImkEd/yF
 spnyyrS03MtskXu1EJCg9/qPCfmY+XF6l3DUvU5V00Ny4Wq3+33xS6G2Y
 xzBs9O84xjhxY3Y45kZTYaHCMkty8Y/cANJVMacDjvqeX+IIjUvKcL+SG
 hiQ9QRN8c3YEjFK/osNj1HW6MxG0EcJmSLjZx3f7Y/3150mzykjJ7oM2v
 Jxx6VOA0hikUpd40XIwYZOuQUryNSJhqSNqbJ3U55PeC0xV8MNTyJOPyV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=abiIdkFz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
 vladimir.oltean@nxp.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

WyBSZXNlbmQgLSByZWplY3RlZCBieSBuZXRkZXYgYW5kIGxpbnV4LWRvYyBNTHMgZm9yIEhUTUwg
Y29udGVudF0KCgpPbiAyMDIzLTEwLTEwIDE0OjQwLCBXaWxsZW0gZGUgQnJ1aWpuIHdyb3RlOgo+
IE9uIFR1ZSwgT2N0IDEwLCAyMDIzIGF0IDQ6MDXigK9QTSBBaG1lZCBaYWtpIDxhaG1lZC56YWtp
QGludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+IFN5bW1ldHJpYyBSU1MgaGFzaCBmdW5jdGlvbnMgYXJl
IGJlbmVmaWNpYWwgaW4gYXBwbGljYXRpb25zIHRoYXQgbW9uaXRvcgo+PiBib3RoIFR4IGFuZCBS
eCBwYWNrZXRzIG9mIHRoZSBzYW1lIGZsb3cgKElEUywgc29mdHdhcmUgZmlyZXdhbGxzLCAuLmV0
YykuCj4+IEdldHRpbmcgYWxsIHRyYWZmaWMgb2YgdGhlIHNhbWUgZmxvdyBvbiB0aGUgc2FtZSBS
WCBxdWV1ZSByZXN1bHRzIGluCj4+IGhpZ2hlciBDUFUgY2FjaGUgZWZmaWNpZW5jeS4KPj4KPj4g
QSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhvciIgY2FuIGFjaGlldmUgdGhpcyBSU1Mg
aGFzaCBzeW1tZXRyeQo+PiBieSBYT1JpbmcgdGhlIHNvdXJjZSBhbmQgZGVzdGluYXRpb24gZmll
bGRzIGFuZCBwYXNzIHRoZSB2YWx1ZXMgdG8gdGhlCj4+IFJTUyBoYXNoIGFsZ29yaXRobS4KPj4K
Pj4gT25seSBmaWVsZHMgdGhhdCBoYXMgY291bnRlcnBhcnRzIGluIHRoZSBvdGhlciBkaXJlY3Rp
b24gY2FuIGJlCj4+IGFjY2VwdGVkOyBJUCBzcmMvZHN0IGFuZCBMNCBzcmMvZHN0IHBvcnRzLgo+
Pgo+PiBUaGUgdXNlciBtYXkgcmVxdWVzdCBSU1MgaGFzaCBzeW1tZXRyeSBmb3IgYSBzcGVjaWZp
YyBmbG93IHR5cGUsIHZpYToKPj4KPj4gICAgICAjIGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93
LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8biBzeW1tZXRyaWMteG9yCj4+Cj4+IG9yIHR1cm4gc3lt
bWV0cnkgb2ZmIChhc3ltbWV0cmljKSBieToKPj4KPj4gICAgICAjIGV0aHRvb2wgLU58LVUgZXRo
MCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8bgo+Pgo+PiBSZXZpZXdlZC1ieTogV29q
Y2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5
OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgRG9jdW1lbnRh
dGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0IHwgIDYgKysrKysrCj4+ICAgaW5jbHVkZS91YXBp
L2xpbnV4L2V0aHRvb2wuaCAgICAgICAgIHwgMTcgKysrKysrKysrLS0tLS0tLS0KPj4gICBuZXQv
ZXRodG9vbC9pb2N0bC5jICAgICAgICAgICAgICAgICAgfCAxMSArKysrKysrKysrKwo+PiAgIDMg
ZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCBiL0RvY3VtZW50
YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAo+PiBpbmRleCA5MmM5ZmI0NmQ2YTIuLjY0ZjNk
NzU2NjQwNyAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcu
cnN0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAo+PiBAQCAt
NDQsNiArNDQsMTIgQEAgYnkgbWFza2luZyBvdXQgdGhlIGxvdyBvcmRlciBzZXZlbiBiaXRzIG9m
IHRoZSBjb21wdXRlZCBoYXNoIGZvciB0aGUKPj4gICBwYWNrZXQgKHVzdWFsbHkgYSBUb2VwbGl0
eiBoYXNoKSwgdGFraW5nIHRoaXMgbnVtYmVyIGFzIGEga2V5IGludG8gdGhlCj4+ICAgaW5kaXJl
Y3Rpb24gdGFibGUgYW5kIHJlYWRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgdmFsdWUuCj4+Cj4+ICtT
b21lIE5JQ3Mgc3VwcG9ydCBzeW1tZXRyaWMgUlNTIGhhc2hpbmcgd2hlcmUsIGlmIHRoZSBJUCAo
c291cmNlIGFkZHJlc3MsCj4+ICtkZXN0aW5hdGlvbiBhZGRyZXNzKSBhbmQgVENQL1VEUCAoc291
cmNlIHBvcnQsIGRlc3RpbmF0aW9uIHBvcnQpIHR1cGxlcwo+PiArYXJlIHN3YXBwZWQsIHRoZSBj
b21wdXRlZCBoYXNoIGlzIHRoZSBzYW1lLiBUaGlzIGlzIGJlbmVmaWNpYWwgaW4gc29tZQo+PiAr
YXBwbGljYXRpb25zIHRoYXQgbW9uaXRvciBUQ1AvSVAgZmxvd3MgKElEUywgZmlyZXdhbGxzLCAu
Li5ldGMpIGFuZCBuZWVkCj4+ICtib3RoIGRpcmVjdGlvbnMgb2YgdGhlIGZsb3cgdG8gbGFuZCBv
biB0aGUgc2FtZSBSeCBxdWV1ZSAoYW5kIENQVSkuCj4+ICsKPiAKPiBNYXliZSBhZGQgYSBzaG9y
dCBldGh0b29sIGV4YW1wbGU/CgpTYW1lIGV4YW1wbGUgYXMgaW4gY29tbWl0IG1lc3NhZ2UgaXMg
T0s/CgpBRkFJSywgdGhlICJldGh0b29sIiBwYXRjaCBoYXMgdG8gYmUgc2VudCBhZnRlciB0aGlz
IHNlcmllcyBpcyBhY2NlcHRlZC4gClNvIEkgYW0gbm90IDEwMCUgc3VyZSBvZiBob3cgdGhlIGV0
aHRvb2wgc2lkZSB3aWxsIGxvb2sgbGlrZSwgYnV0IEkgY2FuIAphZGQgdGhlIGxpbmUgYWJvdmUg
dG8gRG9jLgoKCj4gCj4+ICAgU29tZSBhZHZhbmNlZCBOSUNzIGFsbG93IHN0ZWVyaW5nIHBhY2tl
dHMgdG8gcXVldWVzIGJhc2VkIG9uCj4+ICAgcHJvZ3JhbW1hYmxlIGZpbHRlcnMuIEZvciBleGFt
cGxlLCB3ZWJzZXJ2ZXIgYm91bmQgVENQIHBvcnQgODAgcGFja2V0cwo+PiAgIGNhbiBiZSBkaXJl
Y3RlZCB0byB0aGVpciBvd24gcmVjZWl2ZSBxdWV1ZS4gU3VjaCDigJxuLXR1cGxl4oCdIGZpbHRl
cnMgY2FuCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oIGIvaW5j
bHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+PiBpbmRleCBmN2ZiYTBkYzg3ZTUuLmI5ZWU2Njdh
ZDdlNSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+PiArKysg
Yi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4+IEBAIC0yMDE4LDE0ICsyMDE4LDE1IEBA
IHN0YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQo+
PiAgICNkZWZpbmUgICAgICAgIEZMT1dfUlNTICAgICAgICAweDIwMDAwMDAwCj4+Cj4+ICAgLyog
TDMtTDQgbmV0d29yayB0cmFmZmljIGZsb3cgaGFzaCBvcHRpb25zICovCj4+IC0jZGVmaW5lICAg
ICAgICBSWEhfTDJEQSAgICAgICAgKDEgPDwgMSkKPj4gLSNkZWZpbmUgICAgICAgIFJYSF9WTEFO
ICAgICAgICAoMSA8PCAyKQo+PiAtI2RlZmluZSAgICAgICAgUlhIX0wzX1BST1RPICAgICgxIDw8
IDMpCj4+IC0jZGVmaW5lICAgICAgICBSWEhfSVBfU1JDICAgICAgKDEgPDwgNCkKPj4gLSNkZWZp
bmUgICAgICAgIFJYSF9JUF9EU1QgICAgICAoMSA8PCA1KQo+PiAtI2RlZmluZSAgICAgICAgUlhI
X0w0X0JfMF8xICAgICgxIDw8IDYpIC8qIHNyYyBwb3J0IGluIGNhc2Ugb2YgVENQL1VEUC9TQ1RQ
ICovCj4+IC0jZGVmaW5lICAgICAgICBSWEhfTDRfQl8yXzMgICAgKDEgPDwgNykgLyogZHN0IHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4gLSNkZWZpbmUgICAgICAgIFJYSF9ESVND
QVJEICAgICAoMSA8PCAzMSkKPj4gKyNkZWZpbmUgICAgICAgIFJYSF9MMkRBICAgICAgICAgICAg
ICAgICgxIDw8IDEpCj4+ICsjZGVmaW5lICAgICAgICBSWEhfVkxBTiAgICAgICAgICAgICAgICAo
MSA8PCAyKQo+PiArI2RlZmluZSAgICAgICAgUlhIX0wzX1BST1RPICAgICAgICAgICAgKDEgPDwg
MykKPj4gKyNkZWZpbmUgICAgICAgIFJYSF9JUF9TUkMgICAgICAgICAgICAgICgxIDw8IDQpCj4+
ICsjZGVmaW5lICAgICAgICBSWEhfSVBfRFNUICAgICAgICAgICAgICAoMSA8PCA1KQo+PiArI2Rl
ZmluZSAgICAgICAgUlhIX0w0X0JfMF8xICAgICAgICAgICAgKDEgPDwgNikgLyogc3JjIHBvcnQg
aW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4gKyNkZWZpbmUgICAgICAgIFJYSF9MNF9CXzJf
MyAgICAgICAgICAgICgxIDw8IDcpIC8qIGRzdCBwb3J0IGluIGNhc2Ugb2YgVENQL1VEUC9TQ1RQ
ICovCj4+ICsjZGVmaW5lICAgICAgICBSWEhfU1lNTUVUUklDX1hPUiAgICAgICAoMSA8PCAzMCkK
Pj4gKyNkZWZpbmUgICAgICAgIFJYSF9ESVNDQVJEICAgICAgICAgICAgICgxIDw8IDMxKQo+IAo+
IEFyZSB0aGVzZSBpbmRlbnRhdGlvbiBjaGFuZ2VzIGludGVudGlvbmFsPwoKWWVzLCBmb3IgYWxp
Z25tZW50ICgiUlhIX1NZTU1FVFJJQ19YT1IiIGlzIHRvbyBsb25nKS4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
