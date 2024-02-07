Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204E084C279
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 03:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB5AE409E6;
	Wed,  7 Feb 2024 02:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rN1Z4qkNs7an; Wed,  7 Feb 2024 02:23:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FF48404EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707272590;
	bh=ebxT3XTAqpVL0MfyjT+mFVyfhFBZODmswrKCMDn2Jv8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=np1E1egIB8iC6551UxbRtX4htFFEuuenfDo34QaDRvKF1d53E01G3LZ207EXGoafq
	 eKmMcsJdXSAHEN3jWQW7a09BqC961QoQmJoZtsDLml5Z1hq75oijOCF50PSJFp8qRP
	 VSNP1XgWeKQmk5ZXOxs1tn/6GHI6ZAgcK8gbJEFyzaBxTNsus2CkTZPF/e/zvoaZT5
	 tLE1SRfmhQprdDlaFRsu16/D0k7evFEusdCk6QbK4AOeiRzE2c47AtZwOZ1rDmtOyJ
	 r/dKEAAYeLMrm0h1jlqE6apXHnbq1OHx+uTyIbfamwA/wuBMTMrEBTa3ompExH/XNk
	 bGzhwhNu/pjkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FF48404EC;
	Wed,  7 Feb 2024 02:23:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABA1B1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 02:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CDEC6131F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 02:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VRHgSNGW5mFV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 02:23:04 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Feb 2024 02:23:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 223A961319
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 223A961319
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=steven.zou@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 223A961319
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 02:23:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="1168633"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="1168633"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 18:15:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="933647773"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="933647773"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 18:15:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 18:15:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 18:15:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 18:15:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 18:15:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOnfu1fGrWufDde1SEqyUxtwq8J3qUWFHqsJBgK3ydISFZcQ2jWb4uCk/e3cV3EhYmOxML2VQA1Ath+h1ZVj+nz+JQS3pUHhPCZG/ulF2vi8wrCEBZbepEvQlyiu/w4GDlKwttcyXeZDjpUGNXyQ8eobzuOy0B372kj1QydxDMPqE4XJG4ISO7YJOcON7ENBK1+BbdTk4s/xc5APFWhKzbl2SmsbA3JcpVn7aXe2dNwuE3v6dCtj5oumJuavHwnilWlBiZOPMfZhnWjBXNQRYP/ilX2woytUE9HDJydKfA2ZTERZ65FRCv+3ZzYgBTtPFSchjT8QW7r/JaEF64RC4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebxT3XTAqpVL0MfyjT+mFVyfhFBZODmswrKCMDn2Jv8=;
 b=kkNLlerqCBGIFEA55BkDJ97hpR7ut+wknV+ydF9Uoeje0K9z3FvlyXtF8yvhuFR4jgVYBcAt91ne2I9HcGMKokFffoEFcgnAsUwLFzNgXM/fIel566tJ26/WjPLpgRcSNBhyFp8qTy2nUzJ3sqD3zaI5B8w32pE4wbtAUebN9I7W1EvuT42CRpzyFd0nm2OEO91gySPFe/v5C4moWyL4c9KSmdbTxTxt54fFTzCsZ82RE026reIYeyHyQ2Ei1m0Y4nEBXnv2E3/kfFN66bvHmfBdd5CqHe0URpFHxCQay270HeyQN4nBEV68U3v0kvpGfdacv3jvNqEh1scduDpNLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6801.namprd11.prod.outlook.com (2603:10b6:510:1c9::8)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 02:15:51 +0000
Received: from PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::ba44:817c:5bc0:2bb7]) by PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::ba44:817c:5bc0:2bb7%3]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 02:15:51 +0000
Message-ID: <00e9ee9f-9459-420a-983f-1ba7fb17219d@intel.com>
Date: Wed, 7 Feb 2024 10:15:44 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: "Zou, Steven" <steven.zou@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
 <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
 <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com> <ZbznU+j2b4OIcDgb@boxer>
 <73e1f706-733e-4a2d-8897-78dd8f5905cd@intel.com>
 <161fc274-d2f1-4bbf-bc84-98193ab49e54@intel.com>
In-Reply-To: <161fc274-d2f1-4bbf-bc84-98193ab49e54@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SI2PR02CA0044.apcprd02.prod.outlook.com
 (2603:1096:4:196::17) To PH8PR11MB6801.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6801:EE_|SJ0PR11MB5103:EE_
