Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D5D83E695
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jan 2024 00:20:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B85AE60B5C;
	Fri, 26 Jan 2024 23:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B85AE60B5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706311197;
	bh=0wEO3ELJf0b60XiwhOt5KymZ7n/EmSZe24oZSS1J8ic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RMREHB74+dMI55sLFPXR6xaxXSlsyIRbn7sgUiwLEl7o1xAovmYpxXY5+oGbnpJkU
	 KtMR7S5dQ9KCE/DzR9sAKcu1CiIuYgys4sY/9LNoBJllYhDXn5sdPZ9MJwR6L9y4Uj
	 SlBc+LbbkZhOvsL0xd//zomrpefiSpXwY12oZXkUEectGybGl9a1I5AF8g1xJwYYW5
	 zis0XZKkztaGqf3mUGAUVQW93vg2eUckhgV8DCF1j1XOn+6XzQHVs1bWSfmZPy0JVK
	 z1LXed7QHl5tYD7zwlRZkNZT6LYU4zdqhNNFP/0FR5BC4+ueVf66bmAIhWn9TdR8p9
	 5Q6itZ45pRSSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Si8kBq_fo0i8; Fri, 26 Jan 2024 23:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCD5560ADE;
	Fri, 26 Jan 2024 23:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCD5560ADE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEF031BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 23:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53B0160ADE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 23:19:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53B0160ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ihQYb6Wj1_g for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 23:19:49 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2043.outbound.protection.outlook.com [40.107.93.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC45360AD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 23:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC45360AD1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aef79btP+mtj2xr+j3eWve1V4oGRV2EVMHROU0RPSHW79P+LURzInxMqG1OA3DeUi03QkuWC5YfMOLOkY1bA37gIbILYO8GBennHUP0IeWnSsgAQEKqBcOaiIC6qz2MBqBPygGi8zAzf3C9DG1fpZcafap4HB+693lt1gnOKhaC1vSJAlSAIuwIvbNdvQFij+u/KIfZ6F5P8+HT7SxH478SMAD7YOE+Q6pBRHyN6iMu4g+b2OeqPXBfKrblUM5tKyF+IwYhyGXadDoHKx41rtZtduRSyoj4/ByOZVyVzJAfnb6spBLrPunGISVi9xjyNhJh2RXm155kMP+77QDSvUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wEO3ELJf0b60XiwhOt5KymZ7n/EmSZe24oZSS1J8ic=;
 b=M/k+z6U/4rjK1q7fD4EOvErU9VEyaorQ01LqqqZosMTeN29bdMka5pELeq2OWIzsEAiVpMDWREdJybvNP7sCO/6DJ3p1Vp2pdNpCcVC0lYR7tMrqdG86GeQGBHrA32pisNpZH6DKIArbTIQO09dbfurmn7k9S2ySlQWt29KZ9+aV40IjLulPcE/2y5Jx5/cW7turoXsvbLczuKz9uZCjkkezNtMcz6XCeUm1AGSgp6Si7HXLpavPF4YisOOeF/+vg8dTnQAvpKmzLfUsh+uafkOFDuiQ2kOhZjVn3OPQtpqiAzMkG1WCm4c8RnuGNHRreZXhmQY4ZCG6dFNN6A3F6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by MN2PR12MB4518.namprd12.prod.outlook.com (2603:10b6:208:266::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Fri, 26 Jan
 2024 23:19:46 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::e9c7:35dd:23f8:74a1]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::e9c7:35dd:23f8:74a1%4]) with mapi id 15.20.7228.026; Fri, 26 Jan 2024
 23:19:45 +0000
Message-ID: <cab0ec40-0e16-455e-b1eb-5699aa5f10df@amd.com>
Date: Fri, 26 Jan 2024 15:19:43 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240125085459.13096-1-wojciech.drewek@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240125085459.13096-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0109.namprd05.prod.outlook.com
 (2603:10b6:a03:334::24) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|MN2PR12MB4518:EE_
