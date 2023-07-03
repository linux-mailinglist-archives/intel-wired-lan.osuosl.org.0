Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ED2745B8A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 13:49:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA0F78200A;
	Mon,  3 Jul 2023 11:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA0F78200A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688384966;
	bh=N9iD8yexOtZ4ytZXpJ/6CEVJkAtAO8uzIiR5jdzJWEA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hMNOjMMy77wwv/UiW9FBfVSXpOcnbed94wuORVizjrqJCqXjVzK2W8OTzH9ONtOu0
	 IGZR0tce/jHS+4nXDgGuN9ujpg0Mr3DjqaHcqTD2KVHMEX8HX0+1mVpT7t85sjyvnP
	 TDWHnPuCt0EyKHKrS3pXFPhrM0T4YvXeNLYrBgfaL657HTiFRuPTxbsto1ChsJgWbb
	 o2cAJjDdp8z3Cxq5GGapr9fUDw4yFyRcBTqvfPZeIHiYZzrgf/OTqQ9nKIigLLlUyF
	 8XJBOEh0oDcafDhSNrf4Z6olgsS4PBGVwWchvsPSufM6oGbXziueziCbtk9pMq7+al
	 qyCF4W/4fA9fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kk0nfnXKMVLO; Mon,  3 Jul 2023 11:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A783D817A4;
	Mon,  3 Jul 2023 11:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A783D817A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E98931BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C83EB60BD1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C83EB60BD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bibps0p3AGAM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 11:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC1A8605A1
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC1A8605A1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:49:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="362899325"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="362899325"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 04:49:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="668733242"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="668733242"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 03 Jul 2023 04:49:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 04:49:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 04:49:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 04:49:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 04:49:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOOKsN8gdnl5k2Rv2gXEnsp7ixBseiDXjUrJiDm2oLiJBjn+BmeI9T7Ki0KYVkvcb2EobaAGsevGRjzKOVtdyocom9MWeGxKuZmMT0nZ8mv80Tk2YUBdjDRxcTtBvJ523d7wZIYgYzBf6Ezc1oeJt5CtjqEE4umG1p+i+9VLea/PxukarzgXcolZ1RazFNy30JKxdCcW+9AUyBJcEVNIKb1QkFq9PlWpxGBg/a0Mc+58D7qf0gHrTWnSc0exUWwb6G5jeCrbsYhAN4i4W5cuoTiTEC2SrrfwQOqkuWw3kh3HVVys4QR7ptlyTcDmqgURKurnz5fY6ehacnfen0ihuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uTG6XBgR0TRn+3ZYO5YMXgr9326RbltGKLstk3qit78=;
 b=c2+gcuPZTc6QpsIgCGkGNjc7ut2/BvpPEFUvSSYV2eyTroq/D3KpuFHxe+msrFRsq5tlOSHg+tD4DMLg8uAUhIvzQv1ryinL2hBu/D7+JpebR4j9IHYYupqDwp71497CqeIPio0j4m5VQ0sMjWnMICn0+RxIqfS2HF+GPMFMGrO83DtGt1s5jC6PnrVejPfTeWF7GPmaWhbwQK9/s9PHAJyZ1UCldBPfIlfrFySaOY+ViZ0Yn0F9zY76PryQWcTfKAG0+1qvwwkxae5SVA6PSqiNmAUtVepMbNcNdOaC/nAC6CmJq64bkpBff5g1vPfqC2Zz1jZfT2iA0z8MNME2Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 11:49:12 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 11:49:12 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: Add support for
 PFCP hardware offload in switchdev
Thread-Index: AQHZmTTa8szbVpeFMUiOLLEk5dzVGq+oFiTw
Date: Mon, 3 Jul 2023 11:49:12 +0000
Message-ID: <PH0PR11MB5013A54736DCFB50D37036F29629A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230607112606.15899-1-marcin.szycik@linux.intel.com>
 <20230607112606.15899-7-marcin.szycik@linux.intel.com>
