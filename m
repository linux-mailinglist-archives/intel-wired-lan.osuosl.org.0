Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9CB87C0AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 16:54:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A975360E48;
	Thu, 14 Mar 2024 15:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktdNbxPhLaxE; Thu, 14 Mar 2024 15:54:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E000360E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710431661;
	bh=0CF2D1LdR3YGjipcaH2VdCpidOvJYda/43iSZJ/FGR0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ChbszruFWl8BW94u+3J3ehCtGIPjwwigow6yvRXgGnsvzS3U5dQnPn1RRq6nK67w0
	 GCrm2xpmeAHKcfsZULwz8k74V7EwcHP9dgpW3FvCrVmJkZOs+kMnUCoBdxLNvE5xx6
	 F54yY5t3XY/r4HuwFzI1iShhrAO9Rd2ub2Q94gFpj6JqKQsf8KjX+6Gdf5lp1KcUXg
	 2hukKU/a/fiyaZYv8yP8AtHCxkOuetUhDvAfGFZ9O72MwJJexQtucb/nQj8EXsp5rC
	 yurdP/acJ2OQsKTqUXvfhjwdCNMcIPw29lFrZ37wVle2jv6r8mKrtK30EU32GRxCxL
	 Hl+f6iFI71TTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E000360E31;
	Thu, 14 Mar 2024 15:54:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34CD71BF681
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 15:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D5F7402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 15:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ynSIrU2B35ST for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 15:54:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.85;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B63C40148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B63C40148
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2085.outbound.protection.outlook.com [40.107.92.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B63C40148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 15:54:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGafjPmlYEwVfK28xz2kS3GwvmLkSW/8AFMMx3+AtAuG2eWYWWmZ3AHJgkwrm3gicG4Azh/c6wavq8+ywhDcsL543xfgxIZSSLtPUZgZasFVZOztIR4ZvhymOzmFZX/EwxNOLU8Vo8QTJTBWW+pj9tSI/yvqtg0we87mYjGReBoUD75wweV8JZ8vFFRftktCx3O5vv6XzGsChaenv6Gb8wEdUXwOJJT2dL0aKUgWLPLRghYJ3hJJkM1c4/aBbPq6QoDEChCZ/64086wapdrHeNftETlkCUDRgK68p7ch/xHuPMb/XO942c4QwR9p4GJ3ozcmeBzRc6ASbzerk4EVKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0CF2D1LdR3YGjipcaH2VdCpidOvJYda/43iSZJ/FGR0=;
 b=kmcOd6UWcFIEwQuFsM6ftqM0dkAknpNcaCWhIUApceJlgG12hLUnC2r3uWrQthuw6px+uxzMprxKdFmP693gLFHLnNxGGlCWJy7fGfSi5v7uaQBj3UJhhxEOePEJTeB38GQaYeL8WU/e01PNYJSDx1lYVpkI3L+/LRFflS4Pxel1HrvDoUrFTD2F93g3AVQBO0aMCVxy9+0mx5otKSayZre92cYsvQg4yyQ0dC6RjXNdO8H/N1LnfkPPDytEab9xO5ZKkD3pDBITyH6QAJCarks1xfBSyPHTKkSlosafaKs8O4vPpm33QqWfRKPFj4AgmTMl/LZMtxTqKH6O5ufK8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by DS7PR12MB6335.namprd12.prod.outlook.com (2603:10b6:8:94::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.27; Thu, 14 Mar
 2024 15:54:16 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::c325:df95:6683:b429]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::c325:df95:6683:b429%6]) with mapi id 15.20.7362.035; Thu, 14 Mar 2024
 15:54:15 +0000