X-MS-Office365-Filtering-Correlation-Id: 06d68e58-467f-424b-7c33-08dc1ec5487f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AJTTZYWWY2aaVw4YDxgvTeofwZbtOGb5EFuRUUVvLlAq5/OQVveSjk0SEPTorRtK9aEriYen49HnPyQ1oKbilYRQ/EAb9MG14ZhkFyuv/4I0qHdN9DMg+FfrdZmtGn9DI42krr4MoTLXCSiohaFkO70G0ZruCptOW0Pk32S/ZVnKawLALhbPBBhOxEJ9STifHUQ3qE8l0nZm1pXWL74kQeh4nxG2yLmJHt78ueV4tYUbBre/qgXCc1kj5CF26zUGdEGqNdkfnFJJR1ov7uy9gun6Fxfa53pcHgsZZ6WQE8EYwGO+BcDQqREe/OVsFzRPEZVvdVElFLFPFgvMFG6HSFdB9e/oMmK9BnBXimBIMzTEi/aYMavqBqWprHXl2pbWoude//iVF6jZFj30mGnJFoMlZBc1I86KOkcOOvUyGP4u3pprqo0J9cncP3rCSU/0Nvvh3W2zRUPtOYDjIT8U+ckuxu4Rc0sNRoYGaH/tKyvxWl8F3lRIVHVVNmC2Od938VbxsemlSzMmfcM7TOhUIRaXgFadYF7j0CphIN1VxQrhVVAdbmjHsQzxF/qdeY+vGiutqQWqMMt5E6kIc/BNqLk23aZe0/YDPCE7ChxE5k1PoPcK4EPUAfGjPriV+HWE7kNNtTWyFSyriyS3gtAdvEN/JVBIGWFy38qsK8UayN0sYFLy6hz6CU0rJ9v+b8UB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(39860400002)(366004)(396003)(230922051799003)(230273577357003)(230173577357003)(1800799012)(186009)(451199024)(64100799003)(6512007)(8676002)(4326008)(36756003)(6506007)(83380400001)(53546011)(2906002)(8936002)(30864003)(5660300002)(26005)(2616005)(31696002)(41300700001)(478600001)(6486002)(66946007)(316002)(66556008)(66476007)(31686004)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEc3Z3FwcVN3SVJhanlhR0FmcHNqMjhNQ2J6Q3Nmd2RSNWR5TEFaUmNONEJm?=
 =?utf-8?B?V2JILzlTb2ZKd3duVmhiMnYrcUZIQ1hHQTRrdmJ1TUVXNkFwZGN4OEp2aTYv?=
 =?utf-8?B?U0k1V3prakxVdnYvU1VQd2NnaEQxNEFUNG40TXhsV0lOQ0NZQndDUkNrOVpr?=
 =?utf-8?B?U24yMDA4aHA2dzZYSWxCSk41eTJPZEg0TlF5WHA5M3VpT2lyNUNqWTJwM2JO?=
 =?utf-8?B?bjA5UGx1ODgrWTdDZEtHRUdKLzdzdnFMWlRBT050anNDeC9OQkZCZUdGclBa?=
 =?utf-8?B?TWNSM3hhWEFnbTNibjRSRDJjNDBNRGMyTmNFWFEyOGtsREIxSHZlOVJTTTFy?=
 =?utf-8?B?c3hzRmc0b2JEMUdPd2F3Z1pDdjRiWUZVY3NEYkpxbjdrR3hZYTRLNTNwVnM5?=
 =?utf-8?B?WGE4Qkg3TnF6NG5jWDdYcnVvZ3d0c0VpZXB4aDBQeWNBL283OGJxZURMallk?=
 =?utf-8?B?R0JrUmE4eTFncEJBWkl2WmdEeVNiUmlsSHovRmFBZ2g0NVJYenI1L2VSRURu?=
 =?utf-8?B?SHNDRGVYZGdRc3hIZ2gwb21ka3ZSdEZuUzZjeTlxaXR5VENhOXdIVURUNDBI?=
 =?utf-8?B?d2NMdXZ4cEc1RUNqUXhCcXVTQnJVMFdTUUdxdzAxdERWQkcrUm9NSnZmZXhN?=
 =?utf-8?B?Q0NDdW9qQUpzWFFwL1oyYitsZGd1S0N0RnRxOWVFalFtYWYvWGFRcmdrTklI?=
 =?utf-8?B?bmJiS3pjdUs3aWJFdFR1bTg5OTNqMjd0NG1FZUsvMUtMQ1JsREJOU1lDTzJJ?=
 =?utf-8?B?YUhlUmFYQUxJTWhNYXl5NDRpVk16ZkZ1dGlCYy84K0NsZnh0UFc5bDlQVDlR?=
 =?utf-8?B?OWpWZndwVGFvYkExWkp6dm1Ld3ozUkJkZEx6T0RhQ3ZxTktpaHJrcWZVK00r?=
 =?utf-8?B?MHN5bjR2ZGhwY0RnMW1OVncwRjRUQ3BSajJYWGh4RnJ4bXVtaVlFZkZMNFNF?=
 =?utf-8?B?T3p1NVJhTE9uRlVhRWN4c1JCenNheHI1OW16OG96K2t1ZTVUQWZYZkJkOGlw?=
 =?utf-8?B?dHJUUVVKVnhNa2hmQWluNXpITm1RNVdvc3h0MDYreEJQL3Rlakl2VURCYVlS?=
 =?utf-8?B?T3hjMmVybitYeDdTYkc2VjJMYXZPOXdIVUVHTlpxVkZZbGJ6Slo1Q0w5M0pK?=
 =?utf-8?B?ZVgxR1JnRlRGcUltNS93QXN2Z2owekVTYmV0MW1YZ1I4VFB1WkxGaEw2UDh4?=
 =?utf-8?B?ZFJ6T09MUklZS0RRUlBrWHRKODQxVkhhQWZ0dmtCcFRjSEJEK3UwdmgwV2Ry?=
 =?utf-8?B?NVY0ekN2alhDRVJRc1NjeXdUeWNwcTRjeC8yWFE4UGxDSm1DeXNQLzRDODE5?=
 =?utf-8?B?dDQ2eVlobzBNWGZsby9DVXdRUUs3R1hxUmMzTDRRWUJsTm1WT0dUeEgwUE1u?=
 =?utf-8?B?ak1aWktoaHNBdXh2Z1pLa285K2xBK2kzWjdVUUJMQzdWakU3UnFCditXRzly?=
 =?utf-8?B?QzZFZGVjMnpneXNhRmxjOEdpNnVUd3VGWnV2ZW9qdG1XNUhNMlRaVjkzazRa?=
 =?utf-8?B?YnRRZEM4eHp5eE0wQ2o3b01kdndoVmJ6bmpaYkhHQ2xKV0Q2R2o0WTgraFlY?=
 =?utf-8?B?a29Vc1VzTVpuNWVoRG9ncHh3N3Juell4bEFNZ2c0KzJDSkNpeEo0eW01MUdD?=
 =?utf-8?B?N2cxZDNuRU8ramRqTncrL0N2cEJoUU1waFpQZUpxOENqenN4aEtieGVwaHN3?=
 =?utf-8?B?RUdNeEFpakFDanpmbE9RVi9lTmJuVWNBSXIrWFFZZnliRFFzMElxRWlCTUs3?=
 =?utf-8?B?TXB2cVRBT1JjMWhOcjhZTTZWVmtqRFRWQUp1bVEvMU9OVEdHMHRmdFl2Unpp?=
 =?utf-8?B?YXhwTm5XbndKeHUvZlZCcFRkY2hqRzB3anJYK29tZGlKN29qMDA4czBDVEMz?=
 =?utf-8?B?QzdYK2Z1QlhQL3FGbUtpRURxV21WSXlzT01sM3BXM2ZKWEtaNEtNR1pzcWxk?=
 =?utf-8?B?TlNCbkhNOW9neCtkY1ZFRG9JQlJnMjQ3bVRzTTEwTVFNdkFrcjVxa2hZejFL?=
 =?utf-8?B?czZLMXliclFKeEVZc29MK3hJM1pHem5IOGh2OWJEMnVqZUR4ZzdHQWFHak1B?=
 =?utf-8?B?SUNkaFM0ODMrT0JMUDRWdDAvTzVnR25ibGk5bnlha3RsUzlLQ2JNUFR6aFBM?=
 =?utf-8?Q?tqnDJPymR73BW2YYahC83/uJc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d68e58-467f-424b-7c33-08dc1ec5487f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 23:19:45.4824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hHVlt3D8oQeEhyavxN9Uc4PIhbDvSdQcinjea9aR8ejrfVmcdxib0YShpsWP8nQz6TZSUw5OxoqWSnBTCiusXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4518
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wEO3ELJf0b60XiwhOt5KymZ7n/EmSZe24oZSS1J8ic=;
 b=EOWdeoRTykJnU0sNSQIcxkdBBp+fTR+hhbTrDImXsGp73l9cvB+hIg+Hm1Z+R+97IlXmnPjJ0acEpQmph0mRNfNuCpK8vgN/SxNqh7R1duyn2cUl9ClR7rTobQ3vz13Lqiat7/1jwjLWLkTEGq7CrS4fWaZf9rvOgV9ymSSXbek=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=EOWdeoRT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove and readd
 netdev during devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us, vadim.fedorenko@linux.dev,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/25/2024 12:54 AM, Wojciech Drewek wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Recent changes to the devlink reload (commit 9b2348e2d6c9
> ("devlink: warn about existing entities during reload-reinit"))
> force the drivers to destroy devlink ports during reinit.
> Adjust ice driver to this requirement, unregister netdvice, destroy
> devlink port. ice_init_eth() was removed and all the common code
> between probe and reload was moved to ice_load().
> 
> During devlink reload we can't take devl_lock (it's already taken)
> and in ice_probe() we have to lock it. Use devl_* variant of the API
> which does not acquire and release devl_lock. Guard ice_load()
> with devl_lock only in case of probe.
> 
> Introduce ice_debugfs_fwlog_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
> 
> Suggested-by: Jiri Pirko <jiri@nvidia.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: empty init removed in ice_devlink_reinit_up
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |   3 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>   drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>   5 files changed, 139 insertions(+), 133 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index e841f6c4f1c4..39734e5b9d56 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -897,6 +897,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
>   }
> 
>   void ice_debugfs_fwlog_init(struct ice_pf *pf);
> +void ice_debugfs_fwlog_deinit(struct ice_pf *pf);
>   void ice_debugfs_init(void);
>   void ice_debugfs_exit(void);
>   void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
> @@ -984,6 +985,8 @@ void ice_service_task_schedule(struct ice_pf *pf);
>   int ice_load(struct ice_pf *pf);
>   void ice_unload(struct ice_pf *pf);
>   void ice_adv_lnk_speed_maps_init(void);
> +int ice_init_dev(struct ice_pf *pf);
> +void ice_deinit_dev(struct ice_pf *pf);
> 
>   /**
>    * ice_set_rdma_cap - enable RDMA support
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index c2bfba6b9ead..8fdcdfb804b3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -647,6 +647,16 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>          kfree(fw_modules);
>   }
> 
> +/**
> + * ice_debugfs_fwlog_deinit - cleanup PF's debugfs
> + * @pf: pointer to the PF struct
> + */
> +void ice_debugfs_fwlog_deinit(struct ice_pf *pf)
> +{
> +       debugfs_remove_recursive(pf->ice_debugfs_pf);
> +       pf->ice_debugfs_pf = NULL;
> +}

