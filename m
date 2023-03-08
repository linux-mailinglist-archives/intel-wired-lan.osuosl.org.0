Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B036B6B0695
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 13:05:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D97AB40BE1;
	Wed,  8 Mar 2023 12:05:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D97AB40BE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678277109;
	bh=T49JR0uiYR9w/64rPOmIywUesvmak2m0T/hAIqPkGUk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JIdZ9JEU8deEuNQlXQwdZeN7lEA94wLL68O2eD1nxAaqTWP1eWcUP0Fqf4aWpdffm
	 aavRSmODIcRCGXHrl2Q6I4pfptADh1NgISs2o5G8rzzeRYrfhRMmqssYEkwRqOlQzD
	 ZfRomL8gf9BDqiGEegsQ9DzLJqIpPM8VTVp1zArhTyVjO/8/rycGpOo/WAgxkkzD4g
	 d6W2gteAHwbi+W0xmWv70CekilJvuEwKq0J74AZoy1gIWEVP+hlEpeu/r1L8Umslq6
	 MAbLHqRIGt4+Cuhpn5GLiDXNAFxc/jO/PNdBe/hazcgMg0CtMzEsvOl3jOn4R0JtCd
	 ngSvbmutiCylQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iy5HOP61prc8; Wed,  8 Mar 2023 12:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9000140BF0;
	Wed,  8 Mar 2023 12:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9000140BF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C2F91BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 12:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5072D40BE1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 12:05:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5072D40BE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WHu-UJJJWMZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 12:05:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 681BE400DD
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2122.outbound.protection.outlook.com [40.107.220.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 681BE400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 12:05:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GvVADyLUU8b3q0nTO+Zkg39NcufWhrlrj8Moad/X4JugBHOKByxKYlUePmUskzkO9KoOoqlvhKY4j3nPWkbFilME585IkXB90fUDoBN6wNka5gwNNGSHQQlwjuq6GEydcuRm26nbRNc/Trgfb5TbKfHY/GbRD679Sshf5d5TqnYszHDpUvy5UeTjJY8MbySkzeFwrpY9AVlf0HH9ULI3Zm0AR0SUcGBsHbcyaQ9ztUd3huNzM428lDtw7YwbrxWxo9KcU952LIF1b9GA2d8x7YEMu4SImuStrDei1byoa+6ygEkKUHx4B5xrNKNbUvf6MtzsnaONbkBVNRJRulB56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SB4QA/ysKhbw032u3Jn5/rA1BtBMiXrKWRj0O4QPA6k=;
 b=T+vXgpJnU4Qtrw8XBUPO3WZ5VIdk3YRf/5/zN8aU4rsViVKq+n0r5Mu+Ms+/tDQ0n2lZ0kZKzUOWkpg6x+JEOSNKOp/enB3vGuigj9um3wQv+OUub4ivg4TXNB/ka7C5gFX2k8q9w9wKPSl4ZpSjWJopERvcfDDsukqM8zahY/4AerPGFy3R8lSWCrh6JcuiNXGQPKABtFLT9A11WgQuUp0Y6xx5s+aRFwubeplGWqztg+d4rJ4DBFYMiHQqp0JiPnPOay/dQHH/WpqjvmXbfTIwgcQdP/chglhkmX2OAKXhLGfWqvEr2IXZps92TDlpO+Qxy3wW1AXgA4MbV9FLxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB5552.namprd13.prod.outlook.com (2603:10b6:510:131::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.26; Wed, 8 Mar
 2023 12:04:59 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::85f5:bdb:fb9e:294c]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::85f5:bdb:fb9e:294c%2]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 12:04:59 +0000
Date: Wed, 8 Mar 2023 13:04:50 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Lin Ma <linma@zju.edu.cn>
Message-ID: <ZAh54ux2b6zS2kJY@corigine.com>
References: <ZAc/3oVos9DBx3iR@calimero.vinschen.de>
 <20230307152917.32182-1-linma@zju.edu.cn>
