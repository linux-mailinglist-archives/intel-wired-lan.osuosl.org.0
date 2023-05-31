Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A2718DF5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 00:01:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7B44614C6;
	Wed, 31 May 2023 22:01:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7B44614C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685570486;
	bh=vATi4T4yeDWZqqL9hYgjLAlzDadVZ7dJMPpevaQ3K8E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aQsEP8RBqs1ug6g8crGtRHSsECabjWpSkqBi7LJXwGSgOKoQPuOCHv7m+b7Lved8x
	 F2PbCzjUfJZO1ezGDvYO3ekd366WiY2Th2KmIdtsibxAlj2cbqoZSpTyu8X+rbbbgU
	 aqKkA0Vya4uB035HOjqQCHap7ZOYb556mFe7Bw39mchIF47TZjg/f1O7QtkATT+N9J
	 oYbmK+0//Ol2GmKiZt0ct4uxnylnvUxhL5RxYv0LS8pBWopvYWRMxiJO3mpFafa+un
	 TIjCBsB6A3N1PLFhh9yERtoIbGN3qlLiAj5MVw76yG0FqCEVwS1Bt115vsacWTANiV
	 LxzyjmxkwgtkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4mBznozsH4m; Wed, 31 May 2023 22:01:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7048361492;
	Wed, 31 May 2023 22:01:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7048361492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B38871BF404
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 22:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AD6861492
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 22:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AD6861492
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSNgXogKGVa8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 22:01:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9907613E5
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2100.outbound.protection.outlook.com [40.107.220.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9907613E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 22:01:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqfpySo9wceC556s3JRSwBNJTY74lpH27qUVCC6bQ5IxwTSv1C+2F7Rd3yUPNnwzMtyId0P1xld9TYD6EJvaWgAg+oGLnpNH47Bin1eg3RBVXPZj9PwtVmKgeE4KFzy9mreM39v6FmoLBuPdqslX8LM1fUPiiY0wXXHwLwNpafHLXbiMqvDYyqhNUCX51EeqLTIXZIQYJpg1TVbZvy5gGXSqQWvqZxLSwpKcnk1LWG4abZNI1Ek7gJ2eDLPUgqQ5Cej+NpN+xGUXbiq0czka/JVwdBDuBCwse5QQXwpIFI4GljJHox/HvAd5X+1p5Kp6ZslUZ7MqDBIBm16P9KCR0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EAiNwAA6svvJiDLfKU1x5DD/KClJ2bHwYMPjbbGKD5w=;
 b=OyDeZyrR6xmAQ44Q7bOnpSD8TuB1VmB1pWtw4IGderrAoDJQEfI4ZPn0oo1FOyFU0G9BiwKr1Gqkp2CS10JAbmjbf3o8o/OwFkO3XVZvkJ6xA5CG0c9hq1v11kZJlP9CiGxmmKTzgU2/3eCWciOhpkwLSZVisLW/qpNUd8WFZyyTD1R3QVX6EJd2Mn1uou/Gkh49NQGM/ehjMpwo1VmTLbijlmhko+0MW0ZzpELJlbdzeGXP+d1pY/EL+l6VaJ2XYz2Aj0iSU688h9+qrNteWLmZLwuV0qK60Ra9ROWS6dHzgrPPYzZC+frZ3qtYD4hEpJ+WYil62yxb4YotJ0RH0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BN0PR13MB5214.namprd13.prod.outlook.com (2603:10b6:408:156::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 22:01:17 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6433.024; Wed, 31 May 2023
 22:01:17 +0000
Date: Thu, 1 Jun 2023 00:01:11 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Yuezhen Luan <eggcar.luan@gmail.com>
Message-ID: <ZHfDp21V3zy9kuE3@corigine.com>
References: <20230531090805.3959-1-eggcar.luan@gmail.com>
Content-Disposition: inline
In-Reply-To: <20230531090805.3959-1-eggcar.luan@gmail.com>
X-ClientProxiedBy: AM9P195CA0027.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:21f::32) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BN0PR13MB5214:EE_
X-MS-Office365-Filtering-Correlation-Id: 739b1169-852f-4cf4-4aa2-08db62228ef0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8nblcmxLaoAazcdRfMcZAN7lg1paHqmZDXAMVvwi992flRK4tvtYLXJtTepR8l3MtOFwzJd6TX2eRN9NKhtiYloc3PZG4pW6Qj4fiOA78PagPWh6D9ClBJahPMH/72uFS28vQQg8VFqFMGMsE09vqz5lPo+xsnD5mEAowKn0U3xrwqQRzRcfzsOv5/QEH/4KzyGfB24IHakWVvl4/PgwLv+DaiDZpXsRy1pua3JPZmyemds0idtK/zaOdwcF4KPhjW1I6riY7YxsV5eeUXaVksKbcvBwSmrzZ1VpYHtXIZ3LAmMTcgYfBNMkKM+KLpzTliz88EqXo0tSSZXDBMok4JO3TZGHwHrflcNv0TXEW5ny8uLkwCEs08/SmEFJmd7CW2W+xG1SrdvSh6w3Z+mv08bd+CguLbRwAit16iRLuzM0ifja+3htCMBq+FUlTGXhC9rCtInAjKwlUCjZdJ+O8aoaIXg8+MOwzoXXUwRIEjumPmwxO8+iBp6y5ys82cCT/WlKZTyKA6H9F8uh2hO2e4rzmX62eGY3NihMTR/vj8OtWxQ6uOIzrUGP/tKfSmr5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39840400004)(366004)(136003)(346002)(396003)(376002)(451199021)(38100700002)(4326008)(478600001)(66476007)(66556008)(66946007)(6916009)(6666004)(36756003)(41300700001)(316002)(86362001)(6506007)(6512007)(26005)(83380400001)(2616005)(186003)(6486002)(2906002)(7416002)(8936002)(8676002)(5660300002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0/ljMDulfNIoFy5cXdK4e73fiUihiyqfHAuxVLdvbmN3p0EZNIEnqZqJkmgV?=
 =?us-ascii?Q?SWdpFPTXGWML+BWi37cxUp1BiIgDgD7E/J33PcgcKrUp4ZHmz5BOLSW+cNzs?=
 =?us-ascii?Q?Y7NzZEO+5nSvIMinMHgQkMvPs2QvUw1kfqXF/GqcSTjxT5BeF6SCbpMULGI0?=
 =?us-ascii?Q?4iDz7o/pswolVzm2n/Ib2wFDO4A/dxKtywnpZP83tGfUISQ1K1l7TAV+5f5N?=
 =?us-ascii?Q?FhPZdVnHJxMNqo5BIZiXbb2ymMVPAQNsiCiHTuzOOHQoU9siTqXoIOdRzjsL?=
 =?us-ascii?Q?Cj57YVTDIANmGtj4tlFRg7R/YamjkTs6un/cvfUdUNcABj4cOzTMlm8Ppau4?=
 =?us-ascii?Q?hx8JAE2hd7qOiThDFe1sQSXpdCGs9UPvfA5HjG40hkbpfcJQhuC23LbO+ZOV?=
 =?us-ascii?Q?cmgal5zRwETtIeANMFt9iEJTqQngJWrQOE6pIddfonwp63bAcNb54oVDrjAB?=
 =?us-ascii?Q?UJ/THbZH+L8SDB8ZAexS6pryBqiRCQjconvm/R7rZgWobX+eSuZ1A4AwP01C?=
 =?us-ascii?Q?SBzgi34QPXGftk4YD9V/ReVdvmTCQ31zFJcV6J/myXKWrlfhBCZYpJjy5qsw?=
 =?us-ascii?Q?B/PKfV8Lg0dc6QChkyorrdKzYd/+uDg+oDmiuQ+kblEmZES1M1X0QJpB9XOY?=
 =?us-ascii?Q?GXfiw1Ec+xrsU2Ssz6hvcanRq21hghWU5JxNQu++JxALiWWgW8CSh3FiqMfg?=
 =?us-ascii?Q?cYplSKvfKTuolQJ5pbGKqhqT1oABh4p+DUTyGNIfPo2/jlFrwaaNj44p3jKp?=
 =?us-ascii?Q?baYm3QF/qHBildi3UdTmLXKB/fSk9fQgWH1p5AAjFXfpMwKIqcUE8yQ3dNLY?=
 =?us-ascii?Q?56ATUm226Kg3CKimv/yxWFRgVfrr0U6bwoy2lGDEzAa0lDsgHCEt97bwUyra?=
 =?us-ascii?Q?aGEyBgOMgGo7m+scBRVeh0P1+aIhD7MpnKRSLMCbNhqeZg3C/1rM7JcdUdSt?=
 =?us-ascii?Q?G1dtN3cMcW8z+JmvHFGn98oweaI4DG4UINlKouRf003d4fR/yK55Cz0k/AaD?=
 =?us-ascii?Q?LULbK51TCZnJ2nEGS7YQZn01TxNlyW3IUzz70vPyD9L5w8UicD1QpoBr03B2?=
 =?us-ascii?Q?GgHZTC5PCekYPQwQUmEI6NkXaJ9PA7JcI8Jw55/QDjFFtHweeMWiTlNwbFe/?=
 =?us-ascii?Q?dmUvVAonpi3dZZeEJuvN1Rh3VB45kq3lZDsGLA+TkNhViS2lguD48zeq+AV+?=
 =?us-ascii?Q?4i9fYZ3jrkvsj3x19YLvIlOS3DefpgVg724NclIFWxNekygJX8MZgpvzK2J3?=
 =?us-ascii?Q?Utdo6EZfC1Qx/FSeczD3NSZDUU921mOhmKoE+UoEIwBPOKLGCWe326Cchxa8?=
 =?us-ascii?Q?mmRHKazLLzaTUd9mVNcs6RIyBBQUDBa6UzsJuEaWoyskaMsQ5Iz0afipzwBs?=
 =?us-ascii?Q?AmC3ZL9EI4mpVYsAV5Fj4kFSwkZOp/DdsnCs9EOvLVpmPEgAyHYC9qkpgY8Y?=
 =?us-ascii?Q?N2Ligxb3L4T6gffZ6Ci8uiG+pyd/Gq0pysumyL2coI9gBzDmUGE9Spds5P85?=
 =?us-ascii?Q?4sap2RBXVQ0TvpgT1DB7peWNi7IFr5PUoAFWJ8blhgrYAao32aO3hIPF5yaZ?=
 =?us-ascii?Q?vnEi6PMs6+/Vp1Tz9YaH+hixg3t+GSFGzsXU7jaCXo6Qo/np2cOwtF3aaQPJ?=
 =?us-ascii?Q?EQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 739b1169-852f-4cf4-4aa2-08db62228ef0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 22:01:17.1070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wPAF/GSl0z2z31qaaDcUIPJfEa6NUez69mi4WLhgIJd6EyxfW/+Pv5NfODyXEbq7WqvcfOYo7ioMUry5dj4sVMALOha0KjWCmT/wVRqY9I0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR13MB5214
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EAiNwAA6svvJiDLfKU1x5DD/KClJ2bHwYMPjbbGKD5w=;
 b=X8wmicsFFju6ubwA0k52BvfsozN1Gil1sKP8tpIG5+u5rAAtwVy/b7bxFK3ZjrLm6luVSrdpmIS55fMjudNjz2eD9hjmle5cJpT9+aj071Ntfi9efGSNCEooZHfMCI2CYWmWzNAcf4kEnzy6LErAD3Cd3bWSrdo+wHRGmm+WVj4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=X8wmicsF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix extts capture value format
 for 82580/i354/i350
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 31, 2023 at 09:08:05AM +0000, Yuezhen Luan wrote:
> 82580/i354/i350 features circle-counter-like timestamp registers
> that are different with newer i210. The EXTTS capture value in
> AUXTSMPx should be converted from raw circle counter value to
> timestamp value in resolution of 1 nanosec by the driver.
> 
> Signed-off-by: Yuezhen Luan <eggcar.luan@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 58872a4c2..187daa8ef 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6947,6 +6947,7 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
>  	struct e1000_hw *hw = &adapter->hw;
>  	struct ptp_clock_event event;
>  	struct timespec64 ts;
> +	unsigned long flags;
>  
>  	if (pin < 0 || pin >= IGB_N_SDP)
>  		return;
> @@ -6954,9 +6955,12 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
>  	if (hw->mac.type == e1000_82580 ||
>  	    hw->mac.type == e1000_i354 ||
>  	    hw->mac.type == e1000_i350) {
> -		s64 ns = rd32(auxstmpl);
> +		u64 ns = rd32(auxstmpl);
>  
> -		ns += ((s64)(rd32(auxstmph) & 0xFF)) << 32;
> +		ns += ((u64)(rd32(auxstmph) & 0xFF)) << 32;
> +		spin_lock_irqsave(&adapter->tc, ns);
> +		ns = timecounter_cyc2time(&adapter->tc, ns);
> +		spin_unlock_irqrestore(&adapter->tc, ns);

Hi Yuezhen Luan,

unfortunately this doesn't compile because the arguments to
spin_lock_irqsave/spin_unlock_irqrestore are wrong.

>  		ts = ns_to_timespec64(ns);
>  	} else {
>  		ts.tv_nsec = rd32(auxstmpl);

-- 
pw-bot: cr

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
