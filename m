Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLZkGiGohWnUEgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 09:36:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2977FB942
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 09:36:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 326CE61149;
	Fri,  6 Feb 2026 08:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQestyR0H9md; Fri,  6 Feb 2026 08:36:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 590816114B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770367006;
	bh=oaRp100IJCMXfd4ZDPAes7SJr3iKF3KHcJV9ioK8xhc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TlK4Lfz5KJLYTyAkJyy1OgJeQFoqG7/GgPOCiPHesyA85sjIUXFcGBDal9TvVRfyx
	 /Oyocv5ZdQJfv6eS4a5S+WppoT9rliVi/AgVpwa1O/y//be9ZitbF9JDAv1Yisw97w
	 roe6336l6dm9aKwstaLRbun7E0s2CjKKZtBCvUu31cEK0CmUWbvFQy+KIcwUfjDuKr
	 2WkiKryj48O7y3JQzEd5MPUsLHGnvw421Epu2rS+ScfF1VLeFi0pWTifERFAlrE2I9
	 5kkLhC9LGFXlI9FXi9KI6cVfVlZ/sXeo4coP8G6oIMaS+otWFJot8ELaOEbQ5Eita9
	 AOgOmx+KUBSew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 590816114B;
	Fri,  6 Feb 2026 08:36:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7F5E2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 08:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C870B6112E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 08:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nNf28moBxTUk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 08:36:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F6A560EB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F6A560EB4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F6A560EB4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 08:36:41 +0000 (UTC)
