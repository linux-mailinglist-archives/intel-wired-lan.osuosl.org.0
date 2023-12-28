Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F74181FA61
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Dec 2023 18:39:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF18B404C4;
	Thu, 28 Dec 2023 17:39:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF18B404C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703785163;
	bh=z3xeBHQpnX+/Ya8AH/IWUk+CGz9xo8N1WygBAF+myIY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XbKo2n6T2carykqqnygi8VVFFcmxrkUgp+qn3pHr3byIcyccnDu5D3hEu76lvZdjI
	 cLySKcwiYVqm8tm2vOtm/H46+SujxlH4mvz4aKMsvHuDwj7M5lDqz+HAlSNnXa0psW
	 Zp5DhvNg+Ip7rC45XTonAKS4j9dZpOdJMxlFjB+I3qwqkQ6SuDKXyxMbJsxT5i7ciO
	 PLCy05tsIDSVY/4XNOjcBiVTXZ0jtVgZa2siYoxpjMLg/byXvv/MiftmZokma9M/b2
	 b9F3V8JB04cFAy66qGxPqgGpnWF+pLdVJ2U3GXgCHF80WNYFoczu5S5ze/IXwFR9I+
	 35nZOZxNfY+0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UqPomSfYJr4J; Thu, 28 Dec 2023 17:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 340C240204;
	Thu, 28 Dec 2023 17:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 340C240204
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2F751BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 17:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7637140A47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 17:39:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7637140A47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3AjEIlfxhM2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Dec 2023 17:39:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFF45409DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 17:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFF45409DB
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="3416142"
X-IronPort-AV: E=Sophos;i="6.04,312,1695711600"; 
   d="scan'208";a="3416142"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2023 09:39:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="778593899"
