Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BACA8FB074
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 12:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9672761208;
	Tue,  4 Jun 2024 10:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EQaUP5i_vP2l; Tue,  4 Jun 2024 10:52:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EFC261209
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717498349;
	bh=QXMTKbZ28krkRKmZ9cUYOcp6Zh+ahbL4ZOCKjO/pz5A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dU1bwg93xXds9f8NAkKIk88hUGFfFenGkQxfLSSLmu7dob+lySpuYuZ16RqPyKHv2
	 VOV2tfCf2gDCI421D6sxgtAsWzYbbDu5Y3mDEmncqaSYeTIA+QVxW3su94PROX6mIV
	 ZTVLVYzgIAqLVyOOa/qmREKqIRmMudY8a6T/m2xWgSiWJClzmhpKrQ4MSgZQi3Kvt0
	 om9ogO0pwWRi9qnEUbSkx6tJW2tZJ387JbsHgOA2WueMSp+GiGOIL1T7ZWhRPklGkZ
	 xEs9i4fkYs1gXrF92+rTtjGgy7dnv0tLjB8w7kgJJx40qn6+ignSIeISvKQU/IBx9E
	 qbxjOlTm9gkEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EFC261209;
	Tue,  4 Jun 2024 10:52:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC5B1BF863
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 10:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3E70846BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 10:52:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PzVcvxzVO4jf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 10:52:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 43DC5846AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43DC5846AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43DC5846AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 10:52:24 +0000 (UTC)
X-CSE-ConnectionGUID: MntDrSK8QDOUjZFw5J1t4w==
X-CSE-MsgGUID: +D+qJQwTTISdU575IiNNtw==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13986200"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="13986200"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 03:52:25 -0700
X-CSE-ConnectionGUID: XrNanSnyTmmDOKG9VkGsNw==
X-CSE-MsgGUID: hkK1XuTYTeC2be5PGJieOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="74699830"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 03:52:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 03:52:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 03:52:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 03:52:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 03:52:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nY+VlLHSLbpbsLKh/f3UQnPymWC1i5lMn5G7gdlH9MGhcFDElKTI8LLCKGVip4bIdi+F8OZnVXYnMcuIm647e0RWutmyt/U5V98tiVFWoBAgQKv85zgSyImLyqdN5ehAhGX39fh0X4ApqfndspSMiYjxS2Ce+pJTPBl9IAxLaKcmNIKHd9kul4r4MvSOpamKlTDYpf+uZgRjep0qJMIpJs+WOwLHD1pPZ1XoHJ6uA3UyFgrmltzWO0/auCTiEEBe6cs25USHCxI8Lzr/D9qYzvFzKv3gD7XL1gEQUqEGA87PG9xILNvTDrR/Wv+Ph2Qp1jZtMkRx2YeLf5bRZa4JGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QXMTKbZ28krkRKmZ9cUYOcp6Zh+ahbL4ZOCKjO/pz5A=;
 b=DjrbEdFffbNZyhpCtBbWNPDuvKODbiSsK67JRUFAn/MHosQaxTWFS/gdogeqfrWEP7tzqhFrKqCDyjdw5zThFms66cxY9qpQTN0BCzTdZSoQKCvIQLgiXcVIfkALZMRiiTtBZmXhFhK6xbhRLG3sRIZ5Fh4KHGz+JlwvPrKtbPHHNOLCvY6REN3by7pr6exViWo/a4XnIzBmnXnPz5ZidvqVotuFxkTpUSHOQ2o5eETLi0+6qUqdrVRG+ut01BMAkuRjvOnX7Sq/JarJr3XCGjM0MAxQPy5ydbU3iRxqeGB9jrOXrZczDhd722AkmNC7GLyywtzzOh6/gBQikSWwiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 4 Jun
 2024 10:52:21 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 10:52:21 +0000
