Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59183629F0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 17:29:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75168416D1;
	Tue, 15 Nov 2022 16:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75168416D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668529753;
	bh=x3en437hecI10ySDwdlB/vj0RQogEMLtFmNIQ2uc9gw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NBPT+DKQ+6YvDaamjHG5xvvFd379LvCyExUKRDUCH59o4/Rzn9vSkOty13Ts99KfM
	 TzVnLlXVMvdmlLdKQWmWQ9vjJVWzNiSFTkfL+30tRysiVNPGIDg9PgMAQLZBqCMjPX
	 W1SRnMI9lJoR4kIBdU2wRYr38iA+3GTr1QSVAVuUL8lX/HFO9vEaDjImTGtNlNU/3E
	 TkCY5En3Vjk3/xSMojZo95g/phGyS4Ab7hOoN4LIzAoxXeNr0fmb2bCVnW6zKdx4Xo
	 D+/4uOIz49msCXDlu5kgM8DnZhTlyujZnaUuI5Px0VHuh47BLb1eMUjFgryNf0Mpl+
	 ZiJ0m/m5A/lKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KMof_rje68qS; Tue, 15 Nov 2022 16:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FC76416AB;
	Tue, 15 Nov 2022 16:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FC76416AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCEA41BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72881401D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:08:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72881401D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1_vCGzghjWj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 12:08:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3281D401D2
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2040.outbound.protection.outlook.com [40.107.220.40])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3281D401D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:08:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/j6s9aWNrr/V4Cah4URmQT8OSUG6rwN1thDRAWMCQk369hkWikuHpnDav366Ri+mHGYRZn0war8/birv+nOX0ygWkMfNbdpZ/ZEf1T3VvvSYKuKFgYRi7JpCvRYTuG9nhlyfJ2V6AJz3VnIc4xu83ro0AqoCxv8MbRYGt+kLh5iAwJXuJ8js0UxvGkBipzWv1pYit6p61pY7vo2gmuLzpiTWdBWFPFf6DkN7PMiGeAKPUxv8Ta4iXDBeHd8RAqMXvyINHOtG8hogdphPiha3xBKemQUdEgCaCcKhIejy3gpjprEYaPasBqjv6NqineUkBIVskJHVt+g/SEzrOywjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPKf3FH4E4SqYx4RWVVT1nqU0Omrt3YjdAgFm1vHpKc=;
 b=Gc24HSlNyHaPLFAl9VyJL/D+mQ5x5PcgjaAjKOKM62IvZ6GT8bcZrhbvYTGY6q4aaMkHYzVh52bTSK8STr0/D/9O034ABzgDzAlro3P2ODUJ5LpF4eIr6JIcsZV5JQcu8y+3pKe6T41SOjOzDckkY1SVbeKz/sBebF7pgni/hygvTK5i9jmH6Znbwq+VqS3gfW+fnBh2/LcjIjnfb9q+tlng+pc2SE/miMU4v9bIz6X3RxOs7F7VRWEodpJVMOVYvG0Vn1vR2DZNdzGHaV5zhnUkwRd8aWhjzyfabuADDJPIKRyQq+5x6i1HkINY/Kutw1FJmAG/ucavofKlsRXeRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MN0PR12MB5979.namprd12.prod.outlook.com (2603:10b6:208:37e::15)
 by BN9PR12MB5035.namprd12.prod.outlook.com (2603:10b6:408:134::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Tue, 15 Nov
 2022 12:08:23 +0000
Received: from MN0PR12MB5979.namprd12.prod.outlook.com
 ([fe80::62b2:b96:8fd1:19f5]) by MN0PR12MB5979.namprd12.prod.outlook.com
 ([fe80::62b2:b96:8fd1:19f5%4]) with mapi id 15.20.5813.013; Tue, 15 Nov 2022
 12:08:23 +0000
Date: Tue, 15 Nov 2022 13:08:20 +0100
From: Jiri Pirko <jiri@nvidia.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <Y3OBNC8LBFZjIXXO@nanopsycho>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-14-michal.swiatkowski@linux.intel.com>
 <Y3Jepn7bxkCFP+cg@nanopsycho> <Y3Jm36rYH4J1jSoc@praczyns-desk3>
Content-Disposition: inline
In-Reply-To: <Y3Jm36rYH4J1jSoc@praczyns-desk3>
X-ClientProxiedBy: FR0P281CA0050.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::13) To MN0PR12MB5979.namprd12.prod.outlook.com
 (2603:10b6:208:37e::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR12MB5979:EE_|BN9PR12MB5035:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e37b1c9-44e6-4eaf-e229-08dac7021804
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: de/sctKBMUSLmZts09r4ccpeRtYHY6aRFlOqELOa2L6XPE5vuaHsszAZC65+6QBp9fmF9KG1ZG/fK4VYwAjwTmBpRJkqopdN1YDeFrfTJZh+loqb/FulLbXMfdj/cRC9QBz8G/QsBWFcZsCXM0TBE+UeyIfnt6WaaHqUhVD+q8rLN/ww8lXwuFZVQuX9TZiBuAjTfwm4Tzpli1xc6we8qjm9gD0o90eoQ3oOVk+quEFdeKwQdqf+HVzkCc8Pk/DCoeOBWTNM1edX/dSZZRM0vg0rGLZoMTmxLlWm4XG57Y90Z7L3quxGRMgMhgPZ06sy1lDsHM2vfYYPaHETJJRprtqC8KoNxbE7NgrYsaUfrlHGMUHmsGDOenlaQY8owBiQrKiAoto4buTB5UCXll3wwp9IDWWTXZWtgiq+tldd6ic3P4JBN7n+pXXTPYvd3/9N+O0X2J/Ynk18KGj7Onnc3XG+2CMBSWsuIJRLdgy9+r/qPHIsFYCFXHgcxvNkDD/gUTUnr0lyXUKY5/qZqP1Nixq3NBfVDKIcaJnUGS+8EznDDW18z7pfiKlxKYTy1j88fpQYSdpPzqx+6AiUSm/Qo12OQI9A/KOld22aD5QLL1t1MLFvs4n4Rk/dtABYP6ORUmMRNidItEPFVTVOhRZO/hWiIthtOsFbjt2+SM7ydMwhXh8ON2DQ+gH89Fiwi6Y5E0Ixx6ZtBj9p3S1LW5isbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR12MB5979.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199015)(38100700002)(2906002)(41300700001)(83380400001)(86362001)(8676002)(4326008)(316002)(66946007)(66476007)(66556008)(186003)(6512007)(9686003)(26005)(6486002)(54906003)(6916009)(7416002)(5660300002)(33716001)(8936002)(478600001)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8pleQHbxH2IValAI1bVfiRwCgjzUkvl4y0atUOLTfOcuKYpv/BxXtjDzvy2i?=
 =?us-ascii?Q?+w4gIlqZwcsjfWIr/ggSJjRxSy6EHInvEaqA4vM34679pOFwi24tX51XaH8u?=
 =?us-ascii?Q?KvHFxwoFKzJMNXs4rgKCfPxs/bB8J//IAli73vWq3iF8LtOhxtubH/TKIQRD?=
 =?us-ascii?Q?1CdIqc9ymUCTHYadwfwoY7bRDLwv/6zE89Zvssr+OCL2VuwAQdHiKAm3eXmV?=
 =?us-ascii?Q?8Zrh6t6qm61UAINkagip5TaQUAGqLekhjhhPBMhsmbISmvjQWpsqQFU7qJTI?=
 =?us-ascii?Q?0fzcKZ0/ftL5nOBC4uuI9suAzWlK0EZHI0Av9ygkAXoOxy5CillRRcWTguBK?=
 =?us-ascii?Q?lwLN9ijUU/flk8oG8kQ0/x2pcrk8DOUG1V9OG/NVJl1g63hp8A5A/uwl4UE7?=
 =?us-ascii?Q?Cxsh/fxdvcRm+P5+mNlz88TPBphj/EpZQZzaWxmV6CjIGThxsgCj8RVzDmDg?=
 =?us-ascii?Q?JrmAsnYcDY4oRq2QsHL3ry1zZQnrGshgmsJ5Uf+ORf+600VrYnTHug0m0Yzg?=
 =?us-ascii?Q?wugHoDKDKZpD8XQWvExb2D4I/qTQven/pHNT97hBCI5jQ+jGwG8JkRnQyPs0?=
 =?us-ascii?Q?Mq7X6hHyEeMn64l6DNsAJ43008+TyOOsrpWy9WJ9Ss8X3sJw6prrk2og9/1E?=
 =?us-ascii?Q?CoOWFLBKy7SV9sTdQFiBk5Pv/IrnV5M1SGNtRMSOtgekGcu4UU+2i0w1ul7b?=
 =?us-ascii?Q?XtdR2V/EeD8uVK9343dTRqjBB1uI/+JaNNsvAMUZuDINGM4Oea+WOzmZN5LB?=
 =?us-ascii?Q?RzhbUQA8FPWN4meEpbYYHvmu44nAUWS/eOXAqBrPsxJaQkb1UjKWEWBoIFuW?=
 =?us-ascii?Q?MMfiryWphqy4kalRqwaW98LGqMC3EH5vUWMgq99ZkbM1q9ivl3oQMlxfA4CV?=
 =?us-ascii?Q?NFLgGMYGC2vZE3f5/2w2HNNLy8Dejnhnza1Dzxi3tYfO0R5lyFLNZr8At3Zg?=
 =?us-ascii?Q?5JrPJqf8v/Yk1IQWbCfK7sHlDij2aKdPt7C/WRes+ebGy9EET177TBwIJlg6?=
 =?us-ascii?Q?QpwlZ1vuv9x9Xd4A9dmmw4sDbPccziSCl0s60XtLGTEqL8KfoJ/XO1/7RXLy?=
 =?us-ascii?Q?hfqtb1d/zkJBBKEvxXR3BYir/bROLHBNFOm5SjAMJQ4nnJg1z3F0uGr2/INm?=
 =?us-ascii?Q?ufr6rChcA0x6UFH07MMaxNPoqya67KWvWq1zIeiOonm2kTXLXIPcd08r6UiR?=
 =?us-ascii?Q?/Sj6HoyoWuZgPVfgdj3nbk9AfiXMyISmVvBVg0/oVHV5nXvr+YM3AvYeNaow?=
 =?us-ascii?Q?nCr0thKuriQAsiOIFSuLBx/ST9z/nMM7BZjySMtI90n6RDHqCAqrf1HV0pS+?=
 =?us-ascii?Q?yBBdPNzzT98d0SgWnIgPXcl9iuq2GLwKx45nMKwyMo6TckdZMtvsLnF+tTKe?=
 =?us-ascii?Q?ZwjnJzR4iCHqiwtcKrt076VbBGJSrLLM66/YiEPptwzU46lzMVUkO5gc4uqk?=
 =?us-ascii?Q?8JKHB5FQhkr+ZQyFaTk1OAG16tOM0VVPO3mVcNMFxTEqMEKVisW5gggyRaZl?=
 =?us-ascii?Q?Pav03+2OTSlMUIoLNY1Ayci4ectukNjs/M7ldomGYlZ5T4h6vwj8ckLkoCPI?=
 =?us-ascii?Q?f7+tFvGtItZTa6/qsn675Bp/LkC/+vqr77l53XbG?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e37b1c9-44e6-4eaf-e229-08dac7021804
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB5979.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 12:08:23.4743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qlwqAuoSmZ1A2jvjHIs7vvbVEOtLSBkTaoTJU45Fs3AZ+aawuxeuwS5X6J4uuU/D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5035
X-Mailman-Approved-At: Tue, 15 Nov 2022 16:29:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mPKf3FH4E4SqYx4RWVVT1nqU0Omrt3YjdAgFm1vHpKc=;
 b=qMFwHPCWP4t5mKUiQO/+iNeeJEmW+xSnmrx6rgmeJALjIXcxvQkhATus8rMlW+9vU2fO0dzfTTgigLCpK38ZczHa93lzkeHW8DsZQoF5CqFGq8X82B8vagADQ7CKsz8bYkA9gdKjaXeTBWL/nvgFmo5esyvu9iuMnui0nKyQ8nd+1/qjihKWdq7/wMpDNX1/X1vanTZN+Z9jV4DmSUxa9vnrseWLvV77Q7ImtV0dja2ofGYTe6unzMDjcJWXYxxvnUkemm4hrD4GJlamhRs/C4hQFb05reAIqkUhMNbpWtCzs5lGh0v9iCh7Bq71b0/zSXRrH4MD47XUJZrhUQ0MCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=qMFwHPCW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/13] devlink,
 ice: add MSIX vectors as devlink resource
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
Cc: Michal Kubiak <michal.kubiak@intel.com>, mustafa.ismail@intel.com,
 netdev@vger.kernel.org, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Nov 14, 2022 at 05:03:43PM CET, piotr.raczynski@intel.com wrote:
