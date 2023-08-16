Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69FE77E74D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 19:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD1D9416E6;
	Wed, 16 Aug 2023 17:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD1D9416E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692205879;
	bh=j2WwWLedDWi3R4i+VCzwbTm4+DYfb0Ox/gCe3axVtKk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m8AsrglYwol9SCdiLsmzDjN1baUTtpW+Xa05WeaaANbEiy06ee+dyfeTnCN91d2SY
	 4gA90HeaKmFDDwIJB4uvKu3SQlU4zvcXxOgtQ0gfGD1BS+zf0fzCfWwuSS2RnJRvTL
	 42uZCY6dybviI1kT/iY9yqqVsC6LCNmdH666v8X5Opfy+AsmJ+hSeOF6NczEXu7hd8
	 Lo4W6ouU7AaK/pXlDv7OEMUl/qglUotASavLlnHAwB3t06QRZYNzS1DhqpOp+Nl4ww
	 7WstJ2JQdxcKn6VTdk57BLKGpawPMMXBMpwQAqmz09bP8mO2BVVuTYWdeDFCyg2H1B
	 kI2ZjgdqmS3yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hu4_YS4pvmHz; Wed, 16 Aug 2023 17:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EA5E416E2;
	Wed, 16 Aug 2023 17:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EA5E416E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 255F71BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0800613AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0800613AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3A4GJ2wQ7fW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 17:11:11 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2065.outbound.protection.outlook.com [40.107.92.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2871061390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2871061390
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBH6S0rjBdQRAHl6hOse+uHtNW8oYAEIOvvKn5WTSYZpKCt8/sYN9/1Foh3RYVJy+/VYTB2xuY2IUXaKybul6gwPDxQLIVqhtlvhMPOuttss0pDNkcYi+XqevyyMMdZksdNXP3XFSb9IGMgd35MKp2JPFkvyRYQyrxtWZe5uiYWsQYMbGbUwI8U7CjXSXTihWr6b6aitOknGgDabwrhGv8G11ZWDK+KZ6/tQ1KqLlkrzAbrAIOXIrUe4mHIlL3wROEaRPt60AbvJWe8iFjfEs5HRzmTH9N1OwGIQTfrX34lmf3uqO/rpj8BWszWMQ3GG+/91pnxplovEe7FshWw1yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GZJtaZWD1eG4s/p0u/BiGeXVBHz42EhDunnSGeydVvA=;
 b=PNc49T+7EWhKs+EJlzpneBJBovIbmailR7ggEcBmJRdZSnoBKUH7eaykDXl7smg2ozx4SDL9tOFNHTxQwggSIq35gUpepnl3u7rJ0+CAsMuBIpFr8hG49fDhb/HXxfMK93JmtGeMOrqdRC2fPNiRg0kvnW/giDs5BB5SLI1zFL31Pcq8Dr+X0yD+G/aYiF2Y29Tm+z68uiQHZTYo2bdn9c6njIX4xBHvhur6IyJmWW4PRh+uhbQPJqtysWJ01YFQIGTP3o+Hh1F/53jQnp7Um9aMgfwqrnb8z09dEh9JP3TmxQH1l+pLP9oOHSTLDZ0HUshfmrSLsumplNOwhokqCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by SN7PR12MB7417.namprd12.prod.outlook.com (2603:10b6:806:2a4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 17:11:06 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2%5]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 17:11:05 +0000
Message-ID: <1d01ab9b-9d19-ceff-c876-02b18ee20150@amd.com>
Date: Wed, 16 Aug 2023 10:11:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Wenjun Wu <wenjun1.wu@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-4-wenjun1.wu@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230808015734.1060525-4-wenjun1.wu@intel.com>
X-ClientProxiedBy: BY5PR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::30) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|SN7PR12MB7417:EE_
X-MS-Office365-Filtering-Correlation-Id: 94ac476a-b9d9-4a22-12d6-08db9e7bc6c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3YHi80184jV5haWhtHSMUM6mpg1N9iZT/lonfAvaI+rbuIDb415nZRB658rMuDyk9MhcTk7dGVBlAiWMWtphJ6hnepGcASkCCgT/8QQHiUHaQMTXs8wrxTrkCIaMyjUPutgrobiXkDWzfEN21eL9OdqONtZItftE1Zu6AkKcXzCdifOVXgUpgAD5STxzmzwywa2jvVIGbaSgiSN245Wo5ojtqV8A6tGhk+VXzYlc8L6upGWMPZwfYS712hbQc2K+U672Th2Me8HM5jUkBvscDdFfKG3F11UtKoBQOI/eNN4UuLasqAkm0txrBXnMiRsud8xZIE7NACrnCU1Cpz0i/T/vo0hlnDzdqM67Z9IoVZgIcyvGu+FgirdYYfG1p/RUqbaqJBuUGlx3sgyvC+gHcOuKx9epx0BnZr27w9gus7mWSntsSp8pKtuZxVCt8ITLPdK72eHpPFhQEOd5if78ZiLrSg+0yXrgk8fdc01jzTNCpYkkWJO7eYJx841M/qcRKFN0ERNc84i6Gtvp3bBU6B3luMBgVl1gJSoTd5/ldRlVFPxb5LDXZ21VxTrKUXHcLP3vEnAGHM3XAS0QDZ1VYMO4w7GzWDAoopDiN2Fndt3SOj5D5PK2SvWgw013//+l0hw7bHd88YlMh6NqbZZYPA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(66946007)(66476007)(66556008)(41300700001)(5660300002)(38100700002)(31686004)(8676002)(4326008)(8936002)(2906002)(83380400001)(26005)(478600001)(31696002)(6512007)(53546011)(6506007)(36756003)(2616005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzlXcUFXWlhUaGN2QkFmV1lwbytnNXdaTlNXT3BsM3pFbVY3SFRGQ2twbk9p?=
 =?utf-8?B?QVhPT1Nmd2tUQmJBYWUyUzVmQTNHK01IN1NzVk1pdWxkN015MDc2c3JJMjg1?=
 =?utf-8?B?dTkrT25aWHYrR05jQzk5R2laRlVWWG9Zc3hud1Y3NVBwcXBFUkRJbG1DclNs?=
 =?utf-8?B?NE9OVURRTE1QS0ZEd0cvUTIxcnJhU1loazRUcGYwRkxUWWZya0ljb0FBR0NY?=
 =?utf-8?B?TlB3T013V0djRUE1VCs5TkhsRVo4SkdVRU13SHg5aDlKWWFNSTBYUzgrQ0Uy?=
 =?utf-8?B?SlBRUkxmVjBta0d5SlRmdXVPKzYwSHJHMURIb2V3U1BoT2E2cGoyaXNPWURq?=
 =?utf-8?B?eENKZ2pxVjVXNE5rS2lOTk51TmppWkdZNTdyRmRQOEtjQ3U3RmJqYjdaTXJU?=
 =?utf-8?B?TEVCS2JvT2Znblk2N1BKck1BN3ZQQVdER3ZET0JtbElja24ySmU4bEY5VDFz?=
 =?utf-8?B?UjE2QjZ0MmZIK1RhSHJGVUY0KzZkYUQzOS9IT0piaHZhY0VVbk5NTFZ6UllK?=
 =?utf-8?B?aE9sanVNQkIzaE5XdFFhUzMrTllIWmx2R3ZhaDI3a0N3aVE1S2gxbHdPTGVq?=
 =?utf-8?B?d3ZSQjBFWU8xckR1NTh6bElzUmJ2MThmV0xNYWI5UmxBTEk5Z0pabkxqdFFv?=
 =?utf-8?B?cmNZRzR5QmZSeDN3aTBmdWU5M1hRT21IS20vNnY0RkY3eklFd2VqVjN0ZitD?=
 =?utf-8?B?d2doUy9Ba2wxUmJscnJ5dTBiS2hhMEdLRE1YNUZZRlFwako5K3lVQnFUWnJj?=
 =?utf-8?B?SE5WWlEzbjJCd2V0QmJ3SXJvaGJFSnZIWUJWOFFWVUdLU1B5VFE3cThFUHMy?=
 =?utf-8?B?anBZMTVPRlgxUTNKVUg0UXg4SDh5UUZRcXViRVBROVJiMjdNVmIxbUtKMnhW?=
 =?utf-8?B?S2VtcDVLSUdnWlRJb3B2d3RycGYxd2diWTJpOEpjS01aM09UOC96M1FBUVZV?=
 =?utf-8?B?WDljVUdWUWRLcnpxQUo2cG4yZXpSZE1rYjlDUXljaStBY2UwR2pjN1psVGhC?=
 =?utf-8?B?RnlUc1NoZEdXcUg1ZStRR2hkRkFkYm5wV3g1b21ZeE1VUUowYU1DNnIxSXVj?=
 =?utf-8?B?bTBiQUJVb1ZJaGQzYjUySnNVdlNET0UzN3pvTkh4K3drQmxVeHhyKytUbUIz?=
 =?utf-8?B?a1JNOFRLR1Z4eHozRFQwNG9oNS8wSTRFdnY2anUrVDNaYmxKUmw4N2dxQk5I?=
 =?utf-8?B?OGRSaTc3dEl5U1RZVDVlYU5HWDBqV3NrNGx1SzRSd2xJcHdVOU1FYlJUTGhp?=
 =?utf-8?B?eE9CRkxBdDErRTJDY1NERjlPSEJWdm9EN0E1OTJxNy92THF2UndvTHcvUk0w?=
 =?utf-8?B?Ri9hcW0vMjRLSFBUVlBOTmR3bHR6djZuQlZGdEY0Yng5WjhXYklmdXFSMUth?=
 =?utf-8?B?bmMyOEZacUUrcElkekd5OVZESWFSUHptZmpiOEF6WnlPYkIrNGZCMURHTXJ6?=
 =?utf-8?B?eUtVTEJiNXdDNERCU2VjSm9ONUNoTFNkcXpWckdrWGNyMVNkcEtEaCszODY2?=
 =?utf-8?B?OUJhclMwbHJxcTA2bUVRdEljV0ZBQ1RxeEZpNHNPdGtKZHFIZ3R3NzN0TXE5?=
 =?utf-8?B?MEFJMmNmN2VsRDBHMEhybHdsQ3lxNzltWEdsblNLWHZVKy9DY1dvTitCNUpq?=
 =?utf-8?B?M0N0Q2s2bEhLdnhpaVNkcWtPSFZ4VVpoY0g3Z244RnZHMFhjUEpUZzJRV3JQ?=
 =?utf-8?B?c1U0MDdSS09hM0hYbEwzc1ZCb1pBaFpMLzRkejg2a2kzOHB1TmxUcjRoZHVL?=
 =?utf-8?B?TnJtWG11MGZJYTdZeUVwYThtQ3gxMXNhSkdhWmUzREFaMStnb052VnVKdWxQ?=
 =?utf-8?B?KzVrbG5ONzJOZGlORG1DWVMxbWF6Q1oxeTdReEs4enhnZ25sVTl3T0h3Wjdt?=
 =?utf-8?B?MmxUVHNaeDRDa2tXbVFPa3FBTGkzQzI3bjdGU0ZlTnQwWXJjcmhQMkpxR0lV?=
 =?utf-8?B?ZUw5bEdTZHlvY1U4Z0s5aFJobzBWS2JpL3dDSVVYTUZtZzhaZlVBSnRuZldp?=
 =?utf-8?B?ak1JWFV3Ym5idzd1eTQ1MjJEMVlMWkFTaUtlZmVSTnQ2VjBiUnRzZmVmRjZp?=
 =?utf-8?B?SlhzTXU2dkc1SWVaVHh4MGRjbEVqTnIxWjZYK3RKRnRGOVBaTlp5ZkQ4ZDRT?=
 =?utf-8?Q?ikD0Dm08EjuhNdJvkUBh5BDuz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94ac476a-b9d9-4a22-12d6-08db9e7bc6c3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 17:11:05.7325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 63agEmFOAVCRMTOiKDdaVUr8k2aI0ityuZkzfQxvGKdV82pZpyYvFlqcLoRfnW3U6qMquGl1TLswEy0O7CHYCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7417
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GZJtaZWD1eG4s/p0u/BiGeXVBHz42EhDunnSGeydVvA=;
 b=0/ZPi97qDynD5sQuqKoCjh4OdhOfOToMeqDQtQKKTwCPNq+7EEos93yjB+maEFgUmYIfKXs4uwKfkWTpjGtpUnlW7qCZUMQr0lchDFlWJ6IHyBPy+ZX8Fw/TsfrjbJmI2L1I48oWJTTvZw173FjFrGFkiCyWFOrAQH4n3zZag7k=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=0/ZPi97q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/5] iavf: Add devlink and
 devlink port support
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
Cc: anthony.l.nguyen@intel.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/7/2023 6:57 PM, Wenjun Wu wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> From: Jun Zhang <xuejun.zhang@intel.com>
> 
> To allow user to configure queue bandwidth, devlink port support
> is added to support devlink port rate API.
> 
> Add devlink framework registration/unregistration on iavf driver
> initialization and remove, and devlink port of DEVLINK_PORT_FLAVOUR_VIRTUAL
> is created to be associated iavf net device.
> 
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>   drivers/net/ethernet/intel/Kconfig            |  1 +
>   drivers/net/ethernet/intel/iavf/Makefile      |  2 +-
>   drivers/net/ethernet/intel/iavf/iavf.h        |  6 ++
>   .../net/ethernet/intel/iavf/iavf_devlink.c    | 93 +++++++++++++++++++
>   .../net/ethernet/intel/iavf/iavf_devlink.h    | 17 ++++
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 14 +++
>   6 files changed, 132 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index 9bc0a9519899..f916b8ef6acb 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -256,6 +256,7 @@ config I40EVF
>          tristate "Intel(R) Ethernet Adaptive Virtual Function support"
>          select IAVF
>          depends on PCI_MSI
> +       select NET_DEVLINK
>          help
>            This driver supports virtual functions for Intel XL710,
>            X710, X722, XXV710, and all devices advertising support for
> diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
> index 9c3e45c54d01..b5d7db97ab8b 100644
> --- a/drivers/net/ethernet/intel/iavf/Makefile
> +++ b/drivers/net/ethernet/intel/iavf/Makefile
> @@ -12,5 +12,5 @@ subdir-ccflags-y += -I$(src)
>   obj-$(CONFIG_IAVF) += iavf.o
> 
>   iavf-objs := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
> -            iavf_adv_rss.o \
> +            iavf_adv_rss.o iavf_devlink.o \
>               iavf_txrx.o iavf_common.o iavf_adminq.o iavf_client.o
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 8cbdebc5b698..519aeaec793c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -33,9 +33,11 @@
>   #include <net/udp.h>
>   #include <net/tc_act/tc_gact.h>
>   #include <net/tc_act/tc_mirred.h>
> +#include <net/devlink.h>
> 
>   #include "iavf_type.h"
>   #include <linux/avf/virtchnl.h>
> +#include "iavf_devlink.h"
>   #include "iavf_txrx.h"
>   #include "iavf_fdir.h"
>   #include "iavf_adv_rss.h"
> @@ -369,6 +371,10 @@ struct iavf_adapter {
>          struct net_device *netdev;
>          struct pci_dev *pdev;
> 
> +       /* devlink & port data */

Nit, this comment doesn't add anything to the reader.

> +       struct devlink *devlink;
> +       struct devlink_port devlink_port;
> +
>          struct iavf_hw hw; /* defined in iavf_type.h */
> 
>          enum iavf_state_t state;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.c b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
> new file mode 100644
> index 000000000000..991d041e5922
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
> @@ -0,0 +1,93 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2023 Intel Corporation */
> +
> +#include "iavf.h"
> +#include "iavf_devlink.h"
> +
> +static const struct devlink_ops iavf_devlink_ops = {};
> +
> +/**
> + * iavf_devlink_register - Register allocated devlink instance for iavf adapter
> + * @adapter: the iavf adapter to register the devlink for.
> + *
> + * Register the devlink instance associated with this iavf adapter

Nit, seems like this is a duplicate of what you above.

> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int iavf_devlink_register(struct iavf_adapter *adapter)
> +{
> +       struct device *dev = &adapter->pdev->dev;
> +       struct iavf_devlink *ref;
> +       struct devlink *devlink;
> +
> +       /* Allocate devlink instance */

Nit, unnecessary comment.

> +       devlink = devlink_alloc(&iavf_devlink_ops, sizeof(struct iavf_devlink),
> +                               dev);
> +       if (!devlink)
> +               return -ENOMEM;
> +
> +       /* Init iavf adapter devlink */

Nit, unnecessary comment.

> +       adapter->devlink = devlink;
> +       ref = devlink_priv(devlink);
> +       ref->devlink_ref = adapter;
> +
> +       devlink_register(devlink);
> +
> +       return 0;
> +}
> +
> +/**
> + * iavf_devlink_unregister - Unregister devlink resources for iavf adapter.
> + * @adapter: the iavf adapter structure
> + *
> + * Releases resources used by devlink and cleans up associated memory.
> + */
> +void iavf_devlink_unregister(struct iavf_adapter *adapter)
> +{
> +       devlink_unregister(adapter->devlink);
> +       devlink_free(adapter->devlink);

Seems like you should bail out if (!adapter->devlink) since allocation 
of adapter->devlink can fail in iavf_devlink_register().

> +}
> +
> +/**
> + * iavf_devlink_port_register - Register devlink port for iavf adapter
> + * @adapter: the iavf adapter to register the devlink port for.
> + *
> + * Register the devlink port instance associated with this iavf adapter
> + * before iavf adapter registers with netdevice
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int iavf_devlink_port_register(struct iavf_adapter *adapter)
> +{
> +       struct device *dev = &adapter->pdev->dev;
> +       struct devlink_port_attrs attrs = {};
> +       int err;
> +
> +       /* Create devlink port: attr/port flavour, port index */

