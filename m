Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9289D7309C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 23:24:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2816B41D79;
	Wed, 14 Jun 2023 21:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2816B41D79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686777866;
	bh=6bWPaIG6MTCr+PuK7yjCrmiHMtUe2SUZzXlTI5aJ1Q0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gDZqOizZKu/56Zun7oqzIcSFOnBiOPiwfMJlloijgwDpFzpm2dthn/Gk+XSjPwtwQ
	 6rHfmnWcSPuqllljCluX5WwBQdrAa4ETKyzy2G6UOSq88ScU6pYjVjPv493VHrMVKE
	 Gpn0YTOqdVu6c8jMAZGaAO5FHuguzkynx5xhTHjxPTs9s6WUJoHNNMQAmPGC3Kbiss
	 dyghYMM+9fDkg4sfjztpqbCuPip68jawuYWheTX8VAAOaQ5ZnS5kdGx1PfZI8Kh3XA
	 /97hu8ZL5BAga6dQM7fgxYggCEpwiSXQbMECKEDV3HuM+A56aa60JODXCYepo/Ma1D
	 NSQYR/t5na6yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VudweU1YSZhh; Wed, 14 Jun 2023 21:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 738A8409D0;
	Wed, 14 Jun 2023 21:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 738A8409D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1762C1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E267441E45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E267441E45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nd76fAJhEMSs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 21:24:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80020409D0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2078.outbound.protection.outlook.com [40.107.244.78])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80020409D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A8e8XMINBtw9WRn/8CM2Qn8vTGa7RhsWU7MpuzWaZHzke6dj1VMjdl1oBgPNDRrkBpceFM7V3OORfzdbxEW+K5g9/nLnDzNjAKWKbPnkHUuugIDT2D15g+N7Cdg4rA8GxFWKoQAgIAwni7gr8ml0f+IbOhyuLKlIBjPKnQgnFElPRwy6NzimbCSFSjdSTAkg2R70Q84cjMkdMkS8iFa1QPWdGBdeYwptc+YDx4qNLC6jmVG5uG9GbTwlWB17YCIGBMAD+PeGz8PytxxlhM9F86jPK+D+DwtQHnjli3xj0PeECxHVJjWA9/CNF4cmz4vITHnbO9nKqFV+yZmNCQxy+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6EjVP7S6cVdqDHWr9crYYokyJKMABVTBScWcjapNCt4=;
 b=nU6PdB+OBrrgVfUF1geIcTOaeHXRtSdnaxHrIV7cnAO/KMkFLLHhNTG10fA/aE12DymhzivhJLUFoBZsYNHmSE00bIIvt/0IhRKlA1bp5xELPSBKGI0Ljh8mafYDL1r6ax91CjMQgwL4jcP0Er2lKbWVWAnbJlKbJ5VQRIrLi+Zs0wIkb0xO1j8bAU0sSzCFF8eoDkcEBWMTrwIuG9DL9QVgym4mz0i2Zu2+1ARsNpB/u5KZlGIwqrn7x5Xx9My0sTBe2GSY4LXQ7lQDOvafkfbvg1Vg1WKuGklsWW4zZV9AekSOvjmGmDcGTA6Webaa+zmnQ4+nxnHL9WWrUU6gbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB7163.namprd12.prod.outlook.com (2603:10b6:510:202::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 21:24:16 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e%3]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 21:24:16 +0000
