Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE96A72E6E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68956409AB;
	Tue, 13 Jun 2023 15:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68956409AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686669443;
	bh=RH5dZAPKeFY06BEvUgKZlpZC4hEy5NwS5p5b+iTbBs0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4mjvuCD/PcF6Gb/cYrNpSgTwYjyXk23aDhE+c0janPakHkVctzz5YxpE/joN8cHj9
	 RAfpwb5xBlldTWRfSK3qTyeBSp/tXpOnMjtEs4A1ip6QhAizy/txR1Hknn6yC6PMzN
	 z+RWvCoVsw51ZlsbdXvmJHARvBYq4y/YNNbQj5+xylH+vm/6WMPo+C6xm7zH57rMZm
	 3QU1+gvhDaPw0yhpOjIJyzxdKF5yQPr8inDDSgSDp4frrYp+627jmtpiXSSRtfzSjc
	 4N9RFtufHmbxpWcqsbQLmJVNSi0x4vUjgs6l2soIoho+C/n5lev3JqJbDdvG4sZw4u
	 G3NvzqSLz3ihw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqasoGIWXfxP; Tue, 13 Jun 2023 15:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 902B04099D;
	Tue, 13 Jun 2023 15:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 902B04099D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABAB51BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 818F482003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 818F482003
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqbaIEITFbNp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 15:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41ED281FFC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41ED281FFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:17:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="421958802"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="421958802"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 08:17:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="744726582"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="744726582"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 13 Jun 2023 08:17:04 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:17:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 08:17:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 08:17:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I31AssNxfT2Jjgh8yu9Truz+Wd7a7F1qQASpw9E1CniIhfAsCHBHnwZq5OTeWgVMwQFWbG8PpU6tJS+zalY4KrCtCk9gX+7B59dRVNyCLQM6cSFWDK+h6/M68m2hHPBIKwjvBvml0J/pNKP9mq6a/GoiCMKNaGhgwv4l52hVodCDOXIcb02/qQLA2vyMEYBhY5qFpnAbKt9db2nwA8xbvxbUvKUe5RIQB9Y+xg19Bd5JDM+uXTY8N7nWlRFFiNQuX2t4DCJ2xWH5QSVtSHoy7cKldGf+tdOP/sSdTduosUnywQAgxJ4ZAje02knWBUaR/fzz747z+xBM7Vv26rWv3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Mkyu/9FypSr/qZ8dX65odNBWLd8cTaID3nyLdcLlbg=;
 b=adnGzsVK2Ly+GwJ9x1fP7X2b+ipPPJEqEiA8Tl7WvAeSxUaXgl7ecrAlaiX49zbdKqjL9fGrOtsswkBKgBfYWGKO6XLqAJRd2bsLi1WTY5h6ib4HghGZgnHOIEVoC2l472r1wbS/PEhZ8C8lMikwono1X92NZYWRwBoaFuRVnN9ZBZK6vm+unc6s+NBY8lROqWPQgnbFrurt5p/U8qmz/zbYRX6spGqK9LlLlksGvWbAtg4JiILOk6nyKxVOHcuBa0SndOrLtd/FQBpDMdCDsjIw0pytUcJhGaSmjNcOMNtYWzka8lIu6soVp1/DModp70hVLIxR9PhShMSRg1VQRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by SA0PR11MB4605.namprd11.prod.outlook.com (2603:10b6:806:95::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 15:17:00 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb%5]) with mapi id 15.20.6477.028; Tue, 13 Jun 2023
 15:17:00 +0000
Message-ID: <837ccaeb-a77d-5570-1363-e5e344528f97@intel.com>
Date: Tue, 13 Jun 2023 17:16:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, <netdev@vger.kernel.org>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-4-piotrx.gardocki@intel.com>
 <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
 <c9f819da-61a6-ea8f-5e16-d9aad6634127@intel.com>
