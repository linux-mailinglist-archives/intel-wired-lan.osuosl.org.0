Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E40A76A415
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 00:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98CF940C49;
	Mon, 31 Jul 2023 22:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98CF940C49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690842209;
	bh=DopYeVyaLoez4AqMr949opPgfC6l3K0Dr/Qn9gulcy8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jXIwEGaNOtS07GYwBODNuWbmEcXqAzIQK2mte0V0kbBcHA7QzXyNmrBR/wRaqsuX1
	 h4kiZp6cyxWz+pbDmWzfehT/aV3L8r7yh0Zq3GKnyM4DlNrss08SlGSdxgnYh/Jt33
	 YNeGlUbHiHCEF5M49Nhwp2l3Z0pv0zfkus1EvxI+jbeegoyGQREJJeUTZE4nBDNf9T
	 QWgj4MIhe5kE9ZBujR04B4NomA91H7UeEH7XW/hSOkwSX0U1JQ7wW0eRheTLZd/kOQ
	 iKZC8o/oSqcfGVi5OmByEie9r56X/VHRDLVsfpiTzm5yTWW18flMElyWRmx0tZ60Je
	 6pCivT25urTcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tTFpyUrLXBYr; Mon, 31 Jul 2023 22:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97B1740514;
	Mon, 31 Jul 2023 22:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97B1740514
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 272BB1BF964
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7C3F400A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7C3F400A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8CwBFT4EDopA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 22:23:18 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B04D40233
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 22:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B04D40233
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="348736282"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="348736282"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 15:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="1059147645"
X-IronPort-AV: E=Sophos;i="6.01,245,1684825200"; d="scan'208";a="1059147645"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2023 15:23:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 15:23:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 15:23:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 15:23:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 15:23:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GxxaAim0bvCE/+zQNiPeg0jPP9YFOhZMZovjKL8ELSp+NvPEU1pYtbZ6JRwWpyrtaVqyQhJ1JQeolC8Efo++PhbCUzrKm+WHsmio8Eu+b5mlLVh5HUOCw8Pox526aqZm1CYYt88BPWYR2ODKIKqdjroIC5IT6/qBQNnqXsj52Y/Dota/a96SwV+6DKG4y6QKydzfhw4YrtOn970Tbeq/AFE+dxJ93rlG0pznpCnT3I74ZWRgXlra6h0P9kGiBFjCpYZz/ZmNSm2kwy8Uw40XM5MC8KzAZkrajknVCafZ7ug5VJ12rYNLOE+g8sxEjap+CyzlDOb6/StbNx08kahT7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hpY3Veo+WOesEv0u4bsgDc2lvg8m120vP+YYJb+TkM8=;
 b=gqjS0itsLTiCqCCwznG+N8BKERvjyJKYN5Ul0Tq1wmR3r5PZuFag0gkp8TGSVl35tcNnyZb6utoksOt9H2tJ9zs0sLqWBuwjO3PXQ1mn+3XJ5FFvsQJ3YSMNmO5MqQ7ytXinEjXqVAoQnJ9bnyj8ya/t1iUA1pPNl4wokP4LoQL8xXNYzLEjwGF2yrvGmSyWO2YpdDcffi4rsqa/YzjcnlYkIePuTpcoq14sOMZz4Vtkk53ncYhzJ3iejeLR4xQi6irExNGJjhaoTqAXXBXX1aWG6vbgvPFsLdFLHCNw2PUPPoxaqJb+kNEl1HSHWyDnZPyvPQw0XstfLDj9YHjKrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5340.namprd11.prod.outlook.com (2603:10b6:408:119::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 22:23:13 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 22:23:13 +0000
Message-ID: <c7c74aea-046a-73f8-ab19-1341c66f8b09@intel.com>
Date: Mon, 31 Jul 2023 15:23:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Wenjun Wu <wenjun1.wu@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230727021021.961119-3-wenjun1.wu@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230727021021.961119-3-wenjun1.wu@intel.com>
X-ClientProxiedBy: MW4PR04CA0046.namprd04.prod.outlook.com
 (2603:10b6:303:6a::21) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5340:EE_
X-MS-Office365-Filtering-Correlation-Id: af7eedd6-2280-44ab-a2b3-08db9214bad4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aCNpJV8LQpnnyQXI7cG1qlHfDYOOifoDhElFsqxk5NFMOjX1O9IilR9k5bXFzhlQGd1WzP6wfb5QtRgMpXYSGg6ZVlmT5h3Res+MUWuIr1xr+L5gWVfIIVrIMIRgeV8kpEB+0IP5J1gle9gN9Zj8t+8zm0jSTIYbWZChspAOJqQWH7hkPhbzxIhFOCZQZiibbh55LxnOwLhUrFufs0VvFKrkktXnLVo53vQCVAhV5UBXAmuwz0YAgK9R1S2PtVN82wNeHGXTNE/lIjXA8FfENzWwn2QhL7llM8hgNJRotIjcXfCjE2t2Kj1VKVoq+AHMomZZ1MgNPj0i5M97nS4FUAqH1epGX7pZPCwQ7Rd1pDw7aKPJVePdYSOtuQ11Bw4AyKyvdC3i7pIO6+uANO10/5Al0sStIVuv3MUzFT7eTksb4ieI//KU38QgOBJz5g7HKektiO1bO6uFJTY549NIHg1o8qfgp7eTFtLLvxTcM4SOiok2iEmiP1+mKoRtiy0ebcrLeVMjTR1GOLAPkjEEXnV24JWv0bfVQhNWvJUf7x91qyPVfGcv2uBqj69jdqkCGyfWREVffwavydO0Qu6v8opO+Kr5fozPLJpIXNaajJO3sDDJgTQnLg9csLHWUeIt7WHYiRGY2l/tMfX2v1tQ2w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(366004)(136003)(346002)(451199021)(6486002)(6512007)(31696002)(86362001)(107886003)(186003)(2616005)(36756003)(83380400001)(6506007)(53546011)(26005)(38100700002)(82960400001)(5660300002)(8676002)(41300700001)(8936002)(31686004)(66946007)(30864003)(2906002)(66476007)(316002)(66899021)(478600001)(66556008)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEpaWExNYmtnWm81MFJhUWV4QkdualhmVmV0UTZlVDQxQUdHVjZMQ1BDQzNw?=
 =?utf-8?B?L3VXUUhvS01BblhoZU1NZzdwK1JBSXkwTFlrY1A4d0FFU0x2Y09wUTd0VjNN?=
 =?utf-8?B?NjIwc0N1MEJ4VDJ4emxZRldUYXcwbzBUQkl5VXZKdlRpYXZpL2lqbk5GVmxQ?=
 =?utf-8?B?SE5lOTlWVFYzRkpxMjNZR2t5a01iNndrd3ovN05zNzZlZjRzVk80dmxVZjhH?=
 =?utf-8?B?UXcvNGpzU3hvQ3BWVVh4U2ZaMmJEZ3lEaFFCaHBJeEptaHV3MDRrVFBhTVox?=
 =?utf-8?B?anRiRVJqTklTQ2t4U3FoR3hzblovWVpLYW1oTEQ0UnlaWEhTTHpTUzNuSUlY?=
 =?utf-8?B?ZUpDejllSXV1MGtHSkRkajJDTEFnU0VMWUhqSTVJOFZCclNuYlhlcnVKbW56?=
 =?utf-8?B?ZGg0TnZSOFNmYnBxK29FaTdsdE1VSmwxMkI3Q1c5MmgyNE5oMWVoUnBHVUlq?=
 =?utf-8?B?Y0dLS3B1MkE3Q2pmYUhCTlp5VXpzV2VBMlZBZnY4d3ZTb0ZubWlDY3h4MS9U?=
 =?utf-8?B?dkNBNFpydUh5ZUZHV05NeWk4OGJsRk84NjZSTTJlZmZqMlZabEtsbDdsalZM?=
 =?utf-8?B?Y3ZFL1EwMTBNT2VzczZUWEg2bDBFci9jRktIT3psa3gzVWtUR2x0TU95Zkhv?=
 =?utf-8?B?ZHdSNHVXVThLQVcyVmdFUWFsNGN1RFIyc1hQbSt3N3lyalBRbmJBeDFUWVZT?=
 =?utf-8?B?MVdOZ0RIVllDbXlLMTA0Rk5NaGV4NzhWRzNJNUdsdmV4OTE4bEVlSFM2Y0pE?=
 =?utf-8?B?Vlc0VkVhOGJhbk12aWo4LzN1ZkljQ24ybUM2bkVObmtHVlR4Y2V0MEVCSXA3?=
 =?utf-8?B?M3lJSFBWQlRXQTFrQnJkNmtDblVKMTFuTUY2WWNZZWpBbmUxS3dJVkVCdTEw?=
 =?utf-8?B?TURyM0lNVGFJbkptU2ZmUDRFOXZIMmZiaGs1bDVBN2ZpQzRiNTN4bkVFMms1?=
 =?utf-8?B?OTMzWDkweXdkcWRKNjVkQ01ldDZlMXNkMXBOTEMyS3RJR0d5aE5XWVZDL0sy?=
 =?utf-8?B?RVRlOCtJbyt5aXdSZlM0NzBENDQvc2pOKzh6eTQ1MlNLbW1lOU4zMS9mUmxz?=
 =?utf-8?B?TzZlMEE1QVBzdldpOFhrLzRaTXVtUGxTYWZaYXI2Q3V1UVVDV0Z0Mk1TVHNP?=
 =?utf-8?B?Nm9mc2pNZGFoRzZGMmR1a2dqbUF3Mi9hODdmUmdpaFZjUC8xNDNaNFUxMXpR?=
 =?utf-8?B?SEppL1dXOWdFZTBTSkdoNjVhZjY3VGgwZmpHYjhra2FITWljOGo3MFdHWVd5?=
 =?utf-8?B?RjB2MFNlQ2J3TWZqS2xUdzFJR3NrdGVEQ2MwNWNVV0tESk15R2ticWFWalcy?=
 =?utf-8?B?VW0vUlpxTWY1MlMvZ09wblFqS1N5QzF2aFVJSFcvRXB3S1Yyb2N6T1RTMDNC?=
 =?utf-8?B?VUJ0eEM0bTlzYVdLanY0M2N1eElPSzJhdU5yY0hPUU5ZcGt1OVlMNnpncFRo?=
 =?utf-8?B?RmljMFkvUytqbTlDNmx5SlcrTUdySzd0WHNWeUIyN3JwUVVLRVFiZ013am1B?=
 =?utf-8?B?WnlGS09kYnNYWmVBcnhYRlh0WW5WZTQ0b2pOTWwwYzRISHJuRVNDWEN3Zk5H?=
 =?utf-8?B?Rzd5bWpIUkwrSlZjSjhqK3pQZWZIRnppUGJyOUVNNkxjS051dkp5SEE1TThq?=
 =?utf-8?B?SHYxakZuUWl5QzFlM0t4NitiVmhKVE1uK1QwSGNuZUM4ZFNzdy9iSExlSWJt?=
 =?utf-8?B?M1lodG9manZrM3EzWFRVTjJUWlg5NFBFaUllVUFKZzZOYnovNTNvZUdrdVM3?=
 =?utf-8?B?elNuUVpYd25VY0YrdDlaSHRleGR5N2J1VWQvcUZ2bXdlTmRWam5DbWo4TEE4?=
 =?utf-8?B?bHBIWUc4R250OVlDZmEzQTYvWFhuWWFnR1VuK0cxTGc1WHNIRmtPN1JSakFQ?=
 =?utf-8?B?S1NrMEhDd2NjRVdDSDlnZS9Ya1ZVZ3pETEQ2MjlFTkVuZzRQOE00VU05Z0VX?=
 =?utf-8?B?U1FnRExCejNkV2JOdWN1blluQVRCdzFzdlZlVi9LSXJaeFdRN1JWSVJmUjFj?=
 =?utf-8?B?TWRqSlNpbEphdnlnampuYnZOenVUK2pKN0pKSzViWlhRZ0hyMUpRNkJGYlE5?=
 =?utf-8?B?MW13dWwyVVpEM0JzZXdmanUwSEZHUXNGQ2tJVDRGeU1GMEFqcE9pM1RFZ09S?=
 =?utf-8?B?ZTNWNWpwOElUcVNPdTl4K3pZT0l3TkVwaUhJTWhObnA3UHBtRDNNZ05tWUc5?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af7eedd6-2280-44ab-a2b3-08db9214bad4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 22:23:13.6982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vcUEMZolZbpJttxO+LAqX7lqzE/PnB7E+za89UcU7XFY82N8oYNcRb3iZERCt1fItGcabPiwHI4857NrYojnQuezD6MqUwEnYWu51TOBVbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5340
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690842198; x=1722378198;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SC9ZNvBZe51jXZiRPk00REBEXyJhY/Uc0hJkh1jbS1U=;
 b=DgEHYFQ83bZP267aqXyo6+fbPRNeKZYI3ZsRProlZdH9JlIWP2H/8HP1
 AH/9GXB+wvhAEp7zLM6dM74uqCLUxxVE60O1zWibnRpfJB0FeSPh9fo1S
 q9AQ7lQwgr8amewPrAoCIlEOp4VbKrhpeXRkTplUi+00/NyFyf5/9JyZf
 M9VqV0cdPgQzU9q2216MmvdS6zAeCLSPatddPTSGHuYuNVBhuvuUZqhOm
 wD5rpu4fezznDBw0H3PZITxMptjscoM7MNqXF2F5mm5qnSU0B70nEinQN
 MX0N5tsFRrFCenkIB2xTePY7B4fMjHKdnFH8s8zlN4z/GrJj5KgQ56iNe
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DgEHYFQ8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/5] ice: Support VF queue
 rate limit and quanta size configuration
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
Cc: mitu.aggarwal@intel.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/26/2023 7:10 PM, Wenjun Wu wrote:
> Add support to configure VF queue rate limit and quanta size.
> 
> For quanta size configuration, the quanta profiles are divided evenly
> by PF numbers. For each port, the first quanta profile is reserved for
> default. When VF is asked to set queue quanta size, PF will search for
> an available profile, change the fields and assigned this profile to the
> queue.
> 
> Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |   2 +
>   drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
>   drivers/net/ethernet/intel/ice/ice_common.c   |  19 ++
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
>   drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 317 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
>   .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
>   10 files changed, 377 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 125a2e753e29..25267ae6ab62 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -637,6 +637,8 @@ struct ice_pf {
>   #define ICE_VF_AGG_NODE_ID_START	65
>   #define ICE_MAX_VF_AGG_NODES		32
>   	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
> +
> +	u8 n_quanta_prof_used;
>   };
>   
>   extern struct workqueue_struct *ice_lag_wq;
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 4a12316f7b46..c5274d1eb5bf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -377,6 +377,8 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
>   		break;
>   	}
>   
> +	tlan_ctx->quanta_prof_idx = ring->quanta_prof_id;
> +
>   	tlan_ctx->tso_ena = ICE_TX_LEGACY;
>   	tlan_ctx->tso_qnum = pf_q;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 6899f6af1866..606823ed68e8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2470,6 +2470,23 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
>   	ice_recalc_port_limited_caps(hw, &func_p->common_cap);
>   }
>   
> +/**
> + * ice_func_id_to_logical_id - map from function id to logical pf id
> + * @active_function_bitmap: active function bitmap
> + * @pf_id: function number of device
> + */
> +static int ice_func_id_to_logical_id(u32 active_function_bitmap, u8 pf_id)
> +{
> +	u8 logical_id = 0;
> +	u8 i;
> +
> +	for (i = 0; i < pf_id; i++)
> +		if (active_function_bitmap & BIT(i))
> +			logical_id++;
> +
> +	return logical_id;
> +}
> +
>   /**
>    * ice_parse_valid_functions_cap - Parse ICE_AQC_CAPS_VALID_FUNCTIONS caps
>    * @hw: pointer to the HW struct
> @@ -2487,6 +2504,8 @@ ice_parse_valid_functions_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
>   	dev_p->num_funcs = hweight32(number);
>   	ice_debug(hw, ICE_DBG_INIT, "dev caps: num_funcs = %d\n",
>   		  dev_p->num_funcs);
> +
> +	hw->logical_pf_id = ice_func_id_to_logical_id(number, hw->pf_id);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 20f40dfeb761..999bd4633d4f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -500,5 +500,13 @@
>   #define PFPM_WUS_FW_RST_WK_M			BIT(31)
>   #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
>   #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
> +#define GLCOMM_QUANTA_PROF(_i)			(0x002D2D68 + ((_i) * 4))
> +#define GLCOMM_QUANTA_PROF_MAX_INDEX		15
> +#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_S	0
> +#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_M	ICE_M(0x3FFF, 0)
> +#define GLCOMM_QUANTA_PROF_MAX_CMD_S		16
> +#define GLCOMM_QUANTA_PROF_MAX_CMD_M		ICE_M(0xFF, 16)
> +#define GLCOMM_QUANTA_PROF_MAX_DESC_S		24
> +#define GLCOMM_QUANTA_PROF_MAX_DESC_M		ICE_M(0x3F, 24)

These don't look like the right placement within the file. Please 
check/correct.

>   
>   #endif /* _ICE_HW_AUTOGEN_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index 166413fc33f4..7e152ab5b727 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -381,6 +381,8 @@ struct ice_tx_ring {
>   	u8 flags;
>   	u8 dcb_tc;			/* Traffic class of ring */
>   	u8 ptp_tx;
> +
> +	u16 quanta_prof_id;
>   } ____cacheline_internodealigned_in_smp;
>   
>   static inline bool ice_ring_uses_build_skb(struct ice_rx_ring *ring)
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index bf47936e396a..3e17a1e7c6be 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -843,6 +843,7 @@ struct ice_hw {
>   	u8 revision_id;
>   
>   	u8 pf_id;		/* device profile info */
> +	u8 logical_pf_id;
>   
>   	u16 max_burst_size;	/* driver sets this value */
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 67172fdd9bc2..6499d83cc706 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -52,6 +52,13 @@ struct ice_mdd_vf_events {
>   	u16 last_printed;
>   };
>   
> +struct ice_vf_qs_bw {
> +	u16 queue_id;
> +	u32 committed;
> +	u32 peak;
> +	u8 tc;
> +};
> +
>   /* VF operations */
>   struct ice_vf_ops {
>   	enum ice_disq_rst_src reset_type;
> @@ -133,6 +140,8 @@ struct ice_vf {
>   
>   	/* devlink port data */
>   	struct devlink_port devlink_port;
> +
> +	struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
>   };
>   
>   /* Flags for controlling behavior of ice_reset_vf */
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 85d996531502..016b7e1d6e91 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -495,6 +495,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
>   	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
>   		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
>   
> +	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_QOS)
> +		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_QOS;
> +
>   	vfres->num_vsis = 1;
>   	/* Tx and Rx queue are equal for VF */
>   	vfres->num_queue_pairs = vsi->num_txq;
> @@ -985,6 +988,174 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
>   				     NULL, 0);
>   }
>   
> +/**
> + * ice_vc_get_qos_caps - Get current QoS caps from PF
> + * @vf: pointer to the VF info
> + *
> + * Get VF's QoS capabilities, such as TC number, arbiter and
> + * bandwidth from PF.
> + */
> +static int ice_vc_get_qos_caps(struct ice_vf *vf)
> +{
> +	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +	struct virtchnl_qos_cap_list *cap_list = NULL;
> +	u8 tc_prio[ICE_MAX_TRAFFIC_CLASS] = {0};

init with { } is preferred

> +	struct virtchnl_qos_cap_elem *cfg = NULL;
> +	struct ice_vsi_ctx *vsi_ctx;
> +	struct ice_pf *pf = vf->pf;
> +	struct ice_port_info *pi;
> +	struct ice_vsi *vsi;
> +	u8 numtc, tc;
> +	u16 len = 0;
> +	int ret, i;
> +
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	vsi = ice_get_vf_vsi(vf);
> +	if (!vsi) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	pi = pf->hw.port_info;
> +	numtc = vsi->tc_cfg.numtc;
> +
> +	vsi_ctx = ice_get_vsi_ctx(pi->hw, vf->lan_vsi_idx);
> +	if (!vsi_ctx) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	len = sizeof(*cap_list) + sizeof(cap_list->cap[0]) * (numtc - 1);

I believe struct_size helper can be used here

> +	cap_list = kzalloc(len, GFP_KERNEL);
> +	if (!cap_list) {
> +		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +		len = 0;
> +		goto err;
> +	}
> +
> +	cap_list->vsi_id = vsi->vsi_num;
> +	cap_list->num_elem = numtc;
> +
> +	/* Store the UP2TC configuration from DCB to a user priority bitmap
> +	 * of each TC. Each element of prio_of_tc represents one TC. Each
> +	 * bitmap indicates the user priorities belong to this TC.
> +	 */
> +	for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
> +		tc = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[i];
> +		tc_prio[tc] |= BIT(i);
> +	}
> +
> +	for (i = 0; i < numtc; i++) {
> +		cfg = &cap_list->cap[i];
> +		cfg->tc_num = i;
> +		cfg->tc_prio = tc_prio[i];
> +		cfg->arbiter = pi->qos_cfg.local_dcbx_cfg.etscfg.tsatable[i];
> +		cfg->weight = VIRTCHNL_STRICT_WEIGHT;
> +		cfg->type = VIRTCHNL_BW_SHAPER;
> +		cfg->shaper.committed = vsi_ctx->sched.bw_t_info[i].cir_bw.bw;
> +		cfg->shaper.peak = vsi_ctx->sched.bw_t_info[i].eir_bw.bw;
> +	}
> +
> +err:
> +	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_QOS_CAPS, v_ret,
> +				    (u8 *)cap_list, len);
> +	kfree(cap_list);
> +	return ret;
> +}
> +
> +/**
> + * ice_vf_cfg_qs_bw - Configure per queue bandwidth
> + * @vf: pointer to the VF info
> + * @num_queues: number of queues to be configured
> + *
> + * Configure per queue bandwidth.
> + */
> +static int ice_vf_cfg_qs_bw(struct ice_vf *vf, u16 num_queues)
> +{
> +	struct ice_hw *hw = &vf->pf->hw;
> +	struct ice_vsi *vsi;
> +	u32 p_rate;
> +	int ret;
> +	u16 i;
> +	u8 tc;
> +
> +	vsi = ice_get_vf_vsi(vf);
> +	if (!vsi)
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +
> +	for (i = 0; i < num_queues; i++) {
> +		p_rate = vf->qs_bw[i].peak;
> +		tc = vf->qs_bw[i].tc;
> +		if (p_rate) {
> +			ret = ice_cfg_q_bw_lmt(hw->port_info, vsi->idx, tc,
> +					       vf->qs_bw[i].queue_id,
> +					       ICE_MAX_BW, p_rate);
> +		} else {
> +			ret = ice_cfg_q_bw_dflt_lmt(hw->port_info, vsi->idx, tc,
> +						    vf->qs_bw[i].queue_id,
> +						    ICE_MAX_BW);

These functions return kernel error codes...

> +		}
> +		if (ret)
> +			return ret;
> +	}
> + > +	return VIRTCHNL_STATUS_SUCCESS;

... this and the error above are returning VIRTCHNL errors. These are 
not returning consistent types.

> +}
> +
> +/**
> + * ice_vf_cfg_q_quanta_profile
> + * @vf: pointer to the VF info
> + * @quanta_prof_idx: pointer to the quanta profile index
> + * @quanta_size: quanta size to be set
> + *
> + * This function chooses available quanta profile and configures the register.
> + * The quanta profile is evenly divided by the number of device ports, and then
> + * available to the specific PF and VFs. The first profile for each PF is a
> + * reserved default profile. Only quanta size of the rest unused profile can be
> + * modified.
> + */
> +static int ice_vf_cfg_q_quanta_profile(struct ice_vf *vf, u16 quanta_size,
> +				       u16 *quanta_prof_idx)
> +{
> +	const u16 n_desc = calc_quanta_desc(quanta_size);
> +	struct ice_hw *hw = &vf->pf->hw;
> +	const u16 n_cmd = 2 * n_desc;
> +	struct ice_pf *pf = vf->pf;
> +	u16 per_pf, begin_id;
> +	u8 n_used;
> +	u32 reg;
> +
> +	per_pf = (GLCOMM_QUANTA_PROF_MAX_INDEX + 1) / hw->dev_caps.num_funcs;
> +	begin_id = hw->logical_pf_id * per_pf;
> +	n_used = pf->n_quanta_prof_used;
> +
> +	if (quanta_size == ICE_DFLT_QUANTA) {
> +		*quanta_prof_idx = begin_id;
> +	} else {
> +		if (n_used < per_pf) {
> +			*quanta_prof_idx = begin_id + 1 + n_used;
> +			pf->n_quanta_prof_used++;
> +		} else {
> +			return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> +		}
> +	}
> +
> +	reg = rd32(hw, GLCOMM_QUANTA_PROF(*quanta_prof_idx));
> +	reg &= ~GLCOMM_QUANTA_PROF_QUANTA_SIZE_M;
> +	reg |= quanta_size << GLCOMM_QUANTA_PROF_QUANTA_SIZE_S;
> +	reg &= ~GLCOMM_QUANTA_PROF_MAX_CMD_M;
> +	reg |= n_cmd << GLCOMM_QUANTA_PROF_MAX_CMD_S;
> +	reg &= ~GLCOMM_QUANTA_PROF_MAX_DESC_M;
> +	reg |= n_desc << GLCOMM_QUANTA_PROF_MAX_DESC_S;
> +	wr32(hw, GLCOMM_QUANTA_PROF(*quanta_prof_idx), reg);
> +
> +	return VIRTCHNL_STATUS_SUCCESS;

Is this really supposed to return VIRTCHNL codes? That's not a standard 
convention the driver is doing.

> +}
> +
>   /**
>    * ice_vc_cfg_promiscuous_mode_msg
>    * @vf: pointer to the VF info
> @@ -1587,6 +1758,137 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
>   				     NULL, 0);
>   }
>   
> +/**
> + * ice_vc_cfg_q_bw - Configure per queue bandwidth
> + * @vf: pointer to the VF info
> + * @msg: pointer to the msg buffer which holds the command descriptor
> + *
> + * Configure VF queues bandwidth.
> + */
> +static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
> +{
> +	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +	struct virtchnl_queues_bw_cfg *qbw =
> +		(struct virtchnl_queues_bw_cfg *)msg;
> +	struct ice_vf_qs_bw *qs_bw;
> +	struct ice_vsi *vsi;
> +	size_t len;
> +	u16 i;
> +
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
> +	    !ice_vc_isvalid_vsi_id(vf, qbw->vsi_id)) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	vsi = ice_get_vf_vsi(vf);
> +	if (!vsi || vsi->vsi_num != qbw->vsi_id) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	if (qbw->num_queues > ICE_MAX_RSS_QS_PER_VF ||
> +	    qbw->num_queues > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
> +		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
> +			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	len = sizeof(struct ice_vf_qs_bw) * qbw->num_queues;
> +	qs_bw = kzalloc(len, GFP_KERNEL);
> +	if (!qs_bw) {
> +		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +		goto err_bw;
> +	}
> +
> +	for (i = 0; i < qbw->num_queues; i++) {
> +		qs_bw[i].queue_id = qbw->cfg[i].queue_id;
> +		qs_bw[i].peak = qbw->cfg[i].shaper.peak;
> +		qs_bw[i].committed = qbw->cfg[i].shaper.committed;
> +		qs_bw[i].tc = qbw->cfg[i].tc;
> +	}
> +
> +	memcpy(vf->qs_bw, qs_bw, len);
> +
> +err_bw:
> +	kfree(qs_bw);
> +
> +err:
> +	/* send the response to the VF */
> +	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUEUE_BW,
> +				    v_ret, NULL, 0);
> +}
> +
> +/**
> + * ice_vc_cfg_q_quanta - Configure per queue quanta
> + * @vf: pointer to the VF info
> + * @msg: pointer to the msg buffer which holds the command descriptor
> + *
> + * Configure VF queues quanta.
> + */
> +static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
> +{
> +	u16 quanta_prof_id, quanta_size, start_qid, num_queues, end_qid, i;
> +	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +	struct virtchnl_quanta_cfg *qquanta =
> +		(struct virtchnl_quanta_cfg *)msg;
> +	struct ice_vsi *vsi;
> +	int ret;
> +
> +	start_qid = qquanta->queue_select.start_queue_id;
> +	num_queues = qquanta->queue_select.num_queues;
> +	quanta_size = qquanta->quanta_size;
> +	end_qid = start_qid + num_queues;
> +
> +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	vsi = ice_get_vf_vsi(vf);
> +	if (!vsi) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	if (end_qid > ICE_MAX_RSS_QS_PER_VF ||
> +	    end_qid > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
> +		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
> +			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	if (quanta_size > ICE_MAX_QUANTA_SIZE ||
> +	    quanta_size < ICE_MIN_QUANTA_SIZE) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	if (quanta_size % 64) {
> +		dev_err(ice_pf_to_dev(vf->pf), "quanta size should be the product of 64\n");
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err;
> +	}
> +
> +	ret = ice_vf_cfg_q_quanta_profile(vf, quanta_size,
> +					  &quanta_prof_id);
> +	if (ret) {
> +		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> +		goto err;
> +	}
> +
> +	for (i = start_qid; i < end_qid; i++)
> +		vsi->tx_rings[i]->quanta_prof_id = quanta_prof_id;
> +
> +err:
> +	/* send the response to the VF */
> +	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUANTA,
> +				    v_ret, NULL, 0);
> +	return ret;

return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUANTA,
			    v_ret, NULL, 0);