Date: Tue, 4 Jun 2024 12:52:16 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nelson, Shannon" <shannon.nelson@amd.com>
Message-ID: <Zl7x4PowgJyXNwPp@boxer>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-7-maciej.fijalkowski@intel.com>
 <3f1a5f28-4e5c-463e-9049-ffc23efc4f93@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3f1a5f28-4e5c-463e-9049-ffc23efc4f93@amd.com>
X-ClientProxiedBy: VE1PR08CA0018.eurprd08.prod.outlook.com
 (2603:10a6:803:104::31) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA1PR11MB7037:EE_
X-MS-Office365-Filtering-Correlation-Id: fca13ad1-d01d-485e-f1a4-08dc848468c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NNPGJS5EvdWyxw6Xjd16KgF8I6eP6a7nigg7kHjvsS4MuzO1NgiyMdIYgc8w?=
 =?us-ascii?Q?VD8/IAvJmqhAdyeLFulPE42mhYsVyII/pLEj6VaNckypILAgrJxkQuzPeXyW?=
 =?us-ascii?Q?kRUSk/mu6ph1so8EsEMKg2THW8mqm6BCwF8B46e6sHYTcdaEfmFVHt+8ZPH4?=
 =?us-ascii?Q?ZR3vF3ypIXRpMmFSjSIq5MmUAwYsUQjAzhHnh8D/W94f0/p8Z+DuUU0cAPBr?=
 =?us-ascii?Q?gdMwMVBUZidGJGcXo4gYzLrvMiGgcehw6ktqJqMG0ZFCaGJJhs5j0+85svvu?=
 =?us-ascii?Q?MIDLoAelifKy7hRA1bzB6xBU5IKHclvePcvrq4/5ZJvpkiJslIGroCzEA3Jx?=
 =?us-ascii?Q?HST7p1nG8SaFWqJyqTpCsinYD5gk6fMkigQmlCyOg0htk17amqvCL1Ax/2pj?=
 =?us-ascii?Q?rSv6/3J6FubGpyMRU0qpY/Xgsuhs3AtT3wtnUt9pQq1jaop+DMJN2oxbPXH4?=
 =?us-ascii?Q?PEutbjAOwgqlID/nPRkJebyN356A+6n103dsxp8R6UYxDKhB0MPiU6MdMe0h?=
 =?us-ascii?Q?pgkgvHDTuj+fSYSLhF6Qvk4w+v/uXIMP53GTZIwb6kRCbVg9h+J82mQbI047?=
 =?us-ascii?Q?U/ntGZ6o9hCHERclMzt1XpoM/AtRbH/a2M27Peu98qyRMmNhFQV4oimmgYJY?=
 =?us-ascii?Q?ybPuG5zFAr+IgzmvhUoenskfvUSiLwqBVGgylXH6BmSJRbudapGCx5EYiOMc?=
 =?us-ascii?Q?m7FP3YSkUAXCKLC4+qH8gmpfzhJXWm/cel14q8+cgdhChQknYcEAHIvPlHid?=
 =?us-ascii?Q?Gs2gqS1E+0GAEvisV+YrNldyQi1lKmZU0G19i2A88G4wRwJMoFi4hKTLVwdS?=
 =?us-ascii?Q?6diNshM7J3UIEOxdXSvqnafEom9ECY3tlB03TcZQr9FyE9ngn9O6ncsdUvJn?=
 =?us-ascii?Q?AYfXCc3fleGKEakTH8Bz+FiPvxvhf16UO2q0yDHlBH8VP4gDqIFkYMmJVs3b?=
 =?us-ascii?Q?PqXquonRbLWSx0qL+cJD96PaN2OLxVlCbHJfu1Vr5clE0DOoN0U3ZXbPIGp0?=
 =?us-ascii?Q?Mm4+8LbXlpJGiEaN/1z9lxxPTcqXL/Rs7VdMqAF+DEC3tM5Zx2h9OuMHvz8C?=
 =?us-ascii?Q?ulYk6nBd6ocQj1hMNDeIHS1AXps/o7lccjymm4giy/Wq+YryoZGSWu/hN4dc?=
 =?us-ascii?Q?5RthkmqQO3TRtlzSAIBGdUDSM8I4nks4b0IwK23u7PDpiBqFJ7YAh/L2TYH5?=
 =?us-ascii?Q?YbbAQvEAsR4KxBvitQnzQAoehLl1bOBin01qqLxGa4OvTN9zACD8vIw3W0Kk?=
 =?us-ascii?Q?G5Ej/iI80TuobnteBpC6kkwrSZB09hkUNsxnCB6wFQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zxlUYBF6HLnOMONqUFStbj2MxfGqofJrOW3okOwE3NOVmY3za2Vdcw8dVBnU?=
 =?us-ascii?Q?kTogMkElTfPOiQuPbE1NM4Fb7WCf8aNvYbTW3pQm7JR6njfnFsouUsbQ9/HK?=
 =?us-ascii?Q?TexIYfPZlGiLN9AgJQDgPQDwDHBGEs8AdUoNa9T+Xo70UnqH8D49yyvQgJ8F?=
 =?us-ascii?Q?OUTLCZOtO6whhLPKz84yYD7EhfSGjy5xxj8TuUpvNUJG0LCstXlBG3PgLvMx?=
 =?us-ascii?Q?XAopDCT6n8pwMqVfCF4Nm/p7h6Uki975gpVB9icAsSMJg+1jfpOQoKTQMeix?=
 =?us-ascii?Q?Y0Wxnlm3Rk0xUXspDv2whjhsVrc/E+ZzWPZJ8Pj413Mjv3X0sA10SEMdWp1J?=
 =?us-ascii?Q?w+PmZxREwC0Hbu5sQyTi0TPlQudfk+KjmFMrKXyG8idVAulmGYwbY15BMnlH?=
 =?us-ascii?Q?BMHqaRHPDAaWtUkSpuCnCnHUIFljuLgr7ziL6JPA0wUMCcEVpoUmU/t40CJe?=
 =?us-ascii?Q?wJZjEJN/srZNW9sB6/DBuS68hX+um0g0qIiSl6C6d0GOmmv7v/NpO++q5v8P?=
 =?us-ascii?Q?5DGVbFs63f1S3mlP+fx38cVR7FcB366PbrV+t0eA7vJPxhEVOPDsnVmGP1oK?=
 =?us-ascii?Q?rcQFeOcFt0LxmL+IhxoqtCyzeHMyp3Be0AXxVIObljjdfbC7FJiOiBtOUTpH?=
 =?us-ascii?Q?vecNC8ot5zGBdS6jw2Sv2D9nbN2YdUT9pz6EILKN33SKv0EbxAPMJCY28otl?=
 =?us-ascii?Q?M+YBZM5HsPdBs+WCYTcY811/+D/A5lEBvsFLb9OtJnmQY7F9u2h2Z8AvvtHu?=
 =?us-ascii?Q?2o3vfQodqgLWwF3gHk3/43kQZkM1HOXrkjsNhcEKIVk8XK5XMTxlyq5sJ9Dy?=
 =?us-ascii?Q?p9EPYspSfdWUPbt0eySHPa9tQXCDNQJ6Wa5UR8nl/RBWPOu5HH1vEz2ZrQLx?=
 =?us-ascii?Q?5pQgdH7N7jC4ZKhBgCK+OQioUDds8rMbYMOeTuab19BabVryvVtKu3zDWe4b?=
 =?us-ascii?Q?QqSnUsywaELN5hUq/dQ82lJGqvZvoS7xTww+ccP51vgUjfpHTC57QLgFsyAZ?=
 =?us-ascii?Q?1WDVA/HTewvzbrMzhRd2EUjdEXLef7GL7sGf5LCLxigG7AUrioRJ8deCuYBj?=
 =?us-ascii?Q?D3/DVnVZX6ldGRvnpimTigqyU7/frWQaLzqwIg1g8QJt9KocVhaJ4th0fN7j?=
 =?us-ascii?Q?pozs/58+eV/dd3Fjcl1CJhYcA4zo0oIXUQy8SMXY0SQrtAuZe2L0h+qJmwwa?=
 =?us-ascii?Q?oPIUxCLfrxggqC7okvXUakEMk6FplPDJqIJH/0LvZ1zmum8ipRNPwxqhjdqN?=
 =?us-ascii?Q?hmGL4pKqWkH8Ems3jdkdytTvIeeIXaLXjIfhAeiT0Y7VhBSYVFwwhwN9UkUE?=
 =?us-ascii?Q?KsOEmGt6IBB5AQUZzrphTGJd5NXH8zS3kqR9K8qzrdA+jqKt8wp4win5lPxo?=
 =?us-ascii?Q?5IDZmJ7cjprkKzwMcKn0qj5BINw0m+fOrMmGoDDb4rR+SpMX4CZ/j9iUyO8w?=
 =?us-ascii?Q?MsVrHd3CBjXGfJkzbPlAWiJmupCkWpdmL4cV9fsynluEamTwBUZAkZnB5+kg?=
 =?us-ascii?Q?k137e7gSe1c7SMuDjXroPpuC61kgYm0Wv68C84EGwJXFMXED/CnLsGaUuEC6?=
 =?us-ascii?Q?Obf1QRoUcgI0KDfToBgfR83ksKtKoCX2KEG13skMPXjEVu+FfoyxgnklidFa?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fca13ad1-d01d-485e-f1a4-08dc848468c9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 10:52:21.0506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xrnC04/Ug+PoZetWRMWaqR6gtNaTryT5UdDI7/CauQW2CGNcG/G0q+Q8jCjGSudZ1YVOyZo7MRDn8oc9rjwvbiqQJ82i8yBpEQwo/iwQo04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717498345; x=1749034345;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wHHBchUdB6X2tDu/ZAJTqy21MOMYureaEuGsmPpXN4Q=;
 b=UdxH/f/AFFfcgvxrTPK5hZkep/0U/Ob1fnHs1mgA8byFc7CJxJ1vpp3N
 J5Jqa7BuImQo02gljZ4ZUV4l1dIfkpmoTMthZ6sUE0r5tLGp+CwTbuAwE
 wI4XpkfW3ldn1rkRzvGK7YUGGr+vWsf0mNNyrHyKRkEufjleL/fcRDwCd
 D/fRMdNLA22gzAC+mLjLo//6siv9O5P/nGvHkudFXKxLtkKXyi1Q92sS/
 8AcdX9fJv83IwlE/Yn5SULxd2yF8KE48XmgMODwfRZH+YRRiN0Yc4GNAB
 rH9ajQFbo8uoeVq0p6aDa6ICFm3IiwyQxcxPifKHlKepwbHo0I9DPP/V2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UdxH/f/A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 6/8] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
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

