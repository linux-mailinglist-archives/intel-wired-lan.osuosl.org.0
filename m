Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C36A08C78D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 17:01:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8EE82FEA;
	Thu, 16 May 2024 15:01:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 22LKElr6eGVE; Thu, 16 May 2024 15:01:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E193830DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715871710;
	bh=m1BWbCLhIvuZGOSpMlsPt24OTDDLW5P2vj/vReZS/rs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FIuYYglYHyHFie41tzVQ/loZSYbA/scFyNsBe/BnR25bNjLyVmaKz1MsrPdyDczEI
	 GWX/Dv3XrzkVrpdnMzFQLc21M5TSf7tOQ9y+2red5QNWupiOFMMfgPiAocur8N6ZTS
	 0+7mZcecElT/M/Ai/B/9pNnVFh+YCwJP8uP3yfxWAwBZ366jAPbQMrJKk+adu/jE+8
	 vJEm09Cp0id3yN8KuTxOVF3wSjGIiU65OAMXcmfOeXDFpGN+aP+bv0LvkvFlHDXWCA
	 F9iueD9GVDy9fNoxCMmIUe8+CdJgzAYd0nGfWPT97pf80PZJ+am+vSyH2o60jly5xx
	 nTL/VKsG1yDjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E193830DE;
	Thu, 16 May 2024 15:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 389E21BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 15:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22E7A830B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 15:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YHEh6S-k5dms for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 15:01:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.46;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 78C8582FEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78C8582FEA
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2046.outbound.protection.outlook.com [40.107.244.46])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78C8582FEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 15:01:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/7u7v+h7XsHETUYd/ZIiJfIUgInr2DOV0w1kUZo4WiH+9RwlHtWcr5N5evesWgJSqkJZuHjkcUvu8I7LqeBrdL4ifZIEq8hfCHjqPZd1ome7ErboXaegbCc956q0VRCu+isBH/LC+Mb2oBEG6173FYOg1u20rb1UvBcMiaPOX3FljIkg+50Jcf7PeidDcy4Nx6jMzIF8Y39BCgakB8ZeF8sS+NLrcdiL9i3bxkNXhvXgFGxNyMkNKLnlRkI+Zjac1JBMrivQ9UU2mzLF4IEhXNxXRuKAqG5ha9Kp9LwCtEukC/UfFG31ATwZI389QFe3z8s0lBoY74W4PsDxpr1SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m1BWbCLhIvuZGOSpMlsPt24OTDDLW5P2vj/vReZS/rs=;
 b=GswajcHFesiQwg+ezyk4yONOhsx0Ix5Ss3KZ0fh280XkKttf7malcS2WiuWjo3YKbOgQQNkbbgtwdd/Lv6ol6+tzTpcjUo+eY2i8PxnfCJF3qP6CUoXomz1pv/FdQ50bcJ6B6rbkBIVcdE1Q+aGP1qdBXVVLhfMCMPMEaID8jrKIjdFZsZ+fybrx2CZixcQlboLBHph8qIcfPW1y5VbD6YJJiQPBrwe8w4F1AfLaCq8gHUZNtcXnF87JNTndn+kGFT0s8V0Igp8/+6D0zUz/i2ubGKpZnVX9godX2feo+gBh56TPMRu9J4D5SM9PcOZj8GfagvWmOjAVkz27CmWKLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by SA3PR12MB7952.namprd12.prod.outlook.com (2603:10b6:806:316::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Thu, 16 May
 2024 15:01:42 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 15:01:42 +0000
Message-ID: <7bb8376a-ddad-4acb-b862-fd553b400c32@amd.com>
Date: Thu, 16 May 2024 08:01:39 -0700
User-Agent: Mozilla Thunderbird
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Karthik Sundaravel <ksundara@redhat.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "sumang@marvell.com" <sumang@marvell.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "horms@kernel.org" <horms@kernel.org>
References: <20240515142207.27369-1-ksundara@redhat.com>
 <20240515142207.27369-2-ksundara@redhat.com>
 <26b64d11-9cd2-4e60-b7ce-be2dea0f2caa@amd.com>
 <CO1PR11MB508932F90216EED30FCEAF8CD6EC2@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <CO1PR11MB508932F90216EED30FCEAF8CD6EC2@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:a03:74::16) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|SA3PR12MB7952:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a2384bd-4960-4187-ce91-08dc75b9188c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230031|366007|1800799015|376005|7416005|921011; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eEczd1JEMmF5OVRjdGpSUlpkQlZZYlZYTzk1cVBYWXp0VGpUbW16aC9mNmEv?=
 =?utf-8?B?M0tidkc1RDhxam10K2JvZ0cyZGtEanAvVHN5RCtaa1RUZ21CZjFRSWd2cUR5?=
 =?utf-8?B?TW43TTZhTDNrVVFZS1V0R1JtREFpS2JnZCtSRmFyY0Q0S0l3U09iaW9rNHUv?=
 =?utf-8?B?cmlEaFliRHB4MC8yMTF4LytSb05vWUtNVWRnb0IzS0tNN21aRlo1TjI2L1Z4?=
 =?utf-8?B?ODVKWHZwQUpkNmRQcllCNTQvSEdmekFnS3dGRFR5SDJsa2VyeCtneW1aWmo4?=
 =?utf-8?B?akdKalhCOWQySmVKRXVMa1VHdWlWWEdLd1VCaWdGTGs2emdtSVRiRXFPdzlw?=
 =?utf-8?B?YUxic3gvcWdIem1paTZrTHZXUExaVWlkb2N5VFMxdHVkeHhManRBb3pPOXBW?=
 =?utf-8?B?TjB3bVpwelg5aURNUmJzNTRxeWFyWGpDS0JPZDFYaitqbUcrMjFWdXZqaUpS?=
 =?utf-8?B?UzNyVVpPcEh3NFJaQmJBNGJOdDhRdXo5b2FKdHBKVGJ3RkNRSDVQa3VYUFhT?=
 =?utf-8?B?cWZWbkg2WW8zdldLby91QzRHdWJ3TTNLZDdua2Q1UHV1MGpmbWlEV3k1T2V5?=
 =?utf-8?B?RUNtZG80RVlzdU1PNXNTT0pNdU5hN3I0OU5KTkJNNGFMekFzMVlyVzBvSnk5?=
 =?utf-8?B?Umc1YzZIRWpDOUdIQUV1YVBHR3R2dk5BZ3VuejRzYi9hWUVpM1lMT0o0Y1ov?=
 =?utf-8?B?YjgzNmwyNC9waXRNUXZqU2hEZE9jdjJaTlJyT2p3V1BrZ2EzbHZHQXRIWk1R?=
 =?utf-8?B?NDlwbWl3cmg3K2Z5TXdZM0FOKzVBTzU1c3NEU256N1RzM2h1QXRSaXdpd0oy?=
 =?utf-8?B?b3B2Yk10SXNxcFpQQTRjVUNPbjhXeVRncWdOVGx4b3FxZThpSTN0RmprZ0hp?=
 =?utf-8?B?QVk1ekVCREQ2S1BQR0dTVmxFTmNPb01uekZ6NTNtMENPYkFDaE9SQUdvVDNP?=
 =?utf-8?B?OE8ycENucVAyNFlBMlM5QXpRMWFZOTNuYnpEOXpJMmNDN2h1V2lGMmozOG9V?=
 =?utf-8?B?a2xWY0xoNXgrRm4xRDFrNlBKenFyN2tDRU50bDVQUzlueW1yUmRIemdvT2RH?=
 =?utf-8?B?RlVmTEpOT2hSS3E1NGI0QjdmUEM0WU1NNGhUZyt4TFJWNjFDMlVGdzd1SU1K?=
 =?utf-8?B?MWRlMTZuYW1KK0VIQWNaM050OU5MNkNCbWdldVZXOThDWEdhOHNOVVVhV1lx?=
 =?utf-8?B?WWNSWEJQYnJzUm9sTkJiQ1BKQjY3QU15NzBTbTB0c1VoREJUZEdaY054NDZR?=
 =?utf-8?B?OUFMbC8vbm9LNjRvbDBZbjByWW1EYkxTYTRqS1ZRODVFaW90SkZ6M1ZkbzMx?=
 =?utf-8?B?azBnY1JxWFpQeENPV3VKQitBUUh4ZDlsdWp6ZHVyZDU2S0E3RmJPanA1bURj?=
 =?utf-8?B?Tm5rcmgwNDdnSWpwVjdJaUNBRDB1S01zYmh0aHQ4UllsL1NXZy9BRlpvblhD?=
 =?utf-8?B?NTJUT2VZWUszVTN0a3BCRko4RmRlSDdYQnVVR2VBUENkRFh0NkFVVzRDczBa?=
 =?utf-8?B?N2JuZy9XcXQ3bXg3cWpBUmZNTnRVaStmaERsZ3NIaEFwZnpOS05oS0pNelBX?=
 =?utf-8?B?UGZTQVMvYUM4Y1V0RGJOMkxUUmdsRGRQOTdsNUpYOFN6L3hyVlV2VE9xZysv?=
 =?utf-8?B?Q1VrUzNRakkwQi9mVlRpOW0reHQ2Tk0rOFZNTHNIMmlUOERqVjRmUmlUeGlB?=
 =?utf-8?B?UE1zaFdQbENYaU5lMkQ4bU85enpxUkxHWmtPbmczdURHQXNYTFk4bVc3WEJj?=
 =?utf-8?Q?qZkLcqTc1xmYSo2SAx+76Yh6kIFI2tyyC4ntY/j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(7416005)(921011); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlRHd3diVGhMd3lwZVZiYWtxempkSFg2TzFsVWZ3cCs2TVdlODM1a3lLa3k2?=
 =?utf-8?B?aGlPRUx4S3NlcThEVHYvTnc2bWZObG5XeVVSb2szb3EzOFloTXR2Vi81N24w?=
 =?utf-8?B?VUhZNzZmeWFwd2ExbXA3aCt5eXF1VGJwK25vY2lmUHhzdHRKMnVyM1hpNTV6?=
 =?utf-8?B?TUVHVGxhN2JRdXdiSlVDUFZicjRxSmVPbElicmc0Zm5qZHI3S0w2QVVKN0FR?=
 =?utf-8?B?eUlaanlYaVNjbkxyMHpCbi8ydHdNVDZNVlI4YUFkTnRvZHNHV2o2eGwrRVNO?=
 =?utf-8?B?blh5RzFScUpjblNRL3BSTmltWTZBQW5JZ1NhNkVrRWc1OWFTV0xmOGFjZWZY?=
 =?utf-8?B?THoybU1EQUN5SlFuQlFxZ2tpQU1xSHZQV0JZZm0zdXVvVEhvV2NkNUNPelRZ?=
 =?utf-8?B?cW1Sa1B3RmF1L2tVL2Z0TEFIT1dSUmcvT1NlZ1J3L1JKaG1ndFFBUTJUMUNN?=
 =?utf-8?B?dVNUOFFxVXRBSDJwaU5xVDQ5UmsxV05Sd2NOMVo2MjQzSU50SDJrSnZiamhY?=
 =?utf-8?B?NE5aUm5QUll0SVJkL0pUVHVrYlJjeldnNHg0YUowVTU4cnBqYjFqSVhpR2JP?=
 =?utf-8?B?YmlMREJ2R1hRaU1iVGNwMEI1TVFTMFh3STNrQ3Y3S01kdTJ4dVJSRXhsN21n?=
 =?utf-8?B?TVF3RXRMS2xOaklBQU5FUWlyL2dNak9jVWo4OEdva2pCTHVzOTdmMXB2UXdV?=
 =?utf-8?B?Q1JSVzIvdGFGNXJ4a0lTV0E5Z1BWcVRCc0kzejdNenhDRnFOcTRQOCtTV1pM?=
 =?utf-8?B?OElmVC93K2h5dDZtSFFscjlpWndPUUxLbGdFM2F1akJaRC9kcStBdEpjT2Fh?=
 =?utf-8?B?TWk1Z1AxR0RwRUNKeEtvZ0E2RmR0YWFpRjRmNmRQN0RqOUNTeGgzQklGZ3Vm?=
 =?utf-8?B?d2NnNnZTb3F1RkhDcTBvVXNkRDVsaWMwa01kK3B2YkNYcXFKTFdaU1RrTHdI?=
 =?utf-8?B?KzVEQi9wVmp4M3VMMUdUQ3VrUDg1MTR5YWdPWVJKaUxQYWFROXAxbjI3WlVQ?=
 =?utf-8?B?eG8yUGlLb3B0SEpWUFdlK252VjlOVjVpK282dTNUTXFKR1k3eVBheWUySmNk?=
 =?utf-8?B?NDdVK0F4UkJvZmhTMWVUaDlIYitUWmRMeUtRalU4L0tkbkJxbHJDTVA1MGZO?=
 =?utf-8?B?VmJaZXZjQlpOemphbkh2WFRPa0tqZmJYcE8zRENOL09hSnNnOFlBQWFKN09Q?=
 =?utf-8?B?SHVCbHQ5eFFWZFJnVHRGdSt5MTl1VjZTYnR4RjVqRm8xOFk5MVd3bG8zd3Y5?=
 =?utf-8?B?T0c3R25EKy9tdzM0VTZwZTJxc0pqNnptUGJQSHVYeitBbzRkbGlpZ25rMVlO?=
 =?utf-8?B?NlJLb1RqR2RoeXFBdUFqKzhxTWlYRCtpVXgzWlUvTWdscjFZb3IvRXpUcFdi?=
 =?utf-8?B?dStUNzU5aWREVzRyeFMzZmkvVWNPcDc3K3dHek5lMW5tVjhvQTNOeXFMN2dx?=
 =?utf-8?B?Z0RhMVFjaDhHWG13cTd1bktib0tzNU1ycWNHN29tbFhCc2l0OFRsbEFWcG0v?=
 =?utf-8?B?M2hmQzdOaVhqS1ZhWmpUbkp5azkvbzBrVFVyT3ZFV20rbmRxRGlSZWFyTE9P?=
 =?utf-8?B?OFJPL3pxTXFINHhSamFzVG5TRnJxUWJHRDVwSnF3Nm45dlhlMEF0eldKNURw?=
 =?utf-8?B?MEtILzFqdWFac2tMMDY1ZnltdEYxMUh4Q0hyK2RJNUU0RWd3Nk43NGEvdnhs?=
 =?utf-8?B?bXcyaHg2UDdrWHloR3I1dFBwc0FPbEkvSDZZcURlM1ZRRFJUSVhXTDhNUk1N?=
 =?utf-8?B?SDlselJIS043Z2FlYnJ5V0JXRkkwTWlTTno4VjdrRVpFa0QxV0hXQVRUUEtB?=
 =?utf-8?B?cUsyam8rSXVLMy9XWnpwN2g5eHZKR2l0dkpHSkp1N2crZUtUaU8rSkZqZUsz?=
 =?utf-8?B?VmhxczhsSTY4NHRWdEdVVTNxanR2U2NpdW0vcHJTSVYwSk9SZW9NTDJDTlgw?=
 =?utf-8?B?eklvT091SW5pN2lGNFVyRVVUcEhOMXY5aThDcHlDalMreXNaZm15WXVSdjJt?=
 =?utf-8?B?cWdBK2FPOWNlMGlPSWVaTitlNDFBdlZBQzJ3cWdXcm1CTkhkTUZMVVZwWFlY?=
 =?utf-8?B?MDhMTnJRRVljSURXRnlTQlV0dWs0a1hlVnNRU2F4eHpPQmx6NzhIT0hYanJr?=
 =?utf-8?Q?iSiDRW2reYQ9JHV8Qqa7mMaPv?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a2384bd-4960-4187-ce91-08dc75b9188c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 15:01:42.2777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VR0B3XdMciRGRK82/lINJa5vsBPg/q0azPHC1NmvUdJkq/wXowns/7ZXv620owU7fNbrgyMKOgCIVhFIxQJYcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB7952
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1BWbCLhIvuZGOSpMlsPt24OTDDLW5P2vj/vReZS/rs=;
 b=HXrfIVH8RtZxdzIUvH9Xu1xRT71AjwUB6r2dG4KPgKHVOrvD6Su95rFumB4cN8imAjM6OP85ageSzIWS0ZUMSmvP2M3QEsvSonv7qhk3Cc+fF2HaDwV5mHHsXWkD8AWV8qI8SJrsh+tUEb4E46jIJ3LE6VKjue/WYE0Bo++p4DE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=HXrfIVH8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9] ice: Add get/set hw
 address for VFs using devlink commands
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "aharivel@redhat.com" <aharivel@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "cfontain@redhat.com" <cfontain@redhat.com>,
 "vchundur@redhat.com" <vchundur@redhat.com>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "rjarry@redhat.com" <rjarry@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/15/2024 2:21 PM, Keller, Jacob E wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
