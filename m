Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5E7841178
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 19:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CB5082BF5;
	Mon, 29 Jan 2024 18:00:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CB5082BF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706551228;
	bh=4p6O6svSyHxb7Pa6Y60gH8QJAo7Ms0cHXAesod1ZZDg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DA23m7fXuJGYUks9PeE61Hq7JyspPtvHU970UNQr7VP5dueEDEZXxEIm1cgarNCZ7
	 IFrSblxgOIbjmYofWc8yWJtkCVBOhdWYUypdpYYKHt27j7hp02LaHA9OUE+KKSwfBP
	 HXhkuFPwHImUUNEWLWEjVs7+wy/V6g6mB8+3XWCWpmFJMm4aXT5WcM2W0kvoJs2bda
	 OPXXSHtCohnO9FWxD/M2XonjYpD9KnCFcN5xJeQ8gHCgnvGBkeUQ24bF8/qVTpzk65
	 +N5wRvTKOYvjqJ6kugOwyAl1yKLrzE3WfzXGP2v7v0tYfsrc2C1ML29B2grURCZDm3
	 niKuexu7sSOBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-iv4B3DDOVB; Mon, 29 Jan 2024 18:00:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7B8882BD6;
	Mon, 29 Jan 2024 18:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7B8882BD6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F81A1BF859
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 18:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCFF882AC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 18:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCFF882AC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CLZ8qOupxiLc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 18:00:21 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2071.outbound.protection.outlook.com [40.107.101.71])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 772B581E97
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 18:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 772B581E97
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B/fAI5jyc/ErRZ/fYZlNYRbo6kXZznTRM5qsv5rxMyTU6yKSl543HBF2Tz3VRNmMQybm2A0cUFVBbAymVeS0PD6Fn5cR7aVcHYqpXLNzpUvLySg+dr13tg+ivejIK7XFcRNaYNWq3cnAV43nufvUdWCKgiFH73aFcFDhjbUhJJXZlGQhY/hvM/vvquvTi55VKl8xHH1XRw59i77z13Aavre57FPjpmnLCJmlGUcwodFmmsXH3iPxmR1JabzzV6p8Hl4SWAx213gRmYSlQ7eL9tHZv+r4pQVbqMsHhJAauhb/KHlan3vZ7Q3QdgtTX385MM9Cnn6dk21r5LzBxtNRKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4p6O6svSyHxb7Pa6Y60gH8QJAo7Ms0cHXAesod1ZZDg=;
 b=WrL/37Lu7iuKRdCuc6o0A9fyt2qed3nqj4VcSpQ0In5Cc3uyUKL9p3yuaTEr1gJ7DR6aeVBP+++xovaKD2KKmG7CD6jvTQtWXU8aVZ1ZzgQtNNTiaXZAZncXXJ49wzSerj1LCD/B+kdRXrGgyPwzT0S8t9EL0ZvXyxrBbiaCnXDnDOazum4Cp4ULBF/dYzUkSJJBD5X8HwwXEcTe1Ep4fd9gN8BJ1qHNXBVXXcboZVevWf9f7LRKYmSh5lRtwqT+W2O7lNf7BVo5KjPJvHYsaxeqPof7NuSEyqTp3OCTqyuaQAjhoOhrZGQPttpCU6DfreHJw1rET7ByX4FPB8Dp3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by DS0PR12MB8295.namprd12.prod.outlook.com (2603:10b6:8:f6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 18:00:19 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::e9c7:35dd:23f8:74a1]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::e9c7:35dd:23f8:74a1%4]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 18:00:18 +0000
