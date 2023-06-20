Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69658737174
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 18:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 067AC6136C;
	Tue, 20 Jun 2023 16:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 067AC6136C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687278340;
	bh=Hd4mcSEUHhmfR8hirtdRQ4li46HDsta+S6557pGURc0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oKpTGAixC8sS4AHNcrfpSLafUHlBwJIKYyxbrS6HEaVGEvPnIGgGEgbGTynQXc2Ok
	 Loop16B5o7g+Kkz7ptlCGxRp+nwU8urmNT+tscAFAR500hVQPMYqIJYIkirgltxlmN
	 Spe1pp/pSBo8j9/RVZ613bM5xtV1m2mCHLTjI2m62VFQLNOtFSowqIv976WrObyyFb
	 wgORa1yjSwQYi26nVzHK/gM2MPHKkomm7SdwfaCn/DQ7FNLiA17x/VAewt4FFkdpJz
	 tVg8O4s/moVb7OxvAOHPrqFkrNGMxmuO2RNkoyE1aRyS81Hk5i/mImUk0EW7LlMGqw
	 pSKxJtXSXumNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IvB0QxbfiI28; Tue, 20 Jun 2023 16:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBA5761105;
	Tue, 20 Jun 2023 16:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBA5761105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DF7C1BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9BBC61105
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9BBC61105
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPgLLWUrXQyp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 16:25:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF96360F4B
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2087.outbound.protection.outlook.com [40.107.92.87])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF96360F4B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:25:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khiCnV8DPVe83dSlbW50CurWBHUzlDF1qUo4mhvmv3upGC6wej3YEU2U420KjwPSj2PWN8QBIW8WYjHiWS8wQ9Oglutjb2AwzLWLBr3ZYYKHeRfjho8su4yF8KKB2OQbJ2ORfqBQpSdsfYIY5e8AXorgQwRk3DOUyfvzn5tJeAaA6oqlxA6/1iNRmxofNnenZT2ezmYnMWq0DAaKXGdnRV04ZJWhfwOSc541RMgfqNaS/VUbk40MzEK7NwX6MX3LXUQYwuqECo70s9ZM+mM57F5cvRWabjzpY1c/cjeDM+6hKO8U37j4HR1Rh8I9gXEQIEbCvYMoiUXNpuhPs7xjjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3A6yWobZkUJflvxJiiQe2EghgEc518Gg7h6/KnmGrDA=;
 b=CATzuQt8QscDmw2NJgGIpkI5wejgwwH1Y/VdIsKPaRp+pmSNpG8mC4TjjA0C1T5qJU8WTuLXGOQng7AHXA6IvXqjRvfn8/k9wTaFQ3QJyMU3Mve605BGaE2cQ0VF5/kqItZVxtluCGWpXgnRjMi850Q5z9i2cxAxua8ZAHpNPR7uYJgu6tCU+bJLhmscMW3OXpEHwmsDubEGnaBG48ep193OPRo7DTej7YfQfWL5GvApN9shB4u1g8+0oNepMcAcNA1FxsHPA2+YlxWP2PSOYK6guSGFJbj7NO7cdQxNXNzw6se1CbHpmpD0Oy+xNOxLPoTy2bHePpk3nIQfK+ME+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 PH8PR12MB6723.namprd12.prod.outlook.com (2603:10b6:510:1ce::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 16:25:29 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::12e5:730c:ea20:b402]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::12e5:730c:ea20:b402%4]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 16:25:29 +0000
Message-ID: <052d2f5a-ffeb-7c5b-814e-0cac4ddf7fa5@nvidia.com>
Date: Tue, 20 Jun 2023 19:25:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Jakub Kicinski <kuba@kernel.org>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-2-piotrx.gardocki@intel.com>
 <c29c346a-9465-c3cc-1045-272c4eb26c65@nvidia.com>
 <18b2b4a1-60b8-164f-ea31-5744950e138d@intel.com>
 <17cc8e10-3b54-7bb7-6245-eba11d049034@nvidia.com>
 <20230620085919.497c3a03@kernel.org>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <20230620085919.497c3a03@kernel.org>
