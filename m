Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DB181211C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 23:00:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 311984364B;
	Wed, 13 Dec 2023 22:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 311984364B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702504808;
	bh=Laan1Wav06O+Tqv2vsn/L6sByzH5T+na3JzQkCS8mMs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fnBD95dEbbmNQj7T8niyhCQY+soo756jVb0XZ3Phw2A4qkir+LfI5s+sFx8ucruxx
	 mBSHlZZmO6ljkKCgv6FazuOZzb1CreXgSsVn5UVkmYyZO0Mo1JegaJqZVKQd2/8WbG
	 egfUm5XI+h++NJEwP/4sKn8huD12L1SbRyS+H/orqdyZlDohN+gGurfhRpFgyBYtOu
	 yXcF6Xnp2v9HLlosRk4xBcSeqKJhqVsoPtA9COvnLw3k7tfA/9h+xUzW+F64y02Wm+
	 ZRWPn1zatTMdBWH9qMeodryQNqvaeNYm0SFK9CBtsdpvabwOm2zZywL7V0UGFtQrbj
	 +A5pfzoSPWdlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkFMOCYTzLGR; Wed, 13 Dec 2023 22:00:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DD6043648;
	Wed, 13 Dec 2023 22:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DD6043648
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3DBC1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 22:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 894A460A9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 22:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 894A460A9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vMCt5gin8BSk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 21:59:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 923A3605BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 21:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 923A3605BE
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="375186594"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="375186594"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 13:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="840048592"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="840048592"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 13:59:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 13:59:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 13:59:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 13:59:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nO8WHKQJjHnjEt6E1OvzjUMWOg3D+FFotohbiPKqm46VgCVsnJG3GbrJtxCnZ4g29wxN4bjLcSGspWbSlk6pA7HHAtRIn9tG5nMywnI9ftuCpYPhZHTQ1d9YbEGNI/DPg46O8mk2Rr6MWwsmcmgxwkrV7aAIKXRKZgwZIPjnGCq6sVRBgwapNS/vVtnhvF7TkpPFNjFofImQ8gtCn7mpAc9tZH9e/PI6J21CufZdnGtSlWy/np7tqhtEhgknyc31jZSfv1ufDNBUFWRaYe/dAZIzRFIiJ9BMocl4HgQiB1f+A5Mgs9TbdZeB4HvXwF//FEhDmEPdRLa5CU08gr3wpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k++FX4i7clSbb46D223/6MtS86j/1hTq2iDIWXHopss=;
 b=oH/25ww/HobwQTuiUkc86vZ0ZOVgggbHT5vLPBKfJKJslDuwAhjtj3GwYobtAXUeaNuMAEtSqSDTtU3nQcdWhyvFcXDLBT7hI84Nx0afdur23zFV8n2gqM/5/IMFDna5sRkOvTQKpyHrLR/QRw2KPB7VCTX7B5t0UtnsNYASRk38y/zS6PIwQ2Zgl+Rq3Rh1mfLnJrSHeuhFEYHWDk4Mdjd21xKzbpEfzbqkfLNDDQGVYh4GitrqhOyDeSvec1Zec+qZl05fnFRuJOaLwgIE8+aWpGxh7f+Y+VUmpH4dHkSBtKphFns7t8QE/G/3ka0enDn7dnAYklNDzbTd/DyiWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by CO6PR11MB5572.namprd11.prod.outlook.com (2603:10b6:303:13c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Wed, 13 Dec
 2023 21:59:56 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::ea27:681d:ec93:3851]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::ea27:681d:ec93:3851%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 21:59:56 +0000
