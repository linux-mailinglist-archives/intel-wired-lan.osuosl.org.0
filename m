Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE9EC536C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 17:35:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7A99811F9;
	Wed, 12 Nov 2025 16:35:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V0oNnCXi7evr; Wed, 12 Nov 2025 16:35:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB79F81292
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762965316;
	bh=dbd7UFiEyZXYPzT9fXijJL/ZnARqYr8nYUw1HeSuYNQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZGzU4w7k1h1eBTWbb8IhYg6GP+qJCYfs64jnKturzItdrWc20D6JT6+pyjI+q3irP
	 2AQTQ9Jd5DngZf4HZ/jpiscvSwT9LJQYIIKt7KQOXzf7GDaMPbiRdb+LiMQJuL+Hq4
	 VLFZm8WvLoQo+W6Uo4xjp9Wn8RzgyywNROV1n4lXFaik8xQcdZ9fww4U2FuO2JVuXI
	 QnCPxkPAWYc0S7sikrs3VnoRe5w3XjijpxFABxadHWgRRoFmIZgqixmqZHOlbpf6zr
	 SVB+uwaCh7eeBoxmxFowa/EdkJ54xRNsBwxVTMqUYUApceCnk2/i7b+fwal6cqqVPv
	 UHxVWhcMhvi6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB79F81292;
	Wed, 12 Nov 2025 16:35:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AB95D25D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 19:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AB1240690
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 19:31:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJMhQf1GCCbp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 19:31:26 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 10 Nov 2025 19:31:25 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C95A840680
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C95A840680
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lucas.demarchi@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C95A840680
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 19:31:25 +0000 (UTC)
X-CSE-ConnectionGUID: 2XrGmBNRRlSmnypgbC+ySQ==
X-CSE-MsgGUID: PWEyab8kQAugrh9aTdEJ8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64772789"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64772789"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:24:20 -0800
X-CSE-ConnectionGUID: 9Dh9kcYdQ4CbCfaLdlcc2g==
X-CSE-MsgGUID: 0flXSTweQnSCYIT9t3L2cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193758258"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:24:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 11:24:16 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 11:24:16 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 11:24:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LLgcU/HLfo+DEK0eu282HukakXAd8FeK0EbZQGzAK7nTwcMN9fa54kZD+rsalHiBjzkeU8/cXAHHqq40QDp4t0rXMO49xNSjYNwTKPDCC1wxAaIXXTr/MRSvwyWH/OdrUsGHzjLpgWSv/qWP85M4zX5MIWDAEl3sLlp0Mqf3QfNKZlb07Jppqkc4R0MYFPzGb4ZOLYl4uS5b3lwwx7GU12GtFXAUQN6TZoxxZQlWwFIqM2VmQY+SIH/LZS8YOdO7rCVAUREEGt5iEwmGy/ypoal+wcxx2TuiwvC27WLFOZRBarRDTaG0rzFr1X+5IJCkiXXhlM2UMLIqYGm9OQSM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbd7UFiEyZXYPzT9fXijJL/ZnARqYr8nYUw1HeSuYNQ=;
 b=U3fOlRO9nWyD0axgWJsSzKORQ7rPIMylkup3IgEAKiGGtw2StxeDW+qtPh0iCqHE/QNhxEp026u5aV8RamD+vG/MBsI43OCtKryqHyHM/Dw7uTBDE7aVOPnpfgig2qi4C4YoDwuqmjvqXNpYMbRx957WSAXuaI5tFxDFpS1pGMpN6SkzYsfbuzuo68FDcihSAKmQg2CAJg/csIcIlmnvkOprl5jjwY+bx9urlnUHaj/9M3DyhtmpQuk6xRxcKA3X0C+tCqYyYKrpQtCH2rOQ1BWxbBiDev3uhG5I+aASornSKlLuhJg8cqB3VphlxvRMXV7TtiMNfy0NSPSiCO8wQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB7568.namprd11.prod.outlook.com (2603:10b6:806:34e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 19:24:13 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 19:24:13 +0000
Date: Mon, 10 Nov 2025 13:24:02 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
CC: Corey Minyard <corey@minyard.net>, Christian =?utf-8?B?S8O2bmln?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost
 <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>, "Laurent
 Pinchart" <laurent.pinchart+renesas@ideasonboard.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar
 <kartilak@cisco.com>, Casey Schaufler <casey@schaufler-ca.com>, "Steven
 Rostedt" <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Max
 Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <openipmi-developer@lists.sourceforge.net>, <linux-media@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <linaro-mm-sig@lists.linaro.org>,
 <amd-gfx@lists.freedesktop.org>, <linux-arm-msm@vger.kernel.org>,
 <freedreno@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-mmc@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-pci@vger.kernel.org>,
 <linux-s390@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
 <linux-staging@lists.linux.dev>, <ceph-devel@vger.kernel.org>,
 <linux-trace-kernel@vger.kernel.org>, <linux-sound@vger.kernel.org>, "Rasmus
 Villemoes" <linux@rasmusvillemoes.dk>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal
 <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "David
 Airlie" <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar
 <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul
 <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, "Konrad
 Dybcio" <konradybcio@kernel.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean
 <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, "Rodolfo
 Giometti" <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran
 <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, "Jan
 Hoeppner" <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 "Vasily Gorbik" <gor@linux.ibm.com>, Alexander Gordeev
 <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley"
 <James.Bottomley@hansenpartnership.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov
 <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, "Mathieu
 Desnoyers" <mathieu.desnoyers@efficios.com>, Andrew Morton
 <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>
Message-ID: <dckciwtwu3nt5jxbymqcl3vacaiz52ncjfyrkr5h5e64vchzpf@hhiuqzx3aulz>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-10-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20251110184727.666591-10-andriy.shevchenko@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0164.namprd03.prod.outlook.com
 (2603:10b6:a03:338::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB7568:EE_
X-MS-Office365-Filtering-Correlation-Id: a1d8c331-149e-4d89-507d-08de208ebb58
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nkA2mfyqh02Ogog9N3XRHVdWkgY57lLmEAHda0AKncN00GzSAODzmCE9VEns?=
 =?us-ascii?Q?ZfCE4biqcybIPJy2s0Uqf8CJlc12T4+PQsoyf2yLbOY60xfWpRAvIdqqlAyP?=
 =?us-ascii?Q?hHHDddkpnT0Eb6X4Vju7gM3Wdk/kh5RLPP4vEBBHoHbfDgWXn4plquFivaf6?=
 =?us-ascii?Q?fFBoy2bYfYEkacTGytfRBQxlopdh7yaYFmcxhZHrDj8NNouUMNcYLWnkunEq?=
 =?us-ascii?Q?7d8TftdoLlH0GIvZJ2Np6n3Nn4i1e0th++W5bhMrzaRu75fNNvWClRwKpxwp?=
 =?us-ascii?Q?dIse1i031vovC3aAKlK8m+ayuLKzxSY5HNF8xblkSYwiQRDwLwDfRVr4uyuj?=
 =?us-ascii?Q?1V92IuBUosg87tjXLzUH0GfqqCqVQbGBi1ILu5VZJ/AMN60dY8pz/J4cUsKZ?=
 =?us-ascii?Q?VBJO/nGzl3DSyjWmV1/zxq5vQaTjHjPHrGsvJHeohnzc5hK/sLVNRelhBGgQ?=
 =?us-ascii?Q?nQAygnZvPTjK4CzpWB2Wqtv2SgkVHaMFKHsyNzIhmLvpjb8VpbgipoTyFPfb?=
 =?us-ascii?Q?4j6tF4dywxa+vMdImuT+qEnoDKrkVgyiMYfLBia4i52x2K8Kikrvm//aI/yr?=
 =?us-ascii?Q?Yfi392RRNhMmpzBOwJAAjQSAd6g7flkxkTuWDYWMC2auZL+Xc/hRiySC3F39?=
 =?us-ascii?Q?RlIhv+rnz+LzBriddISat/mvQcCFKXGMROP73bb25BPJUYjgvHV2lPZ21e9t?=
 =?us-ascii?Q?QPemEN1Zia5R2hdtXZP81qnMjV1seUEqqoh62EUUrWm4T7tfmrETJU3dfjxI?=
 =?us-ascii?Q?gk3kq21QC//dSHXdVcOktHXfhcp2VVGPiN4Zn0Lpp/giYW1bg/ZNVGJJCiGq?=
 =?us-ascii?Q?eRljKmFnFXph9zS2yG5ba6Gxk0T0Ha6XUFKIAiNb7WksFnFxWhu2miTnarzy?=
 =?us-ascii?Q?z6+Ak1X4HIkboPnJLE1hpWbyRdgOThFsMBdyzeTFVLQMc947xWBQNohtOJ8Q?=
 =?us-ascii?Q?40d1FD8Bs16R4MdISG6wAf/TpaBkcTs0AwhOxXCUJUKBiDyJ2luXlH8gTL4l?=
 =?us-ascii?Q?PFyvZeRbskuhMMOlGUjCdu5UoUSdcjtqfZvvOiizNWVHGmBMYMQsfgH0MIF7?=
 =?us-ascii?Q?snqzbx87qCb6Xo9ho2/EABT3+4QjUtHfqhaku6V8AMYh4Whjad+2MkyfMK0Y?=
 =?us-ascii?Q?g4a6URArB5RaOIwavBpHaufgN5MFdEXU4cudVRy3QEmYxMXmZFQ0/ATiaGvd?=
 =?us-ascii?Q?brkBO/Mz3QiizE8h0e3brkaBBuEcnYn7skr9jj9SQzoiovnAUOnOJ0KnA2l4?=
 =?us-ascii?Q?BBgdMyAO+YGSM67aT0muqq1qO7kCUxJOaKDMScfoJoTVq/dqoKVC048ZlIV9?=
 =?us-ascii?Q?GxucJsR4nhCD61t9+VkB19TKjCVkLHYq8EFDFwEIpz6ETgrx9PoGiuCaODeZ?=
 =?us-ascii?Q?JXXKq68EToB7bMPTqgV02ri9YuBsWuNGrzTUxLbTR3znH6B2sitJ986zZl7M?=
 =?us-ascii?Q?nQjqBQLI+eiw2ou2D7w7HWD4skcWL0rJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VNJLZDOiKyI1DWBXv4/4uWwIkf7MfM1q/nkSwa5OH9n7qmekkyJy0q07fFL9?=
 =?us-ascii?Q?TzqT23mQWRqB9zGIVAZvrRHZY/46vrOwm13vH8O9cJHJ2l/SdnFgm/idWZ06?=
 =?us-ascii?Q?qw+tnxnBcvTT/OLo1hErAPOuplEcmizv7haC+aFZ5oGqXAxqLjitSHgFPdNp?=
 =?us-ascii?Q?0WZNRahPpwtXge65Q0zDkWSykzy00o2ERm7/cBQEOAViDkrQ8jTZrv03iryo?=
 =?us-ascii?Q?jWH1qaaM0fcoHZExDcNzBCJWqiJ3+fGV+GFQT2+vRX9xkUUcA+NBlQg88F07?=
 =?us-ascii?Q?+hgoXVAhE7dides3VD/A4M8c2OZQHSTJ9NRuY576ai9HS8XGO5S+064CuqCo?=
 =?us-ascii?Q?qdlH6ffwHnjLgBSm8ua4MY6OkMRXJmuuT7wSEi70uymnHQeHFcjOO/iXcRUG?=
 =?us-ascii?Q?ncadYaRam3638sXZnOCLiW8DCxgTC/MkxFglZw3/wI6WqOapyab8GdwPbvo0?=
 =?us-ascii?Q?cYOKatOYAWnObyMKWmHsuH+QRHPrt48J1PLKbJUk9xl3YnMcFpusns+XJoZ5?=
 =?us-ascii?Q?eC8lOINWgC/LBILDuIcf5E9VMhygb2CHvaCMkV/sb3NKBvtpZ01Z/RseCt9V?=
 =?us-ascii?Q?ntOG8G69CxMsE0e12XyZXt5/0y4CRRvrmtkyCT4WGTk6onV0RzjHFyFfeNOD?=
 =?us-ascii?Q?3rCDKEIC2MurJ2Q3I9FpEW3qniKs7uzF+n3LJ6H3cziDajo/W9j4t5kHq+xN?=
 =?us-ascii?Q?OcfeyMnD1BQv10V1rEfWN1xSNJAId4UQCh65FjEBp2WtHShtG8s2N8naqb9o?=
 =?us-ascii?Q?sE1gGcSx43qJvt0K0PHtbfxtDjQ+H3QjekXPzYAJEeKODG1Px+DhbRCztdJZ?=
 =?us-ascii?Q?NtWDgP9IPMU2xyKkyHyYH1WOLawjcl3Jt4ObHQCC1fGKEPG6Lf+5sho/d3R8?=
 =?us-ascii?Q?tpHduva1KNJA6QH3oENPkVmoof/2kBXwxSaiPDgiL9BcaGetig0A6aae756G?=
 =?us-ascii?Q?6I2VPNhebJXrH9bNnFFW2il43sdbP566DFlQA9mQapQCJuvAnXbbkz2dM5fx?=
 =?us-ascii?Q?mx5WJu3IelrWbepAfqtNU/M60S4JtpTPLVrTUdJaB2vMrGdMrJcNtlQIXvFc?=
 =?us-ascii?Q?/Gwcp4AP7p1DAaZ6AXBz8d+Y776tJQxfB7j971cRaWOk1Usflb9ECrOd/Sh4?=
 =?us-ascii?Q?KAt9HQqe+7NTnidPZ/0/5meMY6i+iFM+rFUfRM7m4DyezRs1zZUkcCqdidzx?=
 =?us-ascii?Q?/Oj/+C87ltU+YNzUZcA7blcSMgwBkOEsNm8qcO51lhU73i2Ua0KkIDmmN3o6?=
 =?us-ascii?Q?VXEG5BW010ENdS3qHO3uTSt2XwoF5o5L2lM1VAriZnzALZ+gYjhh8jCPpFOn?=
 =?us-ascii?Q?uIG8+5B3qq/bkhewg2S/bHXno6a1pImxSqVYb7eonCIh+1TRh57/RNpQmzp5?=
 =?us-ascii?Q?K7M7tx5M0EP8moHUIhb3Li2DCoFkYMuw1+fW3rScs3vVR+ERBwPFaF6VdI3F?=
 =?us-ascii?Q?qrz1BGspN8E+Vuap696LxuBWxkCeMj27wIgeJ1bcfJWTcSwB5Nwun3GPQcRt?=
 =?us-ascii?Q?7j8PW4ZACSc/2knb1FHRKe8Sc+znpO3WjMP226mnUaKgRVtnSNrm2Kaohx7+?=
 =?us-ascii?Q?nE6jLrPF9L+4tgSaQhSMHkgXAFEMehvKxeKDE63npdQuwEp/2MBE8bumfrOP?=
 =?us-ascii?Q?bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d8c331-149e-4d89-507d-08de208ebb58
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 19:24:13.6547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mWqFvwYVEcu5i1ofPfqYLwI2ZUICOfUyrilDl1pjWID6WNOH+0qSVs3GYsMAAdnuGDymcqnRsqRu4KphDr2gW2ICMXHu19VYrchoefI5GsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7568
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762803086; x=1794339086;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hK6Paecx1pZBbdD3MSEMRPx245x6PRyR0TYrxCNk2r0=;
 b=lbt8PyVdCRBOOXv2PIG1bjXd+lQT669XPlDg5sVM3MX8v0wW8dxWQ+uC
 gVsMaYYP9TCeTszfR95hAxAmgwMH1LR8SgfiGE4UQT/kyWOV5Xy884av6
 vMVjBQLeSVgH+5MkK6okmFOafmDV1LgbTDR23O0I8tpLDRZ8rrgJhJ+VD
 SsJtXMUW3pH9zwwcd+khymCOXUVHwoBIRtf1nxl9OZ2wEFeOxMFDXPq8Q
 YHjfwX52XCrKLxF+Xcbob+pRKW+mr0R5E1zbKr7Sv9QQixJs7MCdxETHX
 0Al4HEd8lVt78NKfXy3X9wNNx0POa4FYTj4WmD6X0DULnU5I1JQp9eC03
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lbt8PyVd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 09/23] drm/xe: Switch to use %ptSp
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 10, 2025 at 07:40:28PM +0100, Andy Shevchenko wrote:
>Use %ptSp instead of open coded variants to print content of
>struct timespec64 in human readable format.
>
>Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks,
Lucas De Marchi

>---
> drivers/gpu/drm/xe/xe_devcoredump.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/xe_devcoredump.c b/drivers/gpu/drm/xe/xe_devcoredump.c
>index 203e3038cc81..d444eda65ca6 100644
>--- a/drivers/gpu/drm/xe/xe_devcoredump.c
>+++ b/drivers/gpu/drm/xe/xe_devcoredump.c
>@@ -106,9 +106,9 @@ static ssize_t __xe_devcoredump_read(char *buffer, ssize_t count,
> 	drm_puts(&p, "module: " KBUILD_MODNAME "\n");
>
> 	ts = ktime_to_timespec64(ss->snapshot_time);
>-	drm_printf(&p, "Snapshot time: %lld.%09ld\n", ts.tv_sec, ts.tv_nsec);
>+	drm_printf(&p, "Snapshot time: %ptSp\n", &ts);
> 	ts = ktime_to_timespec64(ss->boot_time);
>-	drm_printf(&p, "Uptime: %lld.%09ld\n", ts.tv_sec, ts.tv_nsec);
>+	drm_printf(&p, "Uptime: %ptSp\n", &ts);
> 	drm_printf(&p, "Process: %s [%d]\n", ss->process_name, ss->pid);
> 	xe_device_snapshot_print(xe, &p);
>
>-- 
>2.50.1
>
