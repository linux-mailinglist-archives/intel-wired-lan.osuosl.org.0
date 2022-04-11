Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0B34FC794
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 00:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9828540004;
	Mon, 11 Apr 2022 22:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hl1lUW-wbJrh; Mon, 11 Apr 2022 22:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A127400E2;
	Mon, 11 Apr 2022 22:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFEA71BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 22:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5C7A831BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 22:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpJSaM-Mc5ZZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 22:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 997A282B34
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 22:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649715707; x=1681251707;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iJlhATMhhRY1SiHbkQWPQR737J57rlrr21HIrPWTdMw=;
 b=TeBuJ0csWBz6axX4NtQktmKfMxWfU6MzRbFYSxySWYTGH4Ir8XHyCQIF
 4+2RnBOMb6FBP0bvD5qGvnZLZzAPGL7jONt+lqnpU0Y+8jtueyKJTXrOJ
 Zf4C6PMGah794C+yBijWiT7HevY/fYS+7wdruwkVtJzHFcIhG12Xow10X
 DzU3SPUz0/uWofqbtrBSeK2JIEqE6w0njYUTIj4vI9DHsJgs/WWm41qHH
 GrIPjVl3OxnF9Ewoo0O5hMPmsTT4hhVl13u8OrrBkL+yToUXvokua13tK
 mPnLVxggiGE/+M0bLOR6ULvg9zCDbs4CMdeZU2sS6rtE22XC+bkJeSk9G A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244111457"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244111457"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 15:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="699563112"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 11 Apr 2022 15:21:46 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 15:21:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Apr 2022 15:21:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Apr 2022 15:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QX2Nn/NjzF5WI5SiE/uSQI0jsqL2M1sS+sNdWcpVLsmONiyvKvxrjD99eDxLFUPNnAZKuONHAeuKJFDVSBcGe3AS4zPkwT3buupLHHnJPDCtVukxOR8SMB3nGvETb7BDIa/plPwGR85XQvonAFR/jiTEZdvbJxMg82coao2SAea3BgsPnBjQWgY1tqTcd8XPPCyTShLGwVe0s9AWfHISVWtYq4o3kXM7fqYuciDFMGI1jqNECSn0M48wfXPz3YLhSX7hYDqPzBBMhUilU4XdcK9tGiyfrN1kLp51uttn4HspNaqplbhZ1GhQoMFZAVfR0Kdgb55QEKvgmp8Y5aXwXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/eQGMJkMXWQbJQb1oa7AU1OAyShUxRE2uNGQwxo4d7g=;
 b=PhGKWhBsFNXz1uCdkxKY/rprKY7aJYYe8LoxNzjAPk1MH01y8D/Fx53yVVNPO8qLDfCYaQn9bCP4p8t3/q9cthu6sN77HqoWEmBV4Ximzv1XhSLwY0z0YUTiWsZmF904IZDgXhp5Fs1RXW79VFpLHFWf59huiB+npQ4LrrJUO/8zJeCTcTP3gYYsJ6gR22Hs7HyD5FOMLibd0YdQxZ78Cv2DKnalAINd49bDgxjX6cLZm625bhD/V3eZvljPE2iGUNuWHuVowmIVbNWly/2pV4uGgOz1CwIzwLVBbduAp51Jj3XfvDnS6IBzdVxcRcGFYgXLhlatGtgoz6wa2TQ8Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4541.namprd11.prod.outlook.com (2603:10b6:806:94::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Mon, 11 Apr
 2022 22:21:45 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acf9:f012:22dc:c354]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acf9:f012:22dc:c354%7]) with mapi id 15.20.5144.029; Mon, 11 Apr 2022
 22:21:44 +0000
