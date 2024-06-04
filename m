Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 997FC8FB05E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 12:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 438FF61208;
	Tue,  4 Jun 2024 10:50:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wA6v47fNi4rq; Tue,  4 Jun 2024 10:50:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A3F961209
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717498206;
	bh=KWeM2Lx26UEaIai0YH7f36V3O0Vdlppu4QohQkAFsQM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9OvWhGFtWtVmH5Wuir6qiihLIYSKFRw8jDnSLRX3Xh9xw/oArOMraKh3mlkj2iMjY
	 it4loT/eJTMFc+iuZQKCWH2YfS/4z/NGgGU+3r+1BVfLhj0CiYRwGsQSK9QFi6lt7M
	 R9IGrF8t1BrlW1O4r7iwjP87Vbe5sLO9V5JGJxj9YddOch/JbnT5SldVU7acZQNqHy
	 9243t6PwtTTJANd5ZJDiA0qZlBoK52hdC1PTLY9WBbZoRqdbsuzdPlhDhRG9I16lFV
	 DjeMH5YbbvMGPZQXgvEqj5YqmOuv8mg8T6uWAtpIxiK7zimBiXvY6gMilSSt8vO6WI
	 fSzc4iVAfHb7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A3F961209;
	Tue,  4 Jun 2024 10:50:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 690051BF863
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 10:50:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5420C84670
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 10:50:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4SO5HKBtgVii for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 10:50:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6687B84665
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6687B84665
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6687B84665
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 10:50:02 +0000 (UTC)
X-CSE-ConnectionGUID: TEuu3j3OQTiim1utIV9RFQ==
X-CSE-MsgGUID: Q0e2t+rZS8qP0nxONDdPfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="31570082"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31570082"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 03:50:02 -0700
X-CSE-ConnectionGUID: 7Sz+MaGYTXm3Z36hePxISA==
X-CSE-MsgGUID: lZVT9FRHS+ya71unDKwsPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="41662015"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 03:50:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 03:50:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 03:50:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 03:50:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 03:50:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMT1hsB6OiaKJiUlLAm74rYNCk7fble8NnBy+HiHTPbXlJ/YRVbEr+M/adQ1/H0jU3inm+7k2MtARAEJj/6dgqhHojYkYFag8skSd9AX1E/pbMeTGy+X8z1CHrH90yRFRmG79iRvoMcQeZW7cnrrYRD9bCNU96RdIqaa743LZtyiMXdrKI2sbV3lwArhvXl0l3Pjh80XHx6FDrvdNUL5eRSdK3G8gIaBFUghez1VvAuixq0hDRiwq9mFU47FgAXMpCJ/lFeiWjEL1g7sPygBXIDiNm7xk5zjgFxpwll2dIHJHta45a88fkFw854NbRA5pz1FW0qEjVDdD8iIxcUxtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KWeM2Lx26UEaIai0YH7f36V3O0Vdlppu4QohQkAFsQM=;
 b=UfOz7ZuotZB+ACZcFZJlH/BTN8DJtIJZBZvQOiU6ySO6YdE9VQGbH6fMVA65oK/w040XxwT0vCf6DmQZrgCNgf5IGlCjPIhT3WgPBjVtkOx8v842rCOLT78edLoMYMI03psGxVYoE1iwLN9WFilulc4j/JOMx0CtbfBMeufJg/v2ZH40wWCWXM3WsXu2p7CGxPwVmUMEP8y5RYj3286TfR0opEM+uNVeHrY1Yi3VSVpKf9Xk98pdssYOocARnSWeuCXAku7yODWmHkhSpCGd69uou6ztdtA3a+zPYZ2LteSYKhs/atzrugzgATacCpBknyk8Yre/p9S1wHYrW27SAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 4 Jun
 2024 10:49:59 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 10:49:59 +0000
Date: Tue, 4 Jun 2024 12:49:54 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nelson, Shannon" <shannon.nelson@amd.com>
Message-ID: <Zl7xUpALEMcNBMOb@boxer>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-4-maciej.fijalkowski@intel.com>
 <8c933691-a31b-42ba-b1ed-9bbd20491963@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8c933691-a31b-42ba-b1ed-9bbd20491963@amd.com>
