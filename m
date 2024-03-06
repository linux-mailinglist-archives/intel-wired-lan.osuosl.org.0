Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2B58738FA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 15:26:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FC1D4184D;
	Wed,  6 Mar 2024 14:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOlawExkll-A; Wed,  6 Mar 2024 14:26:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EA6D4181B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709735176;
	bh=ZGHt6sVqLdWN7LD3kow0IxHuW+gNCxfqwQYm4yhMJDY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ynb/XUd7h6rx2t2dc0dJLBv5V81dAs+1XLY1ofjTw6JUQ7SpNDO6sH7bpf3RY3jkU
	 GAw5MvKmSyMivtK/n4+W+M7+ovayDyWrleuREH8y2v3j1pRg6fvm2mz3adh21A8dGR
	 UM7tyrfIYuLtXhhdJeXGcierDQ7bSui47GgqJz1cwMnEaNsbYN4t9/euwOWJfS8ZnC
	 1YqiUhkGiq2J8Ad8OavCWbO5zk0zjyNFcpmjKV5MB4M/NEB+bJIEIQz5KzL0v5Ja6T
	 D2CfcSBvPHT5/LZ3y9Rpk7qWOg7RCxe6S0bRvnhWW4gQPZFvjB2A85RlwNaU9PvUzn
	 yhuBv93JyVJXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EA6D4181B;
	Wed,  6 Mar 2024 14:26:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 434451BF95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37B5A4069B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csXsLgumjSKA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 14:26:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 33CEF40071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33CEF40071
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33CEF40071
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:26:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4530187"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4530187"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:26:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14330058"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 06:26:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 06:26:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 06:26:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 06:26:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpR/FNOtMpihrNDqlu39LBButypjI5MGrUrnj8DZynlwAaMrgyaoCTw0H19/eIGT2UoXzknyoQe26DFSz4CHbHyqJRI7yx+JIVwG/Rz4wnxo08t8Fi7kGrJXOtmLIh/2PIl5sc+xdRW0aKdHAouhLyDBG5HlXXsCZYMJGtaVli3y/s7LVkbMT59GfZPzUc2otbq98nLYcPHrTMFe60khwoRRRazkpDZnabhyxyYD7xU0Z5eU/Z6XUH0tiqIuWvwSx186ObvhxNCuWsR/zCh6CABjzgvMIR/Y2lO1y1sa6qyktNgbHrOpsB8rzQh11OsLUx4m/L6WF8qEmQLTBa2LWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGHt6sVqLdWN7LD3kow0IxHuW+gNCxfqwQYm4yhMJDY=;
 b=V/OAL+rWo4wS4IoGh9kMJA7ONG7/hM2kaZlPVMA722/pMtgJJsmHq3iFouojmcQLWMMvTjSIZ5BvF/2VcTEZGN4Xvk76PukgQRQPhANYikh291R3dmjp2TwIzUGx+1HMLOZpCK6Sdt58Hsx9BRM7CrschqEAyoVKSQ8v6xT1+2aOLaCPtjTwmJygm60GDMmDzKdPlcUFH0oIK3R9JFDjHfm9pqaNEMPCbiWIwbrPaP7XN3oeb1mfn5cVNy59qvWxMqC9uy0XqYpITDGYUJDAc/jxLv/lq6vMMnx0eWLxzCDzWvihnd12koCwKdWoycRGUUlqorfgYIKeLWuyrjQcWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB7146.namprd11.prod.outlook.com (2603:10b6:510:1ed::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.23; Wed, 6 Mar 2024 14:26:09 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 14:26:09 +0000
Date: Wed, 6 Mar 2024 15:26:03 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <Zeh8+8uK3GoN7fWX@boxer>
References: <20240306025023.800029-1-jesse.brandeburg@intel.com>
 <20240306025023.800029-3-jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240306025023.800029-3-jesse.brandeburg@intel.com>
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB7146:EE_
X-MS-Office365-Filtering-Correlation-Id: aeadadfe-6e2c-4d8b-e2e3-08dc3de95dc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gceT+q9E6A6H0F6pc3PSXwbuNDDmAyIQx9N5ODOI4VWayZklrpP2Cr7Q5rw51r4xzymjbgVv6gWVJ81jLHpuvebfsco3B3Fl0rHN0Wl6O07oE8cFuMEDYSUjkx+6BUDGgpDg1OV+U8k/JXE6hQG55EeanYwSOaI+43r+3oSTn1o2DNf07gTYzSgy3zwzPMktJ4pCGApMukEK/R8Z+vf1vWULUCrgyKhf5ShwVTuYRIWH3QFcHG4sOMKsfSRPX6Uj85NCWPysEfP3CdWJVAoERa/gCsDUEf56kFH4R2+0zLRp3t0y5BbnmSzOwmQ7BIstVXwzsgtPCQz14uC1Vs3MKxREoKp0k2OSqaWNVw1p1BAaFw/LHTZEdymTvO6PvsPow3hBmuRfaKDjxrRaYYWsFVS67CkcZD+bVdtVsz0R9vkrymEvJbgAqZ1ZtBR7nGZtJGssHGpp3cv5lHGuCoMUaMgRcByuaVXg1wV5BE5n4cg+oeyJi3KTzZS7eTxwhW2qte/10pd2d/4cYfbTcqMOpVC5odEIkqKzv3GwUw1AHzIZp/JI1wLu2YHZNHozvY4CMNkOavd7s56IS6osmiwY82LiW4sPHA1u2BQi9+P8c6iMePpVxYa8AV6V0t2xl6vmpAlYkxxKzAWyMr3Tih7R9zIOI6KYbsGHL1O3JY5xIow=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jr45gmMvhMqBYebqO71gac/G+oGx0Lf2DZITUYnSPlh8WL8sqiQh+ZxH2A2Q?=
 =?us-ascii?Q?DmrwegUQCrKYXmJLkE2z5ii6fw3KwUcCPRKnOb4hHEHueSt7b1wyWE9y+RQn?=
 =?us-ascii?Q?IIKpglshkP//245sn5lOA77rmCJU0odr4qDvKzcJIzEaxvODoVRylcPMBNij?=
 =?us-ascii?Q?GLvhoCp/VOJKSBitBg1iuTc/u7ph3Zwr+OwgH0tCroEqWQtqK/qI6tfR+VvH?=
 =?us-ascii?Q?3DpWo0mhYVWg8kaq07P1UC6ntyMAKbh4oibLA24me98xI+895KbwyBP42S9d?=
 =?us-ascii?Q?mIizG9oPMEmkKF2jQ9yHtR2TrmXGmIKLem9TWr++Gj7EbFanK6b7LFeRSydV?=
 =?us-ascii?Q?U+75SNvwtku43P2LWPqg7tpS1wOEURkn4Vs+eJ14HuOS7yrcHmsII0Ck+kp6?=
 =?us-ascii?Q?CjmU7C7ihQCyVsq4AZTX2q7q9/FyO/x0CbPgO8xNBpqHJuXt7K0RitXgQC6Y?=
 =?us-ascii?Q?4q2VNEvuPVk/XQ8dhJsDlQHxYZn4VPKuIk59bqIjcAd9uVqpUoveVUIbeN9K?=
 =?us-ascii?Q?72My9+0xLoUQFgV3F4B/YmS28VTE31khRveOq9NdQIqKeHQqa8J7xGmXBN2v?=
 =?us-ascii?Q?FlwN07u6BOgkyzPtIjNXddX/gCrmu5ChNUYdyojtVQxnyDCB1qex5EuHOADk?=
 =?us-ascii?Q?3x6nlb2hzbQ/OrGnJ/EqAVeA7t0igdITvKoorBpoL+Jbb5DUqsJIMPiL/l6+?=
 =?us-ascii?Q?V2vh7d4niw31SQh9oXT9zjEnFqCt/gzFCf+jMbR+XP7IRYC5A2MOEJf+dcqJ?=
 =?us-ascii?Q?sFTi3FMQhA/nj6MQg5tpZcJkDS3/a4t/X9puSEHKD/+CMod+prjIO0gLytBi?=
 =?us-ascii?Q?MY8S/7Al+2c3y4eHQlwuAm0daQ4K0l5yEVTfrcdhY0ZN1gyXdTq94qTskL2z?=
 =?us-ascii?Q?BELZiDoWkWYL5rrxLbkDOCeKe0A0G+ug1MVEdCS+uVCo2KwkZXqFGNVYcl+J?=
 =?us-ascii?Q?dlTKA6E+MS/CaySVgrHv2DP9PFQTEGCRM+ur3V7QyzBIOw7KXRwFXKuXcMIe?=
 =?us-ascii?Q?oqvPTCavG3/A+gsMRcl01DI5Os0AlQMHNR/C2ETtGDlVRWsbF/jMQgulrt/D?=
 =?us-ascii?Q?7DIGjzdia0CFedp0FgjdRKTgbRh2SBH9CR1AO5G4J8pfXEc19OnC1lL6Q5BP?=
 =?us-ascii?Q?Dd+sqYj6sMlY/S+ayhNflHqB25GbQvAy4gFr/B9F6M9oXm2+RsufZI+VA6Mw?=
 =?us-ascii?Q?DLexkBd6wTpUleI2hFz1wvP9VpzYsofn+tXzF1XSqFC7N1N3zQVA0EPTxN5c?=
 =?us-ascii?Q?/veruMLhElKpNSc0plF+ci/SVAt8ZGHN5XzDuqP6Frsma2pphkuObuObvhjS?=
 =?us-ascii?Q?W5xU/ou3+DIRw/h992AyVSUNan/om04KWxGx79pYe1Z+YZFXdOdPlHmblOnQ?=
 =?us-ascii?Q?WWgbj+mmrBhan2uqCPHRmE7N4BFljrxzNxVc8gUWwveskVnMuolRS/VuL+wB?=
 =?us-ascii?Q?F2h1QhbBNOTeFYAIsAq/0SRn79XpKXVsNLBRyaPm42UFzrJ06MoYOZNC3Jr9?=
 =?us-ascii?Q?k4eTg18zD8m6d4EZpPfrojlMGGpHhptOzMRcn/34drOOgcV3kVVbth5pDXwh?=
 =?us-ascii?Q?U1iNuly4r2qow2hJS9/yMgV0WqyKZAArPM7XCnIx2p7eSUp6R5nzlNFE7CcV?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aeadadfe-6e2c-4d8b-e2e3-08dc3de95dc3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 14:26:09.0496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RzZ1EnysoXP49rdU446ifFQs7m6YiD4ehUF5EE99xgeH+i/ulP9OyPA9QtfaudnWksqCjT5eduI4cF0N4WAPXQ4gZWlZcptrdGLJvp0DIyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7146
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709735173; x=1741271173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8dx1VFbpAEA6ilTq1gykyFhU+P9azzT1W/iqc5tblNM=;
 b=RUoot+owTxq1puWJ3zDTb7Hh2T6NbUs5bE5bVMIBYfK5FGx2gT7gTsEp
 +hPle5FXVEDl0mcAWC1sky6mLL/PZN46j3IDNG9nZLfus7C/4C23mwenj
 J4Sr7D5lq6YioTO9os5iJNmA3eUbUzT/pfjbv5biC/K/qeAEfhSiKke9o
 Km1DeLOcR5ZIjZpnt07zTPSBh5kgJu1gbitZnoalRd5u8rLQZjGhM8jqN
 eJT8erb8b13dDWr7b/wukQkDSgbsHjX8L5Hl7V3DsegNKbBubxEMbmvrY
 d3Q46fywRbQOdGOK1kOiy7G4LCsY06CD1j2gvPbL2ZvI0TPVm/xrHn8sj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RUoot+ow
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: implement
 modern PM ops declarations
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alan Brady <alan.brady@intel.com>, horms@kernel.org, Jakub
 Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 05, 2024 at 06:50:22PM -0800, Jesse Brandeburg wrote:
> Switch the Intel networking drivers to use the new power management ops
> declaration formats and macros, which allows us to drop __maybe_unused,
> as well as a bunch of ifdef checking CONFIG_PM.
> 
> This is safe to do because the compiler drops the unused functions,
> verified by checking for any of the power management function symbols
> being present in System.map for a build without CONFIG_PM.
> 
> If a driver has runtime PM, define the ops with pm_ptr(), and if the
> driver has Simple PM, use pm_sleep_ptr(), as well as the new versions of
> the macros for declaring the members of the pm_ops structs.
> 
> Checked with network-enabled allnoconfig, allyesconfig, allmodconfig on
> x64_64.
> 
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: added ice driver changes to series
> v1: original net-next posting
>     all changes except for ice were reviewed by Simon Horman
>     no other changes besides to ice

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/e100.c             |  8 +++---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 14 +++++-----
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 22 +++++++---------
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 +++----
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 +++----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +++---
>  drivers/net/ethernet/intel/ice/ice_main.c     | 12 +++------
>  drivers/net/ethernet/intel/igb/igb_main.c     | 26 +++++++------------
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  6 ++---
>  drivers/net/ethernet/intel/igc/igc_main.c     | 24 ++++++-----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 +++---
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  8 +++---
>  12 files changed, 64 insertions(+), 92 deletions(-)
> 
