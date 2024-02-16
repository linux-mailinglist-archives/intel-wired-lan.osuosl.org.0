Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D06858876
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 23:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8601741CE1;
	Fri, 16 Feb 2024 22:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7akDwDTk4LGW; Fri, 16 Feb 2024 22:26:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99D2541CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708122391;
	bh=y8T0LkoedWfxs8qOZpDdj6zenR5/hpUrsCJbwpGfqMY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SNV2r9LFgeWYT+cx7RJhuzvUbA0yzlwS2IzJhrWVyQ6yIw2cL+mbfM8GM8OIO54xP
	 H2ugElYojmrRZUNARTUG0IYjd+sVSk2YTS5qQU7VskWFQtYdn0HtXaPGlUnK5aoKNM
	 6JDU7/3dxO27wGYsIRTZrdTQQtEy5aZtyiElHVGXz+8CAzY0bmisOYMc+MKyteKRks
	 m/onA/JM+TmkrmdhoZl48Qsappe9Q6iBCJnkNizpac2i7VLV90llYaPPxTkjeqA7Zt
	 rw0p2mWslIAWwvgpgvWWD9aIkxurLcL3bYGEE27wgto+hRIXRkusXywyDgIYRPBE6x
	 SC/0NlYFUoTRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99D2541CD3;
	Fri, 16 Feb 2024 22:26:31 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49ECB1BF25F
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 22:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 346F44011D
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 22:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVhJMSVEkvSY for <intel-wired-lan@osuosl.org>;
 Fri, 16 Feb 2024 22:26:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9D7D400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9D7D400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9D7D400CE
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 22:26:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="13662010"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="13662010"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:26:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="912433695"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="912433695"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 14:26:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 14:26:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 14:26:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 14:26:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LQyV/vwUwNnlC+nN73MenUSIUOIg2JbxDsIiG1453M5uC1WKuZpUehYAIc4nwRpVJIR4EA5a6QgvFJGYOp9yL7YAl5gb4uezi3bfUj8KMbP7tRT8EPwcO9ARdoLchQttHkQVRy+JaYoQDOkUmBuVgZTnC4MEtJUcuxg1QUtuj9DGLJVqvX8QZeU0aRCeV2hMkFq2vW8iknEJDHnBTQV0iZcmQGsP4cP6HtEnUOY/bsM/xTsJ5EdExD8q8VISx/wpfLkDTrI6Gv/FcFSoE7mfEZUayLgRKMoykMh/OxjEFP/lkXUOaxf1OXKFNwTl8EG03XuhpsJyWT8IRyBedw19aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8T0LkoedWfxs8qOZpDdj6zenR5/hpUrsCJbwpGfqMY=;
 b=g5IHPrbJhFF5vvU55IwhIph5q1yXcrvpRPzQBqNYlhBpIEGYWCi9WUJTG9sXUfdUgNXw0+87aRfXa/kHG1v61UId86ipsZqo0ecAMIgLrbg8zRT5DUgvuaq7haA7By9lcckTyyy+Ms9VvhalX1BWH6UZ0+gRMNrR/q0SrDESKJ5vblO3S2hM9GnFK9cP0O6OB4sNR0G7+CusNptlaw0kyXxqwoAXX6tYP1uTGpUPizb05rlo/m9/yOj2hdGvRl+GAYhfrXne1HRQcoJ/8A6BU270mjGPoe+dzs+mDx7ilP1qJ2/EqqNBvJRydkNWFVIgTx+qkouFBxpkjIu7kAi0dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH0PR11MB5490.namprd11.prod.outlook.com (2603:10b6:610:d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 22:26:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d543:1173:aba6:2b77]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d543:1173:aba6:2b77%3]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 22:26:23 +0000
