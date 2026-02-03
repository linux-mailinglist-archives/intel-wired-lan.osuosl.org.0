Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKT3By7wgWlAMwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:55:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7C5D96A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DF8C60893;
	Tue,  3 Feb 2026 12:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8nNf5nE2iiIK; Tue,  3 Feb 2026 12:55:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB62560894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770123306;
	bh=K4f63WW2L3rBhwkmsP2V24ZRI5wy7+r8nbqrQPV4ddU=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xvLCu9aF3tJw8PKckBQiF2or0W37kKrebRspEKtqX8aKDU+fgm4WmJUfIYTW+2txz
	 YMYV7qR8Wtdr4fNwCwEfEJOkhtNvNk53WFqKzx6XWIwJEqIg4IEfqOFyNByJnzYZoM
	 OQuful1NSJMA2eCn5GMmj9qKfnnUMoH1KqZbxbmx+Q0UcADs+363MU3pqz1EICnBBY
	 /B8ZWCdC/43SbgGjrjQlSoVQijAc8wcmtcnPJn1Ps/AhZXPI7qscN6edaszjmx1ReX
	 cziPF2gcSyOQ/bq0GZHJkQOqZQZDwXg8FQIkUtUXmVMMdhfzDuPcBdeiAm4cwExb25
	 HJTHlrqM6P4oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB62560894;
	Tue,  3 Feb 2026 12:55:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7A75F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF56E811C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:55:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZJhcCpqaFC_j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 12:55:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E80A811BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E80A811BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E80A811BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:55:01 +0000 (UTC)