Content-Language: en-US
From: Piotr Gardocki <piotrx.gardocki@intel.com>
In-Reply-To: <c9f819da-61a6-ea8f-5e16-d9aad6634127@intel.com>
X-ClientProxiedBy: LO4P265CA0245.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:350::17) To BY5PR11MB4451.namprd11.prod.outlook.com
 (2603:10b6:a03:1cb::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_|SA0PR11MB4605:EE_
X-MS-Office365-Filtering-Correlation-Id: cd7094cc-9094-400d-4d46-08db6c213c36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z3EJ8VW55IFlw65RM5X9kgZmAa97/dUYFAVsA0DxMMLARBlQCQ+30oXpfLn7O7lv2MsH15Bkny+Z7GGIlP1rDUuSsYAYUfLGcNWujCB4bNc4MHYESLyBVJUcHWXY62J52hmbuGIzL4ZN3nNGceX9LDnWJO9CtKrhg0HhACyBgd1oZDspVslFyblzcHtCH3FsFO+iz+T6mfbdIhj0IcRYcER6MbiKfHW+oy30lT2/U23oaKZz5igVZ9/nRie5a6VOF3yqrs2h8MQZnXfnxAaY2SxKDlQTnpGXZFQ6N6Hukd8fLLIHQyJiw5acLhKudMruArXX0JQVFCUFQDkZ2vf7o3mc8uGva98OmWhIlC/C2xZanXlSk1WFwSjh1YPBISeGwF2p5qXjiNO9gOQVbchO4JtcoZMKKJhfmG80vxW7+mfx8jQG81VWlbmncycM1m74PWosTM+NpIC9MR7lB88u4Cs28223PHKZACqaENUGcAnq3sFabeGBw5ru2ZlpKsLVNHHJgJ1zlx/fQEP33keF+ahlN34lGgnKDsg8j3GHs/ITE/0w8KsUIvVieNaCICKzEE8vgr0RVVmukuT18Gze+6DR+KHiSxVkCmTJIrRafuW1G2LV3O0UoCyCIWrqD7RPkV/F7XEf3IFo9qaaSGPO2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4451.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199021)(2616005)(83380400001)(82960400001)(86362001)(36756003)(38100700002)(31696002)(478600001)(4326008)(6666004)(6486002)(8936002)(2906002)(8676002)(5660300002)(66476007)(66556008)(66946007)(31686004)(41300700001)(316002)(53546011)(186003)(6506007)(6512007)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cG9YS0dwQmNvTENWUUNzemZGTVAwWnZmS1VNVURvRDJ2dFAxd3UrNFpWSys2?=
 =?utf-8?B?VndCdU5xekVaSncwaGxrSWV4cVJZb1FvTEtXdjRHOXBMOFpEMmJKOVZ6N3Yw?=
 =?utf-8?B?dFNHdzUxN1FrZEJNRGFrUUx4Q0xvR2VmK2V3eFF2aFM4djBnK2JMckJLYWRO?=
 =?utf-8?B?WlhWdWd6SEtUMjNxdU1OVDhRWHNqakpyVWJzRXorbHVXKzRabG9ZK1F1TlBU?=
 =?utf-8?B?ak9xWm9zR2tDR0NnSGFCUTBzS0lHT1lDRmRmVTIrNWUzTnR3MDl0TWlldVov?=
 =?utf-8?B?WFJhaVVWakprRGJFNTFZWG56L0tUYzRHcHVVem5rS2V1TjJjd01uNTVTZENF?=
 =?utf-8?B?T3ZhVEp1cGpGR3ZBaG1ocy9DSjZmUmV6T3RNRVZ4MHMyRStOdThUM3EyRUtk?=
 =?utf-8?B?S2svcE9lMWxoVklLQkZEaEZZY01jWXcydzUzUjZHV29QTzBrS0o0eHFpMmtp?=
 =?utf-8?B?ZnNYRWF6aDhmWUZ0Q2g1eGt3dkFFNmNsM3p1cmNVeDdaNytKV3NnTE8xenBr?=
 =?utf-8?B?dWF4ZkxYQmJaKzQ3NmowMHRMOHBCWTFSZVVodmJINjhtMW1tUjdwb1N5VGZE?=
 =?utf-8?B?QjQreks2QzBJZVNGOW4wdFJsaGp6Vk4zK2dHVEJFZElvZnFmWDhGUi9uelVk?=
 =?utf-8?B?YjJlSk9wenl4U2NqMm1kaTNSUjNkMnI0MllTaGl5WHBDL0hKL2FnbEFuLzBz?=
 =?utf-8?B?MkVmL2RVaTBLMjNGL0VacUxoRHNkckk3TWNtSVpFbUJQTWJrejI3UFVhU1Zk?=
 =?utf-8?B?UGhBRUFqdDJHbWh4R0JkTEJMNi94SjNva2Z4cFRqcEkzMXVib2c2OWxsYVlM?=
 =?utf-8?B?RG9RdjNIRURwRE5lbnM2VmhETWQvRy96YlRsblRkditUYzNDeTJFenAxdHVu?=
 =?utf-8?B?ai83R1BTc0J1OVRESnZRMWtsZkh0d2EwRG5nT241aFpXSzVuQWczTVlnU1hF?=
 =?utf-8?B?Z0Fjc0tkZUUrbXhkbVVaVXBpYTVzUHhTemc1Q3ZrMDlvek9NajAybVNySE01?=
 =?utf-8?B?RTdRUDhFQnF2UjhSUG9jYVlxdVNveUVlN0prY1pHbUgwTEFXekRzUUllbjV0?=
 =?utf-8?B?UDNmWW80VW0yeThBd1ZHWlJJbWF3TXU1aFozMktKdlczdFNTUE5lS3dyKzZy?=
 =?utf-8?B?K0l2Y2RIME5GRmdpaTAyMEJkdHBCMGVzbWhUcjB5YkJKZWI3bjFQK0pGUi9I?=
 =?utf-8?B?Z3RFWE9GZ3A4bzJWamgvOUxNM1lEOFRQNXdQeG5hTWkxc0YzMU55QnBZYTBI?=
 =?utf-8?B?allWWDdFMGJSZHhvR3B6c1AwZzQrWHJLaWhuN2crYldHamxwZW1tNnc1QWVM?=
 =?utf-8?B?MVdtTTJPL3dMRUJJUnFmeFhyYTA0OW1OOHMxZFRkdEpGczhHbHNhZytIam14?=
 =?utf-8?B?RVV5QzZhdTJDTmFRRUN3LzBqYWxLYUx6b2s2YXZBMnJzQ3ZRcnV6YS9aL2x2?=
 =?utf-8?B?ZU9DeHNFT3BXRjhLMjRzNGI0WlFPNEJQVnF1NTM5b2JNREx4dHM3bDAza05D?=
 =?utf-8?B?amRKaTM3aEpDaHVHZVRxTWZBSTNwUDNvQzVoTWRGV216azlBSzRTcWpEOXVv?=
 =?utf-8?B?UXBrZHp3QUtmVy9HUUpaRVgvYWxWRjN1U1hUOU8yTi95Q0pYVG81VHIybkN0?=
 =?utf-8?B?dDUrbDFLZkNEclp3ZnU5ZnczUGxBQ2lld1FiS25FTWtraW5RVGFna1FvNFlr?=
 =?utf-8?B?V1lsVDNnQ1FFR1JUWDZVN0RNSGM0ZDlSdWJUcktFR2d2L1FaM1N3dEs5bTI1?=
 =?utf-8?B?MlJwR1VBd2F0VFRsaEZUR2sxZnMyV1lrWGs4bXhrdTJ0cnA0K3VTZkFGcXFJ?=
 =?utf-8?B?NkNmWDZXSzlvZTcwZllyMHpFYkozVnN3dFNRWC9ETC9JZ3NiNE4zYXB5RExv?=
 =?utf-8?B?REVQaVJDV0tlVFRIRmhrQXJVMlBhMm9NOUxiSnBNeG9TRG9VUUVySUN3WjJv?=
 =?utf-8?B?Vy9GclFiNjRJdzcvWmZVdFBMb251VnJMUEo5dWlsRXUwbGxCYVY0RThLZnFR?=
 =?utf-8?B?dWZwL3FscDA5Q05ibnN6K0g0MkljNENaeWdUSWFBakRYb0sxcUZpSXE3Tkh1?=
 =?utf-8?B?MGpHMGV1UktSYkRoc0U3RFpCTW9LSzJ1NC9WL2VNY3gwL3NzOXY2cFM5MFpz?=
 =?utf-8?B?RUtpQ0Vuamg0dXdSaEszaU1VNHNzSkQva1kxNnFsTUZEN3dFbjZ2SGd5UkVE?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd7094cc-9094-400d-4d46-08db6c213c36
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 15:17:00.5487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xiPnqFO7DDEqubjgDTnMuNdeqhV8icVZkcjb8+hEWikUAyIeiKimUDX0cy53msMkv+IsXBBd7MLFr1bAMhrYdJbg//zRtYk73ydHVKVOuO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4605
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686669434; x=1718205434;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j0nP+w4T65XThR5Dl6/kmQ9EGQuYEedYxhIKYu9MF+8=;
 b=kq2WSgwY95ycRvasx+7EaKf4eE2MkpTwgZcr4Zg7ZjMNzd/KhKMR8GQs
 jfU7dEB5IL5Aov+K+uOS+flHMf2fDKHq06HSPG0X8l0lv+yvZk952BeRU
 NuW78zeWoVP7RbwrMgonul7WE4jw8OuUtDCSaA/FlUIgZ05eidhRLXlN6
 owgaKHz2ZxcPGPRKguL5YWgsWXQNsrCUZsZspHOWm+1tcKvX1fobsaCpp
 S4ysbkrc+hkI+PmoD0OGL/MOWfdsBjE5SwXxKN0NBYPdQaEFnQxGrRn3u
 FVubIYVAeIPFLgds7WevuETBcWA6jq+eAN0/lfRc1Hv/QGVMt6j9jyndU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kq2WSgwY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, simon.horman@corigine.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTMuMDYuMjAyMyAxNzoxMCwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgpbLi4uXQo+Pgo+PiBJ
