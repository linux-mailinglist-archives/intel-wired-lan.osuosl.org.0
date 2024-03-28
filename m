Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3987688FA41
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 09:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67C3A81258;
	Thu, 28 Mar 2024 08:48:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id My3P1oYKHtUP; Thu, 28 Mar 2024 08:48:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C10D481207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711615719;
	bh=QV2tOxm6/Z/T/e68sEU6RG65KtzxR5e3qmyS8lRGlAk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lqkefu7KNdggNd1TAuNq5fOEJSmbXWAsNs3Oltlu7VqvJ5+K2JNZqlPikngtXyy3a
	 +nCjT5RuorJLJmGBEsoeAp3MzNVB/6LT75atkPTuh32I/cLRPz2mTXTnOfC1rvuDwG
	 7jZk8rWBFJon8HWck5QGk8ME3HBTm2xJDkC+JWT5e1l7EMr7Oee5VkY+KPkhuCLose
	 Ok4EXoCz9xA0HA5LhxlhacFAgIHrkxpay0pZ3m+MpXqg3153Km8XEnKfFkw5T/TJgG
	 OHQFKI8hklGpxMxPOMi0phbmhcxmtH/3Ig5EUzlFE2rCvX4YsKAm2HfKKxPGODLF7p
	 s6S86DDynjQOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C10D481207;
	Thu, 28 Mar 2024 08:48:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F19D1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 08:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9D5C6065F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 08:48:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id loLWMPYZmdlx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 08:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 19E04605A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19E04605A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19E04605A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 08:48:34 +0000 (UTC)
X-CSE-ConnectionGUID: 94J+vqoYRcCjO8VsbX2BZw==
X-CSE-MsgGUID: 3RRvi4ywTRyOxvTpClAx6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6609079"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6609079"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 01:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="39698911"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 01:48:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 01:48:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 01:48:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 01:48:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 01:48:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gh7nwNsztWXA77cCqsM56sWblU2Otk01ghRoCl5SYEwUitI3gYyxr6oK9w+ni2/90MxEaPgamiDCh/fnSNEyE31O5JXDnmQJ4lMibySj5o8EgTL51jOo6f/eWg7ZFDW0jMlhe9J4H/nKL3pT3CKEKamsFIwVxfS/661vsnHPT9OPQUOJ3DIaJmSIsyGtrIQ3atLkYyFJt/I8vRSMt8xVMZ7kitHNqbNJevmo7jyLu8NpYbCgTV1BlZwRmT2imphrKBhDSst+6ENSNOPpWHyo5lZH0vcSvGFfrIfLM7FByCYPiHqWWuKJnDvl54Mf562nR0cwwRKe5/WmD7lJRGP3eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QV2tOxm6/Z/T/e68sEU6RG65KtzxR5e3qmyS8lRGlAk=;
 b=WHdDlCzukROxYn4Tg1YXB+pB1StPeQNwRlvnDDyUH9nwKDTiGlZQfi5REr6TrNM9LyIKKLHpFSVckLawdUjXgUluG91XhO29lGTWdmSAyyC1ub5q1tDICp4742Yco8cBKtBhiOUKcbKR2A9j/8jWUsexuU2/s1wvH+nIIirbOyNAXa/sC77EvvMdm+H9bWJUNqij/99xJrbqsvxd0XEK4Cq4IZNnr3wGNC4Ktj65EFF/JGbefGAW3LlwqeZAiMqPDAFZdM3+ffbicb3wyadAjbON+Qm5G/ol48xS0ARZcdAm3hjAVKDNJZSXScC24g2pfEoCIwb/vnnAAnUFT4EKTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MN6PR11MB8195.namprd11.prod.outlook.com (2603:10b6:208:47f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 08:48:31 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 08:48:31 +0000
Message-ID: <19acc560-4744-47e0-9d73-dc44ca6471c3@intel.com>
Date: Thu, 28 Mar 2024 09:48:27 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
 <20240327075015.7c13a71b@kernel.org>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240327075015.7c13a71b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0006.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::12) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|MN6PR11MB8195:EE_