Message-ID: <c91397a2-b3d5-35de-d06a-d6e8a47064b5@intel.com>
Date: Mon, 11 Apr 2022 15:21:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
References: <20220405155601.1443799-1-sasha.neftin@intel.com>
 <f0402937-8594-6ecb-c4f9-c6605dd73d77@molgen.mpg.de>
 <46988714-070b-fca0-efe8-52004649976a@intel.com>
 <a2d025d5-dd85-8816-8c0f-1cd873dce529@molgen.mpg.de>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <a2d025d5-dd85-8816-8c0f-1cd873dce529@molgen.mpg.de>
X-ClientProxiedBy: SJ0PR13CA0089.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05a926e1-e84b-40f2-81fa-08da1c09a92c
X-MS-TrafficTypeDiagnostic: SA0PR11MB4541:EE_
X-Microsoft-Antispam-PRVS: <SA0PR11MB454138F412B65FC221E30D25C6EA9@SA0PR11MB4541.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 09FzYgFAOOlsNbn3dMUfoNQr8eGGbhoeVi2Dd5I8u3thc1AalXN3rPDi1wfywHSw1AZgQmZwzdrCJwuuja5pZMVzXj3g9Msdw1cbQYZxDaEmu6XGOk9lT1JuXyCtNR7d+irj9VRFdb9e1+wMSBjYsUGYGXVpFYycvsJyte3UX3Iyj/HvII5wKBTOzQZYD8tck13hrlNAJAzylY/NJg7t01oBRI6qG9/VzdLli3PeNTivuQ/rW6oCY0K19O260CsoHEn72VRetNm7qEGkr+tI2YoyEKoXaceNSI+z4V5W0ciNRHoIiJk6mfDYFLg9gx6IeGTCPiHcymcl90e+bahBFney+1Wk8PPmr/VDs/YcnX8M1AZfAHtzeUiTuyzHvHVBJ4HPipx2pGyW27IZUiQjsG32KNFwWlnZq2KsiP1QGEXHg49vmWY1FzQY+AITZGbs2yjZSDN5hYqWa5t6bw754nS5umgPQ/VfzbJqVLx1yr+P+yMeihUf68mZxaQPy5DF891SyFOBR63dpX2LfLPYiO8gZik+0+mT/6Oah4Sdmvlu5lqpnI0y1xrRlsXHpxIcZXHYId+7wJ3P0Rd6zIxzK63QNFlZDK5+Gx/gboIxXNvzJxkxwsDB8l6+LxFVP5Z2hvOdEBbBDBSqNEglrzBbpH4CUydIOqiqY4vxpdV2SdtDSdsYO1ISfDg/7ytIPUHErqIXlW72ADpUmil33bujf8FAsaLpls3b4ej8cQXwCtWoGbZLVexj0ESBdFl+Yh3ofQaVsUGyxtV6OgMU6mqjWh32y8vPxx5LR32TEKtSknJ9wYtOqtGYNYYaHz5tHDI7rKpxlK06IJ6Bg3uV2PaADiESXIFV4DO3osjLlqrVqQI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(966005)(316002)(26005)(8936002)(2906002)(5660300002)(31686004)(36756003)(6506007)(83380400001)(86362001)(6486002)(38100700002)(53546011)(6636002)(110136005)(54906003)(8676002)(4326008)(508600001)(66476007)(82960400001)(186003)(107886003)(66556008)(66946007)(2616005)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnFJM29oSTVDVDJiL0RjMWYrVUZIcExyaHBza3RtNThVaVA5SjQvNFRlMnlR?=
 =?utf-8?B?VGRnbVptbFU2YzQzbDhTdVE0RUY5VmQwQjN3ZlhDTFJSWUhXY2FleURadEgz?=
 =?utf-8?B?MzhPM1BYOVN3Z1FibVMwM0VOUmlQU2QxM3ljTDNIZGZRa1hHenZJaWFtRVZv?=
 =?utf-8?B?SzhndFZ0eUJabFpBN3NteDJ3V0ZzTGZ2ZjdPMnpZMS81KytsN3h0WGdGS0VI?=
 =?utf-8?B?S2NUWm8wL1FyQS9heU5vQTRKdWJnYzR0UVB2dWlTQWV1WUI5VjhNVjRBTmR3?=
 =?utf-8?B?TGM4SmcyWHl6TkpMUnNSKzVCUHNvczZvaHRMbkdjQkNRdkMyT0p6YnZMS01x?=
 =?utf-8?B?cWZZT3llOTk5OFduZkF3VVQ3TUxHWjRyaC9oREY1OHNvOEtseDJwMmhGOVcv?=
 =?utf-8?B?ZnpJREZySThQdkt5NWNRVDZJVXdyczRTenJxc0dGaGtEdHNOVi94VUFKYVZw?=
 =?utf-8?B?d01xR2s4OTRFZzFJT0tGSk9FK1g2UzNPMXBYU21WN3VWRFV4SjFtQW5YeTlQ?=
 =?utf-8?B?NVVWV2pDZlQvamszMmxZMzdPTUpZSHMrOUozbTloOStBMUdvUng1RE4rdkNM?=
 =?utf-8?B?eEM4ZkRBT0tWcTR0SEJ4bTd1RVhHVCtRaVNkaGRUMElnKzhhQkt0VHdNQkVl?=
 =?utf-8?B?UkczdGh2UjVBZ2RwZ3RPTDF0V2lFeE1FcU9KUXljME5OcHMvK0VCMFlKbTNK?=
 =?utf-8?B?bVZReGczdFlLVUhaZ1RDamNqN2RVNEVIUTM4Uk1DaVpFSHlOcnorc0hucG1y?=
 =?utf-8?B?N3A2SzdKZDR5SysyamdGSGhzcndodytCeXRELytjZmNqWVFJSDdMYm1yMHZT?=
 =?utf-8?B?bGpKZDhrWVpXaTJHV0dLTmpiU0FRWGJnWWN6K25aOEh5cnVJeklta3lPbXhy?=
 =?utf-8?B?aEZIMVR6SGt0akVGZlFCMzliTm93TUVDSlVFWVBhRmlic05tV1hOTDM2RTg2?=
 =?utf-8?B?R0VQRmdieW81bzJORE9iUkUxdElFeFVqNWtiR0FLUUN2bzloOSt3UzMzUU15?=
 =?utf-8?B?NDBiVTBhSDUrOXZtbkkweG9KK0ZDV2czZkFIc2tTMU9FVVRjNmREOWEzTk9E?=
 =?utf-8?B?QTQxKzhhNGgyaWt1dXpPdkNVeDRLc1BWUW1kWnluaS8vVWg1R245ZFZySnRD?=
 =?utf-8?B?QldWbHdZUEFRNFMyTXB4YjdTbkZ1S1g3aHRCalRac1JwK1B0Q1VWelFTNDFX?=
 =?utf-8?B?YXF0UVRmM0lHeFhlUzk2RHd6QlovNmhnT2MyZ2g3M2V0WHc3YXl4OUxjR29X?=
 =?utf-8?B?endsTlY5S3ZhZ3JwTkZVZWw1ZGNhQnluUEZSYUlZazdBMUdYQjFLczNJUWky?=
 =?utf-8?B?QzAzTkhnYlZKRkdTR1lJY2N5WmFaK3pjL2lpcWpSVFYrTUd4Nm04YVd6eSt4?=
 =?utf-8?B?RFAyaVFhV3RVK1lTaDlCR012VkNYUDRPWVVkQm1rMHZ6RThCSm5nZVJZOUhP?=
 =?utf-8?B?SDY3WVBiRVVTd0EyN1Bpb2ZhTEwrN0M2dEg4Qzl4eTdPcTdxUEFPMi85UUJs?=
 =?utf-8?B?S2lSY0dGa0h6b2ZyYlVoYzFlVHQ1V2hqbUtIZkNXU0pWRzREVXh2aEk5U1A5?=
 =?utf-8?B?QVl0WlNLM3hyMzd0bDAvYmlCdGlWZ1ZqQXliNmN6TEI3YTNrTjE3Z256c2Ex?=
 =?utf-8?B?S1BERjlOOGh0cjIvY3REd0Q0T0RYM2tJQVBiWnZ1V01GSDFteGIyWlZZUGJI?=
 =?utf-8?B?MFE1YmFTSG9iT1FnWHduZkpyVnBXOURzUkhzK2J2OGxKNGFWY25rN3FJdlVw?=
 =?utf-8?B?MEZJSFUrMHpQU1ZYaUNaREhxY015MG5BdS9PZDZYMGloM1p4KzhWRkx4S3Bv?=
 =?utf-8?B?TVkvT3hDV3ZNMkN4MmkxTVFiZ0FvdnlwZ3FWQlAxM0tqdVl1b3B3ak5CbDhR?=
 =?utf-8?B?dVNGaVNBY1pXektlQmtEeWRHV1FmWllVYzh5a2J4RlF0azZyN2poOU9Ba3NO?=
 =?utf-8?B?blhwZnNEck1FTWY4MU9vTFhhYVdiUHRXbGhHanoyMC9mbEQzdzRkbkZkTjVK?=
 =?utf-8?B?UUN3ZjBkMjZrU0pYdlR1c2tyTTZuQ3Bid0ZRZmNxRTRYWkZWWUhUVm5qZkIv?=
 =?utf-8?B?eTZtMm1CSis4Q29nMElXNGVhZ2crYS9HMXJuaUJOZ1FVU0pIZFlxakt1d2g4?=
 =?utf-8?B?L08yM2xxci9qcXJvZ2lNY2Z3U2NtWmZVVkJuUkYvZDdyTmVDYW5sbG81VS9M?=
 =?utf-8?B?RlJaVGdKUXhwLzJWU1ZZSHlMYkFBSlNpemZaa09DQ1k0QUllcWh1SzE1MklZ?=
 =?utf-8?B?ajZTZGlEODNqOXNpZkxtMlc5UklwZE1GZTRZU1U1QW53YXM1dlkrNDBsajJz?=
 =?utf-8?B?V0NPRlB3aFROdzh2QmRvNTRpUDFWOWxnRndmNXlRUlllYmF2cDQ5L1BPZFk5?=
 =?utf-8?Q?UDsjn2p5NSitV9qQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05a926e1-e84b-40f2-81fa-08da1c09a92c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2022 22:21:44.8021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E/QB8oSWZZadQG2w8j2wYExGd+6CbYVazNSb7QGUIUAOuBO2odvI/vjq70PK2rlzp7E3LVOjvdpwDFN7uHnboHKAOgyfOLYoX+ALxsswj38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4541
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: James Hutchinson <jahutchinson99@googlemail.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDQvMTAvMjAyMiAzOjEwIEFNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLCBk
ZWFyIFRvbnksCj4KPgo+IEFtIDA2LjA0LjIyIHVtIDE2OjMzIHNjaHJpZWIgTmVmdGluLCBTYXNo
YToKPj4gT24gNC82LzIwMjIgMDg6MzQsIFBhdWwgTWVuemVsIHdyb3RlOgo+Cj4+PiBUaGFuayB5
b3UgZm9yIHlvdXIgcGF0Y2guCj4+Pgo+Pj4gQW0gMDUuMDQuMjIgdW0gMTc6NTYgc2NocmllYiBT
YXNoYSBOZWZ0aW46Cj4+Pj4gV2hlbiB3ZSBkZWNvZGUgdGhlIGxhdGVuY3kgYW5kIHRoZSBtYXhf
bGF0ZW5jeSB1MTYgdmFsdWUgZG9lcyBub3QgZmlsbAo+Pj4+IHRoZSByZXF1aXJlZCBzaXplCj4+
Pgo+Pj4gRG8geW91IG1lYW4g4oCcZml0IGludG/igJ0gb3Ig4oCcaXMgdG9vIHNtYWxsIGZvciB0
aGUgcmVxdWlyZWQgc2l6ZeKAnT8KPgo+IFRvbnksIEkgc2F3IHlvdSBjb21taXR0ZWQgdGhpcyBw
YXRjaCBbMV0uIElzIGl0IHN0aWxsIHBvc3NpYmxlIHRvIGZpeCAKPiB0aGUgd29yZGluZz8KClll
cywgaXQgY2FuIHN0aWxsIGJlIGNoYW5nZWQuIEknbGwgY2hlY2sgd2l0aCBTYXNoYSBvbiBhbnkg
ZWRpdHMgaGUgCndhbnRzIHRvIG1ha2UgYmVmb3JlIHNlbmRpbmcgb24gdG8gbmV0ZGV2LgoKVGhh
bmtzLAoKVG9ueQoKPgo+Pj4+IGFuZCBjb3VsZCBsZWFkIHRvIHRoZSB3cm9uZyBMVFIgcmVwcmVz
ZW50YXRpb24uCj4+Pgo+Pj4gTWF5YmUgZ2l2ZSBhbiBleGFtcGxlIG9mIHZhbHVlcyBsZWFkaW5n
IHRvIGluY29ycmVjdCBiZWhhdmlvcj8KPj4+Cj4+Pj4gUmVwbGFjZSB0aGUgdTE2IHR5cGUgd2l0
aCB0aGUgdTMyIHR5cGUgYW5kIGFsbG93IGNvcnJlY3RlZCBMVFIKPj4+PiByZXByZXNlbnRhdGlv
bi4KPj4+Cj4+PiBNYXliZTogSW5jcmVhc2UgdGhlIHZhcmlhYmxlIHNpemUgZnJvbSB1MTYgdG8g
dTMyLCBzbyB0aGUgZGVjb2RlZCAKPj4+IGxhdGVuY3kgY2FuIGJlIHJlcHJlc2VudGVkLiBXaHkg
YXJlIDMyIGJpdCBlbm91Z2g/IFdoeSBub3QgNjQgYml0Pwo+PiBIZWxsbyBQYXVsLAo+PiBTY2Fs
aW5nIHJlcHJlc2VudGVkIGFzOgo+PiBzY2FsZSAwIC0gMcKgwqDCoMKgwqDCoMKgwqAgKDJeKDUq
MCkpID0gMl4wCj4+IHNjYWxlIDEgLSAzMsKgwqDCoMKgwqDCoMKgICgyXig1ICoxKSk9IDJeNQo+
PiBzY2FsZSAyIC0gMTAyNMKgwqDCoMKgwqAgKDJeKDUgKjIpKSA9Ml4xMAo+PiBzY2FsZSAzIC0g
MzI3NjjCoMKgwqDCoCAoMl4oNSAqMykpID0yXjE1Cj4+IHNjYWxlIDQg4oCTIDEwNDg1NzbCoMKg
ICgyXig1ICo0KSkgPSAyXjIwCj4+IHNjYWxlIDUg4oCTIDMzNTU0NDMywqAgKDJeKDUgKjQpKSA9
IDJeMjUKPj4gc2NhbGUgNCBhbmQgc2NhbGUgNSByZXF1aXJlZCAyMCBhbmQgMjUgYml0cyByZXNw
ZWN0aXZlbHkuCj4+IHNjYWxlIDYgcmVzZXJ2ZWQuCj4KPiBUaGlzIHdvdWxkIGhhdmUgYmVlbiBu
aWNlIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPgo+Pj4gUGxlYXNlIHVzZSA3NSBjaGFyYWN0ZXJz
IHBlciBsaW5lLgo+Pj4KPj4+PiBGaXhlczogNDRhMTNhNWQ5OWM3ICgiZTEwMDBlOiBGaXggdGhl
IG1heCBzbm9vcC9uby1zbm9vcCBsYXRlbmN5IAo+Pj4+IGZvciAxME0iKQo+Pj4+IFJlcG9ydGVk
LWJ5OiBKYW1lcyBIdXRjaGluc29uIDxqYWh1dGNoaW5zb245OUBnb29nbGVtYWlsLmNvbT4KPj4+
PiBMaW5rOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxNTY4
OQo+Pj4+IFN1Z2dlc3RlZC1ieTogRGltYSBSdWluc2tpeSA8ZGltYS5ydWluc2tpeUBpbnRlbC5j
b20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwu
Y29tPgo+Pj4KPj4+IEFkZAo+Pj4KPj4+IFRlc3RlZC1ieTogSmFtZXMgSHV0Y2hpbnNvbiA8amFo
dXRjaGluc29uOTlAZ29vZ2xlbWFpbC5jb20+IChJMjE5LVYgCj4+PiAocmV2IDMwKSkKPj4gSSB3
aWxsIGxldCBKYW1lcyBhZGQgdGhpcyB0YWcuCj4+Pgo+Pj4+IC0tLQo+Pj4+IHYyOiBhZGRlZCBs
aW5rIHRhZwo+Pj4+Cj4+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uYyB8IDQgKystLQo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyAKPj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+PiBpbmRleCBkNjBlMjAxNmQwM2MuLmU2YzhlNmQ1MjM0
ZiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhs
YW4uYwo+Pj4+IEBAIC0xMDA5LDggKzEwMDksOCBAQCBzdGF0aWMgczMyIGUxMDAwX3BsYXRmb3Jt
X3BtX3BjaF9scHQoc3RydWN0IAo+Pj4+IGUxMDAwX2h3ICpodywgYm9vbCBsaW5rKQo+Pj4+IMKg
IHsKPj4+PiDCoMKgwqDCoMKgIHUzMiByZWcgPSBsaW5rIDw8IChFMTAwMF9MVFJWX1JFUV9TSElG
VCArIAo+Pj4+IEUxMDAwX0xUUlZfTk9TTk9PUF9TSElGVCkgfAo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBsaW5rIDw8IEUxMDAwX0xUUlZfUkVRX1NISUZUIHwgRTEwMDBfTFRSVl9TRU5EOwo+Pj4+
IC3CoMKgwqAgdTE2IG1heF9sdHJfZW5jX2QgPSAwO8KgwqDCoCAvKiBtYXhpbXVtIExUUiBkZWNv
ZGVkIGJ5IHBsYXRmb3JtICovCj4+Pj4gLcKgwqDCoCB1MTYgbGF0X2VuY19kID0gMDvCoMKgwqAg
LyogbGF0ZW5jeSBkZWNvZGVkICovCj4+Pj4gK8KgwqDCoCB1MzIgbWF4X2x0cl9lbmNfZCA9IDA7
wqDCoMKgIC8qIG1heGltdW0gTFRSIGRlY29kZWQgYnkgcGxhdGZvcm0gKi8KPj4+PiArwqDCoMKg
IHUzMiBsYXRfZW5jX2QgPSAwO8KgwqDCoCAvKiBsYXRlbmN5IGRlY29kZWQgKi8KPj4+PiDCoMKg
wqDCoMKgIHUxNiBsYXRfZW5jID0gMDvCoMKgwqAgLyogbGF0ZW5jeSBlbmNvZGVkICovCj4+Pj4g
wqDCoMKgwqDCoCBpZiAobGluaykgewo+Pj4KPj4+IFRoZSBkaWZmIGxvb2tzIGdvb2QuCj4+IFRo
YW5rcwo+Cj4KPiBLaW5kIHJlZ2FyZHMsCj4KPiBQYXVsCj4KPgo+IFsxXTogCj4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG5ndXkvbmV4dC1xdWV1ZS5n
aXQvY29tbWl0Lz9oPWRldi1xdWV1ZSZpZD03ZGQxMjFiOGQ1NzM1NzgwYjZhNzBkYjczNWQ0NGIz
ZTViODU2MTMwCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
