Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 236F87309C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 23:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B757940950;
	Wed, 14 Jun 2023 21:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B757940950
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686777852;
	bh=UG0mchoXF3oOJlTOLABqv5ac7m4ODuWEu0FT2W131Po=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YM1zCdWHNSMfWN4GnAqr8pFS/yew6x1ZDU4SWIOtvCmC7f6C2RhOuinbkVm1ogrmO
	 dJaspQ76fcyiLmusjZLhwPOe6koE8asaonkT9n8mAnaeVfXGfCvkHXnYjsXPS7Y4bH
	 tkl+wZyEzOM4rKa1kKF77z3cZ7Hb+YrqDZXUeqGkBLIKBmarxRsZNYWAyxmmvK5tmN
	 YOVC2QHBFaNkEXwX6hM7hG9p9vy2FljNVF5kzuJvxFTyn2A76cwaDaSM6QzBRW0NvK
	 UuY9oOy3slEmDKSkWUCkUwM5+XgnjYRRSMDWlgIgqHH9/VKXRX5K/DVMUS3d1eHr2k
	 92QosBsBR9uzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S8mvC-WSLIEC; Wed, 14 Jun 2023 21:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6A0041960;
	Wed, 14 Jun 2023 21:24:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A0041960
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 576741BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EC74418A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EC74418A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXZXtr-KTE3f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 21:24:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D64AA4189E
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2077.outbound.protection.outlook.com [40.107.244.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D64AA4189E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L/sd+PM809j+DnfIujPrb+aylfkIbJw/J1BcDlkK6ne5Gg3YzMKIfuaszKpZQp4OuoMrBH6HRvAFB1ghqQF2XcLKGwgB+M9Hy2vveZx0+9BbgflkRsWJhp0k625aAKo6vuqRz8FRdjBuZcicS2fWSk7Bgl4WNzLToelQz2mAfSMNg07K8DlP1Kz4Oy4K546vyj0KO5z2AToR8Xy9cOMW7jykaBET9HHwqgLc6QvcOeFnSUWTLMMMgptEY6cErLdvHzYORln3Gqcivj87m1TqHSakoiYqgKitVK1nTviuqzaLajisSCzihnU8CONMLNDPa+h22sRCO+YZEA1Pxvbwlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jk4cb+FZZeoD1aaaJXm+rA/GOgZHxuS9BLWh6KqD/3o=;
 b=AIQaQEtLLoziG+URIy2Ppr5b7eDuk+IaoCA4K/RLzAMOExDAZOdxP/lAyjqXih6RN8eQLYiduUJS7/c0pQTabdi7rhWxWEouuY/1D5ksFIiipWmfEZdFNTRyaRbUzzMzbY9B1J2XPMp6ATef5lmNtucIkpJhtSo/jF0ptxYsCQv87Y8XKwABpmPbcntuxoK2qbcMKGjiuGzgX7pyjZuPxXewnhSVkPXyfbe0EZGIDba/LXYhz4rj7eWpWo6QbfCA2nUiZyKbMhTRWAb8DsawHFc458vh8pNDwiAfdEp5Mqekz4OF4kTeMub5q+azH8O3WsOyMIpr/dtSXaoUj0G93g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB7163.namprd12.prod.outlook.com (2603:10b6:510:202::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 21:24:01 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e%3]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 21:24:00 +0000
Message-ID: <401c13fc-9fbb-a126-f05a-6468a563404a@amd.com>
Date: Wed, 14 Jun 2023 14:23:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-3-david.m.ertman@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230609211626.621968-3-david.m.ertman@intel.com>
X-ClientProxiedBy: SJ0PR03CA0160.namprd03.prod.outlook.com
 (2603:10b6:a03:338::15) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: 420d89f6-ed57-4233-8a5d-08db6d1dab87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SVsXc4ZoYo/jJAcBVBlU6yoeHjKtRfgNxED2qKrAPmRmVY3qkHK6RHGomiKrUc2repH3J4Vh71wyS7vMMdJzP6y0xbn15n7D7/e2FsfVI/KFyMozR4msnMBO4lMSPmVOBwVNvFKned96xMlltL2ujDxHtiMZDOJldQKQrLOuc5xjw89CjVxRNngVECtPkm6bereu1mxJWcTSQC3FNxkqDuVCXA5CwGhLHiktRNCszVhM60WR3Bz/y43ttxUiKvcw7pCxbOoACMhgmESld1uZx9rcfQs/hwAPqx28fbBwI496CZxMqztO7IViVoxCgjS2FGlvuScE88y6+p0TW5vXDLyscv0aSCWHzb+7dmq/g3/o82+vedE2cXRQIRlGBjg1WgK9fr2kfR/Htmui1H3yN6l3htl8GNq+rUhxH2LpsYCaWI32sM4O+jFlxQtVOJyNKxnYuC9sZYGx89KqQpWbB3NiigPkIadwF7CfHGXHLZHho2o465qqkk8NQv5cv2PPf8oAmVBBYu0VMV2SQcIRYg9tk/5nDQoUvoXdoj2Vi8GillxCLV2Tpj1pgXoA7IRtx+w6TBrKzi4ogcXk8wN6DZtxoCgGvkFqexSRyQYM3ipqrkLYj9a0cJjh8OWewUDMyprRD1x5JcgQhyd76b/RCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39860400002)(396003)(136003)(376002)(366004)(451199021)(66476007)(66946007)(66556008)(4326008)(8936002)(8676002)(5660300002)(36756003)(478600001)(31686004)(41300700001)(316002)(6486002)(38100700002)(6506007)(186003)(53546011)(26005)(6512007)(2616005)(83380400001)(31696002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2ZPUWVGenVKeGprV1NXVXhNWFJHOGpkdklnbVF5dEhxNkczRnoyMXFkektv?=
 =?utf-8?B?YnBCTVZOL1VxeHd1cWtUVkhQY2Y3bzJyUzFmSkg1SzUrQ0c1SXhHUXNDajU2?=
 =?utf-8?B?cm05UENrazdUUytqL09GcXFIdWhpUDZiWS9ncS83VUdwdXBScVV3TGFWWXZZ?=
 =?utf-8?B?OUdGQXNFTy9jQ3RaQTRlTi9qTG9rYm0wVi9vREVnK1NudEhWRmtQWkZMbG13?=
 =?utf-8?B?K3NEWEF0bFJTcVJUSGd1bHJhbjd1K0tvTkNVbXlhbzEyam04dDQ0cW5vb2Nj?=
 =?utf-8?B?a1A1bkpvcWdlZzlGM2FyRHBieVA2YitEajMwRjM2ekpWRzJCcEFmVjFVVUgz?=
 =?utf-8?B?K3B2VlF2OW5vME1wZmx2ZHVtZVlMV3lJaGpPNzYrM1BOMDdsdEVVSERzK2xi?=
 =?utf-8?B?Q0RrUndVdElCV0RLeWpKdjJ4dlIvUXNoUzFFVEk1QWxSU291aHBYZy9PRWY4?=
 =?utf-8?B?WnZ3RWtRZVIwZWhmSFlFejRwYzBvRHFXRjRGVW5uendCSWt3T0ZRd3dDQkMw?=
 =?utf-8?B?MWIrYkRwbTdCbWlDd2JvNWhmdzk3dFNmNkdqOUtuakI4aW44QVZOUVdlM05U?=
 =?utf-8?B?bHZ0UHNSVnhuSnZhekZYRXFJYWhHdlQzR2ZEOCtkT1o5cWxVTW9takdwY0VZ?=
 =?utf-8?B?MmFoU3BJeFNmWHhYQ083K2I2VDl2VGd5aUd6ejdZMUpUR1V4enlsdUZRRkFz?=
 =?utf-8?B?V0IyN2FsL0hGQ2xyMTBFeDVqZzA0L1VYYzM1WjBmUU9jUUt2bUViYWFzTXFa?=
 =?utf-8?B?REp0Wk4wM2d4SkpKZDJ5N01qOTZZaG5DUm5YMDFadXdHOHJxbHFvVHIvcDR0?=
 =?utf-8?B?VkpFQkpTTnRpM1ZyaFhQbGZ2MFhFbnZwbmxrZFdJQW5tSUdxSk1mSURpSEV4?=
 =?utf-8?B?T29CV25CVHFlNmZrMDIxT1ZnWEhoZlB0aUZMYXUzZS9xQmpIcmszdnBHemZW?=
 =?utf-8?B?VlRkS2srSmdhSFF0azZsdmtCdEQ5d0ZLLzdsWVVNalZhckpwT0pPZGxRZlpj?=
 =?utf-8?B?UGw4aXVqcE03ZWZhTlhpU0JwazV1a0MrdkVJQXpOem9Lek16aGdmSU16MlNC?=
 =?utf-8?B?MDhNWHZTUElYQlV4RWFjckFQOXJKNGdxbVNXOW55Y3BNKzdHZzRqRFZLQXdh?=
 =?utf-8?B?R29tTzV6R1hXem9OblJyNWRFK3lzb0Zkd3ZMQzZrcXoyZXp4RDNNUFc1b21H?=
 =?utf-8?B?NGFkcGJOTW4rQmxjYUFTbTVoV3dxamJ4ek9xREp2cjRtb3V1bFN5LzRiaWt3?=
 =?utf-8?B?N0FIOEo0YkczbmlkQlA0TDIyRnpacGI1c3dZeVBqTnFIMXd6TmJZeHVvYzVI?=
 =?utf-8?B?dmEzc0d2K3NWKzZUZ3FFMUkyUjY0bzRhNUVSSWQvbGhGMXluY1FxRWxCb1RI?=
 =?utf-8?B?bzJ6bG51cGlER1RiREQ0YmpzU2gzSTVsTTBLS0NORVdGTlFablFQQVdxcXhj?=
 =?utf-8?B?ZFlpbDRCMnVxcWlqb05YOEhCRVJzMTJ4OEVDbW4ra3d1a05aUUduZGZ2QTUy?=
 =?utf-8?B?aU1lOFU3S3Nvc2sya0EyNmxVT1VnT2JqRDRKNjh1eCtJUW05dGd1Rk4vejla?=
 =?utf-8?B?blZSVzQxZDlGV2lKSmxVM2w1SW1DQ2ZUQ2lJSHowMS9WZlZHU0hQa1pMQmZ5?=
 =?utf-8?B?L0Qrek5BZ2JpZjZiaXhybEIycVhzb3J6cCtvbmx1MlVZRllSSlkxa2pLMWxx?=
 =?utf-8?B?a2svR25IU2lUQmNFZmU0L2dKb2RkSTFydk9DT011YzdwY2c3UkVZYmFSQ1Ri?=
 =?utf-8?B?UEhYMUFWdlZCL3NWZDR3c2pjazhPN055TTNWMDg1aUFFSUMrYkJQdVZvR1hP?=
 =?utf-8?B?dHZpUFV5RW9nTDUyanpUb29hTWMzdEZvaUdXMzk5bU02NnNIUVArSHZqODU2?=
 =?utf-8?B?WG9uVVZkU01RWDdZQ1hMM2x0K2Yxd1VobXVCQ1lOdzMwMVlVNWRidkMyczg2?=
 =?utf-8?B?TmxXaGVvZkJGbUJvb0NPZW5EZWxBVXNyeElWc1Zqdmd6Wm1HVzRQNDhORExB?=
 =?utf-8?B?V1l0Y0Z5akdkVFl3Q2dHRmR5U0N2MG1aQ2RDV0xFejlxYk0yYUVnbXlFTFlK?=
 =?utf-8?B?dnQvdkdVM2UzOElvU0dqaFVwbzVjaHJnWlUrcHBFdGtqWVVKb2U1YWhSMnRW?=
 =?utf-8?Q?/Uz+wM6NFbRAsgbV9a/sSKJ5h?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 420d89f6-ed57-4233-8a5d-08db6d1dab87
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 21:24:00.3747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6t5spKDXw2UL35FVaofKjPQVAGOWFX724u2uXQq5K6m1L31dX9f/OYHjAlPS9GFNNT5WTK/IMNzH6yN4lTza+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7163
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jk4cb+FZZeoD1aaaJXm+rA/GOgZHxuS9BLWh6KqD/3o=;
 b=Zbqlcv6ZqaSN++/zQ3o4AFLkfUScId4YPCLkZ0ewN3P1brl8V9A3Payi3vwJwz0xoIUvECM1jMoMyrlTX/391TEOigkCG3wwOlnTlwnuCoXhS3/SlpkPlNLCs9T0LD68jY1uzYAhD45a2X1s8N2t+hLD3WTpC08LZsG0hhVvMb0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=Zbqlcv6Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: Add driver
 support for firmware changes for LAG
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
> Add the defines, fields, and detection code for FW support of LAG for
> SRIOV.  Also exposes some previously static functions to allow access
> in the lag code.
> 
> Clean up code that is unused or not needed for LAG support.  Also add
> an ordered workqueue for processing LAG events.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |  5 ++
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++
>   drivers/net/ethernet/intel/ice/ice_common.c   |  8 +++
>   drivers/net/ethernet/intel/ice/ice_lag.c      | 53 ++++++++++---------
>   drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
>   drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
>   drivers/net/ethernet/intel/ice/ice_main.c     | 12 +++++
>   drivers/net/ethernet/intel/ice/ice_type.h     |  2 +
>   8 files changed, 59 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 9109006336f0..5ac0ad12f9f1 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -200,6 +200,8 @@ enum ice_feature {
>          ICE_F_PTP_EXTTS,
>          ICE_F_SMA_CTRL,
>          ICE_F_GNSS,
> +       ICE_F_ROCE_LAG,
> +       ICE_F_SRIOV_LAG,
>          ICE_F_MAX
>   };
> 
> @@ -569,6 +571,7 @@ struct ice_pf {
>          struct mutex sw_mutex;          /* lock for protecting VSI alloc flow */
>          struct mutex tc_mutex;          /* lock to protect TC changes */
>          struct mutex adev_mutex;        /* lock to protect aux device access */
> +       struct mutex lag_mutex;         /* protect ice_lag struct in PF */
>          u32 msg_enable;
>          struct ice_ptp ptp;
>          struct gnss_serial *gnss_serial;
> @@ -639,6 +642,8 @@ struct ice_pf {
>          struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
>   };
> 
> +extern struct workqueue_struct *ice_lag_wq;
> +
>   struct ice_netdev_priv {
>          struct ice_vsi *vsi;
>          struct ice_repr *repr;
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 6ea0d4c017f0..6b5ba9a02bad 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -120,6 +120,9 @@ struct ice_aqc_list_caps_elem {
>   #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE              0x0076
>   #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT                0x0077
>   #define ICE_AQC_CAPS_NVM_MGMT                          0x0080
> +#define ICE_AQC_CAPS_FW_LAG_SUPPORT                    0x0092
> +#define ICE_AQC_BIT_ROCEV2_LAG                         0x01
> +#define ICE_AQC_BIT_SRIOV_LAG                          0x02
> 
>          u8 major_ver;
>          u8 minor_ver;
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 09e2e38d538e..6ddf607d2edf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2241,6 +2241,14 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
>                            "%s: reset_restrict_support = %d\n", prefix,
>                            caps->reset_restrict_support);
>                  break;
> +       case ICE_AQC_CAPS_FW_LAG_SUPPORT:
> +               caps->roce_lag = !!(number & ICE_AQC_BIT_ROCEV2_LAG);
> +               ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag = %u\n",
> +                         prefix, caps->roce_lag);
> +               caps->sriov_lag = !!(number & ICE_AQC_BIT_SRIOV_LAG);
> +               ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
> +                         prefix, caps->sriov_lag);
> +               break;
>          default:
>                  /* Not one of the recognized common capabilities */
>                  found = false;
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 5a7753bda324..73bfc5cd8b37 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -4,8 +4,12 @@
>   /* Link Aggregation code */
> 
>   #include "ice.h"
> +#include "ice_lib.h"
>   #include "ice_lag.h"
> 
> +#define ICE_LAG_RES_SHARED     BIT(14)
> +#define ICE_LAG_RES_VALID      BIT(15)
> +
>   /**
>    * ice_lag_set_primary - set PF LAG state as Primary
>    * @lag: LAG info struct
> @@ -225,6 +229,26 @@ static void ice_lag_unregister(struct ice_lag *lag, struct net_device *netdev)
>          lag->role = ICE_LAG_NONE;
>   }
> 
> +/**
> + * ice_lag_check_nvm_support - Check for NVM support for LAG
> + * @pf: PF struct
> + */
> +static void ice_lag_check_nvm_support(struct ice_pf *pf)

Nit, but this name is a bit misleading to me. I would expect it to be 
called something like "ice_lag_init_feature_support_flag()" or something 
similar that better describes what the function is doing.

> +{
> +       struct ice_hw_dev_caps *caps;
> +
> +       caps = &pf->hw.dev_caps;

Nit, but since you are already creating a local variable you could go 
one level further to the common_cap, so it could be:

common_cap->roce_lag and common_cap->sriov_lag

> +       if (caps->common_cap.roce_lag)
> +               ice_set_feature_support(pf, ICE_F_ROCE_LAG);
> +       else
> +               ice_clear_feature_support(pf, ICE_F_ROCE_LAG);
> +
> +       if (caps->common_cap.sriov_lag)
> +               ice_set_feature_support(pf, ICE_F_SRIOV_LAG);
> +       else
> +               ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
> +}
> +

[...]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
