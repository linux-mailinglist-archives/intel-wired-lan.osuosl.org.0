Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 944074CAF01
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B68AE408E9;
	Wed,  2 Mar 2022 19:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I8g-ngvFBHkO; Wed,  2 Mar 2022 19:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7316408D5;
	Wed,  2 Mar 2022 19:46:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15FCF1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 028CD408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fr7zyQIc14cy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38B60408A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250394; x=1677786394;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9/h9L/wWwV0zuHe80OYjXGHWy9vI5leZgq1ZfWaXfjY=;
 b=eK/uJj1J8RMIz2KfSfW+7CG+FoMIz7Lxt8gS6AaE3nyAL/ipakGafrNr
 FU32ZQUuIDdEH/L7pONaT0ZKgXELxiXwhqCWu6o3qYSc4HDvV9ZXSmure
 ZSoLGD+iPvRjL2mMoPWgw6RfPizSgQeCAZIDV1RbpYZoHbanD+c7Dp3yf
 RWmYsdKpz0NxHAs6gWKFHkqwPAiuJ6c9iuRyWe5TVihLslPmTgAisum3L
 7d4l5yekQCEwgEbqi/rBYXJUomdXQqcri9cTfch4F84Jw77/nVAQ3McrR
 MwuC+Q9c97scVnysbJXdc/EKSiHXHia6kB+N+ZbTT2Y3sZvitOIhFplnn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237001708"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="237001708"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:46:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="639903389"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2022 11:46:32 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:46:32 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:46:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:46:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 11:46:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogzhPg2u7ND8YkPWizef6a2l/pgybkqCyibNLPdYWto0k/3LOsAQRCtUAoF7EM2mX0lBJLoUba37oewRcvgNUe80wpVSF4a5gFGQWYcacSKcr0K6CETe+Syve0PcMiGgzxCwfTchzVpVsHEUfOEcvrU9czpYcuKHoapFXtvO4m28+Dqg2DSZyahY38O2Ia95TL6vsmTuto4FSzi2afMjcTAau/j3dLpjmWoMomxU4Qc3rC1e20wTFA2Wl0izktRRSRvKVOWzWc2lRyON0V/646W/xFtFY3Q0fwkj+T8mrSJR9uHEZsWSvFk93uZTC3D1zi50COIk08pi9kWK/96NIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uiC2/yMconAnCfXCZmcll8fmiw9eaa3K/XuKnTUWCMw=;
 b=XBXPjVvQpHgqs6oKqGvbkjusEaIQ++O10euEP2gA53fg8gtntIMS5oe4z3D1czs9SSU6av5T6joNe87lvGD+c21XtlJOXD4VJc/KPZZGdFbVnK2WdQYBp/BvteW7T9AOmHFzF9d+DoHpaERRrn04Tk7SyOYrV2OkKS79VwCEmZLZWej2j4NdqAD3Rn0is8VSb3DDr4Ot+l5yHrkLhkMnqBSLgUujAnocLYpnDT+hw2qLokf2g77WVRUleSQOFT7H7HEQYTQDdNspCrLcxYiZ7JCoXHBQDxAxVkYfG0bxA3El9iulhXDnX35uIt9Vqw2+fSKIeTJ8/HUffK8WlZht6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB1617.namprd11.prod.outlook.com (2603:10b6:405:f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:46:29 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:46:29 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 19/25] ice: convert
 ice_reset_vf to standard error codes
