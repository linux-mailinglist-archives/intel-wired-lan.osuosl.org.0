Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F017B73643D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 09:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9B3F4109B;
	Tue, 20 Jun 2023 07:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9B3F4109B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687245410;
	bh=xv9y551/eYE1hCpzA+G9oayDWCGJuhi5mlunuWsFFi0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hvZNUu7GoDPh6LNjnTrVw/j/4US4fS507CL2qNpsSKslnTRDGLmW1GUcWdyeuoK+U
	 2oyVe07qmmory87mWiATqbYmSqqhNLYFKoIzZgwWU+2nW+ZxEdhe4b5tOFn/1hnG6A
	 IRPa5J8NTz5qNXVbD4Mv+u4eVjc6qhr2j8e9PiPfh867j6wEGe0J2C1O1md0h3vie4
	 NzbC/R1CTZMujOGdKM8Ec9aJJd4o7EpT05p5hJBugkVW3mCY/Mz3N8SGs+E0zVntcB
	 NOYxW1AF8CzYN7BXj/3dJyF98cP0kooElKdLpN0X++PVffMPtj2LaCGPk7v/sahLpP
	 8QckHtxMORNhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UqlLk4kzMNtO; Tue, 20 Jun 2023 07:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77C7A40A05;
	Tue, 20 Jun 2023 07:16:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77C7A40A05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA0361BF386
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 07:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A146981CE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 07:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A146981CE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eBfWid4ybtzs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 07:16:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B286A81CDC
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2084.outbound.protection.outlook.com [40.107.94.84])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B286A81CDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 07:16:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gyvMnsJA+a5SPQdE3vVHVtOKPWIm2oO8EXMIvT3KIYKWXs6BM5JET6sSh7pm3EJ2zBIBPhpkAyJueIjpqKIS1XgXo3uzC1smrNBzClI+OILvpq+dtY6c/LaqwQXzB5O1xvoMht0Fof84rQiRx+CPRoRJ48aRLTnpW4Of5I/e5szza7sccgT6skTXQgDK0nL7ipFvlPNNElAMF80JkF3ZFsZ4EUOftaIZYcfig5ssqZVyBaov74/x47EItVxFuIU/XABHOZKtDebojTQ9hzdP/tqcsTSi/3miRoSytKAP5TCdl8kxENnkZw2caM6U3rap8PDNIekaykl0xfVXMqxS/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NhvhK3KWijfnpGRP0gawAv3LfRRaH1XvGUQOS5RC0Tw=;
 b=PPRCTsVbpG4HT7EnjoSaK3Mzz5wUjIWvKlJ8UCyj8dyhmx8TpKVEUEST0KGkU80LumXxUgQuIET2JFjl8xfAwERRr7m6QdKKdQA4SH5GMpYRx6JmzzxX7w+IBYkas/xMpcmWNnHVfbjhH0pGzJl46nkfHDubGkf+KWGWp2PIyV02ZZHGyb2BDD3wZjiXqQn/nbiaewVsCQn9RM6/ZHmx0BhZoHdpHXmczMkAjm4uPi7/8Rl+aa5ZtB7bDBpsIO21kGMfYcRJ/kmiJSzWqnFSCOHQxbsBGdcQ0uyaZGEFsAFgwHexuUJ4knUAWJcseTRDbqi9dF0Z/sEceVl2s2pVtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 SJ0PR12MB6736.namprd12.prod.outlook.com (2603:10b6:a03:47a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 07:16:40 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::12e5:730c:ea20:b402]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::12e5:730c:ea20:b402%4]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 07:16:40 +0000