Nit, unnecessary comment.

> +       SET_NETDEV_DEVLINK_PORT(adapter->netdev, &adapter->devlink_port);
> +       attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> +       memset(&adapter->devlink_port, 0, sizeof(adapter->devlink_port));
> +       devlink_port_attrs_set(&adapter->devlink_port, &attrs);
> +
> +       /* Register with driver specific index (device id) */
> +       err = devlink_port_register(adapter->devlink, &adapter->devlink_port,
> +                                   adapter->hw.bus.device);
> +       if (err)
> +               dev_err(dev, "devlink port registration failed: %d\n", err);
> +
> +       return err;
> +}
> +
> +/**
> + * iavf_devlink_port_unregister - Unregister devlink port for iavf adapter.
> + * @adapter: the iavf adapter structure
> + *
> + * Releases resources used by devlink port and registration with devlink.
> + */
> +void iavf_devlink_port_unregister(struct iavf_adapter *adapter)
> +{
> +       if (!adapter->devlink_port.registered)
> +               return;
> +
> +       devlink_port_unregister(&adapter->devlink_port);
> +}
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.h b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
> new file mode 100644
> index 000000000000..5c122278611a
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2023 Intel Corporation */
> +
> +#ifndef _IAVF_DEVLINK_H_
> +#define _IAVF_DEVLINK_H_
> +
> +/* iavf devlink structure pointing to iavf adapter */