This function seems misleading to me. The ice_pf structure has the 
following debugfs dentry pointers:

struct dentry *ice_debugfs_pf;
struct dentry *ice_debugfs_pf_fwlog;
struct dentry *ice_debugfs_pf_fwlog_modules;

The function name is ice_debugfs_fwlog_deinit(), however it seems you 
are removing debugfs entries recursively from ice_debugfs_pf.

Maybe the function should be called:

ice_debugfs_deinit()?

Also, I know your commit didn't introduce the naming scheme for the 
debugfs members in struct ice_pf, but it's a bit strange having "ice" or 
"pf" in their name. It might be worth a follow up to fix these names to 
something like the following:

struct dentry *debugfs;
struct dentry *debugfs_fwlog;
struct dentry *debugfs_fwlog_modules;

Thanks,

Brett
> +
>   /**
>    * ice_debugfs_init - create root directory for debugfs entries
>    */
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 97182bacafa3..a428e24439d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -444,6 +444,20 @@ ice_devlink_reload_empr_start(struct ice_pf *pf,
>          return 0;
>   }
> 
> +/**
> + * ice_devlink_reinit_down - unload given PF
> + * @pf: pointer to the PF struct
> + */
> +static void ice_devlink_reinit_down(struct ice_pf *pf)
> +{
> +       /* No need to take devl_lock, it's already taken by devlink API */
> +       ice_unload(pf);
> +       rtnl_lock();
> +       ice_vsi_decfg(ice_get_main_vsi(pf));
> +       rtnl_unlock();
> +       ice_deinit_dev(pf);
> +}
> +
>   /**
>    * ice_devlink_reload_down - prepare for reload
>    * @devlink: pointer to the devlink instance to reload
> @@ -477,7 +491,7 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
>                                             "Remove all VFs before doing reinit\n");
>                          return -EOPNOTSUPP;
>                  }
> -               ice_unload(pf);
> +               ice_devlink_reinit_down(pf);
>                  return 0;
>          case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>                  return ice_devlink_reload_empr_start(pf, extack);
> @@ -1269,6 +1283,45 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
>          return status;
>   }
> 
> +/**
> + * ice_devlink_reinit_up - do reinit of the given PF
> + * @pf: pointer to the PF struct
> + */
> +static int ice_devlink_reinit_up(struct ice_pf *pf)
> +{
> +       struct ice_vsi *vsi = ice_get_main_vsi(pf);
> +       struct ice_vsi_cfg_params params;
> +       int err;
> +
> +       err = ice_init_dev(pf);
> +       if (err)
> +               return err;
> +
> +       params = ice_vsi_to_params(vsi);
> +       params.flags = ICE_VSI_FLAG_INIT;
> +
> +       rtnl_lock();
> +       err = ice_vsi_cfg(vsi, &params);
> +       if (err)
> +               goto err_vsi_cfg;
> +       rtnl_unlock();

Maybe just personal opinion, but this locking seems a bit confusing to 
me. I think it might be more readable as:

rtnl_lock();
err = ice_vsi_cfg(vsi, &params);
rtnl_unlock();
if (err)
	goto err_vsi_cfg;

Then below...
> +
> +       /* No need to take devl_lock, it's already taken by devlink API */
> +       err = ice_load(pf);
> +       if (err)
> +               goto err_load;
> +
> +       return 0;
> +
> +err_load:
> +       rtnl_lock();
> +       ice_vsi_decfg(vsi);
> +err_vsi_cfg:
> +       rtnl_unlock();
> +       ice_deinit_dev(pf);
> +       return err;

err_load:
	rtnl_lock();
	ice_vsi_decfg(vsi);
	rtnl_unlock();
err_vsi_cfg:
	ice_deinit_dev(pf);
	return err;
> +}
> +
>   /**
>    * ice_devlink_reload_up - do reload up after reinit
>    * @devlink: pointer to the devlink instance reloading
> @@ -1289,7 +1342,7 @@ ice_devlink_reload_up(struct devlink *devlink,
>          switch (action) {
>          case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
>                  *actions_performed = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT);
> -               return ice_load(pf);
> +               return ice_devlink_reinit_up(pf);
>          case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>                  *actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
>                  return ice_devlink_reload_empr_finish(pf, extack);
> @@ -1695,6 +1748,7 @@ static const struct devlink_port_ops ice_devlink_port_ops = {
>    * @pf: the PF to create a devlink port for
>    *
>    * Create and register a devlink_port for this PF.
> + * This function has to be called under devl_lock.
>    *
>    * Return: zero on success or an error code on failure.
>    */
> @@ -1707,6 +1761,8 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
>          struct device *dev;
>          int err;
> 
> +       devlink = priv_to_devlink(pf);
> +
>          dev = ice_pf_to_dev(pf);
> 
>          devlink_port = &pf->devlink_port;
> @@ -1727,10 +1783,9 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
>          ice_devlink_set_switch_id(pf, &attrs.switch_id);
> 
>          devlink_port_attrs_set(devlink_port, &attrs);
> -       devlink = priv_to_devlink(pf);
> 
> -       err = devlink_port_register_with_ops(devlink, devlink_port, vsi->idx,
> -                                            &ice_devlink_port_ops);
> +       err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
> +                                         &ice_devlink_port_ops);
>          if (err) {
>                  dev_err(dev, "Failed to create devlink port for PF %d, error %d\n",
>                          pf->hw.pf_id, err);
> @@ -1745,10 +1800,11 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
>    * @pf: the PF to cleanup
>    *
>    * Unregisters the devlink_port structure associated with this PF.
> + * This function has to be called under devl_lock.
>    */
>   void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>   {
> -       devlink_port_unregister(&pf->devlink_port);
> +       devl_port_unregister(&pf->devlink_port);
>   }
> 
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index 92b5dac481cd..b2acfa05f118 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -188,6 +188,8 @@ void ice_fwlog_deinit(struct ice_hw *hw)
>          if (hw->bus.func)
>                  return;
> 
> +       ice_debugfs_fwlog_deinit(hw->back);
> +
>          /* make sure FW logging is disabled to not put the FW in a weird state
>           * for the next driver load
>           */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 77ba737a50df..5f9b616b90dc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4574,90 +4574,6 @@ static void ice_decfg_netdev(struct ice_vsi *vsi)
>          vsi->netdev = NULL;
>   }
> 
> -static int ice_start_eth(struct ice_vsi *vsi)
> -{
> -       int err;
> -
> -       err = ice_init_mac_fltr(vsi->back);
> -       if (err)
> -               return err;
> -
> -       err = ice_vsi_open(vsi);
> -       if (err)
> -               ice_fltr_remove_all(vsi);
> -
> -       return err;
> -}
> -
> -static void ice_stop_eth(struct ice_vsi *vsi)
> -{
> -       ice_fltr_remove_all(vsi);
> -       ice_vsi_close(vsi);
> -}
> -
> -static int ice_init_eth(struct ice_pf *pf)
> -{
> -       struct ice_vsi *vsi = ice_get_main_vsi(pf);
> -       int err;
> -
> -       if (!vsi)
> -               return -EINVAL;
> -
> -       /* init channel list */
> -       INIT_LIST_HEAD(&vsi->ch_list);
> -
> -       err = ice_cfg_netdev(vsi);
> -       if (err)
> -               return err;
> -       /* Setup DCB netlink interface */
> -       ice_dcbnl_setup(vsi);
> -
> -       err = ice_init_mac_fltr(pf);
> -       if (err)
> -               goto err_init_mac_fltr;
> -
> -       err = ice_devlink_create_pf_port(pf);
> -       if (err)
> -               goto err_devlink_create_pf_port;
> -
> -       SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
> -
> -       err = ice_register_netdev(vsi);
> -       if (err)
> -               goto err_register_netdev;
> -
> -       err = ice_tc_indir_block_register(vsi);
> -       if (err)
> -               goto err_tc_indir_block_register;
> -
> -       ice_napi_add(vsi);
> -
> -       return 0;
> -
> -err_tc_indir_block_register:
> -       ice_unregister_netdev(vsi);
> -err_register_netdev:
> -       ice_devlink_destroy_pf_port(pf);
> -err_devlink_create_pf_port:
> -err_init_mac_fltr:
> -       ice_decfg_netdev(vsi);
> -       return err;
> -}
> -
> -static void ice_deinit_eth(struct ice_pf *pf)
> -{
> -       struct ice_vsi *vsi = ice_get_main_vsi(pf);
> -
> -       if (!vsi)
> -               return;
> -
> -       ice_vsi_close(vsi);
> -       ice_unregister_netdev(vsi);
> -       ice_devlink_destroy_pf_port(pf);
> -       ice_tc_indir_block_unregister(vsi);
> -       ice_decfg_netdev(vsi);
> -}
> -
>   /**
>    * ice_wait_for_fw - wait for full FW readiness
>    * @hw: pointer to the hardware structure
> @@ -4683,7 +4599,7 @@ static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
>          return -ETIMEDOUT;
>   }
> 
> -static int ice_init_dev(struct ice_pf *pf)
> +int ice_init_dev(struct ice_pf *pf)
>   {
>          struct device *dev = ice_pf_to_dev(pf);
>          struct ice_hw *hw = &pf->hw;
> @@ -4776,7 +4692,7 @@ static int ice_init_dev(struct ice_pf *pf)
>          return err;
>   }
> 
> -static void ice_deinit_dev(struct ice_pf *pf)
> +void ice_deinit_dev(struct ice_pf *pf)
>   {
>          ice_free_irq_msix_misc(pf);
>          ice_deinit_pf(pf);
> @@ -5081,31 +4997,47 @@ static void ice_deinit(struct ice_pf *pf)
>   /**
>    * ice_load - load pf by init hw and starting VSI
>    * @pf: pointer to the pf instance
> + *
> + * This function has to be called under devl_lock.
>    */
>   int ice_load(struct ice_pf *pf)
>   {
> -       struct ice_vsi_cfg_params params = {};
>          struct ice_vsi *vsi;
>          int err;
> 
> -       err = ice_init_dev(pf);
> +       devl_assert_locked(priv_to_devlink(pf));
> +
> +       vsi = ice_get_main_vsi(pf);
> +
> +       /* init channel list */
> +       INIT_LIST_HEAD(&vsi->ch_list);
> +
> +       err = ice_cfg_netdev(vsi);
>          if (err)
>                  return err;
> 
> -       vsi = ice_get_main_vsi(pf);
> +       /* Setup DCB netlink interface */
> +       ice_dcbnl_setup(vsi);
> 
> -       params = ice_vsi_to_params(vsi);
> -       params.flags = ICE_VSI_FLAG_INIT;
> +       err = ice_init_mac_fltr(pf);
> +       if (err)
> +               goto err_init_mac_fltr;
> 
> -       rtnl_lock();
> -       err = ice_vsi_cfg(vsi, &params);
> +       err = ice_devlink_create_pf_port(pf);
>          if (err)
> -               goto err_vsi_cfg;
> +               goto err_devlink_create_pf_port;
> +
> +       SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
> 
> -       err = ice_start_eth(ice_get_main_vsi(pf));
> +       err = ice_register_netdev(vsi);
> +       if (err)
> +               goto err_register_netdev;
> +
> +       err = ice_tc_indir_block_register(vsi);
>          if (err)
> -               goto err_start_eth;
> -       rtnl_unlock();
> +               goto err_tc_indir_block_register;
> +
> +       ice_napi_add(vsi);
> 
>          err = ice_init_rdma(pf);
>          if (err)
> @@ -5119,29 +5051,35 @@ int ice_load(struct ice_pf *pf)
>          return 0;
> 
>   err_init_rdma:
> -       ice_vsi_close(ice_get_main_vsi(pf));
> -       rtnl_lock();
> -err_start_eth:
> -       ice_vsi_decfg(ice_get_main_vsi(pf));
> -err_vsi_cfg:
> -       rtnl_unlock();
> -       ice_deinit_dev(pf);
> +       ice_tc_indir_block_unregister(vsi);
> +err_tc_indir_block_register:
> +       ice_unregister_netdev(vsi);
> +err_register_netdev:
> +       ice_devlink_destroy_pf_port(pf);
> +err_devlink_create_pf_port:
> +err_init_mac_fltr:
> +       ice_decfg_netdev(vsi);
>          return err;
>   }
> 
>   /**
>    * ice_unload - unload pf by stopping VSI and deinit hw
>    * @pf: pointer to the pf instance
> + *
> + * This function has to be called under devl_lock.
>    */
>   void ice_unload(struct ice_pf *pf)
>   {
> +       struct ice_vsi *vsi = ice_get_main_vsi(pf);
> +
> +       devl_assert_locked(priv_to_devlink(pf));
> +
>          ice_deinit_features(pf);
>          ice_deinit_rdma(pf);
> -       rtnl_lock();
> -       ice_stop_eth(ice_get_main_vsi(pf));
> -       ice_vsi_decfg(ice_get_main_vsi(pf));
> -       rtnl_unlock();
> -       ice_deinit_dev(pf);
> +       ice_tc_indir_block_unregister(vsi);
> +       ice_unregister_netdev(vsi);
> +       ice_devlink_destroy_pf_port(pf);
> +       ice_decfg_netdev(vsi);
>   }
> 
>   /**
> @@ -5239,27 +5177,23 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>          if (err)
>                  goto err_init;
> 
> -       err = ice_init_eth(pf);
> +       devl_lock(priv_to_devlink(pf));
> +       err = ice_load(pf);
>          if (err)
> -               goto err_init_eth;
> -
> -       err = ice_init_rdma(pf);
> -       if (err)
> -               goto err_init_rdma;
> +               goto err_load;
> +       devl_unlock(priv_to_devlink(pf));
> 
>          err = ice_init_devlink(pf);
>          if (err)
>                  goto err_init_devlink;
> 
> -       ice_init_features(pf);
> -
>          return 0;
> 
>   err_init_devlink:
> -       ice_deinit_rdma(pf);
> -err_init_rdma:
> -       ice_deinit_eth(pf);
> -err_init_eth:
> +       devl_lock(priv_to_devlink(pf));
> +       ice_unload(pf);
> +err_load:
> +       devl_unlock(priv_to_devlink(pf));
>          ice_deinit(pf);
>   err_init:
>          pci_disable_device(pdev);
> @@ -5342,8 +5276,6 @@ static void ice_remove(struct pci_dev *pdev)
>                  msleep(100);
>          }
> 
> -       ice_debugfs_exit();
> -
>          if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>                  set_bit(ICE_VF_RESETS_DISABLED, pf->state);
>                  ice_free_vfs(pf);
> @@ -5357,12 +5289,14 @@ static void ice_remove(struct pci_dev *pdev)
> 
>          if (!ice_is_safe_mode(pf))
>                  ice_remove_arfs(pf);
> -       ice_deinit_features(pf);
> +
>          ice_deinit_devlink(pf);
> -       ice_deinit_rdma(pf);
> -       ice_deinit_eth(pf);
> -       ice_deinit(pf);
> 
> +       devl_lock(priv_to_devlink(pf));
> +       ice_unload(pf);
> +       devl_unlock(priv_to_devlink(pf));
> +
> +       ice_deinit(pf);
>          ice_vsi_release_all(pf);
> 
>          ice_setup_mc_magic_wake(pf);
> @@ -5847,6 +5781,7 @@ module_init(ice_module_init);
>   static void __exit ice_module_exit(void)
>   {
>          pci_unregister_driver(&ice_driver);
> +       ice_debugfs_exit();
>          destroy_workqueue(ice_wq);
>          destroy_workqueue(ice_lag_wq);
>          pr_info("module unloaded\n");
> --
> 2.40.1
> 
> 
