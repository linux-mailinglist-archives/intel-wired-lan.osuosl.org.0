Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3120ED17711
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 10:00:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF2E1849AA;
	Tue, 13 Jan 2026 09:00:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DD0cygGpfYsY; Tue, 13 Jan 2026 09:00:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44C6D849F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768294849;
	bh=U3SMAUkGCN41okU7To6cX2qKdPtaZr0lNLlqV962d1c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L/21vNJsu+MCABe620CxNjLKsANTQsRwYZxQnaVUgFNnxh/XFqPZGZX1FnMocLaSy
	 du1iXADcEVp0sTvhWvRRygrGwxmAtPtZzYBpmSAsAUfut8QSG9lGR7fxJUGbB3TeS+
	 UTyjnT2x7k1Qj5ZRwEfeRYkESfEI4mqhinqrGcwCIniSNRUlEBjOmoPQoUpQ3k39N8
	 OkmbyvFswywRrmmsWs9Z794SNsO1QTQ5IfE+5nHb/oWkPYNihSgj9lpfDmzNWvyPqC
	 qoqP+0Ntgz+saXP68jg1BCdJsBxMOkwwrYUoCfv89pQel3wmEFX9PR6H+gCEkQLEi8
	 KoOmFEoX55qJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44C6D849F1;
	Tue, 13 Jan 2026 09:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 946331CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 09:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8532C849A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 09:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RP42N-wWioLm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 09:00:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59EB98478B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59EB98478B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59EB98478B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 09:00:43 +0000 (UTC)
