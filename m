Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHHZCCKFlGlBFQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 16:11:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B1114D74E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 16:11:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA6D083E17;
	Tue, 17 Feb 2026 15:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ziJX8prZFep; Tue, 17 Feb 2026 15:11:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1002E8175B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771341087;
	bh=JygQpubt5wcShTnTBlDORm0LgTZuprZnslpPMTY5laE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0t1+0wK4ARSFkOs81DYkPIWxASpHp/Q9X0cH0p7k3Mngr9qKCSjrzIgCvxwvLYBj4
	 wL8zh/msHgJKl7PynA4C1+qgY8+fMgflfGq6cQAr/LOtror1UrXk+3/UMBCiEct4Kb
	 wopxplSuD8KAfv0qbcFBUWoEOgfouNubX4Dho6peWILcEAJeamYmDYzLkgbR6dnEq4
	 d6xqOHBWCZIGIbTQitgO0hyD7BOkn9nK1wUEk/hratv9tXirg6IAd0JcTjsmxRAApX
	 HrIsjPNFb6NjByeCNuguQkijTaiObYIkm8KEUAqUM5TBOEX4R6z2fvVdiTtRO2innA
	 EEhCUDiAMrauw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1002E8175B;
	Tue, 17 Feb 2026 15:11:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CC179270
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9C8741443
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:11:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y1YOYDhim6BH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 15:11:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7F7240149
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7F7240149
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7F7240149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:11:24 +0000 (UTC)
X-CSE-ConnectionGUID: M1nKEvTATs+n1jIxZ+5tyw==
X-CSE-MsgGUID: chcWz1ZoQtG03i7vUL8mzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="59976483"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="59976483"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 07:11:24 -0800
X-CSE-ConnectionGUID: WNsi/GF4RHaKtB7zA0VCig==
X-CSE-MsgGUID: iXRDHq8gRdu7+0mbXWr90Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="244499852"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 07:11:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 07:11:23 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 07:11:23 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 07:11:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=msyx8yIWVKeP10jovN/qAaX/NkaYlCyw0yYFashJoG47dK+5JleBaMygxwn1rJAyr7E2pZo4uZGMSRVISeevSC/574UgjSYQAE3+AYxJ0XVFkxiJzLnOcyatKFwEm/n2HiR2aNQ0AL89YmWxeWYiaDjhN/CJapbq8yyyNNHyNzr9XjdO9h/ljA0vT2fCOpdeU3jhLJAxFxM+cFqXRrlFKEpiGfa8rU+67ceO5nCWU2uGnrB9+QSo24SuaszreRk/vvcP8w0hBYngx0ZkB0aMMrR26wjkvPwxElibfdy5EbTK/xBKmRs1NBAsBTClOUpMa+lFBlSDHTgKzEy01IQ/SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JygQpubt5wcShTnTBlDORm0LgTZuprZnslpPMTY5laE=;
 b=qroJxCZMibNC1/Koc6TMWBFYVgztBOIk6AmF8vgH+SWMB4LbWGTq87VqxT+L+HFaFehNMNqDcW2SB9kgAWHt4Yy94yJqpxt4qyDUKmogJ9J4F9k/+68R6s9nBkic6aV26y8duntWDnmfhpt9+wk9s9vRNC56F68F3jQtzZdMXeyiI5P7dnTOkaE6YFYmjW0A5MZGu/nUXQVnS1zk5h2xCCdRQcyxa9AOjvWW78iGo5tDIhaMr7fnWNZy80a75DPnHnq6NftzHogLiVEiyQatdH8MvzoRs3ZToHU446zh73sDqhWr+7VXRlEMkt29OnwRZhteyGy5PEujJIbVRBfQyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 15:11:16 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Tue, 17 Feb 2026
 15:11:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
CC: Claudiu Manoil <claudiu.manoil@nxp.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song Liu
 <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP Singh
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Simon Horman <horms@kernel.org>, Shuah Khan
 <shuah@kernel.org>, "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Bastien Curutchet
 (eBPF Foundation)" <bastien.curutchet@bootlin.com>, "Vyavahare, Tushar"
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?iso-8859-1?Q?Ricardo_B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "Dragos
 Tatulea" <dtatulea@nvidia.com>