On Fri, May 31, 2024 at 04:49:05PM -0700, Nelson, Shannon wrote:
> On 5/29/2024 4:23 AM, Maciej Fijalkowski wrote:
> > 
> > xsk_buff_pool pointers that ice ring structs hold are updated via
> > ndo_bpf that is executed in process context while it can be read by
> > remote CPU at the same time within NAPI poll. Use synchronize_net()
> > after pointer update and {READ,WRITE}_ONCE() when working with mentioned
> > pointer.
> > 
> > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice.h      |  6 +-
> >   drivers/net/ethernet/intel/ice/ice_base.c |  4 +-
> >   drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
> >   drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
> >   drivers/net/ethernet/intel/ice/ice_xsk.c  | 78 ++++++++++++++---------
> >   drivers/net/ethernet/intel/ice/ice_xsk.h  |  4 +-
> >   6 files changed, 59 insertions(+), 39 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> > index da8c8afebc93..701a61d791dd 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -771,12 +771,12 @@ static inline struct xsk_buff_pool *ice_get_xp_from_qid(struct ice_vsi *vsi,
> >    * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
> >    * present, NULL otherwise.
> >    */
> > -static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
> > +static inline void ice_xsk_pool(struct ice_rx_ring *ring)
> 
> Since this patch is changing the logic here you mighht want to change the
> name of the function.  Instead of getting a pointer with no side effects it
> is now doing something, so a better name might be ice_set_xsk_pool() to
> reflect the resulting side effect.

Makes sense, plus the function description needs some adjustment. Will fix
on v3.

> 
> sln
> 
> >   {
> >          struct ice_vsi *vsi = ring->vsi;
> >          u16 qid = ring->q_index;
> > 
> > -       return ice_get_xp_from_qid(vsi, qid);
> > +       WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
> >   }
> > 
> >   /**
> > @@ -801,7 +801,7 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
> >          if (!ring)
> >                  return;
> > 
> > -       ring->xsk_pool = ice_get_xp_from_qid(vsi, qid);
> > +       WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
> >   }
> > 
> >   /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> > index 5d396c1a7731..f3dfce136106 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_base.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> > @@ -536,7 +536,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> >                                  return err;
> >                  }
> > 
> > -               ring->xsk_pool = ice_xsk_pool(ring);
> > +               ice_xsk_pool(ring);
> >                  if (ring->xsk_pool) {
> >                          xdp_rxq_info_unreg(&ring->xdp_rxq);
> > 
> > @@ -597,7 +597,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> >                          return 0;
> >                  }
> > 
> > -               ok = ice_alloc_rx_bufs_zc(ring, num_bufs);
> > +               ok = ice_alloc_rx_bufs_zc(ring, ring->xsk_pool, num_bufs);
> >                  if (!ok) {
> >                          u16 pf_q = ring->vsi->rxq_map[ring->q_index];
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 1b61ca3a6eb6..15a6805ac2a1 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -2946,7 +2946,7 @@ static void ice_vsi_rx_napi_schedule(struct ice_vsi *vsi)
> >          ice_for_each_rxq(vsi, i) {
> >                  struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
> > 
> > -               if (rx_ring->xsk_pool)
> > +               if (READ_ONCE(rx_ring->xsk_pool))
> >                          napi_schedule(&rx_ring->q_vector->napi);
> >          }
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > index 8bb743f78fcb..f4b2b1bca234 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -1523,7 +1523,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
> >          ice_for_each_tx_ring(tx_ring, q_vector->tx) {
> >                  bool wd;
> > 
> > -               if (tx_ring->xsk_pool)
> > +               if (READ_ONCE(tx_ring->xsk_pool))
> >                          wd = ice_xmit_zc(tx_ring);
> >                  else if (ice_ring_is_xdp(tx_ring))
> >                          wd = true;
> > @@ -1556,7 +1556,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
> >                   * comparison in the irq context instead of many inside the
> >                   * ice_clean_rx_irq function and makes the codebase cleaner.
> >                   */
> > -               cleaned = rx_ring->xsk_pool ?
> > +               cleaned = READ_ONCE(rx_ring->xsk_pool) ?
> >                            ice_clean_rx_irq_zc(rx_ring, budget_per_ring) :
> >                            ice_clean_rx_irq(rx_ring, budget_per_ring);
> >                  work_done += cleaned;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > index 8c5006f37310..693f0e3a37ce 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > @@ -250,6 +250,8 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
> >          ice_qvec_toggle_napi(vsi, q_vector, true);
> >          ice_qvec_ena_irq(vsi, q_vector);
> > 
> > +       /* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
> > +       synchronize_net();
> >          netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> >          netif_carrier_on(vsi->netdev);
> >          clear_bit(ICE_CFG_BUSY, vsi->state);
> > @@ -461,6 +463,7 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
> >   /**
> >    * __ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
> >    * @rx_ring: Rx ring
> > + * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
> >    * @count: The number of buffers to allocate
> >    *
> >    * Place the @count of descriptors onto Rx ring. Handle the ring wrap
> > @@ -469,7 +472,8 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
> >    *
> >    * Returns true if all allocations were successful, false if any fail.
> >    */
> > -static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > +static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> > +                                  struct xsk_buff_pool *xsk_pool, u16 count)
> >   {
> >          u32 nb_buffs_extra = 0, nb_buffs = 0;
> >          union ice_32b_rx_flex_desc *rx_desc;
> > @@ -481,8 +485,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> >          xdp = ice_xdp_buf(rx_ring, ntu);
> > 
> >          if (ntu + count >= rx_ring->count) {
> > -               nb_buffs_extra = ice_fill_rx_descs(rx_ring->xsk_pool, xdp,
> > -                                                  rx_desc,
> > +               nb_buffs_extra = ice_fill_rx_descs(xsk_pool, xdp, rx_desc,
> >                                                     rx_ring->count - ntu);
> >                  if (nb_buffs_extra != rx_ring->count - ntu) {
> >                          ntu += nb_buffs_extra;
> > @@ -495,7 +498,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> >                  ice_release_rx_desc(rx_ring, 0);
> >          }
> > 
> > -       nb_buffs = ice_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
> > +       nb_buffs = ice_fill_rx_descs(xsk_pool, xdp, rx_desc, count);
> > 
> >          ntu += nb_buffs;
> >          if (ntu == rx_ring->count)
> > @@ -511,6 +514,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> >   /**
> >    * ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
> >    * @rx_ring: Rx ring
> > + * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
> >    * @count: The number of buffers to allocate
> >    *
> >    * Wrapper for internal allocation routine; figure out how many tail
> > @@ -518,7 +522,8 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> >    *
> >    * Returns true if all calls to internal alloc routine succeeded
> >    */
> > -bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > +bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> > +                         struct xsk_buff_pool *xsk_pool, u16 count)
> >   {
> >          u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
> >          u16 leftover, i, tail_bumps;
> > @@ -527,9 +532,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> >          leftover = count - (tail_bumps * rx_thresh);
> > 
> >          for (i = 0; i < tail_bumps; i++)
> > -               if (!__ice_alloc_rx_bufs_zc(rx_ring, rx_thresh))
> > +               if (!__ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, rx_thresh))
> >                          return false;
> > -       return __ice_alloc_rx_bufs_zc(rx_ring, leftover);
> > +       return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
> >   }
> > 
> >   /**
> > @@ -650,7 +655,7 @@ static u32 ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
> >          if (xdp_ring->next_to_clean >= cnt)
> >                  xdp_ring->next_to_clean -= cnt;
> >          if (xsk_frames)
> > -               xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
> > +               xsk_tx_completed(READ_ONCE(xdp_ring->xsk_pool), xsk_frames);
> > 
> >          return completed_frames;
> >   }
> > @@ -702,7 +707,8 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
> >                  dma_addr_t dma;
> > 
> >                  dma = xsk_buff_xdp_get_dma(xdp);
> > -               xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, size);
> > +               xsk_buff_raw_dma_sync_for_device(READ_ONCE(xdp_ring->xsk_pool),
> > +                                                dma, size);
> > 
> >                  tx_buf->xdp = xdp;
> >                  tx_buf->type = ICE_TX_BUF_XSK_TX;
> > @@ -760,7 +766,8 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> >                  err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
> >                  if (!err)
> >                          return ICE_XDP_REDIR;
> > -               if (xsk_uses_need_wakeup(rx_ring->xsk_pool) && err == -ENOBUFS)
> > +               if (xsk_uses_need_wakeup(READ_ONCE(rx_ring->xsk_pool)) &&
> > +                   err == -ENOBUFS)
> >                          result = ICE_XDP_EXIT;
> >                  else
> >                          result = ICE_XDP_CONSUMED;
> > @@ -829,8 +836,8 @@ ice_add_xsk_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *first,
> >    */
> >   int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
> >   {
> > +       struct xsk_buff_pool *xsk_pool = READ_ONCE(rx_ring->xsk_pool);
> >          unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> > -       struct xsk_buff_pool *xsk_pool = rx_ring->xsk_pool;
> >          u32 ntc = rx_ring->next_to_clean;
> >          u32 ntu = rx_ring->next_to_use;
> >          struct xdp_buff *first = NULL;
> > @@ -942,7 +949,8 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
> >          rx_ring->next_to_clean = ntc;
> >          entries_to_alloc = ICE_RX_DESC_UNUSED(rx_ring);
> >          if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
> > -               failure |= !ice_alloc_rx_bufs_zc(rx_ring, entries_to_alloc);
> > +               failure |= !ice_alloc_rx_bufs_zc(rx_ring, xsk_pool,
> > +                                                entries_to_alloc);
> > 
> >          ice_finalize_xdp_rx(xdp_ring, xdp_xmit, 0);
> >          ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
> > @@ -965,17 +973,19 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
> >   /**
> >    * ice_xmit_pkt - produce a single HW Tx descriptor out of AF_XDP descriptor
> >    * @xdp_ring: XDP ring to produce the HW Tx descriptor on
> > + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
> >    * @desc: AF_XDP descriptor to pull the DMA address and length from
> >    * @total_bytes: bytes accumulator that will be used for stats update
> >    */
> > -static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
> > +static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring,
> > +                        struct xsk_buff_pool *xsk_pool, struct xdp_desc *desc,
> >                           unsigned int *total_bytes)
> >   {
> >          struct ice_tx_desc *tx_desc;
> >          dma_addr_t dma;
> > 
> > -       dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc->addr);
> > -       xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc->len);
> > +       dma = xsk_buff_raw_get_dma(xsk_pool, desc->addr);
> > +       xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, desc->len);
> > 
> >          tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_to_use++);
> >          tx_desc->buf_addr = cpu_to_le64(dma);
> > @@ -988,10 +998,13 @@ static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
> >   /**
> >    * ice_xmit_pkt_batch - produce a batch of HW Tx descriptors out of AF_XDP descriptors
> >    * @xdp_ring: XDP ring to produce the HW Tx descriptors on
> > + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
> >    * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
> >    * @total_bytes: bytes accumulator that will be used for stats update
> >    */
> > -static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
> > +static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring,
> > +                              struct xsk_buff_pool *xsk_pool,
> > +                              struct xdp_desc *descs,
> >                                 unsigned int *total_bytes)
> >   {
> >          u16 ntu = xdp_ring->next_to_use;
> > @@ -1001,8 +1014,8 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
> >          loop_unrolled_for(i = 0; i < PKTS_PER_BATCH; i++) {
> >                  dma_addr_t dma;
> > 
> > -               dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, descs[i].addr);
> > -               xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, descs[i].len);
> > +               dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
> > +               xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
> > 
> >                  tx_desc = ICE_TX_DESC(xdp_ring, ntu++);
> >                  tx_desc->buf_addr = cpu_to_le64(dma);
> > @@ -1018,21 +1031,24 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
> >   /**
> >    * ice_fill_tx_hw_ring - produce the number of Tx descriptors onto ring
> >    * @xdp_ring: XDP ring to produce the HW Tx descriptors on
> > + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
> >    * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
> >    * @nb_pkts: count of packets to be send
> >    * @total_bytes: bytes accumulator that will be used for stats update
> >    */
> > -static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
> > -                               u32 nb_pkts, unsigned int *total_bytes)
> > +static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring,
> > +                               struct xsk_buff_pool *xsk_pool,
> > +                               struct xdp_desc *descs, u32 nb_pkts,
> > +                               unsigned int *total_bytes)
> >   {
> >          u32 batched, leftover, i;
> > 
> >          batched = ALIGN_DOWN(nb_pkts, PKTS_PER_BATCH);
> >          leftover = nb_pkts & (PKTS_PER_BATCH - 1);
> >          for (i = 0; i < batched; i += PKTS_PER_BATCH)
> > -               ice_xmit_pkt_batch(xdp_ring, &descs[i], total_bytes);
> > +               ice_xmit_pkt_batch(xdp_ring, xsk_pool, &descs[i], total_bytes);
> >          for (; i < batched + leftover; i++)
> > -               ice_xmit_pkt(xdp_ring, &descs[i], total_bytes);
> > +               ice_xmit_pkt(xdp_ring, xsk_pool, &descs[i], total_bytes);
> >   }
> > 
> >   /**
> > @@ -1043,7 +1059,8 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
> >    */
> >   bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
> >   {
> > -       struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
> > +       struct xsk_buff_pool *xsk_pool = READ_ONCE(xdp_ring->xsk_pool);
> > +       struct xdp_desc *descs = xsk_pool->tx_descs;
> >          u32 nb_pkts, nb_processed = 0;
> >          unsigned int total_bytes = 0;
> >          int budget;
> > @@ -1057,25 +1074,26 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
> >          budget = ICE_DESC_UNUSED(xdp_ring);
> >          budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
> > 
> > -       nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
> > +       nb_pkts = xsk_tx_peek_release_desc_batch(xsk_pool, budget);
> >          if (!nb_pkts)
> >                  return true;
> > 
> >          if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
> >                  nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> > -               ice_fill_tx_hw_ring(xdp_ring, descs, nb_processed, &total_bytes);
> > +               ice_fill_tx_hw_ring(xdp_ring, xsk_pool, descs, nb_processed,
> > +                                   &total_bytes);
> >                  xdp_ring->next_to_use = 0;
> >          }
> > 
> > -       ice_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed,
> > -                           &total_bytes);
> > +       ice_fill_tx_hw_ring(xdp_ring, xsk_pool, &descs[nb_processed],
> > +                           nb_pkts - nb_processed, &total_bytes);
> > 
> >          ice_set_rs_bit(xdp_ring);
> >          ice_xdp_ring_update_tail(xdp_ring);
> >          ice_update_tx_ring_stats(xdp_ring, nb_pkts, total_bytes);
> > 
> > -       if (xsk_uses_need_wakeup(xdp_ring->xsk_pool))
> > -               xsk_set_tx_need_wakeup(xdp_ring->xsk_pool);
> > +       if (xsk_uses_need_wakeup(xsk_pool))
> > +               xsk_set_tx_need_wakeup(xsk_pool);
> > 
> >          return nb_pkts < budget;
> >   }
> > @@ -1108,7 +1126,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
> > 
> >          ring = vsi->rx_rings[queue_id]->xdp_ring;
> > 
> > -       if (!ring->xsk_pool)
> > +       if (!READ_ONCE(ring->xsk_pool))
> >                  return -EINVAL;
> > 
> >          /* The idea here is that if NAPI is running, mark a miss, so
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
> > index 6fa181f080ef..4cd2d62a0836 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
> > @@ -22,7 +22,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool,
> >                         u16 qid);
> >   int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget);
> >   int ice_xsk_wakeup(struct net_device *netdev, u32 queue_id, u32 flags);
> > -bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count);
> > +bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> > +                         struct xsk_buff_pool *xsk_pool, u16 count);
> >   bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
> >   void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
> >   void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
> > @@ -51,6 +52,7 @@ ice_clean_rx_irq_zc(struct ice_rx_ring __always_unused *rx_ring,
> > 
> >   static inline bool
> >   ice_alloc_rx_bufs_zc(struct ice_rx_ring __always_unused *rx_ring,
> > +                    struct xsk_buff_pool __always_unused *xsk_pool,
> >                       u16 __always_unused count)
> >   {
> >          return false;
> > --
> > 2.34.1
> > 
> > 