X-CSE-ConnectionGUID: YySnvgwLTm6O0PHXVkwMjQ==
X-CSE-MsgGUID: V/83HgpYSXm22/1yKsMOTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="81027694"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="81027694"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 01:00:44 -0800
X-CSE-ConnectionGUID: gJzNa/tzQReXorwtlGGpiA==
X-CSE-MsgGUID: mnAeIUwiReun+pDGlguIyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="208837018"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 01:00:43 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 01:00:41 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 01:00:41 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 01:00:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y954EAUrk/HEqHUg5Mx2lhPOQHOV+pnW8MRfXO3c2AuZbKneI32qu1SrE3GHsn/I6BgFNvrLN1z9LfH3CHIojhdP9fbagLvqglE9CJ7iz6pCOzZoLc1/gwwl5RqPJSfhxO7CwLWLLB8dxq9Uczjzs3yJTUht72Rdhk9blb/MHLSJpgNF5HyZ0TCeM1pVSKftsgaxpwThzJr65v5WJFO+CLEZeeHOZiqj91lW+dMYZXCNhr2gtX1GXAKIcwZGBQbX8Z59AavodR9ZP4KLWoDuGhjWS2XG3n6onCzo2Jo8C9pdZqZUpRGNnGSH6/4jX0v5Bg+JaLXHVsQGyKoaLn56qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U3SMAUkGCN41okU7To6cX2qKdPtaZr0lNLlqV962d1c=;
 b=Q1zBht2xnKUHGXjtMRVAw6iv54PdcYAZrx0+4baLFvfEW/1CtNsTD3ouEoZK65FvcAx4ktTOR+hQZRZNfQyTe6c/n5oKltNGAHX6+5QbLThwOKwkhbAKzbL6+r/gheyjojS4m0y1Lfnj8K5Jw37dKTEr/YKbL4KI+PwagOoclnayX2mv2T4eKi9CeTpSFHTKiOxoz3OE0jiRRxEZH8icpyd4eYzFgiIRcZYgPL7XaSnS77UCl3Xg68r/hucOEc5HUoE1Os3ceX7RKvY7RnQz/7QihvFcYAHP2UHbP4nDe3H5YQtkmA3dEY4LjDK4YaRUm2Ik8hdqN3Vj+KvcbEIDSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF5A672BE95.namprd11.prod.outlook.com (2603:10b6:518:1::d22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 09:00:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9520.005; Tue, 13 Jan 2026
 09:00:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Behera, Vivek" <vivek.behera@siemens.com>
Thread-Topic: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcg8P3djYpuMb7T0OODQsQBRQ0mbVPzUdg
Date: Tue, 13 Jan 2026 09:00:05 +0000
Message-ID: <IA3PR11MB8986AC1A204E82F92D0D3A7EE58EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
In-Reply-To: <20260112130349.1737901-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF5A672BE95:EE_
x-ms-office365-filtering-correlation-id: 0484f924-1785-40cb-690d-08de52822552
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rmXObzQcr6xCZl+bREAni//0GxA8leEGco+btvnx/PmppwK8qNfjZMdtSCnD?=
 =?us-ascii?Q?aSpPKeFkqy94LHjluWbdINVwHuYXbRe7NjNuIxNAoM0AomAaBepPksFJiMbe?=
 =?us-ascii?Q?hxnzMnd3V4RdQiracSr/S0qm3T88sAeXAYQ8JWIN4+VCo0s5F+ZuDJTGkKsn?=
 =?us-ascii?Q?p6F5FUOyQ0EpSMwT38Uy+kbH4G8cJHlNXln5WvaVJFHpuObvJP32bh/z8q0d?=
 =?us-ascii?Q?xsmQ8M/3Bk1ztbbLp3KO5kCwD9vDAkXjEe1SU24XywVMZY/50EyoJ0XPvay4?=
 =?us-ascii?Q?CPyJm8lh/bAZCqgq4f/DcB2GS9lAhaFceAFcwUh9ixN0dzc3SNQdf4Gwlu3Y?=
 =?us-ascii?Q?2VBkabFpPRF78WWTlVsiUVlBzdRzOswCjlP8a49HlblnkaJOKbYTmClyBg18?=
 =?us-ascii?Q?la0LiSTcYLqAd9d0jZFV7q29eGa7k59PnRjx0eZ3WpCzLpMC/CBi8Vwws16o?=
 =?us-ascii?Q?WJ+ria7BLfesd3QqtGa3p5C9b9U+EHGuXU5eDXW4yIXhfbEIfJ2wDSJagf2z?=
 =?us-ascii?Q?Kry31TGCcw7B7Cy6oiJfL4RNcARbpYU6jVAwspHNCFx8sxeAJbz3SzKxArQk?=
 =?us-ascii?Q?HLToTV7N3qISCvvbzfq2iTU/Vc4kdVWr4CvRLg4DYMFOndBJtTj/3lMZgBLu?=
 =?us-ascii?Q?iwFbGupokVj7lIKSqeSWyT63E4ge/Te/RQftEccMgjftQVBCmyF4j1fkvQHj?=
 =?us-ascii?Q?AKIjaVSk9QhGpCLsheMD9Xv5OM3nb0V01DvsHCMd3rCw2GJRn3SMKGYu9spg?=
 =?us-ascii?Q?PZMdTCTdC0zlYMPESjDHqe72d3vNj4jHsTrWnxq1yZtIana30gwMzs1AvSWi?=
 =?us-ascii?Q?BsQjyhYvdyZGK5Kyy7mIgR59XPNqIj+dXvTxFf1Lo0PN4DOMpDtaGtlgz8+L?=
 =?us-ascii?Q?ILTgbiCZq9XO5XxL1PHQ2ZO/nukse23SIyr4uco4Z/VFTUwvc6quaYKQw/bP?=
 =?us-ascii?Q?oPORlNdkwUtBnnEh1PWsT/v/d8vPAP3iN0Yx+3fQvZOo3IDWg9SL7WzxrHrq?=
 =?us-ascii?Q?cXYCIJQISDq9ZQOBDeX1Q7GGYYUzN3VGaVnI3jWgoibiufghKxkGCIuIPJRc?=
 =?us-ascii?Q?gmYwKBzGKXWiZARImcZ4zlwiA0Dx43t9iQebnkin3jqwVPrkNDYkXQ6Sp1qa?=
 =?us-ascii?Q?9dwyCmIyRpX+h4qvYYb5c+VK8GHF7jV8pc7bY3AcIN50yifj49GuJ6YvWZgD?=
 =?us-ascii?Q?TcogBnstst+omo+tERSm8EOSWGhP9p1SUcdRbwq8wdvlVjO1SPbILfFbwYX4?=
 =?us-ascii?Q?AqtdbQ5nrmEvxBnQXlpWjD66xChrV/SgMcA0DN0ztOU4aJr117hY1IFQ1Evi?=
 =?us-ascii?Q?h0eXgJEmpI2VJwpHjuBBOroBAAHPvHYQf/MGFWBYuX6GIvth/hUUQhR3F636?=
 =?us-ascii?Q?wgZmPHN0ATV0BpdiUFm/SP8n+0j2syrLUoVAFlCVsVGBht8GpPchXyfJkCa7?=
 =?us-ascii?Q?9234kweSZDk7gKJQSuVOkK6OoXU7VNlHiicsWQF67E4JPdcWoLlB7utYJ3Ay?=
 =?us-ascii?Q?hm4lloKO2Qd4FRdm2bCL1dlLzKs0kA5y5qylSsov5Xy7oWTvhXGxftzveyHm?=
 =?us-ascii?Q?xpvlaOGJKTI9GIAtwHo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S+z8bslVfkXkuEAfc52iex3Vsef4wHPZ5VgC7lz7VfSYGMgfwPsBKSy5d2nO?=
 =?us-ascii?Q?0KrZ4MRQBbZ4p8eB//j1lTzrN7DQBDGA1LZx4swLFciTtyN4JbvnYV1UTQUl?=
 =?us-ascii?Q?4E/EyDxdspkcamJTuKBpoaWHHzl1GAyS2ollP6opvZkG4/BcfORqER4bkYTK?=
 =?us-ascii?Q?0WFhDCEL6ZuwfKLrq2I72efvW/w3mi5Iu37F5NgIRLYbtgk4W8EDBPfP+7Px?=
 =?us-ascii?Q?GTD7rRCiFgZCC52mBParfN56xw9bWetalkwfacPR39ZcaxZb6GTVB6VsKJCB?=
 =?us-ascii?Q?vUf/Z3nkMAOjl4GDTrfIfJbny6ky8fP8at8LPd6W0JOJBQR9DR4o3yjRaoDp?=
 =?us-ascii?Q?s9+d2PQbe92+fHwzEGIkxTY2DrmCOSOGqd6rS+P/bz9fjW530GsxyBOyq+bD?=
 =?us-ascii?Q?82VNCH2vdKI8ObZ4BN301X+9GjxU9YPYhDEAZxyYoW8ILo/JMggCIDcyBTRX?=
 =?us-ascii?Q?ZXMhRBzV6UuMlg3jkTc4om6UzF6WOvYizTEWoEHCPAVgjUBS6LoAtnYRP/Wf?=
 =?us-ascii?Q?AFhtXAc22iTcTnHXdQyCe8cxm92mQ0JYrDiu5yAlOWDtDB6oWMmbMFWmJT+o?=
 =?us-ascii?Q?HXWvz7Fc/SSPSySXRr3v7UTCZBuz6BteI3Z9jIF2FPDOAjpMbK6atKNiQHpg?=
 =?us-ascii?Q?JTN3ki2OYMo1cy9MlGXos14k5P3rxMvwDSLEewGPauiugLPCT/lzviSmbgk4?=
 =?us-ascii?Q?GIxTc+oxc+YHn+N0WS8oETa3jASt4obDi2gOvm9NSPuEK3RupSArHU/3Wh/0?=
 =?us-ascii?Q?4JnCtu4xiUdmcRa3sZ1AqocRn8yVbBaw7+bQrt9/0cwWyYxYrRqOxfw8wbSv?=
 =?us-ascii?Q?1qhpBI1HW2dMpWgs0CP/M9zJmsWZejqxyOGjmOwHc2jM1nwGL5x3ZDnCcliw?=
 =?us-ascii?Q?q6deBu1Yk+vWk0s0Ke8fk6iuAQx1B6hl1RW0iKaeYon+SG54VSFMMsks5yAQ?=
 =?us-ascii?Q?NllynKKfm3no0eTrTmLybTIuPaEY66cm15Qprw4SisV1R0u7ORCCJvbPjDkV?=
 =?us-ascii?Q?rcfm25J/MnDzDGDqUPOREkQAVDYAlrSUvln4p/2PwJzkpOEofadnXS9l6t/8?=
 =?us-ascii?Q?eCf/7xqUEAH/MTIhvceQ+SHTgwN0qohFwUwxYuYQA/ea0rtt00BkaZ2quP8W?=
 =?us-ascii?Q?t1JURrF7A8yJ0YAnDxxl1YvwlZz807qlT94I6oKT+dcB9pVswgK0UolVWNgT?=
 =?us-ascii?Q?n8TJpXYsczfJ8kUU38pjdKqBWkxLg+03/j+8KRPWAwqXSkMXNXkCFNgKFhwz?=
 =?us-ascii?Q?TN7m9IYjv4R22HTgSre25scLKdKMhB69qAZtAVwPUGwJkgA4k3j1jd+IJJGd?=
 =?us-ascii?Q?Ad0UbhxfR4h0aK3zPrFdU1GzBnC0+u9gnwXCUB/6gV7ydN9W14eIEnfgEEki?=
 =?us-ascii?Q?q0YtONUbrpah0qnW4XRU/jPTuiJkam26ZYjdshzC1ksQ1mB2QSpa9j415lS+?=
 =?us-ascii?Q?HHx+sOyHng1kTkWT0+AGUp7kXsMA/02GwZTqMQRBTLUxKzAjlzWF/KFcnFiy?=
 =?us-ascii?Q?dPlgSm5ypKfrQqfX3l97FdFlXTUiO6N/nNJ0wgoy54auLKvBA0eInUBUmz9O?=
 =?us-ascii?Q?H8VTSjZ/S6LqM+1ffY7k+dO0Gg95YybkGSDuzovx91JztZcgPH24EhSujg8l?=
 =?us-ascii?Q?Gsc6mzn6iZKJPRzPatzbOmkODOdPRztBnPzxWTQIaC+Z8yNkxwRJ+vpsGEOj?=
 =?us-ascii?Q?gUzrpTs7aM8GLeKm314vk88kB/TG1pLS4zH30W3Bk/H5BGosWc5WMJGl+OrJ?=
 =?us-ascii?Q?fUj1uVochdg/9AOd3nxnd14RbWnU6NM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0484f924-1785-40cb-690d-08de52822552
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 09:00:05.7996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n8MJOyoHjJDp3mVAmSofcstS8GulYLGUrZLokr7FJR168onBc41IZRAb9rCQ9DUO7hesE0cexvcW0fJQaBO7RT2gAw9WvMt/CRIKPga1V2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF5A672BE95
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768294845; x=1799830845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EKKA+5o/MUhtxG1DhtqkkLMcdHvtmC4NUNsvgE2aFUs=;
 b=f6aiijpasou/2PCmgIXlD/VnWZbbSkbn43nyCGALSjaTrnIYeOP96hdq
 KkncogPGelbvWlb/idHQA0aNmYPnYuGhWVEVfkTDv07LyosfHenzJNaJS
 7XYWua7HWdjAmmy5pCviE9mQy46129awTTjTX0VahA62p1zbgYjCTgGLZ
 3jMicYL7eX/hlnhHAQ4k13DmQl4YypfnsYQyTk2vxiIPaxnX/83HVCTEF
 7VzFR4NobzX1tCGLRxZXJHB1y5hcmtCEXnoG26N82mm2B0aNlmz6uIhYp
 KRs+nmL9UnBqWc/MA2hUBGDHg2lmBMTDTleITYSV8Am8q19t6kogm1WKO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f6aiijpa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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



> -----Original Message-----
> From: Vivek Behera <vivek.behera@siemens.com>
> Sent: Monday, January 12, 2026 2:04 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> <vivek.behera@siemens.com>
> Subject: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> queues to share the same irq. This would lead to triggering of
> incorrect irq in split irq configuration.
> This patch addresses this issue which could impact environments with 2
> active cpu cores or when the number of queues is reduced to 2 or less
>=20
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  4-edge      eno2-tx-1
>=20
> Furthermore it uses the flags input argument to trigger either rx, tx
> or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> documentation
>=20
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-
> vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-
> vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-
> vivek.behera@siemens.com/
> v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-
> vivek.behera@siemens.com/
>=20
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch
>=20
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and
> triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
>=20
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
>=20
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active
> queue pairs
> - Fixed check of xsk pools in if statement
>=20
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
> ---
>  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>  drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++---
> -
>  2 files changed, 61 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change
> */
>  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> threshold */
>  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> Aserted */
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> written back */
>=20
>  /* Extended Interrupt Cause Set */
>  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> a/drivers/net/ethernet/intel/igb/igb_xsk.c
> b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..6e51b5b6f131 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> qid, u32 flags)
>  	struct igb_adapter *adapter =3D netdev_priv(dev);
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	struct igb_ring *ring;
> +	struct igb_q_vector *q_vector;
> +	struct napi_struct *rx_napi;
> +	struct napi_struct *tx_napi;
> +	bool trigger_irq_tx =3D false;
> +	bool trigger_irq_rx =3D false;
> +	u32 eics_tx =3D 0;
> +	u32 eics_rx =3D 0;
>  	u32 eics =3D 0;
>=20
>  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65
> @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>=20
>  	if (!igb_xdp_is_enabled(adapter))
>  		return -EINVAL;
> -
> -	if (qid >=3D adapter->num_tx_queues)
> +	/* Check if queue_id is valid. Tx and Rx queue numbers are
> always same */
> +	if (qid >=3D adapter->num_rx_queues)
>  		return -EINVAL;
But the number may differ in case of reconfiguration.
Why not:
if (qid >=3D adapter->num_rx_queues || qid >=3D adapter->num_tx_queues)
    return -EINVAL;
Or add assertion that they're equal:
if (WARN_ON(adapter->num_rx_queues !=3D adapter->num_tx_queues))
    return -EINVAL;
if (qid >=3D adapter->num_rx_queues)
    return -EINVAL;


> -
> -	ring =3D adapter->tx_ring[qid];
> -

...

> --
> 2.34.1

