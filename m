Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847CB7D07BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 07:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99CC2431F0;
	Fri, 20 Oct 2023 05:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99CC2431F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697780665;
	bh=b9cdGLf5ZL5b7UAYRBetYzC96QoVdggPLoOx7+60+yQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SL54OWo1UTpXbNSnUbS7+2QUiZBsY+V5X8Iq3i6gR4IDVkJXidKk89pFZQx+9hcl1
	 N1wQLM2Ri7w0AmG3JuABsngnaAukkPzUTMWYWQwB0WO3UEp9JsTs+bZKsyjLHr+Kj/
	 PUc8RH5NCZU05wL+uDhONVivAoFmJ2hFHfFzGvsINmdDMHQZ5jnt5xKnNMjfnZiIB9
	 nrQY7YLdrUF3vRYfAOJdSkqLhu1XhS7v+6JIvzZDK/rYGQkBt4cViKEPCUQkMZQ6NK
	 A9Q3JgtA4KkIFNcmZXqSjUdclXvjlup98aM6IRfWr5IrY9AFHZE85llz+sXC0w4z8H
	 G/ZklXKvWfKEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nh236VubA5H8; Fri, 20 Oct 2023 05:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F319C431E5;
	Fri, 20 Oct 2023 05:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F319C431E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3ECFF1BF577
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 05:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13C46431E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 05:44:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13C46431E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdBUxBRjaQJD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 05:44:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B791431E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 05:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B791431E5
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="452913426"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="452913426"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 22:44:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="880965340"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="880965340"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 22:44:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 22:44:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 22:44:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 22:44:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqcKWkkFu5w5CxEABac6r0KS3mRTi2NlbCumTszZDIIi6eCjYeUc7uEGQGcdXjplc5NCw+rD3otvC6CSVdyrBoeJyO+FTO6RuVHtTdVkZq+TRDjePpuVEGupjZYotPGg8IbZNOf5f813RL25irWFmTvl2PJRp3fwTLQcLbJY3ywv12KzeyE1vlaMa4OLMbyCFzdVGVkOQEVdGKU7FWHkEyrvNNdN3gYrgA1mRf0ox4vj6BNdivc0QYelxVKa3Xl1KOwI0i7DFHr5JczMeoIc0ZJiyzMJwZuBE95P6AxGrh6oK9nv259sOSlIzHbMoKSSbHdFcZo1a2/5q+7wOOplYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jRPYsnxuTVUyXdBOyTzTIS5XT9xuNRz/yDlcZE0EQb4=;
 b=RBgntWfqPu6iWYa5ZLScE577k8UsgOPJZKQObTXsUEAYOgGi9JOoxbOUWbF8282pnlxny+31cb+wrLO2CcAF/JbuQjmu+whDD3um2qPspPpYXl1Fk+trtqDVjh7X3cju6isuk+tT+dg0bH6oOZNLmx9DHR7rpihPy34jKLURRuru/TtujwBRde4nd7GpGhjXJpK6IBsT34PgbRB6fHfUpBorD/DvSKHb5DEUVZgByDI84oaT8FCoS3YvMtfYsbgut893jR63Xw5GkV99me2Kxrco5Bx/jc1IrPhilEbA75tZsdamsFVOzcj9PpNqAs7H7nnaPNXja+3vIKzxXrMw/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH3PR11MB8547.namprd11.prod.outlook.com (2603:10b6:610:1bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 05:44:12 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6886.039; Fri, 20 Oct 2023
 05:44:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
Thread-Index: AQHaAqqjgu/2pPDrJUyJrMurdSSDBLBSKs/g
Date: Fri, 20 Oct 2023 05:44:11 +0000
Message-ID: <BL0PR11MB31226A0095D6A906D12C6C31BDDBA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231019163721.1333370-1-ivecera@redhat.com>
In-Reply-To: <20231019163721.1333370-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH3PR11MB8547:EE_
x-ms-office365-filtering-correlation-id: 19c9f37f-46ac-489c-015f-08dbd12f9645
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ig38bGe/cVUugk/xBdnFBHFV0bsGJ93FOOqvp9wAqQ1NZZk/Qf5uPHmwIDEEWDzk1rlabcy1hq0ciKY+2+uh2UB6upqN+/7mmMBWzUBIvld03/33jOwk0tNFl190V77/GJaacCeHca20Y9oci9cnxdESnBAFAsAjwCmJwWhyyEatg3zCXxUzF/IoQzyZeXSO0Iee6hN0Z2Zl6IJCQ0gsgB7BV2x5ML+xz4AsIsPkaPpV3x+Enu0uhlqry7hDKXHcVq9PDp55f1vcGqEecZjfTU7kTBTJaY2iHQMeyNM9f1JHYV2yJDmpmEqnKibESL6aPbaUQLPZ7cY5zCsttO4FBhqRRbzbIod3kLC2ZBWCJzoGXK5oB9GXi40h/AWaYuwn0ybCBSXiDWi7BEZZl5FH15Cj3CEoCsmgjFviBqi2ZcrA4As8xuG8P1JXPzQXVXnd3RYXF0FwAf+suP+9dMy0osIv6dBnP25qDHEozTz86p6HpP0oFyBN9qmXnniauSXPgL8v9aUFJHOufpTjbiNJbjEfbbCSSTESKislgFC2bbgHwzsmgoxPnQi/8teAIu80RQ01Orj1YUv2pwyGm+hshKwLnRyMpCCPjLLnWESpLHArdz9FYmoW1RTlMgpZ3iHA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(38070700009)(55016003)(38100700002)(6506007)(5660300002)(122000001)(8676002)(52536014)(41300700001)(83380400001)(9686003)(82960400001)(26005)(7696005)(53546011)(2906002)(86362001)(71200400001)(33656002)(4326008)(478600001)(110136005)(8936002)(64756008)(76116006)(54906003)(66446008)(316002)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7jBDLROE8N8x7QO4l5AKMDIknDcUHsxd8maHMqt99wgc431qGs4wN2QLV2AQ?=
 =?us-ascii?Q?KxHPJjhUcewbwhBu3WH1B80A0rM/enILZrLvLNeXnlQ3dH8diyfMpYuwrM0e?=
 =?us-ascii?Q?I/kPWts4ADnBlDWjxbL5HvwzAYXDE929fqfc72inKzYztkPq8+a+ih8w4LUJ?=
 =?us-ascii?Q?ZbNi2iW1q+gaWJXvhR1mSW0b4LFF+ZocO5ToUQQ+kDggRBEsN+xVK5SZu8hA?=
 =?us-ascii?Q?dPWQvovrzkhiIGEbI6OGykkb8LdZ0BwO9ptPUygijNudKwo68iYa/YyNZoqw?=
 =?us-ascii?Q?iD5P7LpUREvaFSjQL0ndn6pYF36Cp0ddYdSKm7bjslFTvn0y0QC8VGSj0Lry?=
 =?us-ascii?Q?D36szQz01qVD6DZcAcbfnQFLYzYdQw4qnPbOYnQ8MgtCE0xC2crmOAziBaXE?=
 =?us-ascii?Q?m5sD9BKxzlQM5FO291nR+bKCGKqIN0/qVkGIsRrg1G7lfks1RMiiIA+fbcgz?=
 =?us-ascii?Q?fGFMwpLpf7BtnUSxsQA8VQEc8AJYOFOOB7H117D43D+p1GLwPoAEouqpbAUO?=
 =?us-ascii?Q?PN61WJbTHA/28xfanLemnxvU5rP/GOUPN7u/3QmPJKLXxgoP/Rkl9WCRl65O?=
 =?us-ascii?Q?YalOr1RvB85wk5Qjgmqre3816TavS1tKAR32eOUY2jDvndGofoioG9PUOVIV?=
 =?us-ascii?Q?wrd8VGm35hCLtGhO+MOAZ6qISfIn9t77DhBnq12dg5qYijlQVk+0If9vqVfK?=
 =?us-ascii?Q?xoZItvMax8LNi+Hcdxj/fM3SYjEjw2R2tnYSlMb3AIb/gCesWd1fZAcWDciC?=
 =?us-ascii?Q?h2bD2Hm6WonSWXl6PV90vXe6twc1cgi3AlQ2jLYx2c8Fsd1/1h0dnWxp2evu?=
 =?us-ascii?Q?vv75muG/S+ElwmEsUenx3Tac88kbryw7SR3UXcqZmcvJG6lZeUlNQlyndClU?=
 =?us-ascii?Q?vpywRzf9ejVuFvF0mDDN1MACRLLGIIJH69ykg5HEHM01bQ+uUr9tblvkRV3j?=
 =?us-ascii?Q?eYJsNYUG5bglUfZSAKfD3hKTku6hgQz66K1y6VxG2axbmPz2vs538YHismrY?=
 =?us-ascii?Q?2U92KAaM4k1VuFYcnm9QicUX1Ogl/VOqRi3b4p6sNgQgFrvnvOS4Ctpwe7OI?=
 =?us-ascii?Q?CNTSnoRkzcDZakt86IQGyo1hABe08fxnseBD571pDJK9PmzUV+7SikyvoEje?=
 =?us-ascii?Q?sqlo2qSGapEo1vi0oZXtlVjcysYTzem4kvHIC13/QeJMmez015zU6XDPnANR?=
 =?us-ascii?Q?0zp9tFARJT7mVypNaB5Gl8zrP3BktDrzxXPan5F0baTMoyFgERGohdCvxIEk?=
 =?us-ascii?Q?f/PVowWQZqD38zxzyZi2D3tvmF7VpAoFCTQMmvW/uVC8LB0vs5rGZFQhcb0B?=
 =?us-ascii?Q?rEmbelLRQb9RqvHkQi498BOp6JYaxagu2tUBMMMX4JAFYHJ5DIs1Ny8KBBIq?=
 =?us-ascii?Q?vqCUVN7aQNhQXaFtWwly6GEhR6lXXkgxYcdawWwttcWrxWswMx2ULMrFLnqI?=
 =?us-ascii?Q?MNSAytb2xv9FGTZPs/u8F+uHpPeZqyP8OZntT+4MmIw9IFvjwYg5L6GyAbcm?=
 =?us-ascii?Q?IjW8BjGd/modyLmStvGbaeS5SbTAO4okop5fa0tFovoWbcaBJdRichzOFlC9?=
 =?us-ascii?Q?sNtD3+i/0AioSzzctaC2p2f+vtJZChOywSff5etmYT9ZN+YD+dbkQb+9lPH4?=
 =?us-ascii?Q?rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19c9f37f-46ac-489c-015f-08dbd12f9645
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 05:44:11.7704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x6cm5RFjXJUfBgZbTg02tUDmYMmme2iEfw2hOezE7ftga47PETXmFq0E8SmsbFhTBK23Zxg/TDVu0Q6uvSdZ8kNWS1Rc/x0z33w3lmMAxiQUkkFTBlWojXK/BDQs9ZuP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697780657; x=1729316657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SY5TF20Ie8oFmr7itusjiRU6QbRVtDIOYn4vSBf9n5c=;
 b=Vx/m6EDZTk0o7FPesg/JxlugcNf2hPTQRdCvl48ZPh6tguQTgH+gatWw
 tSvadWrDGBMMugfRpIrzmCRl/XV3yEYcDpsWAAL9EXvam4YITmtcc7VtV
 pWAvf/w984M0Ah8Sm0euX22/jxclMZOpZwJOLCvjEFIRHUE1+Vh4BbEeq
 ZNOxS7YKVO408cBwFVbqngvW+yDc1/RJLrj7TvU5fNkZ1dMhjF1gctUM9
 t/hJOblF7JTYVdt6dStdGcks/lCcWpfEK6hEOOroS4g7yuGgulO93U978
 WCeqUVLfL2kUrfR+n+WsoMj+sLlna4a/07dBcMqn0u+Xn8Lvr8vvskwtP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vx/m6EDZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, open list <linux-kernel@vger.kernel.org>,
 Eric
 Dumazet <edumazet@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Sylwester
 Dziedziuch <sylwesterx.dziedziuch@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Thursday, October 19, 2023 10:07 PM
> To: netdev@vger.kernel.org
> Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>; Palczewski, Mateusz <mateusz.palczewski@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-kernel@vger.kernel.org>; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix I40E_FLAG_VF_VLAN_PRUNING value
>
> Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
> PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
> existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.
>
> Move the affected flag at the end of the flags and fix its value.
>
> Reproducer:
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 link-down-on-close on
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 vf-vlan-pruning on
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 link-down-on-close off
> [ 6323.142585] i40e 0000:02:00.0: Setting link-down-on-close not supported on this port (because total-port-shutdown is enabled)
> netlink error: Operation not supported
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 vf-vlan-pruning off
> [root@cnb-03 ~]# ethtool --set-priv-flags enp2s0f0np0 link-down-on-close off
>
> The link-down-on-close flag cannot be modified after setting vf-vlan-pruning
> because vf-vlan-pruning shares the same bit with total-port-shutdown flag
> that prevents any modification of link-down-on-close flag.
>
> Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Cc: Simon Horman <horms@kernel.org>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
