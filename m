Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF1780AEC8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 22:20:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FA0243870;
	Fri,  8 Dec 2023 21:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FA0243870
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702070417;
	bh=sVgJrODXP3s8q9Rv1uyBxiLG9G4CfpwA3bjckwzrH2Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jK5MaT2cql52khBfKpHMPMxCkUrjtibavXs0h6mTJpXOaKF8eYecLACWzi58Tvc8E
	 CKq+Ace5khIeDSDMsPdOW6bdeiB1TjOU++/knxRxLdCjvK8o1XM5YZLnI5g9azAch8
	 XtmeL7b6toZskR6VsYKz8XphaOCXlvy8oKSCXL+/c1HJ0kMPDGaw0Ot2G+/O44p7/+
	 iEM4kOv3yKB92V6PrewJ0updPfhIG7/skGJYtarEUlsl+GsxLWdmfu1ovjy0RcLgA/
	 enapIAXc2XopH/fWuGiUKtmYbzqeTfZG2jXpOQYtsxnXVFAV4ECL8GDRs91Uyt9IYj
	 jsSL5sdENjQQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JPAUrVPWYA3Z; Fri,  8 Dec 2023 21:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EFC940148;
	Fri,  8 Dec 2023 21:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EFC940148
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFA531BF417
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 21:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A318D41522
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 21:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A318D41522
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YvnA_D_GXLdQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 21:20:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B8D7408CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 21:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B8D7408CA
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="1532440"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; 
   d="scan'208";a="1532440"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 13:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="721998285"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="721998285"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 13:18:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 13:18:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 13:18:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 13:18:35 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 13:18:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQNqOK0PTHrvr9jT0aK21Kb5oYz+2AhPbaZtaFgWn8i3kyTCSFHqR0uLkoY3R5zi7AGshD4AKLcZS5InPAVpUFK8xHy/ozc6ouIUsURgW6hQIBIJ56C0BBpOU2iW5ToQBsxH1OI7PtD+u2HAfG2AVbfDv1p6bDrBv9NSFFXbV+ik9puqZqBgu7rU+gXB2SDuwKkaFy+AOO2ORecJLt9qwkYDyhGgwi5UP4wUoMjzYh7No2mZO5YuhtFBRo/ExZQn/NLrjx+EZUCp2Tcdtnjo/v5GE8KbYWlWs+5u4w5f+1JiUNWsBfq6k2NHcT8ADxbEHwvFiL4yjRGH/4hdXHSc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M7CjLrIjrBLhQ+ttuLVDEcp09od0jT7eztN9bknreJ0=;
 b=TuXpsKZyloQecp75V7k/qNpDf9uEqqQg8Ee5i8baGqa0a7cACtj42AF/7rZeiGirZaiECjCEsdx188nghCZr7eiSovkkU1D1f93PyxZEL39sde6IfJzL2XNwSMVdMPJ0vQY3FgUg8csGn41CcqVTdwMqlOse46X0qyHHEb58UGrfdk+f3iWaNPN6lydluQcCFcZwOFCwOwovZr/f1MMWXb8EH2GVUOLHqPnWaH/UIEijsQEC6DFvYxBr94wCOqbkWGEh2xNvCsmYhFLDUjhk37qpjjq54hqwULVUYdTQtARLxzDnrsfeGl5w/5JgAuTmYAau32AFVXQvCWFZoc9Qug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 21:18:32 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 21:18:32 +0000