In-Reply-To: <20230607112606.15899-7-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DM4PR11MB7205:EE_
x-ms-office365-filtering-correlation-id: c1d5b272-ce1c-428a-66f1-08db7bbb8504
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0GiXSgvPqvyAaw4+C6KUEa80C3+3S9L+m+nR6p1saQY2tOue65VwvC8bLUxt/BYT/eU/1uMYV9J0THuJYX/h6URHLS2VT5GswclH03TqBflVOJa8jKKF70vMVhOHzLiaXf8xWWmDwnY9R3GgbrwTAJSvEveECzKCVZFq9Z05sENqyj8ICtbVXdY4R0Ja6BxDBRVhaAEESJ3dC2Sqy6Drilke8FFQXZfGzDp8Q3l0a2E5oFBy7Z25BB5xVOdDy5Tj7nCYYunTjsc5rLbJK3KxFBgfnuBq7po5MPPwk3O8bv29SrmwhEYodxfNuRFT0IFXxBx/lmZWX2lobYEjXUbiyoPZNObeBOqcEhpsAIz+d71JokguMkSEwz0e0aN+ptR6/N6Bglepd4bJrqiXJ+6PTPNMhAz/W9Fl8d77HR+afrJ6W0nFHw3MSnm9Z/ezHbH1lPUwkOOk1HpF9AL+w/tKV8etthzGFxX3fA++Q/q2oVFTIuRzLxSpdH2g96F5QfNZXDjl61hOjE70L0YlGACNuQw0FVEDAGhwWniHfgRwGI3it0cTEHw9Atp3U1yhW97K//UQ5R4oj0nuNzZ0+jn+ZyZc4Mkp5EtjK8DYBOoAFBIjl5DQm8qRt4+C5dEUaIjy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199021)(26005)(82960400001)(478600001)(9686003)(71200400001)(6506007)(86362001)(186003)(38100700002)(54906003)(64756008)(4326008)(66556008)(66946007)(66446008)(66476007)(83380400001)(110136005)(7696005)(53546011)(76116006)(316002)(122000001)(5660300002)(8676002)(8936002)(52536014)(38070700005)(41300700001)(2906002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7FPzstdCPzq7Enid0qFdmT3uqvWLQq3Vx+TfYyS3cwBXe8xgIkxWW2EIcr4N?=
 =?us-ascii?Q?wvY2xGwwdePuapvsqFpNKRAMez50OooFM4fZ+JwyM/jAaEHxE49gxFT7bsHH?=
 =?us-ascii?Q?dD+uPIMWCZgtd4M64gdpOOBO/cbSntcgoeoL4xm7M6wCG3NZlxVIusURtqFR?=
 =?us-ascii?Q?kGAHfWs/2awGaQfwxxJ3GTPEjMBzNoIlUlScnXjVF1ePIHKgHOqcwiP6b+lE?=
 =?us-ascii?Q?Rb5yn1s55Cjb2Wox9V6gvT+URMMtiiZXo+DjUDbEP/rVrzAqTg+aXlDTJQZW?=
 =?us-ascii?Q?N0Fqo+KbEogOyLz6Pkvf0i8DCd83AHTBKbW4VCdmfYRfHOP3f1gvRnYyQYk5?=
 =?us-ascii?Q?6LSMe5AASw5Vu5xjUEvHQCIIumtb/7q45GTF6SThS6oRi/nMf77jVdGg4iar?=
 =?us-ascii?Q?4d8c5wtQOVSEdkIN1BR/+6N20hE7Ro4M/lMPLW7wALMHZyJAqC7QZnHOiFTK?=
 =?us-ascii?Q?dAs1jWPP4vMxYEvI6AgaLWEw+PSilhMFanWyZHPwjG6E7jSH4wjcNNCCPteN?=
 =?us-ascii?Q?3CEiBGW6G28y7Z93a0z1eqz6bxEtRx8E9zIG05NMY9If5QEcppfBpwR20/qT?=
 =?us-ascii?Q?9sKD/ELL9qzoXNKdIGTl6Tlh0/QSE1z6oHRJIRMx+fjw3j095aw1c6rZdAf+?=
 =?us-ascii?Q?QcjoDMcOysOA/978Q7QNJ8Ksnx3zlvstSMuSFIGeK00gi8PSpeyzb/bvHW5M?=
 =?us-ascii?Q?31C/u7msNWEH0lVw+WTMpyq3WBjbfUWPzD82jQx/X7K57/B40KTQiGv6NHqm?=
 =?us-ascii?Q?qsFFa1a3F6HjyB3lSmh6gBFIQmv7p2JQajOvfLizH3KZcI0l72OvQW7amcwj?=
 =?us-ascii?Q?OY7hv7r7Q5KNgS2Zs9rLNDFob9LBsKJpUOiIZaqdtm5AJKrKJVpAI4Rch62F?=
 =?us-ascii?Q?ntgYyGMcrhnkkVRw//LrsqtdGrMn3QswFYoR+724Cgum/MGtFr7UE5VkOpbI?=
 =?us-ascii?Q?0yo+nTS3m1Oad4hB5PPj40KG0oQww2yvJVtMpD1za+FVYv5bpg2nFIMi76Ec?=
 =?us-ascii?Q?ad/ltuyTO+M7mwP8W1V4v2BiJKKkJnQMCEcK6GzpxxWUg7xd033SWCWGzh2h?=
 =?us-ascii?Q?2xcpPdciRZ2fgMQeKoI7vOUlSMr++kcpz6GEG2ELRhgfaaWJPhFzzj8brySU?=
 =?us-ascii?Q?rwDpC3k5JtjbYLf+jyn/L3n8BG2GLnQ51drJxWZo3NrRIKbqFARkzi54qnur?=
 =?us-ascii?Q?eZIKNSeEViypcf3ZgWcn6QksCpBmV9SBlaqRWpq6IIW0peQEVkBV/IeC+8SF?=
 =?us-ascii?Q?bYFPatM5Fz9KB7DSiBy+ySIsqAAxWj6ksOPeY/XyPJjI81A585SG5mblsdVH?=
 =?us-ascii?Q?0zJMKNXzJu2Q7PSMarTRAUhBmBOQs9khlpcg56sLpudF6VEh0qj+mXB7WfUj?=
 =?us-ascii?Q?BHw3b286plQQMxB5NLnWgLFeLDpMVF/eNO/GDuFGFUFtzFl7tNZDnS8NvHnq?=
 =?us-ascii?Q?Z6JNAOTxX5B6nG9IIDSd9v6k83sJxFdIMda2p2W271hN15t8O17uDeQLNiLi?=
 =?us-ascii?Q?AUFb1FZxuIK9PeShIlNZ6GA6BX9w3T7TFuexlFhXqqVfthGIt8vh7Ggvsu23?=
 =?us-ascii?Q?UBDtVB+nzCE9fNEJG2g9JSHIs4Uvox+TmdYuS/Ny/1Gh6dGZVo+OeBzJ+0+F?=
 =?us-ascii?Q?6Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d5b272-ce1c-428a-66f1-08db7bbb8504
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 11:49:12.3248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LSLRf61DSMZ2LTUTmLJcJB6pWPAI4130/JBS/BL52XehzI4CtD6NOzw/qnUbOr+vkof7+K/dg/K/AnUr0dfXmI9DCaFrH7XADLgxdL0C/mY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688384958; x=1719920958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZnUiO8CD/WnZwe6qaGAManrsteXNhJ/DPNbm8zbXIm0=;
 b=WbTcbDeB9W/tgZiPI/NHlm4uF5E4gkXhB7HDIODIgT2uRpYtDBuypCoi
 43DamccvBMQozr7KeS60Do6FAgs9B2CUmH8NyLzUzG0BMGH2N84q+Ik9D
 8qft0ZvUjT5vlraQAFxl5L33cGToko+p3iY8Fg3L+dlspvdnm24IaydjY
 SMFXmFOLpsFEprhV57bUCaWjqo1pXY/4YM2PEVarkFh2QpMwldANKUbPG
 6wH+uG0Euq969vrUoEKB8V1v21dinbnfRcj65EGmE8s+4Y9QQDfO7QeXz
 s8u33iFOXZqM3OBSe4EmVuYdw+q6SYLgmmanXOUyl2ka0beW3umr8Da7Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WbTcbDeB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: Add support for
 PFCP hardware offload in switchdev
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "idosch@nvidia.com" <idosch@nvidia.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Wednesday, June 7, 2023 4:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: jiri@resnulli.us; netdev@vger.kernel.org; idosch@nvidia.com;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> simon.horman@corigine.com; kuba@kernel.org; pabeni@redhat.com;
> davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: Add support for PFCP
> hardware offload in switchdev
> 
> Add support for creating PFCP filters in switchdev mode. Add support for
> parsing PFCP-specific tc options: S flag and SEID.
> 
> To create a PFCP filter, a special netdev must be created and passed to tc
> command:
> 
> ip link add pfcp0 type pfcp
> tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
> 1:123/ff:fffffffffffffff0 skip_hw action mirred egress redirect dev pfcp0
> 
> Changes in iproute2 are required to be able to add the pfcp netdev and use
> pfcp_opts in tc.
> 
> ICE COMMS package is required to create a filter as it contains PFCP profiles.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c      |  9 ++
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  4 +-
>  .../ethernet/intel/ice/ice_protocol_type.h    | 12 +++
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 85 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  2 +
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 58 +++++++++++--
>  drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  5 ++
>  7 files changed, 168 insertions(+), 7 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