X-CSE-ConnectionGUID: wVJKGCdeT/G0thjgMAExfg==
X-CSE-MsgGUID: yz5XXytQT3O59+D7hi/6bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82310226"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82310226"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:36:41 -0800
X-CSE-ConnectionGUID: rhQmhHl1QYeQoRXF2+RzTA==
X-CSE-MsgGUID: 0ZQajFNVQOC4PZXrr7AQ5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="241300502"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:36:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:36:39 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 00:36:39 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:36:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ExsPs4GI+eh5li+TQn9WmSv7QXxGsTJypRvbFDuPnj1XetSJRyupEeWKB3BuqNmjfa1gYElOFNT1bPm8PCv3mevu1yEyMEQ2uzmXfzEqyhfc8B0wFjvn4DGDd6A3MEKGOcOwv17SeLnO2QKhm2Ysf4Kfe4dnaEWB6BSPFRT7BOb/32lppKIzKmiGdtauPOvs8mFVj6Hq+KgxETMghJ79pSvNAmCKTAzm3SQl0Kibi3RYNk0kxq6Fq0ytjtUSM+mGEpHQYMT+xoJPg/6atTNwlo2/eQFK8LWXhDwysfc7LGiXyPwJ9Fj+I73dSkKFNznFNdRYxr7DJEQd9aixdx85VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oaRp100IJCMXfd4ZDPAes7SJr3iKF3KHcJV9ioK8xhc=;
 b=p0aH3OinFHs1DDetigQgwZ/y/iYHAvMPaX4P6Kr8WtaRCHZUiot9Rommnn1DkZ8rGyp1Ym6NpdmFRKK8HsieSH1xhCSWUPw9Ry0HBqSjfCqnVlBkSY97Xc4tW+ivVEpHuFTqgzPcgx1CLvFWWaSsVIEYHefBkfOq/c+NsmBsxcpL+Y1NYIZ1g6fNaJG6Ly6DvpPNSrWHJH/DWPCPzpmQPCydMDapxUhs3okkPczLrTUXeIBQJYboJC76QRA6Tzmxd9o7JcOuLW/9T5fyfhJaPMkmmKmucj8OKtgcC/YVmrnThiIQf01AVpiF2XeBt3MZHY65yYKHRyBFo4fficcgcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by LV8PR11MB8582.namprd11.prod.outlook.com (2603:10b6:408:1f7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Fri, 6 Feb
 2026 08:36:36 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 08:36:36 +0000
Date: Fri, 6 Feb 2026 09:36:21 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: Vladimir Oltean <vladimir.oltean@nxp.com>, <bpf@vger.kernel.org>, "Claudiu
 Manoil" <claudiu.manoil@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 "Stanislav Fomichev" <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 "Martin KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman
 <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Maciej Fijalkowski"
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aYWoBRmt-lcM_JkG@soc-5CG4396X81.clients.intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
 <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
 <20260205134046.pggwyosutj7ggi4i@skbuf>
 <20260205175408.30ab72a1@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205175408.30ab72a1@kernel.org>
X-ClientProxiedBy: VI1P195CA0086.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::39) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|LV8PR11MB8582:EE_
X-MS-Office365-Filtering-Correlation-Id: ff9a766c-50a5-4b96-8165-08de655ad731
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZqdpDkpbDEsdsyhSkopD/i3EtcnE7m8AnJa9Dq+RgqpvGnCNOOpDub6Z4hDI?=
 =?us-ascii?Q?Czgj0eAgPrLNRFtI/YAgwgIQxBshxkGGDo/IJUHUJkYDcbc2hoCZTPrJi/xb?=
 =?us-ascii?Q?r6tUz+A5106C+477lL011C9j8BPvlx6NehLzObekJnsg7nlKAZ009zvbKtVu?=
 =?us-ascii?Q?Xz66+LbgmgPCO8lUlJ/4UrrY4lBJADC/6evDDunConuTL/uHq3344zcf0+Ab?=
 =?us-ascii?Q?FSROeZXMaKX5NyuRxJO2qvdVemVNlrzV1bCczqxDT2hc5+Etx3nIG9mAQVL6?=
 =?us-ascii?Q?QIjK8VAk7x0r0IwiF/jlHk6kXbjLjZMl7kMwfnsSAVW5vQhET372kN81WYg1?=
 =?us-ascii?Q?zO5VP+XFJYfhXpBHypZnZosg4duNDjM59AcX4LtPKYtAp5AESj6tWqvnf+0N?=
 =?us-ascii?Q?0lxltjidtGDvUVgSkbHP4XdWnz3RBCsJeYX91De2+cU4ycIjD0YBj15Q18lb?=
 =?us-ascii?Q?dvxH0Ag0lFhLh8oNnHFF8FXoXGxtRA9Hqp2rPMx7qVBFaLlVGeo3XlSoEYEn?=
 =?us-ascii?Q?k8g+lWLU5k+JEe2JUthglPpf4gMhW0bkQtWpOwJy0Yk9LKB9Difcz8fl5Zbl?=
 =?us-ascii?Q?++REx4ei3VwRefN5HbJrebmLsVkLC1u89JxjwUsCJtg0KXXa8AwRJ5KaJmOr?=
 =?us-ascii?Q?j7+iIBx/0MV9A159Ye9GDQfANEBh0Wchi8Gwu8DmtfvTQEZM8gKYceqt6iwX?=
 =?us-ascii?Q?bue20yJGfS2xx5Dh2CH1tqJgsR1vx0TQjpcVyMPOoheWMj9rhqSMY5EBxZmH?=
 =?us-ascii?Q?fURXqunqCxrqHuu4GVWqHttrUry1xT/mCgxwvz3XuqoIA6K/A0Gdudd6ltA7?=
 =?us-ascii?Q?otEsT+bR4P9ezAvGPLCg9kTVDAC9D8Y4JEMM8lU5QL3lotjZ/YBoqeAC5mig?=
 =?us-ascii?Q?v93UQyDAI67DiTspLvrQ4pEJ/QPSbCzlgbqKOR5D51o46hP+7p8klFeDbTnK?=
 =?us-ascii?Q?Z8q3mBmPxOSUHLN5Kb+IqH+z3pM6IVhDUtVotjxnpDFg9i2f49fGDxSmVcqT?=
 =?us-ascii?Q?susTQ01BCHRPrDMsirbYS4/v+KHKLXOB4qO5azQ53KpeS0IVIrRVS0Fh78IF?=
 =?us-ascii?Q?kUVuq79H4AsmanLzAdnL9irFxk4DEXEm/909HrnvTLr+MuP3AD4DNWc/nrUP?=
 =?us-ascii?Q?5wy5SzkJ+8vdfwownRzfvdLUg2DnXRfuW1H3lMkFMCIOmZbYysNxeduZ4QBD?=
 =?us-ascii?Q?ugABSW3Oy2rUHJzA10wDVLZUOXQrhetrt98JVCYkOOA2Fks48NfjrvIs7oOi?=
 =?us-ascii?Q?s/U7NBTpP6ukh3ORxnZSOrh5eBexRSLWYlMlhqVUe1jmly9YDufLdWFnMmgk?=
 =?us-ascii?Q?mOPNHjnbXyeCMwmytuG/Y+HtM7CGYF2LY+IvhWB6FnEYxdt9bAoRNk0ZPIZt?=
 =?us-ascii?Q?MVbPXh5nWG1ytkPG0/q70GJ28BfhZF8cFHKP8KhL69cXIo9FH2eKGggeXE25?=
 =?us-ascii?Q?DQXAsHoT6D/JXY+C5eLadvxxzGA9PkFQ0jL5/BtzjnkN6s8nzykFimgmcTrT?=
 =?us-ascii?Q?psqqaIikeNEK16cNFfhxplfjdzVb6xZxFGMOhr5McN+63g7mRD4KM86oS/dy?=
 =?us-ascii?Q?Zy7DK7oObLu0PRSx6pk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5u6dh2zHKfjWhUdgJ9GzEgLH5VvjcpD5u7A18jVlAjaDkE/5UH3UBGEhQ9ii?=
 =?us-ascii?Q?6hJF/R2EK2pgs0MqyGXJkipnxbGKRmZ47FMp6qGJw8wXH7fleI0rhaMqvRXR?=
 =?us-ascii?Q?4NQfEQI96luXXt71BSMYTYnAIzVGDrGqZwZFcHTJRR2EmeoR8hDTKcY+UY9i?=
 =?us-ascii?Q?005H5UhgQACafxqsqOmO9F+pvaBj6zZUGI5JIiUWddncLmxIcfuYuNWWpE+K?=
 =?us-ascii?Q?SmxuPY0fwLxqZE9BttpVoJdZgNIFUQbbTjvUUml6Rl7Y/nXc/oX74y5TOVW2?=
 =?us-ascii?Q?UfQLpJJaXcGmFxFw7fxBqcm9raaSEBm36NlQsrR89dIDjRztInUv4+0bmyiQ?=
 =?us-ascii?Q?R4MATAV4vqsZsCyq56PEf97VLWULR3G19ZIaJ+zTlYEjFSLVp0bQiHsTPQsh?=
 =?us-ascii?Q?L6kXvqTbHcwyBpuc4+25CvXLHbAY4S7yzZ9mK7i6abv/Nttd9TBkZsQmbkgH?=
 =?us-ascii?Q?XV5WfOyXpSdEFwWCQTzKcj4Bvtnr5XOIo8ZtdZJcIOH2xu58A4MX6UaQQ85/?=
 =?us-ascii?Q?486P90NZhw7V6/nvyok4NeRM5tn0NkXlgNlwsCyxJYk1H2EAUMOv/vhrDahz?=
 =?us-ascii?Q?KOOxQDQiyeUHs2L5HcJQBVbC1177PXUX1fYnXMc9h4Q+RDhUnEyFq6LoI/QG?=
 =?us-ascii?Q?W7tb61jbukrHZd1cxfge5eoV9OXWStR8ss3bQirjOZ6FePGdOHzQk/G6Jbfp?=
 =?us-ascii?Q?r4ONmsmLTZTJs1T5cCGvi4dTu8DquT4RU1klhvCtpV6rd1S2s3GtiB309HjR?=
 =?us-ascii?Q?hXKqai8ixeeKeqN4mwcZW4J1Y8jPpAY4h+t99VpV9gGkZe7uwrLzpsUTr96C?=
 =?us-ascii?Q?ft+JyLXxJ5eTwZX4mH7QpSYzxMDFuRKcGnO2UnekLa9b8uTZxAwNJuNQivcX?=
 =?us-ascii?Q?xMhUQQdg95qczV+2kc45tgaglAtVLkBnE/QDg8UxFj39h8siLmZVnwyYC4qf?=
 =?us-ascii?Q?t1unxnzgdFxCsQaHJ0/msrBkoYA+uzHf155xYQJYqj5Ya7RcepfJHoSBRhky?=
 =?us-ascii?Q?kYIXFJEft4WT2GNST7H0oztlAv0KUIrCGDHkSmz4Y37bQ58C0fTGuGnZjRed?=
 =?us-ascii?Q?tdOD1bdkU8PIARyh2TpHskWoemjQt4ZNIj+wh5nZ22XnDm6PnG1Qa1b+BSI/?=
 =?us-ascii?Q?w0vtZK0Hutpbsplolt67ajSLPNfIztXngA5fPTLeaicE2gZKkVnxsg8gRCrK?=
 =?us-ascii?Q?A4umCFomYMpV1SRo1cZszE8tyx9GBJaxlQvWB5emBXJuyX3NN8XwGGABIBJQ?=
 =?us-ascii?Q?/8Om5BTFjmJmuM5q8lSl16emTXGnOLlUFl5c1cAMUXRJctV6aXPpapDcwxgm?=
 =?us-ascii?Q?fQXEDH56/I38otXhjD7X//tPosHUJaZrXOurZ72JRyXkXYY+z+4LUw836jcY?=
 =?us-ascii?Q?fuUZ7sQXh4nBgLu47iMZgle/Uy8Z8v+CG0bee3bKNOFeMNtLWQMA2XtZ+qDr?=
 =?us-ascii?Q?Z29j5goRZMED4/3S81sJIM9mRh1GJlC2YbgwtS6RuzkwZgUejr+gkgv1zTte?=
 =?us-ascii?Q?X+TjwXz82+hYQExLBIUo0CrDgaMxZKn+CxptAuABiFPsGG2XfCcGq6sWxIBu?=
 =?us-ascii?Q?zqKcMU8O/2RmH3jrpAtKSEAT6F6D6ly8fihHSJIXpI/z5GO7JlM+3gQ663U8?=
 =?us-ascii?Q?lpGkptiL3+LnX/OI1A5/wNB4KAK1NUsENqAzHiupXG3vAEwoA9ONL/CQ6gCd?=
 =?us-ascii?Q?la3d+XTZOh6wkAm9/XgaGIG3kDx03Gi3P+yhGMDRDFy1BOF+w6cwrdEgqmwj?=
 =?us-ascii?Q?9uHBQZ2LZbXIj3kFfOz7VVDP+M+QO6dxgJiKmzrnGRT1Oo4m5x9aU0nQfSFz?=
