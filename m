Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D6B6F5AE1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 17:22:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE3C983C4E;
	Wed,  3 May 2023 15:22:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE3C983C4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683127352;
	bh=lgrho4tXV90TKKC9Y2BMwmppovZRjyILigNqFhGpSwI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=45BH9alHYNinbpEwWWgvlqVYXvXcqhUbFBbuOePRmynwXg4is+hRdYlfOqyKLA09X
	 9mMj7yE6YbrLDg8a8Y83bx8ktup51zLUdxWjouFjE3qqfm5NZxmjMJ610drRXPfvBY
	 Sq3BumoztB1nJl+6QruG1Wf2EkiogWd2stpHBKrK4oEyHS7Pjac1VPa1L5qRx+HhVo
	 OAKbGTzwjcNz8w66DNwv2uRNgdSLwFiHsUnSy3nimrhpoezTqZR+N203IsXoKZS8j4
	 ylrXIPSwjrfxoRkKDI/of6j2sH76x90dedXtVGLbTNJ8bN6G6j+5GhAMnz4SsitOId
	 DjhO2OluxBKvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F4UBCW6Y63DQ; Wed,  3 May 2023 15:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6B4083C4B;
	Wed,  3 May 2023 15:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6B4083C4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 911A51BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 15:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 601396152C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 15:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 601396152C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnQXUC2Wv6En for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 15:22:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7A8B61528
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2091.outbound.protection.outlook.com [40.107.243.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7A8B61528
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 15:22:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OJL6w9cRuauFY/k0XPfjEr8hQlauGL41/WbNFCr+pZk9U/S5tOwwp5yOoFZ8MK4QP/pdkzgqITn8II2vShLoFFY3d2kqxnxtXoMTZyupXkY1oZT1tuvH5pt9v1alPCevL9KvpqmtVS66AKIag0rc6UxfeewZSUqDi4wnnT1dslwLebfG3+F0vsFb/XQvPi4dTRp8yPilP0OVL+zJ3sAMmyRFOkOV2RSm9yMFpTPfuGTH9miVe8s6S9IfCMeg15LtMPJuSRbFp2IAheWVq+WnjKNBP1dOlAuJtrEIhTeysUCl3Kfd564A+SgzYfFy6SGD1d1jne35q0JZ+R6gKeo7Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNEufiZ9oae7IEdmjh3S9bSTUtEQqB/6jb3TXCYDMkI=;
 b=L7vGGxEuprgY1ChEKpxJQfSbu2SZ43B//TudnCmRSDB+PiWaFrWkblC8cNvnYD8yB+/aK3G+npwOQYNJHKrxDr2w2PVujahYF5P7HEg/gZ/SLe9+pd7wP4llV2WdFTKP+SGI1rAe4Owxkhhf4P/IXMObyROkqxCJ3qZ2x4H8LMigFqPhaDWNB5xuQ6ieRJjP3RwaAM1Hee5oCNEIkdEK3ltR1ONzxx07rWu0Rl32HYCyhKiYaqXJvzjkf+KVLF7cO17NnV/lmWUP9ZEEFU+xXan6zjklb+i47BT2Gu2JZbog7PegA47hqCo+9WO42RHWWv0P9NQjB+zTVBaLKj+9+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MN2PR13MB3742.namprd13.prod.outlook.com (2603:10b6:208:1e7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.22; Wed, 3 May
 2023 15:22:24 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6340.031; Wed, 3 May 2023
 15:22:23 +0000
Date: Wed, 3 May 2023 17:22:17 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZFJ8KRKYFNxYXJ/0@corigine.com>
References: <20230427045711.1625449-1-michal.swiatkowski@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230427045711.1625449-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: AM0PR04CA0138.eurprd04.prod.outlook.com
 (2603:10a6:208:55::43) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MN2PR13MB3742:EE_
X-MS-Office365-Filtering-Correlation-Id: c983ad9d-1715-4e5c-60db-08db4bea31bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W6LBagkGaea8r/NVzo1pvnsSaRdMZrsQS0UY9QetdQxX7QZ5NXXV21YmyKX1aj8idGMj+rMXj9tYgXOSbHR76zW8WCizpWHvGOCrUFLc2pjieOB0jxUQ8CcN0Q69kJXIdZnZLqt1gF2ucQ844n7DNd65/Rdg/NvR5DSLBPc4aSAMNpgXK23lZYsPH8faFtmwH8gSIyR9qXV/Iwiu2pA41zzOgdq95CahhRofcoA+Hnmlkq2oRc9hYg/L9IPXms62S/o/BH2XwZn9xAxmA2uyaPZwF5Z1OqIkLcaJdHO30+nv0zI9eG/Ru8nGA+6AxRizmjvbkya7BlCW5JFdaj4y0LtaYrFl0J6xQMiVwVVIDzhB2EB8e2ErKaZWdvjRjYgEwNmS1h6nMiJW36neMEb3e+snUDOTavym1Q6Mglhny+AfxASOaSDbX726ckmH/i5XfaWllcI4rWOUdFS1ul9gvXGRL5E7SQ0bkDpxowWe6VN3+HxlbmolUTt4sPnYpcbcv4163JhraEn6ISLvNKHQx1CuaoZ8oyBXia8tqBw5sF0TTmdXY6CeEQuT4K+WTtrY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(346002)(366004)(136003)(396003)(39830400003)(451199021)(86362001)(36756003)(38100700002)(6486002)(6512007)(186003)(2616005)(6666004)(478600001)(6506007)(8676002)(41300700001)(66946007)(66476007)(66556008)(6916009)(4326008)(316002)(8936002)(44832011)(5660300002)(4744005)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fZ46jFsp3VIMajC/9endJJHD6s9JePVsR2iBR4ApD89PpqmdTyLtjTAAodVr?=
 =?us-ascii?Q?JEWVm+7Dd+PuCrSFgmYly8Cg6AXEomEXDga7Oor/U3ekyy2OZ5G9qQLbjDQn?=
 =?us-ascii?Q?KDB/kv+FB5YwOKFVSUjTLizEfhMyXBoNWF+Pl46FYok6BYKtJy82BWJwLjNZ?=
 =?us-ascii?Q?COQnAeATiDNaE5WV+2BjoYsh1El9J8Wr+Q2TApgeHndf7uhunSKzwMXynFpH?=
 =?us-ascii?Q?BHTrmJJMBnEpVfwxapoRv/AgjHklKJ7v5SHyt9N5Y+BfSXp+9T5RiENg8j9m?=
 =?us-ascii?Q?FanlcSMHQKW9ppo8uCiNgfAZ+ArfDPvXdHh+Z1xJvDbUkMNpG/D22WqOC74V?=
 =?us-ascii?Q?+Cs8s1lGm8StxdVs/3ra/LF1JpzMBOPuLaikiNwRZl0x/zu0jyvg7YqJwPb/?=
 =?us-ascii?Q?9EX73KvIzHgNvggBoDFQmXc8iTnHm7RYaqsuVb2Dc2XXQ+DIfVzRb8VktFKb?=
 =?us-ascii?Q?IHkyBoA6zQIEO3PIKuFR0FvZ79nD1bO+MmH1qoZXL5tC/MNkvcQD+8gVvJ5p?=
 =?us-ascii?Q?Xp8kWSwtkXUb8jZRf4VCKNwcHL+QDQEmqOtAz6eVB/q7kk2ZaVHJlQGFkN3a?=
 =?us-ascii?Q?DZe8HKSLRu0r+UgyiMc7lhmewGoF2NyNzYtnY9Y6Ngk3vttvF9fAIVlT6o5S?=
 =?us-ascii?Q?SyIR2lcqSkG7g3qKR3cpPMf/dlvlDFToduq9Gx0AptQkitlXNW0WxzyQdMrX?=
 =?us-ascii?Q?EwSBQt9Qhk3skRAt/Z2Fbn0QFRce9vHrjYfzuzFnzeHzwOfGCbFnWDZqZLAs?=
 =?us-ascii?Q?1nQqolqFN5fruFuFPNHDJrAwl31y6Oswhj1Q9g6CReORWHrW2Nm5ZRxw96wU?=
 =?us-ascii?Q?yiuv1uiwMqk1LVFwlj9LvaWya1O4qjHar/d89vSc4oyZWI0vmbDOBz7tfkPI?=
 =?us-ascii?Q?jacBHouuTxG6wQ0A8uxQbR8WgcbvhwTOIxloT7yG5OUdrius5mMMpJVMTcJX?=
 =?us-ascii?Q?+n+w48B/kf0nqcaR/jfpp1G9Cm8fjhi/Lq1Lby7g5/gAGTXUOdx5bUoNlj+s?=
 =?us-ascii?Q?TtNpRQNfqgyeZOY7D963pQoTsoStWG6+Ip2cT70uCJnP/B9cqOJQL9SJLCNY?=
 =?us-ascii?Q?nRTznQGb0mrJeum0TKrYW9HOhayIVKZ2qS6QOmB+InA+VO8AP1uVD8xZZkSh?=
 =?us-ascii?Q?PULdIQD9GdjazntQUJ3jEj7PaDppEIYFTkKV4zq1WqQPjkeDq/3DXe4tBAIf?=
 =?us-ascii?Q?zoHPs6wSk/UQJueDo1gZyMFz530LIkXHXNvp2fK1R6F0MmYGzBgfO8hb5ggO?=
 =?us-ascii?Q?nIzBZMaDzFufZFEawenJpr4fAhZhky800kfKIW0mobgmaOcYqEv7HKqCBP0x?=
 =?us-ascii?Q?wfhC5247Xom8Ywk8mRqFCTTTleh7mVKawJ83Ba20DDtFVfJQuSdPLnQGEuxm?=
 =?us-ascii?Q?QFONWW9TFCi+UmR+agaIHpY5QdH3Wg4sOrKKOjZ1X6VpXDkaws12Dq0t64O2?=
 =?us-ascii?Q?FSF9KlpbuTGJQuh31/IA/iyy4+8TEPUYGYYkiFKgfWN/DBLUJvqih0TzVhK+?=
 =?us-ascii?Q?xN6T78uRKdTwb8hJFtPtSjr+N0sAZhL0GH9r8OuHUz2oODcGqtg5ARhXCnt9?=
 =?us-ascii?Q?otbjlmBq0BXo04wSlbn//RhzqtOYBJFN5RkHYUMRJJSwN3kEp2i0wDPB9yUF?=
 =?us-ascii?Q?0dKTFRHrGMiPDvhMRwOwzTFjnbkLJxXlyXtcyrvJaTtfa2oMCXMyLSBxQa+p?=
 =?us-ascii?Q?6ksLeg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c983ad9d-1715-4e5c-60db-08db4bea31bd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2023 15:22:23.7980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vpy5HYa19k4MeMBM7EX4GLtQZiayIT8CQUseSu9uhtYyFQkuTNr9DxMZ5blP12bvaLq84lgchPQg5deKs0weCE+MSU8+fnGzOGp9REab+Xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB3742
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NNEufiZ9oae7IEdmjh3S9bSTUtEQqB/6jb3TXCYDMkI=;
 b=XcFi6IjtVxMnnfVgux1T1ozm6l49hGjOgZnD35GaUUd6YJVphBAEWJYdPdF4dLn3mTsdW9+pKrVQWULZ9/VaD7KCeO9vD8O0qOhDj7RWkraS5XiFddUBes140ySuZMg8H1P71aNNuP4cJa/DcgTl8cSiJHdMbIEbG1AHp2VDIuk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=XcFi6Ijt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: block LAN in case of VF
 to VF offload
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 marcin.szycik@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 27, 2023 at 06:57:11AM +0200, Michal Swiatkowski wrote:
> VF to VF traffic shouldn't go outside. To enforce it, set only the loopback
> enable bit in case of all ingress type rules added via the tc tool.
> 
> Fixes: 0d08a441fb1a ("ice: ndo_setup_tc implementation for PF")
> Reported-by: Sujai Buvaneswaran <Sujai.Buvaneswaran@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