Message-ID: <d66bc516-c5b1-433c-a128-a28d657efea7@amd.com>
Date: Thu, 14 Mar 2024 08:54:12 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
References: <20240313135618.20930-1-ivecera@redhat.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240313135618.20930-1-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR16CA0004.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::17) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|DS7PR12MB6335:EE_
X-MS-Office365-Filtering-Correlation-Id: 92ec08be-279b-4f49-e9c1-08dc443f000b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s+zRhR65+ZXDbRrrm1c6rkGb+40HZmmYlrf5kQgrvo1Mc7Nlw6UV4wjB3HlcwI5+TNte4E9FYO7yPL0FsDQ1yDGmIdvcl8TI1aqUsHt/ErZABULRB8ik5hddp8esC2yF1am60Xr+NNUanDVg4NpoitmN+wGWpSb6KFNaMRZDIZPL9LQ688eAVflxAPg6B4NTL53x1VhvXgs5iIZ9ghSr+yfON9P2up9226VHRXhuQNL1lGI30IZ4ac2Bf3pVRyYD0Folp2lvQf5opOieTP5ilVsB+lIrGhNPtvK2xFke+zSfYE0CzbBankN3VnN4xunClQWLA/QuWJ6r9x0vEerclz/hjql9p5g/U/FWESxS/vW10skRs00k2msgC9fcT8U+zcgES+3ESEt844Jdj0O+Yv7X+6zNYK6S199friN1qdaKynZys3XOH8CZCDyolIrmmBq66V4gaYjto8pD6/WLL0fwRRaFN3+5rqxetdKZx2ep3DPww04jtIx4MgUH5dgKp8Zpi13IYE7DdQ3VQc4bY6S7LvvnKc+KXFHzP7gzt5h+T3ss9nkRq/ZxOzYnF12K+WJMb7/qhYnBP/uEOzxBK46TIyorxMm6b6YoS8961MRf7HO1PWIRqruIVDfIof/Kpz0n9xoKNK07g2UkPMzen8SaIIEzgjtk6lGort4bU0w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MU9tT3pNdXpMU2V1UENjcHdoNFVNTEkwcGJXUXlJNEZINEhRTHkzZ2hQNWR3?=
 =?utf-8?B?c2daVDhBeVpZcXJxNkZEYVZWaHdnUWI1ZjFwbjIyejl0dTZBdlpaZUdOTFVD?=
 =?utf-8?B?RUViNTY4cXhlendWWjNWM2ZPMlFVRXo1UWc2MUhvaWlubUZYVVQ1RGxUcnc4?=
 =?utf-8?B?M1hDaThoTXc0Z0cwOXF5VkxGbG5Sb1NvZFFTK3lZREp5MVNVQlF2a0pOWUZN?=
 =?utf-8?B?Z0lic3pRRmZZRDU1L1I5WXR2MENVMzltODk2OGx1WHdjalB4RVBYbjAxQ0Fz?=
 =?utf-8?B?aEdIamVwaGxqZUswai8zdG9VOTBzbjBCdEViUmRsUElrOTR2Zk1pTWoxaVBL?=
 =?utf-8?B?OFkwQnR6d1M1OFNxcUp3VGVYQkEyMzZJYkg1VkRXNndNNE0ySDhUQzFxamN3?=
 =?utf-8?B?YTlNamFpTE5JWGFveXBSUW1QY2UyUjNQdDZmZi8rL25MMzkzaFBaVlYyWHBF?=
 =?utf-8?B?UWhNUWlBcWVxSGdPVVY0bWNSOXFRenZTajlkK281eHRHY0h3Y2QvRFNWb3RT?=
 =?utf-8?B?OXFsQWxSbXgvMFFrcjYzcDU0TG04SEJQS2I1UDJQZVNqbVJTbTlFV0hQM0hn?=
 =?utf-8?B?d1NCZGIySVgwZCtGaytQc1FSM2x3dFhCWHlHOVI2WFBRMzNuSWllalJOVUtn?=
 =?utf-8?B?VkZ2c2xKWXhXL05CNEJFMUVOUjVyTjlMalRIVkQ4UEpMRzhSYUpEVHJ3OGlZ?=
 =?utf-8?B?a3lDdC9pb3h5b3dLV0M4MWp6dDRNcnlGSUUvdUlLYXczTVpLdCtWZitldFJG?=
 =?utf-8?B?MGZrcXBBcHdkbHk3ZVYrTFBJd1hZcDdYZzNIY2UwV1JDaG80a01JMmljR0xI?=
 =?utf-8?B?aFdqc3BkNys1SVVHc2NocVAxb0xKd0tKUURxV1dhbW9QUTJlM0I4bUFxVnRx?=
 =?utf-8?B?UC9rT3ZIL2lzT2E1OEM0VW9RcUZaY1B1K1NlQ3Z2SzVROHRjNFZMNHpyMjN1?=
 =?utf-8?B?TmdXTTlDRW5mYk90NmVheHA4WEVnN0ljSDVjVkcySjRqYmY5RHNqbTQvMkgz?=
 =?utf-8?B?ZW1RQzJIaGE5eGk0VEc5ckwwQ0ZRVjJJZFB5WVUySWdkb1JqNTVLdFZ5MG1w?=
 =?utf-8?B?QzJESGU3ZWhDeTNrOXNnWEZXWS9DR1ZJaVB2UEVPNVR2ZDVSdjVleHZzSHYy?=
 =?utf-8?B?c3I4eE5DQ0JnZWFha0VDM0VlS0s1STB4THoxMGJrbGVWclQ4SkZ6L2dLUHdk?=
 =?utf-8?B?VktRMXJPdnJuWEkzVmtLa1JlNWQySEJkQ0xjSGozY0Jzem5DMFlyUnlsN1hV?=
 =?utf-8?B?WjR5NkV4ZHRuYVlnb3JHMVB4T1ZrMjJMK2p2dkJCRXE0N0VPTWtvTDFCQU5J?=
 =?utf-8?B?M3cxYmxhcklCNDdLK1JIT2h6eWlkS1B0dWEwYVpaVCtZK3hmOVgwSWR1K1k3?=
 =?utf-8?B?aHpZb2t5NlE3UWxObW52SjFiUXpzejVaT2pCdEIwYlB0cDJPcVdPR0ZmNWpu?=
 =?utf-8?B?SmN1S1V2NFZBOHlaaE41VUorZGVqbHVCN0VJSjNyU012cU9ZaDlrRHYvTVdm?=
 =?utf-8?B?bXY1MHA4ZkJtNHFCZ0lKMUJhUUtZdmhYYUlUZmJQbXM4SDViWlJDQTdTeStM?=
 =?utf-8?B?d0ZlM2pxbHZZd2dTbittbDA2Wnl0NE9UUERYaTBkNUlSUzQxK2FXSkVhcjlo?=
 =?utf-8?B?QURzTUIzd3o1OWpaSHNUMUNIeTBZWWdNUkxWMEorbDljVHo2UzluU2t4cmdC?=
 =?utf-8?B?Y0VRTHhaSldLY2JLMWhKQUxWUzViRkYydU5ycTFlRXk4c1FvdGoyMUtISXpB?=
 =?utf-8?B?NGE4RHBQRGMzSGhETnhPTThsTzdUc3htblA0TVRFSFE4K0xZL3hJaUVZWjR2?=
 =?utf-8?B?V0ptVEVBVHpHajQ3dFdGYStidExIM0R6dldrWHRUVlBCdmk0a2lIaU9sZlE1?=
 =?utf-8?B?dkFaQ05tRnRGbURWRklpQ2tqcjA5OWtnWC9ZU0ZYQVNON2NBbXdRTmMyOU1M?=
 =?utf-8?B?MmtPWnlCVVhPVVdya1UrcWMvNURsZ2E2b01CTzNPMThrNklnUDhvZGU4RmhW?=
 =?utf-8?B?UHl2NTV5eHpJczJqdjlSb3lvS1BJRGhaWkVjMnhKN1RCNDJHQnR4SDZXcGN3?=
 =?utf-8?B?SE9sOWtZNitFWk52dHQ4eDZTNmdZaXI0U2NCaytXNWRCK082S3lDaUh2WVNp?=
 =?utf-8?Q?ZVjxPWGDkEVZbUP7pzjXpFoa8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92ec08be-279b-4f49-e9c1-08dc443f000b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 15:54:15.5402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l3eEL/8arfDyjz2o9xBgl+01wTKY9kbYDLA1fyW47+xjYYvgKBgkmQFddrrUgNBa01RM35X1bCOH9xpA+/8+Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6335
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CF2D1LdR3YGjipcaH2VdCpidOvJYda/43iSZJ/FGR0=;
 b=g6OiwPMgwfsCD0vHyqJltHiBarUHaRP9NgwIWd0F8H5IjLEvx7RDUXBXQRs80ybIhG1Jb2a7/eFXEvGVum23KBz0Mlr3eLxmx3/cDfwnYv2COGVrAhBFo3oaKfqrsAbmrmTzI/GpvdGBs+lMFcV3Ba8tTeqHtnQE6+7SPyTAfI4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=g6OiwPMg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, aleksandr.loktionov@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/13/2024 6:56 AM, Ivan Vecera wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Commit 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove
