Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F4B632BB6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Nov 2022 19:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5532D60F36;
	Mon, 21 Nov 2022 18:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5532D60F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669053951;
	bh=8ylVQ54OFFy9WjMj+WqeT3K0CL5+Oba6e2ai/trhR4Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wKEaWM0vkzuXyUqfXlfDnmOvjK6w0nC6QyklR19+09LMYFbComYaFAqaQ78gGOVD5
	 SCn+cd3rTpLt3i/7CgJT44d/sCZ/I3XEhj3b7Yn7JolAVBkdwpNOiMeEKBZPAI2IKm
	 1DLZkqTyO9J54Z1l6s4wMarbMeFjSYKYw8PyxB1eGLNb5jQXzOfJB3ip7/p0ZTcLPY
	 HrKuU3Y6yqluRhNqPq90RcG+2VdzJGIHMGANpBPfoZklWo50wcXEE8jUtTCX7VjqJs
	 rhhKTgt6HOiimY9F3DeDZTBF3p8tTjoi0qc1+97/Ds55uXNhxRIygsrByT2Xr2w9H0
	 JwYjq0P95gFRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wdg9QDN_N6N; Mon, 21 Nov 2022 18:05:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 439C360757;
	Mon, 21 Nov 2022 18:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 439C360757
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96A381BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Nov 2022 18:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CDD4401F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Nov 2022 18:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CDD4401F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wODF6AuMmJZ2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Nov 2022 18:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06B2F400AC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06B2F400AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Nov 2022 18:05:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="314772863"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="314772863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 10:05:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="635261007"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="635261007"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 21 Nov 2022 10:05:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 10:05:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 10:05:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 10:05:40 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 10:05:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NteMs+RGrAfNcKf6AbJcdI2Sp7rTASQ9LQks3whEpJ4XKYtiLG1etWzOQxDSlrDSrW+XV6MuChrIy+GpzoTZAUCR1tlGmgz3tebYhKxUJFyrCmTFe2uH54cjB8zDfPNwzzHWOMM8FHbcQ2pngHQeVtzRAsSiK+HdA5zb5ZvsX5TmeGM5kwMjzl6ptDSRRgmrUvaPyfsKGNWqPgyN6xYzTvoUYnf66p9DE0Zvu1SKdvKPnhGO5W+dzGstV1AE3Kpe6Wtg3ywvDgTEANDhayek8uUWA/mhVe2rabThIDrZNcmhMTIR+ey3rr+vtt/cAcNnettycbNQEcshVZ2aAHMC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ubtBNfw02JlzFrev6CoLhjQdy9mHSRDzb2wBJ1ZFjC8=;
 b=JLTeeBBULVLEdpGQWOiS27uN+QsoaEgMJHEdL080Hil5pvo2wsnyFeToRYmk9i+pjKua4+asl/Pj/ae/6XYM1qvuTHMPX+ugFHnjD5q/Nt4lYNAStCQ8RjL/b0exC+B3kRpH1oWldoLIZUUNNwFoLmhZ9vetpkcx3LgF/GlPAiJgh4W3++WnpAG2xp9pfKCPm8MdkdvZ/wrxDP5Ch0H8YePiu+yS77zJlbFvm5fTJqTA9Jr8j//7PECxfua4zRs9zE1pm/+zj+zjgZh7l+GqEILhbnU6cS5bAWBGs6F2DwegOS7gISk5dUChno0EkQmebtq4uVVjPhHZUe6SNonG2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7444.namprd11.prod.outlook.com (2603:10b6:8:146::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.16; Mon, 21 Nov 2022 18:05:37 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%6]) with mapi id 15.20.5834.009; Mon, 21 Nov 2022
 18:05:37 +0000