>> -----Original Message-----
>> From: Brett Creeley <bcreeley@amd.com>
>> Sent: Wednesday, May 15, 2024 9:53 AM
>> To: Karthik Sundaravel <ksundara@redhat.com>; Brandeburg, Jesse
>> <jesse.brandeburg@intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>;
>> sumang@marvell.com; Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen,
>> Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net;
>> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; intel-wired-
>> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
>> horms@kernel.org
>> Cc: pmenzel@molgen.mpg.de; jiri@resnulli.us;
>> michal.swiatkowski@linux.intel.com; rjarry@redhat.com; aharivel@redhat.com;
>> vchundur@redhat.com; cfontain@redhat.com
>> Subject: Re: [PATCH iwl-next v9] ice: Add get/set hw address for VFs using devlink
>> commands
>>
>>
>>
>> On 5/15/2024 7:22 AM, Karthik Sundaravel wrote:
>>> Caution: This message originated from an External Source. Use proper caution
>> when opening attachments, clicking links, or responding.
>>>
>>>
>>> Changing the MAC address of the VFs is currently unsupported via devlink.
>>> Add the function handlers to set and get the HW address for the VFs.
>>>
>>> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
>>> ---
>>>    .../ethernet/intel/ice/devlink/devlink_port.c | 59 +++++++++++++++++-
>>>    drivers/net/ethernet/intel/ice/ice_sriov.c    | 62 +++++++++++++++++++
>>>    drivers/net/ethernet/intel/ice/ice_sriov.h    |  8 +++
>>>    3 files changed, 128 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>> b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>>> index c9fbeebf7fb9..6ff7cba3f630 100644
>>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>>> @@ -372,6 +372,62 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>>>           devl_port_unregister(&pf->devlink_port);
>>>    }
>>>
>>> +/**
>>> + * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
>>> + * @port: devlink port structure
>>> + * @hw_addr: MAC address of the port
>>> + * @hw_addr_len: length of MAC address
>>> + * @extack: extended netdev ack structure
>>> + *
>>> + * Callback for the devlink .port_fn_hw_addr_get operation
>>> + * Return: zero on success or an error code on failure.
>>> + */
>>> +static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
>>> +                                         u8 *hw_addr, int *hw_addr_len,
>>> +                                         struct netlink_ext_ack *extack)
>>> +{
>>> +       struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);
>>> +
>>> +       ether_addr_copy(hw_addr, vf->dev_lan_addr);
>>> +       *hw_addr_len = ETH_ALEN;
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +/**
>>> + * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handler
>>> + * @port: devlink port structure
>>> + * @hw_addr: MAC address of the port
>>> + * @hw_addr_len: length of MAC address
>>> + * @extack: extended netdev ack structure
>>> + *
>>> + * Callback for the devlink .port_fn_hw_addr_set operation
>>> + * Return: zero on success or an error code on failure.
>>> + */
>>> +static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
>>> +                                         const u8 *hw_addr,
>>> +                                         int hw_addr_len,
>>> +                                         struct netlink_ext_ack *extack)
>>> +
>>> +{
>>> +       struct devlink_port_attrs *attrs = &port->attrs;
>>> +       struct devlink_port_pci_vf_attrs *pci_vf;
>>> +       struct devlink *devlink = port->devlink;
>>> +       struct ice_pf *pf;
>>> +       u16 vf_id;
>>> +
>>> +       pf = devlink_priv(devlink);
>>> +       pci_vf = &attrs->pci_vf;
>>> +       vf_id = pci_vf->vf;
>>> +
>>> +       return ice_set_vf_fn_mac(pf, vf_id, hw_addr);
>>
>> Instead of creating a duplicate function, it seems like you can do the
>> following instead:
>>
>> pf = devlink_priv(devlink);
>> vsi = ice_get_main_vsi(pf);
>> if (!vsi)
>>        return -ENODEV;
>>
>> [...]
>>
>> return ice_set_vf_mac(vsi->netdev, vf_id, hw_addr);
>>
>>> +}
>>> +
>>> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>>> +       .port_fn_hw_addr_get = ice_devlink_port_get_vf_fn_mac,
>>> +       .port_fn_hw_addr_set = ice_devlink_port_set_vf_fn_mac,
>>> +};
>>> +
>>>    /**
>>>     * ice_devlink_create_vf_port - Create a devlink port for this VF
>>>     * @vf: the VF to create a port for
>>> @@ -407,7 +463,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>>>           devlink_port_attrs_set(devlink_port, &attrs);
>>>           devlink = priv_to_devlink(pf);
>>>
>>> -       err = devl_port_register(devlink, devlink_port, vsi->idx);
>>> +       err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
>>> +                                         &ice_devlink_vf_port_ops);
>>>           if (err) {
>>>                   dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>>>                           vf->vf_id, err);
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
>> b/drivers/net/ethernet/intel/ice/ice_sriov.c
>>> index 067712f4923f..dc40be741be0 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
>>> @@ -1415,6 +1415,68 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id,
>> struct ifla_vf_info *ivi)
>>>           return ret;
>>>    }
>>>
>>> +/**
>>> + * ice_set_vf_fn_mac
>>> + * @pf: PF to be configure
>>> + * @vf_id: VF identifier
>>> + * @mac: MAC address
>>> + *
>>> + * program VF MAC address
>>> + */
>>> +int ice_set_vf_fn_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac)
>>> +{
>>> +       struct device *dev;
>>> +       struct ice_vf *vf;
>>> +       int ret;
>>> +
>>> +       dev = ice_pf_to_dev(pf);
>>> +       if (is_multicast_ether_addr(mac)) {
>>> +               dev_err(dev, "%pM not a valid unicast address\n", mac);
>>> +               return -EINVAL;
>>> +       }
>>> +
>>> +       vf = ice_get_vf_by_id(pf, vf_id);
>>> +       if (!vf)
>>> +               return -EINVAL;
>>> +
>>> +       /* nothing left to do, unicast MAC already set */
>>> +       if (ether_addr_equal(vf->dev_lan_addr, mac) &&
>>> +           ether_addr_equal(vf->hw_lan_addr, mac)) {
>>> +               ret = 0;
>>> +               goto out_put_vf;
>>> +       }
>>> +
>>> +       ret = ice_check_vf_ready_for_cfg(vf);
>>> +       if (ret)
>>> +               goto out_put_vf;
>>> +
>>> +       mutex_lock(&vf->cfg_lock);
>>> +
>>> +       /* VF is notified of its new MAC via the PF's response to the
>>> +        * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
>>> +        */
>>> +       ether_addr_copy(vf->dev_lan_addr, mac);
>>> +       ether_addr_copy(vf->hw_lan_addr, mac);
>>> +       if (is_zero_ether_addr(mac)) {
>>> +               /* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
>>> +               vf->pf_set_mac = false;
>>> +               dev_info(dev, "Removing MAC on VF %d. VF driver will be
>> reinitialized\n",
>>> +                        vf->vf_id);
>>> +       } else {
>>> +               /* PF will add MAC rule for the VF */
>>> +               vf->pf_set_mac = true;
>>> +               dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be
>> reinitialized\n",
>>> +                        mac, vf_id);
>>> +       }
>>> +
>>> +       ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>>> +       mutex_unlock(&vf->cfg_lock);
>>> +
>>> +out_put_vf:
>>> +       ice_put_vf(vf);
>>> +       return ret;
>>> +}
>>
>> This is almost an exact copy of ice_set_vf_mac(). The only difference
>> being the function arguments.
>>
>> Was there any reason to not use ice_set_vf_mac()? Why can't you pass the
>> PF's netdev?
>>
> 
> Or, refactor the set_vf_mac() into a function into a common one which takes a common set of arguments that can be derived in both the netdev op and devlink flow?

Yeah that's probably the best approach. Maybe someting like the 
following makes the most sense?

__ice_set_vf_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac);

For the netdev_op it's:

return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);

For the devlink op it's:

pf = devlink_priv(devlink);
pci_vf = &attrs->pci_vf;
vf_id = pci_vf->vf;

return __ice_set_vf_mac(pf, vf_id, mac);

Regardless duplicating the entire function is not the correct approach.

Thanks,

Brett
