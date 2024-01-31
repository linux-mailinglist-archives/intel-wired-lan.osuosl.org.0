Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F91C8442FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 16:25:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDFF541BCD;
	Wed, 31 Jan 2024 15:25:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDFF541BCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706714720;
	bh=DrDlVTyNEQw9v0qAi90aIe4u6Qntpt7o/2PXw+12Bpw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CI37B+4CQA+WF7PZuXDW3daer1TKlOkYAJ1G0ZxxZs1SM02v1mMY3+fEMDgff1/WK
	 2hKefGphngPXD5a2yulOZs2uTAnfR7a3sLgmWlaAThHLsqAaWI8iNRn9pGUDubeQxb
	 3+VNdT/ZcQ5Dajc2z2hiltfEZ7cV1ADotlq9/2lLqORxVnqT9plWeOMUF7SPl5LbQa
	 kzdPzuWGSznYgEIMstktkFMd8oghIotZdzABQzSzvNoOvcFhNTnXbrsItwCxxzpTxs
	 OCmU31F2ihMxct0WrNdLIM3YYMx4VsVJU1KWtri1was3iaz38i/X9DGUsO6X4865/e
	 5Gz5IeDGdgrsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aYb1w_jOV8Ha; Wed, 31 Jan 2024 15:25:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16C6F41BBD;
	Wed, 31 Jan 2024 15:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16C6F41BBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CCE31BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 15:25:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 329D541BBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 15:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 329D541BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnj3OJ_XKUrB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 15:25:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5BC641BB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 15:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5BC641BB3
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10381928"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="10381928"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 07:25:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="36890822"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2024 07:25:10 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 07:25:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 31 Jan 2024 07:25:09 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 31 Jan 2024 07:25:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bWHYmsSrP0oJT7UHUJyyFE51uxA5WkoVz8+KCEY4TyxwG7GjZ6dcpZSYi7OvBvOJ/kDwHTvREpX+k2xkU1snIKf5Z40GHtR2TDl96vQBhXIK+NsSMHIF//NsIGqg1s9ntf18hgtnuK8lVsOy44gChg/N4PVlMlYuPhD0jHtFKyYJz8PLVUAqoUs/aTJr2gdbbmL0p19pWMVeHxdGdeZJHnn1wA3CTaAZuAz0N2F9dbVoz/oHxOX/qaftfXQydh7I3pUsbhLEULovwKmhTcRxkCCLM3jNOfudvY8uPxAhRqv4RFxNAD1l4Yl/mlSJGlEpl7LpYQav9Bjm6jMIHeMMYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DrDlVTyNEQw9v0qAi90aIe4u6Qntpt7o/2PXw+12Bpw=;
 b=EoqCnWMXFPphvb52ku/CJ//t//eu+DjrkcC26MujYBInFHlwP/6fGRULoOC5bsJFGFKCzd4SSdejpqtY1GVYeRFEyT804Gskl9RHW0S5Yz2cqYcBNtV6zcWjFGSM3TqwmI8x3txCZYX38cqWksOM4iK4wWe7Og3r7RgZqeeKPQ2Ietm4ElDih5/Pp1aq7t44q1rdxyh74Eoe/aAqrxXaPjao3Gc0XYt8UOrYTlWRh3f2wCToHjUqoBBhGZhPAgFImJ5nv8tMiT3vhcqNgaHlSZw83aRiZMLvYeDWVHrN9+VU1r79+ZwdeVFo6KzJQ9ACXwupQglw7FNxysniU/e9BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 by PH7PR11MB8251.namprd11.prod.outlook.com (2603:10b6:510:1a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 15:25:06 +0000
Received: from LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::9e80:a6c6:5f1:d19b]) by LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::9e80:a6c6:5f1:d19b%4]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 15:25:06 +0000
Message-ID: <5ce4ef28-73e0-459d-af88-a56cb35eaf6b@intel.com>
Date: Wed, 31 Jan 2024 16:25:01 +0100
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Jakub Buchocki
 <jakubx.buchocki@intel.com>, Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
References: <20240124152141.15077-1-lukasz.plachno@intel.com>
 <20240124152141.15077-3-lukasz.plachno@intel.com>
 <ebe86644-46f1-4d42-a40f-835853358691@molgen.mpg.de>