Thread-Topic: [PATCH bpf v3 2/9] xsk: introduce helper to determine
 rxq->frag_size
Thread-Index: AQHcoBT6+fMGjtAMbEin6HwFH6Kxw7WG/xWw
Date: Tue, 17 Feb 2026 15:11:16 +0000
Message-ID: <IA3PR11MB89863F14155246AC6AF52450E56DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-3-larysa.zaremba@intel.com>
In-Reply-To: <20260217132450.1936200-3-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7300:EE_
x-ms-office365-filtering-correlation-id: 0a3661b3-a475-49f0-bbb1-08de6e36cbf3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?zMEMmyTmLbqKZImODYQGal4BKdf0noULRmzdTQ61mSKhhym0WonUKgrpNQ?=
 =?iso-8859-1?Q?QvgjmrK2pzasgheZlP653swauMOhPOCiQC2nL5/YbpMY6GDT917ShCeZ/Q?=
 =?iso-8859-1?Q?Hnzet4bEhYLx5d2BO+ISP/EQ1AHfL/hGgRdc4ge6RX2q/9lW+m4Llch+tI?=
 =?iso-8859-1?Q?9SJMwLt57JhwiMnNLedspYcMbroxIn9X8HFi1ZmYiz9FUGwvZH5x1rE4Hd?=
 =?iso-8859-1?Q?KK9qK5whet/BqObHj2lj5EkDYwmMcjxQZhqpx4L4FjdGh9ewQMnZZk1sCn?=
 =?iso-8859-1?Q?IQ5zd7KN6Hd6dblFdx5SqWAKm14Z7IX3LpTyAfumwRyNc9IRQoeZV30kNB?=
 =?iso-8859-1?Q?NQ22fohATdxZbo197twbzgIrnvZf76cCp9HE8/WpLE1kIYfq/D7En6sJnk?=
 =?iso-8859-1?Q?u9W6WTP/3lzOL5CDF+9Zxhz/+yO2uAnJMTnzGydpelkxbaXz+SZOhfdDSy?=
 =?iso-8859-1?Q?b1VNGixVu24ldJ/ZGmUJZ6lCmZGCvdXbLKVVK0NtyVgYkxIZFJi73SJRpN?=
 =?iso-8859-1?Q?MbbaSWmZ4kwI3WsFEmf/Hp+rvYIh3nn0O4YpfDjgu16AfD+uZGQUQ7Gh0w?=
 =?iso-8859-1?Q?3jdg8BMDD9QUCBJ0MbQedNu4crpY2592wFe4ypKCv/4A5qKeFnBdwanm7Q?=
 =?iso-8859-1?Q?HS4uZFuzobjOXcIylI7Mz7ny89ZWKrh+qxCjwE54NdZTow0+c/ROz5lf9+?=
 =?iso-8859-1?Q?CA3NbzkJpUOq64ep5VGUeAug0q1YJgPhUMP9OncNQpEFn1uk+uAHI05Co3?=
 =?iso-8859-1?Q?WYDXu4o/udZ/6jFOxtie1+bZcgT02XN8j1+HdoRGTiYDs56KtD0PrhSZQw?=
 =?iso-8859-1?Q?uSba+K9962bEHz4GS3cylHPmpxH9imWWuU+UIIqa7JGgpsMThc3Lrp3N05?=
 =?iso-8859-1?Q?wQhdw4p3T1yip7LTly+PHFu2OuNANBCP+cT+wACe2FCh9IZus3lIz9wPGb?=
 =?iso-8859-1?Q?znqgfMMD0WUSRdOKgit32+V283NRjfX3oJFnssPCKl95DlSy4lQ3YD1efW?=
 =?iso-8859-1?Q?xPdJkfwl5gcAp+/maLVSeuqHTrZYH+9qJ1g40/s8JXt7JjCT2HvqYHfPll?=
 =?iso-8859-1?Q?B+Ezxgq37N4uUbCeJW/HMYoBWFJyllXC5R9GoAlZbMtyJP2Qg2w7XNqIAt?=
 =?iso-8859-1?Q?5KmtUc0T74q+69msGmZyEz9o3obQwNGKMa4UuFqrolOoMpDLUmNfDr/Bs0?=
 =?iso-8859-1?Q?s9oBb0HIgwFOovaf7TbI6blX748L/09zAHX5dZePkn0E+d5aTL9d4/rcwL?=
 =?iso-8859-1?Q?Gly+QBQSMaHpHWUmiRnbcggKHDUh5A+FKRZH88dAofa0YujrK18xMN42xJ?=
 =?iso-8859-1?Q?qMRHSAa8ZCeEudMsjtKVifEv+m+xz+cb2IfIv3UokAddBcZiV7l27tJzMx?=
 =?iso-8859-1?Q?PFsg5WP1ODyIvG55L9iDV5EcRqhCFrBTQbC2R/2fwgZVLo13fTPE8GCyr7?=
 =?iso-8859-1?Q?+ocIAgFizqRUBQwElLnKpr9jk8D0xlDs1XyHmHflRLX//7m4mmDdRg4Jfj?=
 =?iso-8859-1?Q?BCtd2/6a3rPd9Hrrzk5LdUKWHYHb4AVU0NAI7pKHVP4Z8rv7wCUheW36VC?=
 =?iso-8859-1?Q?WSwRmPtzDPCL4+kzNhJR4/Vy2LlnXK/jX1RWf1mqvtqElMBZ+/nrGI+Dfd?=
 =?iso-8859-1?Q?s2CgZM16ViHiHw5Mkr1UtUJLSIjeDmdQprADjXDqSmxndno+bcqYE3FjTh?=
 =?iso-8859-1?Q?TqYpIZf+Ni0K3yvDsJU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?l2SSnhhWYVVMDrY9CG5Ui5T1IFIWgfAdcxxlVgTn085BliJg67oXtRPkRC?=
 =?iso-8859-1?Q?g2/sbucSm6ECUZv54kyz9sQcn75a4LJ0v0CXAojDH0zAgg+5dZ01NtKENi?=
 =?iso-8859-1?Q?o7l+uxEZo/LV01tlLutGN3qnXy96DFHOsHYapxM5zHYK5WRh42lIi//zV9?=
 =?iso-8859-1?Q?oQDa3Y8hSsQgDzN+AHArA667uQSvYSePxWPU7h547TNYjOx83gSczgJmP5?=
 =?iso-8859-1?Q?jJvUzYIJnbTjwR306Hz1UF/1bapvVe0vBIRWXFH5kWdEjEFSOVnbex/GZv?=
 =?iso-8859-1?Q?lxG9QUjDmQ59AqBtZDbJeB77YhyrwTt1XeHTuj86xhWBQuN0DIpyHhgqu7?=
 =?iso-8859-1?Q?jqtXQh/7kPNamss/waXA7uMxo7iKC25rIu4GYOep1eN7YB//+F7BJ8i2xJ?=
 =?iso-8859-1?Q?xzicKISitRvs+fv/ZGyM35SwZPEPXegsHcSITWx2vS8vHJTKmqykmGR+6J?=
 =?iso-8859-1?Q?GPf3JtuwPLYKX7W8NjsaCoq6gZbZO/AdEaARU61fM9hfCdZnwQ4IdmDDgq?=
 =?iso-8859-1?Q?oIAhkErsiawlGGyiU5vazonqb7ehhJl0HhVoZO9vGpeg4b2n3Z1y0jhlGB?=
 =?iso-8859-1?Q?xcjy5/C0170hpx/yGy14eZerpcATK18ycrDx5TnyDoDLGC2Vk6ukKOfBx7?=
 =?iso-8859-1?Q?kimRj/zhC3V6QcB8RSyi7AI5pZsWsaRh7c3Ffjw6wn4E4bC/CnJ4LvGf1V?=
 =?iso-8859-1?Q?TH4Oe0Ti4u0D7tIXBZh+FZzQ8DQoUBOXhoho0h6zEXAzAcW+dOnlIg87kM?=
 =?iso-8859-1?Q?TPFRbL6oKy6EruS8rRA12U5OurdzLAx6hyt+fkcG7VDzXRyMD026rPphHy?=
 =?iso-8859-1?Q?YsP+8nyuNNzNq33LbI91rFTh03vSV7M2v3uCUnm6b4fTWaTyAeZFXM7xsF?=
 =?iso-8859-1?Q?F1znzKAZxvek8J8NliL+7OcQ7RnRzSS5/l66t+uKeCE+UsmQQieYLcMNxz?=
 =?iso-8859-1?Q?xvZzq3739X3ZUYznWZDUR1GjNMU6fzODcePainRz3jhshZRsZC0Fk/vmtb?=
 =?iso-8859-1?Q?7PD+cWuFiDQLe2mt4VvGUh6/lmrB24DIWEXNg0cIqkWOSETcQLzw1AlaRu?=
 =?iso-8859-1?Q?WMtHclxWLKBL35AlkUUs+/yflk6acoXIp5qidsTWJmTrUZ7GHe5VRYVeNP?=
 =?iso-8859-1?Q?NMzYGi/l6dMZjYSaW4cFgAysB/9Hiy3Hr3Phub6oijF2gEeCHZ4fiKuoaR?=
 =?iso-8859-1?Q?lPA1JMetUi3pH9lsXU4cQnp7CN1eXBFpfsQfTMIzNs+LUIG79zHwix/B1m?=
 =?iso-8859-1?Q?EIK08ZEwLFv/4UAx+QOWzkAPbBAtlU3dvMczxEEOVf4dHaq4RUxtl8Voj6?=
 =?iso-8859-1?Q?LrkffsOKIOadIWUHgCXWp6XihQjAMAiUdO+Q389gqvsh++51N5OsDUJ3s7?=
 =?iso-8859-1?Q?iKNK6RnQk81oaoUAD6PEJHeNclgpF6z2MFBv0yrvjnNMHxf9dEODPF3Nvp?=
 =?iso-8859-1?Q?VlzkiOViJ89HPiJmU2ijTMB3DUrFkAUW1IlHvAuSCdm4meFeVY7M1nxv3p?=
 =?iso-8859-1?Q?iSDUzhhr2ximNMJeWWP+IBwhvHwZtpULZLouJfMojnVKIiralXF0Gao676?=
 =?iso-8859-1?Q?MeznazwgO0xDDs8h+bob/gPGmvEZCwsObjgWbZumEAMQ19ob65biFuY2jl?=
 =?iso-8859-1?Q?rdYPbAbadXcFKaJv/FYEjwPqfur9csFp2JQdchft9sM/AiFnAPxpSILjHe?=
 =?iso-8859-1?Q?lmlosDHJQd3G9nQuXd68ALSxbEsQyX0jWnCSgi1WU8dwVA+ChOQUgj+NKU?=
 =?iso-8859-1?Q?nFb2UNH4uv+d6MbUhZeBtX/OwDMgP62NwHEc5rSwzynFKDGAdCSLom3wk1?=
 =?iso-8859-1?Q?AH6IIkGy+WVkx9uTXiWsRVRA8UlcLYo=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a3661b3-a475-49f0-bbb1-08de6e36cbf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 15:11:16.1761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9WJVHiffqAp6eNK/I7WoRXZQcyxDhpAKz0eF9ArK7zcaPEEy28Yv/g5QakIaPWuq6bMCKhvJLKoZqQzxgrvEmc4fyaG1wG8g/zcfbvvjKm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771341085; x=1802877085;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wOCB7lrLro79av8Z7k5qyjlb7JzsuENhPMiR+UGGHGE=;
 b=giOQUEq+yuj/Wn9dXURFXLJNDMsDXkNhpDA56pRi3CV2vrvDnyqAe7Fd
 ZYHtS4STF65ZYfzzH3ldJeEVJfO2H9k/18DxI95vdc/czWWL37gkXPGhB
 TGT+BcYUiiUWI3nYQMq371sMevZofMOPcR6rbb/2MvzsP4dvNN6LuDa+6
 5oLm4eVcdfpqCTlKq6x8PHGHHRTjNPzH7zHt8VLjvPrXwUzDUMYhy/rq0
 /ZBvK4fw/HSq+iJmzi12nePLCMn6OkeOYLI/xhUPcPSMKR7Y8FbB+XoSs
 auiSmidZRQr77BzM5hBXwTYgoeO/eIURGk/4+NzMCgmXtq7DeUvYxMHdB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=giOQUEq+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 2/9] xsk: introduce helper to
 determine rxq->frag_size
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:dtatulea@nvidia.co
 m,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 31B1114D74E