X-MS-Exchange-AntiSpam-MessageData-1: XZO0SZUSoJFd5tPyLg15bRlu9xonZc+Ud9E=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff9a766c-50a5-4b96-8165-08de655ad731
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 08:36:36.7780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qyRGQf5P2RfJhXu1yousINPJ6Tw9zy7KiKSGtW3nqANAeaza6khYxO/pvzyUd6FfVO3BIusjK0uDvvJo6fnCp4dA/bkX9emC04bf/Ca4E28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770367002; x=1801903002;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ta7GzHFHB2yuQt6ypWv43VSGCAt699EObcZYk1m0RAc=;
 b=i2CA5PzCWP18dLK2fsK4l7OFI9C7AfNCShwlFpqEkkGurhqZ038+EuKb
 p0T1MTECqxZhs16IKTcLxcqWKXTfHBWUoDiVOEFbOrS413TVr87gDzylK
 JiSbtXFRI46dDvlXTDuAxs9dkZL4VXdMbyevEFfqJCOPLv1IXGuyqmcCG
 vRoKo/ecPG/JKq7VaMG1Xg5RtoeZ9Wtd3WiZ1r9OX0BQOybOWTQTsER8Z
 qHKTd/eLBfpWnNEL4PT9cV/olmrpTOLP80DF5iMA/qqlDnHEn19woUg29
 j97DtNOkFE2Xbp9Z0MKLGIkasyAqgfWO4vCIhkAV0FiaHVnMV01Rc9YU5
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i2CA5PzC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:vladimir.oltean@nxp.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.c
 h,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,vger.kernel.org,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: A2977FB942
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 05:54:08PM -0800, Jakub Kicinski wrote:
> On Thu, 5 Feb 2026 15:40:46 +0200 Vladimir Oltean wrote:
> > > > I mean, it should "work" given the caveat that calling bpf_xdp_adjust_tail()
> > > > on a first-half page buffer with a large offset risks leaking into the
> > > > second half, which may also be in use, and this will go undetected, right?
> > > > Although the practical chances of that happening are low, the requested
> > > > offset needs to be in the order of hundreds still.  
> > > 
> > > Oh, I did get carried away there...
> > > Well, one thing is shared page memory model in enetc and i40e, another thing is
> > > xsk_buff_pool, where chunk size can be between 2K and PAGE_SIZE. What about
> > > 
> > > tailroom = rxq->frag_size - skb_frag_size(frag) -
> > >            (skb_frag_off(frag) % rxq->frag_size);
> > > 
> > > When frag_size is set to 2K, headroom is let's say 256, so aligned DMA write
> > > size is 1420.
> > > last frag at the start of the page: offset=256, size<=1420
> > >     tailroom >= 2K - 1420 - 256 = 372
> > > last frag in the middle of the page: offset=256+2K, size<=1420
> > >     tailroom >= 2K - 1420 - ((256 + 2K) % 2K) = 372
> > > 
> > > And for drivers that do not fragment pages for multi-buffer packets, nothing
> > > changes, since offset is always less than rxq->frag_size.
> > > 
> > > This brings us back to rxq->frag_size being half of a page for enetc and i40e,
> > > and seems like in ZC mode it should be pool->chunk_size to work properly.  
> > 
> > With skb_frag_off() taken into account modulo 2K for the tailroom
> > calculation, I can confirm bpf_xdp_frags_increase_tail() works well for
> > ENETC. I haven't fully considered the side effects, though.
> 
> +1, also seems to me like it would work tho I haven't thought thru all 
> the cases. We do need to document and name things well, tho, 'cause
> subtleties are piling up ;) Maybe it's time for an ASCII art
> for xdp layout?
>

Yeah, for AF_XDP mbuf in i40e we actually recently discovered another 
buffer-size-calculation-related issue, so some visual aid would be useful. I 
will think about how it should look.
 
> FWIW my feeling is that instead of nickel and diming leftover space 
> in the frags if someone actually cared about growing mbufs we should
> have the helper allocate a new page from the PP and append it to the
> shinfo. Much simpler, "infinite space", and works regardless of the
> driver. I don't mean that to suggest you implement it, purely to point
> out that I think nobody really uses positive offsets.. So we can as
> well switch more complicated drivers back to xdp_rxq_info_reg().
> 

As Vladimir has mentioned, if the driver does not use header split, frags will 
have a tailroom of a size of skb_shared_info, so tail growing does work in 
practice.

Allocating a page_pool buffer (given XDP queue has one attached) is certainly an 
option, although I am not sure if anyone needs it. Furthermore, growing tail 
would still fail for a single-buf case.
