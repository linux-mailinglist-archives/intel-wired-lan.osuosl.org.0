Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518F2730455
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 17:57:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA0804181E;
	Wed, 14 Jun 2023 15:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA0804181E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686758227;
	bh=RF2Mx9pkx6+aU8dckPCnKWb9MAfbVeoGeja5rhwLmEA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C4WLgI5zafAT3QGcnZjWmiwlMjdUMdY6mpkyx38TXwHhDjkLls2/36/qAgfGcfGpQ
	 CBZjmpVXnGEdO1zIruw01hl9mvaAYy/XaqSfTpnetiC+pYNovKsx6d90TbYrkSudVM
	 RgFnsVyRMEF1ZguL+mNV4kASh+Tvt5Xvc2PyKvbuoKJskNvtSKfR4y7cvSzKHy1whz
	 bxrYz1bCgWtHn12HesEi3bWaB8pq+1N8OFdZ0+mvOBqqRYDQnRl1yxcemFvSW/TJ4O
	 nZmu/loq3+xNyE7Hi0ksLbwfqpFxhMVuhnxGjNuyK1SXCm358KxEztZz6NmxmTMNME
	 7JWE5uHYY5GxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6WVSp0YXP7R; Wed, 14 Jun 2023 15:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B75B741814;
	Wed, 14 Jun 2023 15:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B75B741814
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C20891BF303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 15:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9944783AC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 15:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9944783AC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YUUYh_CIW4H2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 15:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AC0D834FC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AC0D834FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 15:57:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="357535837"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="357535837"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 08:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="745134309"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="745134309"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 14 Jun 2023 08:53:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 08:53:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 08:53:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 08:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oF7wdc94G8J7ikAUp5qSLshn0x1a/W8KfnpRms98jxGwNdOqq1PNKBQU/NKnWHKUidhNZRZQ6c9nIkmrdxaTpgl3lIHwzv30F1nI0z3h9nlE3Xp111O8FCWOhCpv/qefCCSNUM3yECWTmbhF5qHvZN5tITtZUTE95UnyMkE/e42EP2qRBrjd++wL6A8AHRGC3sywlY6AvIlBnBaX7eR+Os9mFKG8V8zZkVVdfuDwgXD2k8PAQrJK4MgggwO3XEdQiBfXaysDx09ZLlSj1zQB3x7sstj0rDBv+2ES6okmKqXD+m7eVqwzRNwwzJh3BHrEWHGB9zOFJ/kVVp5ZQD00SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QrNm7dZECSz+DCbO2vQJYiURCiATh2tBJDZqD8qLp2c=;
 b=S7ygMmkVBrUCurXXrLP9yX86l5HwIw0fIVAEItXT2CWYz22BWDitIoZow+oCvYue5tfLe9LwwLlUNseetQpsJjy3QyGIIBq1vzFpXBmAZNo/l85M1CiiCSgMNvmePs5uCOfZ3lh4qOrLxjKyQz4iWD64LzYSfpCsk9IOdqWh20roIMctPzfI8GV6LOuioUFOWHmx67oqV+NVmixuRsi2B8MCVp759yb4qJ/fLdA1QCMQyPlnCw71q2BaQ6hAkVeIiDOjH9cPTu7PrCZK8hZ8OQf20SKLmhYBZGgnekkhxm8RqkZq7VM6bSsEKiLqYpZDZ4k0hg9SCKrtVzN7mDDo3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV2PR11MB5974.namprd11.prod.outlook.com (2603:10b6:408:17e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.46; Wed, 14 Jun
 2023 15:53:46 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 15:53:46 +0000
Date: Wed, 14 Jun 2023 17:53:39 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZInig38lFC5ldi5K@boxer>
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
 <ZInhqR2RspvkMOYF@boxer>
 <041fcdb4-0ecc-6ced-d77e-e042db186fce@intel.com>
Content-Disposition: inline
In-Reply-To: <041fcdb4-0ecc-6ced-d77e-e042db186fce@intel.com>
X-ClientProxiedBy: FR0P281CA0067.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::21) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|LV2PR11MB5974:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e420faf-2410-46e7-7a0b-08db6cef891c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hk2CVV9oZyM3eeXkdi+hARVxIJpKvIibaJAvWk8nRE2hEb73u3ojSoo83x4TyLQN0DK8k0cEZ6LVZyzd3YU3K38rmh6C412vpXSAdLDsFyOJJ8vFWVGh87jq8TW9bq1q6/Ur6jNQOWbs9inL2QaIqU4ixAhn8QcUrfbz1eT9iMFNtx+hvXTk9NwBYp653pqHdwHJ1+VdIR0fkJpqebODFzFjoxmgJSt7KVNQ8HVlSzYnz24xskmh9MKL/9Ow22NQ/67tiHduxP+781pLhUX7vloNHa1iL0pBk7aDLyy4jhtTMFieDV0GaFH4gnqGmFH2UxFSPhYq5J/P2ngPCLnojkZwigVFhpOvibH3xClHVWyvhP+A9s64jWoezCXQKppSOsLlTYmGhOeskNDawQlBOAAmoOMtXHtBZI8wQqnHFFw8xeqHY60FSXq4T6zQNu/JT0ZrMisc5V7cBkjbI5IIRDDyIEzutgVbV2hGAqCUOQemgX8SK00kZlWEa2AHcPEFlwGL7mRjWsf6vDVb4XigRHugulg5JjQLJvEgXkcrwdx+e3+rWJ2GSaeAsytKY6ha
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(346002)(376002)(396003)(39860400002)(451199021)(44832011)(6636002)(4326008)(2906002)(86362001)(4744005)(41300700001)(316002)(66946007)(66476007)(66556008)(8676002)(6862004)(5660300002)(8936002)(478600001)(38100700002)(6666004)(82960400001)(9686003)(33716001)(6486002)(6512007)(6506007)(53546011)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Iu3rtMuxoPZ31piDJ2FHpDUIqJdDkrUkhtz9gT33grdTM4/3laWsKs7/7ngj?=
 =?us-ascii?Q?Z0ny8XWCRAFCgXfMN3Kb6e3yY6O0GQnB/BM7t54l5s14kgHTyaAWwQpy1XPE?=
 =?us-ascii?Q?Ic+o3RgVqqR1N8/v6WDeH2T4iT0TD9laY2OkOOrSm13GFeFcHcpwtUd+GfnI?=
 =?us-ascii?Q?/kksEAnCbnEgm3tH0StXy7af1QiW76HyZBQPbC8rqn71naZggfUI3mn1wXmP?=
 =?us-ascii?Q?6Wb1gyDnsnehvtMPqYaoPIW+VaZu/SA4q4cyyvmMZe5z9Gimf4GrpdUN7j+o?=
 =?us-ascii?Q?9Xx814rQVIRBlLxJU26TXsUTKK0JfU31fuYdZ4A9pfw8YyeOJl6pW5SuLJYj?=
 =?us-ascii?Q?HfbSdeJ5Gcxzcr8NeiaB/XKOmr5HEJjwTBMg0RZCs3e5TTrW3rNtU76AhAGT?=
 =?us-ascii?Q?MPp5Il6nqTIe/dT1jPAHjyBtVbm/XP9mQppGYuLm53BtaorIV1loSB/eFiWY?=
 =?us-ascii?Q?wZ2BHwEvbR6PUBNqyVM4jYYso+IURlZItOdIVW0wXO1A/CYyx9Tv/XovXy6m?=
 =?us-ascii?Q?7pC8u/IBTRzGktHUoxkFReYDqknaUyAMFl+oK5urHRNQM7HW2/mC16/l4D07?=
 =?us-ascii?Q?yUr5uiB56gFDjZr4HPhQwQ7w0NhK/EtjNp2wEv2HUDfp2iM2Jd/5wgWFoOKN?=
 =?us-ascii?Q?jusBEdGY3oVwBHrSEKFBnjiQxHjKt7knya/1Tl1+9iUDBfE96pGEfjDOUAmO?=
 =?us-ascii?Q?/nMHQVf0VCuZ4541w73b+8lkhDqQJuNWhf3n3bY7mIDnUev2xHp8QXmQknYG?=
 =?us-ascii?Q?6YsvnuXb7Qhyf76unx8D8zttADJ7RuQ1Rf27Oc+b2blDBvD47Rh/Klm5m5cA?=
 =?us-ascii?Q?a/h+NL7D5MmFyLX+kDLHBaImWm9sLhsGim9UJd5nAY22OxHpzmV/L54omjS8?=
 =?us-ascii?Q?75qtJBhcnljTvePCmYtBl0mymVvNf6UzC0eYmbRKBwdB4u26jbTAdowZ1084?=
 =?us-ascii?Q?qKXjyanK8/TrdRtc5XLf2RUNPeRpBH4wV1boj0LwbGNDFRot35+n4lRZOF/G?=
 =?us-ascii?Q?q/aqoHTQqvmHkJQeDviFdioVM9fp8fRuXXiIt+lTzHBbMQ9AD+ECgg2OC7Zz?=
 =?us-ascii?Q?VL2y+4CYgr7HT+hdUfYXhpsXj1oiX98Jv65r2hCGt7m5X57KfM5FoOfJGKWv?=
 =?us-ascii?Q?4+L+QdFQcOjc2VGyNW3qMcMBIe7NmFvUXSs3hhqKyZ/ZM4/C4FTUd6apVtG3?=
 =?us-ascii?Q?nx/OuNgwM5cieDKXH3TrpLmYR7THT7dWEz4M9aTpK2sNrkifQV+yqSPI2YpB?=
 =?us-ascii?Q?z2We5/kuzzmziWGU+YSKsdgscHVufS1vDLAEpE8BS+XNebSakvzp5YyVEQ29?=
 =?us-ascii?Q?muj/smlmQpbNhTAYYi0pe3PbKZH+51aqspLKIiLr2B3MdYa3sJe8nQvvv1t/?=
 =?us-ascii?Q?KklRoisFdhbILa1Rgmxdm8DIiaxbgRBkGdpl3oLmCi3i7E7sMVqtftiiSAlT?=
 =?us-ascii?Q?uuXE+ZJWjz1hpr8xtKyozDUbAc75pK9Zwsw9350qWoqBDtxB0aiv01UsX+nt?=
 =?us-ascii?Q?kbxw1CH43iDcDOR4iVWSDW4Bk2xOxe65WYy4WR4ymyyN+EKlqT4oHy8v1B9f?=
 =?us-ascii?Q?fPVYz7k8Jt7m7oOhvbV/A7HMTbk5To0PRo0EB63/IuqLmrJbhgw/MYfwSNfZ?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e420faf-2410-46e7-7a0b-08db6cef891c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 15:53:45.7966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IGbzF/7bQGOyqbVyJEkCJM76oFFl0J/Waxp6ieDnnThV7qZG42NkkupumyB3/AOeaCmfLNuCLakPHQD9OR80S3pnP1Dvv8lFVXIa+FJmGpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686758220; x=1718294220;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yQ2ImzHs76s6hDpmjlfcuBPTKIyyhIM7RzrAH3Nl6DA=;
 b=RsCOlco10z2HnOYuxnDoVV+7/uB2tG+Jr+/CqAchn8hliWARjLuvYIEp
 HEKYKIHMSDQIuRds74elwqbvYiMEyWU9+A+/kpQVdr3K29cvAK1mPBpb1
 UO3d4xBb0AeJ6e/KhJqruKVy+79ewEjQ/H+1uvv3QHXcJ6cDxqRsU9zfs
 6GpAQP7isWkv3Z4/NAG6n4UA4+5QQdt4YnQb6qqv3mgQNoF33EQnEqWSV
 r/RjYokQwS/2U1FCmuo2tg18EIhAr/fDQwUXVnj39+nbM/8MhnKht4aht
 G34BQ/ETppyvv4Eut2JSS732NGsAJZg0Vipk/x3e0M4FuyfASwaYXLqgw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RsCOlco1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] optimize procedure of
 changing MAC address on interface
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, simon.horman@corigine.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 05:52:17PM +0200, Piotr Gardocki wrote:
> On 14.06.2023 17:50, Maciej Fijalkowski wrote:
> > On Wed, Jun 14, 2023 at 04:52:59PM +0200, Piotr Gardocki wrote:
> >> The first patch adds an if statement in core to skip early when
> >> the MAC address is not being changes.
> >> The remaining patches remove such checks from Intel drivers
> >> as they're redundant at this point.
> >>
> >> v3: removed "This patch ..." from first patch to simplify sentence.
> >> v2: modified check in core to support addresses of any length,
> >> removed redundant checks in i40e and ice
> > 
> > Any particular reason for not including my rev-by tags on driver patches?
> 
> No, I just forgot I can include them when I'm not changing the entire
> patch set. I'm sorry :(

No worries, I think we can ask Jakub to include them if he thinks current
state of this work is fine.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