Message-ID: <26e4698d-fd5e-feae-b9ee-fc3ac35c7a1c@amd.com>
Date: Wed, 14 Jun 2023 14:24:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-5-david.m.ertman@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230609211626.621968-5-david.m.ertman@intel.com>
X-ClientProxiedBy: SJ0PR03CA0168.namprd03.prod.outlook.com
 (2603:10b6:a03:338::23) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d5a33ad-75c3-495c-4ac0-08db6d1db4d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K1X28+LaIrzk9wN2K8h/B2uS28LtAcjo8uFRXCbASykhwmgsf8sKspHpIWooRjaYYVcFraQK4XbvrXQUehliDsXD6aR2yXsS9WXyc9Qyc0Eazqx2bTwE2gAVgiMsMoVlMbZlYP632kHE9jwEc4dQ5XvzniFF9grBzQF/+wmV0ZHnCjV06AFjY49sF/WK6rAbm5ERKPkVnF9Nq+f5scaYM/A7EhjCq75Z7n55o6tfenUBaC5fINcVHvEQ0SaLDJE6LUrd0PrsghP8+R8QZkqzce74qCm9SAjz3WFKEgFRmhgRlU7Ssn/a5hFJLsGqmRRVNZZnk4+1MxTYF9Cbby4aS6WfekfbrkigNIQ5uQjzbhy8q4IS8GDd8Cqs4psXcV+sBqmlvK9FoOj8FYBPmT6xFhTSQeeYSvnCn6FvypGISjMYiqchN8HzbTkdoJJ6Dh7ucfvmJHfhER9svvNM1ndUR8eiIJczu1iEG/yu+RqO+727Q5afexYAk57Eg8X/0Fy2gR8RtHSto5U0njerY8pbGguN+InmKKCrgvaYe8basmUdRgQIVO6lX57KQ7YZ70hu4i2d892ZUvi32ybTkFOZ/dK/tpwnrV/G2DdzvZVn6ncfaj0u30CYOOHSnUC8sW2bki4vPJyXHITA3dBZueNxtg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39860400002)(396003)(136003)(376002)(366004)(451199021)(66476007)(66946007)(66556008)(4326008)(8936002)(8676002)(5660300002)(36756003)(6666004)(478600001)(31686004)(41300700001)(316002)(6486002)(38100700002)(6506007)(186003)(53546011)(26005)(6512007)(2616005)(83380400001)(31696002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkRqRVVaaEJxWlUwQnFiRkNiTzNVMXBySGoxcThzSFhDeFUzRWhLVUEwQ2J5?=
 =?utf-8?B?NTAzYXdtMzlGd1ZzbzZvM3lGOFJLS2V2T0JKa0FVOTBXTlFUMG9oYWtwWnNB?=
 =?utf-8?B?UHdFaVl3SlVGU3krVTFWMjdITUtaU3Vnbm5kdktOZHpiS0lxdXo3V0pFUmdV?=
 =?utf-8?B?QmN6Z2ZFT3RibjJBKzRieFB6a2xoSnFXZ2lRQWJwcUo5VEVoTlB6RjFid0tz?=
 =?utf-8?B?ZnYzd0xLUzcxYkViOXluam5tNjJQNXlkYk5hUnVvMzlXL3kvdjBPcFhYRkFT?=
 =?utf-8?B?TWdBSGQ0ZzRoYzNRa2VYZGFTQTk4cXRybVRkK2M5NWVZUDRISVA5cW5TL0hy?=
 =?utf-8?B?QlZidEhkbXRqMFJybUZkSW10STR5cnZPay9oQXYvTTBxd0hNTk82K09oZ3Zy?=
 =?utf-8?B?WUZOa25uUkdFT1k5dTRIQ1BFcExBcDN4SXdTNUNZU01KRzJUQlo5UHdkVmVs?=
 =?utf-8?B?cCtqMnJvL3ovT24zVDNsZFVQbGp1Y21ZeGpkL3VkeitwNG9ueU9HV0hHZFJp?=
 =?utf-8?B?bzFWUk56ZlBFc3hWWkVGVVV5elR4cWVqRmtkSEhDYTlQRzBaZGFkUTM2UVcw?=
 =?utf-8?B?bmgrSEgwYmRTRXlCRm1xWTRWV0E4SCtpM3EzS0xWOVJZbXJlbTVpRkpHTmJ2?=
 =?utf-8?B?Q1BKMWJmWjliL2F3YysvVlZxSVZ5NCtMby81cnRUV3JONVozOG5yWVh0YmZm?=
 =?utf-8?B?QUQxU0EvVUt1Y3RnRjMwSzI2YkJQelI4U3RuRmo4dmlJV3UyUi9qVXAvaGdH?=
 =?utf-8?B?TUR2VCtoNFJUbGpNQ3o1S0dpb2svSFhqY0F0c04vMS9yazk3cDdFblFGTFVO?=
 =?utf-8?B?NWdKZmJicXJzdTVhYk5qdHkvdmpjcmErR2ZaenNwdUlnYzVZMk43ZjZ3eDcv?=
 =?utf-8?B?T1N1WUJWMkdjS3pUdCtYWWFvK2ZHM1MyazVpQ0JqbWJQVEVVYmVKeXgxUENR?=
 =?utf-8?B?WDJPRjA2TmNObXFlQkZIK2FObDBSU2dUajAvQzhiMjQ4S2dZcURwcFhlcUlP?=
 =?utf-8?B?WTJ6YlNaRThpbUszMUd3Y1BLYWpPSFBHZGJWUlVyM3p6Z3ZjMGlWdDhiVVE5?=
 =?utf-8?B?Kzl6b2NadDJMVjlBbktoWXMwTElETDFEM21BMFI4ZXIrbTd3WmhUVUUxT3hi?=
 =?utf-8?B?TlVTMHdiNjZJMU93aWhab1VoL0xFSmk4WGNwTG1iVFRmWjY3WHZIUTNnWFBL?=
 =?utf-8?B?WkpRNno0ZmUwSDJlTm44ZkpoVmFXbDdyVXZMZnBnWENJWWNYL1FzK0tMK1hn?=
 =?utf-8?B?Y3NKODVqZE1LelJlWnlCclpvcThwbzNxMEJjRi9xODAxY2tyZnlVclhJWHRq?=
 =?utf-8?B?Ky9Teit0OFVyWVNOWWwvTjlXT0Q5L1BwNVZ1SW1pUDZ3bUVNUU1rWk5QbS9s?=
 =?utf-8?B?KzdaQjc4c1ZHcHVzZFhyL2k5Mmhhb0wzRk1zbVpIZkF3U0l0cTNESFpJZ2xV?=
 =?utf-8?B?bVdPQWRMYU1XV3ZKRXVQdUx0bU9WY3hFeGtpL0RVa3grQXJJYnJoaXJjQ25Q?=
 =?utf-8?B?ZEZaYVNydk1UdHgzQ0t5QTBpQXFGNzFmUHQzSkhWQW0wS1FseWNNM3FOcGZ5?=
 =?utf-8?B?NXdtT2VFNHdCdnFWK3FsdURKVHczUVo0YnpnR1pjWW90a1YrQ2JaWWowcDZ6?=
 =?utf-8?B?ZTNzYW9IdVpyd29vV3pBb3JGeUpmZTlhQlJOejZwNHBQTTg0NmNMUHJITndK?=
 =?utf-8?B?aGQwdlJlSk1nUDQ1LzZhdEhSSFVwbWZJMzV2eGd3N0YzY0pYWjBzamVEWTE0?=
 =?utf-8?B?OTNoaWtUdEp1YmlhenJHUkgzZk9RUUNpYjlRaFFmai9aTW9qUWFHN3R1TzFm?=
 =?utf-8?B?Yi9HT3ZqUmhMcS9IRnlwRHlQME40UHlTdzRHMkgwWFJ4NkRNYXZRYU1aU0p4?=
 =?utf-8?B?NnpYc3krRk5mdFl2ZWtlUVVPckFHVkRYZzZwUmI5ajF0dWd3cjYrRkllUUpi?=
 =?utf-8?B?VnJld1hJbFJFVlZVSW5wczRZSUlVbjdYeXk3eElSOGVXNE52QmtXMXlFdFV2?=
 =?utf-8?B?b2JFdXBoa2xhYmxsbGpUSkpibStVNDJHbkQxa2NmbTlZbmxnaXFhdmV4VmZm?=
 =?utf-8?B?MWg0NDlzSjdtMUZOdTVpbTJSUVp6Ty9kc2ZWSmtYOXAwbEplaXJKQ3YxVUhx?=
 =?utf-8?Q?9YnLDMA87hqhYDIM2gsAdIv/i?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d5a33ad-75c3-495c-4ac0-08db6d1db4d7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 21:24:15.9518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gtLswLM5A+RTGN0aIWYbOaPz+AHIB1+Tt8RO50OjSEsxgeXiFyCgcz/cYEavl0Rajsd8pqKuUMedb4x+zIOT3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7163
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6EjVP7S6cVdqDHWr9crYYokyJKMABVTBScWcjapNCt4=;
 b=nt4ayHCMBA6XwaWTPfvksHZ4lVigeagJYd+7V0kv1FtmZZ5a6FgEdNf+WVLUnYjYMVBtSgN8q4nHRwhqAUF64CP4W5QRClt3BE5g6cubfI741sCN0WmlUm64c8q3mGfu1D3c0sghhhWSPPoZVTkIKqJ8OQ7QGXBpsjoFEm/xG98=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=nt4ayHCM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 04/10] ice: implement lag
 netdev event handler
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
Cc: simon.horman@corigine.com, daniel.machon@microchip.com,
 netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/9/2023 2:16 PM, Dave Ertman wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> The event handler for LAG will create a work item to place on the ordered