X-ClientProxiedBy: VI1P191CA0012.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::15) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA1PR11MB7037:EE_
X-MS-Office365-Filtering-Correlation-Id: bf4db5f6-a8d2-45bc-f3cd-08dc84841465
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9OKd5Hh/Sbqqp7vIfGKFbig8CWeV96O1T5FFx+K/D07FUpWY1o97zXrRbZg0?=
 =?us-ascii?Q?6ql3JCnJzchI5PatxDGAmZJ8VbpkWdJgUgmEeyCHczdzDlfzOwdFAZZDirJm?=
 =?us-ascii?Q?wDOyGX8i14trE9DnHWTOV8Z3zl54DOa3syNuxzCw6/c4Unzic1KXKr8ucBKn?=
 =?us-ascii?Q?fg9bHtdeybRRHe9mB+iHhKlTuOpHH3AGhTwYWjtNeiRD2Ndvo6phkXtpusoQ?=
 =?us-ascii?Q?41CwG6iT/nCQXJ3MMjFNOMhXxZ6RwOsvhkDiX75uAgToCBShZnoDSvtVnuZc?=
 =?us-ascii?Q?aCCp8PvF8fl7yAjcRZ13GpN9bmHgT368eNgmHhou4Et4yLNDvT+qb0jK4CsK?=
 =?us-ascii?Q?8AEPnkGLroDVqY1wH2i7ZL6rC2+syDwKtXqI4KVMJiyEQm8DanFvibg5JLRt?=
 =?us-ascii?Q?RdUyGoEyHQ45dtLm27Sl67RUwdTQlJM/+OGSB3hITVdEXKEeF7O+MLHhy3Rk?=
 =?us-ascii?Q?O0teeP5Hu5TlEiRE23VvNq3rU05YiSya+6erb+IwVvCEnb6c985qElP5TIpV?=
 =?us-ascii?Q?89+z+sTuYetLD3xrFtpLmKnj2hl88tm8Ju6i3gIVMUl6XOqRUNq4GpZh9buK?=
 =?us-ascii?Q?5+ANWYIpUbPVsmw3bc1SAtvZfcwMZMeuxAh2tXSzEYDtxmdjw1kfrjms4BAW?=
 =?us-ascii?Q?JOM84Q6ZpaT6qe6Yw4+/VWXK4s+k3qMaO4DO9ToZpMsywpSWZKnHpu2LcjgX?=
 =?us-ascii?Q?LUhQmersV909Bx7aUIqk2isRpkI4BxgvqcAG7M1UWOC9YlvyD5FXJK2HPoSG?=
 =?us-ascii?Q?xlNHKsvTq5EDotCA9XG636laRI4gVqrA2qAX8C7mZ/KB/fqe9oRSxDedJ8hG?=
 =?us-ascii?Q?vpsyrzGZIHNilEM0kMamjgKS/DNLOb1JFjwMH5MsfWcR18d36nrecyGvU8Wb?=
 =?us-ascii?Q?RjbV2NG/HKwBfGQhrqoSNwA20qRcR4o00zelFctfHYICx9/+8MWDnenU5wvX?=
 =?us-ascii?Q?j79epgZ7k9jABbNFuxV3uMhK/p2x/wxsp7Db4+RRisjIl1b9jIuSdk1H5iHP?=
 =?us-ascii?Q?+BPeKTgveG1uHWXg7eWHfv+4WCJx0UM1iors4EG5HNcfpY/Ru57/wUFKk8rv?=
 =?us-ascii?Q?NgIX8GUYVisTCJI/TRbyCE12PIP1cs7EiFs3CaMxW2RP/1TJGOUFWxf7Qx0z?=
 =?us-ascii?Q?GWlSK/dk2nvh5n75ab90bhw6/q4ZjqPhF8lamERgSoP0hdpB1WR/e/8OGrw5?=
 =?us-ascii?Q?8aRLyNvJRs2bfjolyqrsgitDhhOm4sGRzSjzcnYl1htfKamfod/QROlHtqi2?=
 =?us-ascii?Q?PeS3LRFTwCQqNZmDqxpQWl8hNl4oO4v6S/t9PSD1DQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?02U5wRc6DebRDjGVhnT2zWrAngNkp0a+nQWNxGSISAt07MU1uzAyelWU64HC?=
 =?us-ascii?Q?L9rLCFDNJc7LxqH5j/XiYdg64FaparbBL05U8Kl4vdLix2vIsm4gBQ7G3ixy?=
 =?us-ascii?Q?OSCQj6bJ7k/Kqub4AR5pLbYFEv327JSPSPj2hO5N5NbUlPnqa3nP6fSYaF3t?=
 =?us-ascii?Q?khUG9H/fIUbJPYP+J/wS+BsBd4akho3ytvU2zobBKhiXm/mnHR7ZvpM0ZGkf?=
 =?us-ascii?Q?MokvRaCv0Tk5VgznLXwqWMx6Kli44jNTpYOVg5G4LGXoAMTwUgUwRRlyeoo6?=
 =?us-ascii?Q?UC5LQz0t6uElZWME4f631jyyfLEeABDXohMY5frUfplxDdAgXvb5uzr7gS3O?=
 =?us-ascii?Q?s7Me1IZ4dJZ1Wi7oHxZr58bKXyFTP0aBOA0QbKLfuzvLDhueKj6uog+InVIQ?=
 =?us-ascii?Q?4DS+j9yk6do7IHfI1f39lYmfvb2YX9CRAyHXwYEZqSV4PszNdQQ5Bu2fD3TQ?=
 =?us-ascii?Q?RTF3ZX6woqBGVu4UHouSuUcLpRDJuRVze2teS1MCXmWHkxaiKo+8sK4Sm9Pe?=
 =?us-ascii?Q?RSDrSPB10IJwZvJ6s55QtuF0TumP8chboMtQol9xzS//YF47QISeg8z9zZD2?=
 =?us-ascii?Q?wl5pKnz8luuScQV33ZMacZ7rXjyk9ecwsTAWb8AWspJZxIhOFa9UYMj/oKCI?=
 =?us-ascii?Q?YRuQJY3LT4SP2vWxOuIucMcrfvsg/Zzsmcu2vh8z3TWEH+7VZPx96eP8NG0e?=
 =?us-ascii?Q?AiopcMu5ZxfPulRzSVle63RfiMQ1UJMuk8U9AmY236d5atI7tKrozwwA8bla?=
 =?us-ascii?Q?FuXwnYiAH6WxxN6xW8+OmK4c/C2oub+0/TpHS+uFBFep/50WvAJ6u1oXur3Z?=
 =?us-ascii?Q?741apfughyG3mRZBbbmtXnxu0DYcmLMh+h0lsAqPnzIXKR17DR0ZecwUbwEA?=
 =?us-ascii?Q?ZU/Jtz/D2yIv/2lkdT+fMKzbzRXWl2ODQTqjA3e6r40a1uT9UyFr0wmo5Gj+?=
 =?us-ascii?Q?rgZoRYINSPc1hY6yORKUjU3KMqUU9euaj4ykTVfJg5xFZ6EJZy69y3/ukjfI?=
 =?us-ascii?Q?co1YzaCSAOgCI8ipv7/ZDeZIIX7XYhhaOWqzKwivCd+/E0/BhQY7lwMADb99?=
 =?us-ascii?Q?avlEvYYU+zF2rW/JFCzSrheCpZShWMaYrja34g0Lwg2DGhvcHrlEQAXDFJ4o?=
 =?us-ascii?Q?BgqaOHKkhM/sGVX0MPdLfznDu99QX+DI/4EdeveVtFGcVHAr3L4wSCRCAQAY?=
 =?us-ascii?Q?17VKtNI4A/EWVxXzdoC/Lbfb/hr1xPwbxVHqXsiPOJEIq8xhehY8h133mw7A?=
 =?us-ascii?Q?41JoNazd19l3KqpeTKoYZ4DeX9YTawgjJ3szADbzCR+X9PddK70n9MnJ9DVq?=
 =?us-ascii?Q?y4A/Pi44Ui0ON0yN/EHsjP9LB0yMtcktymdC2YteuZ1TZA4KQGWaHOZ9XvMD?=
 =?us-ascii?Q?X4o/Yu29ACM81NEm5c0/IAzyj7pUPyBqTd51AG1T1YfoJ0SdeHE4hi68GKY5?=
 =?us-ascii?Q?IlodBp6xSjlvswDDLBs7Y7ZqFEsdrcVnYnXlYCvCWYsKPUn0G19c0nz/4JPd?=
 =?us-ascii?Q?MIyJltsP7X4uASE+Cr+1e49YyXu6knzSrErJYZLawiKbpSMjPgywkZWcukUk?=
 =?us-ascii?Q?XIstPI9R0dr3eAgef0URceYmj7OGV3uaEs1xmJLJ9LInZ6JQgbqHg3K1PcOp?=
 =?us-ascii?Q?Iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf4db5f6-a8d2-45bc-f3cd-08dc84841465
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 10:49:59.3818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8DAELnQrM/0i8INMY+3KuAbBorhXiDRIIfqyC8AtubWBn3thbXS5/86EIdP7RWefvDdsvQC69h0x0JXadbPaANIP4mxGK2yxXWU1dhWgchw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717498203; x=1749034203;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4p2XJqgJejtW2wSmsEdHcMAlshHQEhHLazlwDswJ1NI=;
 b=eIihnfEDNV78UPhy1waEUkab6UkxK8eu3O8RGsNhvjcgqmnh+JwOq2Cu
 /pcD4ijeCHqIBOeWLYM2SI1TnAf7UYLQtubvNJR2a/fC/goasIPzcMKRs
 1cJqQVDF96gQwC2bB0faNj7SCzg8XerrU8ncvQOjEpLQUp8NQExAPiH1Q
 ZLLsv0iByrUcICKR7nXRDzQoKYeYcZEfNLywpMh6Famu3/RRfgaUrB5Ui
 yp5ItWJXGaeaDlTUFU38YyTBancZg7jdir3FTP/k+goLB/PDxAPyuXj+v
 LbWDkDWbSXU7frWDl9tyUEMomYbexxnlQ1IPO7VpQyI6Kowhyk4g372ve
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eIihnfED
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 3/8] ice: replace
 synchronize_rcu with synchronize_net
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 31, 2024 at 04:49:01PM -0700, Nelson, Shannon wrote:
> On 5/29/2024 4:23 AM, Maciej Fijalkowski wrote:
> > 
> > Given that ice_qp_dis() is called under rtnl_lock, synchronize_net() can
> > be called instead of synchronize_rcu() so that XDP rings can finish its
> > job in a faster way. Also let us do this as earlier in XSK queue disable
> > flow.
> > 
> > Additionally, turn off regular Tx queue before disabling irqs and NAPI.
> > 
> > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > index 4f606a1055b0..e93cb0ca4106 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > @@ -53,7 +53,6 @@ static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
> >   {
> >          ice_clean_tx_ring(vsi->tx_rings[q_idx]);
> >          if (ice_is_xdp_ena_vsi(vsi)) {
> > -               synchronize_rcu();
> >                  ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
> >          }
> 
> With only one statement left in the block you'll probably want to remove the
> {}'s

Thanks for catching this. To explain myself here, I was getting rid of a
patch which removes the XDP prog presence check altogether because it is a
false positive - we can't get into these queue pair disabling/enabling
functions if there is no XDP prog on interface. And the reason why I was
tossing this out of patch set was that it was not -net candidate.

Thanks again and will fix on v3.

> 
> sln
> 
> 
> >          ice_clean_rx_ring(vsi->rx_rings[q_idx]);
> > @@ -180,11 +179,12 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
> >                  usleep_range(1000, 2000);
> >          }
> > 
> > +       synchronize_net();
> > +       netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> > +
> >          ice_qvec_dis_irq(vsi, rx_ring, q_vector);
> >          ice_qvec_toggle_napi(vsi, q_vector, false);
> > 
> > -       netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> > -
> >          ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
> >          err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
> >          if (err)
> > --
> > 2.34.1
> > 
> > 
> 