IHdvdWxkIGV4cGVjdCBvbmUgcGF0Y2ggdGhhdCBhZGRzIGNoZWNrIGluIHRoZSBjb3JlLCB0aGVu
IG9uZSBwYXRjaCB0aGF0IHJlbW92ZXMgaXQgaW4gYWxsLCBpbmNsIG5vbi1pbnRlbCwgZHJpdmVy
czsgd2l0aCBDQyB0byB0aGVpciByZXNwZWN0aXZlIG1haW50YWluZXJzIChsaWtlIFRvbnkgZm9y
IGludGVsLCAuL3NjcmlwdHMvZ2V0X21haW50YWluZXIucGwgd2lsbCBoZWxwKQo+IAo+IEkgaGF2
ZSBjaGVja2VkLCBpdCdzIGFsbW9zdCAyMDAgaGFuZGxlcnMsIHdoaWNoIGFtb3VudHMgdG8gb3Zl
ciAzNTAwIGxpbmVzIG9mIGNvZGUgKHNob3J0LWN1dHRpbmcgYW5hbHlzaXMgb24gZXRoX2h3X2Fk
ZHJfc2V0KCkpLCB3aGF0IHByb2JhYmx5IGNvdWxkIHdhcnJhbnQgbW9yZSB0aGFuIG9uZSBwYXRj
aC9wZXJzb24gdG8gc3ByZWFkIHRoZSB3b3JrCj4gCj4gYW55Ym9keSB3aWxsaW5nIHRvIHNlZSB0
aGUgYWJvdmUgY29kZS10by1sb29rLWF0LCBvciB3YW50cyB0byByZS1ydW4gaXQgZm9yIHRoZWly
IGRpcmVjdG9yeSBvZiBpbnRlcmVzdHMsIGhlcmUgaXMgZGlydHkgYmFzaCBzY3JpcHQgKHdoaWNo
IGp1c3QgYXBwcm94aW1hdGVzIHdoYXQncyB0byBiZSBkb25lLCBidXQgcmF0aGVyIGNsb3NlbHkg
dG8gcmVhbGl0eSk6Cj4gCj4gwqBncmVwIC1JbnJFICdcLiduZG9fc2V0X21hY19hZGRyZXNzJ1xz
Kz0nIHwKPiDCoGF3ayAnIS9OVUxMLyB7Z3N1YigvLCQvLCAiIik7IHByaW50ICRORn0nIHwKPiDC
oHNvcnQgLXUgfAo+IMKgeGFyZ3MgLUklIGJhc2ggLWMgJ2dyZXAgLUVSd0lsICUnIiciJ1woc3Ry
dWN0IG5ldF9kZXZpY2UuK1wpJCciJyInIHwKPiDCoMKgIHhhcmdzIC1JIEDCoCBhd2sgJyInIicv
JVwoc3RydWN0IG5ldF9kZXZpY2UuK1wpJC8sIC9efXxldGhfaHdfYWRkcl9zZXRcKC8geyBwcmlu
dMKgICJAOiIgTlIgJDAgfSciJyInIEAnIHwKPiBjYXQgLW4KPiAKPiBAUGlvdHIsIHBlcmhhcHMg
cmVzb2x2ZSBhbGwgaW50ZWwgZHJpdmVycyBpbiB5b3VyIHNlcmllcz8KClRoYW5rcyBmb3Igc2Ny
aXB0LCBsb29rcyBpbXByZXNzaXZlIDopLiBTb21lb25lIG1pZ2h0IHJlYWxseQp1c2UgaXQgdG8g
ZGV0ZWN0IGFsbCBvY2N1cnJlbmNlcy4gQXMgeW91IHNhaWQgdGhlcmUgYXJlIGEgbG90Cm9mIGNh
bGxiYWNrcyBpbiBrZXJuZWwsIHNvIHVuZm9ydHVuYXRlbHkgSSBjYW4ndCBmaXggYWxsIG9mIHRo
ZW0uCkkgZml4ZWQgaXQgZm9yIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsIGRpcmVjdG9yeSwK
b25seSBpNDBlIGFuZCBpY2UgaGFkIHRoZXNlIGNoZWNrcy4gSWYgeW91IHdhbnQgbWUgdG8gY2hl
Y2sgYW55Cm90aGVyIGludGVsIGRpcmVjdG9yeSBvciBpZiBJIG1pc3NlZCBzb21ldGhpbmcgaGVy
ZSwgcGxlYXNlIGxldAptZSBrbm93LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
