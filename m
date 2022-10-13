Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DC85FDE7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Oct 2022 18:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEB0340CA2;
	Thu, 13 Oct 2022 16:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEB0340CA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665679918;
	bh=cjwAtzE6w5K6PtVe/OLhb6wcjxpFye8AgOkHzS5akNs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vmtgJwjopuQHug9psH0xxOhM3YJ99ZJ7lafhZIJPQUsWsSefhflDnjX/uvcWWA4Ja
	 qBgiF/zVizzLKN+Hf1aEL6636P1NaKa08YyuLd1I34ZQaasekceKKe3zL/xZD7YAnI
	 P1Qo5KW86OFnNMLy5E+jBX6B8QAizDIN7lVCrLnuaVaYS3RVgssN3V8hT/xPW/Cyhy
	 Fd1crZIc8U7rjpIuRvno20AdHFo3sSdrpFr8gOwCVHwc8M21jNKoIwG7klgczye24O
	 qaJMLv/G4bS7yeaz7Z1z0KgB51j0+wHbi/UPK6lJDu96TreoOuWQhid0T9fsB8PLDm
	 s49aqqHMGSOhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ATk_5yFN1Im1; Thu, 13 Oct 2022 16:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A033404BF;
	Thu, 13 Oct 2022 16:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A033404BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCABC1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 16:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B04AA41D28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 16:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B04AA41D28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QAweaZz_RUA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Oct 2022 16:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18D9741D21
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18D9741D21
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 16:51:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="285524483"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="285524483"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 09:51:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="622234582"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="622234582"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 13 Oct 2022 09:51:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 09:51:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 09:51:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 09:51:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpvWo95tT4GWmiMGosquPraMR16ZRcmEU3H1K2A4QjSJ6Q4//uYXt0eRNOV68BR7x1zJp58rQkLeZv1MIEheS8lA5DpLPlmocLoRFMntx4YW+RFk3DSfe0bGhpf/pggDr4wkAhjbQKYrUuSDBeOuBxBpiR/WXdKYmu6mY/IxXX/D7k5NgdJnMUbVdztdhwPx5KVTNOcDY1KtGlOWu/hYkZOwCNADXRnkDBJsoFJuvnoGBI9uYOADiSqgyZe9wYsHUmZceoEUnDYZXxVGxtjKkp13KH6b1n+9tTakEOcGoVfv0ugzo+nVZcn0PwXISoJxUyxOlzMRXWTee0lOL49qvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mRFHW0W7uyU4OHh4hNP+WXFDxShUa2Ih+uXYyy7Boq0=;
 b=YDXn3aUSHM+5OzfCgd55KC7f2a44aeTizb5SJwMYlpstjagqL8t6bh+5H8Y7WNEeSOdCYpHafrlh2vBUn9mtPdg+qNIXGdWfbdJNBp7FyjfPH3+Z0Sb/Um4K3vMijHd79yHaJ3a7vWzElwuH4cuuFq2LDjblKbNkc8ZXbOUod52qnJGfIr/uGSCWtyJbkfaFbAgAevn1ahyjvwFv8gV+jQ/AAtmCizJmM+xiLtojsJNpJq7BUdCnbL7odbTI6A5HrT/6E2+4wyOyHF66YgfNzP+CpJiYrjzMOBQEsY9/Hsgq24jNKuzl6KvjQD+oaYUVG0lNUsAcfb5nhiAhuVdNHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 16:51:45 +0000
Received: from CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::71f:dc6b:f455:3447]) by CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::71f:dc6b:f455:3447%8]) with mapi id 15.20.5723.022; Thu, 13 Oct 2022
 16:51:45 +0000
Message-ID: <68ac50c8-77cc-3db1-626a-80ebbad2dd4a@intel.com>
Date: Thu, 13 Oct 2022 09:51:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
To: Michal Schmidt <mschmidt@redhat.com>
References: <20221012155535.666933-1-benjamin.mikailenko@intel.com>
 <CADEbmW0wNym5TJiXeJ+zABb3a5eRvSdPZqWYnDwB6KnXUYK8nQ@mail.gmail.com>