> administratively set MAC") fixed an issue where untrusted VF was
> allowed to remove its own MAC address although this was assigned
> administratively from PF. Unfortunately the introduced check
> is wrong because it causes that MAC filters for other MAC addresses
> including multi-cast ones are not removed.
> 
> <snip>
>          if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
>              i40e_can_vf_change_mac(vf))
>                  was_unimac_deleted = true;
>          else
>                  continue;
> 
>          if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
>          ...
> </snip>
> 
> The else path with `continue` effectively skips any MAC filter
> removal except one for primary MAC addr when VF is allowed to do so.
> Fix the check condition so the `continue` is only done for primary
> MAC address.
> 
> Fixes: 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove administratively set MAC")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b34c71770887..10267a300770 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -3143,11 +3143,12 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>                  /* Allow to delete VF primary MAC only if it was not set
>                   * administratively by PF or if VF is trusted.
>                   */
> -               if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
> -                   i40e_can_vf_change_mac(vf))
> -                       was_unimac_deleted = true;
> -               else
> -                       continue;
> +               if (ether_addr_equal(addr, vf->default_lan_addr.addr)) {
> +                       if (i40e_can_vf_change_mac(vf))
> +                               was_unimac_deleted = true;
> +                       else
> +                               continue;
> +               }

Seems okay to me.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

> 
>                  if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
>                          ret = -EINVAL;
> --
> 2.43.0
> 
> 