> +}
> +
>   /**
>    * ice_vc_cfg_qs_msg
>    * @vf: pointer to the VF info
> @@ -1710,6 +2012,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   		}
>   	}
>   
> +	if (ice_vf_cfg_qs_bw(vf, qci->num_queue_pairs))
> +		goto error_param;
> +
>   	/* send the response to the VF */
>   	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
>   				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
> @@ -3687,6 +3992,9 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
>   	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
>   	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
>   	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
> +	.get_qos_caps = ice_vc_get_qos_caps,
> +	.cfg_q_bw = ice_vc_cfg_q_bw,
> +	.cfg_q_quanta = ice_vc_cfg_q_quanta,
>   };
>   
>   /**
> @@ -4040,6 +4348,15 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
>   	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
>   		err = ops->dis_vlan_insertion_v2_msg(vf, msg);
>   		break;
> +	case VIRTCHNL_OP_GET_QOS_CAPS:
> +		err = ops->get_qos_caps(vf);
> +		break;
> +	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
> +		err = ops->cfg_q_bw(vf, msg);
> +		break;
> +	case VIRTCHNL_OP_CONFIG_QUANTA:
> +		err = ops->cfg_q_quanta(vf, msg);
> +		break;
>   	case VIRTCHNL_OP_UNKNOWN:
>   	default:
>   		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
> index cd747718de73..0efb9c0f669a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
> @@ -13,6 +13,13 @@
>   /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
>   #define ICE_MAX_VLAN_PER_VF		8
>   
> +#define ICE_DFLT_QUANTA 1024
> +#define ICE_MAX_QUANTA_SIZE 4096
> +#define ICE_MIN_QUANTA_SIZE 256
> +
> +#define calc_quanta_desc(x)	\
> +	max_t(u16, 12, min_t(u16, 63, (((x) + 66) / 132) * 2 + 4))
> +
>   /* MAC filters: 1 is reserved for the VF's default/perm_addr/LAA MAC, 1 for
>    * broadcast, and 16 for additional unicast/multicast filters
>    */
> @@ -51,6 +58,10 @@ struct ice_virtchnl_ops {
>   	int (*dis_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
>   	int (*ena_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
>   	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
> +	int (*get_qos_caps)(struct ice_vf *vf);
> +	int (*cfg_q_tc_map)(struct ice_vf *vf, u8 *msg);
> +	int (*cfg_q_bw)(struct ice_vf *vf, u8 *msg);
> +	int (*cfg_q_quanta)(struct ice_vf *vf, u8 *msg);
>   };
>   
>   #ifdef CONFIG_PCI_IOV
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> index 7d547fa616fa..2e3f63a429cd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> @@ -85,6 +85,11 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
>   	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
>   };
>   
> +static const u32 tc_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_GET_QOS_CAPS, VIRTCHNL_OP_CONFIG_QUEUE_BW,
> +	VIRTCHNL_OP_CONFIG_QUANTA,
> +};
> +
>   struct allowlist_opcode_info {
>   	const u32 *opcodes;
>   	size_t size;
> @@ -105,6 +110,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
>   	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
>   	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
>   	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
> +	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_QOS, tc_allowlist_opcodes),
>   };
>   
>   /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