Message-ID: <714694aa-a6c3-4e89-ae12-a6a87bdf430a@intel.com>
Date: Wed, 13 Dec 2023 13:59:51 -0800
User-Agent: Mozilla Thunderbird
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231212122452.3250691-1-andrii.staikov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231212122452.3250691-1-andrii.staikov@intel.com>
X-ClientProxiedBy: SJ0PR05CA0045.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::20) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|CO6PR11MB5572:EE_
X-MS-Office365-Filtering-Correlation-Id: 437d1e66-4eb0-43ce-b798-08dbfc26d733
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FuLM+qZ2abuuuxSu61RZRs7vnTwtKecOEfF+8KYshtmABuTdpA9nRJJAUCsEhpsweIkakhwXDkFdjz6opbE7OjtREK6Kq+kX7wj3NTB8+AHwQpnaV5ik7XWwbE3Q14/P7vynWex68Z35qLVJy02sRstONJMt3HXd2gEeiQSpS4UzNIS+rbLoJVfDBk0MyrVm8qKj5/HsuhsxHCrQ+g2oD2CKqSi9FGG2T/flJBBAvhiofAsf37kudUUbOCs9Mw6sDb/9cqildn3hHheZB0l/wNycFp4u+sD4tuI1XGm/zTxFn1W4ReTKiIpJ7n6v67Y80IWaVxIb+Qn4v9W03ILnpeoCwgjbXeGglVHR1Xf3hrNyy/IdXUBn899Agh/jtPfKbfUMMfAaxP8aNgcejN9TlSFyl6VMsAP35J/eC3bLZWUlgI6Re+4UpskLdxXlJpeWYVA3/WrSIWUWAVfWksmRU/CkWTrBq8rswpEg7o6SJ9oUiNM6PQ8Fd04dFAYEDE94hMDwMNkUDBSr6ElG3hISOHtPT15UC+Nv83ImSPx9kYDGLhPdZ9ZWxNIIe5QPQL3aX7YTlnCIExpHaSxWr2PjlDS4UdlOL/4Y3Qm5Hkw/nFRiktA4T55ahVqv4enbH4rjn82RUnqMZEVZSHaRbR/wW9/wJFyLiq25U6SG/go0HeVgQjSI/BspDzMcd7qs0VNR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(396003)(39860400002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(54906003)(66946007)(66476007)(66556008)(316002)(4326008)(8676002)(8936002)(2616005)(6512007)(107886003)(26005)(83380400001)(478600001)(6486002)(966005)(53546011)(6506007)(6666004)(5660300002)(2906002)(41300700001)(36756003)(82960400001)(38100700002)(86362001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGdmbWV2MG05TGhSOWJIbVZkVjYrU29GcVpJN1ZrZnRBODQ0UkNpMWJNaGVq?=
 =?utf-8?B?a2xaRGpDeU5mTDdaeFVwUXFVckxpSkU4eE1PZG5wUU9NYi85Mjk3ZFB3R2RT?=
 =?utf-8?B?azYvUTVrck91a0xGWmxQQVdmUzhOZTdtSGJIdzNZaGltU2tzYXorcmpSMmli?=
 =?utf-8?B?SWhKR2wxMzMvVUhYSUxpNHFtcXYyTG1aQ2dvNXdTNU9yOFkrNU1Cd3cveEdB?=
 =?utf-8?B?cnhLVEljUVJSbTVFS2crU1hRcEwyak04UHlCQXRiQk5RMnJaZzVXZWlBSnNR?=
 =?utf-8?B?dFdXS2hLVUs1MEs2bHgwNFVCN0xuelVCMWcycHJmKytzL3VETlJwbWw5WWxi?=
 =?utf-8?B?dWZUd1JuWFd1WVM0WitHSGgyd1dCbDljc05vajU1aG0vWmt4TTUzV0Zad2hX?=
 =?utf-8?B?T3RTeElxaFZGYjBFUGxpM2NXVWdtU1Y3REVSc2l0TW82eHlKc0lJb2pQTGZJ?=
 =?utf-8?B?NWl0T1hnVG1qTGRaZlpwN3ZzUWUrb1VPcXhXWjBRQ2FiYmQ1MjhJbCthQXEv?=
 =?utf-8?B?bnl3N1QxaTRYT1BuY0hCSjk3OUwxU1o5UFlTTUQybzc2Z29pWE9nZFZzcndr?=
 =?utf-8?B?Zkc2QS95SUhBNm1JNlZtdXVWc3BscWxRS1IwTVBDVGlVNjRwcGNWSGxja0ts?=
 =?utf-8?B?Qkd6OTNHQThpSUw3ekYvU1lRaE0rVVU5LzVtSWxycTNFUDA1ZVNhdFRXQjli?=
 =?utf-8?B?SDRhcWFkMlBHRTlWN0RpQjI1U3ZWTmdwYkdMbjJSaFgvQVh1NTM1Z2ovNC9R?=
 =?utf-8?B?ZklBNkxiUkdPT2dZVUw5MGNjT3hWV0Vqb3FlWFF3T1luaEVXTG1Yd0N2RkxI?=
 =?utf-8?B?cEswMVZlL2wzei9RNjVORHl5bzRaZ0tLQnh3N3FKUlNsbUJ5UWpmR2ZkQkdK?=
 =?utf-8?B?aEhkQjFxcjZidWJuQXR5QnlBWVNNb3J1dVhWTHU0eU9iS3FCM2NPS2Q2WCsy?=
 =?utf-8?B?M1FZOXlkK3hlQWxZd0xyTzE1YXMxUzVxT0I4anY3Y2h5dUllZGs4OUx2WmdQ?=
 =?utf-8?B?SXVPeGtUeWZFR2VoTkswSW0ybzNKTFNXSUprYzZUWkpLS2t0M1d3SnJYNFpX?=
 =?utf-8?B?U0xIVVUzOFNCTlZ3MzJyL2M3SnFTVUxQVW9jaE5FTG16Z2grWk9nVE8vQU5V?=
 =?utf-8?B?QnpveHYvZWN5c3pkR3NWcFQzRW1Sa1JsNEVYbHNHN09VNFkvS1RVYTJFZmww?=
 =?utf-8?B?NENhTTJYZ2VCbU1qbmFZakFINTRYUzYyNDdGa2U2SjlMTWw2QzY0VHBNemdp?=
 =?utf-8?B?d29kQU1TNUZLVW80N0Q1MFdGVXd5NDhpMVRSZzM3U3dVTEU2alhUbXgzWWZJ?=
 =?utf-8?B?Sld1ZDdEVndJOGZ1a2pURlduT04wKzZBUFdWUEN2eTJFS2xvZmNwMjVOVHR3?=
 =?utf-8?B?QXg3UDEyVXRWZFRjVE5oU0VxUVZlbVdqUkl5R0hWcHpmdVVkT0YvRi82eFJj?=
 =?utf-8?B?OCtPakJ1UWU2M3RDcWlsMlUrM3RhczlFTlpoMFd1T1VScUFIUnF0eDJMaGMx?=
 =?utf-8?B?N21Oa2dOWXRZQU91UXMyWktDWEpNMUZZb2NqdDZGTmljemx0cm96SHNoMXh5?=
 =?utf-8?B?RXlteHl0WU1kalFqT1RRMnV4YmdWTzVMYzY2UVc4MjZWOXpjWDlhTTJXaGdI?=
 =?utf-8?B?b3FUdHE5Q1Z2NXc1VDY3bCtrTndEbWMwblNiaHcxTDFDNjNxS1k0eEQ2U0pY?=
 =?utf-8?B?alU3Qm1Ydk5hcDNKTkw1Ykc1bUlkRjFJS21zOWlzcHFyV1RiSDB3Tnh3Q0F5?=
 =?utf-8?B?RkVnb0FkNnFidmd1YURvK0lDa0dLb3pBRE53clNIdHJnY2x0WjBmbUVwcVFC?=
 =?utf-8?B?b2JBU2t1RDYzczdDQzNtS2lvZDUxKzdTMFh3UWxMU29JRVo0TzdoR3M1MklU?=
 =?utf-8?B?c3ROajlyT3QvbXRDcFRPU3pwSE1WMmJ5MlNyZWxJZ0xHQ01xcWtESkMwTGEr?=
 =?utf-8?B?UlhzRjBBVHE5NlFiVUFMTEVaaFRHK1g3N0dseGdFT2phSjZhT0pndzVlWG40?=
 =?utf-8?B?bFBMVGk5UDBlb083Qzg4aFdEVXpoTUxHMmlvMzVkUEVXU2hFbC9TSHN4TVNL?=
 =?utf-8?B?UmN5dGFCdXNuMTJqaGlaSXJ5dm5PSkhKMWdpbzBGdXlLMU9hbzVkcVdmdmds?=
 =?utf-8?B?SlRkTXNqdFU0aDAyTlVTUE1VZjNRQ0RUQ01oM1pvU0dLN2JmakdtUGNockw1?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 437d1e66-4eb0-43ce-b798-08dbfc26d733
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 21:59:55.7784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: De7vULnUnot0OT6L0lxp3kXwQZMqBI2d7PunPwjKrr7qR8Fpj9nuupUdgWk2D5H2xpp+lcsJ8kXMl4fYEq9s7GkrgNTrir1KLiPDD72EkfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702504799; x=1734040799;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2elGdMOiz8qDsglpKvu7jBMSmox91wakvxoxwidikwY=;
 b=PJgKpF4ejWfVT1cUXUwgiD0IUTbKzsQbkr1hyQpVxYaNKhMQJ6JCis31
 BYkPGujZsgqqXuyZdvBYrOGFL/WYObLG0f6ctlUgF+PPfsR6kYVN4dYbC
 bq58sFnhdfBxj+FfYL/D+GzlEoQEjjYBV86xrm5sZ7cMPWOEfKuJguNrr
 yLTl7s6bl25RAzArlxLQnPHZIQSHM75lp3vsOUve6QhLbZzhPgapJ1RGv
 Qd7Io5hvGOJYxAs03kKcvtgESo1cPYGJgegg3PJ8jIQ0yJX+tTcQz1wh6
 Rsd1TO3hWulEMtt2+MUIFXOUev8B2QN0Wmof6jOgJmxXWbnSRI3l40KqR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PJgKpF4e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: Drewek Wojciech <wojciech.drewek@intel.com>,
 Karen Ostrowska <karen.ostrowska@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Kitszel Przemyslaw <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/12/2023 4:24 AM, Andrii Staikov wrote:
> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> register will be cleared. This can lead to issues when a VF is
> assigned to a VM because in these cases the VF driver receives no
> indication of the PF PCI error/reset and additionally it is incapable
> of restoring the cleared flag in the hypervisor configuration space
> without fully reinitializing the driver interrupt functionality.
> 
> Since the VF driver is unable to easily resolve this condition on its own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
> Co-developed-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Drewek Wojciech <wojciech.drewek@intel.com>
> Reviewed-by: Kitszel Przemyslaw <przemyslaw.kitszel@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>

The ice driver recently started caching the PCI device structure
pointers in their VF structure instead of having to do this sort of
lookup on the fly.

See 31642d2854e2 ("ice: store VF's pci_dev ptr in ice_vf") [1][2]

[1]:
https://lore.kernel.org/intel-wired-lan/20230912115626.105828-1-mateusz.polchlopek@intel.com/
[2]:
https://lore.kernel.org/netdev/20231019173227.3175575-4-jacob.e.keller@intel.com/

Can we do something similar for i40e?

> ---
> v1 -> v2: Fix signed-off tags
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231204131041.3369693-1-andrii.staikov@intel.com/
> 
> v2 -> v3: use @vf_dev in pci_get_device() instead of NULL and remove unnecessary call
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231206125127.218350-1-andrii.staikov@intel.com/
> 
> v3 -> v4: wrap the added functionality into the CONFIG_PCI_IOV define as
> this is VF-related functionality
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  3 +++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 26 +++++++++++++++++++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  3 +++
>  3 files changed, 32 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 7bb1f64833eb..bbe2d115fb15 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16513,6 +16513,9 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
>  		return;
>  
>  	i40e_reset_and_rebuild(pf, false, false);
> +#ifdef CONFIG_PCI_IOV
> +	i40e_restore_all_vfs_msi_state(pdev);
> +#endif /* CONFIG_PCI_IOV */
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 3f99eb198245..d60f5419d6bd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -154,6 +154,32 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
>  			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
>  }
>  
> +#ifdef CONFIG_PCI_IOV

Also noticed that i40e_virtchnl_pf.c is compiled always instead of only
conditionally when CONFIG_PCI_IOV is enabled. That's not really the
fault of this change, but I think it would be good cleanup to avoid
needing to compile any of this code if CONFIG_PCI_IOV is disabled.

> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +{
> +	u16 vf_id;
> +	u16 pos;
> +
> +	/* Continue only if this is a PF */
> +	if (!pdev->is_physfn)
> +		return;
> +

The function could also just pass the pf instead of pdev, and we'd know
its the physical function.

> +	if (!pci_num_vf(pdev))
> +		return;

If we switch to saving pdevs in our VF structure, this could be a simple
iteration loop that does nothing if the number of VFs is 0.

> +
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	if (pos) {
> +		struct pci_dev *vf_dev = NULL;
> +
> +		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
> +		while ((vf_dev = pci_get_device(pdev->vendor, vf_id, vf_dev))) {
> +			if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
> +				pci_restore_msi_state(vf_dev);
> +		}
> +	}
> +}
> +#endif /* CONFIG_PCI_IOV */
> +

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