Message-ID: <9f2e462d-e034-47e3-a2b5-6618faf1d470@amd.com>
Date: Mon, 29 Jan 2024 10:00:16 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240129123231.31136-1-wojciech.drewek@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240129123231.31136-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0027.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::32) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|DS0PR12MB8295:EE_
X-MS-Office365-Filtering-Correlation-Id: 8faf4429-f36d-44dd-8d52-08dc20f4273d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tqVKz1aB/hlpPVZjiVkQWn3vRdg5VhU1Ged3K6f1+7ZHV7sZ+YyILrspsUSywmTGwH50zir6XjNv7F/Vkb1C2cVgKrRgUgvRavmomSlIjJyA2kVC+Bet8ez9R1fOtMhJGEmFwKxxMEcraE6fx1QwU5YsNl2B3cvY/UG4GY6tepfOl+8v2OAfXf38zZU6CnaBqKfDFzuGjZkplhmF4LfrlwofSx7OmgqrSoA3QIU/+hLc7qFzwWrx/olhdtYB5Tw7XF+GdbIbHcgCXJw9GdNITkUJxcPoKzkThnw90lqv+Ew6G3dCaj/0Qyrhl99XObkwOu7DtcUUxuLabxsVVGu4UdmjRnlQv4dx0rQSmXtKwuP2G4lkYCa8nzxs3XaMa9ZPdWqtcOg+syO4cJHIif3ihzuKDWdGmIYFtfhOzBOmlvWnYAhf94Nn1WHq1Y3M5xoX1otkWYSV3ZRChDIIg/DvtEz7ndikfFRy4DxoP5gaDY/Bz499d7DvfCO3htJu3iHyUVKBkqb0H3qn0D5ZuNXhgp4hFSeSZmOcKlNYIDwca386ZuPRWd85CeC80F3lPiDD6Qf9YVYMn8s9rBfBcjeDVV42T5V7jpKGgtcJIL3EMoMNNHkmCidf9yZDNynZkk/5Pz02RVSjvGAqV/Xd3jaFJoflOQCAt1Dt14JMrJ1E6OO9s42O8rwDZwYPB9Uj0xtI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39860400002)(230922051799003)(230173577357003)(230273577357003)(451199024)(1800799012)(186009)(64100799003)(8936002)(316002)(66476007)(66556008)(66946007)(8676002)(4326008)(26005)(83380400001)(31686004)(478600001)(31696002)(38100700002)(5660300002)(2906002)(6486002)(2616005)(6512007)(53546011)(6506007)(36756003)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVE5QTJXRC9sbG5NSmJJd1RYckMxOUdOSzAwT1dkZStOUVVoWDE1Z21sVDV1?=
 =?utf-8?B?SVdrV3BtbHpoaVR4RlR2azBITURsK052blBMNUh6WjhpKy9ZbExQL2Q4cjlj?=
 =?utf-8?B?Ymd6WnJ0ZndCeWtjaWEzd2wwNlBZSkxUQ0lwODVQUithQy9wSUgwRGU3Y05v?=
 =?utf-8?B?NFFiUDRUNHZYS1RacXZWYmhpMm1OYmZRWDg2U1ZndC9qZjlZQ0dFWXZxd0tP?=
 =?utf-8?B?K0I2TEJvUnZpM3g0M0tQenhCNzZNWHdQK1BaeWRDSWxYd09KazRhc1QxVytu?=
 =?utf-8?B?Ulh2MU44dzI2OXhzQnRpYlhJbmhUSzQwTHZFeWZIcWVQYXpKNHMyQm5YUVk3?=
 =?utf-8?B?ckZGb3J2YXA4cW9NalJFMy9HNE5qVUYzMVZBaE9kL0NsZVdrRTlwampiNHFX?=
 =?utf-8?B?ZnZibUhIVVp2TWErSVJnWW1wQlVHbEdnanRmZndlaWIrK3hwMFdvU2R0TEN5?=
 =?utf-8?B?NWQvbWptbVIvMGQ4RGtDTUZNZVFidTV3c2RudGRINXhsaW9KakIzOVVwVG1Q?=
 =?utf-8?B?MkVzcGR0cSt4alUwSGtWR1Q3MG5wUkRWb3U0Z3VvZjA4K2J5M0JyOTY1R0JL?=
 =?utf-8?B?b3gyN2s1bnp5T3MrNUkxSTExUHdVTlpudS9pQ3BmZDVjTVN0a0pHZWlhM2tx?=
 =?utf-8?B?cGxuUG5Ma3VkVWhlT29mOEVna3QvOEI5QThGbytGUkR0WkhKYW1Qc3Z2MjNs?=
 =?utf-8?B?UUp2RE9tM0pGVklkOEd6dWZhK3Z0WVRvZ01mSlJEdkFFZ2Z3UWRsT3k0ZEpT?=
 =?utf-8?B?MkwvcEI3MFJpS2Rqc3VHZWwrSnZrOWordnBFK05CQ3VEQlBqV3dSVDhrUVBU?=
 =?utf-8?B?V2Q2VXdJNUZ0UUs1Rk9LRmFFak9ibGxvdjRrMkg3aGU3RzYrNHVqMU9DS251?=
 =?utf-8?B?UjhYUnVLVnhoV05YdlRIR2hEdVZJamU2TEdJZjdoTTEzcXlOMlFXOG9iZGho?=
 =?utf-8?B?dkc3bWRUUk9HdTFpQloyWHY3dHZjVk5WdS90aTh2MlZ6RXltWEdYMEJ2enBC?=
 =?utf-8?B?T1ZHSTllbHdtbVVYZHBrbFcrRndvRnd5Y1pqOUVUNGZtcjltOVc5eE01Zk8v?=
 =?utf-8?B?SmQ1ek1BUkhVc0JPNnJ4ZTBhMmphNDI0eDNlTVlRc1J0T3hQejMybGFrQVZI?=
 =?utf-8?B?NStnQ1BJK081VWJUeGJmaU1QaW1WRmRZT3ZmYUNqMVBOeFRPZENESDYrTUd3?=
 =?utf-8?B?WklHZEZPUjJpSDJGa3RmaTlpc3ovTnduM2dNNmtiYjV3L0hmYThkc3Z4bDBM?=
 =?utf-8?B?cmJlajkxTXZoQ1lBQlNjQUZGUXM3TVA5ZUttOGl2MFBISng0aklQY3VMWW42?=
 =?utf-8?B?WUExMm9qS2pDR3VRa2tjclF5ZVUyOFlWbUlrTUdVQ1hCeEl3ajlCVUhYa0c2?=
 =?utf-8?B?UmtLNktmakNJNVVYUm1VQTNqTStnVGJ3VVl6U3EwL1Q4ZGlzdm1sTVc3TmtV?=
 =?utf-8?B?Vy9QLzQvY2FWdmhiSlg0S3Q1dHBza1krbjVEcGFCdmNYeDFROVJKSURwdEJx?=
 =?utf-8?B?V1BUUnhZU0xVYnRHdGtZajlVWkFhZVdEUnM3Z2FsTHM3UFpyRnVkbyt2U1h6?=
 =?utf-8?B?Q1VLOXNHM0VJY0xGazF1KzI4T1JHbGFkcXNITG1vZ1lFSGl1S3QzcmRJUE9R?=
 =?utf-8?B?dSsxWHZLQU0rcHFVRU1lYjRrK3JtUmN3S29kQURqam5ZMmp4cW5DQks3N28v?=
 =?utf-8?B?MU1QS1dlTUg2VHhLOFZtcVZtWlAzTVUvLzJFalhhbVBrWk84S0R1OTBtVUNB?=
 =?utf-8?B?QWpGYm5ZTVJhV2hyYUpkeGhWb0NROFVZWFVQZ29MeG9XWU02NDYwUlRpL1NQ?=
 =?utf-8?B?L1NCN3VSNFFDQlA5WUZMSXVpckhaMFBFNGVkdzJPRnRobExFV3BlalJzNEgz?=
 =?utf-8?B?WTVaRC9oZVA0RzhZNnlZNXA1S3JCL3FwMG1Ncy9KLzFOdnc1RzZsVTk4UXhV?=
 =?utf-8?B?UGNkWnJudjV5L0FYeDBJc3hkeUJ4YjA4dzUxa01hN05Xb0o5VFpNc3pOR3lX?=
 =?utf-8?B?SGQ5MXRvaEZ4TGJTRWplSTB5QnIxdTZmK0RqalZGemVuNi85S01WbkxtVzNJ?=
 =?utf-8?B?UUMzcjU3T01KVEg5TTUyR05DSzZxZ0VWR3dKc3VkU3duTktDaWsvcC9GSk55?=
 =?utf-8?Q?WEWuKvLHGy9vfWYp6I4IzR/Rx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8faf4429-f36d-44dd-8d52-08dc20f4273d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 18:00:18.3498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jzbFvHvHKgyYNG7oHJN30LvfbqEBfHl0uZk50DdyKnViP7Wxt0vcchZ5yCkhN/eu+gtPR4k/WfHaENRNqewXNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8295
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4p6O6svSyHxb7Pa6Y60gH8QJAo7Ms0cHXAesod1ZZDg=;
 b=4NXaR1kW06ov4GeswYjKqnDiA2PLwXFbXiCusLykyh+A1QJhcjX08xT3dKJ+g5KCu1ZJ+e6qb1B9CU7Z5/u66VYb8E/9dTGJd5mWg4LoWgJTLaPS7xI7/+C39DgNuQIoRwHBbqJqfF8U0vcaU9I2/1fylRNeRIb4JEB81jDGai0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=4NXaR1kW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Remove and readd
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



On 1/29/2024 4:32 AM, Wojciech Drewek wrote:
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

Nit, but the function is no longer ice_debugfs_fwlog_deinit() as it 
changed from v2->v3.

Other than that, LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

> 
> Suggested-by: Jiri Pirko <jiri@nvidia.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: empty init removed in ice_devlink_reinit_up
> v3: refactor locking pattern as Brett suggested
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |   3 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>   drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>   5 files changed, 139 insertions(+), 133 deletions(-)

[...]
