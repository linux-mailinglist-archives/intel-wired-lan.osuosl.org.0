Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B464E8550C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 18:51:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A16D40182;
	Wed, 14 Feb 2024 17:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtRMgJsvnlsX; Wed, 14 Feb 2024 17:51:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAF934060C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707933079;
	bh=wkYB26EsovgS1lqkDKSs9iGWTpP44YnVqI2Zsxq8eKg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TFlSqLQJP4d7cL+TE1Jos2cl7OvuCuEfZ7QOKAorLS0d9A41d5g+TEJ2YKkNmbCtb
	 0a/aKLYyxwsE1621ELW8MBb1KSVs8CeKhCROorc2/dxI+Ecm9VK6nRkikQJrLjrvhs
	 AErgK/rD8ZATRfLF5peNFEZKgrvnHFNpzxSoj1bjNpBuKAbFLWRVGQ0fZPwUrvmA8h
	 qrH0XUmWrPqbajuHkMdOnD4cwrBz158FFNW2fDjLJ0CORnMz0OU0Ot4ef+wtFjV/NR
	 sKOGi8237QJ6cP6TyfQUcWAgdnXe1DsW7DEhGdCzQJCk5sFFLYvbMEmlAzy+hn0J4h
	 Qqs/PpPUNuQzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAF934060C;
	Wed, 14 Feb 2024 17:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75BCC1BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 17:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E8656077D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 17:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDYHpGHyEnPZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 17:51:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.64;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6D2FF60772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D2FF60772
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2064.outbound.protection.outlook.com [40.107.244.64])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D2FF60772
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 17:51:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QEruh299xXeomzeOTCgYsgCgdZZ0leRsx/A4QWdOaZzz2s2IipFjlqvzICd1we69Vty/e6ltiQNnPV8U/anOZ1zs6bmVfVeNuMA8BqvyLQDXssMjcW5/bgYNmZjIqlxSBj8LOCO9/ddLUC9YXQfar/oEwS1TOKw2Gy3vyGjlZOtBJ453WfWO8p240r9yLEl8Js5sNID3WY8RweW13qNVXtr73rwyWXfgWsOIcfyRPezlpvUXhr6o5Nr4f9CR8QrLUr461ZaFsAD8fDLwtm+0HTIfSf0gq/i/7R0uPAuvYMSsFx+e75OYVsEZNAxgSG7QeOslCN1xfVNbWCbIMwkeTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wkYB26EsovgS1lqkDKSs9iGWTpP44YnVqI2Zsxq8eKg=;
 b=Nr0B9PG/1oxRbuBcvyjyUv9JDP41dYb+IH/HwyTBJy/pJTB2DV0fZuhyFYbCsRjINa3X3n7WBbJs+0CC1MDeLDw3YIdc4ZQ37z3TYnz0rzulWGq4r8C1gdCXDIpk31yYx6kacNAeLKBMx5ZBcDXqhpwe1Yd4DnA4fqiHXMLLZfdiy0wmL4mzd9TSuvxabo+pBthoD0QiICqfQAZD8cdgxvR90BQczFPxnFS0eiuKHb22SzW7YAG33q7SJQffehs9YmUQaOOKvqMAFOj8UqW+/kBGCiYzqWgkrGJa/nPUpq7Lki/0ocxryTvZKm5qsU/bpo6HrHdQGL4qtHiMd7g4UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 SJ0PR12MB8115.namprd12.prod.outlook.com (2603:10b6:a03:4e3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.28; Wed, 14 Feb
 2024 17:51:14 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e4b7:89f7:ca60:1b12]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e4b7:89f7:ca60:1b12%4]) with mapi id 15.20.7292.022; Wed, 14 Feb 2024
 17:51:13 +0000