Message-ID: <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
Date: Fri, 8 Dec 2023 13:18:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Dave Ertman <david.m.ertman@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231207182158.2199799-1-david.m.ertman@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231207182158.2199799-1-david.m.ertman@intel.com>
X-ClientProxiedBy: MW4PR03CA0069.namprd03.prod.outlook.com
 (2603:10b6:303:b6::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5128:EE_
X-MS-Office365-Filtering-Correlation-Id: 26f33089-c2da-4a99-f777-08dbf8333b34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eNzfXspwFQx/H+Ck60XZgWGTAjzXHXIe8TU0MFUaGdi7TgfyxhEdwmbq8tiFK6PGmMjheAFVq87sfJnohXGxZlBoWZ7c1/Qrq+c2EDg5wG7npSo3BGHQxu2pYR4m2MtkGZ+46i9fhNqeRMLu1cLqFWHosKbRFvY4u/MHpAakPC1hX2zjHr1LOiZnU7vuDELEDvAfcK/b02zy4YGPNcXG0Djcsq6tcz5FId6AlD9DnoDgDInya5Phrbe+gAbXQThxDo1kA0NjOdtstwfEwueYPCBP3kXNJS4xZ2tqsHguR/+kjVHRPWCoJHDAE/BXQsZEaSjmAuQquDdP+F+GG+0U7FRGjF2GIVHSgrRq1ze5u/oUP5tIDTNaPRl4spMzQJjqymz2LtKdS18AapnpaHw3Gl7lDQpPgURvY4jGU2KUiFWRcw0NcRfiGi+x9QfnY6IADvGQvkT4Vu6rIcQGOEa0C8EbSd+npuCh4GU13kWmRSQU+tJ/kDZxrvOrG7EB3vzeoIZ8MLQ3OTg32IpU7vbb5ijUO7/spU22YMegLBwA6h/gqxUIbg9AmQh6swaf/CvZxSONS8wZyoPnslwPJSVLMFSJorwDdcFNbrWN/81VuiNUG0R0QPfcT+w2QdwF2c6ifsOgf6xhH/wFhW99wbIK4A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(346002)(366004)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(38100700002)(31686004)(4326008)(8936002)(8676002)(82960400001)(66556008)(31696002)(66476007)(316002)(66946007)(6666004)(6486002)(5660300002)(6506007)(53546011)(6512007)(2616005)(478600001)(107886003)(2906002)(86362001)(83380400001)(36756003)(26005)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0YvVGxMbTRHWjVIdkdMS1ozMVVKa1NreFZ1M1FRNGJTdk93SjN1dmNBRTBM?=
 =?utf-8?B?UDNsOTRldEx0S3dTeGR4bDNlSUwyRFFMU09rZC9Scm0yb0lVTDJWUC83WXJq?=
 =?utf-8?B?dE1MR2RyOUZNZ01YUDJDbW9RKzdtY29uak9sUm5oVXhCY3lsc3BoeVY4Yjhp?=
 =?utf-8?B?UVpSMG9LUmN5bFh5MWFTRkRLWHFSSVY0LzN3VDV3ek9sazBsTHRybTVSNEk2?=
 =?utf-8?B?a0dKaFBhbHUyNnh1Sm80TWpJMkVvbzBnVURaK1NpYVdiSjRVR2tHS1hJNHN0?=
 =?utf-8?B?emZLU3MySEpFT3YwS3dsT3FyYTlhUzlWZlE1Mm45M1BVSjNHa3V0Tkg4bEhV?=
 =?utf-8?B?alZBZGx4YXZKQWYvSU41bUdYYXEzZEhSUWt3c3g2eUlXQXR2SnVERFZxR0ND?=
 =?utf-8?B?V0s2RDFPOUZoRmsyamV1RmEwc3NjaHlkN2w4WmtQS3MwZHg5SHB4OW9EZmpj?=
 =?utf-8?B?bjNyYVB3YkRXMVZTYXpvdG8vQW9OZXJXOEQ0K0plcUtjZFUvVGxmVUNpK2lY?=
 =?utf-8?B?RG0wUlpVbzE2aDU3L2hvUlIwTHVoZ3doVVZkS1d0NEtVSTVNTXVNbE1hdjky?=
 =?utf-8?B?QjlUUzVaeEdLNUdrOXR5UnVFUEN3SXk2MHRDMUdDYisvREZKQnZOQWFPUXRh?=
 =?utf-8?B?V2MvK2RkWHh4NUxGMWdudytTdjhtSmp1Wm11QkV5a2pNWnRVODd3Mmh6QmVo?=
 =?utf-8?B?K3k0WlRFRGk4a2dtcHlxcDZpY3BDa3gyZ1RXakF6ajJnUTRjUVh1UVZndUhi?=
 =?utf-8?B?WEE2NVlZN1dvVVJPcG9aVG1GSExLZll6dGZFbmgvNFpKSjd2UURWT1BvdzMy?=
 =?utf-8?B?cVdUV3BoTzNaaENGL1YzYTc1TjFFcFJBQlRLOEpqN3NpZWJ0MUJIaXdyd0hF?=
 =?utf-8?B?RFJpU0EwV0I3dTRzckU3V2lDYjNjOUNuNzFrN0tJa1NnNjNRQmVEaDdOMmRl?=
 =?utf-8?B?QUVtZVMxeFpGSCt6eGdiWHZjU1JRaFlvUEpnNmp5U2JCU01PQU9kYml1ZHdE?=
 =?utf-8?B?eGRmVFkzcC9GTXV2Mys0TnRuUk1sQnl4TXJVVkZsTTk4cGZSYU5JZzZTU0xN?=
 =?utf-8?B?by9OVGlzZ1d1UFVtOWp4QTg5bkN6SWFxdVhlaGltalJGelRwK08wNDNLSE12?=
 =?utf-8?B?VXNCNlo4d2w2aFozT1laTGlyaVY3LytmNVpvTDhjZ0o4U3ZQLzJpMjZEa3hB?=
 =?utf-8?B?eHRBeU1aelBGZUpWQzNUeHRIOFF5d3dDSUdlUUxiZkNCM21pc2FsZW9RSGUz?=
 =?utf-8?B?WUUvclJmdnRZVjY2OXJ2RWtSTXBLYXB5ckMvenlHV1RSWVZIcG9hRlVVVEtl?=
 =?utf-8?B?TzF5VGt6ZDA3Y2JvcldlbWcwTk5uOStpMFlMQ0R6MURiUTBZdDY0YzNvL2gx?=
 =?utf-8?B?M0doU2Q3dWxMdXpXRjVQclQrbm0vaVBEUVRRdFBTaVB0cGVwdTExTjdRS2lM?=
 =?utf-8?B?WW5haFZWN253RVZzU3ZFZ3RmWjlpZ2haT0dLQ2tZWnZTRnZZQ05ib3owNmVG?=
 =?utf-8?B?VzBaeUNNQzUxRTNkV1hCSHR4d1RWUWdrbHRGZ3ZlZmZGRVlBcklNUUlKRGFR?=
 =?utf-8?B?VjFFY3BxMEk0WlpqMk1FWUZlS3M3WkFSQ3k1K1p3V0JBWVFzcFBGaXJQaFZS?=
 =?utf-8?B?S3FodndmMXQ3ZThaSzljZlRUNTlRdStqOUEyNWpvTzA4dFVURGZ6aTdSNEpv?=
 =?utf-8?B?OUE2TUJ4eUFFYTBtSE5mZ3pZZnp4NEZOUGEyZHBWRGY1WWlDdmNJbmpURlRL?=
 =?utf-8?B?cmhZWlFyMlB4TnF2V3J6dm1NNE12a2lPUjhmZ1IrMFdUajk4YURESW5yUmM4?=
 =?utf-8?B?ckZCZE1kdElraURSSlpxZWxzTHo2Wmp4SHZ5SUJWdWZKZVFKeFB3OGdQc0xO?=
 =?utf-8?B?V2lqZndVNi80Z1llK3djM3dBS1p4SDNLK3YvTWthT1cxNVR5dFE0NkhaWjA2?=
 =?utf-8?B?QVpnNVFMc1N5TVB3Ukg3T3pnZTZXQ0lwV0RkTVN4WTNyNVhrTGs4MGQzUDZj?=
 =?utf-8?B?SXlaUWV2VGtiempIakxBMnYyWjQzUmFyK1EvUXVycmVVN2llWUJjbXhqYmdZ?=
 =?utf-8?B?blBOdFVPT1NiL2xuMm5pQlhreU5HdmVsMEhuU1dOOTJ0b28wNzlDZVU3QVFJ?=
 =?utf-8?B?cWZxekJIQlZ4TGx1eThCL2FsVm1HVE1JV0pHTzg3ektMYkZKbU04SEJaWFJs?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26f33089-c2da-4a99-f777-08dbf8333b34
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 21:18:32.4991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ke5SpL8Oew5xS5rc/y1uW2s6ncLWLExnpei9f+ilTAsDCwHF/NNaLDyyyEUBzbE7MuYTd2r++jsc4vbNI9rbezL6DdPtqpYL+GiR2XNK1I8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702070410; x=1733606410;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AjPttO1XMzGsEe2A2ws1oR1TfRlpM0JFak1Z/XcRCZE=;
 b=k2ILVsGdgptsDU+ESutROTp9rLxNg1zdGKrBQ2fmlD+DkyAVc+7yj2pb
 28EcpE4m91MTAW2aDOOux5576kksuBv1+JlXXC0ra166tL4mnDdHSjdzl
 9OjuA5amYGJ+H3LnMDi6LWDg7p3T5Bfhor8dKyWhYGF+IKh8x+xM1CV2z
 eGmc/edJdiCsiQFnM22lsFS1DkFfuf7fDEUXbL/ZiATVUQrAq80vbtwDa
 ivQ0tcyxkQjud5aoy1PcevG2s+tj5KZtR04yOSQdL0nExVuRF4QzxTx5k
 ii1aAnbaCibYhh9d62wLgCQFhVxG3aJmJY/BHaT2fW/NZiQdIV9CDZfpB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k2ILVsGd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support
 check for SRIOV and LAG
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/7/2023 10:21 AM, Dave Ertman wrote:
> Previously, the ice driver had support for using a hanldler for bonding
> netdev events to ensure that conflicting features were not allowed to be
> activated at the same time.  While this was still in place, additional
> support was added to specifically support SRIOV and LAG together.  These
> both utilized the netdev event handler, but the SRIOV and LAG feature was
> behind a capabilities feature check to make sure the current NVM has
> support.
> 
> The exclusion part of the event handler should be removed since there are
> users who have custom made solutions that depend on the non-exclusion of
> features.
> 
> Wrap the creation/registration and cleanup of the event handler and
> associated structs in the probe flow with a feature check so that the
> only systems that support the full implementation of LAG features will
> initialize support.  This will leave other systems unhindered with
> functionality as it existed before any LAG code was added.

This sounds like a bug fix? Should it be for iwl-net?

> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 280994ee5933..b47cd43ae871 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -1981,6 +1981,8 @@ int ice_init_lag(struct ice_pf *pf)
>   	int n, err;
>   
>   	ice_lag_init_feature_support_flag(pf);
> +	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
> +		return 0;
>   
>   	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
>   	if (!pf->lag)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
