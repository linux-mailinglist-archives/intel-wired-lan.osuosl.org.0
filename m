Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B8175DA7A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jul 2023 08:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2299A40487;
	Sat, 22 Jul 2023 06:50:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2299A40487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690008659;
	bh=CTkAb8iZWErMZXcotH+kGcNDmrv6fiqVeef3phSFhmo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=twbwfx0qQ31F4oMTzgLVqrChUGNGZ2W1d0VFeXSBXusaCLlbx7UaZ5F96t2HiLgZL
	 aDwCREHTPjPl/azd4x84hFxlVgUntHDNdEYnLaOQKgEkq5xynLaD4oc4GjO3Qh8plf
	 7nCyaTX/8Z4WIa4wZQ1RBjc4DAOo/UNe20K5YESWvjs7OyzKcQab5NNHTcLz/GVyqu
	 1d15RhFCK+YeAHI5kTJH7NvPIo/lq3QcYeR7nwepDVElXikqqYOugTMCP7+rPrZX/M
	 g+WJmlgUrBsj0oozsWPvUUWknk1eK1z5PK1qQke6VUwtmWSKgkTzJQW9pCsfzIVZUJ
	 /ddUzya58IZVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-5mqEcVwaKY; Sat, 22 Jul 2023 06:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8681140201;
	Sat, 22 Jul 2023 06:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8681140201
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 241421BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1A244000B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1A244000B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vdvIaADeIYBN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jul 2023 06:50:48 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08C5D40201
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08C5D40201
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="367199661"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="367199661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 23:43:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="898936692"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="898936692"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 21 Jul 2023 23:43:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 23:43:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 23:43:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 23:43:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 23:43:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mO3mEYtStuodPKaUVyb7sAi+56ced8nyxl95TqEMoQmI6Pe0QM4p2mwXs3a1Po4iDm9YFv2cDWNAuV2Ot3x4/D4g6SVov7r4MeqzQ9yp5oJ3mbrxTVxStdpd0jorDgLPLpVD/AVGb/RmG3Txyhv5BF5mSfHsWAEOI82bU/h3j3z0cRSOzCmDRurFmMMZ52/9wrHgjmYLmokwI0sEDssh6628Cc33beqYpOrQRvgciloCb+xhT9ltvtBI2ATD0B8EabZGJEtV/wiBNBkgxQxKQgqSD5G3v9WFhLKwM8h4tZnbHr/yOXfZLeHr6mM1uPF7pEJbH8cxiuNHgJBB5rTiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=az6EuN/RET8pBQV0ly0XR+mgLvql1QLKmuG/a6bjf0o=;
 b=GozfDhR+LPkW/99cLSvFLz3z4sr7zC3YCL9jziXLIDyDcqX7yXckkZoNrxxLpUNwo6e/F67kL0IGgOiTXxVc1jBKA+lVDlW/NZRPLiuGNsuRpXbn92DAqu+Fro3iJTzAW/6ReIr4npEg7X/Khhj0HtSOwD3Z3AfKY4sZXUZvThjXEa4N0ev4d5RC2j4clzivrSRjhx7FSMCWV7HzofNttNgFx+2GYcUutQYtz8T7BTZzdQz1PxGSijoXMokzFwbLDcM3pFb0vBztSQPFLYJNpw5WERSfi3afJ9MNlxLydhhNLIwAeeybEeeBoR3PGj7Rg304Qw86Jh0cwqQiU3Rgew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Sat, 22 Jul
 2023 06:43:37 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6609.026; Sat, 22 Jul 2023
 06:43:37 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 01/12] ice: Skip adv rules
 removal upon switchdev release
Thread-Index: AQHZtLDLMOHhpgw+skKgKrcr2e2CIa/FZjkg
Date: Sat, 22 Jul 2023 06:43:37 +0000
Message-ID: <PH0PR11MB5013F652FA4507F9304FCDF8963CA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
 <20230712110337.8030-2-wojciech.drewek@intel.com>
