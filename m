Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9701E717D71
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 12:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABAE481FE3;
	Wed, 31 May 2023 10:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABAE481FE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685530497;
	bh=VFbCslZtmYqn1s53+5JLDjMgAHjGEmMHa6+3HlJT60g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f67H3CpJoReK61GREMrKPWY+BI2necffBGRtngz4jb32oqNS9xvu43fFkjtipNigJ
	 kLdZRBhejzAwRqyJlLy4SygLXHtyA0fTFQl7uUVaKQIbbhUR5ASaiEhXuULriho0GC
	 VCc5I8hQTVnXNbYjZ8sHhG1rO4L8aTDheHMSZ9fS5FpN3dN22pIpv2JDf7iR/UQLGJ
	 ZEAEWteklt63UQJVvtCp0qqphNoB3XiMsRNdM25necDTqKFvtkkZ4ibBzgdmBy5Zur
	 oiDOFCUjg1QmlyorAaVpX68jKQ724F8/WL8dp5X01uVjb8wHb9/7n6o4CUMhvL85nh
	 QvEk2U3LmKC8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2regCv1uJ7n0; Wed, 31 May 2023 10:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E105F81F6E;
	Wed, 31 May 2023 10:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E105F81F6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2BAD1BF297
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 10:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B58F260B14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 10:54:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B58F260B14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRYYAiNAJaHm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 10:54:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 233C960ABE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 233C960ABE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 10:54:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="352697888"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="352697888"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 03:54:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="706830041"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="706830041"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 31 May 2023 03:54:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 03:54:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 03:54:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 03:54:44 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 03:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUKrY53nIJ4dbsNEsgGjYeECkJOb/YEvZox/kNi4jvdlndWW/epnoA7Y/ICx3BPf7dHvJVvg24coov6xMIBvUFdseibVYFpquI6EbhOBvFyuERY/7RGjTv2AfCDUMub04LfJfC32lY7zO7TG/2J5Yxeyn1xlK8PI9+nJb2Fnf+U2vpT2xKRb0vx522kegqU1+aFCJrxMgM3vtaMsLOVrYTrbNQ04FSzFq5bLv+fOPUWQMmPoD7HKnxTSCRqemeP3t3SSkxmS+8qwL/rr1WxQS2yvtcnG2U3qTfy8rWeaV3vsZgkcIAPOVoegGCSdMnnfAJilaw1UbUIIWHH5INDrVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eg2CZo6B69k+NDoNDGkpPjj+1/lHD1YRwjdPDPGkvxY=;
 b=W9XdqUk8BZFdlhxOaG9ekv1u12tiKYsu9re5boPzyhRg7+XUPkMTG8gidBtDN88FW2MaViEN0c1xzSx1V9Y48JV2/pFVBcGcX3dbuuU1iYTxRVp9fNn4kxB5CjdAU/OH7RDDSZA6T1+wJlInlymMd6L3hZsSrlwaTwl4uFscxFdicWPjKWrveBtClxqFlCyNYkTD/3XlBUk2bM5+3WWeF61MUc8LcgNf9/HSCy0PYtHcByAtXh2y6gco3w8lacLXQ+WMt5T76EboHq20E5HroQM7JFxRAmMgXImoiSnuMQ0Deud982q88D9JwuTZ9Pt9ZPb0ztzN+z9ObvOy/ORKEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6169.namprd11.prod.outlook.com (2603:10b6:208:3eb::9)
 by DM6PR11MB4674.namprd11.prod.outlook.com (2603:10b6:5:2a0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Wed, 31 May
 2023 10:54:42 +0000
Received: from IA1PR11MB6169.namprd11.prod.outlook.com
 ([fe80::8530:893:31ad:dbf5]) by IA1PR11MB6169.namprd11.prod.outlook.com
 ([fe80::8530:893:31ad:dbf5%7]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 10:54:41 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next 3/5] net/sched: taprio: add netlink reporting
 for offload statistics counters
Thread-Index: AQHZktgBpaiYQfi1jUWv2bFemdjo7K90Negw
Date: Wed, 31 May 2023 10:54:41 +0000
Message-ID: <IA1PR11MB6169F0DD76B4D34CB1C20190B8489@IA1PR11MB6169.namprd11.prod.outlook.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-4-vladimir.oltean@nxp.com>
In-Reply-To: <20230530091948.1408477-4-vladimir.oltean@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6169:EE_|DM6PR11MB4674:EE_
x-ms-office365-filtering-correlation-id: d918ea27-1c24-4110-7bfd-08db61c56fbf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F9wb+o4iWm2ZgRprsEiLiXE+S1UeQVnNc7079oRXUDooj1uVL1FK3DXQYd8jgdddab4dLYYLrkGlCQ3gj2bkFFQN+iae1v+cbBMf74SMgn2IouU5IZPskFzoO+nvnEkGACNLn4qH3SlSoGPfWLTs8HASCxqdfEd219wkqYpB9rQmyygGlBw9uVRiBfAAQ7JUicaI2r8aKpoXKyxOvijvYXVdBh0sIk/7lO4nwCiUFttydmxpQmsQeUQsFzXK2Adp8ZEMOuIDEGueHQw3eBCntvwJgvXU2ktksHQRIy6dQdLLSi8EuPJONXZosIQGPOCiYpX+NWv7nHiq6I0F+VwnAT4yJtRA8zbkpMSMryfYuxB4BQqLR1cfOuiZJtUuYBHys0KwC9hv5PBiCn2wXLJFtWRDNvjxxbY4Kbp/vWRTarVoN6oxbXeGWaL8/TPf/aXhtIOPtDfV/z7Gs5ia9BVNd9yonqTkdjjuhHROmyjYOFlBaFWNNC7RRWj69921n/GLQUJz45JNBiSDcLIgJQb09cwLvhLteTFeCB0B4/wU/A1h6lZZTOXQ0EgR5tuT9tF2peuOTVsK/mO78bPU/Y8iiRa4a/XSIMmPTMBALwVpL3XR8IyfRX6ZCtqaLqzOG3cc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(39860400002)(376002)(136003)(451199021)(71200400001)(478600001)(54906003)(110136005)(33656002)(8676002)(7416002)(8936002)(5660300002)(66476007)(86362001)(2906002)(38070700005)(66446008)(4326008)(66556008)(76116006)(64756008)(122000001)(66946007)(82960400001)(316002)(52536014)(55016003)(41300700001)(38100700002)(26005)(83380400001)(9686003)(6506007)(186003)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nGX1GGb9/JadqCBedAFOh+F+Vp3YSh3HJ6AEg+pT2tkSS08gZ6D9h4lrzNNT?=
 =?us-ascii?Q?lZL58vFPalKWGRjM/p/2mkGFNQl47yxDwcFowEfOBA1ydPdKw7yjip9nsOni?=
 =?us-ascii?Q?auaspxZaDqM58mxZd+LCYieVLbOVp1OoB7o74q0qcg9flIhMHAQAO41TxlUa?=
 =?us-ascii?Q?podXRcI6TbSo50PIOkk3MM3o4F4lKsRyKfUcSD3T52Cbahrp6tYOM1JEDz/F?=
 =?us-ascii?Q?QuWOhSHL/hyLB+fSU/1rv1VJIQd4Isq5MMl8QWRjLo9WOIyFHenNKqNW+V+b?=
 =?us-ascii?Q?3nzZ5IgawJMWJj+OA9vuWtCz3QUBIsfdmqFxd03lGVLkJwcN/s6DO9xPPaTA?=
 =?us-ascii?Q?4NKegjqcZXNy7a514CBRoDC7nk2VPeqKVE6f3V1dVz+QgH5bkMEApoCl6nNc?=
 =?us-ascii?Q?xlirQ2f+1WvuynJwO5kAHCuLTmaK4Rm6aJMtCEsWA4tk3EfWoPtdhs6QryEs?=
 =?us-ascii?Q?nHQaILycronc+EqQMib8d4gW0Fl4IpsWx1l6ZGWu27lKF63IgZjRYlmWJrfA?=
 =?us-ascii?Q?m5I+A/cxl5Rz28Pq7u9j/bd6IW0n0zZ4giqM86cxtndijrYpv+I1VrW2qb6c?=
 =?us-ascii?Q?GOvslJnSezzHkMBwl2CYtj78FCmKswBUEI/FD51pl/dhdzN3BVvzQx26dQ7t?=
 =?us-ascii?Q?8rgT76Qtr9vqF36jtG2Op6p4b5oKtmgAR//YNHPZKQTDbxK9M4di6lsr1gVD?=
 =?us-ascii?Q?wMms+h5NC98yAq+cugpC8LHejBZARYBKRovhXvnOvcS0U0f/FK/tUw+nCI2p?=
 =?us-ascii?Q?DmDTxuw/FQWlrrxmIx4itsWjo0r56/pynhymJs5uxRf5NVliISHrorZjX6+Z?=
 =?us-ascii?Q?yIYFDBz9agH/tNDftgAKnN8dnHsdzH+m/KGwb8q+qJYwDyYAvRryZPD1u9ER?=
 =?us-ascii?Q?vRVcXFluicl8og9SnpcNYIt3Z7nLPfZnPAW6okgHeDShob4OeZfQIn7M4K8+?=
 =?us-ascii?Q?5h5eYeqRur6hyqxA7dTkqHIgHetHZqWYp3PCwbSi+HVvJ3TOisZw7WrigEiT?=
 =?us-ascii?Q?yfQhlMG7dDOrVGlcjpowFqDLRnZTExV7XDY/ha4svUqRjyD/HcNUNx1xqIY5?=
 =?us-ascii?Q?q51K1tsPE3ZAxLSTD1XOIKq2JANV4YTsNeuDY3xNGnsCBP4NdEe4pQNT+/QR?=
 =?us-ascii?Q?2BHKRq+/V+oL8JUsDlOTG/CXy+ZKTdHQIUV+ZsM412k9Sn3uEFXAnlxFH7wH?=
 =?us-ascii?Q?L6QgouxiehQd1s3RAAduP8ocS6AM+O+NqQ6ZN+53c28zHN7EmC+lAOuE4YEO?=
 =?us-ascii?Q?INSEG0wY+/FTtIZNT5lwJ5RSSuI+x2G26SPjs/Pz0bwh9uYX63i7sq9RDzgq?=
 =?us-ascii?Q?7meijVfjXZG60grUD16FoRJ4ap6BX/+OwsOeqkfeHl0GHbQU+ceuLrQJDdGt?=
 =?us-ascii?Q?FmJt/xgIgZMRbgNrcdEDpP/k7lSNInGL9YawC5+1YKXpQ9ACItcRZnNNaGcO?=
 =?us-ascii?Q?WdGkWJvXtwjYLs4LXM/2VZpKIVQbBwo1Iv85g6RPf/JJ2Hq0YtGkIR1ApHw6?=
 =?us-ascii?Q?0DOGHxxbdWAcj3QzHHPgPFy7bWOgZanYf5mRhSJh8zMRSt9v3TrKkWe0AwEH?=
 =?us-ascii?Q?gSyaOAasTX9OCjxz3F5mckOKw3M1txar1hi2Dvquae36wULhKP8wL6K30ESw?=
 =?us-ascii?Q?yrNynwLoFp6KDYaga0HRsg8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d918ea27-1c24-4110-7bfd-08db61c56fbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 10:54:41.4076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BCajITpwEhRRi2p2zU9uLErnqZKaGIFvD8twmWNQfGol6+FcE3035V7Xco9QjkM2KHL45n0LF0PwaliTMTH9mvuRwwKT8Mu0sxoboFWA7DUw6nR6OCtuvX+Je13k9yeK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4674
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685530488; x=1717066488;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jXxFjA99d3xchPluwBSxz8gTJfkrnp+iqM1DPvuM8vI=;
 b=ls9jIVPMAMrMRJJoMY5MnIxGYBPcndHANmvmmA+0ajAUEWUczHaA3QCM
 RkyGAo5WVe1yIj9oluLkh42VrCU5EvENId9rFQ7jNTRcTcunJKy9WZ8C9
 i3KHV7Sr7inAlRDmYBwVXWekT88XSw0sE5viduozUrtoQNhMHm/DrkiMw
 3815D3NHmhERhXJDcl0fpti454fhaSdaqEFGw8suLlUuKTPk289hnqbca
 Ls/SJ/vLew7KFYQ8Ct+CZuYrxKyyvQcPguXP11jv0jeSRAsZh9sJY5cmF
 yGQcREGjqOrGvdttxlnZ+genzK1trZItRX6O9cBT3wI7s4PR2Ro6WqpC9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ls9jIVPM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] net/sched: taprio: add
 netlink reporting for offload statistics counters
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Ismail,
 Mohammad Athari" <mohammad.athari.ismail@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Pranavi Somisetty <pranavi.somisetty@amd.com>, Jiri Pirko <jiri@resnulli.us>,
 "Hadi Salim, Jamal" <jhs@mojatatu.com>, Roger Quadros <rogerq@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, "Sit,
 Michael Wei Hong" <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vladimir,

