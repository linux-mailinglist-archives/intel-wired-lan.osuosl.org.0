Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B818F6AA591
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 00:23:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4447C404CA;
	Fri,  3 Mar 2023 23:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4447C404CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677885826;
	bh=1FudtCfuoNqHBW4n0xognDPQDJMePUSfADbeZNBxgYc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iU0CSSYPkhFza1Z51mO8l7fPZJ2EOJlb3ZJXhkFk6RFljghUi4TdhRMQzMzc2/HLf
	 dvH+oJdkCBQbgk7PAPO+ETj2dUvLE6rUWD5lZCod0dseGXkQJz7QyFXHYkC3Xc5wFi
	 aaHakjmYGiTc0Ih3TogYVFWVUv3T5GmIS6dO/VMAKKSOlrHQ3qO8F3RqO5ix+8lSxl
	 jRhkDzPsATflzRrVP9zyALhDHdn3AtZJyaxOW69hq8Y4eW97I+pwFXi9r9/oI3JWTp
	 4Jjlf5H8PX/j3JcEUDkaSK5hbwnw9CERib2Had45x8nnLNKZQjzdvvKALs38FTOU4D
	 9pu0T4flCpxhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBERaMCM7uA6; Fri,  3 Mar 2023 23:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D1AC4012E;
	Fri,  3 Mar 2023 23:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D1AC4012E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57FE11BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F03441A35
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F03441A35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2rBpBLTfQiFO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 23:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C89341BD0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C89341BD0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:23:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="336702112"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="336702112"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 15:23:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="675536819"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="675536819"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 03 Mar 2023 15:23:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 15:23:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 15:23:37 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 15:23:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WXpxRzKdAu8ujNgmRDoc59ok/DPMXB9DWvynOV2ncDiqryn3oCg6oN8QpxSfIOYlMljWSmYq1CMiUi3Fi2XVCwwXe+JCmJRaxkbldblaGPqH6BoYD76DNHPQiROg6SidopYEotcMca076wUvBjqRoJQ0scfV6+4xLvLtcKEFmo5m3vAEcB+kMJFPOmHJfIULuvHinnNGyetYLpbZvy0smq8JSWpbLcDRIqsDZQI5DPwGECcm5OrAe+rn7vle0VK8ePy+ptUOSnRVxHPALmth22vmiPawRVxjLPL7Tllq3fwBygHuRV6scCnEahgHBfRnrmWu2A50hRut282c6v3emA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8POVWy8vX7zAf4CQxRywAtBwochLroOmF5FL0BUujI=;
 b=Hv9Y2QJO9UzR5vl0+b+lz0O0VNGt9vc9gE4CT4dlwmwbZ/7kg1c0lZEtbc2rbaqqMdnhfF0M3F168G6IZPnW405kiHFauZi7ixM3OVBK9UstfMsHwpR9WipzJtalkGJ5P6hUpQ6XzaKWoYe6/TCAemigUkbqDp7+6Bpw7NcFceINZ2MumvOZTqT2IotlIdgJ2HHgRX1Y9PH2Tosw1anEUdLZTupY0jKuquzJcsoNCaVhQV7g8feTbLUIqY420qyJmVolGWAL/GCe+CXE5ifMw5TsPr1JeMXVhjXS5736vnCbfaQJYHSHAPq/0SYRUv6suFHR2VdyG/oYWwoKXUwfVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH3PR11MB7179.namprd11.prod.outlook.com (2603:10b6:610:142::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Fri, 3 Mar
 2023 23:23:35 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6134.029; Fri, 3 Mar 2023
 23:23:35 +0000
Message-ID: <5aaa7525-cfee-225f-940c-78d646484c6d@intel.com>
Date: Fri, 3 Mar 2023 15:23:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-6-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230302215109.124-6-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BY5PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::40) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH3PR11MB7179:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a58d647-4217-41a5-053b-08db1c3e4f3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bqkgbs8AJbLut+aZunq/3l5FpQghf0W9Zh+nnuuMA++ixL6yiAMS28B9uheaydABc8Eat9tOIjTYpaVBfvZ+TsVVGzjQjhFt9twcQOlKE7QoUbMgAmIm7AtOc/i30u2ADSTJmn4MTmhsf6u3L5xX7bJYLikNwqPHJeMohVaAPuDYS4npoV7M8QzI9JHrh5C9kUO7fGDqWLBYyufCBtkkNyJffnEd7KCoQN1KYIvu4gEb770TfNgU+JFAhf3ZM6ET34vobLy+1DMqaw9qyE7uTJeu+5hBoY7SwtxGfA+jspZQDtN/3W5Dh1t/if9XdFY1yiLiychCPPn3F5FqaytUnGjYJgrvDWpEsT+ELEWwyUGlbpZKqgA90A75bOy62g5nCy7naYAM7QlWdJ4wP8o4De9Bv89MaScTouJDyT19WZMPams052IRzvFvBkmiq2B0DzFfUS2BbDJhAu05wDhVj/LutFAOy0emakGArm0hEsl/b9sNC0v/DmvNFD0XYLUEaLZzzuZ+YvBZJ0vE2b9I7PIfylK7/w2Gkj6pQJjunfpvt8wggpBtx6EcbOxZcLS5n+Hd9klWcfQt32rUPvu5TD5QgCQO+Y/G9yLEZ4fRbV4LS2UvBls+b7tkDRQOE5fAGyyNIb59rPcrp8sAdS2V1sbr04PEpgInfYqwZogU1RZqfZeSC7MllpKROzOvya5Qcolelcwon8CHdG+00cjbsg/8GOBfJR39uOc1CaRcNuA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199018)(83380400001)(5660300002)(478600001)(41300700001)(38100700002)(316002)(66946007)(8676002)(66556008)(66476007)(8936002)(2616005)(36756003)(6666004)(6512007)(6506007)(53546011)(2906002)(6486002)(86362001)(31686004)(186003)(26005)(82960400001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OG5tbWZzcE9HZTZMVnpOQU5KeDVMcFJNeDhOY3pRbTZnL1huMDNYdG5hN3ZW?=
 =?utf-8?B?YXBFeVl6c2tRUFhpeGM3Y0RNZ3c1VkUrNnIyV1NUdVdGbFRoSlVocnV6QXZB?=
 =?utf-8?B?MkxzVnhtVit1S2RoZjU4OGwrTUtieUpGRkZQNms1aitRemtLYit4c1Rpbm1P?=
 =?utf-8?B?emp1ZHJic1h5ZXhBUk1XTHVzbHUvL0ZKck1FVGlYY29ubC9oM3czVG02Vmdw?=
 =?utf-8?B?SFVmNGowRU5EOE9pejUxTkZUL0RRRjNyNlorMkhjT0RuQ0M4bWJiNEs0dDhK?=
 =?utf-8?B?ZFpBKzBsSEgwQUlqdVdNNFlvc21xL2phWi9nWEhVWnVoZVpucHphV3lhcWx1?=
 =?utf-8?B?Zll5RysxTDJ2WFh0bHZWZVU1TlVXVy9ORkpuc0NOZmxDYTlRNGtlaWVrNFl2?=
 =?utf-8?B?aktRd3pWQ3lLRzNWN011aFVlL2JIek1YWVUyR2JkNHVjeTNkUE5mRk9WUU5F?=
 =?utf-8?B?clA4MmdrTlRDQWxZbk5FNVZ0ZlBmb2NUd05rai9DWEFMQWFmTkVGazgvMGpR?=
 =?utf-8?B?aXA4RVJMNTh4VlZNU1MxY3lSaEt5OUk2VXhoQlNqb3JmZUtFWU9yNkFFckhS?=
 =?utf-8?B?UTdLWVIzNVdPWE5YT1c1RkdUaDAwUmU5eG5kMVVQbXQrRFNVdkdnVWhpa0Nk?=
 =?utf-8?B?N1lmSGpRalh3SU44cGR0TFR3SDZQc2k3S3ZNQ3FpdHNBSzB4Q3BFME5LdjdF?=
 =?utf-8?B?eWZjV09uL3BsWVhja0xXaSs0eUJMc3ZaOG9WQkJKNUJnZElxTGxmMFVPeFIz?=
 =?utf-8?B?V0d5dTRwWlRpWWJRR2Z5bXFSRUFhMDRnVmdHUzFXTkQ0cHRVQ01CU0V0dFJu?=
 =?utf-8?B?K1puQVVOeGdiTUQ1V1R5eXJ3c3pXbnBlQzRJQnU0S0h1NkE2VGY1V1h6Sml4?=
 =?utf-8?B?QkVINDYxTkZhNkR5akw1b2hDRVZ0eTZMNVhNNTBTZVNCOW1MZGloTXUwcUZO?=
 =?utf-8?B?QlJoYjg0THlRWG9pbzhWaW81dWQyTkhDdFErMXZqL3B1OVlzYzlVRUxmTHN1?=
 =?utf-8?B?cmlBUjc3SWZGZWRnaDhhZWQzUFRDS21ReitlUytLWEJVS0JrcEVxN0hTRTdJ?=
 =?utf-8?B?UWtnVG9zTldzUExKQ0h3U1BCOUU1V1ZOMk9XUkYzdlI3TTlsNTZUT1hhTjF2?=
 =?utf-8?B?V3BpMTJKakxrV2VlY2xpNTN3dlFWWVNwNVBiWG5sYnRtOTRMWXh5VXEwd1hl?=
 =?utf-8?B?VjludGdtZ1psb3c2TDgrcGhYSjVoS09PMmIrRVkwbFdHRHNYeTJLRXB1UUhP?=
 =?utf-8?B?dHZiSC9zVlB4Q20yUkd6VTZRS0lOWXVtclFCSFhGaW90ei9jMWE1STA0bS9n?=
 =?utf-8?B?alhDNG0zMWJ4R3U2VVVvV0d3WWFsOUVETnM4dFVaM2UwaHNyekJybmhhRHhj?=
 =?utf-8?B?YTFxc21wb2IwU1F1L2g0emRDNkU2bU5ldlQyancyQXdWbi9Lb2lzM1NwS2Mw?=
 =?utf-8?B?UDJmenZBWHk4bDE0dTVyVllOczRNV25SWTlNcW94eVZNNWl3RDBjdjdrSUFF?=
 =?utf-8?B?RGhvaHV3TkFvUkNrMVVPdVNzRDBlZHZCTDRlVkhKZ2VDYndyMlFxMzNkTDQw?=
 =?utf-8?B?VFkrNUZiTEgzdVFhR2Q1YXhhS0hMMlNmVGtHaE1iN3R0bG5oUkZZM1cyeHJY?=
 =?utf-8?B?RzhUL0JmQlducmtuVWVqUDBkTGxNVEdCd0l3NzRHTWtqajQ2ZXJiUG1NbjZB?=
 =?utf-8?B?VHMwT0NGQXZOcE9NaHV5TWZnc0hZZU11dlVOa2duclhmdFU4NTY2L3c0SjR1?=
 =?utf-8?B?eGFSaHErZU9DUWp1UjZ4Szl1VFJ1V0JxZENqS3RQZTVUQ1luOXJmNFVEeENh?=
 =?utf-8?B?OC9GUVhVS3pIWmtQVXJMaFRrSHVEcTRId1F0OVNjMHVMOXlFNjZ3aGdRRHBU?=
 =?utf-8?B?SGF4WnB1dVlsVjFkRTVQSGNZbE5IVlFsR1NrRGJBeWV1Y2dhWHVEZDRxb1ZL?=
 =?utf-8?B?azU3UFQveDRGTDA0Zy9MYkhVcjRLbEcxcTdra1AwTjk3NThPMFJ5Y3Z5bkc5?=
 =?utf-8?B?dWFEdGlKNElLKy93cW8yeFpFY2IvQWRxc0ZmQXpGZUZScUFHOWt4WlBRalQ2?=
 =?utf-8?B?aG5DYkU3amdMZkkxMlV1M1YvczlwT3FnRGwwK1RuWWN6SGwxK1ZYZXJDUGRU?=
 =?utf-8?B?Vm9iNzhtZVhFb21GWUhHU3k1YmRPNk9vRnRwNzVIMUMzYXQ3QmRjMTBYM01s?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a58d647-4217-41a5-053b-08db1c3e4f3f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2023 23:23:34.8324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0+/mYs8LbM3BKsj5BavlKZKmIs9obTFuVcYC7nVSX9DJIpBPH2QhiSI9gWGmBhkiLPkcfO14u9U5BeRGglZjX9vtXiE3SGjHRfo+Fux21sA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7179
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677885819; x=1709421819;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=foSlKEDK/G7bcbdkFB5pCmFWbxHfJD+eYQ25waKEZqE=;
 b=liphxzDMpZ0J52KMZmMEniPMUwqcyrVYMc214ugbMQzfl8/MRDnlC2qN
 7K42TxAFUifwmpLJiY/3K3ujU3DybQEpOouWsH17tMWbzaDv6DuT6WV5g
 fkrJf/LcjxdGHluSj0ShFkgdO2Skq3gNshUhrzHmA95XZ72IM8INsP9/F
 Vw0UBIc4ZBO+b3MHEgerYhm93PCw/kMGVk42+UVOy8WVHGYY23KuoN2Rt
 6pqIB5Gb1sgY5IoMtKOEAeao9TqqDbWRzDo65McsZDwJVs4kh9e947N3B
 9JydWM1b7Vz6131TDL9OYE0mkIevCZ6Qs5B/EPdTfQD4KWTpFLsZgz9Up
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=liphxzDM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 5/5] ice: add ability to
 enable FW logging and capture data
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/2/2023 1:51 PM, Paul M Stillwell Jr wrote:
> Once the FW logging is configured then users need to be able to enable
> logging and capture the data. To enable/disable FW logging use 'enable
> fwlog' and 'disable fwlog'. An example command to enable FW logging:
> 
> echo enable fwlog > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog
> 
> Once logging is enable the user should read the data using something
> like:
> 
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > log_data.bin