> workqueue to be processed.
> 
> Add in defines for training packets and new recipes to be used by the
> switching block of the HW for LAG packet steering.
> 
> Update the ice_lag struct to reflect the new processing methodology.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c | 125 ++++++++++++++++++++---
>   drivers/net/ethernet/intel/ice/ice_lag.h |  30 +++++-
>   2 files changed, 141 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 73bfc5cd8b37..529abfb904d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c

[...]

> +/**
> + * ice_lag_process_event - process a task assigned to the lag_wq
> + * @work: pointer to work_struct
> + */
> +static void ice_lag_process_event(struct work_struct *work)
> +{
> +       struct netdev_notifier_changeupper_info *info;
> +       struct ice_lag_work *lag_work;
> +       struct net_device *netdev;
> +       struct list_head *tmp, *n;
> +       struct ice_pf *pf;
> +
> +       lag_work = container_of(work, struct ice_lag_work, lag_task);
> +       pf = lag_work->lag->pf;
> +
> +       mutex_lock(&pf->lag_mutex);
> +       lag_work->lag->netdev_head = &lag_work->netdev_list.node;
> +
> +       switch (lag_work->event) {
> +       case NETDEV_CHANGEUPPER:
> +               info = &lag_work->info.changeupper_info;
> +               if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
> +                       ice_lag_changeupper_event(lag_work->lag, info);
> +               break;
> +       case NETDEV_BONDING_INFO:
> +               ice_lag_info_event(lag_work->lag, &lag_work->info.bonding_info);
> +               break;
> +       case NETDEV_UNREGISTER:
> +               if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
> +                       netdev = lag_work->info.bonding_info.info.dev;
> +                       if ((netdev == lag_work->lag->netdev ||
> +                            lag_work->lag->primary) && lag_work->lag->bonded)
> +                               ice_lag_unregister(lag_work->lag, netdev);
> +               }
> +               break;
> +       default:
> +               break;
> +       }
> +
> +       /* cleanup resources allocated for this work item */
> +       list_for_each_safe(tmp, n, &lag_work->netdev_list.node) {
> +               struct ice_lag_netdev_list *entry;
> +
> +               entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> +               list_del(&entry->node);
> +               kfree(entry);
> +       }
> +       lag_work->lag->netdev_head = NULL;
> +
> +       mutex_unlock(&pf->lag_mutex);
> +
> +       kfree(work);