Content-Disposition: inline
In-Reply-To: <20230307152917.32182-1-linma@zju.edu.cn>
X-ClientProxiedBy: AS4PR10CA0016.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::8) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB5552:EE_
X-MS-Office365-Filtering-Correlation-Id: 43a553f2-3f69-40f4-a201-08db1fcd56cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VIvouxIFJ6h5AflN/MVZA1MGzzuY663kt+0TJKmvOVhZoR3YWlIa2wFkUq4E43uGJpv9GsNDQcU2iCOL5hV9o7J9iexkempwAidblZhMzt5CDp0bXVtC/Jfq+9KcIy/x6tkmP0QA1KyczeFOkl6LniUuI1Jnnyzb2rYUFMooZfPZMSk9rIP8rG7YpMNTpKrZL1ja5ekokPMCM1MR+qSstwIumCBf79Rg5ZI24vE/Dzt1R6u5LJpnNXrbr/BhpIFSwI946qoyVJL2cOJqZUSYdR8KC3syVUX5STixJ9Tw75O1LcIfxG0BK+kiy1sq6QJBV6pA+oKQp07WjZnQ8tpkEXlB9ngcOF21SCDRr8m1Sx7nx973Mhjtxqiam/YHSTvPkfp9LhsRfPTMJguSSU2jfZT65m1o3kluGgXEdwyw0aMX7A3t1drfq0dkM7g8qb6u4Y6PAf3/lrJMc/SzUq94SJddn6sStDJUO8JHaJJrJrineUjXxeSjVOLWXKKpfNhMV1y/l9Ctd6rYGnjDv9D8/ne03rwX5WXxPNngwfm8QWEsk653bVH7Ay602HJaPk9V9yTpeBAMAo0nA7dMrKtH32YXRDFZ96d9yYskefVc97mF3svqZh4BY06rKfRVo2yU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(396003)(346002)(136003)(366004)(39840400004)(376002)(451199018)(6506007)(6486002)(6512007)(966005)(6666004)(36756003)(83380400001)(38100700002)(186003)(86362001)(2616005)(41300700001)(66556008)(4326008)(8676002)(6916009)(2906002)(66946007)(8936002)(44832011)(7416002)(5660300002)(66476007)(478600001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1d3A4WRlDNGNuUBDbDNQkvKx7RZdAg50G030JFEzUJ4+VVYXdtyhZQ5Na42a?=
 =?us-ascii?Q?oJe7b5GAgb8zkq58BovldFylOWNsmJIU0A2TGU2txFj82iJVpyUCPzp4A8FQ?=
 =?us-ascii?Q?yVatso1GDOSdfvBFqXhA47oEIo4HgZgUrbSDg8P/kwO1JdXp4RSO5rVfFpFk?=
 =?us-ascii?Q?rOAHHVaT+0zYc8RwZ4sUusSSamJHI1RVHm6LLEeL5RgSun6ipn9rf3dnULdi?=
 =?us-ascii?Q?iEVgUKX7+znpL251wQdKFsOjORJFLc274o6Mh9Qy/UcDU7ueOAgWHOKLjMqw?=
 =?us-ascii?Q?n/XngMeTDfBvTmO/+5uUyP6by7Swx24cP3xDjgyZ9n35nMnBi7xPQ70TpMkG?=
 =?us-ascii?Q?Zf3zKLlloKLe2ZB/iAUL92gVcU7CHeKQVSKc4JmM16UWlzg8t+zc4C6EZ4tP?=
 =?us-ascii?Q?9YyhtU0mtbOvsUYFbrwMFmqNcZ+EJeN+xTxdpQMYs+9sr73gfRh7rjBUew3J?=
 =?us-ascii?Q?e9hOZBJhg4X09rIhG9yuDPCHywrIWwoA86K0fFCpeaaVl3KitUP75xoKpx0R?=
 =?us-ascii?Q?wTL18S8ML03KUgqgICvabhEffO12DSf/4WVGLgFo7yI4NX/gGwhFZbH5TIMJ?=
 =?us-ascii?Q?GdG7ecy0SVCFPZEz09Pbm/BihmQc9oqrLM+3xLY+0/g86SgF+Br+GycoVJuX?=
 =?us-ascii?Q?Fw6Pp8Vii3cCB37nra5le1nlo59zS43qpLmxNftbwjMwgJc/XtNmM1K3nWFb?=
 =?us-ascii?Q?KVH2FlD+RA/RFtEf5vm6TjjfXpOHtb5PGGtWo1wzKUGEuzYNu9wh6s+tGzwB?=
 =?us-ascii?Q?StTuvyqh/9yWfZWvaQ6+jn4wgWpWlZST9VsCW3NlJB/eqbz6pFBSt4UzSKvI?=
 =?us-ascii?Q?czZ+ydm/TQvHgzENiz2ZB0w69AW02TQrzXu82cAwNS88D95J8zXkt4+elrVZ?=
 =?us-ascii?Q?udsJmIeE8xAuZvtBNX6+SbVrd1Gn75KOv//8cw+G3ZqBx9suptpTcMnSqDGe?=
 =?us-ascii?Q?9xIolJeVFFycw1SKFAAwo967FWQOeqqMgUL/h2sEcJyrLUabjowaVxMn6Oxv?=
 =?us-ascii?Q?p+gQPPCxYWM0jip5sm5VzBerK7RCTS1xe32yiipCRWJ1typ3+MK1uYUTtuu6?=
 =?us-ascii?Q?1ShaspY6eNoFHznUkVMDUKET9HXieW5cUUmbQsaUO8y+iYUMp7hZjjGOKCXJ?=
 =?us-ascii?Q?jTQRHdYjjaDFOuxhfgTxTaQS4hQrdJxWvedyd44NQZeHUGtMIHV3HDg/htZn?=
 =?us-ascii?Q?bRQfrL1ikgF4hG7dfSd1eK3o+8rIhqYgkzTVa+d9bIW74pRXis7BUBKmPnoN?=
 =?us-ascii?Q?S8nPe/4uGKu32jZBBrcXbnNT7T2zZ7wbYnAh55PUmvvzVY9NUMIIEHXrHQJl?=
 =?us-ascii?Q?E7WqWLk4Qk4CAVGJdA4JdWsfYxc9/wqIEcULQWRNXTS27RRVGpgUXxKapatD?=
 =?us-ascii?Q?jxX81+ZIIzT3trpgk2o5Fv/pRCptedCNLdXJrCahdE4zYx1i366Y+Er3yu0c?=
 =?us-ascii?Q?qS9vv1qvvE+nRyWW3msTNNjoDa/drDTBr2OzDA1IkyGuAMEPNXq9tctVrw4s?=
 =?us-ascii?Q?uO/s/N4qr9Lb7LkMxbDBa4RDeTNU2OcZ7G4HqdjJnPD5vcWnX+ueLqTvyD7W?=
 =?us-ascii?Q?Rdz06HA9R5EN5jpUhLXtV38xi6t0CfQzxaTO/4obHxMHJulwbo7gmdKSKVQE?=
 =?us-ascii?Q?4Dk1N5QkO3Xb4qLY2gZpbLapP/0UGoYmzoJ9DaZRGnT/obrmLTsS942AaV7Q?=
 =?us-ascii?Q?i6HlzA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43a553f2-3f69-40f4-a201-08db1fcd56cf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 12:04:58.9668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /7fAnAwtRIoMXVc3PakCR5pPUJBE20HBFqAjPZsuqOKUCnMeZhrdwGxc7JT2o+GMzKfGhLtF0Sg86pdQnFcjY1stc1Peq+x+jkJlYpoUjho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB5552
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SB4QA/ysKhbw032u3Jn5/rA1BtBMiXrKWRj0O4QPA6k=;
 b=cz5HhW6T/CDHZCN2Tv+7cVNL118n8gv0rtE/goCh+Mrbjn8ik9taxHyIBc4ioua8D4fiWlwTx7yeGjb+an5agoB2x+Drl2nOtiavWZ/S8PrXEonsSmyrkKwnokvTDjZ7U2jgWGeIPQ5uT0Y/BEzxrSRRmjPw5JThatp/hxOBovQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=cz5HhW6T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: revert rtnl_lock() that
 causes deadlock
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
Cc: pmenzel@molgen.mpg.de, ast@kernel.org, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, richardcochran@gmail.com,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, vinschen@redhat.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, regressions@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 07, 2023 at 11:29:17PM +0800, Lin Ma wrote:
> The commit 6faee3d4ee8b ("igb: Add lock to avoid data race") adds
> rtnl_lock to eliminate a false data race shown below
> 
>  (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>  igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>   kfree(adapter->vf_data)          |
>   adapter->vfs_allocated_count = 0 |
>                                    |    memcpy(... adapter->vf_data[vf]
> 
> The above race will never happen and the extra rtnl_lock causes deadlock
> below
> 
> [  141.420169]  <TASK>
> [  141.420672]  __schedule+0x2dd/0x840
> [  141.421427]  schedule+0x50/0xc0
> [  141.422041]  schedule_preempt_disabled+0x11/0x20
> [  141.422678]  __mutex_lock.isra.13+0x431/0x6b0
> [  141.423324]  unregister_netdev+0xe/0x20
> [  141.423578]  igbvf_remove+0x45/0xe0 [igbvf]
> [  141.423791]  pci_device_remove+0x36/0xb0
> [  141.423990]  device_release_driver_internal+0xc1/0x160
> [  141.424270]  pci_stop_bus_device+0x6d/0x90
> [  141.424507]  pci_stop_and_remove_bus_device+0xe/0x20
> [  141.424789]  pci_iov_remove_virtfn+0xba/0x120
> [  141.425452]  sriov_disable+0x2f/0xf0
> [  141.425679]  igb_disable_sriov+0x4e/0x100 [igb]
> [  141.426353]  igb_remove+0xa0/0x130 [igb]
> [  141.426599]  pci_device_remove+0x36/0xb0
> [  141.426796]  device_release_driver_internal+0xc1/0x160
> [  141.427060]  driver_detach+0x44/0x90
> [  141.427253]  bus_remove_driver+0x55/0xe0
> [  141.427477]  pci_unregister_driver+0x2a/0xa0
> [  141.428296]  __x64_sys_delete_module+0x141/0x2b0
> [  141.429126]  ? mntput_no_expire+0x4a/0x240
> [  141.429363]  ? syscall_trace_enter.isra.19+0x126/0x1a0
> [  141.429653]  do_syscall_64+0x5b/0x80
> [  141.429847]  ? exit_to_user_mode_prepare+0x14d/0x1c0
> [  141.430109]  ? syscall_exit_to_user_mode+0x12/0x30
> [  141.430849]  ? do_syscall_64+0x67/0x80
> [  141.431083]  ? syscall_exit_to_user_mode_prepare+0x183/0x1b0
> [  141.431770]  ? syscall_exit_to_user_mode+0x12/0x30
> [  141.432482]  ? do_syscall_64+0x67/0x80
> [  141.432714]  ? exc_page_fault+0x64/0x140
> [  141.432911]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> 
> Since the igb_disable_sriov() will call pci_disable_sriov() before
> releasing any resources, the netdev core will synchronize the cleanup to
> avoid any races. This patch removes the useless rtnl_(un)lock to guarantee
> correctness.
> 
> CC: stable@vger.kernel.org
> Fixes: 6faee3d4ee8b ("igb: Add lock to avoid data race")
> Reported-by: Corinna Vinschen <vinschen@redhat.com>
> Link: https://lore.kernel.org/intel-wired-lan/ZAcJvkEPqWeJHO2r@calimero.vinschen.de/
> Signed-off-by: Lin Ma <linma@zju.edu.cn>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
