Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yClQJ0wvn2lXZQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 18:20:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF319B718
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 18:20:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A354583F48;
	Wed, 25 Feb 2026 17:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JC7C2suE16zK; Wed, 25 Feb 2026 17:20:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0802E83F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772040008;
	bh=egjavjbdxBH3x0FZt7f1wlVnBb6pFcVzJ7NgXA8A9No=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=il0cNbhjU6qELj8R33ZLp3+o7T7TBG/J85uQvKj1jZl7rt+80WjmnhqNPoeaTH1lU
	 sUUiCQWC6qrfz/982Db8wiv9mLa76dY7ydHkbVsIFUf/X5+2OwJnb1ULQDJm4H2YtT
	 BZEiYc8gYj7gXHnCpJGrXIt0LmfGyljqjLUb/3CeQgYPhE5kU9COTPLeyVHZo3eJdc
	 ByZnArwkmB2BOYB5QBnvyCh/5Z4meSHlxdK2XIXt5pg3QS2kgUX14Vhb6vSpM/DlJ2
	 gL0wLXb77rvC41P+XdmvHFCmsmMJMmxVNjI7f8P3I5unluUyRLpxwG0ByAFpTSPeQ3
	 ix40xX4TF40tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0802E83F4C;
	Wed, 25 Feb 2026 17:20:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E9D024E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 17:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E878983EE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 17:20:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uLSCfjlVNx1a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 17:20:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BD7D83F48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BD7D83F48
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BD7D83F48
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 17:20:02 +0000 (UTC)
X-CSE-ConnectionGUID: ECwNA//yRZ6YQ0Zpf3A8Sw==
X-CSE-MsgGUID: hn2xjFsMSbuGJNATLY/7+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83418026"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83418026"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:20:02 -0800
X-CSE-ConnectionGUID: Eh7ynHQORSeELTV0rHtCmQ==
X-CSE-MsgGUID: ZnrCiSeKSuKHewxB3ZUBew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="215064444"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:20:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 09:20:00 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 09:20:00 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 09:20:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UFlx9+LsxUH0f1NAPiorkSU0t7uhAVm6CqWfk2QbZ/zfAFDzLRdAo5JAv6l9A0n1qZu/PzkfucTRfpEAx6c+pM2OuHQ/pKk8pzCt1VWo28vnSTsx4TknpBU04wXNIHIy3TWgzF7R/NhaXeMspx9CZx3LWiUlg6JN6s2oTQlWzv37JN+EXZlSR+bhmEK5DYXjAhvUxJDBFf5kKVSi5qCN18jZ2kpdvsbu5Qs8VJKnNYdFJxOi1Vdd4WQhGoR811HTDU/QK4yCO4sSXudP97YEPBEOOxgUZbFJuXEQJO05mQ22p6FhJ7GyYuSfPlccpkKFIOqoNuQO8U/3+5NlmPzlRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=egjavjbdxBH3x0FZt7f1wlVnBb6pFcVzJ7NgXA8A9No=;
 b=SLA00SBq2Ic6SlSsp7B1+CPh4BlU9S+UQKWiB/WpLSLIxhcSQag/wTLVxCXugJCrNuqMZf3BV4lZrZqsv/X/WaRlhUnPtiRLc/C6tZTYKPIk1WtqAP5YShhmnrfOT9joydQ1Um7CfBp1rrvjpplAEZHg1yPpinY2sCTdFCPIsDOahQkP6vGLLzsrJhzKqH6kBimy++a/lnyZN4H+tWNpWg+hoihN/izqJ9APW7pSN+6WazstcHBsQiexpVhm80xdIy5yKJmEHm3EL6qj5EDdHrns1Eh0aLef4x6uoZGA8xoJlkD52xXldKySFWb6EizEkoHff9uvL0aKtiqpJk0ipA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DM4PR11MB5994.namprd11.prod.outlook.com (2603:10b6:8:5d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 17:19:57 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 17:19:57 +0000
Date: Wed, 25 Feb 2026 18:19:48 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexander
 Lobakin" <aleksander.lobakin@intel.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Stanislav
 Fomichev" <sdf@fomichev.me>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Natalia Wochtman
 <natalia.wochtman@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
Message-ID: <aZ8vNEn7V4VVoOHr@soc-5CG4396X81.clients.intel.com>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
 <20260223095222.3205363-4-larysa.zaremba@intel.com>
 <aZ3jzpKs7VcVi-mL@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aZ3jzpKs7VcVi-mL@horms.kernel.org>
X-ClientProxiedBy: VI1PR04CA0061.eurprd04.prod.outlook.com
 (2603:10a6:802:2::32) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DM4PR11MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: 33d6ba5f-0412-4f0a-771f-08de74921971
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|7416014; 
X-Microsoft-Antispam-Message-Info: aj7QpNxMH/TqEmLF+w5OJ5p7Tcdf5K2/r5GHuPJpsGJJZYTdLQ7MO/PJhuwGupOoHXMQD7XqFCS1dSkQznqznhu2mPwFvq2NHBtd+618llWAMbZsNzdMh6mbmz/FBczorySj8PMrVKz+5Gr4SZhOXqYlrwEMHmVSebUTu1Deh20qB1oPA1acGgPMKGMoIlSQyk1c8HvUfqK4AdX9ggXoKI72j7UM9YUF+HOYrenK9jBzzGO7BdK3F4cSmfeIZ4jsEXt3ianiNEF7b2CDoy0udis/Ib9wmN7DZqTMT0Hw/5J++UNbWSlH/ynPvbkzCRNMxfygr44VbkFPQAYSOpD1jErSQk3GUpif+uzZaVch04fK1gQOzpDcj0cCiaj+S5Cc5W9hH6OkRM1LOl0UA9ttpkb7MZAzYVISbOCrhotGPxIZSwrJb6Tf3Q6VVp9yc+f4lr8ZSLo5G6UkYCC5a9ueUMPi2XJkbunuW7rUiZ689d7kGOesaD+KgCP9iezkARjiWeA0/XWXX+DHzvbmqAb+9ZhSNNP18f7Ovrd2dKJ9ZwCbv7s2UtoWANzsooIvTLmRbvo+ZfqNKg+Lwo2rqdjy0MSvNS5UcUeR8lxFl7a6FzmtlkarYcXcvCIbJgrqypYvvtxjmBzp0ESifyejv8pzy3BC2HpfAXw08lzDbBTQ3MURNTv9C+dEAIcn25L9BV3u9BLSggNs5cjGLGyA9xIIW7CrF1h5cvvnPExwAYBqOhM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(7416014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AKcNYOt1gaAYU1nlVmd62KtWPVVWQNMGvmIVEFRp8PtSAxdnN+x/Z6LbHOnK?=
 =?us-ascii?Q?W2AGJzKqqrZySETIbh9u/0hFNUQagVt+FdWWA2yRam5HtKXoCLTLuwMHL4Kt?=
 =?us-ascii?Q?n1QpJwzqrH/DxXma2Ojr4hahEifqymGpUTD+RLgpkk7/wnqHMQoNCZqCdcI9?=
 =?us-ascii?Q?OoYbX9ES1XIten/xMR44bR6CGbR8/xR6cOO0WyKGNzDRXBwCOUFC53ioGqPi?=
 =?us-ascii?Q?/7SohZByPogD/bXzmFiCRT9LVz499nuvWAsvAeDXvjxHcuoY7OMshNo70Rz/?=
 =?us-ascii?Q?xAobXnR5CIc/xkdyWVKxWmOvV33WjO0OsmpkH85n/t+DFjhXL/oBpzdusm4k?=
 =?us-ascii?Q?k9QuWj0ZfegFHlYWw/gKiHvyaew+ks68zfL77EnStPCKu6OXVZGKjvIZYbEH?=
 =?us-ascii?Q?wXvcOY7WHoMdwW0qsDiY8W13v3bsXgm7DtTAgXNqrIaXBeBk1U9ZZrmrYQe1?=
 =?us-ascii?Q?obavPHj6ShGcHpbhy74604NyEOst5y1a0E83SM2hi4N5Lqjc5S5E+lr/a6mh?=
 =?us-ascii?Q?nKALOZAvZGiHWT8tfEJYRt5X9P/73KY8pDgxU1QA1Stznqow27APpkwwsuoi?=
 =?us-ascii?Q?vEqeD3t+vwsB2LHuu9MujvX245eln7sESwxGxGFY0MN11drLy62AY7/IY649?=
 =?us-ascii?Q?rLJ9u8bCEc6Y7hX9hgwG5sKV/9FB4S5KQS6KIXR3qEXLrDnj2EntEem8aDE/?=
 =?us-ascii?Q?piJKAF0yWeW/aeBrsW7+ifQZ9+9OF1c3sDsLtvWf/Jh1AFY25tgg8vrW7ZBz?=
 =?us-ascii?Q?iXrsViLiZOR+CO7VEz966FJIjEOVVtlNyzgVk6BkBUDpT1oaJfmPQU1iBiuB?=
 =?us-ascii?Q?T9hGVrBxHtjgOtZINU/jA8D7LjshTqQUfK+Pm1DKR/MI+J4Q0Lin3jil/j4h?=
 =?us-ascii?Q?Ff0Me3C606MdgTdz3NH/ARiF9odiH3XNXOEDqqZoB5LdnRpj4ejefUetTktC?=
 =?us-ascii?Q?KZtVpXSeomaPRAozz0TRuWawkVZvoJdl1zDPfZgjGOrJyyT6nM+1oYfH1aNn?=
 =?us-ascii?Q?DjRzztIhZ3EEtZC6ZPqsqpIKdt85lOv12d1SyaZIuC0JHm6qQdPu7PGFMvP0?=
 =?us-ascii?Q?tAdyPNOnCxXLkn0zIPBrbR3HW+rcPWfqljaLW2YGOwLnQ8kHEsGXRTe1UJCJ?=
 =?us-ascii?Q?QKSjyqi/105aAGcAZcc85rZKEFq8zoLlXnecQI47jaXo1IDVFNk5GYEv6IDa?=
 =?us-ascii?Q?nk+Y+hXzdU2M5/I5er/SHHCe3pDEgWlxchie83Qy/M7jhaXasjztPtxR6KQI?=
 =?us-ascii?Q?ARXx1LsQiG+T6NKilN6B/9hO+lbPHXz0Iuq8wD4rVqZYYjY89wqM41H3MMA3?=
 =?us-ascii?Q?GKkPQCQb98RUW5zCBQ+/w4cfftwWrAsJ/wrHMPdW3GXLEH6cypji2JRgRCwt?=
 =?us-ascii?Q?cvOy+tOvFE1O8AipDMxQcKoCN4s/HT1QoaiE74kc3/6mE0/nZF87ff2VQZu2?=
 =?us-ascii?Q?0z4ZKtkUc9j9K8lpg/p+TYFP5lsvQkBGfZH9NH+0lcYFtcELZodfiRR2VIM/?=
 =?us-ascii?Q?u26wFaSqe4RoQIbKw6N4U04rbQP0YRW1Xoea8fqlXSqgGYPBtU/53IzjUzxZ?=
 =?us-ascii?Q?7c2QOdxPNLkIvvJGaT7GnDuLm9wr7wsE8G2SY2opzzOueewOrUQnzOz9T4lk?=
 =?us-ascii?Q?h7iVodlliiaOqy0cVWfrq28LO5otodSJ0qpNdb4gGUS+N5I2unHH/qV8+LVL?=
 =?us-ascii?Q?OglIqTOzJ2M+YNCxmk7MlBcmtiyUQiym5uU6VMc4mm1AAy0KkV1d3baOEph8?=
 =?us-ascii?Q?1QAv8De82OLVjZqymBiqmSyfvSRFt3H9GOUxGOTk74DvwJkhMJFzOqK/wBjV?=
X-MS-Exchange-AntiSpam-MessageData-1: oQSIBFDwZpXUFl/oH2tmiv/jNJM0txSQ/60=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33d6ba5f-0412-4f0a-771f-08de74921971
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 17:19:57.6859 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Au8sGGeiHeKEMk6v2xWeypxunWslalu1jsPQZSx5gmWWROHfP6S1mDcJD7EpSsxOuVTdrJsEREUEyy3Kq1av1pJuE7Ca//idMAKO0MvIDIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772040003; x=1803576003;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oL07NrC0/aSPZI7dFybcfzDgYu6AhUnHp1GYwPmiD6Y=;
 b=VPW8dajWNN+EbZ/T8erbEtDMmBZSm1EU4Y1R72pJ+8Mf8W6zJeqG9KdC
 9E981dVbGRLEU8VfZ5v3kNsbPIGQcR6vIi/+V4YYEGtgFXi1iPIW3ljGH
 M1ryEDbrbS7/BfC/491iByIDjz+KDJmzHYyXfYqQkg0Q+pA4epUSwnAOW
 Ny/W7Dx0AD7XwaYvGW4BJ9C0XLZGs9e59zFM0grXhu3wCm6bub85+8l8i
 TFIhKmc3wBSFJUF4BtZmN7QDGyLvyJ7hEI8MIkdnXTBgD8n9JS4Y+wrAi
 Rd5xbjj1A2psy/yNtNInkAtu9wG5SnTZlz7eXDkb4WRBCLCW37j2yBYLv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VPW8dajW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 03/10] ixgbevf: use libeth in
 Rx processing
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.973];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 71CF319B718
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 05:45:50PM +0000, Simon Horman wrote:
> On Mon, Feb 23, 2026 at 10:52:10AM +0100, Larysa Zaremba wrote:
> > Use page_pool buffers by the means of libeth in the Rx queues, this
> > significantly reduces code complexity of the driver itself.
> > 
> > Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> 
> ...
> 
> > @@ -3257,12 +3133,26 @@ static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
> >  int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
> >  			       struct ixgbevf_ring *rx_ring)
> >  {
> > -	int size;
> > +	struct libeth_fq fq = {
> > +		.count		= rx_ring->count,
> > +		.nid		= NUMA_NO_NODE,
> > +		.type		= LIBETH_FQE_MTU,
> > +		.xdp		= !!rx_ring->xdp_prog,
> > +		.idx		= rx_ring->queue_index,
> > +		.buf_len	= IXGBEVF_RX_PAGE_LEN(rx_ring->xdp_prog ?
> > +						      LIBETH_XDP_HEADROOM :
> > +						      LIBETH_SKB_HEADROOM),
> > +	};
> > +	int ret;
> >  
> > -	size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
> > -	rx_ring->rx_buffer_info = vmalloc(size);
> > -	if (!rx_ring->rx_buffer_info)
> > -		goto err;
> > +	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
> > +	if (ret)
> > +		return ret;
> > +
> > +	rx_ring->pp = fq.pp;
> > +	rx_ring->rx_fqes = fq.fqes;
> > +	rx_ring->truesize = fq.truesize;
> > +	rx_ring->rx_buf_len = fq.buf_len;
> >  
> >  	u64_stats_init(&rx_ring->syncp);
> >  
> > @@ -3270,25 +3160,29 @@ int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
> >  	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
> >  	rx_ring->size = ALIGN(rx_ring->size, 4096);
> >  
> > -	rx_ring->desc = dma_alloc_coherent(rx_ring->dev, rx_ring->size,
> > +	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->size,
> >  					   &rx_ring->dma, GFP_KERNEL);
> >  
> >  	if (!rx_ring->desc)
> 
> Hi Larysa,
> 
> Prior to this patch, if this error condition was met,
> then function would return -ENOMEM. But now it will return 0.
> This does not seem intentional.
> 
> Flagged by Smatch.

No, it is not intentional, though the problem is fixed in a later patch. Will 
correct this one in v2.

> 
> >  		goto err;
> >  
> >  	/* XDP RX-queue info */
> > -	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> > -			     rx_ring->queue_index, 0) < 0)
> > +	ret = __xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> > +				 rx_ring->queue_index, 0, rx_ring->truesize);
> > +	if (ret)
> >  		goto err;
> >  
> > +	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, fq.pp);
> > +
> >  	rx_ring->xdp_prog = adapter->xdp_prog;
> >  
> >  	return 0;
> >  err:
> > -	vfree(rx_ring->rx_buffer_info);
> > -	rx_ring->rx_buffer_info = NULL;
> > +	libeth_rx_fq_destroy(&fq);
> > +	rx_ring->rx_fqes = NULL;
> > +	rx_ring->pp = NULL;
> >  	dev_err(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
> > -	return -ENOMEM;
> > +	return ret;
> >  }
> >  
> >  /**
> 
> ...