X-IronPort-AV: E=Sophos;i="6.04,312,1695711600"; d="scan'208";a="778593899"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Dec 2023 09:39:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Dec 2023 09:39:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Dec 2023 09:39:12 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Dec 2023 09:39:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKHi9Fsvn3kWjWUCfXhN0moTBNY7QU71zCyGhCr/pc57AHU1TTzoAGpWXQ6AN3QizXDt5Wt5XHEd5a90b2uPQl13Xwefr5rl8X3aV5k9kVUM5a0D6mZWOrrBhZDrgn0rebQskGMqoOXyiKBywm3C3RJETOaXjzcXM3Kax09aY/l+ezg0oEFeaatgvRb3CGii8ApfqwlRt/UA+eeegDOFb1H8yhD1yU+asiaUuzZtsjx4WcFKd9sJudNJR3Eg2t50UQBXMBKsH3x1m7zoA3FqCgvyAgyjLTNN2FBEXbL2pKMe0nSSN2zHAiFxHXB8DZ+TSMGDgXMwLhGZf2koRhXSUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3xeBHQpnX+/Ya8AH/IWUk+CGz9xo8N1WygBAF+myIY=;
 b=P591oI2yZbezDHKzIq/zRfJCvkxW2AAcyRD1k/fLsKhVJTtDbBZsAAtU1GlShudkg6Wf4dJTyoX5CgEzitwRqfR18PmthiUCbVNej4rDkm50gCkx/D1xNDKiG1JJYRjQLx8GL2TchZ/vL+ybz26FPFYrS2P9apR0iHmYfNQn03+ve2n2dwOKOsPkoIycaW4XBQ0E3GHBcRoUaAsL6NcTjTfD6itm9DSAnPWhC5lBKGlNBGc7hBp7BMrDlAW3N6nnnUUl9rQcz5gr1eSlWtwoS6hcRZSs5qVdmbibA+u6Fppu6kAj7cd3a9Vn5m94VCwEbPaZciccwTJsoCOvzcPtIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN7PR11MB2593.namprd11.prod.outlook.com (2603:10b6:406:ab::27)
 by SA1PR11MB8374.namprd11.prod.outlook.com (2603:10b6:806:385::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.29; Thu, 28 Dec
 2023 17:39:11 +0000
Received: from BN7PR11MB2593.namprd11.prod.outlook.com
 ([fe80::eaf7:25d5:77f7:49c1]) by BN7PR11MB2593.namprd11.prod.outlook.com
 ([fe80::eaf7:25d5:77f7:49c1%6]) with mapi id 15.20.7135.019; Thu, 28 Dec 2023
 17:39:10 +0000
Message-ID: <90ec9268-437e-46af-84a8-6ae8213b4f33@intel.com>
Date: Thu, 28 Dec 2023 09:39:07 -0800
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20231227173757.1743001-1-pavan.kumar.linga@intel.com>
 <5ae1537b-73dc-45a1-94a7-669e63dc74db@molgen.mpg.de>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <5ae1537b-73dc-45a1-94a7-669e63dc74db@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0146.namprd04.prod.outlook.com
 (2603:10b6:303:84::31) To BN7PR11MB2593.namprd11.prod.outlook.com
 (2603:10b6:406:ab::27)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN7PR11MB2593:EE_|SA1PR11MB8374:EE_
X-MS-Office365-Filtering-Correlation-Id: 039893dc-2908-45e5-2b60-08dc07cbe657
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/eoLsDpw1zwaQxfLBzQRHpsMZotJ8MdQPaFOa1jhrBUSSLcon+Zr37+QEVXY0ewRK3jSt8BH3P3QXCei/F5M3KHjjmeVmaq5/2tZZu0UdmJ9Omyv3EMREBAtXOX+mvfwMDfQi6pvOza8Cfy4E8GD4PHLbqyXmmndwi2ePXWZ/uvyjcP3UwFM0qoEnYy83DPJC9v03oDrqIFwCOjpTNpY3l1rkTIqttAfOMLGLcm+qcQT1BHBeGmf/nlx5myftRW+YExb+5QiZ1KbGiBkMAHZ7llK9k2ICQi0VR+1S/BtPLJWMY7SH4HHwXyMOeTrmeMxestE9Q2+PbaFBexNhypv+Y848j7xDE7Fw4IkSOywtrSdFhk+OVKbmnwvyAdhWGbb6yh/6CO5RLJVcKZceNcRhTia61STqfFVIbzfIss2wZaKHy0pYYB+8LvSzzuiX+yRJvqBJCBKMhhPIiRMqXs2S+7FB9rN0Efu2scnBAYhoxIghyDaDkE6s1lYYj722AFUloVLU7NSv4LdLwJrKH+Ps+TlCU5vSshn878WOAFJbPzhXMbwFH32Cr6fTqhvMttRdf9btaiVDlF9moRmtAfxK+XmwO4FFZEowbSlrwAmKcQfLdytgTqKQsgvsQ1cnaImS0OTPOwNa4zUwwF6zQ/YEPuzlDQpoQwL4jj0q6EOwg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR11MB2593.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39860400002)(230273577357003)(230922051799003)(230173577357003)(1800799012)(186009)(64100799003)(451199024)(31696002)(41300700001)(36756003)(86362001)(83380400001)(82960400001)(38100700002)(2616005)(107886003)(26005)(8936002)(8676002)(4326008)(6916009)(2906002)(53546011)(478600001)(6512007)(6506007)(6666004)(5660300002)(66476007)(66556008)(316002)(66946007)(6486002)(966005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGJnV3dLQ0ozZHZ0T3BkRGR5R2ZKbkp1akpmTWtsSW1ISHU5VzF5TmJ4WWt3?=
 =?utf-8?B?d3VmRFk0eTVEZnFTaVhFMlVYYWNoTUxEeFRBNmVwSk5OYjhZU1lNZG4zei85?=
 =?utf-8?B?SlVPOGlYbzgzTGdMdGxuamxjd2FsMDV6RjBFeWR4ZFlqS0U0TU1ENHV6WmZF?=
 =?utf-8?B?MWlLbFNrSTE0SHVOaWl5eGU2SWZNckwrd1FPTFhDV21hbDNyNkFIWXpIanRE?=
 =?utf-8?B?STZoaXZNOC9UdWEyRWR0Q01SczQwa0xRN3RxQjhIZWlxNDlhWDRQTTJPNUV0?=
 =?utf-8?B?a1NveGJiek1aczZrNVdnb1M4dEpOZnJhMHpXZlpmcVVKVXV6d0YwS1N1aE5u?=
 =?utf-8?B?NEtJSFVQaXJuemNqcWdWdVlNTFJ6TE1vRVlkYndIVDNlc2RpaFdVVHROTklH?=
 =?utf-8?B?KzBJOFlPRmtKWHRIZE02TWQxRHhJRUFCb1ZhcW9veEUyWHQrT21GcFFCOVg2?=
 =?utf-8?B?LzFxQXdaYTdSSm1PWG85S2dhajF1VDVFSGwvTGptQ1cwSUg4TnBKcFc4bVBa?=
 =?utf-8?B?OXVCdndld0xWcTlwYmFkVStDd2E2SFd6ejltdWNsbjJYL211T0hhbGMrRU9t?=
 =?utf-8?B?Z1JGYlM3OVZkcVdtbmk3ckJuTENzb1dLM2FLYUViUG80Q09tTUc4TENVa0Fy?=
 =?utf-8?B?aGJaQzhFZWpGZkdTKys2ajN6dys1ejUvNnUySm9oSGo5ZUFWZTBVa1lBSW1V?=
 =?utf-8?B?V0xsVzF0NVpvM1A1MENvM2VmWDhFRlI1UHZoZm9qTFk5V1VaRFZmdHgrT1ZS?=
 =?utf-8?B?RGJiVllYMDJ2cWN0UUlvWVloNzc0S0I4Q1hZN3RzMWVlbGNhYlpESEtpLzBx?=
 =?utf-8?B?MTNYa0ZWYm5Kejl4YmdtNk5OWTRrWC9nMEtaV2FtaHoxT05va3o0Nm1pR2ZL?=
 =?utf-8?B?blJyaGw2cExOa3MvRURPY1RqTHVMVnQ2cklZLzc5MlhydXRaWGRPTGhJV2F5?=
 =?utf-8?B?RTdta2M4OFZFMHpxRHpNWXFRWS9TNXdIWkJ2RVFycElROENpb0lBUW9vbXRu?=
 =?utf-8?B?OHVqdnR1c3VOelpQUmE4QUc5akozdHVpU2VvcTdCeFNyc1BwZWpWY3FkRmc0?=
 =?utf-8?B?N2R6dWZ1Q0JQcnJkQkVkVlB4dEgyUE5hNnpPU2VZY0dtVXpGN3dyRUIrVUpp?=
 =?utf-8?B?U0g3UENCRDYwLzYxWW0xdHNaem9TNktCNE1jL1pEbWV4WGlrdWV6MXRCVWds?=
 =?utf-8?B?d2VCcGJIV29acERQTGVhVmxkaU5BWTRHUmxUQXhzNktucUVPbzcrakI1SGRR?=
 =?utf-8?B?MTduYitNU1RmSFppcmJubC90ZzJ4eXlCT3RSN3loVE5XNDVHZTJXY1h2Snpn?=
 =?utf-8?B?MmxRM2YwdzNtVFdsN3NJSG1FTkEwTnpuY3o1ZXBRZENtTExuS1BtemoxUFgx?=
 =?utf-8?B?L252NUc0L0ROTWNyMlhtZ3ZxdmgxL0YwcGxpa2t6NVlCYVdkNEJ0bGR6Q0RY?=
 =?utf-8?B?UGZZTHdGS0xSUTYvdXdlaWJOYW14MW1QTmpXWUJQak16T2lBeC9LM29zNkVL?=
 =?utf-8?B?UTRndnM1aUY3THdjV3BIZEMxUnlJU2ZUTDFseU8vY1ovMmkxYzRRVDBHNlQw?=
 =?utf-8?B?aU9BSXdubVRBeUozSWc4SzhEZ1hhQm9iL090bXpoOUhGcjNxMTU0OTQ4Ykhj?=
 =?utf-8?B?Z1licjMyaXNjR01USmZHVG41WjEvWTRva1pZeVRuSkhwSktYWFo1Qkt3dlYr?=
 =?utf-8?B?SW9TSFdGc0FPUU42bmRFQk5vTmVnQWhKK2tnUGQ2RC9MZ1ZYMWR4T0xXbnIv?=
 =?utf-8?B?QzhnUEJuYldjeU16NEJxMWtUdWpTZTNqNDM5cnNRR3FLZ3owT1RXOHA0d2FV?=
 =?utf-8?B?eEVodm5lN0t3U044VkEvRHZyS1Q1WlhtMGJiUkNNVW5SRVRrcm1Ya0tXaGV0?=
 =?utf-8?B?TFh3cC8xMjJMdko4emVPQ3dMamxCWmlYWkhzeW1qQ3JHOGNGeWQ5OHNudzNT?=
 =?utf-8?B?WUZmY2lLbHk4N0ZEN1Y3M3ZKa0pwdWdjTGZYRzJjQVBvTUIyUzdsd2dNSW9r?=
 =?utf-8?B?bTlhT0YzZnQvaklGeHVFSWprTVQvRVVldGdFbnFIdmlCNHBHZ2lwNzl2VmJl?=
 =?utf-8?B?NlVEdTcyRXYxUkxobUFLUUxQU2JSbUhpVStYZExNK20rMHp1R2VxUjNxcGor?=
 =?utf-8?B?azA5WW1QdGpNcDI4eWY5Q0RUZ0JPQXlFSmZYc1orM1JQWThoTklybjNrbGw5?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 039893dc-2908-45e5-2b60-08dc07cbe657
X-MS-Exchange-CrossTenant-AuthSource: BN7PR11MB2593.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2023 17:39:10.5897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sMXg8IYQPtOdo57vjvhnvWH1P+gQ87wPk+OV2RA5+xGW1JYptDDTGuK0MLfclO31WkRqboyidbQBUmvmGk3k0UAe01GlljMhT2sJU5FvfII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703785155; x=1735321155;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9Mv4CK/eDYVJpD515njvi6tqst2StMNa2L64IfGAYQE=;
 b=RZMpCg89xyqo62KVnhv5yC4q5S5vczRCuP8dPK1AF/K3rU0c5J9QIhye
 jS0qFcXpqNs3CrToyuorj0uS5Lwl+CZy9W5SxwwkLHh6f0mTG1mUtLx2X
 yu0soMTs9wHAa4hcNhwom6mO/eJB/Ip7W12zhO1Sp51x+P0hFt8ijBJV0
 sbI2Czhtc9+pQ2COlPVuX7PG6eJ8wZVJQiDyzNIYvDeBFfZKWweMYfXYa
 OesPf02oQAOccTiRp/eK8LamzeCmO4TxZAwaF8wpj29i5aqAT4RjxDCQD
 b5L8fEaIHKo+rip+HDDLnyvrdFf/31u/lQkkoIEDfSG9yn8hRD//J+WTk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RZMpCg89
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid compiler padding
 in virtchnl2_ptype struct
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/27/2023 1:45 PM, Paul Menzel wrote:
> Dear Pavan,
> 
> 
> Thank you for yoru patch.
> 
> Am 27.12.23 um 18:37 schrieb Pavan Kumar Linga:
>> Config option in arm random config file
> 
> Sorry, I do not understand this part of the sentence. What Kconfig 
> option was selected exactly causing this behavior.
> 

Apologies as I couldn't find the config option that was causing this. As 
the driver compilation with arm rand config was failing, posted the fix 
first. Will debug further to find the config option that resulted in 
this failure. Thanks for the review.

>> is causing the compiler
>> to add padding. Avoid it by using "__packed" structure attribute
>> for virtchnl2_ptype struct.
> 
> Did the compiler emit a warning? If so, please paste it.
> 

Here is the compiler error and also will update the commit message with 
the error:

include/linux/build_bug.h:78:41: error: static assertion failed: "(6) == 
sizeof(struct virtchnl2_ptype)"
       78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, 
msg)
          |                                         ^~~~~~~~~~~~~~
    include/linux/build_bug.h:77:34: note: in expansion of macro 
'__static_assert'
       77 | #define static_assert(expr, ...) __static_assert(expr, 
##__VA_ARGS__, #expr)
          |                                  ^~~~~~~~~~~~~~~
    drivers/net/ethernet/intel/idpf/virtchnl2.h:26:9: note: in expansion 
of macro 'static_assert'
       26 |         static_assert((n) == sizeof(struct X))
          |         ^~~~~~~~~~~~~
    drivers/net/ethernet/intel/idpf/virtchnl2.h:982:1: note: in 
expansion of macro 'VIRTCHNL2_CHECK_STRUCT_LEN'
      982 | VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
          | ^~~~~~~~~~~~~~~~~~~~~~~~~~

Regards,
Pavan

>> Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: 
>> https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h 
>> b/drivers/net/ethernet/intel/idpf/virtchnl2.h
>> index 8dc83788972..dd750e6dcd0 100644
>> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
>> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
>> @@ -978,7 +978,7 @@ struct virtchnl2_ptype {
>>       u8 proto_id_count;
>>       __le16 pad;
>>       __le16 proto_id[];
>> -};
>> +} __packed;
>>   VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>>   /**
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> 
> Kind regards,
> 
> Paul