Nit, unnecessary comment.

> +struct iavf_devlink {
> +       struct iavf_adapter *devlink_ref;       /* ref to iavf adapter */
> +};
> +
> +int iavf_devlink_register(struct iavf_adapter *adapter);
> +void iavf_devlink_unregister(struct iavf_adapter *adapter);
> +int iavf_devlink_port_register(struct iavf_adapter *adapter);
> +void iavf_devlink_port_unregister(struct iavf_adapter *adapter);
> +
> +#endif /* _IAVF_DEVLINK_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 7b300c86ceda..db010e68d5d2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2037,6 +2037,7 @@ static void iavf_finish_config(struct work_struct *work)
>                                  iavf_free_rss(adapter);
>                                  iavf_free_misc_irq(adapter);
>                                  iavf_reset_interrupt_capability(adapter);
> +                               iavf_devlink_port_unregister(adapter);
>                                  iavf_change_state(adapter,
>                                                    __IAVF_INIT_CONFIG_ADAPTER);
>                                  goto out;
> @@ -2708,6 +2709,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
>          if (err)
>                  goto err_sw_init;
> 
> +       if (!adapter->netdev_registered)
> +               iavf_devlink_port_register(adapter);
> +
>          netif_carrier_off(netdev);
>          adapter->link_up = false;
>          netif_tx_stop_all_queues(netdev);
> @@ -2749,6 +2753,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
>   err_mem:
>          iavf_free_rss(adapter);
>          iavf_free_misc_irq(adapter);
> +       iavf_devlink_port_unregister(adapter);
>   err_sw_init:
>          iavf_reset_interrupt_capability(adapter);
>   err:
> @@ -4995,6 +5000,12 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>          /* Setup the wait queue for indicating virtchannel events */
>          init_waitqueue_head(&adapter->vc_waitqueue);
> 
> +       /* Register iavf adapter with devlink */
> +       err = iavf_devlink_register(adapter);
> +       if (err)
> +               dev_err(&pdev->dev, "devlink registration failed: %d\n", err);
> +
> +       /* Keep driver interface even on devlink registration failure */
>          return 0;
> 
>   err_ioremap:
> @@ -5139,6 +5150,9 @@ static void iavf_remove(struct pci_dev *pdev)
>                                   err);
>          }
> 
> +       iavf_devlink_port_unregister(adapter);
> +       iavf_devlink_unregister(adapter);
> +
>          mutex_lock(&adapter->crit_lock);
>          dev_info(&adapter->pdev->dev, "Removing device\n");
>          iavf_change_state(adapter, __IAVF_REMOVE);
> --
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
