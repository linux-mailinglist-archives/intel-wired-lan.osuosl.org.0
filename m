Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0F280969D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 00:33:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CBBD4225F;
	Thu,  7 Dec 2023 23:33:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CBBD4225F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701992031;
	bh=kdLio2A9Ia1SBFDj5i7VrQzk1EtTdjEPpb3F6SQpm2Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VXoOBd/I1tpQQjIPR/ICexmQSZ2E3OmqVB8Vt9oVKS7wt+tL1P+quxKkzDlUbRYbK
	 /QVgOHgH7L+h43OO3JIEkub1xpTs80E3IV9SLp/WqnkW658G9TUM/FP81QxT/Yl5Qb
	 wem3ISrpsyOyQeqm+zNmSxMb5diMCAt6tXUC9UCwqD28Oh4dg5eRbmjC6HifLq4zkP
	 wPY7BLR/FVb6fnzbgv1D9btYgrujQO/qlvsWG2XFBww2/O6WqtNEjLbvFclcr9WM2R
	 uH+j8gVJnC3+oOOOiIokqgzcr/2J4B6t9nKp92RF5J9qkFEAbddVhJlN8H4G0OCvOp
	 3Ex9c7FJnkxOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CKB4stjzMFKZ; Thu,  7 Dec 2023 23:33:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 047A64225D;
	Thu,  7 Dec 2023 23:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 047A64225D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45BAD1BF98D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 136484225D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:33:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 136484225D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qOJKhVmZ6Txs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 23:33:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16A4941FD6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 23:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16A4941FD6
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1405648"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; 
   d="scan'208";a="1405648"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 15:33:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="862664281"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="862664281"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 15:33:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 15:33:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 15:33:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 15:33:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f2gzSYoM9ckHif7Q+qcOUTrBWznDKoFr32ahKKsW9trjabv8O1OeZen2Tl68Y5vZKtfMwCo4EcB8C3U1sVqMJ1tg7dGTzPN7rpTKtow5EnLLxVIanFyP6tyrHyOk84FtGrLeVOO8xwmiwk5jkE6JdIH+wrpGT3/tZ4+88zFsSS7qrxC8/eq1/yMz/ZB5YJGo3aaCR1f+WK2UdusFpG5zSBfbMoBOZdFwrsEXwOCqqCZ145Sz4MSd9GhNVX+FhQq9/e/25dOgBhRZ7B0Ymm8/j5/VDO5O2dGuAe7owivUvrKk74tu+I3abTflnfc68eGNy4RSkTVfgGthtS+PqCqx3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XS884r9xYm9mqgGDdtTnSGG0PY/UFwGD3gSH7EJfcgA=;
 b=RAQTVzXEwC2srF5xfpIvySz/2tSXf4grKJBjhhIvZ1arcw7b3gz2hLE6qi3cV1cumfiQur3GaX2+q9eBhJP990ftMRwd0ngmpYeYzNyMaBvJu5Amooe1C+fu3LG+bc33ZA0CaRjOPjrt6u/+wA7ZRkvaMO6SnBmC9LLaZMFh7giQFNrM7QzfLXzTErgbHQEPJoE90qB4Z8dMZPmeTIGuRYSdDMmWvMmvGa2R+BsyoUB/Eel7HAuyFc3S6231tFp260ueOO3VsjwltrPoRgVx4fktH+jre0nhQ1bOKieUNNTYDiLOytoUfekIrhxoWD6tk42LKRL4oXUAcMRV/qpvcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7362.namprd11.prod.outlook.com (2603:10b6:930:85::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 23:33:13 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 23:33:12 +0000
Message-ID: <7033167e-406d-b746-1495-cc4d3b085cdb@intel.com>
Date: Thu, 7 Dec 2023 15:33:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231206104333.141792-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231206104333.141792-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:303:b4::13) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7362:EE_
X-MS-Office365-Filtering-Correlation-Id: af9f04a4-b518-4048-1ee3-08dbf77ce0f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KRIpHT5N9B8tBrW041tWsinUlqIrG9QJmYexlA9ssBfAyjORMIKrbzcYMb6otVYYtXylWLfhHzln08Un9w1WPEwPZd767bIHYKZymtW8W55LlBxEg1PygMVRjLbQR8NlbbpOHjnBFg22x4eHq0N3ord3IRMhsi0lcl9qZE0RZ2QsDCZ1MXAKmnBoDSB5aRTo84LAAhwpU/wjOgwriRou5g+m94us3WxmbGLaBsjHuUNLc6TBRDT7ymYbLvj/Cx3SL4tTIA/R0GF1nj55WlnInykDAGtKmG77ioJK4CvyIJjiVRLJNI9+F3QYO3p0vRBYuPMedagRZmmGOwmMGHRyXmgPxsXc9zlUgeXV4EmMsRpTnMDMxHQOW1zm4Pw6QE03JzAdNkYMiEbY9eA+ByJ5FR+uTmATSvzl80wWVzY/rF/n2VSmYZh3SXp70oj+r0eGU26U2VZ4D8opNTGWdmoU9ssNNa7F9KmacsNcSY7Let2UYR+Aocw/VfcS7H8plgKPWvWARdBkLeOAQtdCuYxCNGUePneFiVhkmz1ccnfz+aG38RzPlDD7dTxm6PCDLB8tjiVf//qznW+eK9q/NFjYP29fJair1tMJ0UR9uI0LAkddwKxXg+b6ZE2CT3sFF0Hv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(136003)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(316002)(66556008)(66946007)(66476007)(6506007)(6512007)(53546011)(41300700001)(478600001)(36756003)(26005)(2616005)(6486002)(966005)(31696002)(86362001)(82960400001)(38100700002)(83380400001)(107886003)(2906002)(4744005)(31686004)(5660300002)(8936002)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1hVTng2Z2hybXhnUUN1YWRkczRpbjBiZXJUaWNkdHR0emxxR0JINzZWazlm?=
 =?utf-8?B?dHVZekYxSUJiaTFlQkVYc3IvK0hiSS8vRHErTVJkTzV3SDlGOEczaWtXTnM3?=
 =?utf-8?B?YmJHZEF2T1Z1UVdQU3hFM09BYUF4SVhFSU5Ca1ZMUjNqRDA1bjdhQ2lHYUs2?=
 =?utf-8?B?MDFTM1oxZHRrRlpvWjc1YXdaOWNidWszV21CN2RpclUwRVZtNjBZRSt6N3R4?=
 =?utf-8?B?aXdpR3did2JPQW1DZ04xREZTSnpHKzJyYnQzVVZUNW9CZjcya1JuS1V0cjlo?=
 =?utf-8?B?REttK3VxSWdLQVkxTjBPUjg3dWxDWjAyZTMvL3I2YWJxSTNJUHRxN3lRYWdK?=
 =?utf-8?B?OU9DMDBxdDlXcHd6WGw3Vy9oZlVzdHBRa2hELzhySUxHY20yYkMrSGx5emJZ?=
 =?utf-8?B?Ukxvb3dDTi9VWFlxMVFFVXQyalpyNGVtc1hoNFEvZjRMQWYrSFhyU1JTU2FH?=
 =?utf-8?B?cUx6eWdNTHN4NWtGRmFBTWhacmFRTm1JdFRicFk5a1J4T2E2aWQ4eEIrWWVi?=
 =?utf-8?B?bFBMRHFSbGorb2o1WnhKM001WjA1UzA3OHBTM1ZMQ2hQdGhROE9Gc0hPR1g3?=
 =?utf-8?B?UkZYMTJEQ2x4RngvY29wdGswaGl4eEsyMms2dnprT2U1blprTHdsNzZDTjYz?=
 =?utf-8?B?Z2FxcmlMNmVNOHJuOEEvVTEvY2FVK3Y0VkRQbXY1TGg5bmtZVjNTcVVOLzJ6?=
 =?utf-8?B?V2s2Z0pMSUJRMXQ0b2pDQytNbG9kbTh6Yk9uYTdCMnJTQjFOZGlFRHZucWI2?=
 =?utf-8?B?bDB5dm5McDd1Uk1VMWJwSVUvMzBtcE11ajh4YmRpbWU2NlgvNExOTER1NHc3?=
 =?utf-8?B?eVhFWEpkQjZPK041NEJHbGhBajgvU0tIK1ptUHZhYTBkSjJFQktMUmI5a0Fw?=
 =?utf-8?B?SGVCNDFubVJQSkFBSDJ0Z2ZEVldvLzZxQmo0R3JvdEUvUnhtUkpCV1VKY0Q2?=
 =?utf-8?B?emVyZmxESHJJM2N2Vmx6MVpyTFVFNEdZNHNBSlJUaFJWQTBaNWhDRDNmaG9v?=
 =?utf-8?B?NE5PSXJlNDY1VEo2dE1nZ3U0WmZsWThwQUNkZW9XRGN0cDlLUmJGcmJ3T0E3?=
 =?utf-8?B?ZmZja3QybGtBUHRJelMyUFl3QmpxTm4wb2gxNkxVNlVieFZRSlRjZEhMWGcv?=
 =?utf-8?B?NXM2SjNjT1NuRkRZdGNlZUlraVY2eDQzSWFpZkRNL3NsY3hhNG9NYzhuM2NC?=
 =?utf-8?B?OXY1Q2hGaTZWWEY1V21Nck85TTJvWFF2azBtSWZnTUpxUm1HQ1d2WUdmdGQz?=
 =?utf-8?B?QzQvdStEN05lUkZMWCs0SitiMXJyTU13Yk93S0RLZnhNcXgwallEMFpxaEJ5?=
 =?utf-8?B?Q0JIOUExVi96L3FLMWhVNFR4K0ZnVFI4KytWN1hZOHBVQklwZWZHbDhGQkRB?=
 =?utf-8?B?OUxzOVJRdXV1N1lkZW9LTmJ0dmlqMHZNKy9xQ0tDT0JYMlV3cUJld3BYM0Jl?=
 =?utf-8?B?YlhFbVF1Vm05Wk9WNWRzQjlSRTloUk5CclB4TlEycXVBN2tPYWxnMVcxeWc3?=
 =?utf-8?B?VDJvWmZyZWZBU05YSHh0T0N6VnU5MUdWYkNCeHAwVjJpUGtOTHIwMmpMMkhB?=
 =?utf-8?B?NjdQM3NnOURiMTU2K3FiSWRXVm05OVdNN0FzTFdDNVh0WmdZMDlwMW5pQlo4?=
 =?utf-8?B?R1BPQUREQTdzcFg1VnZvY1F6MzVZMkZUaXVOOG4vWkJDdjdwTERocXlFN3Ry?=
 =?utf-8?B?K3lCY3FjTkVnNHBHM3FXMmNROVovYzhSdU1MTHlBOHV0QTh6VUdBMXJ0MVV1?=
 =?utf-8?B?WGk5Y2RNcXpIc1JWbncrMkNVdEN3KzZ4bmxwWWxZK3NOS1lKQWRQeVFjS2dH?=
 =?utf-8?B?SHAxZXRUT25FcDFXWHJaMFZnc0hjOUFZdFhTR2tKZ3c5WElUSVVMdWEyZHMz?=
 =?utf-8?B?Q1ZUbXlOUlc1YUtSWlg4MzVVVGI1Mll2YmF5RnRYV2NJUXVNZ3EraExnUlRC?=
 =?utf-8?B?R3R5NmxUd2tNMUVsT2FLR3FpanJCRUY0N2U1UWRXL0xpQkNnaHdIM1lJeXRH?=
 =?utf-8?B?Q2wwTUFOSU5wR21DMGp5U01iaExlZWRGYWZEcmxUdFhwY3Fkd2hkTVdHbUcv?=
 =?utf-8?B?UWNCd0N2WFBKNi9zUHFHanNMUklMN055OWh5U0E0WEVMaFR5Qi8rOGQ5SmxL?=
 =?utf-8?B?Nk5LOUdvbXdSeklhT0xaditPenVHbFBVbHd6cUl5OHZ0bWtkaG1TZE1NMUxn?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af9f04a4-b518-4048-1ee3-08dbf77ce0f7
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 23:33:12.7576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0/kczfRyyN8Y/Vr4gdS4GufU7mYukrgpg+7yk6z3r1RnfzxHqeTNHSYr76jpxVAkVb6t2sEbqYcfZ43C7ANFSIe5hTrsVGgV20MTJ59nBlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7362
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701992024; x=1733528024;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MndOuR71UJoRq0j2+JU1kQq9o8yFtbmdztst2EJoCHY=;
 b=Kcusc/D/iv3VqkPNMIkHKymnzvp20mavqMwiKRQg07KgLAkcNFcnG9Z0
 wTvoY5GsUDCu1xvAjPX0D2Z49b4Xp8FbKkr5tdcnqns5o1tbCaS4l/RVh
 gqvQNILthcrthTmbykTK/PC/gyl1bOH18LM5ToFCVUEFw9Y+aiDlSsZ0B
 FeyaBE75x6kNDocxxv58dJVpCI5RH1cJl96SjpeKWEkjKqNF5/sdeVMYP
 IqEfqYxOijW6QyHYvzJkoZ0074acTpHacb0IpZj9mRwAZSx8O6W0IFPUy
 Fg45p8GIRqjujLvQLgpYkVe3RyAi6K7B/090kYr9AyjCunhhvB8h5yKsK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kcusc/D/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/6/2023 2:43 AM, Jan Sokolowski wrote:
> It was found that this statistic is incorrectly
> reported by HW and thus, useless.
> 
> As RX length error statistics are shown to the
> end user when requested, the values reported
> are misleading.
> 
> Thus, that value is no longer reported and
> doesn't count anymore when adding all rx errors.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Applied, however, shouldn't this have been a v2?

https://lore.kernel.org/intel-wired-lan/20231120112726.149409-1-jan.sokolowski@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