> -----Original Message-----
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> Sent: Tuesday, 30 May, 2023 5:20 PM
> To: netdev@vger.kernel.org
> Cc: David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Hadi Salim, Jamal <jhs@mojatatu.com>; Cong Wang
> <xiyou.wangcong@gmail.com>; Jiri Pirko <jiri@resnulli.us>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; Kurt Kanzenbach <kurt@linutronix.de>;
> Gerhard Engleder <gerhard@engleder-embedded.com>; Nambiar, Amritha
> <amritha.nambiar@intel.com>; Ferenc Fejes <ferenc.fejes@ericsson.com>;
> Xiaoliang Yang <xiaoliang.yang_1@nxp.com>; Roger Quadros
> <rogerq@kernel.org>; Pranavi Somisetty <pranavi.somisetty@amd.com>;
> Harini Katakam <harini.katakam@amd.com>; Giuseppe Cavallaro
> <peppe.cavallaro@st.com>; Alexandre Torgue
> <alexandre.torgue@foss.st.com>; Sit, Michael Wei Hong
> <michael.wei.hong.sit@intel.com>; Ismail, Mohammad Athari
> <mohammad.athari.ismail@intel.com>; Oleksij Rempel <linux@rempel-
> privat.de>; Keller, Jacob E <jacob.e.keller@intel.com>; linux-
> kernel@vger.kernel.org; Andrew Lunn <andrew@lunn.ch>; Florian Fainelli
> <f.fainelli@gmail.com>; Claudiu Manoil <claudiu.manoil@nxp.com>;
> Alexandre Belloni <alexandre.belloni@bootlin.com>;
> UNGLinuxDriver@microchip.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Horatiu Vultur
> <horatiu.vultur@microchip.com>; Jose Abreu <joabreu@synopsys.com>;
> Maxime Coquelin <mcoquelin.stm32@gmail.com>; intel-wired-
> lan@lists.osuosl.org; Zulkifli, Muhammad Husaini
> <muhammad.husaini.zulkifli@intel.com>
> Subject: [PATCH net-next 3/5] net/sched: taprio: add netlink reporting for
> offload statistics counters
> 
> Offloading drivers may report some additional statistics counters, some of
> them even suggested by 802.1Q, like TransmissionOverrun.
> 
> In my opinion we don't have to limit ourselves to reporting counters only
> globally to the Qdisc/interface, especially if the device has more detailed
> reporting (per traffic class), since the more detailed info is valuable for
> debugging and can help identifying who is exceeding its time slot.
> 
> But on the other hand, some devices may not be able to report both per TC
> and global stats.
> 
> So we end up reporting both ways, and use the good old ethtool_put_stat()
> strategy to determine which statistics are supported by this NIC.
> Statistics which aren't set are simply not reported to netlink. For this reason,
> we need something dynamic (a nlattr nest) to be reported through
> TCA_STATS_APP, and not something daft like the fixed-size and inextensible
> struct tc_codel_xstats. A good model for xstats which are a nlattr nest rather
> than a fixed struct seems to be cake.
> 
>  # Global stats
>  $ tc -s qdisc show dev eth0 root
>  # Per-tc stats
>  $ tc -s class show dev eth0
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Tested-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

