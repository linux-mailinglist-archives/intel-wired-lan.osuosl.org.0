Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6AF4142A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 09:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E61240480;
	Wed, 22 Sep 2021 07:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2R6iCeI4ILci; Wed, 22 Sep 2021 07:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0ECE540418;
	Wed, 22 Sep 2021 07:31:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 257B91BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CA8B4068E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9i4xzQuOsZv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 07:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E48204068C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:31:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210773521"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="210773521"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 00:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="474461308"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 22 Sep 2021 00:31:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 00:31:04 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 00:31:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 00:31:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 00:31:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pojnu68FkwgTMqULoHD+N8BXeWpFrTHepvUMgnLy/0crgiGBa5Dhp6Zf9fw0ZuaMmNCTdY++5CcfdUPUMrxbDHlyEb07mY5yo6a5YU2FDf/MEBFlKBSsCJGW+//va6bqDLS/x0cWtv4Crjllhl846epHPPQOQtIgtbux8VB7tqxpk9a5/7qv6Smp8/oxvCVAmdi3phKKBwGzOQGeY91daRnANbrkvRil9dhl0F8one1kACJvxTFN19O13Ns6SBFemLU/oqztx6HBUGp9Wms7KbXN0qUemyDfuJz8iV77z6xWUoO14BDqsLsum/JyOefV2NWKfWn6vU5UQnjPabyOug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=c7KRiIxaYLrhONcgX3VTdXe8F4SsPBBKV7hxd2C6Vmg=;
 b=YevAB92Z+2kFyRL5AC/pQ/ML+GorFxszxNsJOJtsjUTZSIAaKH1M26uha9FxoOO22LvBCB0rGE2QsOrlRjzB7AGFsfp7B9nZ3V7H7CvbogTF01MDnMk8c5E3BeZLmoqmihST/olqQ1bsjqJp309Fxjp//2TlzSeFd3nqr61DO2Vzubai658+P0gFXw89u/rJsBWYrcknLI3sK7d2B9mr5bnSTXcDcmTfJeqWZ1CsNMnGjytQ5oMyc3Ymn1dOKyHgtsKEvVC3bLAHEaDIpA/u9iP+BKk37c+v7vHkjnbZlb57jvVALLTL87qMC4X3jSu/7YDbftRZM2k5YBkkxpoY3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7KRiIxaYLrhONcgX3VTdXe8F4SsPBBKV7hxd2C6Vmg=;
 b=SypIoOkYrju9xkX5dW7Y/Cd/L0JQeN3TF1pRItL4zdpiiMluLfe7szN+ldUtnIvMm2zBmpK6d/uETUGZABxknhCyUnJndYnamllFAmc/U9qELOnrKTDX9pcAFHo+chGfKiy5XTT10Zd8bXHhBc0YNXk5xIqTu1IBtraJhrpkx7Q=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:95::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Wed, 22 Sep
 2021 07:31:02 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::a07f:5f13:3a27:40d6]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::a07f:5f13:3a27:40d6%6]) with mapi id 15.20.4523.018; Wed, 22 Sep 2021
 07:31:02 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210922065542.3780389-1-sasha.neftin@intel.com>
 <3bbabd03-317f-7bb5-064e-5e2b648ca689@molgen.mpg.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <f587f383-c5f3-3f47-9618-e15e2ea0939d@intel.com>
Date: Wed, 22 Sep 2021 10:30:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <3bbabd03-317f-7bb5-064e-5e2b648ca689@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: FR0P281CA0063.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::11) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
Received: from [10.185.169.5] (134.191.232.46) by
 FR0P281CA0063.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:49::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.6 via Frontend Transport; Wed, 22 Sep 2021 07:31:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d3071083-a2f0-49b9-3799-08d97d9aedea