X-MS-Office365-Filtering-Correlation-Id: b94808b1-3279-42a1-71f8-08dc2782b48e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 73d3vw1VV1+O9qHFPsJyr2D5xSkZRD8VGHc9Vu8qQoZxtnGdskA2imWsiY4PsmctIG1Qp56YKBsc0fEt8e+epoIMmxZ0e4hrbE+FZSS5W1AK1eXYbBHixdqqHeJflp+/QU8P4ifHjhIahfws0NuW88Z+hsc4JY0UAulvPoVabnrjgFhzUMWdK26stuCkg37Cn0Rr9qEsWX7LMgFZlluC3JJwrIuVKGFEK+tu6bXNwOJxe3kZHniQsa2OZBfkdUf+xO9X9JP1/thZcalppikm6CZq4FqiJk5XaRUUpFG++zK+/I3bLzTopYAKvajvEuYCdu9msAOOiink0X2LRkUlYhm4v1ZsaZlvE4aNEJgxQQeBnMkEAPmvY0VhktOt4yVOjNSNF9UJl3EmgtXuodGZ4Q6AAyVk0vpKh18Fffd4CKdRzKpnnHzpL2APYjlmVH/xZnKDP+/9QSinCcRIsRSgyY35AVYciFUA5EZTDduNw7md8POFoNGdF9ShEV5wsJb85mX8cN2jzERmF+3BkyvgnEaIO3nz0DZ1A6QfFTzQwXsqEmbvxbaPdlqV82HyOuJkhY+YCgCdCwJNbsLd87c7pClIm+GZvO9/06wCZaH1qCbBvApU/Euw1DEEeeFCYuQwc1Ddk1D341tcTe9OJ6cKYPWzZC3zBuC+szbkMcDOqJhHrLbcJ6/FOUcaw4bMBjuI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6801.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(136003)(376002)(39860400002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(31686004)(2906002)(38100700002)(82960400001)(41300700001)(66899024)(316002)(6636002)(26005)(54906003)(66556008)(66946007)(66476007)(37006003)(31696002)(53546011)(8676002)(8936002)(86362001)(4326008)(6862004)(2616005)(6506007)(5660300002)(6666004)(6512007)(478600001)(6486002)(36756003)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3B0SHNTQStHekJIQ0JwWW90ZGRRdWFtOWsyaU5OUGo5OVMyMTFtYmFrNHRS?=
 =?utf-8?B?K1N3dWVNcFRYNkJTU0lHaWQ3NU53ZFlBaW9JUzkrdjl3a200OWxHS0FTemMz?=
 =?utf-8?B?TktWSlowSVlZN1JnZ05Cdnd1UUNZRVoycklUS3oxMmxCYmdLR2FtMnlGbVdu?=
 =?utf-8?B?UytyTkVjVGVyVFlYRVArcEp4cHhuUktHeHZLVXlwUU8zL0NDK3ZNb0liWnIy?=
 =?utf-8?B?WkcvajluRFpPclFNNHJyMG1hMHNiNkdPeE1NOWpUV0ZYUXdqbWcxRmdydzcx?=
 =?utf-8?B?UEtKU0J4TTBtZlBYeVBRaU1jd25GKzViWXdzZ0FaM2VPb1MvYWJUVmxDdEVs?=
 =?utf-8?B?ODZQdG45cFRpakc2THhUZnNlcXdWUHh2RjFTTFhBa2gzNmRpd3lSTUtZSkth?=
 =?utf-8?B?c0oycGJUK3IvYmkzZDJlYXVLanVLV1dOcmJ1N3MwbEIzTldlcEdZNGdxWXFP?=
 =?utf-8?B?OTNjRFlHZUc2dHN0UktFcWVIQXh4a1hSdGVzZHlXYUljem5MOFdQWjUyeXpK?=
 =?utf-8?B?aEp6M2kzVTFVL2grUXdmUVhlL093bTNGemdPU1VHY1J4Y2RIc2RwSG1ELzRZ?=
 =?utf-8?B?UWdsSEpqc1lmUzM4c0pSaEY5ako5YU5oNkZhYmYxQ3VYbFR2Z0g4RFFWQ3lm?=
 =?utf-8?B?Y0J3TUwxVDhyV1d2TVFvTlpySjhTV0FnMmJkcjZ0ckFIMmk3RU43M1NWZmwv?=
 =?utf-8?B?TTlXaE04NjZiQ1p3SVoxcUo4c0xYTHFUZ0MvSVVGZnlzWHdEMVRiN2pGL08v?=
 =?utf-8?B?bVZ5MVpWWnVuMmU4cEtRUnVsZncvWGRLZzlKK2FRUmZycHlqcUJxUW1wSkpy?=
 =?utf-8?B?M1pFbE1sNk1oazBZVmVienVSbmx3Rjd2OUZSOHZFbVpEU1hmbTNpSjBkbWJq?=
 =?utf-8?B?dW5DL0RIb0lqd0drcUErWm85bzZBTUNXNUU2QUo0OFdjVEM2SksyODNYeDRM?=
 =?utf-8?B?RGpSaVg0L2RIQ09kb0RMdzgrc3ZyTldObnJQU3dsVmdaTVdKR2xMQm1GeVEr?=
 =?utf-8?B?d2VLZDJxRk02UGJlQVV1Q0JEbzNFVHZnbHIxak9JN0x2SHhQZ2x3ZjZsblBh?=
 =?utf-8?B?RUQ3ZkxSZXFTWk1tMUFHNWZvTHg4UTJvZ2ozYW1zM3BNNSs4TXRkWnJIRnhR?=
 =?utf-8?B?SGJMV0EySGtId2QvUDRhVk1GYmNnRzJ6T291MXpRQ3UxckVvdjRCN0szRlk3?=
 =?utf-8?B?MzRRdG50UlNzcnphZUs1UDdEZjFuTzhhK1FpKzBTazdmR1ZBQ0tndk1ua3pY?=
 =?utf-8?B?NTNud0o4V0cxTlpiZ0owTGgwTDlWWit3L20wUnpRcTlOcDJra3FWQ1ViUm1W?=
 =?utf-8?B?V3E1MFFxKzN0alh4bFpjVWhMd29yZzdMdkhvZGI4bHdTQ0hXdDJrTVJSbTNR?=
 =?utf-8?B?dlpCanlNU0QwTjZZeFlta0JLSUZHcnZEMjZITVpNWlVtMzVDWVJUdUNtNDRH?=
 =?utf-8?B?ZWllNXZObDFkMmJ3ZTNNTDlwdTkzQXAzcGxvblY5d0Q1VVlWR2Z4dlRrU0Fo?=
 =?utf-8?B?d25JSUJCMGR2dm82cENwd3g2VkpDSnBnTk1iVkJJeXNucVdJdklKSDN5M0M2?=
 =?utf-8?B?Skh4M1RrZ0VOTjEzWm5SVEZZZ05yODEyOTZFOUc1YW5iUzZEVXdLMFFDL0xW?=
 =?utf-8?B?TWM2Nm16QmtUZEFzRDdmbllXVUpuZSs3N3FGSGs2dEJzajVvVEx3cTYrbTVz?=
 =?utf-8?B?eDBhK0hqLzVKMnBvN09VUTEyWXY5MWZGRGE3a0dvVjFmQTZmc0JnamJ4eXpv?=
 =?utf-8?B?TVF1eGtFbVQ4YXROczVzVDNNdTJWTzYwVExuUTVCTzVYbjE0cVEralIvNDc5?=
 =?utf-8?B?cWRLOWtINlZlZWw0a1BnZEdHbE5yQzcxOU9sMDRIZE95T1pBVitzNE45K0Ni?=
 =?utf-8?B?TjVOWjdDbXNQOUhGWG1RKzl5YkxnMjUyb2R6MWt5b0J1MGd5NVkxajg4WVNl?=
 =?utf-8?B?LytmOUZaL2FmZ1dENHpienN5R0dKNW1sOS8yRmxhTUFvQUIvVGc3enJzZlFy?=
 =?utf-8?B?TGlOQWhDUVlnKy80QW4zZ2pzSjM0YmtUME93UGN2NlIyZTd1d0NjeUo0ZTNL?=
 =?utf-8?B?blhLdUpvYmFoT0M0amIxeHMveFByQVNnY2s2c0Ewd0c4YWNFcU44RFYzeEFr?=
 =?utf-8?Q?fzVKC49MbaK7KJz5rB31gbUet?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b94808b1-3279-42a1-71f8-08dc2782b48e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6801.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 02:15:51.1164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 57NmtuCrbh8SGYxIKSUHfT1ZqDb4BK6MLGmDYfY/CbxOSYKaXmTHYuvwQXFT5GfsJK3ZDbzku1RAV/OtBNtCmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707272584; x=1738808584;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+D3wznu2R9k4LRSaDdBIxakGlaBenX8df3L7mUicAOs=;
 b=Ev5Pem5XHxNCt2AXuW7tYJRPeAmG4nBZPePCwLkxUTI7uduqi3d7c8FO
 fuxDRGp1tBgjBZYCq7tvH9yQ1Opzmfn5oU0/FEKuVZF1uCdkABlYj1A7j
 nZ0T8X06LIi61Mc2aYWmGcr4suLLIMMUafS480OgJJrnL/okLPXtZ8cxc
 WBFRreZ014ApbATU39OnGI/vIEnzlubtprV/QPN3gQz2MYp+3qC+p7Tc8
 akm2RtpkHuC4Vp4cumPDNMCSWwEJTuk1NUnKCvwSbwTiwTn55cVAClArw
 Rzp09rbgXnZn/TgqmWcCkEs1x0MgSD/1fP6Z6b3b0xaEKFjPVVPXUJ2aa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ev5Pem5X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Jiri Pirko <jiri@resnulli.us>, Daniel Machon <daniel.machon@microchip.com>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Dave
 Ertman <david.m.ertman@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2/7/2024 8:44 AM, Zou, Steven wrote:
>
> On 2/2/2024 9:01 PM, Alexander Lobakin wrote:
>> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>> Date: Fri, 2 Feb 2024 14:00:03 +0100
>>
>>> On Fri, Feb 02, 2024 at 01:40:18PM +0100, Alexander Lobakin wrote:
>>>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>>> Date: Fri, 2 Feb 2024 13:39:28 +0100
>>>>
>>>>> From: Michal Schmidt <mschmidt@redhat.com>
>>>>> Date: Thu, 1 Feb 2024 19:40:17 +0100
>>>>>
>>>>>> On 1/31/24 17:59, Alexander Lobakin wrote:
>>>>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>>>>> Date: Wed, 31 Jan 2024 13:17:44 +0100
>>>>>>>
>>>>>>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>>>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>>> index 2a25323105e5..d4848f6fe919 100644
>>>>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct 
>>>>>>>>> ice_hw
>>>>>>>>> *hw, u16 *rid,
>>>>>>>>>      new_rcp->content.act_ctrl_fwd_priority = prio;
>>>>>>>>>      new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>>>>>>>>      new_rcp->recipe_indx = *rid;
>>>>>>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>>>>>>>> -            ICE_MAX_NUM_RECIPES);
>>>>>>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>>>>>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>>>>>>> Looks like there might be another incorrect bitmap usage for 
>>>>>>>> this in
>>>>>>>> ice_add_sw_recipe(). Care to fix it there as well?
>>>>>>> Those are already fixed in one switchdev series and will be sent 
>>>>>>> to IWL
>>>>>>> soon.
>>>>>>> I believe this patch would also make no sense after it's sent.
>>>>>> Hi Alexander,
>>>>>> When will the series be sent?
>>>>>> The bug causes a kernel panic. Will the series target net.git?
>>>>> The global fix is here: [0]
>>>>> It's targeting net-next.
>>>>>
>>>>> I don't know what the best way here would be. Target net instead 
>>>>> or pick
>>>>> your fix to net and then fix it properly in net-next?
>>>> Sorry, forgot to paste the link :clownface:
>>> IMHO 1/2 should go to net. Then you would have to wait for it to got
>>> accepted and get merged to -next and then you come back with 2/2. 
>>> You know
>>> the deal.
>> Agree!
>>
>> Hi Steve,
>>
>> Could you please send the first patch from your series to net instead of
>> net-next?
>>
>> (and add "Fixes:" tag with the blamed commit)
>
> Hi Olek,
> Sure, I will do it soon.

Hi team,
The patch has been rebased and submitted on:
https://lore.kernel.org/intel-wired-lan/20240207014959.24012-1-steven.zou@intel.com/
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240207014959.24012-1-steven.zou@intel.com/

Thanks,
Steven

>
>>
>>>> [0]
>>>> https://lore.kernel.org/intel-wired-lan/20240130025146.30265-2-steven.zou@intel.com 
>>>>
>>>>
>>>> Thanks,
>>>> Olek
>> Thanks,
>> Olek