Date: Mon, 21 Nov 2022 19:05:25 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Gaosheng Cui <cuigaosheng1@huawei.com>
Message-ID: <Y3u95fVsT/7zXQQp@boxer>
References: <20221120061757.264242-1-cuigaosheng1@huawei.com>
Content-Disposition: inline
In-Reply-To: <20221120061757.264242-1-cuigaosheng1@huawei.com>
X-ClientProxiedBy: FR0P281CA0083.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::18) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7444:EE_
X-MS-Office365-Filtering-Correlation-Id: 07f67d67-b289-40ce-f354-08dacbeafe53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wXDR9V2nqA7p5YANWMBVMKdQqqg+z7I4mT2TAiDJFRLyxNZM+vGkxZbaZFFw9KfHd20FLoWsee1nWpHDe/2o8UA4/5hQUCkKNaBRqJuDaxd4A7k5Huagv7fP7BNvlHiy4I7Xsn3sfqhvQkOWEdGGlXARlJKLE8uzOjqGJuBNhX/lD1Lf9BCNVwcQU6F46D/3Sdll9iaogoZ8nLqnIig4jmdcSPbiCV+8ZPbmh+XH7kK1j2uB35bIpdzcPPSMAmVIRm9n3Dks/13U9xLQrnmfS6ITzIyB8LEdgzpZCTlEAn/9XYwTZzNlj1Roef206JkhhYmNRnltw/Bn1ncoKsjzxZWelmJa8vz42yAr3+0oV0V+vwAQv5A2ggp14WnN3UvKZ9DbOw9QlijB0YXvO4zAussBJ58MzJvxnSHjGLQHBDnsluu/UnAmpJP0MqedL+runAcufJDP485NRE8Y5EnQmB7HhBEzGF4jrQntW8B87pftx2NemFn4ShAdnsPGLqsqSgDnl6G4F7UlOk8RXtE7bk4sDUqnBbQVHgdRK8R14Y/I1/noR62Cu1hqmKPMnTURno2mZH6JgGBdW/S0PsQdLYhUAwSW0MbsSDbfUZ73lpe2CQfN8hnzr84hBjuHr85ROu6/dt3/LLkiRHzREp3fjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199015)(41300700001)(8936002)(54906003)(6916009)(4326008)(5660300002)(316002)(66476007)(66556008)(66946007)(8676002)(44832011)(478600001)(2906002)(6506007)(186003)(6486002)(9686003)(26005)(6512007)(6666004)(33716001)(38100700002)(82960400001)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DfgVEUFfKJMhiqB2RTaOOJHmr9V0rCB5PKVcITDZM4nmTwSgXkCQXtkq6ezn?=
 =?us-ascii?Q?P5xbZSrLFFjHCCtYh6SjKSNTTVrrB4u7eqt7DNqoykwyFLBCKYZ9yrF0GO6S?=
 =?us-ascii?Q?DLOFc6QPvFaNU1qyrWNlE/Vmzf+3QyGF+SUCbcAYSxehvLLfYX4giWpPXgTz?=
 =?us-ascii?Q?GL8YKVAf0MtHPIKRPhxQgwjSweDAt3VYQD2LlwYMuNWGGATaeIMTuT5wp8Dk?=
 =?us-ascii?Q?POjjdlkLDVRTxpUwbSGQRmRr4R1icyFYRK1oXPAcoyCuvJ5UctmEAt22VgmR?=
 =?us-ascii?Q?z36YG1ynN+PKdh1LTB6Lj8PNk/rLtGfCn8ax8RSfRYKj/nhHJNp+kzrn+vAA?=
 =?us-ascii?Q?QVo9XtfNj6cv5HpH/Octow/8CQPa7yxLUqrGSvPrGeQ4Q4e1z3pAsgyvu7qn?=
 =?us-ascii?Q?zb7Y8sbE/RlyfLch8QgE/SHdCXtNqMWMEZ/3FHxVSixSFpB7gURWfTNhO4f6?=
 =?us-ascii?Q?4hBgojMNVHL7ZfhZIFLUGkMYuEOneM7vKVF+6X8tnTT7HjtuMC0L10qyJlqS?=
 =?us-ascii?Q?sAbTAHhsdw0NzbMQG1y7LspRgElF1kQPieSkk7hm7abiBc3BUBFcMTUUC9Io?=
 =?us-ascii?Q?smKqVZVHg19o2TYAFvdt4ag3fP47w8EhVGSUHEX3QEPfLoXefjqUWNeFwqhm?=
 =?us-ascii?Q?sKUFpMgZIGYUNoVFp5UNqGGJe0dQwI0gX8JRrCnNCvuiFbkxlxzf9K8wviNZ?=
 =?us-ascii?Q?/18dkiWMbUedvuNjOLoP3gkcd15QZvC6mhP5Ty2Phugh3oT2yNsQP0Uj0Z4D?=
 =?us-ascii?Q?Fowe2asupJAfctA+C+NVZ12fbTUcbrkgTLRK+xG4SnvCj/X6B6cD4d6M0s3s?=
 =?us-ascii?Q?QPFcnbNqZ8NEqwZZzQzfxppif8uuoz1b+ApInhRRAYQtdhbdUlmXDNA/gxtF?=
 =?us-ascii?Q?qnZccBDMlntcEwJj+ny5ms+zKLuhA3NSnz103VU7ImQKxmVANow2czdoULlJ?=
 =?us-ascii?Q?NfZW/P07ck1ejkSKnZ1Bjf8oKov6pGu1aua+N5MkuJY7W2KsJa9BNEW8f5FC?=
 =?us-ascii?Q?V0EP6GZmc6G+bdnmUGlLOCvGlc7sSsv5kj1HSfEGsyXh3QOvla20+N7KXUSD?=
 =?us-ascii?Q?zdjIFMvty9PWuzx6ii8YIugOOKd5gt6EvWo74f5EAdyJl7MQB3/dPuWaEGmx?=
 =?us-ascii?Q?ZwsrRVTswOr0pZECkZ+no/jTYTgwfgVAwDJS9c7YCCEolRI039+EP9mMqt6L?=
 =?us-ascii?Q?cTJzxfk+vVidlQAWN1LMzhu7OR4Urln1cVLJ1r4xfJ0onetIcJ8tOiDi9R62?=
 =?us-ascii?Q?MPMtjKckVxGV1M3Tt2FJA31WfVuC2+tvnY5EmA09Lxk5M2dbOiCDTVh+OiSv?=
 =?us-ascii?Q?Y7F2sS3+9Zy5/9i3SmJjOaciVwEC+NFoEqSVI22/OVnBFsF4TeMMT6ZjX8Ch?=
 =?us-ascii?Q?hknrXmTeX98HdrqcDsmX716Md3qQDEzqR1Y9jOBhAtt2iCZ4EjfdRTRIe+mz?=
 =?us-ascii?Q?JeYdw+gvGwspt4pDbMThrSOlOFAO9vv54XA8UsMX+ZEND0QPwqcEVFVb6LPD?=
 =?us-ascii?Q?QvkXhhMiQMdZUfeqLe521iXxrmTLokcDLkjT6po2Cdf5FdyzApXhEVW6n22R?=
 =?us-ascii?Q?uXvReiXYBFDkohRks1hInOqYxfmbBD5Ih1H/euVl0S8MH6VmrX9fq7UU0cAB?=
 =?us-ascii?Q?cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f67d67-b289-40ce-f354-08dacbeafe53
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 18:05:37.7296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1VIciI97CCeZHJwJubL2Xq1/kaxPP+UiujBUKl4R5PyQc1Zqs7K8WJGTDIIQQtpm20c4Cx52nTfQ+vQjIcoITdwcB5efnZDdBNr2dZyAqCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7444
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669053944; x=1700589944;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4brfBwP5/Nu1yASFmCEdAWEysRPv7AfX+li7GJ64rb4=;
 b=H/NB1L3IFbgY8X73jeEN3zi79RutY05DouWgQFogxUzfgFQgTvf+wB1T
 nt7Wm8q2mpX+vC9lqMZGYe8HLw9Aad7A48hUGntXc+pgKIGqacfmNGzl1
 uibwiA2JozDauw5ElAEgAD1zkD76ucm2oKu5AHdc9RJgNt99TcfjoCLKV
 z3Zu/WnOu2rnKs+9ZpQuz9NzW1oGaOqj++xoLEsUopjGhb+eFPv2N98BW
 GCYPTgflUA8eZWImxyKLUeCgF0OPUqMDnPlQxMA3O3hHpR46/egF/EhSS
 byvmOnfOZldF2ZUR0DhtT5AkauHzoUnN6ooPErF6tcN99dSNbMOe2kpMc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H/NB1L3I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] intel/igbvf: free irq on the
 error path in igbvf_request_msix()
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
Cc: "alexander.h.duyck@intel.com" <alexander.h.duyck@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 20, 2022 at 07:17:57AM +0100, Gaosheng Cui wrote:
> In igbvf_request_msix(), irqs have not been freed on the err path,
> we need to free it. Fix it.
> 
> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
> Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>