>On Mon, Nov 14, 2022 at 04:28:38PM +0100, Jiri Pirko wrote:
>> Mon, Nov 14, 2022 at 01:57:55PM CET, michal.swiatkowski@linux.intel.com wrote:
>> >From: Michal Kubiak <michal.kubiak@intel.com>
>> >
>> >Implement devlink resource to control how many MSI-X vectors are
>> >used for eth, VF and RDMA. Show misc MSI-X as read only.
>> >
>> >This is first approach to control the mix of resources managed
>> >by ice driver. This commit registers number of available MSI-X
>> >as devlink resource and also add specific resources for eth, vf and RDMA.
>> >
>> >Also, make those resources generic.
>> >
>> >$ devlink resource show pci/0000:31:00.0
>> >  name msix size 1024 occ 172 unit entry dpipe_tables none
>> 
>> 
>> So, 1024 is the total vector count available in your hw?
>> 
>
>For this particular device and physical function, yes.
>
>
>> 
>> >    resources:
>> >      name msix_misc size 4 unit entry dpipe_tables none
>> 
>> What's misc? Why you don't show occupancy for it? Yet, it seems to be
>> accounted in the total (172)
>> 
>> Also, drop the "msix_" prefix from all, you already have parent called
>> "msix".
>
>misc interrupts are for miscellaneous purposes like communication with
>Firmware or other control plane interrupts (if any).
>
>> 
>> 
>> >      name msix_eth size 92 occ 92 unit entry size_min 1 size_max
>> 
>> Why "size_min is not 0 here?
>
>Thanks, actually 0 would mean disable the eth, default, netdev at all.
>It could be done, however not implemented in this patchset. But for
>cases when the default port is not needed at all, it seems like a good
>idea.

So the behaviour you describe is, if you set number of vectors to 0, the
driver won't instantiate netdev ? That sounds quite odd. In that case,
the minimal value should really be 1. The same goes to rdma.


>
>> 
>> 
>> >	128 size_gran 1 dpipe_tables none
>> >      name msix_vf size 128 occ 0 unit entry size_min 0 size_max
>> >	1020 size_gran 1 dpipe_tables none
>> >      name msix_rdma size 76 occ 76 unit entry size_min 0 size_max
>> 
>> Okay, this means that for eth and rdma, the vectors are fully used, no
>> VF is instanciated?
>
>Yes, in this driver implementation, both eth and rdma will most probably
>be always fully utilized, but the moment you change the size and execute
>`devlink reload` then they will reconfigure with new values.
>
>The VF allocation here is the maximum number of interrupt vectors that
>can be assigned to actually created VFs. If so, then occ shows how many
>are actually utilized by the VFs.
>
>> 
>> 
>> 
>> >	132 size_gran 1 dpipe_tables none
>> >
>> >example commands:
>> >$ devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
>> >$ devlink resource set pci/0000:31:00.0 path msix/msix_vf size 512
>> >$ devlink dev reload pci/0000:31:00.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
