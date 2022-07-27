Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A961583173
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 20:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD39E81358;
	Wed, 27 Jul 2022 18:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD39E81358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658945276;
	bh=7GiY0lVk5y3DvxusuCh2W9vRz0CORbEySlW2CSCqmjg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2FQihaptNaIPs8MNTAPSSmqrWbt2Ogfr7wSZjjOmIonad0QQ8EKdxo4Ob1NxUOwE4
	 qQDYiG/Ibj2R9FzkKc0M+eK7qG0yR6qZpM7hZbyAWe9fIFt7JOmK5uiJjTQMQ73pbl
	 jHgOdQl53/6HTuM3zqFy0B6cAGJttE94TwRInbyj/qicjqDND0/wIsxkEXs0plSb+1
	 yhlpEe8wmGH/yrqvsN7HZUOn6aSatm9wl5wOvku5tlUCggP4azrSiUIOm4kId2q3H7
	 C6xObIGzKnTy0mQSMpTrckBVSxWpQgTUqF7oO+rhnWUwIWnujJ3eWBADC0Ugcu1QV9
	 513Jdta9tACMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4-80yDAMMM84; Wed, 27 Jul 2022 18:07:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8B0381308;
	Wed, 27 Jul 2022 18:07:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8B0381308
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 199C11BF39C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 18:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E18E241696
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 18:07:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E18E241696
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D8nK-ropKhIM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 18:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5922F41682
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5922F41682
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 18:07:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="350014515"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="350014515"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659312529"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2022 11:07:44 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 11:07:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 11:07:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 11:07:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGF7iRpyLsmvAN62DhP0ZZ8wMCRjujFSMQ5wclorD3J+Z5jg5+GHeKd3odSC/K9S67Soyd73229acIpuuZnGIsyU0ds3TqlV807LykbGCz785D092w+AbtGmqJwwYniS03O7bxjHlnj/X8wdFQa/Ijf63MbYAopRS7s2HlhSv3OenWjKGPFFYJStccIKkjYqK9xXrRI9iYRw9Lm9KUtD+DY8yXM7M7bVBAwJ/YWRGSzuiZirqeR0OBYVS8R9NmSkYiY5At143C+XHtBzELG2pvy+qcQPzeew2dNxWm3WaodDdWxGmBz3esVv5jnNFMqr9hpjLIrza80m1svDQgX3bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dA0BYjjWhetc+qkr57ImBm36KKCEzDlyTK91R8MfFPA=;
 b=bIPw0ZLMZZ48YlroPoaiAVcSowepmQ4HuhzEkzG2js2EH42aFlxtOjFeLrqvdG/PbOIV5opIZRb/KLn/MQH1lmTz8izXZLbLOTzeABAigGbSn7u5ust/R4elRaGX1NDT5ZsGIqt235JKww1bU0ptO1gGxdSNIiQV/SwwBtXyYZ4JbTnJeTVinojmMFPptHd4BXp8E5MPpGfxxiH04EBoo2wHNiwxq7gi3hOmzxwJg4ZnBfR5meED28iN7udnvUbOX0v1lD2m+T91DFpNYd85fMV/4TgMEa2qBNcPoXWxpbD7YaYQxSqVsyVN9DQAmn9mL23UkVf69MLe5FrfX54faw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by MWHPR11MB1309.namprd11.prod.outlook.com (2603:10b6:300:20::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.21; Wed, 27 Jul
 2022 18:07:41 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::a0d8:c7a2:c336:ac7e]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::a0d8:c7a2:c336:ac7e%9]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 18:07:41 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next 2/2] ice: allow toggling
 loopback mode via ndo_set_features callback
Thread-Index: AQHYkerGcKDzX98XxE6QM6faZTpz9q2So1QA
Date: Wed, 27 Jul 2022 18:07:41 +0000
Message-ID: <PH0PR11MB5144F178D69BD5EA30F4119AE2979@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20220707101651.48738-1-maciej.fijalkowski@intel.com>
 <20220707101651.48738-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20220707101651.48738-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13a4811a-9176-44db-38db-08da6ffae5cc
