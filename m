Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9F27D0276
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 21:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0601D4313F;
	Thu, 19 Oct 2023 19:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0601D4313F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697743555;
	bh=7s0OcsJRokg+cL05yrJVasWhglgWDVq0Zs9VcSRhfKg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K7Sjr6AGSM4o7XQMVrYv2TPNw26DN7l8aHubwpzfgkbhN0/n/7SUFSuT6iKWE/hWd
	 R3ZFKuwKS9sVRqYuNADWqSk/NlbarxZFtAwrT1PPN8FBxxLUobwgFeXwzLgdLBvHcw
	 2Uonp+UrZAaJ5w/oJT6585uzrfEYK+5GhomjMQLH91fhVbg4KQJEyT9f2p/pFUDSwc
	 QLuK80uE20cWNNRpGkVaE3yh24wwy/URy4jUm8XE4pFIC0xVje3vcQI3LWoeInF5lW
	 ow3ojLlG1hcG4xf+wz5CGjbe+lUNUB4aTfmlwRM1xLP2Usicl9dUcXnDaTarUlxaz6
	 hUALPh1ns8kag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eePkrJ4r7UXe; Thu, 19 Oct 2023 19:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 967654312E;
	Thu, 19 Oct 2023 19:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 967654312E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33AD41BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02E3D41A04
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02E3D41A04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HHIK3BQ6nVpw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 19:25:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9892741962
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9892741962
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="450569584"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="450569584"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 12:19:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="792123809"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="792123809"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 12:19:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 12:19:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 12:19:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 12:19:47 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 12:19:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQlzY6vHNsa4Oonap809l+M/c8IrOrIBONLf8Fq5MzkBh7t13MKpI+xTsyt8YHRuC1Qf95R0NSjRTVKNxOIoUuuy6ipWSlJMHZwDysyA4QpkUBF+IFvuCIDPwAfsVVmVvc9hcutbjs7EArA8WcgkE0mW/XvVVWs2/5Jj+bdc/LlFUTEobe6Tmw5VU3bSk4OzLMn9AITLVnLddW6s/KRn5ybeTGFezuLHon3mp5RLdQ5zshPv5Aga5N85T+Gh+DhCFBWq5mcsczURRL1v8DNCdLAkYiqOs/Vi/BHUWZp31N4gBPnoUy6ZFZZnrg9TVIZPzBs3EB3WWODfxxxj95MULQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLjLaDLWSsW0qT/PTe54e8yZ054k0shNTCkuj3ngx5M=;
 b=URyR9qMfVuKf/qwcyKwraXM6dzB7FVHNl76W0nN1ckgyWjLmW+PIA4m4rCCq2EAqe98sFqPygiWGZuIMG8JV7hZGRC04kJpiNu41JmX07ozpX7xZy7VkzEUu7adAjEBhyCZ1Vsxrbk89b8jSGaARxOrhwyYU8bDMVN8tnz1LapSbISvGUaMnzcjEctwtLtcvWbS3lkJG7b4RpQ0KbHb7j741KpBMeBPP9J5z76C6Yo53rUqU6K0oAQMUl1optLWuLYnde/PPK5vF9AT7Y0IKz4oGp5tGzW6YsVaN9b1u8dEsGTAwA5q3RhMdBDknsGuDFj8UHMysk/ElB08Hc4Qmbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM8PR11MB5637.namprd11.prod.outlook.com (2603:10b6:8:33::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.24; Thu, 19 Oct 2023 19:19:44 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 19:19:44 +0000
Message-ID: <14fff2c8-010a-4fc7-b1eb-7af85e3868b5@intel.com>
Date: Thu, 19 Oct 2023 12:19:42 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231019163721.1333370-1-ivecera@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231019163721.1333370-1-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:303:b9::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM8PR11MB5637:EE_
X-MS-Office365-Filtering-Correlation-Id: ef99838e-44b7-49c1-b537-08dbd0d85a14
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t9/xWhL9N0BQ8jcdPt9vZ3BswjfWggXaTA6S+TaapabanXoLRG5upji4kOHzpi+bFHWCsiOChwhXucjNCmHZiOQpztZlXlshcCJ6TX1TlWAIoSD6vF+XP9nNECB6OtuSDU5vWVYSL0f3CT4okzbgDkwq4ncyBu9tNIWOiiuEuf2siuf7gmFeRAooXlrWiaRmUsU0sE3mKMKNY3XUhOKI5aB44O6MW5HP+YMVsINTFX9YD9WoVku2GZVVvoKKYMqHWFCICQaTagX2iqFx0uKzUzNQfkokBW83QDNcwMD6Rf7l/HOGifyXXXQMBVMjxQ4R/InMogEhvgy6yzsePUAcVpBLsGqe1kopfqvlGRMqe2Y+2ng76w0o5FO41WbqnTgKZp8LOf0j1hioX6HZuBth5j/empMl4i3xXC8NpWZeHk8MgcwSQXr2gCH4TAPiI2heZes+AESVE4UHVNxnXh5Dr+SKd+HA+b5WwXHQwDy5PbsFyaO2LBpxo4xnD4zA14QuxqfBdrJ9H6Z7/mA2c5XDlzTI2UsgtVLQPs4l7d3/dMVTVZ6XLckcqXkY+in/Hdy+g7GR52+J/aBJVTZBlvvi8o4QwL2FUckl5jokIfTrSoMDXUnXSo0N3+wK23cokkI7u5yuSWkld5Lwzs/DDbcXnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(366004)(376002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6486002)(2616005)(478600001)(66556008)(66476007)(38100700002)(66946007)(53546011)(82960400001)(26005)(31686004)(54906003)(6506007)(6512007)(316002)(83380400001)(5660300002)(31696002)(4326008)(8676002)(2906002)(86362001)(8936002)(41300700001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1R6Y2p0c3ZqSU93K2k5V1JLMXB2YjFtMEV5UUE4SWhXQzVYbkhtbkJqOWF0?=
 =?utf-8?B?OTF2cjBadHdjczk3clptcDJuNVhKOGt6dk5lZjJXbUtSaS91cG9hazVLRlpH?=
 =?utf-8?B?Ulg1Zm1lY2FXMG1hdXRJVUVpaFJsZ0htYlFHellqMyttUzJJSmJ5Rlk0d0gv?=
 =?utf-8?B?eDRpalR1UHVzTnV0QmZlTHJraFpJd2ZWaXVtMEpaZDluVG9tTkRPckR6b2JX?=
 =?utf-8?B?c1A3Z3d6K29qbUVDazZXd2xSWWt6STlmOUJYZ3JtKzAzREhNM3h1UWVmTW1H?=
 =?utf-8?B?ZVAvS2pHL2pIbjNWaVVoamJydzM1UFp6NDNhNm42QldrcGZDSTZzY2xrOHlG?=
 =?utf-8?B?Q1o1d01jTEtONjhKbVNhV3BkWkl2KzRvTjlaSHhid1lRbWlyb1haUnNBMzVv?=
 =?utf-8?B?eXdVM2x1aEs4dk52aGhnWmtkN3FsTU5ycktHUkVlb0s5OFlRZXR4Sjh6U2R0?=
 =?utf-8?B?WU9QRWZKc2M3dkcwV1NwVkJkWm12U0p6REhuQXozcG94SUY0U1Q5eGFPOHlq?=
 =?utf-8?B?WDZYNzNTaVJ0R2x3cHpkR29Idk9TYmpqa0VNV2V1OEYxUlZnMVA5V3lzU1V1?=
 =?utf-8?B?NHlXM2JaOUw0d3ZWc1A3NXNxMkVFRDNxbFBMaE9wd0lkTEhUYjBxM3RXK0F2?=
 =?utf-8?B?QmJLZUpXRWYvcmV3UGV2T2lab05wQklKMXk5SERES05kR0Mya29iRHg3cE1a?=
 =?utf-8?B?U2cxakZ4TlU4KzhsRjRuR1h0eGxoeWxZTHpKTHNmSnlvdloxZHhxL21tTXpM?=
 =?utf-8?B?MCtRV09xYVpzMFU1MnFkWDZJVC8vTUdoTCtINkNxZCtRMy9PTTVWMFFXdHNB?=
 =?utf-8?B?aGNucEdyOWpudkdRRVJSalNBRWY1M0VqditoR1p3N1BnQ1kxcFZpeDg2cE5W?=
 =?utf-8?B?eVp6L1FPbHMrMUs3S25UeUFKZ3JPTnhVNldVVklxb3FFNk5LSW05VDlJY3VR?=
 =?utf-8?B?UUcxVXdlQzByaGJIU0JTT0d2RnlialF2QnpjNW92ZVVSRTVYYnU3dThlejJs?=
 =?utf-8?B?UzNJQjdFQUVWYThZcWRoa3U2aHVrRlVQbXlodEZQbmRKeXFLQ1lsZUlMYklQ?=
 =?utf-8?B?eUR0T2FWVURjNzdmZlRmTXFwck5IR29jcDJDQlZRbzg4bDdtTEhSMVpURThD?=
 =?utf-8?B?elNPMmppU3l1LzZBOFRKQ25SY0UwOFprL3dFalZSMDlIU3dtWUFXVkZEbTF1?=
 =?utf-8?B?R2NRT0hFeHlKVi80VnFNVlRNb0hWQlZjd24ydzJpUDZwRmxoMHRRck4zMmhM?=
 =?utf-8?B?OTZGQWZWbkRlVmpydEt5eE1MRnhxOVo0OHMvRmNuT21HWXQ0REhBcy9UOXMx?=
 =?utf-8?B?SDYrVTc5UlFWSU13V1pXM3FLR1ZES05oRS9HZWpPUHFEemNRUSszV3FUUUFu?=
 =?utf-8?B?SmZKd1FLOWhmUWRCYWFNN0lZZzM0dGF5QmJjVWpMbnNYSHFnam9ibnphQU9V?=
 =?utf-8?B?L20zU3dKbjV2TU14T0hhUTM4dUZlOVc3UERZcng1dEhrb0FNQURKQWdpQmRM?=
 =?utf-8?B?QVZLeStrK2VwVVRYOWNQaEZrbnZwaTc1RkZzZUZLSDAvWE10aVh0T3hJeFc1?=
 =?utf-8?B?ZDNhQW1VZG5YWFhnLzM0NjdXeFZQcEhNK3ByV0dvVUhvMHdiRzVWSTVhOGpI?=
 =?utf-8?B?QVJ6aGpZVGZDaUlVNFFyUU1MOUtVMmh5M0RWd09RWE5pQUdNVHZwVk8zSFBZ?=
 =?utf-8?B?VnpzWDAvRnVKb01KNlhKd05BRDFLWkc4RmlVS1pOUDRwbkVnQkQ3S0ovOG9I?=
 =?utf-8?B?cTNrY0kyV3g0eWlEdm9MaVRhek9oR25VZS9xVU9BRXgwSUZFYldNYTIwZGd3?=
 =?utf-8?B?dW8zWE9MMzQwb2krR0JzTndGdXZPWnRkYmc0eWhPWUdaalJTd0dza0hoa05G?=
 =?utf-8?B?a0xMQTBYT2RiZWNxYVZRbVk5WG4wL1N2bytKMEg3T3g2UzI2VWdqQUpoR1gx?=
 =?utf-8?B?ZGhGMzhMUmU1ZG5rMHYzUk0wdS9ycnhsMVN6SGlrakpXMnZXRDRwM3FaRDln?=
 =?utf-8?B?cGg3S2VoMVdGNS9ZZnlibGtlVjE2UGtneXVmSXNSOGlrMVNCVnZMcmhFREJs?=
 =?utf-8?B?dWhlVW1QeC9CR2cxSHpGWGxrOVp6NHRwZmFLUXd4UW1HTTZjdTBhYkNnWXRG?=
 =?utf-8?B?NmpHNXJCS3Y3b1pobGlxUWRyZS9JbHlWSTdCaENJTllQTHNFd3pHSmFEYU42?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef99838e-44b7-49c1-b537-08dbd0d85a14
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 19:19:44.7122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FFPEx/kc+hA7cwoLcHqeo1pwEbVcUiYDh/cgUwLiZIrc5iD9rce1nlKzrPy7t6776/vxJZ9SotcGCE/i0eHmY7PnSMluLT4F6C+gUCRgEAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5637
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697743546; x=1729279546;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MqlffJ6hIy93cVgO2S7lbQiCPhmX5DjnfT1jrdeg5+k=;
 b=EKoDRy6ynRCn7hdxv6D3rIPxch+YCsAZQbl+Ob3qvWEkrYXBMelBUtXv
 8uqxFTxuP8Dnw9HRt3wRMtV84GiwvGTOvtPRNPI4pVN+dVmBBnMXjDZTb
 0BSAKiyZjigMXBqyeNt3vTJnqVenptkDQhOtqwAnn59S7iZdKFFBJQcOd
 Jt5ULI+vSyXF8PS2M54+v2Y4WSwA0RBl8xTr65KjrMD4DdkPITCFlzDCz
 Su6l3M58z3zGRH28VqYp/madZHnSGzTgNsVehTVPyMY+FRHlz04my25Ot
 LrRwIhabP3thBoNoZj2BzfXty5+vdd9B/bfOQbQzxj05GCbIVk78j46zr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EKoDRy6y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/19/2023 9:37 AM, Ivan Vecera wrote:
> Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
> PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
> existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.
> 
> Move the affected flag at the end of the flags and fix its value.
> 
> Reproducer:
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 link-down-on-close on
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 vf-vlan-pruning on
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 link-down-on-close off
> [ 6323.142585] i40e 0000:02:00.0: Setting link-down-on-close not supported on this port (because total-port-shutdown is enabled)
> netlink error: Operation not supported
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 vf-vlan-pruning off
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 link-down-on-close off
> 
> The link-down-on-close flag cannot be modified after setting vf-vlan-pruning
> because vf-vlan-pruning shares the same bit with total-port-shutdown flag
> that prevents any modification of link-down-on-close flag.
> 
> Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Cc: Simon Horman <horms@kernel.org>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