Message-ID: <3432f3f0-b4c6-4717-932c-3b76f487cfae@intel.com>
Date: Fri, 16 Feb 2024 14:26:22 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20240215220101.248023-1-jmaxwell37@gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240215220101.248023-1-jmaxwell37@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0222.namprd03.prod.outlook.com
 (2603:10b6:303:b9::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH0PR11MB5490:EE_
X-MS-Office365-Filtering-Correlation-Id: 60277511-44a8-441f-89ad-08dc2f3e4e93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M93Nv0moETG4Z5or5zDLwZT03tNE3di57PYAhBblDEinc8T6HK+PPjF7dFZN7h/sXexmR79ml2kqqSc3D+NUyU3us3TF5fV1WgK2c+ly/ohzk3eGd8l/rlwHvHbXgaKuBKftxR9tvWkDv1+vmkVXUGZ1FIDlKP9H94JDFQTcKp6A1wUS0kAlVKNs3lGdjvkod/31v86kfCO78p1D6pd944Nl3BN0Xyi0JnGojSTK2Yf6L0csTZItEQnm3LNF8OjFrHPlEbukodsv2PZso0chnsn8YqqbOjLCx7CQF/z7Vh4oUBg6bKdgphJKzuSRkIpOx8+fp0CFVIXvMYgveNFF7n315k05hz8JgmmX4+4IaCbymTudL3FUGzPm2SJotNv6q7b04hPp9M+A5myXSXH5YfJTm4uSYhtxNHtST/oXOMBYrBNwByEuffNnIyswprIlnV/MSI4axwcCAlfNc1D69hIOgU2RJbV8EOg6GGMFJr1EQIaZ8ysmMPv4ed0X6wOtAsI/vZ0PHJYnkm4bjm+uFIPezNTucIWXyJESG7ji50KuuEBtnJwV43xItRu/syhF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(136003)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(31686004)(478600001)(6486002)(6512007)(41300700001)(2906002)(8936002)(8676002)(4744005)(5660300002)(6506007)(316002)(66946007)(6916009)(53546011)(66556008)(66476007)(2616005)(83380400001)(26005)(86362001)(82960400001)(31696002)(36756003)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTgzQXREbmZsOHJLdGZIQjJ1ZDNqSTNvUmhXNU4wTHRDQytkZGpqNTFlR3RG?=
 =?utf-8?B?eVJFTTJKSGwvbHNQOVRpNnpERUhPcHc0S2xGWG9UNkxuMzJMZ25oMUNvZFBi?=
 =?utf-8?B?RlVxWWY1R0hKaHUvMmQ3MDJwUzlkZHlrajFsQWd4eUhXRXM2dzI2TkhjK0Nj?=
 =?utf-8?B?SlhXUGpsOEtRdjU0ZzAvYjJsSWJUeFdiK2Y4MC9aYU96MlM1VjAxaFVOaXVm?=
 =?utf-8?B?YjQ4MGdFcmxydEpXeEZyY1hhS2ZkRG04NFBRNmE5RGRsZ202b0F1NjNVWFRQ?=
 =?utf-8?B?OGFJazNDckppV3psKzdKYnltSXc2M2IwTUp0dXRyZVE1VWdsWDVYVTFzV1hV?=
 =?utf-8?B?ckdxZkJwRGZCdlp6Y015bXhmcXQyd1RuUkJ0VjEwVUVuYlFEM3Zsc29KRWwy?=
 =?utf-8?B?Z0dHRlI5ZEtRU1pyRXpUdWhoeDA5RHJvai93THhobkhMWE5IR0IrMDNrZGFS?=
 =?utf-8?B?MlVUa2hlSFFERWMrQ2tIc3E5UVZUbGFKRFFVaUNmalBmRC9venZkMENWVlgv?=
 =?utf-8?B?aWN4KzkyZjkwa2VkVnNUemViU0dpY3g1K05XcW03YmZHTTdJSlM2c0VHVU5D?=
 =?utf-8?B?cGlpbk96RFViQ2drbzZZOUdxc2FxNlZjcWNzN0dGOEJ2OFN4OXR2Yjk2MHFQ?=
 =?utf-8?B?bzZvL1IvSTF0Y1Z2RUJ1R3d1V3lYaGpOOTBYdjBnZXAxdGJadjhyNG9lNkph?=
 =?utf-8?B?OXRKeXdTcThEWTJBVit4a3R6YnY1OGpsNEIzZkVwYTdsVWxjRVIrNktob1dk?=
 =?utf-8?B?VHg3QThCTENXYWJ6d0gvTHNwY3d1M3ljb1FhbWRtemVxZ0pKZk53Z3N4VGdK?=
 =?utf-8?B?NktCQTltd1RGS2w4b1BwS1A5enZtOXNqMUVHK281andsK1JYMllLK09QTDg4?=
 =?utf-8?B?cnVwVk5may9FZjFnSVJGUXQ2UWZuQWtXZ0E0UkpjTTdDeURYK3N6QU1mZ2FL?=
 =?utf-8?B?VW11M0dzL2RSQjZ1SU5lWFFIRHR2YlY1eVREdTEvWUtwV1dnYzU1TjRSRFgr?=
 =?utf-8?B?SjRCdWJNdXRzTG16Q0xIOWdWVW1zajZNYWlqa2JWMDg5Wnp4ekxndTk0UEV3?=
 =?utf-8?B?aUxzVzIwUUdSNnV6L2ZjZzZlN0RHNzh5MmZZT3pGNmNvM3paWVhOR1NCQTZ5?=
 =?utf-8?B?bzk2NEdXb21xUkNTZ2h6U2lRTk9ZcW5wclRxRkF1TVM1dWVRaUhveVpHdVlu?=
 =?utf-8?B?ZFlJMy9lc25KTGR3d0syanF5UEc2alExb1ppNVkwcnlwZzlpektTaGF3WVVl?=
 =?utf-8?B?YkJVaWN5ZkZLNTRWOFlIQnAzQjZXZGdRd0ZkR3BkRDlkRHR0b29ObG1sUXJY?=
 =?utf-8?B?V3hNZFJ4WmFrNm80Q1pHN2QyQTR3cU5LZmhzc3Z4K3FGZGVCQnhZUm1uRENU?=
 =?utf-8?B?Z2YrYnUzbFEyelJ3K2NIWWNDMURRNys5TzNMNlBqS1lYTFRodFU4Qk1CVENH?=
 =?utf-8?B?K21aVmV4SHBva2d3V01rMmlqZU0rVEliWTlDN1ZpelVpczk5MzA4anFVSUxx?=
 =?utf-8?B?UGdCeHp0MlA0dkNsdExya3hleTY4SElENjloQU9PZStFWXg4cGZRUXlWNlU0?=
 =?utf-8?B?NnJ3c0svU1FNS04wUEVURXl3aExqWTMydWwzc3B1d1MrNG1MOVdpcDRwa2Qx?=
 =?utf-8?B?Z2NtUi9Ma2dJQUFUdVJBSzhydGpQZWRLRE9NRG1EeS9IVTZuNUZOMFp3RlF4?=
 =?utf-8?B?U25qQ3ZWUWVRaklCblhiTWJHVW5DcTVJY1FFSDF5RTk4NlZERUlOYzRvU3lt?=
 =?utf-8?B?SGZWb0VobkJjR0hhWkZtbFRKZGNkblZRb1BEdE1TQnBFUjBpaTBWUnEydXFW?=
 =?utf-8?B?WWtzbzNlTG5DdWFvTGpYd0E4cVdISHpEc0RHbGFDK3lpbWNhVVp0TVc0bm9W?=
 =?utf-8?B?bUlzbitDb1ZUcXdNYnRRTkM3Q0lrdytiQUt1M1dzTVErZmJBQkEzWEYwSEVU?=
 =?utf-8?B?NDI0NDVZZDlQVktGcm1sSnd5Z2V0V2RzY2JGLzZHUno4eEE1VVZpb0locGpU?=
 =?utf-8?B?S1VMNXA2NFc3YWEwbDZWMmxSQVZrc2FVR0FBVE1jWlYvcG9aK2VhbE9aVVlj?=
 =?utf-8?B?ZXBZRlZHNjE5R2pxMXcrMjltMHJ3eXZPb2RvWmlaVCtMUTh3dUd2bEpsVlVp?=
 =?utf-8?B?VmNEdVpmL2QvMnNSdjhMSTlSdjd6TytuZzVoOWdHeVlWTUpyVjZTMjN4TEtT?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60277511-44a8-441f-89ad-08dc2f3e4e93
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 22:26:23.3367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4n1keOINbqcoAebbZADn5ob6C89TjrpgkizUCdaltN184FAX1TcmtQIicavjmbx4TFQMFQwM+e62atLjA/cyAAOoX9uvRUHUHKHRGqnYgnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5490
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708122387; x=1739658387;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=a2z1hiWslksPZLnYS0s2nQ87QeXoTeQl8a47BOwaa4c=;
 b=PxGQLsxOwxzpmJiO7kb949dasT2HwzFrwyFUSB1OblMGPHqS7U7/lRnL
 HJxETlfVAUKkr1eGpm/CuBr3/jLCu4GB9VIQJaL4Pjl3bmOduBOWSCPFO
 dgQGmY35QA8wrpnyCFcyC2A+ZupoeIWnp3ABVNIJZ8MVIF/WfdgM+hXfa
 MOxgMV0V9588ypBzmEvoT37QI9KwNhkgzFZjIN+lHVpzDKcHDw+IcPoP8
 LGvlWvwukWliwBeKF7Lf0Wv3/QzRQ00Mv7Ta/4l+uu0fx6Jwhebe4lN2i
 2g+47p5VOHvaBrtGwmFRhWvfDLAJQEbJnXSrOmx+BoRH28+bynpnrliFS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PxGQLsxO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v4] intel: make module parameters
 readable in sys filesystem
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/15/2024 2:01 PM, Jon Maxwell wrote:
> Linux users sometimes need an easy way to check current values of module
> parameters. For example the module may be manually reloaded with different
> parameters. Make these visible and readable in the /sys filesystem to allow
> that. But don't make the "debug" module parameter visible as debugging is
> enabled via ethtool msglvl.
> 
> Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>

Makes sense. I hadn't previously looked closely at the definition of
module_param so I was a bit confused that it was this easy to enable the
parameters in sysfs. Nice.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