x-ms-traffictypediagnostic: MWHPR11MB1309:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: crvl5dt+cDBIakdKIwvuzCJx43DwTzgXmKp2rys+8kYWwGtzBHv5o3mD+Mhv1P7+LdjaNXktQhWlqo70NQCJWqL7w61gRPjvl82RvIc2AJEvrkDhAEFri/kuoz3j05rHHYexZkGjptc6bQFYL7vzRn8z3/Ie2R3vcilOXCHXZZle1C9uCwlq4Bn584DHs9hfa2VRSLfIKi+GApjSL8QQ7nk+uT9B2D8jMljYFobBVKyr9a/+XvXnIWtFMvdfHx/PpvltmCWzj8qxmSQSclCb50VWRiJZisnfjhmFkeWT4pzeMcJ5yRX2renFvz8wA32SicNVEGmf7BfCecChGML+LWg0/NKGPtfeH6rBHek8OrxeMbTfdYqBr/w4GKszaKv7PSur33iYVN8LslQTWIx1r/38iRRlaFrMO183qU66FYSkWSvKDSaMD2Waqb4B3zszIjDSNfN7oWHhFEoINrS3SNvmjUcBfwF7iOH0FFNoPQQvJwC8mUjU7wCVYprYGHi15PA73JI7NPcLnFOuDpG8KKqBJ2PJDWNOlBA5JuNAJArdsmkt3U7Sh95qDt2q6ge2YTZcKI6sJp8dlzU7Mj2XWX0C0NYOrPluF7/Sa0beWY6NqQfCQ9klzBCDjJkNFZBHDH0u3OfJqeRQof7cAiZ1BY0ezQ0YJq2aukta3ZfEjae49ZzoZFRfDKmV+u9IDDR4PWx63xa2NglKaldrgJci14UxhVuzp9avaa1h4f808Zy6k59UgbLfCXQbOz+TnxHly61G4C152QYyQO6LX8FDqn5uoXO3QJnQYLFf3fZeDw8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(376002)(396003)(82960400001)(52536014)(41300700001)(38100700002)(86362001)(83380400001)(33656002)(5660300002)(186003)(66946007)(64756008)(4744005)(4326008)(54906003)(66446008)(8676002)(110136005)(107886003)(8936002)(122000001)(66476007)(53546011)(71200400001)(38070700005)(9686003)(7696005)(6506007)(2906002)(66556008)(26005)(478600001)(76116006)(55016003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1SYvWaQOvutxxuJS09DARwlrKS0/9xeJMRZDVG38VH33tYvlr6Xb4N8pBaZd?=
 =?us-ascii?Q?dnMDbW83HSYpl5zYXn9ZypuzBsfNXHB1NuIm4c5lP9p2NAX4gBT2MRHVd7Fy?=
 =?us-ascii?Q?SRqtZPjLvyRTGijqBaS7nP+FWMvCThEkeMN5hYiKnJ1yrpfUkwSGPYtNJumB?=
 =?us-ascii?Q?77KicrNR02dVrSqTgvKc7S7cONGLlY+Sidr/u6CwnSZEt611YS8FUpZeTj2V?=
 =?us-ascii?Q?X3K8KHeJDTraVobbnajm5DOnfS5XiOwvv8A89Yhu+BLU7iRnvXbLst2DTmTV?=
 =?us-ascii?Q?GJTGHKWR/LtvhNGVzvD/ZOXOVtVUDpUfkCT9hHDBhDATG1wXlZL3fMayjODM?=
 =?us-ascii?Q?dR+aahCkz9S6+y0Cu9XvuZX/q1sBKw4nWZxEEbSIHq2nP1x4cTJYs+TWWgE8?=
 =?us-ascii?Q?DoNdiO6SptLDfR/5Y9KNr3iDB3BSTLgA1nILi6SR6jbt0l0L89Fn4DohsXiH?=
 =?us-ascii?Q?cMMG4Ojz+yQzKNqvJWpYp52fEJlXTu2Pr1Dg+5E/JnSPsSnUcyyA1xuJY8Px?=
 =?us-ascii?Q?kDu/EqGNRHYwK0H/6i8f2GTELH84x2PCr4fwFmak267h3pe6Gmu5yogQHNvy?=
 =?us-ascii?Q?bDXzOgtic2R7VRH0qgWhF29xweSMWc31WI8jMr0/kmF8u+QAksmSBL9+Qz0s?=
 =?us-ascii?Q?lZD/YVwVUmm9N7trcfz6fkEIlgIQM+PcM3ayrJt47t7Od7kQylPW1nBslWep?=
 =?us-ascii?Q?aP5xnSFxP9RfJ62m109ee/EPnK+CapfAYvw4wSCkfNzRXaiIyzrL6aWLIPJ7?=
 =?us-ascii?Q?jr59+HVC+Ajuxo6pySI+tkdBssEs2N2p0z2ll7DoMShtVIe7ctNMt2cKQNZZ?=
 =?us-ascii?Q?dnnYA9M2ElbDy3o2vPCkvmP1VODQX64nvLNRBoqAnMkiYj21OUhL+wIf2YDb?=
 =?us-ascii?Q?5jitPSY+lKJTLiFst2Wa7VYbQx9gNzhgMd/I+mSOAiEB7JbBgcTXDzxMd5pL?=
 =?us-ascii?Q?ZxA0kRVUP76/HgZ8ByGXJtl+BwrPd8bqrprYxPqsQGEFwLpcZUQM8ENSFXDC?=
 =?us-ascii?Q?eB8RBzh6sBM7cXgZfvxgyzfVJjMD7cwwIdub1tKQzzLxJAsEaK/Eb/lBSvnx?=
 =?us-ascii?Q?xRw8+6Ww5sZq23HVF0ixAJHuccRG/A06yR9RjIGx3OsjxUV+jtRw81zdrhbY?=
 =?us-ascii?Q?HhQwODEA2ngREb0sXPNNwz1P2nbbxSzLUu40JaeiqNaQn72YJpUaoFcEIOto?=
 =?us-ascii?Q?mMxshQV1TvQsqQ89uyqW43+WWSM2+rIhgNp/8FehHko7wevwUZYAoAjfK9dB?=
 =?us-ascii?Q?6cCafjzGd1Fvv8eguir9qTsrwnODn6CHORiKQ2aZzvSKtRVaX89UUyKzk0LT?=
 =?us-ascii?Q?7loZscz37wz2BVkuUUuQkGJMTLJwaAP+OoeebqPNN1hlqH5LZrPu7tkTCp2w?=
 =?us-ascii?Q?9jYCpIoe0XMcpdcsMCnKZ6stNudjZk9aZC1EOK37rkoycQCqj0Xlr+pwYcvn?=
 =?us-ascii?Q?eoeadm22aijProAhtKq/eKtelw8vGKKbLkswgE2ceNPX47P7FvYk2lrPV4Ij?=
 =?us-ascii?Q?ClUAS07/Q8+pvZSfQ+1XSpcPiQxPrhZsD9OIn10EmEDDtGp00hCKD32M7UFm?=
 =?us-ascii?Q?nvpY/grS37Mi510SimuTaDVFrVPBaHjnWg8UJ3q3qqOYp4GuA+fcOaI7Hl4/?=
 =?us-ascii?Q?Fw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13a4811a-9176-44db-38db-08da6ffae5cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 18:07:41.3595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6KBrmPmmRtxhiL5TsKXz8dcTzVp9RK0SSFrKNxOaz226fknrLRcBxuxYak44p3aWiC6lU70wjGkuTkjQq8SaZ8wPGAiuaeYvI58e6zHsvEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1309
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658945266; x=1690481266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W9kDmufGOhw5h2I3E2hPAEpwK8lZJhpYRPJtR8lX2tQ=;
 b=bFUY8w7lFs/AF48kXfQDggGnp+Fsz9nZUH6Z0YKye7uWnr1cv0o7XV02
 VZxODBbOZK2mT4hntOstUWu9vSBGJHfvDIqaZVZumK4e4ShKAmLGM6lno
 mtDx4t5qr+O1R+pGdWIjwlrCkHNulaeHEhcsUpv8R9QOnfrTuDeKrc4Uy
 IpbBYWpVhpvkCrCSa7IWt6NOEbc8ugu4+60aoV6o70lZY7WenV6INN+q+
 WiFkMoyjaplsU15uyFauYMeydi54Fs6Q/QED9JE3D2IKOjABx4xxWNzX9
 NxIqUVOY3HW2MBCndk3DlUUR6/o+AcFrMPqe5IUcZsIH3NPWog8SXMaX7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bFUY8w7l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/2] ice: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>, "Gerasymenko, 
 Anatolii" <anatolii.gerasymenko@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej
> Fijalkowski
> Sent: Thursday, July 7, 2022 3:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; john.fastabend@gmail.com; Gerasymenko, Anatolii
> <anatolii.gerasymenko@intel.com>; kuba@kernel.org; davem@davemloft.net;
> Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-next 2/2] ice: allow toggling loopback mode via
> ndo_set_features callback
> 
> Add support for NETIF_F_LOOPBACK. This feature can be set via:
> $ ethtool -K eth0 loopback <on|off>
> 
> Feature can be useful for local data path tests.
> 
> Acked-by: Jakub Kicinski <kuba@kernel.org>
> Acked-by: John Fastabend <john.fastabend@gmail.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 33 ++++++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