Message-ID: <c29c346a-9465-c3cc-1045-272c4eb26c65@nvidia.com>
Date: Tue, 20 Jun 2023 10:16:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Piotr Gardocki <piotrx.gardocki@intel.com>, netdev@vger.kernel.org
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-2-piotrx.gardocki@intel.com>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <20230613122420.855486-2-piotrx.gardocki@intel.com>
X-ClientProxiedBy: FR2P281CA0101.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::7) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|SJ0PR12MB6736:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ecf1dd2-4161-4eb4-c59a-08db715e4adb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ql/zGaqufzPCsuraN53Gt/nxpHQZ/Ig0YkPZoEy92TqavP6a2sPEkRFF13EKhRAvD6dfZwm6/brVe6gpSwf+Cdgq/IQhweI+Ovxl5K48K1QAyBlIXzf7AOmiFeFzmdkqBFeQqeeGPMLkJfDKzl7Dox2Ii7z0ZykVw0s6KHny7ZeyhG46cbt53NXkeCimWIY4mxDJz/LKaNADWYO7gERReMv97TTGYS3Eb5JUJin17mHbQJdavNzp/MJbwKp6TP6xXK2bjsgfOBKu6s7ekHG9RW7o7oKMONnHTGPfYcbgwYeXcvIgr30/384NF7uP1dv3lha/B0vUK1BSntFBUl18GxOu3O0BzM10NyyWwOKnx+d3PBUl9MmgVU5/F7cGIXAKoHUCvcarmPfQ8mskrRXXllGsMIAOT01ij0m87wuAr/6xzMuIWNpNPLITzFEZCVOcsYs7X/ADokgl8c+Q4qOC6jHmZYCgyQuu33/ifREstE9EqAwN4249dhEV3mS2vJCS+8ynrBexoWgjLOg7iwgvJaxeUjLlLAMdRsynSjUTgJAt3Z0usXbUpkEqxbOz4eAOQ1NyqgPMQFGgxiJSuMEbyRxFasScdNEtDnAJGJWSC1LOImKz6Et/aFt8EKVOxRVV2F6hnS/q1KXmacrW/B+SWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199021)(478600001)(8676002)(41300700001)(38100700002)(2616005)(26005)(6512007)(186003)(4326008)(316002)(66476007)(66556008)(86362001)(66946007)(31696002)(5660300002)(7416002)(6486002)(83380400001)(4744005)(2906002)(31686004)(53546011)(36756003)(6666004)(8936002)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RC92TCtKRm8zb3hzd3BESWlhNmdHdlFSVGxLVlgvQ1VZeEhLQlNrYTd4bUdO?=
 =?utf-8?B?N0IzRURGTjJiM0lRbzJTeDkwLzQrckhwL2JVd1liSWNqQmhiR1F0YW4zRkw2?=
 =?utf-8?B?OGVKb1Bsdi9QS2J0ZlFHWFRSWkp5cWdBcFpuUEY1dE5vRkdVZElMWTBMMGNz?=
 =?utf-8?B?SEpnTmt4bGhuRVBzNmZ6bFlUbnFWOVdpUEM0NExESXpRblZwNHVrRXJKVk5P?=
 =?utf-8?B?Q1JkYjkxWDFjdmxkczl6V1hCd08vQldmTStablRiM0d4TnVEZXFQbHJlZ0s4?=
 =?utf-8?B?c1luUksyUVBKelArcG9ST1VmMkoxSzhSMWhSbTdqNWd5dW4zbGVJL1ZGZTRX?=
 =?utf-8?B?WmJOdnJySldNNG9qS3h1UVdveVQ4MzdPTTBtZjI5YzE5ODZ1c2psazUrSC83?=
 =?utf-8?B?WDROV29KTm1CZ1ZaaWc2YjFZcWlNQU44eW9Cd3ZRaDNnbEIzVWlzTi9RbVg0?=
 =?utf-8?B?cytwaENySDMvZ0x5T2x3b3JXSmtIY2lLMDBreTFnWlplZWg3aHVDYnlOUkph?=
 =?utf-8?B?TGJ3ZDJzVHE3SWNqUWJyanhTZGlZV3IyVlNMN3IwcFFjSVFFQ3dBY3ZHdTk2?=
 =?utf-8?B?QmdOTzI2TDJxNklHb1BZWkJlMlk4dDRYSTExaVZ6S3c0cWtsVWRZWGZPeE9p?=
 =?utf-8?B?TzVUbytUd0JqUmVyZGFTNHlTMTI0Tmd2R2pXTEhjWFpFZzJveEdneGtVb0hY?=
 =?utf-8?B?WkVUQXdGNmRrUGk1S1lkNUszSFNsdnZLZ1RXVm5aVFBNTGhjcHlualZkZ1ZU?=
 =?utf-8?B?bEY4VWJZZFU4bDB1SW4vWlBoK0xTYzBRZk1NT0pOYTZRSUxHeERxbTJHbnlW?=
 =?utf-8?B?b0ZqZGJqemJ4RmRvaFRPalB1R0N0ZTFzMFdma01XUmt1czFxenFYeStOUXZl?=
 =?utf-8?B?WUg3NFhZODRScGk4cGIzYzl6aXp6Q2FUTm9vWUZOb01IRldLS0xCN0l3aVBK?=
 =?utf-8?B?VWx0RTJrendNeUc2QVVLdjREV1o0MTVoNjhZTG5Rb3V4OTQzMmNvU2YvR0dk?=
 =?utf-8?B?bzlmVGU0bzJkaTJwaTdwWUNjU0FaTFdMcnp0NFY4eUtOS3REcUgyUTg3U3Ax?=
 =?utf-8?B?djFoa1dtMHJxZVVRVUViWlhsSG1DdG1TV2JaNElqcXd4NXEzaUtDYVZlRHBE?=
 =?utf-8?B?ZEk2UjM5VkQvL1hIVUJXWEJUbzMrSlBVZHJWNmNBM3U2SllPaFdWbjBqNTVl?=
 =?utf-8?B?T3pZTGd6ZDlMNHIzbzRESE03RXdBdHNyYUNiTDR1NW1YQlJYUEk0VmJHM2ZQ?=
 =?utf-8?B?SzMrZW4vK3RMRGZuY25XaXNjdlVlSXdpSWY2VERMR2JSMWdTQXVMYmE0czc0?=
 =?utf-8?B?MGl0c0dINWtXSzRUR1FpN2FEY21xeEtranBBUGZSM2crSFRtbWVZTU1FaFVF?=
 =?utf-8?B?MTNrangzUEJKM2ZYV0U5YWdsTFdidDFpTWpQVmxxUVRsUW9kQThZSkhrNXdQ?=
 =?utf-8?B?dDNMMjVTZUdxay9iUVV6cmpvVW8zK1R5dDRwQjRINGpUdXZBY3hKaENRZGhC?=
 =?utf-8?B?QXk5eWtsSXdCYlpNTGZha3dyb2dZeXhIMldDRGE1dDZ5dWwyOFpBUDkrcWZW?=
 =?utf-8?B?Ti9sajZ5aThyclJFSXdHUFVWL3JRSkl4K085b0FVUndYcnRQVWtDeExicXNR?=
 =?utf-8?B?azBuMkVPQU5Nd1k3MUFDbnFWRnRDQ2lMLzRUcTMweHYyUlNLY25tZ3NyelR2?=
 =?utf-8?B?RExOZU1zbXJRdXV1aDJUaW9MaUZUSHcvbWxGN01YdFMraXhzSXlHS1lHT3li?=
 =?utf-8?B?cDhJY3cvOUQrS2dtb0o0YWNGUVBuckJyN20zLzlkenBRNTdyRk9tVXY1c21X?=
 =?utf-8?B?RytNdkFkU1hyVEJhZFpsMnlwTE9LU2tRWmZXeGtpL2dKUmhsKyt3a0YyZTYv?=
 =?utf-8?B?L0pLaDFIeFI1QjV1TXlSQU5hL3Z2eXc5eEVIZjRqMkZabno2dUl4elV3WXFr?=
 =?utf-8?B?RzZ3dWluQ1k2Y0d3YzlWYTVLS1N1NnZvTFROc28rS0dQV3Q3M2dmR2dzd2Yv?=
 =?utf-8?B?RWs3YXd1dWpNT0F4MDNtUm50azBWMUlSd3c4QVUvclhCWGJLVjd6ZU9ZT0dQ?=
 =?utf-8?B?QTRaZW9HbFNrb2JvbXpoK2N5UU9pQjBrWUs2MDdYUkVXd1BBSE9OS1U5TzBD?=
 =?utf-8?Q?1XXRLq6zuG/o53JeOPC1j60Sv?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ecf1dd2-4161-4eb4-c59a-08db715e4adb
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 07:16:40.2906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ONYpZx35W240877VeFniEFAERM3FEr5ZKq0lhE02knj617YNKKPRAigyvv7c/N6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6736
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhvhK3KWijfnpGRP0gawAv3LfRRaH1XvGUQOS5RC0Tw=;
 b=lHXRFc+IT1za82x3qSp+83Ck0C3cVGeW4Lx6ctkC1ijXQr9x0mzNAPT+95yGoIHlexjUz54XpOz2n4eFuQa+tJlho8cf/NcVLQukgqzi9Xgv4Q7RT7BGrbpD4L02vE3kan0TZAma+kIM3Kz71H5z82XpsSMezJXYKgsO9WzYucqvbyOn+T1lmvnjhN9ZxJ1T/q4t0p50L18MHuNlFG/f1Zuk60TyE4gkqVGLQdH2C2tW5nTeSbl7SwJC+Td1Emdv0jnZYe2fML2zioJ2YghwmVLZ1gdISqw2nhFZYEctz5NC+BXjqL3KetwyXh9JYygq9CLHR/fu8XKAo2LHFQYK4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=lHXRFc+I
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13/06/2023 15:24, Piotr Gardocki wrote:
> In some cases it is possible for kernel to come with request
> to change primary MAC address to the address that is already
> set on the given interface.
> 
> This patch adds proper check to return fast from the function
> in these cases.
> 
> An example of such case is adding an interface to bonding
> channel in balance-alb mode:
> modprobe bonding mode=balance-alb miimon=100 max_bonds=1
> ip link set bond0 up
> ifenslave bond0 <eth>
> 
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>

Hello Piotr,

I believe this patch has an (unintended?) side effect.
The early return in dev_set_mac_address() makes it so
'dev->addr_assign_type' doesn't get assigned with NET_ADDR_SET, I don't
think this is the correct behavior.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