Message-ID: <4d232fe7-3cb6-4896-8d81-0e9726e5e7bd@amd.com>
Date: Wed, 14 Feb 2024 09:51:10 -0800
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <db31a0b0-4d9f-4e6b-aed8-88266eb5665c@moroto.mountain>
 <b5b28ce2-4322-4d39-93ac-46d32bb336fe@amd.com>
 <93ed20ec-848e-4c72-8c01-e47acd4e1d8f@intel.com>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <93ed20ec-848e-4c72-8c01-e47acd4e1d8f@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0088.namprd05.prod.outlook.com
 (2603:10b6:a03:332::33) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|SJ0PR12MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a4d5a6c-f072-4f54-e865-08dc2d8588ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JVq1w5vgariK3YPOfllpDTyYNXg4535g4mSSbPCnJzsorE20ojdutdH8WIC/8cweHz/FdgMd6ESMM3QLNR8Cc9v9kdq3CR7RNq6j6ImurFuqVWhO3wLph8QzN2MMNLigJ4JX3sY3bS++ELbWSh+IT+o9mQfDF0TsJgm3or0F9dY2nsHh54Xwa0S3/Qw4Zoo+OzYyZEhPlTW3Zpt7fe5WrbpG+kmuuQ7dLdL0dIY4+9o2CDa50vaB5HqQ3PHnde357l6JvxXSbzTB1Y2RnIWLbHIeQSxDuLkGPjZBfhKAoDwR2FEkhJ+GtHNLXQ5FK3yfZowVRn4+4YrVprqWgO7jFWJa+1KRUM0gfKp5HuyoSjshGFScO9oD512xGoSq/IXshl12TmL96xBi9zala/aI7LRZXRE8MgwBt1RnvaUJBcjSRYS+m5r+r2x8XhIfQqSSk9Nfn9AlIdnIUdFyKNdazNhYSITUjtGCATknyQNlGzbxClJocYp6mh7d0uAjimVHxHm13qnoUbqknpnGS/DB+Q9UIKGlarKuTVxYo31p3GJhKfQ2eGQUtbTxfSOsf/gN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230273577357003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(41300700001)(478600001)(6486002)(36756003)(316002)(66556008)(86362001)(66476007)(83380400001)(66946007)(110136005)(31696002)(2616005)(26005)(38100700002)(53546011)(6506007)(6512007)(2906002)(5660300002)(4326008)(8676002)(8936002)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUhESUp3RWdRcVBVbHRaOVZpOHZKQWdBVHE0THNnRWNGNWFhUHZhcHhjUkVa?=
 =?utf-8?B?bVpJa0QxSml5dG51aFJ1azZlYmpoVUFSQnkwWnp1eVFLMGFqY0dGdDlXb1ht?=
 =?utf-8?B?NUphSzFCL0l0UklQT0Z6NkZHei9ZU1Z2R0QvNnZMNUFIOFZZeHZxa3JUWHl6?=
 =?utf-8?B?NFpUdjZPRG84TlhCQlBscTRCcEVLS1ZLWmc0TFlXZytxS1doQ0toR3F3TkFH?=
 =?utf-8?B?eFkxUE9UVVNMeW9DSkE0L0hjVDgrblFVeHVpUHpqTEtQaURmQ0l0Ykw4TUJn?=
 =?utf-8?B?UE5yVEFOM2E3Y3B2OVVFRDRISE5panBNZjIrb0oyYkVrdU5INGFaWFZ0TjJB?=
 =?utf-8?B?UjRtaUNDdE5pbzlZOU1DYmwwMUlWZVNZRzYwUEpvY0xCUDREVlkxU2IrUFNv?=
 =?utf-8?B?ZlBMNWJNMkltbGRHMW5XRHZOSTI0bnJGSklnNnNEaHozNU1mYmMzQVdUNkNp?=
 =?utf-8?B?VGgzb1Q0azBYRWt5Zkg4UjNRQndURnNkaituN09vVXRibWl4MkMzWjc0RGZo?=
 =?utf-8?B?MUl6UGduUkQrNGZoaGEvakQxK3dFSGV2T0J6TjlpQ0pHYVVnWkk0YUhUL0VL?=
 =?utf-8?B?SGJKSm5CdXNBbURHdnNSQ1NZSitwWWZvbC83R1pLUFBxZXp5aHdLY2tDVzM4?=
 =?utf-8?B?L20rOWFqYUZBQ3FoYUtRcjBFbC94aHJ6RmNYTXRRYVdGQjNrbzl6MXpGcHNu?=
 =?utf-8?B?RXNITVAwU0phQXFGQ3FVd0lacnBCa09QLzR1ZnJjdGI4WSs5YXQwT0lWY3JS?=
 =?utf-8?B?ckQ5a1hHdHNIV2g5N09ZT25sVmpNTnJUbDZBcERFZlljNlF4QUx0a0F1UmFS?=
 =?utf-8?B?M0hDTzhmRWRrbGthcjcrNndWcGFLL21ubTNXbFo3U3EyNzFNR05JQ3ZoWFVP?=
 =?utf-8?B?L1VkUlVpeWJlNlRpV0ZHTFVyZ2lnY2ZFNHhIa2duK3RTUUl0S1g4dnFZVlQ0?=
 =?utf-8?B?UjFQUlprZWZjeUNwOWJPUjBBUUs3aTFsM3FvOXBJaDZ5UXZtT0NLQXFYYmc0?=
 =?utf-8?B?QkNiY05WZ0c2eERVSmozQ0dIdjhQZEN6YXVROEdBUEdqRnVCeElKMVBLQUFi?=
 =?utf-8?B?VXdiUmdPT2k0ODJ3Z2FqUmRRTnlRbWpwemlCUEFRSTdTbzd4eEZzV0Y5cSty?=
 =?utf-8?B?U0lCaGUzaW5xNG1YbExldTN0ZXJPVDg0VU40aWJHcGhlV0ZUVE5UR0E0b3JC?=
 =?utf-8?B?R1djTVBjam0wSGpKTUZ5YnVwaW14MDAzZU5GVE9SNmxvWFJhUCtuVFlNSzRE?=
 =?utf-8?B?R2txMDRMdzl3aG1BNkd6N3RocjNwN3kwVmVhQ0VFdFg3ZTZSM2lEdmJKb1Y3?=
 =?utf-8?B?b3dWaVVaaTBUWkFnWVRiNDV3bHpKT24rR2ErTEIrK2FBWHAxeStxNCtERld0?=
 =?utf-8?B?YmhHNkxjSDdYNEwrUUFXKzJFUk84dnNueTlKWTF6THFoRWQ3QVpxVkE1WUhS?=
 =?utf-8?B?ZTN3aDJpV2dzSHlRcDROWWYvek5SV0s3M3N2dmlhU2hZZC9RMjFFT0xxS1ZZ?=
 =?utf-8?B?bWNZMWppak1hUjNMems2WjNXMVFyaFJLUTRFMkNWQmZMVE9LUE1MbXJORVph?=
 =?utf-8?B?UmhGM1BuSlRnNHVIcnBKZ0txQzU3Qng2MTZYNm40WDlWRWt4TG5YU3R2ODNl?=
 =?utf-8?B?bGZGRVc1bG1rTVV4UkF3NmpVMlhwQ3JWalZYc2VsbEc3TGI3Nm9mYmhkZ01V?=
 =?utf-8?B?bVJFTFJGdXlmSDErc1dVZGlqdGdJRlNnbTJTUkZQTExyVlRKVldvQVZvMHM4?=
 =?utf-8?B?YVk5NE13R0pKVUN2eE1lQ2JoRUdFNGRhVXRSSVoxZnJ6c3AwQTFPbDB5S3Av?=
 =?utf-8?B?QUFJYlpKcDI0am5YdEZzSDkvZnVXSm1sOXhmQnVhUzI2c3VJdEE3dDhPNHR3?=
 =?utf-8?B?d21xM2pHRis5THpMZ09oUFZkU3ZsQWFRUEk1bU1nV0xFa0YrK0lRM0M3NS8v?=
 =?utf-8?B?cDk3NTFpY1VRZWNZN2NlYmdMTWNLek5sNk1DSEF0UXM3d0FVQmJnWTM0VEhp?=
 =?utf-8?B?M3kzWXlXM2ExdVEwbnJkMjZ3UC9QaWRUKzlQSzFTQ0p2amRoWjNyRlBUU1Y1?=
 =?utf-8?B?WnkzN3J5WkNRTWNCK1V1TWg5Yjc2aW5zZHZoN0gwaEM1eDhzMVVzU2tlQ2U1?=
 =?utf-8?Q?ChJGNDSO+J6xHV+bYvv56zcKs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a4d5a6c-f072-4f54-e865-08dc2d8588ef
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 17:51:13.2403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y36Pjv+eXbPqNAdHDaspldccE5fkEFs9WBeQJae8o8P6aiqgKMdOqb7PvID2IQ2Xaclq2mUu6jRZS1U4BjRChA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB8115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wkYB26EsovgS1lqkDKSs9iGWTpP44YnVqI2Zsxq8eKg=;
 b=TXQ5aZF7j8i2wIyXsRK73oVV+FvptM1LmHpAv0q54rh/2aUdGdVD7PSrl0joPaCoDQCVTBx6mFDnMBr6x687ie6jeAb1ednmK1Pk5k6lfpSGmDit0GcbZOLjNubDkth7GHfQebYAZlm8e/LVh4R2nGshyMHWJOA4oP8UvhdmvLI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=TXQ5aZF7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [bug report] ixgbe: add VF IPsec management
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
Cc: intel-wired-lan@lists.osuosl.org, Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/14/2024 5:58 AM, Przemek Kitszel wrote:
> 
> On 2/9/24 18:57, Nelson, Shannon wrote:
>> On 2/9/2024 4:59 AM, Dan Carpenter wrote:
>>>
>>> Hello Shannon Nelson,
>>>
>>> The patch eda0333ac293: "ixgbe: add VF IPsec management" from Aug 13,
>>> 2018 (linux-next), leads to the following Smatch static checker
>>> warning:
>>>
>>>          drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c:917
>>> ixgbe_ipsec_vf_add_sa()
>>>          warn: sleeping in IRQ context
>>>
>>> drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
>>>      890 int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32
>>> *msgbuf, u32 vf)
>>>      891 {
>>>      892         struct ixgbe_ipsec *ipsec = adapter->ipsec;
>>>      893         struct xfrm_algo_desc *algo;
>>>      894         struct sa_mbx_msg *sam;
>>>      895         struct xfrm_state *xs;
>>>      896         size_t aead_len;
>>>      897         u16 sa_idx;
>>>      898         u32 pfsa;
>>>      899         int err;
>>>      900
>>>      901         sam = (struct sa_mbx_msg *)(&msgbuf[1]);
>>>      902         if (!adapter->vfinfo[vf].trusted ||
>>>      903             !(adapter->flags2 & 
>>> IXGBE_FLAG2_VF_IPSEC_ENABLED)) {
>>>      904                 e_warn(drv, "VF %d attempted to add an IPsec
>>> SA\n", vf);
>>>      905                 err = -EACCES;
>>>      906                 goto err_out;
>>>      907         }
>>>      908
>>>      909         /* Tx IPsec offload doesn't seem to work on this
>>>      910          * device, so block these requests for now.
>>>      911          */
>>>      912         if (sam->dir != XFRM_DEV_OFFLOAD_IN) {
>>>      913                 err = -EOPNOTSUPP;
>>>      914                 goto err_out;
>>>      915         }
>>>      916
>>> --> 917         xs = kzalloc(sizeof(*xs), GFP_KERNEL);
>>>                                            ^^^^^^^^^^
>>> Sleeping allocation.
> 
> what about using GFP_ATOMIC instead of the "default" GFP_KERNEL?
> that would be quickest fix possible, not sure how often such
> alloc would fail

That certainly is another quick option, and may be perfectly reasonable. 
  Can you run with it?

sln

> 
>>>
>>> The call tree that Smatch is worried about is:
>>>
>>> ixgbe_msix_other() <- IRQ handler
>>> -> ixgbe_msg_task()
>>>     -> ixgbe_rcv_msg_from_vf()
>>>        -> ixgbe_ipsec_vf_add_sa()
>>>
>>> This is a fairly new warning and those have a higher risk of false
>>> positives.  Plus the longer the call tree the higher the chance of
>>> false positives.  However, I did review it and the warning looks
>>> reasonable.
>>>
>>> regards,
>>> dan carpenter
>>
>> Hmmm... yes, this does look to be a valid issue.  Nothing like getting
>> haunted by code from the past.  Thanks (?) for digging this up :-) .
> 
> :)
> 
>>
>> I'm not sure offhand what the right answer might be.  I suppose choices
>> include
>>    (a) pre-allocating some number of these xfrm_state structs
>>    (b) shoving the sa creation into a workthread
>>    (c) remove the VF xfrm offload feature
>> Neither of these options seem very appetizing.
>>
>> I would guess that (b) is the "correct" answer, but I don't know how
>> well the PF<->VF mailbox protocol can tolerate the need for a delayed
>> response - it looks like the PF's handler wants to send an immediate
>> ACK/NACK.
>>
>> The pre-allocations for choice (a) would allow for not messing with the
>> timing of the result message, but would require guessing at how many 744
>> byte xfrm_state structs should be lying around for potential use.  The
>> device has 1k slots available, but I don't think we want to store up
>> that many nearly 1k structs that likely won't be used.  Maybe add a
>> switch in the PF for enabling this, which defaults to off?
>>
>> Meanwhile, (c) is the quick and dirty answer for a feature that likely
>> doesn't see much use (I have no data for this assertion, just a guess),
>> and shouldn't be relied upon anyway.
>>
>> I'm not in a position at the moment to be able to address this issue,
>> but I'm happy to try to answer questions for anyone who can get to it.
>> I'm hoping that Jesse, Jake, or Tony might have a better idea what to do
>> with this.
>>
>> Thanks,
>> sln
>>
> 