X-Rspamd-Action: no action



> -----Original Message-----
> From: Zaremba, Larysa <larysa.zaremba@intel.com>
> Sent: Tuesday, February 17, 2026 2:25 PM
> To: bpf@vger.kernel.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Claudiu Manoil
> <claudiu.manoil@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>;
> Wei Fang <wei.fang@nxp.com>; Clark Wang <xiaoning.wang@nxp.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Alexei Starovoitov <ast@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> Stanislav Fomichev <sdf@fomichev.me>; Andrii Nakryiko
> <andrii@kernel.org>; Martin KaFai Lau <martin.lau@linux.dev>; Eduard
> Zingerman <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong
> Song <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Simon Horman
> <horms@kernel.org>; Shuah Khan <shuah@kernel.org>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Bastien Curutchet (eBPF Foundation)
> <bastien.curutchet@bootlin.com>; Vyavahare, Tushar
> <tushar.vyavahare@intel.com>; Jason Xing <kernelxing@tencent.com>;
> Ricardo B. Marli=E8re <rbm@suse.com>; Eelco Chaudron
> <echaudro@redhat.com>; Lorenzo Bianconi <lorenzo@kernel.org>; Toke
> Hoiland-Jorgensen <toke@redhat.com>; imx@lists.linux.dev;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-kselftest@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Dragos Tatulea
> <dtatulea@nvidia.com>
> Subject: [PATCH bpf v3 2/9] xsk: introduce helper to determine rxq-
> >frag_size
>=20
> rxq->frag_size is basically a step between consecutive strictly
> aligned
> frames. In ZC mode, chunk size fits exactly, but if chunks are
> unaligned, there is no safe way to determine accessible space to grow
> tailroom.
>=20
> Report frag_size to be zero, if chunks are unaligned, chunk_size
> otherwise.
>=20
> Fixes: 24ea50127ecf ("xsk: support mbuf on ZC RX")
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  include/net/xdp_sock_drv.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
> index 242e34f771cc..09d972f4bd60 100644
> --- a/include/net/xdp_sock_drv.h
> +++ b/include/net/xdp_sock_drv.h
> @@ -51,6 +51,11 @@ static inline u32 xsk_pool_get_rx_frame_size(struct
> xsk_buff_pool *pool)
>  	return xsk_pool_get_chunk_size(pool) -
> xsk_pool_get_headroom(pool);  }
>=20
> +static inline u32 xsk_pool_get_rx_frag_step(struct xsk_buff_pool
> *pool)
> +{
> +	return pool->unaligned ? 0 : xsk_pool_get_chunk_size(pool); }
> +
>  static inline void xsk_pool_set_rxq_info(struct xsk_buff_pool *pool,
>  					 struct xdp_rxq_info *rxq)
>  {
> @@ -337,6 +342,11 @@ static inline u32
> xsk_pool_get_rx_frame_size(struct xsk_buff_pool *pool)
>  	return 0;
>  }
>=20
> +static inline u32 xsk_pool_get_rx_frag_step(struct xsk_buff_pool
> *pool)
> +{
> +	return 0;
> +}
> +
>  static inline void xsk_pool_set_rxq_info(struct xsk_buff_pool *pool,
>  					 struct xdp_rxq_info *rxq)
>  {
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