X-CSE-ConnectionGUID: EI6qHGRTQUGhkI8IdXRjmQ==
X-CSE-MsgGUID: qhNXCPnVQHOnjPV4TU+JMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71015601"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71015601"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:55:01 -0800
X-CSE-ConnectionGUID: rHyTvYR1TLSuyK+wAl74kQ==
X-CSE-MsgGUID: EQLfq9NnRvWeL8/FGMCYPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="247448702"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:55:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 04:54:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 04:54:59 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 04:54:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AxpY80kaYdcPTEQWz+fT1Tjw8JKFMYjQCCTL4jJnyQn2V6JU91LYBj5pt0TeyJTsLAOvXV28hC8Qlqiiqy5CV/oYHAzWOfU7167Am6MFA28kId8qc+OH+1xl7N2To1bxkYYxdhaV6Bo8HduHhncvgGukYPeIZZ0eLLFk/9hnOn/G6Jna1ioyxzX7nvtdpYbA5SbtEo6RzBLAXFNXNXUdlDD/BvqQoX8VppRYTSg/SUmgttlcB3H3o7AU6rH+pHTBU2RutoGzbRU/JlkkyNx3QF+a5zvywhDmTzMpH9Zle31hpXNMylB3mioxlNRMvO+zBxZpPh8hYvo61DSGVJcynQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nnehp+4lTet20iPY/t2Xg4qwvQjhlDWFXRn07MqBENY=;
 b=ivg7TMWMQPEi0bv9xt+dbRvKhm1me0ad7KWPJyEPnxYJEUOHp1XmD/OyY/2XKfPWliEkNMBLRaZQOkccpDMRKqOzPVGHWz3U5PJXJonFaOU6KOwdPpyplGSvwlQfhlkTgZ2uXugXyb6B5OJ+kBd8PVqlxOKr2qr+MImdGujG/BeqffZo9c1AtTvYEbknt3xWbtfmKR8NLuzKF8jCHhEMrqLJg1oCL7SRriNpZ+aj9JK82j5Y4ez/qbThpbb0LtiLu2AJLQaEMjbRYDYDs0OHRN+l/qbWDorLezo+uSeUFVDKqNn7leVsiJWEsHs64URYPU6fGNoKb0jy6j1ZdE4GmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH7PR11MB6354.namprd11.prod.outlook.com (2603:10b6:510:1fe::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 12:54:51 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 12:54:51 +0000
Date: Tue, 3 Feb 2026 13:54:38 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 <imx@lists.linux.dev>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kselftest@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <aYHwDlDwN0ZniMev@soc-5CG4396X81.clients.intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-2-larysa.zaremba@intel.com>
 <87zf5q109e.fsf@toke.dk>
 <aYHqtxtg3uNXO668@soc-5CG4396X81.clients.intel.com>
 <87o6m60zoo.fsf@toke.dk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o6m60zoo.fsf@toke.dk>
X-ClientProxiedBy: VI1PR07CA0246.eurprd07.prod.outlook.com
 (2603:10a6:802:58::49) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH7PR11MB6354:EE_
X-MS-Office365-Filtering-Correlation-Id: 4959a3a3-bc5d-4e7e-2456-08de63236b6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|10070799003; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?vS1Gc2b7pXdZ7Kk8gYxLzDfnd99zOOWk9iwF+FLJvw5HQoPSrIPNjxA8z9?=
 =?iso-8859-1?Q?ieMVPqXJOYTuvAXUhkCkTAzvBXJQ9CFYv7bQY6I5x4G+kOj56LGeeg5EI2?=
 =?iso-8859-1?Q?5BHgKDY3cdcWMWut25p999ahRa2sUiHRAMg9ep7MLDR8HgziYfvYIra+Ee?=
 =?iso-8859-1?Q?N+3O4hbZ1Q5he9mGdyRXio0finf3CAQ08HGXxJEURB5W9JSdRt5e9gtENK?=
 =?iso-8859-1?Q?YeUfgs+JzROtl1/+qEu+JqXg9+0iinztv/Wx5ru4TyuV8daA7Rcw7aD/5i?=
 =?iso-8859-1?Q?YT4F47vpA82DdbF9qhu7XHH0Da7/t+IeuW3aZ86ZlogLnSJ1QGfTvBry75?=
 =?iso-8859-1?Q?cVHahwqnOsboNIn+91gtXEvGfXu70am8CRrfex0dOpNqvO6LttXOjzfVBh?=
 =?iso-8859-1?Q?i4EqHAZX1QJDehy3WVf+hJxiihBHL91lYIJGPOJHT0QvPB0ntr2KYfO+6e?=
 =?iso-8859-1?Q?MpICW8AJBP5sfQilf4KekIZXoqXhGypRlKAuqgn4MsddI5qxpKSCLLeaRM?=
 =?iso-8859-1?Q?G6HPS/f1EaGF5Tk5reiOWmxGdR7lwzG8Eql0RQ0YFSecktmsqAzuoteZq1?=
 =?iso-8859-1?Q?PfcM+xO6Lbk/hNDNtSaTU+WNkDjnO7OJHu4dVBVUwiNKYeuOjtb434MIhi?=
 =?iso-8859-1?Q?MPcFXpsN5328O0my8TW80hF+D5HxMO9/AY4taGo2fOriHSBzfqMpoJGPTr?=
 =?iso-8859-1?Q?iU7vT1GP6J3GQo3yPK2hzK9B4Fo3S09axunHIZ1W+5/MVE0m/eBpe3Taoy?=
 =?iso-8859-1?Q?BMZcSh1PIU/GMKXJHULDXov35x8d6tVfroWpp+pX24ruN7zdKPI/Gi5QLo?=
 =?iso-8859-1?Q?Nm+nEDB5d0zAmdmsPr/c2BashPj9hwEPRzSTXZv0TEjlCc+B7R6wWn9e/1?=
 =?iso-8859-1?Q?9QbrJFU4Mx11h52YzndnK4VbIF3tRwwUefRc+zZgjKNGvto8o+AO0BBWCK?=
 =?iso-8859-1?Q?eH2FoccCe7o2OIHr4ezPqtXCM88yqPcE561Xj+3xocP9QjddyJvNU34eO5?=
 =?iso-8859-1?Q?1NGlnUNZT0qDfdd8lVfHYMlksNpXCfZnBCd9txbtt3e0mar/dI/maChuRc?=
 =?iso-8859-1?Q?BQg+wJgJdyYkRRmSknOQmnBGmRMzXQ5S6NkwXHn+KbgzKW+azincCDX1gX?=
 =?iso-8859-1?Q?63PGW2vnS7L1HVOv//HmnzNTcP64Pyk8weASa76a4h+/2N7ESWEKC0+ZvI?=
 =?iso-8859-1?Q?zzdNQKb4qaWaICKkqipSf0QzpyEgFQMn0KIW4d2xIw/W9Gc+dAgqNrTGd+?=
 =?iso-8859-1?Q?f2DEj922wh+D8DyFVYFaObufnDjZKEroA3ZhhPmEIFsoUDHfmCP2ZYefEX?=
 =?iso-8859-1?Q?rbw1GS62esuA7qsH42n8Qyj8l2wm+xurfVB3gh9b7rLNBJInmHr/ZAwcwU?=
 =?iso-8859-1?Q?6ZebCL8WuDP4ZHnJtjWtGK0b2UkD3geuPtLwFq/ROaheg/u7ptRtP1nnGD?=
 =?iso-8859-1?Q?+sodfrSqVxllwcrcvLAZ5Y6pM7uozacbbEteisqsKxeHzULbI7OhzfecD4?=
 =?iso-8859-1?Q?mA3LhFnc8V2jMXEhcrxCE+/lWReUotpIMhZYMVHP7b3C5V13MKwzHoHBB4?=
 =?iso-8859-1?Q?gjf8nVb0CMpd08+6HPCQ73+UwQwS1ULcy7pKZuWDTp5155MrYTMGX0ezHD?=
 =?iso-8859-1?Q?iHC291U+zLNYs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?XSE2v/6Ty2c3tMNy9ui5nztjLqWNCOmnc1HPb4r+3cTJmBRsQla7rhey9t?=
 =?iso-8859-1?Q?CvuW4ATgvIrHNRYiYwuqk3E5iMxClo4XiAh/WAlTKtKjgBfZ5qHCFA2fTe?=
 =?iso-8859-1?Q?7FBxfA7gocqIr5Ch0o5KCJdEfbIAu1UNWr4NtPK2W/AQLlz/eukhkXD+Xw?=
 =?iso-8859-1?Q?kW7MPc/K9N/Ym5yY+CsckJvjxaceHcFxt3aBAQomxWUVZZaXrGsg3+L15d?=
 =?iso-8859-1?Q?zStkL3vlQe4ydVFtR8jHzlQGjwlZgsSs/te5Ddnrv/J0HJARaVLqDRh3Yj?=
 =?iso-8859-1?Q?X/3zzSIYYavY6zRgZa7xXtZc90O6+57PQ0ma0mTlca6VMRokhfjHuR4tfn?=
 =?iso-8859-1?Q?ObMllsK/D9T852Qq3t3imGjKSC22uuvrWHkIbmVr18CFkNDtPlxN25drPq?=
 =?iso-8859-1?Q?f+Rq+rxOZ8DIOKMihvHeE4OKYj4IFPiW9s5DrYa1L3LEnuA74yTdUtNDVg?=
 =?iso-8859-1?Q?kx0IgbrbRIgMmsTqhmy4IL6Mwt7RukHLcomCLhh0mBSdqLdMWcqw/GTJWS?=
 =?iso-8859-1?Q?/hget9/UhdeHKABM3p9esGKYLiNZNPBjrNLXBgV1+QTE9uwJBVaaK2Fzal?=
 =?iso-8859-1?Q?ZTjpM2u7f1tKZUZ3Xx/bwVd8oUziwhytHd1B98ytoZJEC+oBkF/4kfXycS?=
 =?iso-8859-1?Q?wyW4sGWnwq4+uX39BOty+n9o24HmBS+qjVQb39YjKIZRPNvTLPE7m/JU7L?=
 =?iso-8859-1?Q?0dUj/HmbqeoxWLUzqpCpR6ijbdJw7HAHGvpdUH3Xy5QhLHbp3iD+ia7cr+?=
 =?iso-8859-1?Q?aiPaoOLWVf2VODcDRr/sPv0OjSPB3DHMjyfmEJVHro57wO6vIZb8wQHpOF?=
 =?iso-8859-1?Q?VNNSJW4deugPOxS3PI+bhyEMDUSI0noCuUHvpy9u7RcRgl81AgnZiE/0ic?=
 =?iso-8859-1?Q?cihZp6bd3zC/EaNrW+NZ84UzdecRomUeY+Z7wCoHIFn+yGLgoW0Ho/x8vW?=
 =?iso-8859-1?Q?sJzKdlZi4iau9jMSQa+zHMGFhWfEiJHYNnFKKhVDWi0eZxLH0bGORRJYdW?=
 =?iso-8859-1?Q?KBFkTO/v4ZsBqsTWBhvoJNhoEK0wJiVJMmH0RlQy3WPglkC9dQAHjDHH4J?=
 =?iso-8859-1?Q?I1Qm9Euv9Ha3eVpGkrXTQ6G3eAzMdJZfnWmaTKwfXDJ8h1Qgv44XbSaSd3?=
 =?iso-8859-1?Q?IsQd7pJoK2u1U5DHxpLJjWdQGm/S1/tyPcJ8NalucKhdKY03xuNLH0AI9q?=
 =?iso-8859-1?Q?2rhOv4nmleg1C62Zop4Cqz1FvtM393sJyoea1RiVUVQONp0VtmWz7ATvgf?=
 =?iso-8859-1?Q?ik4Ji3LH3zfx9nIJ2jrb2c2/wrh56v107l5EMuePuG0bx0nPrAna59OIT6?=
 =?iso-8859-1?Q?a8WgXspAZFpNc7hUFHI4r4I62ASOktGAOT+4pOC4m5HcUFEEQKSl5yldbT?=
 =?iso-8859-1?Q?KnLiPcEIYttVkRErSgzJ8UDfnzW252grCUWWT3fXSRR1JTwlqAVN8ITB1j?=
 =?iso-8859-1?Q?Yn237JJZ2CKfVLeUz8TMUSXi3raVVZBQ9JaARRNAvbB+BYkRIUEzOC2fqB?=
 =?iso-8859-1?Q?L9TvtFz0CMt9vy/fU2StaV+FOtrcmTGmnJhUr8Dg3UOUqFEDaSkRwjjsLP?=
 =?iso-8859-1?Q?E6WDhwfOiycm+HpiXkBAU4tZZKhifeJgMOcDlfs91hucvyNzPuJfxiH5cX?=
 =?iso-8859-1?Q?uBX5oiOuk+sF1pbogzgYgpWyJJZaoHLURh6QmXmRFboyVu8pIX3auoKCeu?=
 =?iso-8859-1?Q?Wx8Ka/jD1YkGLkum2EhqlTi5r78ZmCHjsU8pIIOPPESNZlIrefOgtc/gY4?=
 =?iso-8859-1?Q?6BLdR06gweTDO3jfdnZi+gQTrMk1s/x/KlVOIwOpaHb2fzja6A9xrTonTl?=
 =?iso-8859-1?Q?GNM3m/mismvk3yGErQWvD9lL1g15d6kJ5bjdq65JpBVsBIvrf3vHMeqXeF?=
 =?iso-8859-1?Q?Kx?=
X-MS-Exchange-AntiSpam-MessageData-1: CEq+Y3cP8NOcdiWl2RBokUAV3Iw1cbKMW08=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4959a3a3-bc5d-4e7e-2456-08de63236b6d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 12:54:51.3677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gEL6GetdCIbOTTHUF6kg019T/CF0g2NksKoW6cdMa/B53+nyW4qgiaU+uZu2U0p81mPo5G+c5ggnTNzHj+VXgRki01XZDwG5CfhM42jC1js=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770123302; x=1801659302;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=g+VKmEZ5N4gHPVoCWFd2tUprSiWSt6P5mw2Y0v1t/eY=;
 b=IkyZ4yVeKRk5KFuULl8nlR6MLo/3pm6MxAlWHOjzGuvf0RzXCB2fsJj7
 AHRJEsCYhJChYvXmnAItXUHWZ8TjCB58K7FB8WqG7xdCCzrwrP4vXDtKj
 iP6i4lU4RdujdthIzhf3D0Gg7HKNRBWCNHmqAQwZF6FQaCmzQsAiweaGN
 LMOOvcGWvVsuUvrmigM55uClcAYpF7Gx90RwSUcOoAnLG93koaVxYYjFh
 Zl2OEcO0fj5xRjYPaWDiBfGf/HLj9oaTUv60GkrGJRbqWWrNg7uzsvIS2
 VFoSg/+BetqxuItdFmivoQCRRXzT3J5zKr+Efkjx2flZOgCf84RpdT7LQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IkyZ4yVe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 1/6] xdp: produce a warning when
 calculated tailroom is negative
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:toke@redhat.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.c
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
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,soc-5CG4396X81.clients.intel.com:mid]
X-Rspamd-Queue-Id: 6F7C5D96A9
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 01:38:47PM +0100, Toke Høiland-Jørgensen wrote:
> Larysa Zaremba <larysa.zaremba@intel.com> writes:
> 
> > On Tue, Feb 03, 2026 at 01:26:21PM +0100, Toke Høiland-Jørgensen wrote:
> >> Larysa Zaremba <larysa.zaremba@intel.com> writes:
> >> 
> >> > Many ethernet drivers report xdp Rx queue frag size as being the same as
> >> > DMA write size. However, the only user of this field, namely
> >> > bpf_xdp_frags_increase_tail(), clearly expects a truesize.
> >> >
> >> > Such difference leads to unspecific memory corruption issues under certain
> >> > circumstances, e.g. in ixgbevf maximum DMA write size is 3 KB, so when
> >> > running xskxceiver's XDP_ADJUST_TAIL_GROW_MULTI_BUFF, 6K packet fully uses
> >> > all DMA-writable space in 2 buffers. This would be fine, if only
> >> > rxq->frag_size was properly set to 4K, but value of 3K results in a
> >> > negative tailroom, because there is a non-zero page offset.
> >> >
> >> > We could return -EINVAL and be done with it in such case, but due to
> >> > tailroom being stored as an unsigned int, it is reported to be somewhere
> >> > near UINT_MAX, resulting in a tail being grown, even if the requested
> >> > offset is too much (it is around 2K in the abovementioned test). This later
> >> > leads to all kinds of unspecific calltraces.
> >> >
> >> > [ 7340.337579] xskxceiver[1440]: segfault at 1da718 ip 00007f4161aeac9d sp 00007f41615a6a00 error 6
> >> > [ 7340.338040] xskxceiver[1441]: segfault at 7f410000000b ip 00000000004042b5 sp 00007f415bffecf0 error 4
> >> > [ 7340.338179]  in libc.so.6[61c9d,7f4161aaf000+160000]
> >> > [ 7340.339230]  in xskxceiver[42b5,400000+69000]
> >> > [ 7340.340300]  likely on CPU 6 (core 0, socket 6)
> >> > [ 7340.340302] Code: ff ff 01 e9 f4 fe ff ff 0f 1f 44 00 00 4c 39 f0 74 73 31 c0 ba 01 00 00 00 f0 0f b1 17 0f 85 ba 00 00 00 49 8b 87 88 00 00 00 <4c> 89 70 08 eb cc 0f 1f 44 00 00 48 8d bd f0 fe ff ff 89 85 ec fe
> >> > [ 7340.340888]  likely on CPU 3 (core 0, socket 3)
> >> > [ 7340.345088] Code: 00 00 00 ba 00 00 00 00 be 00 00 00 00 89 c7 e8 31 ca ff ff 89 45 ec 8b 45 ec 85 c0 78 07 b8 00 00 00 00 eb 46 e8 0b c8 ff ff <8b> 00 83 f8 69 74 24 e8 ff c7 ff ff 8b 00 83 f8 0b 74 18 e8 f3 c7
> >> > [ 7340.404334] Oops: general protection fault, probably for non-canonical address 0x6d255010bdffc: 0000 [#1] SMP NOPTI
> >> > [ 7340.405972] CPU: 7 UID: 0 PID: 1439 Comm: xskxceiver Not tainted 6.19.0-rc1+ #21 PREEMPT(lazy)
> >> > [ 7340.408006] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.17.0-5.fc42 04/01/2014
> >> > [ 7340.409716] RIP: 0010:lookup_swap_cgroup_id+0x44/0x80
> >> > [ 7340.410455] Code: 83 f8 1c 73 39 48 ba ff ff ff ff ff ff ff 03 48 8b 04 c5 20 55 fa bd 48 21 d1 48 89 ca 83 e1 01 48 d1 ea c1 e1 04 48 8d 04 90 <8b> 00 48 83 c4 10 d3 e8 c3 cc cc cc cc 31 c0 e9 98 b7 dd 00 48 89
> >> > [ 7340.412787] RSP: 0018:ffffcc5c04f7f6d0 EFLAGS: 00010202
> >> > [ 7340.413494] RAX: 0006d255010bdffc RBX: ffff891f477895a8 RCX: 0000000000000010
> >> > [ 7340.414431] RDX: 0001c17e3fffffff RSI: 00fa070000000000 RDI: 000382fc7fffffff
> >> > [ 7340.415354] RBP: 00fa070000000000 R08: ffffcc5c04f7f8f8 R09: ffffcc5c04f7f7d0
> >> > [ 7340.416283] R10: ffff891f4c1a7000 R11: ffffcc5c04f7f9c8 R12: ffffcc5c04f7f7d0
> >> > [ 7340.417218] R13: 03ffffffffffffff R14: 00fa06fffffffe00 R15: ffff891f47789500
> >> > [ 7340.418229] FS:  0000000000000000(0000) GS:ffff891ffdfaa000(0000) knlGS:0000000000000000
> >> > [ 7340.419489] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> >> > [ 7340.420286] CR2: 00007f415bfffd58 CR3: 0000000103f03002 CR4: 0000000000772ef0
> >> > [ 7340.421237] PKRU: 55555554
> >> > [ 7340.421623] Call Trace:
> >> > [ 7340.421987]  <TASK>
> >> > [ 7340.422309]  ? softleaf_from_pte+0x77/0xa0
> >> > [ 7340.422855]  swap_pte_batch+0xa7/0x290
> >> > [ 7340.423363]  zap_nonpresent_ptes.constprop.0.isra.0+0xd1/0x270
> >> > [ 7340.424102]  zap_pte_range+0x281/0x580
> >> > [ 7340.424607]  zap_pmd_range.isra.0+0xc9/0x240
> >> > [ 7340.425177]  unmap_page_range+0x24d/0x420
> >> > [ 7340.425714]  unmap_vmas+0xa1/0x180
> >> > [ 7340.426185]  exit_mmap+0xe1/0x3b0
> >> > [ 7340.426644]  __mmput+0x41/0x150
> >> > [ 7340.427098]  exit_mm+0xb1/0x110
> >> > [ 7340.427539]  do_exit+0x1b2/0x460
> >> > [ 7340.427992]  do_group_exit+0x2d/0xc0
> >> > [ 7340.428477]  get_signal+0x79d/0x7e0
> >> > [ 7340.428957]  arch_do_signal_or_restart+0x34/0x100
> >> > [ 7340.429571]  exit_to_user_mode_loop+0x8e/0x4c0
> >> > [ 7340.430159]  do_syscall_64+0x188/0x6b0
> >> > [ 7340.430672]  ? __do_sys_clone3+0xd9/0x120
> >> > [ 7340.431212]  ? switch_fpu_return+0x4e/0xd0
> >> > [ 7340.431761]  ? arch_exit_to_user_mode_prepare.isra.0+0xa1/0xc0
> >> > [ 7340.432498]  ? do_syscall_64+0xbb/0x6b0
> >> > [ 7340.433015]  ? __handle_mm_fault+0x445/0x690
> >> > [ 7340.433582]  ? count_memcg_events+0xd6/0x210
> >> > [ 7340.434151]  ? handle_mm_fault+0x212/0x340
> >> > [ 7340.434697]  ? do_user_addr_fault+0x2b4/0x7b0
> >> > [ 7340.435271]  ? clear_bhb_loop+0x30/0x80
> >> > [ 7340.435788]  ? clear_bhb_loop+0x30/0x80
> >> > [ 7340.436299]  ? clear_bhb_loop+0x30/0x80
> >> > [ 7340.436812]  ? clear_bhb_loop+0x30/0x80
> >> > [ 7340.437323]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> >> > [ 7340.437973] RIP: 0033:0x7f4161b14169
> >> > [ 7340.438468] Code: Unable to access opcode bytes at 0x7f4161b1413f.
> >> > [ 7340.439242] RSP: 002b:00007ffc6ebfa770 EFLAGS: 00000246 ORIG_RAX: 00000000000000ca
> >> > [ 7340.440173] RAX: fffffffffffffe00 RBX: 00000000000005a1 RCX: 00007f4161b14169
> >> > [ 7340.441061] RDX: 00000000000005a1 RSI: 0000000000000109 RDI: 00007f415bfff990
> >> > [ 7340.441943] RBP: 00007ffc6ebfa7a0 R08: 0000000000000000 R09: 00000000ffffffff
> >> > [ 7340.442824] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
> >> > [ 7340.443707] R13: 0000000000000000 R14: 00007f415bfff990 R15: 00007f415bfff6c0
> >> > [ 7340.444586]  </TASK>
> >> > [ 7340.444922] Modules linked in: rfkill intel_rapl_msr intel_rapl_common intel_uncore_frequency_common skx_edac_common nfit libnvdimm kvm_intel vfat fat kvm snd_pcm irqbypass rapl iTCO_wdt snd_timer intel_pmc_bxt iTCO_vendor_support snd ixgbevf virtio_net soundcore i2c_i801 pcspkr libeth_xdp net_failover i2c_smbus lpc_ich failover libeth virtio_balloon joydev 9p fuse loop zram lz4hc_compress lz4_compress 9pnet_virtio 9pnet netfs ghash_clmulni_intel serio_raw qemu_fw_cfg
> >> > [ 7340.449650] ---[ end trace 0000000000000000 ]---
> >> >
> >> > The issue can be fixed in all in-tree drivers, but we cannot just trust OOT
> >> > drivers to not do this. Therefore, make tailroom a signed int and produce a
> >> > warning when it is negative to prevent such mistakes in the future.
> >> >
> >> > Fixes: bf25146a5595 ("bpf: add frags support to the bpf_xdp_adjust_tail() API")
> >> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> >> > ---
> >> >  net/core/filter.c | 3 ++-
> >> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/net/core/filter.c b/net/core/filter.c
> >> > index 616e0520a0bb..9715d957e3c5 100644
> >> > --- a/net/core/filter.c
> >> > +++ b/net/core/filter.c
> >> > @@ -4149,12 +4149,13 @@ static int bpf_xdp_frags_increase_tail(struct xdp_buff *xdp, int offset)
> >> >  	struct skb_shared_info *sinfo = xdp_get_shared_info_from_buff(xdp);
> >> >  	skb_frag_t *frag = &sinfo->frags[sinfo->nr_frags - 1];
> >> >  	struct xdp_rxq_info *rxq = xdp->rxq;
> >> > -	unsigned int tailroom;
> >> > +	int tailroom;
> >> >  
> >> >  	if (!rxq->frag_size || rxq->frag_size > xdp->frame_sz)
> >> >  		return -EOPNOTSUPP;
> >> >  
> >> >  	tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> >> > +	WARN_ON_ONCE(tailroom < 0);
> >> >  	if (unlikely(offset > tailroom))
> >> >  		return -EINVAL;
> >> >  
> >> 
> >> Why can't we do both? I.e., WARN_ON_ONCE() *and* return -EINVAL?
> >> 
> >> -Toke
> >> 
> >
> > It would be redundant, offset is always >= 0 here, so with tailroom now being a 
> > signed int, offset is always bigger and -EINVAL is returned.
> 
> Oh, I see. OK, may be worth calling out; I read this paragraph in your
> commit message to mean "we don't bother returning EINVAL in this case,
> we just warn":

Worth changing 'could' to 'are supposed to', if there will be v2.

> 
> > > We could return -EINVAL and be done with it in such case, but due to
> > > tailroom being stored as an unsigned int, it is reported to be somewhere
> > > near UINT_MAX, resulting in a tail being grown, even if the requested
> > > offset is too much (it is around 2K in the abovementioned test). This later
> > > leads to all kinds of unspecific calltraces.
> 
> -Toke
> 