Thread-Index: AQHYKExx62dNUxzz6ki0m+86YVwhUqysi8Ag
Date: Wed, 2 Mar 2022 19:46:29 +0000
Message-ID: <SJ0PR11MB56295DE4D6BC0840CEC1B0A8AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-20-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-20-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 691cc21f-e8b8-43d4-0d57-08d9fc855880
x-ms-traffictypediagnostic: BN6PR11MB1617:EE_
x-microsoft-antispam-prvs: <BN6PR11MB161753D0876C988DC3580255AB039@BN6PR11MB1617.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DYG6BjVWCX4zNqVh28Ah38YJYMZA3o6Qzkz7alCUsyHOqR86RgkvcRUxoplQtMwO0oqyq8jOaUEmZGdrn78GstEYT7iwaLmJNCeRBy6PBMNNSE2yIpMr8MqpClB8YXrT1fVDZqGsNhjsaZIOG0ISSq9HPsW21o4pnpDd8ls4bw3CA+3oF+1XhVEMXsf55QLtWP9BXJu5qkypuNckgZH8YCWHnmFWc65zkRUpClh3Awo09UXcBd9VqQ8f/LblxnHkqm+ajC3Kn2Il4nyVAcYUqlU08L5UcYW9uPwWp7eOte5YUqRrXMBk5FFcv+oIHsv9oZgGDaVjK6guqv12y7iEt4Ni3SeIE+c7UIgIgdCgtHId85bkWTX9ByG6v5qPPlCkNYr+gAADQOV3i5HLFv2iQtoMTSny5OnYA8e5CVo+KysVaoE6qgJvCeWDgD87MQ20RqQck7d8Lgo7XQxJ/G/CsX/lihCnxkjIH5K5Cx3Ux5XybKZ5B1WZnKZN3QokUwwZmcT0+adgBfdcVoAnr5Iu4fhc7Zb0CQPbHCtK+dZKgcbsAFewtd6OnCNhxi2hzpdC6HKfP7VBbT/yedCHNK9igFtjJFKMhyCbukyE9rAzEQ+mNVitOFeoozW7GU5bpQ8FqFu8cwaPfm+ODbAU1872orqQPHZ0sFmhOlopPJfQs2ZRlmj8lTjp11qJDzeUI7e7ZIY/u6FA7Xm1z948LZF6Zg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(86362001)(122000001)(8936002)(38070700005)(5660300002)(82960400001)(2906002)(38100700002)(26005)(186003)(110136005)(508600001)(9686003)(6506007)(7696005)(71200400001)(53546011)(55016003)(66946007)(66476007)(66556008)(76116006)(64756008)(66446008)(33656002)(8676002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IoY/QFh+qQbY3mX0CUJlkO6nEeqQYlo+ILNaPLSmND0USTIMksGK3N8+d9k6?=
 =?us-ascii?Q?TqWIWfKVSswel/XHRJD2fZDFNUODsUhz8xMFIpJRcXi+d7/KRYO5yOkfS1ev?=
 =?us-ascii?Q?jmRT4mR0LW7Yfdqh87V92LOY7rld3WDUueyvoQgDoBZ+kfizSEZ+GL7TQrEA?=
 =?us-ascii?Q?S8TQoU0H8S+tsZuJhsi3mjDxUZUGwKhclCu7FBdXJXxdCtHIApxVcZ5srTRI?=
 =?us-ascii?Q?LqTnkX2Ht9P0UcRE2S00qshu52wNqNMOkozjN3GS7CTK6Ws6Y4UyjkhZ4mRV?=
 =?us-ascii?Q?JS3S/rYmsJUT7R5U78hmqVH3GCfP6LamSwWUqHhj8G9fGdxdOJj9ysMWsKqE?=
 =?us-ascii?Q?xDfn9bUoJCWN9H5BRSShZecL24s0Rtt49MBZ+nWI/AvCI2ieBosW6cIJ5tXs?=
 =?us-ascii?Q?Q5qS9lQqpaAYBkzvq/xZahct1fDF38GQRE4crKG4BXrfAUaoME5XzJ3mzzS9?=
 =?us-ascii?Q?EAYYuz1oD9Xzbwp76T7CykB6oXKSW2ZkyaIKeliiu7mrSXro2PvKDpk6tVQo?=
 =?us-ascii?Q?K6eyC3Ccijg0TssmyQL5rhqlWqrNi9xH3QKOg+wmey2fhMYJEyCpTkb+d/DZ?=
 =?us-ascii?Q?kimdyU26vRxQWKpkrwlL0jBBGv7P/Il/smzd+T+W9AFOMCk/qm2BOijiw9+g?=
 =?us-ascii?Q?M5rlHhn8XWBuujK5N+Kfop9ADYtIz2p1Q0yOBsxGqkqNXxBQUuKBW+1VI8XP?=
 =?us-ascii?Q?IpdsKGuKUnZ1RFy3RBejdGzBzRxZoEVbb8dxcqDElqTnNZugBYyE8eW0/+i3?=
 =?us-ascii?Q?gACZSYe8gkfC6T7tNUS/5RdmIsk39gJbOcHBm52RZRltq+r5E5AIcrjwkQHw?=
 =?us-ascii?Q?bCruNu0eUanoKx+3aSnwfic7GNMRnzj3s/+gtWPCguhuYCUy5UHXy99ONp0g?=
 =?us-ascii?Q?0HV9Jyo86cWTQ0JbyXUYqSQ+mHcBxtJremkVuVG5rGRdrQujSHrSsyI9ua6q?=
 =?us-ascii?Q?OWnnKJuAlWDI69nDcRgUj/9IYUP+yli0U6wLQwdmFr2Ff9euqNEyYJJE5ptE?=
 =?us-ascii?Q?/Afd7qkAKI8EI1QvG6/UaLoAPJw51NzAGGgoDmGoRjKOylaldaRiPoyIsIzF?=
 =?us-ascii?Q?WLDEqkPSIi6D5BwTX5ThfNa1PylCZgikwp+cCTNbzSfcKt6stDasusEsv6Vn?=
 =?us-ascii?Q?vwz/cq3eCKP4kReASOUQy3Z0B3AH3AaVtBgzVmq3xyAI1LokWXnaWSbLw34f?=
 =?us-ascii?Q?Rt3tXAh4SQ19zhbWL7lurwJ/WZwaf906t+uiw9Ofdim3NtTU+95BQGY2ptkf?=
 =?us-ascii?Q?QXUPhF/EDR1Q3CSM1T9bPcT3ZIjJIiQHBykbzuWouSOEZL3N1vmyOjYOaYTx?=
 =?us-ascii?Q?V/XB8+206LXv7XLdH7qMptCXPfvjE9PKxGofBPBhD4VcxZnOKcs9NOOPCh23?=
 =?us-ascii?Q?Xez0RS6wlYtupYj7urCDtBA/Tl7Tr0IBw5OVx/qrvAHHhSq9DGzLjRQQ57Qg?=
 =?us-ascii?Q?a9AAm6e3k2i/SHL9DB3rz2WEwiREoM/9z6uZbwPi3WW0ZJZ+cD3PqFcq0a+1?=
 =?us-ascii?Q?Z56FdhClLLTsAJQOp7c3RWTN0aygjPcGc9qZM7sx++Y8G78MsIl0HsBu93L1?=
 =?us-ascii?Q?O+BZIUT8sto2+04LSqpeNN7M3WNkKOQpuuWz48HlfQS+nR7EMDlatP2Cl7LC?=
 =?us-ascii?Q?zOSyorXWmEJPz90UXaa/IzWM697kzYfEbeC8kdhHqIJNwV3zap9ihaWmHhSq?=
 =?us-ascii?Q?nMfMLg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 691cc21f-e8b8-43d4-0d57-08d9fc855880
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:46:29.4335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QtITdM/aDOX5nUCw6IEp1H6GrmzgRtUVaDlq0o8qJdeEAGu7huknU5xfMcPTIY3+rvG3TJHj/x5RF3hf8AcGQlbTFXWbnMQt30/Rjewvr4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 19/25] ice: convert
 ice_reset_vf to standard error codes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 19/25] ice: convert ice_reset_vf
> to standard error codes
> 
> The ice_reset_vf function returns a boolean value indicating whether or not
> the VF reset. This is a bit confusing since it means that callers need to know
> how to interpret the return value when needing to indicate an error.
> 
> Refactor the function and call sites to report a regular error code. We still
> report success (i.e. return 0) in cases where the reset is in progress or is
> disabled.
> 
> Existing callers don't care because they do not check the return value.
> We keep the error code anyways instead of a void return because we expect
> future code which may care about or at least report the error value.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 15 ++++++++-------
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  6 +++---
>  2 files changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 6f9e8383c69b..d37232197bde 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -446,10 +446,11 @@ void ice_reset_all_vfs(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