X-MS-Office365-Filtering-Correlation-Id: 72bfd0b2-b140-4c7a-ed8e-08dc4f03d822
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YRiYlnFISnchvhmZH16MGT3E99ImI7BXCJCi1erZV0LIJNH9RgXG2yzvfj4mRaeaGE5t1i5U6fcE6W/GoErW4K3+I+gzKc3gJuGZiBLPOxb0/u79tKIfA9N54apV7nJqqr9aiMlugI8UfE9fesVOOcxOf7T2Mc65DdqSTJmFTnErB6ygsg1W/I2U3WayKY8iI0RcFnVAYXtYIoHNpI2j/q3QLJnm3rgMY+3+cv7shK11eZHdQO8bLg268TouFlp30oQ9Ze95jnyTUyNci2bQE2TNV1O5VK0B7Qf8wXkafgZdF/VYAcSXAYZsxzN7a3gLfOfUMvtnclno5OgFr9sY/OM3syP3AlgXSZJlsIvmgBdiX1DcFXOhaYFwZQmTeCqQ/KQi6fXRufBcl60NBk+cHfDRlLGYMdK40+qVtZPEmKgd50mU731r/Rd46as+jMQRJwuL6T0cU/VdcSj/rfNDfThdSvZC37pY4xlZX3YLwhf/4wB21zS6XuSZPjo+ieYy5RME4kQwkCof0KJFdogFCSru8VSez2LlYsxDfXXS6upGLSQ2TlkJCVa63YTfgJP8eEAjHXKYLTnK/Ou1jvwVUBoXNPLs4/N1LqEIWPIAgYqa5HrAec3YxNDJwxiY4yUQfl7ao5mCo7sYsC7jgmG+mSVemeXkLpP8u7R7T6YLdCU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWdyRFI2K2U4VXhScVRDUFJMRVd3cGZObVgwQ0RTbFJyRmRPTjVHZXBkaXVL?=
 =?utf-8?B?R0dSSU5SMXFzalVVZm5HQ1JoRUEwczFUUkcwK0h0YjR0NGZZaU9BNFZKY0lz?=
 =?utf-8?B?NmFtSTJXbDU4U3lKZngxT3ZyRVNia3NiODAyWHF1NE5uZTRpQ09Zd045RXN5?=
 =?utf-8?B?UDFSYkF1R3lNU01mMHdRZ0pqR2w1ZWZzc29jVXlOeUJQc0ZraStubWNnRUc5?=
 =?utf-8?B?RnFoUkZlZUtxVERQaEdyc0N1WUtWVTlPc2kyWVRYMDFaQy9vM3pVT1dON0ZZ?=
 =?utf-8?B?Z2xVSmZScTNnbmtpenA3WWZUOFNoTDRRdnBtQmNWNHhnZEg4eHkxY2I1S1ds?=
 =?utf-8?B?M1EyeXppb0NQbWRwVFpGMXpBTFlFbFJYSFpWZ3pNNFZVc2tTT2RYMS9zNDR2?=
 =?utf-8?B?N2wzNkZudkdZOHFsSzI0dzBlZjN1aXdBQkhsTm8wUmRGeDlKWDBnQ0lLM2g3?=
 =?utf-8?B?QUx2b1JTZEIxMXYwYjJZNTJVelo4UDY5dS8zYWQ2eTE2NlVsd0ZmTm54Uk1E?=
 =?utf-8?B?bGVUamRaeHVDK0xVL1Y5OTFndUs1Tlh0aDJjQks3d0VwUkVGYmxwMGtJQVEr?=
 =?utf-8?B?eUdVMWlUWnNhQUpIM0V2c3FUeFNpQXMrQUtRSk5iYi9ZK2Rrb1MzRFoycUl0?=
 =?utf-8?B?VEJCMjNzUjZyc2g5WVlNZXg1Zll2dkRLK1AvNG54cUhlYS9BZjRORTJmZ3RZ?=
 =?utf-8?B?Z1hHUi9pT2VueWMvemVXNGF1ZFNUZThUMGJNRWdEOHp4dDAyUmRpbU5qYmNZ?=
 =?utf-8?B?Q1psNnFGTDc2TTIwaXorK0lYcUFHcEZBdzBvSDN1MFlabGR5d0NLSXJjQWgr?=
 =?utf-8?B?bDRsLytqSTVubElQSFVtOWRmQ3pqdmNJeXp2TDNFTC9BcVpQYk9UM3RjbDhD?=
 =?utf-8?B?U0wvRUdMOEgxbkhUNHd2Z0ZLNE9zSmNneXFCU0c1eVNsYXRGTEVXYkJFK2ly?=
 =?utf-8?B?c040L0M4L212Q2N3b0EzT0l0bkY3WmV4c3pyajdpS3dLSFo0UXorMm5MTVVL?=
 =?utf-8?B?Zm4zd0dpKzNsUzk1OUhtckFNNmprTUkwU1FZc3A2aU94RzUwZGFqeDJjR0VV?=
 =?utf-8?B?UktpUW5Qek1OeVl6Vm9oZUt3QU5na0h1ZVN0NndDUnVJWmFBeFJrSWlkTU44?=
 =?utf-8?B?UmZHdVNIMTZzcXpzeDdCT1pSZXFnM0tFRC9QS0xBMmdRS1dGMWFRTUtya2NB?=
 =?utf-8?B?YmhYc0dDSURnbmlwMTgyY1BKdkd5L3VpSGtOZDlJa0NkdW9hOHg1bENMYWtZ?=
 =?utf-8?B?bXJxcDUrdndQRnlhWG4wTno3Q003ZlZWcWdhbFdvUG04R04xMjltYkF6Y2tX?=
 =?utf-8?B?eW12ZHlqemsxWXMxT0FKcndHVnlJU3JHWVBsekZJM2Fib3lSMTBVOUZJM1dk?=
 =?utf-8?B?ZDFyQXVYNFBlVndKTXJBc0V3TW91TGlubGp3YTNUeFQzZm1rOURQa1pyc1Vy?=
 =?utf-8?B?RFlpeWtkcXNPZXNUZEZPWVY2eVFibTlqMXYzUUxEdzhVbzZvOGpGWkNqVmkz?=
 =?utf-8?B?Q0FrWTJKMG5ocG91aGJwY3ZEOTcwWnBiaGVoUFFJSHQvV1U4bE1ydisvTHNQ?=
 =?utf-8?B?S1BsSFRNcHpGd3h6TjNnOUs0WTRlWnVCRzRJMzdxN1Frbm9rVFRSaUtrRWla?=
 =?utf-8?B?VGNoUi9nVTFFRWxhbXgrN2JsWDd4TWRYL1NxcXh5SG9iMHdRZm9BNFZZZ2pw?=
 =?utf-8?B?VnlUS0twaDY1SHBjNk9OM09zVHJhL0JzdW9PY2hQV1RuNCtieFpIOXN1QXpQ?=
 =?utf-8?B?YTNNNUlQQU9BWDFKUWtYTXNxUE9mNWFuZGk1T29acEhzYVJ0TDBqcGdsRGhw?=
 =?utf-8?B?aVZtRUMyMG5EWHZRWnlKM0krUjJKUUp3b2NwT0kwZU42WXZ0RjkzeUN3b2kz?=
 =?utf-8?B?MlM3b0thbmdRUi9rekpmSXg4R1k5YXV2QVhRb2ZvRDA0NzFnanRzOFFTcDRp?=
 =?utf-8?B?cDJObnpkRFR2OWRQWGdWL0Y5dlhwbmVHMUVjY0FHWXNQWGNqSU5JNERTR3dJ?=
 =?utf-8?B?VnlOMlJrdDRsZUlpWUZpOGd4VWFBTUhKNnZ1NHZuU3A1NnhRWE1TMUVERVlK?=
 =?utf-8?B?Vk42VTNmY3huNi9qUHRJZHdGTkRQUkZ3VnRoK2puZERFbStMb0NCWXRjMWxq?=
 =?utf-8?B?Ymp1NFFkNUdYRXd3YkVMbjFnSWNMTGp2cEZLa0pRSWRlN1ozNHVKRDNkbVor?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72bfd0b2-b140-4c7a-ed8e-08dc4f03d822
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 08:48:31.2105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VNmbZ51bQ/rutGAi8SyVxhrOMc8CMDHO2aRuC2qrh+NlojcIeVII25J4b9+XE7+++yM1ybF43gyeyFUOyMaaqvsNQk0Xv8ES8KCQThdYotE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8195
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711615715; x=1743151715;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P2eiL3SyLiJXf9A6a0bD6aeBqWbz0YZAE1vYzVRV78A=;
 b=TXc5mDSxxV7/JdPw3Afjd8HiBeeqN1GFJrw7xlKbQDouQs1Xp/QWwD4y
 BHgTK2dhtZ+U3wiULJaIcOhVjksOD5DT/5g3dzQciWhuhX8doTblmiT/6
 weYaRewD/3GskAkFyzLM80vAzQ0qgsO1vP+dVBXvH6gSSwMJU9p+DTolh
 dVsx8x2Zm11XCcjbPXaJE1i4E9xvmbAjUYFwWpS0hcP5092Femq18YUvK
 2ou7xk1d6GGkUDHbdT9VIeKn9PLzF9mNrSVwP7MCtQ1QQdD2neOvfoHQs
 lbvJhvIF7n7Mwvwq9v8YNMm/2zFKS7nybdV1PhxxCxjPlpfRmjJVjrNmm
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TXc5mDSx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/27/2024 3:50 PM, Jakub Kicinski wrote:
> On Wed, 27 Mar 2024 09:25:31 -0400 Mateusz Polchlopek wrote:
>> v2:
>> - fixed warning related to wrong specifier to dev_err_once in
>>    commit 7
>> - fixed warnings related to unused variables in commit 9
> 
> You posted this yesterday and got no feedback.
> You're not posting to the list just to get the code build tested, right?
> There's a lot of code getting posted, give people more time to take
> a look. v2 feels a bit rushed.

You are right, it was a bit rush, sorry for that. I will remember for 
the future