Hi,

> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 3a32809510fc..e212ca16df00 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c
> @@ -1074,7 +1074,7 @@ static int igbvf_request_msix(struct igbvf_adapter *adapter)
>  			  igbvf_intr_msix_rx, 0, adapter->rx_ring->name,
>  			  netdev);
>  	if (err)
> -		goto out;
> +		goto free_irq1;

s/free_irq1/free_irq_tx ?

>  
>  	adapter->rx_ring->itr_register = E1000_EITR(vector);
>  	adapter->rx_ring->itr_val = adapter->current_itr;
> @@ -1083,10 +1083,14 @@ static int igbvf_request_msix(struct igbvf_adapter *adapter)
>  	err = request_irq(adapter->msix_entries[vector].vector,
>  			  igbvf_msix_other, 0, netdev->name, netdev);
>  	if (err)
> -		goto out;
> +		goto free_irq2;

s/free_irq2/free_irq_rx ?

>  
>  	igbvf_configure_msix(adapter);
>  	return 0;
> +free_irq2:
> +	free_irq(adapter->msix_entries[--vector].vector, netdev);
> +free_irq1:
> +	free_irq(adapter->msix_entries[--vector].vector, netdev);
>  out:
>  	return err;

Besides above suggestions, change LGTM.

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

>  }
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