In-Reply-To: <20230712110337.8030-2-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA2PR11MB4828:EE_
x-ms-office365-filtering-correlation-id: e6f49ffc-3aab-4e1f-b2f4-08db8a7efa2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OcXU2xFLDsx6AdJy13jVM3VNR5Rpi5velc08VEs46OtId7tVqwW7eu+45UrQB652iRpX1f0+MzyDhx48FPuDBNCq4cEvQKwjUzBWl9xANTpwxQdU579tWfGJobxTPi/q1B+yN7M7I4GHlmWAxNhnBXRJBULnbJSFVNknvqa78FtgcvUvg3FEjJ/nAhVzAZNw6VSSvtTclcgIkfpLBPAaFNuNCCk0VRgpI2JriWaHqhcqi88/EeR2hTCj/RylYCWz2O1tRWGY/nNTPHXKoEKcJnDDutluQgEMl4haigx2lO9SbFVyBSbwze9NhT8u1VdOp+9mQ5ptsnHkfairY42vWoGt6wId5n0T6K2iL6PCruk0yP2O5BG0MXGIP/h4fC5S0xFdvtvoD6TskvgnlKDoZBIcbaUw3VVDwx5uF4Xkg8TlqJyDt8uvNQ/Kx8D+iVYzeXcO3M+/hOvjDuKfFBiQy9m5RNHRssIhyIxZ4BXN2JhhsDgvC1QxYCdG5qd+PIaCzmslWe/3f3NjYYrXl09A0zDNhogF0bZchuwFfWJ+I7/U1965kMSuS7YYosbWD42lTNKzuts9YdlMdC+ZZqvr9PIKFXzouCRue6MuA0CuijU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(2906002)(4744005)(83380400001)(38070700005)(86362001)(33656002)(82960400001)(122000001)(38100700002)(55016003)(4326008)(64756008)(71200400001)(66476007)(66946007)(66446008)(66556008)(186003)(76116006)(478600001)(26005)(53546011)(41300700001)(316002)(110136005)(6506007)(7696005)(54906003)(9686003)(52536014)(8936002)(8676002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TqfYvK6DDAQV0Uy/NJUthJmWc07rtbqfiMpsWTiPGtZAtLSqwliXgv5q5YJ7?=
 =?us-ascii?Q?MQfjE9JZDWnfdlneicSf9o+UIvSRHrg3qyNJuuJYmOTjn6TxdlKCIhTD24VB?=
 =?us-ascii?Q?VNLksNziSE+O3Vfdb7jQaDXH5h1CCh+bXs5S/qkIVE6kv/fky+h1zQzR/Tmh?=
 =?us-ascii?Q?Ui5/jDuz7iTonvWTqq1VSBRoWAXb2Dk88cx0o/95ZyuGF74JxwAU+SpEPhhv?=
 =?us-ascii?Q?s8sm0zWB0te5VoBKgQ9RcrmVtdxtKPPmbpA3PSLAhf4qDjVQ3SiisrsgKK0+?=
 =?us-ascii?Q?8ZEEmOlJ2acAj3wHvmIkohn/LttZuM8wQYfKqW1ScfYzgRJlUT+hjWd/Lm4A?=
 =?us-ascii?Q?acUa8LdAMpF1QaH366/MPUtktkx3uTvNUYkfAYRw45V2WGVJrdut/bwFP/ee?=
 =?us-ascii?Q?0Zc//RbdbvJNf0VMTLHXDizBPyKOFvI+i6oiNdP2NAlZ1DfpwtHPqjJdOigD?=
 =?us-ascii?Q?6UHi+roMO62BzvoZYh60Dd6tbcVsl/x7wZceR/rwPfiD87aBf7tfHSzL1yWW?=
 =?us-ascii?Q?24Uz5Yr83iYbyMFj3IRAYKVmFhr9KC6PcDVw6c17bqlOQPdyx8jQBLdioOdB?=
 =?us-ascii?Q?S+JSyJg2pkyWNjRf2vhNtywg+OFBMKMymj7q38rqp9JE0zpJ2HNFbNTUWu+i?=
 =?us-ascii?Q?Ny8retO6PxNe3HNEtjcIbxXYz1H4/0nSah52WNkI96lQ8YXBSWjXOzrLxswN?=
 =?us-ascii?Q?AFpxFl/SdQgYYEhL6nldEeGcrel6H4hJo9MtepMvvySbaSsdk0aTPyhk9rW3?=
 =?us-ascii?Q?L1WEgjr/WJ9R0gA5HsLAN5IlXS9/DQHe/f1AEfzKw5G3+QehhfZBOBF+SPot?=
 =?us-ascii?Q?T6v0FCn68TE6DsHq4jStR3oqDlVXIlgV/JqVfZhus9qeleLAaVLN9udkeRAY?=
 =?us-ascii?Q?8waPVkWkm0rLN0r78aw5/28icyKPff9SaahJFiY3vKB7/fSXy+r+ceLcJqB+?=
 =?us-ascii?Q?6LJgp1fA4MMfHLVmWGvxpqZPBfGQC/t7bI/4ukI2woo0Yg3Kc6QerUNw3mTZ?=
 =?us-ascii?Q?QafSNa8/YJ71xVSTzFuMS887iP6kNf60MOcW5vEf/5X4nXdDX8NQ7eY18IQN?=
 =?us-ascii?Q?q13Vc6jLMim193uxXvIPqBefPabwulpxSI12VC/wF+3E2SVPYToGr4iIjCL/?=
 =?us-ascii?Q?qTor9LMX8glJVWA5+KkWN/VRkdgT5MGBM37MJgErgl7h03iJzfYRDBbIFWDU?=
 =?us-ascii?Q?9nn9RcTBEVF7KT5oC0I6rBcDP1nfke+dWaAywaIs38KPBmeD/i4l/n5XFeVz?=
 =?us-ascii?Q?L6wYvSareREAarVRKYyqvQonH/YnApsI4RaN19VXWFxEkeZrzy2kp+VVJfdk?=
 =?us-ascii?Q?ZAPT+Esrb1oAYUxeTnr7czVkrPCQUIZxnQVogwE+se4uf9pVjPGZMkMYbSXv?=
 =?us-ascii?Q?9FwwuE77f7aN5sIxDXc8IISqjKgo1Pes85Jztyjw0+QuekjtemlBNicLPtcg?=
 =?us-ascii?Q?oSn2ST6jDTg5PP2dctE0G/e+lpkRXKQXn7eG/EoVtFbMxS4L2V3sFFTv5OVS?=
 =?us-ascii?Q?+6nEKG3vuW6Pe33ZRnVSpQLTmhwU4lW1Tu81+1CjzgIj6Wg4iVpxBfoIU14K?=
 =?us-ascii?Q?3Q5UwdWh8IJ2V7/HEKAPn/tgIgLgxvFVLPiIHHw9SdWXFYT2YY8EOomTlfmQ?=
 =?us-ascii?Q?8A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f49ffc-3aab-4e1f-b2f4-08db8a7efa2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2023 06:43:37.0459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cb0AqpSmdQ2qd34yIDM6yGGRSlEJDlvzS+zA8lR6Ec8kqsLcQYp5plfUg9DBK4xB1Dds1HXDDskWrlvlN6RdrG6Gz+4nEPAQl5Y13vMOMnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690008648; x=1721544648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/sg8Zr71aQlBrlpNRMGbyfNtaRH7GC2kPA4BnFSoM5Q=;
 b=Azhf7A17IoVtNtDpGriAoDhrxIDbFjI/AXBLNk7rXLAzllkYKt34U3YE
 x4iwTDadGoGbYaflLTuTvIrZioGfCs18LSIKM53L1o3rjOR0DYG6/kB0K
 M980R4rb82i/5IsX11VoY4If1yAjaAVzCPHYqve8HR4j67JHD8JL3XQz5
 mZ9HzjN7ZSSmlCGKC2TT+XsY3gwjdFgYKM3CQzxEJFmADfYx5AWbk+Ndq
 xFWf9BA5k64Gwg//r0QBBqf+Wsc2ru6/XksRSK5N8ZeDFcO3IbDFmLUO2
 Es4CagbtHkABl0P8sQWyBxBsWWspr6POQwh/JdX1riMTvXa34te0DWWHK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Azhf7A17
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 01/12] ice: Skip adv rules
 removal upon switchdev release
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, July 12, 2023 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; vladbu@nvidia.com;
> kuba@kernel.org; simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 01/12] ice: Skip adv rules
> removal upon switchdev release
> 
> Advanced rules for ctrl VSI will be removed anyway when the VSI will cleaned
> up, no need to do it explicitly.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v5: remove ice_rem_adv_rule_for_vsi since it is unused
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
> drivers/net/ethernet/intel/ice/ice_switch.c  | 53 --------------------
> drivers/net/ethernet/intel/ice/ice_switch.h  |  1 -
>  3 files changed, 55 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