Thanks for the patch :) 
I applied my changes on top of your patch series, and it worked for both 
TAPRIO_CMD_STATS and TAPRIO_CMD_TC_STATS.  Awesome!

> ---
>  include/net/pkt_sched.h        | 47 ++++++++++++++++----
>  include/uapi/linux/pkt_sched.h | 10 +++++
>  net/sched/sch_taprio.c         | 78 +++++++++++++++++++++++++++++++++-
>  3 files changed, 126 insertions(+), 9 deletions(-)
> 
> diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h index
> f5fb11da357b..530d33adec88 100644
> --- a/include/net/pkt_sched.h
> +++ b/include/net/pkt_sched.h
> @@ -188,6 +188,27 @@ struct tc_taprio_caps {  enum tc_taprio_qopt_cmd {
>  	TAPRIO_CMD_REPLACE,
>  	TAPRIO_CMD_DESTROY,
> +	TAPRIO_CMD_STATS,
> +	TAPRIO_CMD_TC_STATS,
> +};
> +
> +/**
> + * struct tc_taprio_qopt_stats - IEEE 802.1Qbv statistics
> + * @window_drops: Frames that were dropped because they were too large
> to be
> + *	transmitted in any of the allotted time windows (open gates) for their
> + *	traffic class.
> + * @tx_overruns: Frames still being transmitted by the MAC after the
> + *	transmission gate associated with their traffic class has closed.
> + *	Equivalent to `12.29.1.1.2 TransmissionOverrun` from 802.1Q-2018.
> + */
> +struct tc_taprio_qopt_stats {
> +	u64 window_drops;
> +	u64 tx_overruns;
> +};
> +
> +struct tc_taprio_qopt_tc_stats {
> +	int tc;
> +	struct tc_taprio_qopt_stats stats;
>  };
> 
>  struct tc_taprio_sched_entry {
> @@ -199,16 +220,26 @@ struct tc_taprio_sched_entry {  };
> 
>  struct tc_taprio_qopt_offload {
> -	struct tc_mqprio_qopt_offload mqprio;
> -	struct netlink_ext_ack *extack;
>  	enum tc_taprio_qopt_cmd cmd;
> -	ktime_t base_time;
> -	u64 cycle_time;
> -	u64 cycle_time_extension;
> -	u32 max_sdu[TC_MAX_QUEUE];
> 
> -	size_t num_entries;
> -	struct tc_taprio_sched_entry entries[];
> +	union {
> +		/* TAPRIO_CMD_STATS */
> +		struct tc_taprio_qopt_stats stats;
> +		/* TAPRIO_CMD_TC_STATS */
> +		struct tc_taprio_qopt_tc_stats tc_stats;
> +		/* TAPRIO_CMD_REPLACE */
> +		struct {
> +			struct tc_mqprio_qopt_offload mqprio;
> +			struct netlink_ext_ack *extack;
> +			ktime_t base_time;
> +			u64 cycle_time;
> +			u64 cycle_time_extension;
> +			u32 max_sdu[TC_MAX_QUEUE];
> +
> +			size_t num_entries;
> +			struct tc_taprio_sched_entry entries[];
> +		};
> +	};
>  };
> 
>  #if IS_ENABLED(CONFIG_NET_SCH_TAPRIO)
> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
> index 51a7addc56c6..00f6ff0aff1f 100644
> --- a/include/uapi/linux/pkt_sched.h
> +++ b/include/uapi/linux/pkt_sched.h
> @@ -1259,6 +1259,16 @@ enum {
>  	TCA_TAPRIO_TC_ENTRY_MAX = (__TCA_TAPRIO_TC_ENTRY_CNT - 1)
> };
> 
> +enum {
> +	TCA_TAPRIO_OFFLOAD_STATS_PAD = 1,	/* u64 */
> +	TCA_TAPRIO_OFFLOAD_STATS_WINDOW_DROPS,	/* u64 */
> +	TCA_TAPRIO_OFFLOAD_STATS_TX_OVERRUNS,	/* u64 */
> +
> +	/* add new constants above here */
> +	__TCA_TAPRIO_OFFLOAD_STATS_CNT,
> +	TCA_TAPRIO_OFFLOAD_STATS_MAX =
> (__TCA_TAPRIO_OFFLOAD_STATS_CNT - 1) };
> +
>  enum {
>  	TCA_TAPRIO_ATTR_UNSPEC,
>  	TCA_TAPRIO_ATTR_PRIOMAP, /* struct tc_mqprio_qopt */ diff --git
> a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c index
> 06bf4c6355a5..3c4c2c334878 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -27,6 +27,8 @@
>  #include <net/sock.h>
>  #include <net/tcp.h>
> 
> +#define TAPRIO_STAT_NOT_SET	(~0ULL)
> +
>  #include "sch_mqprio_lib.h"
> 
>  static LIST_HEAD(taprio_list);
> @@ -2289,6 +2291,72 @@ static int taprio_dump_tc_entries(struct sk_buff
> *skb,
>  	return -EMSGSIZE;
>  }
> 
> +static int taprio_put_stat(struct sk_buff *skb, u64 val, u16 attrtype)
> +{
> +	if (val == TAPRIO_STAT_NOT_SET)
> +		return 0;
> +	if (nla_put_u64_64bit(skb, attrtype, val,
> TCA_TAPRIO_OFFLOAD_STATS_PAD))
> +		return -EMSGSIZE;
> +	return 0;
> +}
> +
> +static int taprio_dump_xstats(struct Qdisc *sch, struct gnet_dump *d,
> +			      struct tc_taprio_qopt_offload *offload,
> +			      struct tc_taprio_qopt_stats *stats) {
> +	struct net_device *dev = qdisc_dev(sch);
> +	const struct net_device_ops *ops;
> +	struct sk_buff *skb = d->skb;
> +	struct nlattr *xstats;
> +	int err;
> +
> +	ops = qdisc_dev(sch)->netdev_ops;
> +
> +	/* FIXME I could use qdisc_offload_dump_helper(), but that messes
> +	 * with sch->flags depending on whether the device reports taprio
> +	 * stats, and I'm not sure whether that's a good idea, considering
> +	 * that stats are optional to the offload itself
> +	 */
> +	if (!ops->ndo_setup_tc)
> +		return 0;
> +
> +	memset(stats, 0xff, sizeof(*stats));
> +
> +	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
> +	if (err == -EOPNOTSUPP)
> +		return 0;
> +	if (err)
> +		return err;
> +
> +	xstats = nla_nest_start(skb, TCA_STATS_APP);
> +	if (!xstats)
> +		goto err;
> +
> +	if (taprio_put_stat(skb, stats->window_drops,
> +			    TCA_TAPRIO_OFFLOAD_STATS_WINDOW_DROPS)
> ||
> +	    taprio_put_stat(skb, stats->tx_overruns,
> +			    TCA_TAPRIO_OFFLOAD_STATS_TX_OVERRUNS))
> +		goto err_cancel;
> +
> +	nla_nest_end(skb, xstats);
> +
> +	return 0;
> +
> +err_cancel:
> +	nla_nest_cancel(skb, xstats);
> +err:
> +	return -EMSGSIZE;
> +}
> +
> +static int taprio_dump_stats(struct Qdisc *sch, struct gnet_dump *d) {
> +	struct tc_taprio_qopt_offload offload = {
> +		.cmd = TAPRIO_CMD_STATS,
> +	};
> +
> +	return taprio_dump_xstats(sch, d, &offload, &offload.stats); }
> +
>  static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)  {
>  	struct taprio_sched *q = qdisc_priv(sch); @@ -2389,11 +2457,18 @@
> static int taprio_dump_class_stats(struct Qdisc *sch, unsigned long cl,  {
>  	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
>  	struct Qdisc *child = dev_queue->qdisc_sleeping;
> +	struct tc_taprio_qopt_offload offload = {
> +		.cmd = TAPRIO_CMD_TC_STATS,
> +		.tc_stats = {
> +			.tc = cl - 1,
> +		},
> +	};
> 
>  	if (gnet_stats_copy_basic(d, NULL, &child->bstats, true) < 0 ||
>  	    qdisc_qstats_copy(d, child) < 0)
>  		return -1;
> -	return 0;
> +
> +	return taprio_dump_xstats(sch, d, &offload, &offload.tc_stats.stats);
>  }
> 
>  static void taprio_walk(struct Qdisc *sch, struct qdisc_walker *arg) @@ -
> 2440,6 +2515,7 @@ static struct Qdisc_ops taprio_qdisc_ops __read_mostly
> = {
>  	.dequeue	= taprio_dequeue,
>  	.enqueue	= taprio_enqueue,
>  	.dump		= taprio_dump,
> +	.dump_stats	= taprio_dump_stats,
>  	.owner		= THIS_MODULE,
>  };
> 
> --
> 2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