Content-Language: en-US
From: "Plachno, Lukasz" <lukasz.plachno@intel.com>
In-Reply-To: <ebe86644-46f1-4d42-a40f-835853358691@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR07CA0141.eurprd07.prod.outlook.com
 (2603:10a6:802:16::28) To LV8PR11MB8464.namprd11.prod.outlook.com
 (2603:10b6:408:1e7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8464:EE_|PH7PR11MB8251:EE_
X-MS-Office365-Filtering-Correlation-Id: 40b0a72c-d2a7-4f0f-e676-08dc2270cdb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZV2mcVmQ7Tgx9WHZIpa+n1dPTcLc+rxuo6krh5vYs308kv09C1CbSRcuPh8Avm7Jzs2PI+nN0V3pXaiKxpu/I92ccuoivLy/4qjvk5mjz3GDKXt8rsuaoPFteF00OZTDIQ59g55hvuco8iXQaIW/N7Ct8s9Q+fHBedbASDZaL62LzOj9kzzmB68STGd1NEei36k2rHMmXl5Ct1+GkEisC+luMIKfTTlszNZ5Muk8BUbbvXCPRVChO6fimK4v6lZvCiw83ShMPX9HnURt7lDdxDSME9xyzbsiQMD7lNsMmBah/yGCtmt44blfEJwPmaG9exLn7s8yNKbcASS1BtBa+DrG3QHHmuTcpMSC5jApLRKa3praaRXeLWQc9TGB/IBkv6yordF7sh4ZUVcUO+YgYLC7U2NN9C4IdUmZGPEWCAfe66t5G7EdcNijG0Ti5JMbJyaAauzGeK/8rQuMFecSsBc9BvJZPhBsQxtKxMkcopcPCMPGFNPNcIey4mn9G4/rstIGDwr2LW8WZT4x1K5wY0f/g5pVvKUqNtHvtWjBgUp0yxkdz1uIasPNdaB00+9CAxBVV9N9cU2z8zAiZS6azXuDRZvKRbAvseC0/pD+DPeD0Tc44K8pDqdEO/cjQQVnvnWUJFEnGyBRWq+ccVb+WQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(396003)(346002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(41300700001)(31686004)(36756003)(6666004)(6506007)(6512007)(26005)(2616005)(83380400001)(38100700002)(478600001)(82960400001)(53546011)(2906002)(86362001)(5660300002)(31696002)(66476007)(110136005)(66946007)(316002)(66556008)(6486002)(6636002)(4326008)(30864003)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnZuT09GYlIzV2p2YVFNaDJWRjB5VGpTRkF2ampUbHUrY3EyZWVucXF3Undx?=
 =?utf-8?B?cG50SS9EMmRJTU84V2VGcjQyWkVQMGVZNG5ZWmxWQnMySmFSVlJZa3lEeEMx?=
 =?utf-8?B?a3g4a0RTWGk0YVdtWkNlM0dVNFlmazBrR1I3WkdaNEVBMHVUWXcxdlg0dERt?=
 =?utf-8?B?c25lSDVIcHorNGlrNTQ5dklEYlZXa0hWbWR1VUNLeGhPYzI1dm1JbVhSTzVw?=
 =?utf-8?B?d3Vwc0RKYkc2NE1CS1MvaWxFRU4zNStoVjJva0tQOWhPUDBzVXRIQWpieDh6?=
 =?utf-8?B?Y0RTVUExQm13NjNlNjg0bFIvWm94K2dLbDMxZ3IwZ01DNTF5aklqOC9teTVM?=
 =?utf-8?B?L2FwalVKay81b0ZoQm5tTm53MWZhYUhZY1lSTWxTSWErMUtwQURkaE52Ry82?=
 =?utf-8?B?SHlYWXNVK3FKOWtmSEQzTFlDbnNpTlYrS202VC83c29hQ0xYUGNJRU01Ti9B?=
 =?utf-8?B?Y05qZkZ4RnBsL3o1c2JYdEp1MzNJb1dGWktKYllPTTlaZmZrbW1tS21QNXB2?=
 =?utf-8?B?Yi9QVHlHV2RCTWtsTnNrZ1ZRWDVPM1ZsNE9wVGlIeHdxcURtWFFmRHY4eG1W?=
 =?utf-8?B?Z29OT3B5YW85V1VCcnIvYVpuNC9ySy9TR3kyem9ZS0lBZTZhZmtsd2twMSs5?=
 =?utf-8?B?TjVzMHM1aEs3dWhjYXd3YVJWV1NJbVdRWHRCN01Xb0VqZGs5c1NvVjduaVEz?=
 =?utf-8?B?MURGWS9UU3J5YW1paVE0T1pteVpaSzE0WTMyTzczVlVqMGF4VXlCYlo0WTEv?=
 =?utf-8?B?Nmdzdm01ZHIrdFAvOGd4VTBKMUh3WXVyeTlERlNkWXVJSUpqeXRzbG9vNGQ5?=
 =?utf-8?B?L0tBMHMxMjlZR3FaVzE3ZTNMeXdBQXBYSmZvOE5EZnYwM2FtWmNlVSsrbGIx?=
 =?utf-8?B?Wk40MzZOaSt1SXJqZTNUdDFaUGlkQzFqL01LbWs2T3pFWlE5ZHJHdWR4WVlk?=
 =?utf-8?B?NzNQdlNzNHRVdVJ0b1FEeXJnbWlGTVJaS3JqTUcxeGtNN0RCR25QNGhVRTFM?=
 =?utf-8?B?d3czelBFNkg2amEvOXJUTXRwekZwUXFMbXk5WEl6b1RIQURSbTJkVUFjSVRk?=
 =?utf-8?B?UDZhWU54YzZLbGRxWklwSlBOb0ovSDFSbmRuLzJkYUZrK0lkZUlRdDRSWmUv?=
 =?utf-8?B?dC9la2JYUlNBanRKK3YzYzV6YkRtU2VTcDdMcWZGaUR1UVFxQzdmM2RESEl4?=
 =?utf-8?B?dG1pZW1hcUk1NS92Zlc1TG5EWHdCSGZ2R2krRXRZNDlDaWlFMkdwWXZYRWVv?=
 =?utf-8?B?UDJKVGN1TFh5RmZTYVN2MVlod2ZiZkN3eTFVbU12MHJkeUk1eW4yejVTYkFi?=
 =?utf-8?B?OTEva0IzZk0remphb3p2ZWwrR0dxZGorUHd4cWtYMkl5RzBiZjJjRHVEanZ2?=
 =?utf-8?B?anlkN25OT3hMQUcxVG9STFF0UnM2RW9zbXhXak1MTU1qdFp4RE9wckpPTVRj?=
 =?utf-8?B?cjBGdEh0NGZMNU84NSsyV2FXa05RYjRYMDY0RXRkT1hac1dvV3YxdTVaZkFx?=
 =?utf-8?B?OHlONmVxUHI3SFJJczIrcE0rSGRmeTV2YzZ4NjY3K0ZuNDZia1dTeWRzT2l5?=
 =?utf-8?B?b2NXRzBoUEZUbTZPT3I0dnFVaDhBRFdKR0VCblhRemI1YjBuc1NKUFpteE5L?=
 =?utf-8?B?MWdTbSs3UVFlaGhKdmJiaW1OWml3d0Zpa1EyWDZ3ZHEzNW9QWFlWVjhaUzBH?=
 =?utf-8?B?YmE1cTY4b0tPOXlSMUt3Z1l6WDFLcm8rM1JVQk5mQWwwSzZPWWJRZ01nZ0Jt?=
 =?utf-8?B?cWx1dUhld25aWVZWTGRad2VFMnpPbGZzZzhGRy9oZWVNdGpXZDBuRDhnL0Nj?=
 =?utf-8?B?Y3FrRkxYa3did2ozckhPZnU2UXZaaU03V2p3ZkJZOUlEbituaUllZVp0S3Qx?=
 =?utf-8?B?VnZBK01FNmJyWExxckhQd1dFdWRXWThmRCtmVy8yYWk3V1gwam5Tam80c0RP?=
 =?utf-8?B?aXFpMndBeitvQjhxNVNRNWtOK0d1QXNWU2xEdkZYNFlLMEREcGlCTWYyTmIv?=
 =?utf-8?B?c1JTQ21SSmxQZHdVTGo3c1l5c3JDQ2tDOGl2RlJieVk4NkJHZzNGT3J5YlpN?=
 =?utf-8?B?SWFtM2ZVZlVFMEw1OGxCbkFNYmZMK1hpWUErWWpJeGJNQ2F6b3YzWEJrWThi?=
 =?utf-8?B?K2N3OFN4RVMrYXNYeGd2OEFjSnp4QnpHVVpRUHFOTjh3eVdGM2hLSFEyRVpT?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40b0a72c-d2a7-4f0f-e676-08dc2270cdb1
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 15:25:06.4290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hdJ3yCZtwleadCD/OS0tp7/0r6GxbmOcQUWztSiIiG0gN/CpMV9paT+JVKdCT3A4rVzIekHo9B3yQlfw1G+hcdKw6RprS6UXt7tje45pSqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706714712; x=1738250712;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6DUY+1l0eSeo2HhFR3BKHsiyUVhntDkRjSewov+c9N0=;
 b=idryXqjEMka3Ed+jYViWwBrZOE0F2xYfz2AdbzsuCWhkxrHoR3W7rGPB
 u9NkD7jZ22Yysj58+r18T2/XEEgAjBGSsQUA+MsX/WZzRA7SSUKjWf95V
 ETOEC4nVHQgEvYKPNVCB7SCd1y75y8s029HVPc6m172krNIq/XsW2tL/F
 JU6Ko0vX7P1QiF+/wFvETP+3MsMhKUNjXDza11sOfcP0Uoze+xk7F9JDq
 jpFVgc5Gz7Elm9/sdxdkFWJp98FOiLR7tmKLFfxWfEVD1cwJVe+OPJuNc
 7uDYL/JwcnLadkfrfsPqCYsqeKHXOCq68MG+9G3sD/UGcBMJI6TWpb76j
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=idryXqjE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: brett.creeley@amd.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/25/2024 12:09 AM, Paul Menzel wrote:
> Dear Lukasz, dear Jakub, dear Mateusz,
> 
> 
> Thank you for your patch.
> 
> Am 24.01.24 um 16:21 schrieb Lukasz Plachno:
>> From: Jakub Buchocki <jakubx.buchocki@intel.com>
>>
>> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Can you please elaborate on the implementation?
> 

New commit message below

>> Rules not containing masks are processed by the Flow Director,
>> and support the following set of input parameters in all combinations:
>> src, dst, proto, vlan-etype, vlan, action.
>>
>> It is possible to specify address mask in ethtool parameters but only
>> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
>> The same applies to proto, vlan-etype and vlan masks:
>> only 0x0000 and 0xffff masks are valid.
> 
> It’d be great, if you gave an example, how you tested this.
> 

Example at the bottom, let me know if such commit message is OK for you.

ice: Implement 'flow-type ether' rules

Add support for 'flow-type ether' Flow Director rules via ethtool.

Create packet segment info for filter configuration based on ethtool 
command parameters.
Reuse infrastructure already created for ipv4 and ipv6 flows to convert
packet segment into extraction sequence, which is later used to program 
the filter inside Flow Director block of the Rx pipeline.

Rules not containing masks are processed by the Flow Director,
and support the following set of input parameters in all
combinations: src, dst, proto, vlan-etype, vlan, action.

It is possible to specify address mask in ethtool parameters but
only 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
The same applies to proto, vlan-etype and vlan masks:
only 0x0000 and 0xffff masks are valid.

Testing:
# (DUT) iperf3 -s
# (DUT) ethtool -U ens785f0np0 flow-type ether dst 00:00:00:00:01:00 
action 10
# (DUT) watch 'ethtool -S ens785f0np0 | grep rx_queue'
# (LP) iperf3 -c ${DUT_IP}

Counters increase only for:
'rx_queue_10_packets'
'rx_queue_10_bytes'

Thanks,
Łukasz

> 
> 
>> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
>> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
>> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 140 +++++++++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_fdir.c     |  27 ++++
>>   drivers/net/ethernet/intel/ice/ice_fdir.h     |  11 ++
>>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>>   4 files changed, 178 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c 
>> b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> index 9a1a04f5f146..d6fadc65a7a6 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> @@ -41,6 +41,8 @@ static struct in6_addr zero_ipv6_addr_mask = {
>>   static int ice_fltr_to_ethtool_flow(enum ice_fltr_ptype flow)
>>   {
>>       switch (flow) {
>> +    case ICE_FLTR_PTYPE_NONF_ETH:
>> +        return ETHER_FLOW;
>>       case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
>>           return TCP_V4_FLOW;
>>       case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
>> @@ -72,6 +74,8 @@ static int ice_fltr_to_ethtool_flow(enum 
>> ice_fltr_ptype flow)
>>   static enum ice_fltr_ptype ice_ethtool_flow_to_fltr(int eth)
>>   {
>>       switch (eth) {
>> +    case ETHER_FLOW:
>> +        return ICE_FLTR_PTYPE_NONF_ETH;
>>       case TCP_V4_FLOW:
>>           return ICE_FLTR_PTYPE_NONF_IPV4_TCP;
>>       case UDP_V4_FLOW:
>> @@ -137,6 +141,15 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, 
>> struct ethtool_rxnfc *cmd)
>>       memset(&fsp->m_ext, 0, sizeof(fsp->m_ext));
>>       switch (fsp->flow_type) {
>> +    case ETHER_FLOW:
>> +        fsp->h_u.ether_spec.h_proto = rule->eth.type;
>> +        fsp->m_u.ether_spec.h_proto = rule->eth_mask.type;
>> +        ether_addr_copy(fsp->h_u.ether_spec.h_dest, rule->eth.dst);
>> +        ether_addr_copy(fsp->m_u.ether_spec.h_dest, rule->eth_mask.dst);
>> +        ether_addr_copy(fsp->h_u.ether_spec.h_source, rule->eth.src);
>> +        ether_addr_copy(fsp->m_u.ether_spec.h_source,
>> +                rule->eth_mask.src);
>> +        break;
>>       case IPV4_USER_FLOW:
>>           fsp->h_u.usr_ip4_spec.ip_ver = ETH_RX_NFC_IP4;
>>           fsp->h_u.usr_ip4_spec.proto = 0;
>> @@ -1193,6 +1206,111 @@ ice_set_fdir_ip6_usr_seg(struct 
>> ice_flow_seg_info *seg,
>>       return 0;
>>   }
>> +/**
>> + * ice_fdir_vlan_valid - validate VLAN data for Flow Director rule
>> + * @fsp: pointer to ethtool Rx flow specification
>> + *
>> + * Return: true if vlan data is valid, false otherwise
>> + */
>> +static bool ice_fdir_vlan_valid(struct ethtool_rx_flow_spec *fsp)
>> +{
>> +    if (fsp->m_ext.vlan_etype && !eth_type_vlan(fsp->h_ext.vlan_etype))
>> +        return false;
>> +
>> +    if (fsp->m_ext.vlan_tci &&
>> +        ntohs(fsp->h_ext.vlan_tci) >= VLAN_N_VID)
>> +        return false;
>> +
>> +    return true;
>> +}
>> +
>> +/**
>> + * ice_set_ether_flow_seg
>> + * @seg: flow segment for programming
>> + * @eth_spec: mask data from ethtool
>> + *
>> + * Return: 0 on success and errno in case of error.
>> + */
>> +static int ice_set_ether_flow_seg(struct device *dev,
>> +                  struct ice_flow_seg_info *seg,
>> +                  struct ethhdr *eth_spec)
>> +{
>> +    ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH);
>> +
>> +    /* empty rules are not valid */
>> +    if (is_zero_ether_addr(eth_spec->h_source) &&
>> +        is_zero_ether_addr(eth_spec->h_dest) &&
>> +        !eth_spec->h_proto)
>> +        return -EINVAL;
>> +
>> +    /* Ethertype */
>> +    if (eth_spec->h_proto == htons(0xFFFF)) {
>> +        ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_TYPE,
>> +                 ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL, false);
>> +    } else if (eth_spec->h_proto) {
>> +        dev_warn(dev, "Only 0x0000 or 0xffff proto mask is allowed 
>> for flow-type ether");
>> +        return -EOPNOTSUPP;
>> +    }
>> +
>> +    /* Source MAC address */
>> +    if (is_broadcast_ether_addr(eth_spec->h_source))
>> +        ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_SA,
>> +                 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL, false);
>> +    else if (!is_zero_ether_addr(eth_spec->h_source))
>> +        goto err_mask;
>> +
>> +    /* Destination MAC address */
>> +    if (is_broadcast_ether_addr(eth_spec->h_dest))
>> +        ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_DA,
>> +                 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL, false);
>> +    else if (!is_zero_ether_addr(eth_spec->h_dest))
>> +        goto err_mask;
>> +
>> +    return 0;
>> +
>> +err_mask:
>> +    dev_warn(dev, "Only 00:00:00:00:00:00 or ff:ff:ff:ff:ff:ff MAC 
>> address mask is allowed for flow-type ether");
>> +    return -EOPNOTSUPP;
>> +}
>> +
>> +/**
>> + * ice_set_fdir_vlan_seg
>> + * @seg: flow segment for programming
>> + * @ext_masks: masks for additional RX flow fields
>> + */
>> +static int
>> +ice_set_fdir_vlan_seg(struct ice_flow_seg_info *seg,
>> +              struct ethtool_flow_ext *ext_masks)
>> +{
>> +    ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_VLAN);
>> +
>> +    if (ext_masks->vlan_etype) {
>> +        if (ext_masks->vlan_etype != htons(0xFFFF))
>> +            return -EOPNOTSUPP;
>> +
>> +        ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_S_VLAN,
>> +                 ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL, false);
>> +    }
>> +
>> +    if (ext_masks->vlan_tci) {
>> +        if (ext_masks->vlan_tci != htons(0xFFFF))
>> +            return -EOPNOTSUPP;
>> +
>> +        ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_C_VLAN,
>> +                 ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL,
>> +                 ICE_FLOW_FLD_OFF_INVAL, false);
>> +    }
>> +
>> +    return 0;
>> +}
>> +
>>   /**
>>    * ice_cfg_fdir_xtrct_seq - Configure extraction sequence for the 
>> given filter
>>    * @pf: PF structure
>> @@ -1209,7 +1327,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct 
>> ethtool_rx_flow_spec *fsp,
>>       struct device *dev = ice_pf_to_dev(pf);
>>       enum ice_fltr_ptype fltr_idx;
>>       struct ice_hw *hw = &pf->hw;
>> -    bool perfect_filter;
>> +    bool perfect_filter = false;
>>       int ret;
>>       seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
>> @@ -1262,6 +1380,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, 
>> struct ethtool_rx_flow_spec *fsp,
>>           ret = ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
>>                              &perfect_filter);
>>           break;
>> +    case ETHER_FLOW:
>> +        ret = ice_set_ether_flow_seg(dev, seg, &fsp->m_u.ether_spec);
>> +        if (!ret && (fsp->m_ext.vlan_etype || fsp->m_ext.vlan_tci)) {
>> +            if (!ice_fdir_vlan_valid(fsp)) {
>> +                ret = -EINVAL;
>> +                break;
>> +            }
>> +            ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
>> +        }
>> +        break;
>>       default:
>>           ret = -EINVAL;
>>       }
>> @@ -1823,6 +1951,16 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, 
>> struct ethtool_rx_flow_spec *fsp,
>>           input->mask.v6.tc = fsp->m_u.usr_ip6_spec.tclass;
>>           input->mask.v6.proto = fsp->m_u.usr_ip6_spec.l4_proto;
>>           break;
>> +    case ETHER_FLOW:
>> +        ether_addr_copy(input->eth.dst, fsp->h_u.ether_spec.h_dest);
>> +        ether_addr_copy(input->eth.src, fsp->h_u.ether_spec.h_source);
>> +        ether_addr_copy(input->eth_mask.dst,
>> +                fsp->m_u.ether_spec.h_dest);
>> +        ether_addr_copy(input->eth_mask.src,
>> +                fsp->m_u.ether_spec.h_source);
>> +        input->eth.type = fsp->h_u.ether_spec.h_proto;
>> +        input->eth_mask.type = fsp->m_u.ether_spec.h_proto;
>> +        break;
>>       default:
>>           /* not doing un-parsed flow types */
>>           return -EINVAL;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c 
>> b/drivers/net/ethernet/intel/ice/ice_fdir.c
>> index 1f7b26f38818..5fe0bad00fd7 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
>> @@ -4,6 +4,8 @@
>>   #include "ice_common.h"
>>   /* These are training packet headers used to program flow director 
>> filters. */
>> +static const u8 ice_fdir_eth_pkt[22] = {0};
>> +
>>   static const u8 ice_fdir_tcpv4_pkt[] = {
>>       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
>>       0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
>> @@ -416,6 +418,11 @@ static const u8 ice_fdir_ip6_tun_pkt[] = {
>>   /* Flow Director no-op training packet table */
>>   static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
>> +    {
>> +        ICE_FLTR_PTYPE_NONF_ETH,
>> +        sizeof(ice_fdir_eth_pkt), ice_fdir_eth_pkt,
>> +        sizeof(ice_fdir_eth_pkt), ice_fdir_eth_pkt,
>> +    },
>>       {
>>           ICE_FLTR_PTYPE_NONF_IPV4_TCP,
>>           sizeof(ice_fdir_tcpv4_pkt), ice_fdir_tcpv4_pkt,
>> @@ -914,6 +921,22 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, 
>> struct ice_fdir_fltr *input,
>>        * perspective. The input from user is from Rx filter perspective.
>>        */
>>       switch (flow) {
>> +    case ICE_FLTR_PTYPE_NONF_ETH:
>> +        ice_pkt_insert_mac_addr(loc, input->eth.dst);
>> +        ice_pkt_insert_mac_addr(loc + ETH_ALEN, input->eth.src);
>> +        if (input->ext_data.vlan_tag ||
>> +            input->ext_data.vlan_type) {
>> +            ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
>> +                       input->ext_data.vlan_type);
>> +            ice_pkt_insert_u16(loc, ICE_ETH_VLAN_TCI_OFFSET,
>> +                       input->ext_data.vlan_tag);
>> +            ice_pkt_insert_u16(loc, ICE_ETH_TYPE_VLAN_OFFSET,
>> +                       input->eth.type);
>> +        } else {
>> +            ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
>> +                       input->eth.type);
>> +        }
>> +        break;
>>       case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
>>           ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
>>                      input->ip.v4.src_ip);
>> @@ -1201,6 +1224,10 @@ ice_fdir_comp_rules(struct ice_fdir_fltr *a,  
>> struct ice_fdir_fltr *b)
>>        * same flow_type.
>>        */
>>       switch (flow_type) {
>> +    case ICE_FLTR_PTYPE_NONF_ETH:
>> +        if (!memcmp(&a->eth, &b->eth, sizeof(a->eth)))
>> +            return true;
>> +        break;
>>       case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
>>       case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
>>       case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h 
>> b/drivers/net/ethernet/intel/ice/ice_fdir.h
>> index 1b9b84490689..0c90865a36c5 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
>> @@ -8,6 +8,9 @@
>>   #define ICE_FDIR_MAX_RAW_PKT_SIZE    (512 + ICE_FDIR_TUN_PKT_OFF)
>>   /* macros for offsets into packets for flow director programming */
>> +#define ICE_ETH_TYPE_F_OFFSET        12
>> +#define ICE_ETH_VLAN_TCI_OFFSET        14
>> +#define ICE_ETH_TYPE_VLAN_OFFSET    16
>>   #define ICE_IPV4_SRC_ADDR_OFFSET    26
>>   #define ICE_IPV4_DST_ADDR_OFFSET    30
>>   #define ICE_IPV4_TCP_SRC_PORT_OFFSET    34
>> @@ -97,6 +100,12 @@ struct ice_rx_flow_userdef {
>>       u16 flex_fltr;
>>   };
>> +struct ice_fdir_eth {
>> +    u8 dst[ETH_ALEN];
>> +    u8 src[ETH_ALEN];
>> +    __be16 type;
>> +};
>> +
>>   struct ice_fdir_v4 {
>>       __be32 dst_ip;
>>       __be32 src_ip;
>> @@ -159,6 +168,8 @@ struct ice_fdir_fltr {
>>       struct list_head fltr_node;
>>       enum ice_fltr_ptype flow_type;
>> +    struct ice_fdir_eth eth, eth_mask;
>> +
>>       union {
>>           struct ice_fdir_v4 v4;
>>           struct ice_fdir_v6 v6;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h 
>> b/drivers/net/ethernet/intel/ice/ice_type.h
>> index 6df7c4487ad0..391e48d2bb92 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -203,6 +203,7 @@ struct ice_phy_info {
>>   enum ice_fltr_ptype {
>>       /* NONE - used for undef/error */
>>       ICE_FLTR_PTYPE_NONF_NONE = 0,
>> +    ICE_FLTR_PTYPE_NONF_ETH,
>>       ICE_FLTR_PTYPE_NONF_IPV4_UDP,
>>       ICE_FLTR_PTYPE_NONF_IPV4_TCP,
>>       ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