Content-Language: en-US
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
In-Reply-To: <CADEbmW0wNym5TJiXeJ+zABb3a5eRvSdPZqWYnDwB6KnXUYK8nQ@mail.gmail.com>
X-ClientProxiedBy: BYAPR06CA0008.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::21) To CO1PR11MB4852.namprd11.prod.outlook.com
 (2603:10b6:303:9f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4852:EE_|SJ0PR11MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: 721d8b4d-90be-43ea-111b-08daad3b361f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nKyCdrh9hrgb6JfYj6OcM1LMi1TOaZw3LH36DGMdxdw6Pa6KL7dDIUqaRdSxUiVoZjnbcOZ2kNf8xfIurxiwIgrLb6tdMYoAPbxeRB5dyzsFOCCo+YrJBuSS2QkKOqo8pTCfpNcZ8fWCYucMfw+giivhfZXcXqx7lFa//wbNdsWH6N92PJqzENYCnk/SWjg5VfiZs+BwuH3hC1uIOrw2gv5chp7rBhbR/svIO+ZRKuY025eG7SsxlaI4gUn+p5CtCZC8ZvOWo9XQsMMu3UGSbQmh9HAwu8BrAwfUdwy7sGaLSbA5QWOQIN/9WCqjJoONaCaiVaMNS3co9v/BCtHExi4D/BFMVB1JPTly7TnXbCMKpWYIAc7Xk5dxIUWPZ0noP+K+gs7hf2U3qUFEziV0Mr5lNnmIPBj13FELISitQmcossY4nMOwCaa8y/hwIwaliodhyVCjUyJ+yB/nl74FUedtjZX4OktZF2s25YpnJYChvjtEcnqhnmAlNeIgZYR9cBEY5e/w/S1taNuniXq+8mx/o3Let063R8Rs91Vo/NfPeog9x1DgOPn7Z869kW6jKbtByjktYGqZW0MlM+iqukvobVg1xRQjoq+nAj4pd4aOZiCPuSb3Q5RsCNFLNrPVaXFF19UQY1L0iHa05ff9CYotfBcwkMwToflWGtXaBlt987CxJG63YdVwnKbXPEesMwAE9YVjO0lNqHYrS6JcM03T1Sn1vqkLyf1CcBhW9yvWjnHzgzupaBqvjBXC+sSk0ZPuh24LkUgpMiFIByS9bJ0uuGxkTBAJUck3MgHn2aaMlzu/wE8EKns84BdgDsZ0pmSJxBEsEuX4d89GTdUA5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(39860400002)(366004)(396003)(451199015)(36756003)(2616005)(186003)(26005)(6512007)(53546011)(2906002)(316002)(6916009)(66476007)(41300700001)(66946007)(31696002)(66556008)(86362001)(8936002)(8676002)(4326008)(38100700002)(6506007)(478600001)(82960400001)(5660300002)(6486002)(44832011)(966005)(31686004)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ly9acGt6d0cvMmY5aURtOGxmV1MvZSsrdUxuQTBJdXBWbEtueFBmSXFOTU1X?=
 =?utf-8?B?MG1wbE9iZ2d2T012NW4rS2VmVDRnZHRtY25lTm1NSk9TczZQanBPcTZCL29z?=
 =?utf-8?B?dXVrY0h0OGRkQTZmcVkyUlptQ0k3SHRnekdlSlZRRmNXekY4TGZ6STFPMWVD?=
 =?utf-8?B?Q3BrSzd6cmw1RkNPMGdzNk5sMG1WT1c3SGdERTZmV3ZhQ1NwaEkyeUsyazJz?=
 =?utf-8?B?NlgrR2JCME9ralJKbDlRMDhjYWVSUU8xcFlXalFoNE5hN0M3ME9MUWJDeGww?=
 =?utf-8?B?VWxNZUlleXhaRE1EUk03OXhxLzJWT05FZWY5N21GRHRTSG14dDZVbWJVZm9B?=
 =?utf-8?B?UTdQWVE1M29weWg0cURsS2VVSm0wTWN2ZXJrclhwcndHTHBybUtwTytoaEhZ?=
 =?utf-8?B?eksxNXpEei85NStmaUkwTEdyV3pMVytma214N3VKYit1YmdCdURwK0IrZGxP?=
 =?utf-8?B?UFRmaG5NcFFqTURhTWpUNG9nOVNkeTFIbkNqR0dUQndQMDE0a21VazZBSkxC?=
 =?utf-8?B?S3NWTk9qUitGdXladFV1N1hsb0MxdVF3ZzNKUVZPVmRZWEFZVnR6dmJET3lv?=
 =?utf-8?B?am0zQ3RiQmFOc2lKSHdsSFJRbEd5alRYc0FkOW5ld2NOTlh1VUZxQk5TRjI0?=
 =?utf-8?B?a3dldEgrM25kNnVRdW8vTGZnNDRqR0JpZEFIbFcvVlpNUExpT0ZjVlVyNDBy?=
 =?utf-8?B?NU1adkI0VzQ5eHNzWlZ6RFBsRU1vZWt3WmhkRjJIS0w2azR3dU1EaDFRU1l1?=
 =?utf-8?B?WStqOE1aMjhySnhlbmkrVnpwRFFJcXpNSUVEdlR3RStSWjFGVzVSOUtRWXJD?=
 =?utf-8?B?NklmQStOVTc0cjlLUTFvOXRtMlJTNmE0Q3REY1krSXlIZm44ZDRLRExtT2dX?=
 =?utf-8?B?TWNPSlc1Q0hBOGRxdkFsU0NlK3QwOUVkSmZKT1dkV2ZNYXc2d1JlN29iM0tt?=
 =?utf-8?B?OUpQSXAyWW94bVo3Q1hEWHpZN3dtQWFYcFVVWUFpL25Ga2w2dy9RdW1KTkxS?=
 =?utf-8?B?SDdNeTZhMy9Sb01vbHcrMW9SOEFtNkhDVHdYWHhnOWYxdXRObHpGQmt1Ukhq?=
 =?utf-8?B?aVp0RVhKOUhjK29rZkhuUDlKeUdXY0dIRFVRMzlEWFV5a01ENHQ4bHYrNGFM?=
 =?utf-8?B?SzhnZi9aT21uWE0ycDFPcTFnZ21TN0VTQXE1anF2MUx1NkVxODZpL09LM0kx?=
 =?utf-8?B?YkNWQW53am1kQUJkSG0xMXRrT2Z4S0pvWkg1aHNPRjJWRUlnTVhKTHFEWWVC?=
 =?utf-8?B?YlFyR3BwbXYwZkMwRUtBMmRwaFN6K3ZEempzTWM5NWJYOVp1bXI0ZWk4Ylhh?=
 =?utf-8?B?b0p5bHFnOWF0MWYrZXJjR1RyOVdlS1dESVVwWnp2U0UzV0h4UkM4ckVsdEZE?=
 =?utf-8?B?VWdFcm9PNHlwa2t5NW4yb0g5M0JSSjRUTCtxVmkxOEt4cTVtWWxqS3NRZmdK?=
 =?utf-8?B?MDB2Z0RyRjdaVXAxQk12aGlhSEdMYXJXa3ZMdkJrS0k2MkdJMmRxZHY4a1Vs?=
 =?utf-8?B?T0ExY0tXajVZU2ZOanVNaVIrU21PTm1WeDN1MzJkK1MyS2F2NjNSRitGSTR6?=
 =?utf-8?B?OU1mbCt1M25wYi9JZWt4am9DY0ljTGRLcGZuS3ZNUGo1ei94bHJKajFRVFBY?=
 =?utf-8?B?eDN4VjlPRzJtd2psNDBVczhBbm43d2JsQnNIQ2xoZGNxcm1aNXBwM2h0MG83?=
 =?utf-8?B?QU5ENEw1QmtHV0RXWThieW5URGkyRldVVzR3aHRwL1pYL24rdHRWaDRZZjR1?=
 =?utf-8?B?YU1vV2JHSjJBQ3lNUmNsMnN1NURCQ0V6V1lxU2J0azlTZWZLY1lRRHk0aVFH?=
 =?utf-8?B?b2VQcWxOYkphM2Y2U2pZV3N0cFJsbmo0K1c3bDdRalB5b0VBZzkydTBBejR5?=
 =?utf-8?B?MnFhenY0aWloTlViOGdQSFYxcFBnbmpRVm1ycEVPaEhCdkorc2xhWXlNOE51?=
 =?utf-8?B?TWRjQ1phamthN2V1V3hMeDB6ZXBUWXV2NHJZZG9PQnd2UzF5eE5QWFVZYkVm?=
 =?utf-8?B?SmJKb1dmZG05MG81dHB4Um4rU3pCZTlLd1YzYjNMcDRpY0Z0TnFENERacHN5?=
 =?utf-8?B?UmFDZzhubVNRbXU4Ym93TnhLQ3lDb29nenlrZk1nSG8vSFd3VkV0L3YzbzRH?=
 =?utf-8?B?SzdzazJaYVVtYzZwdHg0U2tOK3MrTWdqRWF3Q2t2WG5PU3BDS1pSeERxZ3Ew?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 721d8b4d-90be-43ea-111b-08daad3b361f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 16:51:45.1996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WXUM3k/63l4eYcM+ksU6yKLTKf7QMUQR1M0LI2cV++/hhXyP0dslimL6ziKFZBJpIjDrGFIHQPQqXxZSxYPQ32kEBbF8A8xJW9kEKwmGwNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665679910; x=1697215910;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6RVkXLqJilyIK/MYnL2F9/3j5Ef4QWKYfykDaQN9D5E=;
 b=H3X6vqhpvqZfTVpjwwAL9vUHxhzW1kSzNFUp0SyhJwHLjmysTYrmRRAF
 5fh8h1THfWtGfpgJRFv1FGJQyn6ALZKY7D20X2iahY7e0RDsI6ZFhNWGE
 VO7cxPNcLQS7WPQNUSKKApIJwfBYHH2V2Y3PpRl4L/3erdhiaTAhEsi6w
 azyknF7KGLB/6tf0YwlQsXrYNFiXMnm/658QkGxccEsyTaPkr4351fPYx
 l4aFRLDDN7/tfV5XFKYTg3u3wV1qiKAcqO6jluOpWoPILtG7Vwg+FC0fs
 ZZfcrYLq33+NB2bz570TkK3b5ZEsI3mbevo2Y6LORB20Pv0M9ku+TC4KZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H3X6vqhp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net, v1] ice: Fix l2-fwd-offload toggle crash
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8xMy8yMDIyIDg6MjUgQU0sIE1pY2hhbCBTY2htaWR0IHdyb3RlOgo+IE9uIFdlZCwg
T2N0IDEyLCAyMDIyIGF0IDY6MDMgUE0gQmVuamFtaW4gTWlrYWlsZW5rbyA8YmVuamFtaW4ubWlr
YWlsZW5rb0BpbnRlbC5jb20gPG1haWx0bzpiZW5qYW1pbi5taWthaWxlbmtvQGludGVsLmNvbT4+
IHdyb3RlOgo+IAo+ICAgICBSdW5uaW5nIG5ldHBlcmYgdHJhZmZpYyBhbmQgdG9nZ2xpbmcgbDIt
ZndkLW9mZmxvYWQgaW4gcXVpY2sgc3VjY2Vzc2lvbgo+ICAgICBjYXVzZWQgdGhlIGRyaXZlciB0
byBjcmFzaC4KPiAKPiAgICAgQlVHOiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBh
ZGRyZXNzOiAwMDAwMDAwMDAwMDAwMDIwCj4gICAgIFvCoCA4NjEuNTE3ODAzXSAjUEY6IHN1cGVy
dmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1vZGUKPiAgICAgW8KgIDg2MS41MTc4MDVdICNQ
RjogZXJyb3JfY29kZSgweDAwMDApIC0gbm90LXByZXNlbnQgcGFnZQo+ICAgICBbwqAgODYxLjUx
NzgwOF0gUEdEIDAgUDREIDAKPiAgICAgW8KgIDg2MS41MTc4MTFdIE9vcHM6IDAwMDAgWyMxXSBQ
UkVFTVBUIFNNUCBQVEkKPiAgICAgW8KgIDg2MS41MTc4MTVdIENQVTogNjAgUElEOiAxNjQ3MSBD
b21tOiBuZXRwZXJmIEtkdW1wOiBsb2FkZWQgVGFpbnRlZDogRyBTCj4gICAgIFvCoCA4NjEuNTE3
ODE4XSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlvbiBTMjYwMFdUVC9TMjYwMFdUVCwg
QklPUyBTRQo+ICAgICBbwqAgODYxLjUxNzgyMF0gUklQOiAwMDEwOmljZV9zdGFydF94bWl0KzB4
YjAvMHgxNDIwIFtpY2VdCj4gCj4gICAgIFRoaXMgY3Jhc2ggd291bGQgaGFwcGVuIGJlY2F1c2Ug
ZHVyaW5nIGwyLWZ3ZC1vZmZsb2FkIGNvbmZpZ3VyYXRpb24sCj4gICAgIGljZV9pbml0X21hY3Zs
YW4gb3IgaWNlX2RlaW5pdF9tYWN2bGFuIHdvdWxkIHRlbXBvcmFyaWx5IHdvcmsgb24gVHggcmlu
Z3MuCj4gCj4gCj4gV2hhdCBhcmUgaWNlX2luaXRfbWFjdmxhbiBhbmQgaWNlX2RlaW5pdF9tYWN2
bGFuPyBBcmUgdGhleSBmdW5jdGlvbiBuYW1lcz8gSSBkbyBub3Qgc2VlIHN1Y2ggZnVuY3Rpb25z
IGluIHRoZSBjb2RlLgo+IMKgCgpZZXMsIGJ1dCBsMi1md2Qtb2ZmbG9hZCBmb3IgSUNFIGlzIGZp
eGVkIHRvICJvZmYiIGluIHRoZSBrZXJuZWwuIFNvIG5vIG5lZWQgZm9yIHRob3NlIGZ1bmN0aW9u
cy4gClRoaXMgcGF0Y2ggc2hvdWxkIGJlIHJlamVjdGVkLgoKPiAKPiAgICAgQXQgdGhlIHNhbWUg
dGltZSwgaWNlX3N0YXJ0X3htaXQgd291bGQgYXR0ZW1wdCB0byBzZWxlY3QgdGhlIGNvcnJlY3Qg
c2VuZAo+ICAgICBidWZmZXIgZnJvbSBUeCByaW5ncyBidXQgcmVhY2ggYSBOVUxMIHBvaW50ZXIu
Cj4gCj4gICAgIEZpeCB0aGlzIGJ5IGNoZWNraW5nIGlmIHJpbmcgZXhpc3RzIGJlZm9yZSBwcm9j
ZWVkaW5nIHhtaXQuIElmIHJpbmcgZG9lcwo+ICAgICBub3QgZXhpc3QsIHJldHVybiBORVRERVZf
VFhfQlVTWS4KPiAKPiAKPiBJc24ndCBpdCBzdGlsbCByYWN5IHRob3VnaD8KPiBTaG91bGRuJ3Qg
cmF0aGVyIHdoYXRldmVyIGlzIGZpZGRsaW5nIHdpdGggdGhlIHJpbmdzIG1ha2Ugc3VyZSB0aGUg
VHggcXVldWVzIGFyZSBzdG9wcGVkIGZpcnN0IHdpdGggbmV0aWZfdHhfc3RvcF9xdWV1ZSBvciBz
aW1pbGFyPwo+IE1pY2hhbAo+IMKgCgpZb3UncmUgcmlnaHQgaGVyZSBhcyB3ZWxsLiBJJ2xsIGhh
dmUgYSBsb29rIGludG8gc3RvcHBpbmcgcXVldWVzLgoKVGhhbmtzIE1pY2hhbCwgcmVhbGx5IGFw
cHJlY2lhdGUgdGhlIHJldmlldyEKQmVuCgo+IAo+ICAgICBGaXhlczogMmIyNDVjYjI5NDIxICgi
aWNlOiBJbXBsZW1lbnQgdHJhbnNtaXQgYW5kIE5BUEkgc3VwcG9ydCIpCj4gICAgIFNpZ25lZC1v
ZmYtYnk6IEJlbmphbWluIE1pa2FpbGVua28gPGJlbmphbWluLm1pa2FpbGVua29AaW50ZWwuY29t
IDxtYWlsdG86YmVuamFtaW4ubWlrYWlsZW5rb0BpbnRlbC5jb20+Pgo+ICAgICAtLS0KPiAgICAg
wqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyB8IDIgKysKPiAgICAg
wqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gICAgIGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jCj4gICAgIGluZGV4IDA4NmYwYjNhYjY4ZC4uOTZi
YzhmYWQzOWMwIDEwMDY0NAo+ICAgICAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3R4cnguYwo+ICAgICArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3R4cnguYwo+ICAgICBAQCAtMjQwNSw2ICsyNDA1LDggQEAgbmV0ZGV2X3R4X3QgaWNlX3N0
YXJ0X3htaXQoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldikK
PiAgICAgwqAgwqAgwqAgwqAgc3RydWN0IGljZV90eF9yaW5nICp0eF9yaW5nOwo+IAo+ICAgICDC
oCDCoCDCoCDCoCB0eF9yaW5nID0gdnNpLT50eF9yaW5nc1tza2ItPnF1ZXVlX21hcHBpbmddOwo+
ICAgICArwqAgwqAgwqAgwqBpZiAoIXR4X3JpbmcpCj4gICAgICvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoHJldHVybiBORVRERVZfVFhfQlVTWTsKPiAKPiAgICAgwqAgwqAgwqAgwqAgLyogaGFyZHdh
cmUgY2FuJ3QgaGFuZGxlIHJlYWxseSBzaG9ydCBmcmFtZXMsIGhhcmR3YXJlIHBhZGRpbmcgd29y
a3MKPiAgICAgwqAgwqAgwqAgwqAgwqAqIGJleW9uZCB0aGlzIHBvaW50Cj4gICAgIC0tIAo+ICAg
ICAyLjM0LjMKPiAKPiAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiAgICAgSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+ICAgICBJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZyA8bWFpbHRvOkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnPgo+
ICAgICBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4gPGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbj4KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