X-MS-TrafficTypeDiagnostic: CO1PR11MB5185:
X-Microsoft-Antispam-PRVS: <CO1PR11MB5185B4EDE65E1E678D0FCDF497A29@CO1PR11MB5185.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NPdgyiH6mC2n18Gsq1ruImz6dSk9N0ailNvbvi3B3aedSa2IMJGQCHK5sXXtMBBFketcjHtlrMXX7Rwvm/hUfT6QHkzm5JGZfoHkxE9WV0QZsfxprsTbVauAnOs42PB+Qavdyli+iG/7WfhAK7T1eV/J2HkgdTUVXURc6//zJOBfuEeAbaaiOzXnKUloOjFglWxinRUM9j3WNSZfvTI1YSjz8Ax+JyeT9TEjwT+1Lb0XJg4a5qRvXZ9soWg8uEkoWtxNjtT6FWKMDnqYztja1CJsaac5U6ducDLZkbVpr5tNPh2N8bFrrjAWZM8CtCmhzAcAWSSYoAt2np66thkn/eknvd9JGjIOoRDQlaXMAP2wYG2250ucMOLRQl7rwRGMG3FvXybJt2O140YHSW9thgvAGtVM/j4HDPtwBvBKW+whqUL7qzr+6PPBzX35Liwp/YDb6a9cibvBQiei/wzk/PKd6auk8nbDBQZtSacV0I+XVI3mM2ZdphH7uD3aPx2cHq7oW409l/H8BH3uKWYNoNJYu+6Xa1bsl7AcATCm64lrwWCPwvoAMIFg1YQGM+rUeHDLtM81+d1EOD3aowotuKfm84HuaeZd0Gc+BcNs9PE+FlpEzJMG2bvUttqTn3eOs+2T9wAfCC00ApB7mSBLYJGwBr2wagO5GGWW2/nkxnvGaMI+1WzAtM+FwWGa+yyukIBvvr5H/v873KrZ067yF9Ku8hz4DnDl0rcjCWykJrnAL0OOaGKbwGPaq/Itd4VJhDHqNMU9xaX46HIfixdlyRhkeKmfNESPhpkyqf9FZKFv9nkAosqToYGKPKAUruWOyF/mq7WdEobUSaXBjIrjl6gsWCJ5tG5W2loJ4hN89zzedokMm86m6o5g7cEcEtZ/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(4326008)(6666004)(66556008)(31696002)(83380400001)(66476007)(5660300002)(16576012)(66946007)(316002)(31686004)(966005)(44832011)(2906002)(6486002)(38100700002)(86362001)(53546011)(186003)(6916009)(8676002)(2616005)(956004)(508600001)(8936002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWNNSmxyblcvcEJDeitEa29BVlcvZmR3OFhZdU5McVJXbHZXeFc0OVFjYmJs?=
 =?utf-8?B?bkx1N2l4Q1BybGNtdjFqelFqZkh5YlhBNk5EMzBQS04xa2JiT2U5ZTJETmkv?=
 =?utf-8?B?RzhFUE5rQXlSekVya1VQTVJuZ01NQndaVytUZHdWY3B6djRvYVByTVRFYjB4?=
 =?utf-8?B?OWRQczRteHVPRGVRTFc4OFFmL2hpdGVVRGJMRkp2OWJBUFdoeUNuY1B6dHV1?=
 =?utf-8?B?RDJZRjZTbVA4bWMvUVRMZ3V2NTg0ZW9hOFZPWTQ4UnFieEZpUDRvUkx3ejlr?=
 =?utf-8?B?dStwRVdoRHIySzk2NnhOdUFSaVJiTXlKRjdIdkJGNE9RaW93SXBHeHprSlZn?=
 =?utf-8?B?WXMyeVVTWDhtSDdLV20xa0UzOEZiWnJUdXRoZ0o2RE1UWFRzMmhZc1NHU1RJ?=
 =?utf-8?B?MDFjNzF1Q0xIRDh1N0Z2VW9OUjhld2k3dnZlZGZCVDlKTTkvS0JEdXl5Z2V3?=
 =?utf-8?B?SGRLeW9hOVBoeWZlR3YxU3hLMDBQellBNTRpdUlLN2ZPSEtzMHhYeGpRb0Vw?=
 =?utf-8?B?UmZVSU8zK0lQQlBrQlB0S1hrM25EUW5IbXdWVkdQT1c0ZXlpbXZ5M0RsNHht?=
 =?utf-8?B?OXQ2bVU4SjRjay9LNFMySFNZVUFLZzUvNmlqNHdYOVd2cGRmZmZOU0t5MGlj?=
 =?utf-8?B?L0MyaG9UcEtSQ1NMTlliK1hhT3pvRGdueW5aQlZWeW1HRW12akRPVE5WeU4y?=
 =?utf-8?B?Y2M2clhxMEl4WmZ5RWtOeE4xSjRCdHhEZFRqNlJOcXo1S1liY3hhWm0zcnhQ?=
 =?utf-8?B?bmdHT0lXS3RoZVZSZTd5YWtUeUNzLzJ1d2phWGRLa0J4a1puUTZqSERMMHkr?=
 =?utf-8?B?TG9RRzRxcGVwM2tCZkFXcWtUbkRhckFVeXZ0dkg3QVBJTWdNczE2RE45T05C?=
 =?utf-8?B?TkR3dWFrL0NJcjBZc0lkZTYraUQ4RnpqaTR5NThjZWZCK1R3ZHpvYmxiN3Vl?=
 =?utf-8?B?VmcvQUhSNXJFeURQcDhVRWRyV0FobmFMNUxOSTRLWUtCSGd4d2QvdittbzVi?=
 =?utf-8?B?b0pTR1RqNkxTU2JFaFdKSFk1VGl4U3NBZ1lkWDdVRGdCakxDU0dkZ2E0V0Q3?=
 =?utf-8?B?R1ZXYnZNWExOQW5mbWphNkY0aVJyckc2ekdRc24zOTh1bldsUENZZ3JFdXRF?=
 =?utf-8?B?Ty9yRjFST1hIR3d6V0gvdUZYSVJCVE1YeHpHbGdSV2FVcW1qY0pkRzNxQjY1?=
 =?utf-8?B?Nm5pUzhPYmJ1VDBVZ2VrQVhYOWc2aDR3eEtvQmtleWMzdmkvMERHTGErQXJq?=
 =?utf-8?B?dHJrRE02LzRuaGdwdHRsWEpNbkY1cWZ3VHN2aU9KZmltdzNzaEJSdWxyUjBm?=
 =?utf-8?B?T1VoMWlvdDVGdDVoZEJBTzhEMjNWMnZWa1hCWWtKSWtkUHhJczRFbFpGUlVi?=
 =?utf-8?B?bTBNQXF0M3l6RytPQ3NlQ3lZZktvZng2ODBQQVRjTFFVc2NjUWRrakxTZ1ow?=
 =?utf-8?B?NVRpK25ycG1ZcE5PZTFPaEM4RzRrUWF5cWxDY2VDbUw1WXQxeHgvMlNleGhz?=
 =?utf-8?B?blpxN3ZqT080V3pQcGFWdVRiV09WOW5qSzVtN2VmSk9kT1l2TE5YTGdwbml2?=
 =?utf-8?B?S2xjWjlmeTFhSnhhbnkxNERxU1Rhb1Z1QWYwUXFsR3N3anZuTkpyTm1sU2No?=
 =?utf-8?B?TFZwUzB0bksvRW8raFBNUWxDTUh3VVBzenphUSt0UTNuR24vSXlGSVJLL1Rk?=
 =?utf-8?B?N1FpQkRZWGFRS2Y4WlJTMmMxK2tIQVJIeEorc1hHaWFoZmVTYnZBNUJkZnY3?=
 =?utf-8?Q?/kmJ18gGXsfyno0qsYqGLdgUHBN1qW5TzNK/eVv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3071083-a2f0-49b9-3799-08d97d9aedea
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 07:31:02.0228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vN96JDWcDvFqX5GihD3ovtY6oN25ErFm2DrOSqBs0QfORV1MNpFRxeI3OlxDN3JxxUSqPigtmKGkXEWs1vzRrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 2/2] e1000e: Fixing packet loss
 issues on new platforms
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8yMi8yMDIxIDEwOjA5LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IFRIYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+IAo+IEFtIDIyLjA5LjIxIHVtIDA4OjU1IHNj
aHJpZWIgU2FzaGEgTmVmdGluOgo+IAo+IFBsZWFzZSB1c2UgaW1wZXJhdGl2ZSBtb29kIGluIHRo
ZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5OiBGaXgg4oCmLiBNYXliZToKPiAKPiBlMTAwMGU6IEZp
eCBwYWNrZXQgbG9zcyBvbiBUaWdlciBMYWtlIGFuZCBsYXRlcgo+IAo+PiBVcGRhdGUgdGhlIEhX
IE1BQyBpbml0aWFsaXphdGlvbiBmbG93LiBEbyBub3QgZ2F0ZSBETUEgY2xvY2sgZnJvbQo+PiB0
aGUgbW9kUEhZIGJsb2NrLiBLZWVwaW5nIHRoaXMgY2xvY2sgd2lsbCBwcmV2ZW50IGRyb3AgcGFj
a2V0cyBzZW50Cj4gCj4gZHJvcHBlZAo+IAo+PiBpbiBidXJzdCBtb2RlIG9uIHRoZSBLdW1lcmFu
IGludGVyZmFjZS4KPiAKPiBXaGF0IGlzIEt1bWVyYW4/CmludGVyZmFjZSB0byBleHRlcm5hbCBH
aWdhYml0IEV0aGVybmV0IFBIWQo+IAo+IFdoZXJlIGlzIHRoZSBuZXcgSFcgTUFDIGluaXRpYWxp
emF0aW9uIGZsb3cgZG9jdW1lbnRlZD8gVGhlIHNwZWMgb3Igc29tZSAKPiBlcnJhdGE/Cj4gCj4g
SG93IGNhbiB0aGUgYnVnIGJlIHJlcHJvZHVjZWQ/CkRlc2NyaWJlZCBpbiBidWd6aWxsYSAtIHBs
ZWFzZSwgbWFrZSBzdXJlIHRoZSBidXJzdCB0cmFmZmljOgpydW4gY29tbWFuZHM6CnRjIHFkaXNj
IGFkZCBkZXYgZW5vMSAobGFuIGRldmljZSBuYW1lKSByb290IG5ldGVtIGRlbGF5IDUgbXMgb24g
Y2xpZW50IHNpZGUKaXBlcmYgLXMgb24gc2VydmVyIHNpZGUKaXBlcmYgLWMgc2VydmVyX0lQIC1S
IG9uIGNsaWVudCBzaWRlCj4gCj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5v
cmcvc2hvd19idWcuY2dpP2lkPTIxMzY1MQo+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5r
ZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTMzNzcKPj4gRml4ZXM6IGJjN2Y3NWZhOTc4OCAo
Ik5ldyBwY2ktZXhwcmVzcyBlMTAwMCBkcml2ZXIiKTsKPj4gU2lnbmVkLW9mZi1ieTogU2FzaGEg
TmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8IDExICsrKysrKysrKystCj4+IMKgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmggfMKgIDMgKysrCj4+IMKg
IDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyAK
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+IGluZGV4
IDY2ZDcxOTYzMTBlMi4uNWU0ZmM5YjRlMmFkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4gQEAgLTQ4MTMsNyArNDgxMyw3IEBAIHN0YXRp
YyBzMzIgZTEwMDBfcmVzZXRfaHdfaWNoOGxhbihzdHJ1Y3QgCj4+IGUxMDAwX2h3ICpodykKPj4g
wqAgc3RhdGljIHMzMiBlMTAwMF9pbml0X2h3X2ljaDhsYW4oc3RydWN0IGUxMDAwX2h3ICpodykK
Pj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBlMTAwMF9tYWNfaW5mbyAqbWFjID0gJmh3LT5t
YWM7Cj4+IC3CoMKgwqAgdTMyIGN0cmxfZXh0LCB0eGRjdGwsIHNub29wOwo+PiArwqDCoMKgIHUz
MiBjdHJsX2V4dCwgdHhkY3RsLCBzbm9vcCwgZmZsdF9kYmc7Cj4+IMKgwqDCoMKgwqAgczMyIHJl
dF92YWw7Cj4+IMKgwqDCoMKgwqAgdTE2IGk7Cj4+IEBAIC00ODcyLDYgKzQ4NzIsMTUgQEAgc3Rh
dGljIHMzMiBlMTAwMF9pbml0X2h3X2ljaDhsYW4oc3RydWN0IAo+PiBlMTAwMF9odyAqaHcpCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBzbm9vcCA9ICh1MzIpfihQQ0lFX05PX1NOT09QX0FMTCk7Cj4+
IMKgwqDCoMKgwqAgZTEwMDBlX3NldF9wY2llX25vX3Nub29wKGh3LCBzbm9vcCk7Cj4+ICvCoMKg
wqAgLyogRW5hYmxlIHdvcmthcm91bmQgZm9yIHBhY2tldCBsb3NzIGlzc3VlIG9uIFRHUCBQQ0gK
PiAKPiBNYXliZToKPiAKPj4gV29yayBhcm91bmQgcGFja2V0IGxvc3MgaXNzdWUgb24gVEdQIFBD
SCBhbmQgbGF0ZXIKPiAKPj4gK8KgwqDCoMKgICogRG8gbm90IGdhdGUgRE1BIGNsb2NrIGZyb20g
dGhlIG1vZFBIWSBibG9jawo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBpZiAobWFjLT50eXBl
ID49IGUxMDAwX3BjaF90Z3ApIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGZmbHRfZGJnID0gZXIzMihG
RkxUX0RCRyk7Cj4gCj4gTWF5YmUgdGhlIHZhcmlhYmxlIGBjdHJsX2V4dGAgY291bGQgYmUgcmVu
YW1lZCB0byBgdG1wYCBvciBgdG1wMzJgLCBhbmQgCj4gcmV1c2VkLgpJIHByZWZlciB0byBzdGF5
IHdpdGggYSBtZWFuaW5nZnVsIG5hbWUKPiAKPj4gK8KgwqDCoMKgwqDCoMKgIGZmbHRfZGJnIHw9
IEUxMDAwX0ZGTFRfREJHX0RPTlRfR0FURV9XQUtFX0RNQV9DTEs7Cj4+ICvCoMKgwqDCoMKgwqDC
oCBldzMyKEZGTFRfREJHLCBmZmx0X2RiZyk7Cj4+ICvCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKg
wqAgY3RybF9leHQgPSBlcjMyKENUUkxfRVhUKTsKPj4gwqDCoMKgwqDCoCBjdHJsX2V4dCB8PSBF
MTAwMF9DVFJMX0VYVF9ST19ESVM7Cj4+IMKgwqDCoMKgwqAgZXczMihDVFJMX0VYVCwgY3RybF9l
eHQpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uaCAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5o
Cj4+IGluZGV4IGQ2YTA5MmU1ZWU3NC4uMjUwNGIxMWMzMTY5IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5oCj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmgKPj4gQEAgLTI4OSw2ICsyODksOSBA
QAo+PiDCoCAvKiBQcm9wcmlldGFyeSBMYXRlbmN5IFRvbGVyYW5jZSBSZXBvcnRpbmcgUENJIENh
cGFiaWxpdHkgKi8KPj4gwqAgI2RlZmluZSBFMTAwMF9QQ0lfTFRSX0NBUF9MUFTCoMKgwqDCoMKg
wqDCoCAweEE4Cj4+ICsvKiBEb24ndCBnYXRlIHdha2UgRE1BIGNsb2NrICovCj4+ICsjZGVmaW5l
IEUxMDAwX0ZGTFRfREJHX0RPTlRfR0FURV9XQUtFX0RNQV9DTEvCoMKgwqAgMHgxMDAwCj4+ICsK
Pj4gwqAgdm9pZCBlMTAwMGVfd3JpdGVfcHJvdGVjdF9udm1faWNoOGxhbihzdHJ1Y3QgZTEwMDBf
aHcgKmh3KTsKPj4gwqAgdm9pZCBlMTAwMGVfc2V0X2ttcm5fbG9ja19sb3NzX3dvcmthcm91bmRf
aWNoOGxhbihzdHJ1Y3QgZTEwMDBfaHcgKmh3LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBzdGF0ZSk7Cj4+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