X-ClientProxiedBy: FR2P281CA0031.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::18) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|PH8PR12MB6723:EE_
X-MS-Office365-Filtering-Correlation-Id: 99c8613e-2fe8-4dbb-aec9-08db71aaf608
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EnDf/4wz78oaJq9TdToPUoapmoGXwv2tLJcQ8B3qVODPeWH/U+VAuEKu6sFWWF5Ntmp5tO+Gc/QuNUsxKpuS5Ou1KZTdsC72+GD36Tzr7Gw6N8kfVHoCb566k1eV3GrIr31jE5gfqGMNG24HuGFv0rE4ChPMeaAVtCfyFIahfhsOYC3yCTScd27RH0nuC1LZ9NWrstL4QTNVruGOzV++6ZEei7uKrVhgg8ucJz9iNNk5def2pCC61H4u+qgo3HGWBSdV3G3LnVXzEjALgrvBZSyHeAHWOM4lIPiPPL4fQPUpoVfxNVb5r3umB9cwQ3rbHXJCcQ+GYiQNBLyQzza3x171erlGEj8/wO98vPBYx02GPLH8QoM7Dr87RInLfBi2cSqsOeqwcS7Qvq4FRY+pcp24vT/JBbVkQUBKwNfgaWnKx1ar/zdwtJFUJgOehYc14bcH0nhDDR1BwxuaE5JOASRmaGTy4mbbDc6QyN0RW7SVXgKGiCrzOVFbmmo0DVa1JnGRtHMXb4D+1OPIsReb/BlW8E5d4rPo2W8vbPe8f0YI0r+cNs1yCLtPkMATx4vNMY6V5CRlxj/rw/GGukqPZVtjRJptEf/yfMtupEtxU4jK+lfJC0BmItg93kROEuIy/Yin3KEo7pOaTQMny0zzjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199021)(6486002)(478600001)(2616005)(6666004)(83380400001)(6512007)(53546011)(26005)(6506007)(2906002)(186003)(4744005)(7416002)(5660300002)(36756003)(38100700002)(66556008)(4326008)(66946007)(31696002)(316002)(86362001)(8936002)(8676002)(41300700001)(6916009)(66476007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0dpSjgzZlA4NHV1YUtQQWtCZHUwNmJsMXV1Wk0rVTZmeXVNMDZ0MkpadWJa?=
 =?utf-8?B?MmFId2FEclVubEtoRDFyRm5kU2Zua0FUREU3Z2xjd3BHdFBxOWU3bUd5Mi96?=
 =?utf-8?B?MkowN0Z3NzVockg1aEFLVExaeU1LME1ta0xuNVNncElsUmhVNFJncWNKQTF2?=
 =?utf-8?B?SFdZRHlGZ3lZSDNHN2xBRVRHOXZXeWhjNWo4d2c2Vk0weEdoc0k2ZjczMTdV?=
 =?utf-8?B?bFVocmZNWHQrWVlLM1l4TjVVNk5BdmlBVzdoTmI4N1lsY1c3WkVFdXVCaXV5?=
 =?utf-8?B?WlhES0I2VGhOay9HVXlLRFF3b1dvV0psRi9DWjVKTDFxVXN2Q09BUTkvenNC?=
 =?utf-8?B?K082K09YTnZvUjlTVWRSaldDUW9WcXNHWlhhUllXZzE5YmI3YUFxZTNBUzdx?=
 =?utf-8?B?WjZvK2dFelUzaTQwdXJTbFBCSzFjcEtwd3ZFcTRHNkxQUjJWRE5hWXppZkpa?=
 =?utf-8?B?YjhRdkZ3ZGZ1NUZITTRyTC9iYk1DRnQ5Z3pTYmlTaTl1ZXRBeUVzckFUdUIz?=
 =?utf-8?B?Q29QVnp0a0NSYlBnT1BsYVRVUjRjZG1QT0FmUVYrSmI0SGU0cnQyZnowVlpa?=
 =?utf-8?B?UnJpb2hCYndLSmN6MGNxVGNlRFh2WlZNa0hpVU1DcVJXekpmYklnRUtGaDgx?=
 =?utf-8?B?WTB2bHFZK3g5b3l0R3dOWUtqVFl1YVZKSVlva0lscGhwcjBWdDlrOFYxQW1s?=
 =?utf-8?B?Uk1qeW9nQ1AzTjlLZ3g4S1J2c3p1dzgvd1BjcFN0TWNQdy95SS9xVkdsU0Zs?=
 =?utf-8?B?aGFKMWp5Qiszbi9jSVFrbUdXN0h1YVByd2NmeEJQbHlpVFcxTEdubTljU3dK?=
 =?utf-8?B?S0dsNHBDM1BDd3VJY3YrLzlrVzh6bGpFbFlxVFpwM2NMMDBBUi9HK3NycE9Y?=
 =?utf-8?B?KzNYVjh4ZXZ1bktRV0pnbXY3aUJjTEhoSWdNWHRUY0JDZFNvb3lLVkdNWFBx?=
 =?utf-8?B?Qmtqd2dKTlRiRTIxa3cxcjhWWHdzSU9PTzNLNFhkRnp3dEVXVWRCS0c5RmZU?=
 =?utf-8?B?Zkhka0NMN0NmdGxCeWtLMVB0a1RzcyswanJ6aVFvRUswd1lzZFpudFZVVEo2?=
 =?utf-8?B?RldiOGFvNTlJNUViYit6aXRYVm5pTUtnOEd6RTFRZGM4SDVCTUR3SGoxSWZp?=
 =?utf-8?B?cHpra09OeThyaFF0M1NrZXArTHhITDFWQmpMd2o2YlptZUcvWmdSZG9UcnF5?=
 =?utf-8?B?M3QrejJ2UGlzajBmSzlXU1g5WkpDeTB5SVgvMXdjSldKMWJ4c3djaURRck0w?=
 =?utf-8?B?OGNLWkFWVzM2RGZTVGd3VkIydFdPdU9RTXppeEVmWDZndjVEWWxhb245YStT?=
 =?utf-8?B?KzdtVmtPVmo0bDZjN25sS1dBVXFUZnRrS0Ywc01GakwwSnJjR0JGVjFXWThI?=
 =?utf-8?B?QmoyVTQ0bjBWWDBLVC9YTzVuNHVSMVM4Y1ZjWnZoalBlT0k5Z2NqMGhJQnFk?=
 =?utf-8?B?YWxadFdHREVCNTNDRVM2WVY5Z0RLZ0V6NWNmZ1dCRHRCTnA4WE9Tbk4yQXhZ?=
 =?utf-8?B?L3I1dU1ON0xDSHlvd3YrZ0hWWmZ1TVFsMlZRRWpZelIvVFNmdlZSY1YvN2VD?=
 =?utf-8?B?MWFhSkpKWWh6TEsya0xZdkt1cWdzV3RoQzlQWHovQ1g4QndxQUxHaEtSNDVJ?=
 =?utf-8?B?ZlhiWVFSU1JScjlqR0JnUVFKdWROdDFYKzZFZXgzN0NOQTFaRlRXSnM2T3hm?=
 =?utf-8?B?WXJUNlBGdFRLcFBkVGZ2SyttVXdKdFhmTTl0YkJrb0dYZGx3NHFTTEJtN0Y0?=
 =?utf-8?B?SS9KMjFmRGJHNUpZcUdXK05QRjhLTVRzU21XZ3JhVFZhV3d6V3Y3bkk3S2dE?=
 =?utf-8?B?cFc4b0EzNnRobXRzdWhhV2szc0czcFFocWRqRVliVCt4Zm9ia040VzN3Q20r?=
 =?utf-8?B?YzBMVzdxc3ZwTlE0Nlp1NXhFcDgzYXlQWHI2ajZtSjNvZTdVMUk1S0YvUEtu?=
 =?utf-8?B?OUN6SFVJRS9Yelo4TC9vTGEwRWpyK1BhWjdLb29RTDc0UXN0Q2FNUlFJQ0ZK?=
 =?utf-8?B?a25Uek9zWDVORXcvRGhta0x3MmFMUlByNzJzQWN3L2xUcEx5ZklHNnRQdnZu?=
 =?utf-8?B?ZkV1UGI0cElOZEVJeitxcFFMbWk3a1NEdTJZRk8xNXM4aytYL1lSUFhoNkFX?=
 =?utf-8?Q?r00LOTY52dOUUVA2HdSRsIGnk?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c8613e-2fe8-4dbb-aec9-08db71aaf608
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 16:25:29.1647 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EU+CVe84pk6qGCyCf8yGm4Ia1AILsccyDqPq3qCIEZVB+dusYablno4BAwCwoLGi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6723
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3A6yWobZkUJflvxJiiQe2EghgEc518Gg7h6/KnmGrDA=;
 b=BPdMwDlkPVDuUh+9hi1hUYA0fkhaJ1ef0TmIC9084TwbCpBwzFpe9oglx1sBBnqrH7lNoTG5C/MZM7F2iAkE0b0kZcLR4oR4lzEYvHykUkqQdAFeJWADHsPJekmFoZvSwut8Q6kh9EocrIL4JaNzfke/qflOceCQVKVh/50WlCQo9P2o0fwSI5i+RKzRKt6wYJbMGuWx+9+ja/LaN1s9ShOpH7lLhHfbVml5qedTFskfm+ULnhohdkW1K1OsRfne7lUwQ16Ar/VWCQbn9+o8lZZj8MoIk0HVgrGcEbtw+q6lwCCZM2PxM/2B7sK8jTwnBYGc151WPhBiBU4K5OQ5ig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=BPdMwDlk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] net: add check for
 current MAC address in dev_set_mac_address
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 simon.horman@corigine.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20/06/2023 18:59, Jakub Kicinski wrote:
> On Tue, 20 Jun 2023 13:42:14 +0300 Gal Pressman wrote:
>>> I checked it, you're right. When the addr_assign_type is PERM or RANDOM
>>> and user or some driver sets the same MAC address the type doesn't change
>>> to NET_ADDR_SET. In my testing I didn't notice issues with that, but I'm
>>> sure there are cases I didn't cover. Did you discover any useful cases
>>> that broke after this patch or did you just notice it in code?  
>>
>> This behavior change was caught in our regression tests.
> 
> Why was the regression test written this way?

This test environment is quite good at detecting state/behavior changes.

The test isn't written in any specific way, AFAIU we hit this patch flow
by default when using bonding (bond takes the first slave MAC address
and then sets the same address to all slaves?), it's not a test that
tries to set the same MAC address explicitly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