There should be documentation for this feature; 
Documentation/networking/device_drivers/ethernet/intel/ice.rst?

> The output file is a binary file that will be decoded by the FW
> team for debugging.

Perhaps 'by Intel' instead of 'by the FW team'
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---

[...]

> index a611e0d98bd0..68ab19678dbe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2075,7 +2075,9 @@ enum ice_aqc_fw_logging_mod {
>   };
>   
>   /* Set FW Logging configuration (indirect 0xFF30)
> + * Register for FW Logging (indirect 0xFF31)

This should go with the patch that added the 
'ice_aqc_opc_fw_logs_register			= 0xFF31,'

entry...

Also, the defines related to the command should be brought in with the 
command instead of all at the beginning.

(These:
+#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
+#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
+#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
+#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
+#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
+#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
+#define ICE_AQC_FW_LOG_PERSISTENT	BIT(0)
)

>    * Query FW Logging (indirect 0xFF32)
> + * FW Log Event (indirect 0xFF33)
>    */
>   struct ice_aqc_fw_log {
>   	u8 cmd_flags;
> @@ -2375,6 +2377,7 @@ enum ice_adminq_opc {
>   	ice_aqc_opc_fw_logs_config			= 0xFF30,
>   	ice_aqc_opc_fw_logs_register			= 0xFF31,
>   	ice_aqc_opc_fw_logs_query			= 0xFF32,
> +	ice_aqc_opc_fw_logs_event			= 0xFF33,
>   };
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