Should this be freeing lag_work instead?

> +}
> +
>   /**
>    * ice_lag_event_handler - handle LAG events from netdev
>    * @notif_blk: notifier block registered by this netdev
> @@ -299,31 +351,79 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
>                        void *ptr)
>   {
>          struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
> +       struct net_device *upper_netdev;
> +       struct ice_lag_work *lag_work;
>          struct ice_lag *lag;
> 
> -       lag = container_of(notif_blk, struct ice_lag, notif_block);
> +       if (!netif_is_ice(netdev))
> +               return NOTIFY_DONE;
> +
> +       if (event != NETDEV_CHANGEUPPER && event != NETDEV_BONDING_INFO &&
> +           event != NETDEV_UNREGISTER)
> +               return NOTIFY_DONE;

Would it make more sense to prevent the work item and any related work 
if the ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) check is moved to 
this function along with the events that require that feature?

Something like:

if ((event == NETDEV_CHANGEUPPER || event == NETDEV_UNREGISTER) &&
      !ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
	return NOTIFY_DONE;

> 
> +       if (!(netdev->priv_flags & IFF_BONDING))
> +               return NOTIFY_DONE;
> +
> +       lag = container_of(notif_blk, struct ice_lag, notif_block);
>          if (!lag->netdev)
>                  return NOTIFY_DONE;
> 
> -       /* Check that the netdev is in the working namespace */
>          if (!net_eq(dev_net(netdev), &init_net))
>                  return NOTIFY_DONE;
> 
> +       /* This memory will be freed at the end of ice_lag_process_event */
> +       lag_work = kzalloc(sizeof(*lag_work), GFP_KERNEL);
> +       if (!lag_work)
> +               return -ENOMEM;
> +
> +       lag_work->event_netdev = netdev;
> +       lag_work->lag = lag;
> +       lag_work->event = event;
> +       if (event == NETDEV_CHANGEUPPER) {
> +               struct netdev_notifier_changeupper_info *info;
> +
> +               info = ptr;
> +               upper_netdev = info->upper_dev;
> +       } else {
> +               upper_netdev = netdev_master_upper_dev_get(netdev);
> +       }
> +
> +       INIT_LIST_HEAD(&lag_work->netdev_list.node);
> +       if (upper_netdev) {
> +               struct ice_lag_netdev_list *nd_list;
> +               struct net_device *tmp_nd;
> +
> +               rcu_read_lock();
> +               for_each_netdev_in_bond_rcu(upper_netdev, tmp_nd) {
> +                       nd_list = kzalloc(sizeof(*nd_list), GFP_KERNEL);
> +                       if (!nd_list)
> +                               break;
> +
> +                       nd_list->netdev = tmp_nd;
> +                       list_add(&nd_list->node, &lag_work->netdev_list.node);
> +               }
> +               rcu_read_unlock();
> +       }
> +
>          switch (event) {
>          case NETDEV_CHANGEUPPER:
> -               ice_lag_changeupper_event(lag, ptr);
> +               lag_work->info.changeupper_info =
> +                       *((struct netdev_notifier_changeupper_info *)ptr);
>                  break;
>          case NETDEV_BONDING_INFO:
> -               ice_lag_info_event(lag, ptr);
> -               break;
> -       case NETDEV_UNREGISTER:
> -               ice_lag_unregister(lag, netdev);
> +               lag_work->info.bonding_info =
> +                       *((struct netdev_notifier_bonding_info *)ptr);
>                  break;
>          default:
> +               lag_work->info.notifier_info =
> +                       *((struct netdev_notifier_info *)ptr);
>                  break;
>          }
> 
> +       INIT_WORK(&lag_work->lag_task, ice_lag_process_event);
> +       queue_work(ice_lag_wq, &lag_work->lag_task);
> +
>          return NOTIFY_DONE;
>   }
> 

[...]


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
