Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGHjNWEjk2kX1wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 15:02:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C603A1445FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 15:02:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 740B08382D;
	Mon, 16 Feb 2026 14:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hQvCwRO_PL9z; Mon, 16 Feb 2026 14:02:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37BDF82EB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771250526;
	bh=ncsH5HpeOw5M1z/os9hkEIYInVwXGDopEEXvi9A7x+0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dcxQvATHtjzdgxauT6QABVCGQC+dFjr39kM4N9A0lKhavHJl3TQ/DavYIzQULaLcF
	 gfKUuR230cfW2AH75t8EIzsG4ObzA497G8Pq5y4v2dIjgAUhJUkwQqZ4jE9xJvT2Fl
	 uXhQr0XANVivG30Ywu+GPN+1jWgijcATtn6aGlhzJRoLgPrkw8l/JpCVTkXljUgvO+
	 cTe2NjKbYA29j0grr7DGXGU2JEaAXUAcvlJrGYfrL7kUOh74YGl8Nfcxvuaz0CWe15
	 xJLObhw1CTyGGWkzW/gIDcqQi4kwFpsD4pIO+0mUC+GrchhBZIgNCQ39CnvPT2jLf0
	 tO+uNn2ULzauA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37BDF82EB5;
	Mon, 16 Feb 2026 14:02:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A986270
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 14:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E388260B83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 14:02:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NwGzlBaXX8YK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 14:02:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EC72160B6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC72160B6E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC72160B6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 14:02:02 +0000 (UTC)
X-CSE-ConnectionGUID: qwKhZ+7iQ4i3pypAlH+ZHQ==
X-CSE-MsgGUID: 1NG6lXyvTkycBZU02wADcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="59898212"
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="59898212"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 06:02:02 -0800
X-CSE-ConnectionGUID: zdTFj0yKQGOfJKTQ6n0gqg==
X-CSE-MsgGUID: zLx4Z7PWQACwVsys4p3tDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="217765016"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 06:02:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 06:02:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 06:02:00 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.22) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 06:02:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CD8tGOTc8tZuZAbJHyRzIO91vK64hpe7S06bODbr9ULjvweW45yscVLdVmZhHEooquCynUHCpPkc32J30AdIHjrYgxb1te7tuxQtMtt6DlsJOv/e5Ti2IIay9IKKlUa1jA3aXz8LqGoEJ2QefO8oV0VMp6tbQesQv+MVqTsjwvpKTjdwyIc2j+qh4kqSY4K30HQ/CK1YiUdjTkodD/zt0p34+Cf3QQb7knq3zMZt7j+8BaBbKRwXiewWQPjAWBmX8t+9oqy4RA1DbEzfVHxoXcdMPzNL6J17ru1tbGyJlSibGk4XIeq+4z1Xc6uURI+c1HLdrSIyjP3SWs16ST2BJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ncsH5HpeOw5M1z/os9hkEIYInVwXGDopEEXvi9A7x+0=;
 b=EIIA6qCdEY5QhWQXFkElK893dalCyTloQF9EdNYTlsmxkMvWCseynlW9YQ0PIuggff+nMT50vOFHmhTQqvU973h7PX9hmQz/TYxqKrEYweCAbZtld6YjN55b2YOgmU3wmrLZfKwT7spKSKKeXoGq4JGD6TwgnWjJTl+z+krfxjLn4dS6MGyI0ICsxElilK4a6Qas2/GoRp5j4m3jm1Htdg9hI1U3KwjdCf76gWuix1yTGvbVdxNWyczxT9LjLLlWEHYo2YpUqgw94UsR0RivtB+foG4GY2xbuMdvsv5NY2+2y2WVSZAd1f+OUV3tPcuQtfCozkPuSL2p1iD8fnVZ0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH0PR11MB4967.namprd11.prod.outlook.com (2603:10b6:510:41::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 14:01:57 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 14:01:57 +0000
Date: Mon, 16 Feb 2026 15:01:45 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
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
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <aZMjSSiZ5cvwi_Ig@soc-5CG4396X81.clients.intel.com>
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-9-larysa.zaremba@intel.com>
 <5b7b1746-54e7-4281-a008-aa3496610ccc@intel.com>
 <de0cc1e0-63d3-486f-a7a3-f1957a4116f0@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <de0cc1e0-63d3-486f-a7a3-f1957a4116f0@intel.com>
X-ClientProxiedBy: BE1P281CA0343.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7d::12) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH0PR11MB4967:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f455715-57ba-43bb-9490-08de6d63f2b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|7416014|376014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0aTLhb/huYCDE78TtRLTcLpCS1Nv2s6KcCCg185M0CyuZgo6b0vNaNpaWbZX?=
 =?us-ascii?Q?ZzmanVBdU2zI6HjUXhhhQwMqjMeSfCUToU4JEleRPg8V8sbH31x/9I+3vgMX?=
 =?us-ascii?Q?vzTyBmarzrj4vRRCPfmhRMVNXDqk6/VqUijPpZj/0oL3zLHkPOU4po/XAtWe?=
 =?us-ascii?Q?cQfpEN+oM1B56QQKf+NguHrdsSCZChC/w1HzzuIX1XVr6kEnS4b6GdhObKDn?=
 =?us-ascii?Q?3bKxlPnlkd5fZ+cOaOhS8WIiDBFEwVJh1abR7a4BMzED9ANNH3Ln87lEiTs5?=
 =?us-ascii?Q?J7XxLrZVn1CF9l4nsqQyu9/FoxzF4NjFiKDOjUKHzIABDk0JzjyL4goycuQ4?=
 =?us-ascii?Q?hGd40n+E7dLyRL9Uj4YsYk7UdyyNYCUkopBEa0K35YjFETOO8bLjMfDFoKEk?=
 =?us-ascii?Q?D78Q293XQQalkcOOslLFy402X9ZQK/PYyH335SXguiFv2kCzQgM9+cN1P9rf?=
 =?us-ascii?Q?dv1Hcov4ZZLeStuH0shPO5lZyKnnmKUCi/+fO8ytRHu2kXwwCkLBESZdyTFi?=
 =?us-ascii?Q?H/Ctb8OnXgCW+BmimQ7cTTaASud4orpKgPWG1skq4LhIDmoNL1Ya2yDbxjl/?=
 =?us-ascii?Q?kk+WC6FCaUhY82Jz9ZkSvuMn5NxDMh6oWlPKhGgEmxWY2Xe8mcZjaRvavwv7?=
 =?us-ascii?Q?N1tK43FJOg2WCec7Ebd7U2jwapu+bW28wQylpAHo8ixxhgUMnVCLj8rgYObK?=
 =?us-ascii?Q?KT6gdihFUiZkqySxIx9R3n6NQHh84AoqNq+m4BAgdu0B+7rZHRPUC/b2tJlA?=
 =?us-ascii?Q?gl4z5y3tLFn/ta+cUXDO3MvtOvIh8kNf9vZaUU5PhGdFmyhW2QpFaiDAxqnm?=
 =?us-ascii?Q?6TUavSRzbP8i7MQyLOfaUSkAYZESm+h0nMUCUFUk2HpbZ99gVBcvoQURwTgH?=
 =?us-ascii?Q?4qI0TpJWMmTtIv1xdKA6qmtga8vKyQVjTPihI+NZLo8Xb/TlR0iJLHKrMitP?=
 =?us-ascii?Q?tnhXUE3QuHRvwqO4BSBWkfCSWsQ1q6iQqrLuLbcsYageykSMZQnSctel9NHo?=
 =?us-ascii?Q?lK7CKecIT3uryFUzITuZsXnR4GCSF8HvtCuJQofGm1W9GAKcBdAnSrKZmx2+?=
 =?us-ascii?Q?GNuU8XgkLK17qcxDQBnQY1MYI3q3Pd5y20FM4IIf3o95/Uodwe+ajzeZeuaK?=
 =?us-ascii?Q?rtslW3D5dkWLfcoZMPmOW+u7ko9bSs3Td0sJt1Ly5SCC1Cy689MiGiXPc6/X?=
 =?us-ascii?Q?D4VTuULYsf/DDkuhVK+ZCbwi1MbIw4llRidmu7yMQ3jNl9zCj0wWyuFHYSib?=
 =?us-ascii?Q?0+IEKHj3LCpQjPH8FXz975voCNNqTk3sV89fZH/jKtE6WvmG9pNiwtp8sJ8q?=
 =?us-ascii?Q?cnOMgUYqY406KLtP9g+Lag2v8Xo4Umwnsd/yt9X9YzLYkq+uNXT6l+u/+5nI?=
 =?us-ascii?Q?lwPmHpntEs9u2MwQpj6ZrtnczryqabhfbVLZ8ohDIG5cF7BmtW7AXWUZdLD7?=
 =?us-ascii?Q?QRN1ukw3bl6W/wCuXquyP/ZkhZsgdo4MQE0PQ/0wNeJQWpo5EQ2rvOGcmhHI?=
 =?us-ascii?Q?iD2n4GLslu55f/SUOEX0VO6ME8OVTyL7KPTft47xTz0zACG2eSYokPP4BF1o?=
 =?us-ascii?Q?XwLstybRQ40NBC6YnGM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(7416014)(376014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jjvQj4IaqrUr976w7y43epU9zX5flZHkgywRKL+zcpQW2NxtHdUmgg7EMj/Z?=
 =?us-ascii?Q?d8GyC2TBLcIYEi8anZzRGL9SH4+Mpb/7HBBI3y3/U0eS+WMC1/Kl0gzcEamo?=
 =?us-ascii?Q?5INHyjD6ZSGdgLislVDktlLy953qOCGQnUDpZDb1WZpZMBxYbKgMbTExrj1Z?=
 =?us-ascii?Q?H/q1NsV1eFbhUmeioT18nM0IYiqluN2O6hgq14X8qCe23JozWBum841DSgji?=
 =?us-ascii?Q?6lRbQ14KaFimqWbHpeu5RQU/RuOAgfJ0Wj239HZ5oM8ClU8xf7zUBaRZkKNQ?=
 =?us-ascii?Q?NnIBaCDVBGgZ9U7YmJCgt4ZUO/Wj4IKnjSMhVzwwRR75tNxPSBq0XHqRair4?=
 =?us-ascii?Q?g2txSpbz7RI3MJCh4VO+rLpcZm+RaffvwRF0N6pJY1y7jFCCxRCUrTov/jth?=
 =?us-ascii?Q?PKBrXigmyxkPkb3HHK49zpI9faEKBx6dTRJ9kel0xJ+LJSt9AaMwjwQiYfUD?=
 =?us-ascii?Q?f4QzJWEGIPi1sYWG+9Enm4pQFdKt9SaXMPwr8pw8NfLcj+1Sq4v8DnCcLKkQ?=
 =?us-ascii?Q?kFTLAQlUvVykimvMuy+kwNiKSzTDTNsqU26AYgpO1H4apJBoXS1f70nkb/LH?=
 =?us-ascii?Q?3psh1yeIwAVbZPXvLfXm7T1/aRoAvuW74eScwmgCwPYxnW9OvSfq4VQJs1F7?=
 =?us-ascii?Q?n57VxCp/RK/yp5KXWy2J/mCEJJf0QrFdS6pF9OCkiARpWSbgfQyZy0V08lH+?=
 =?us-ascii?Q?euCt+0mBvDbXDj5j7s49wlMjaokNbARVzN/75VnGTqqK1PEuYmyGUZPLT4MT?=
 =?us-ascii?Q?BhoEnLKwubo1RRRPbokXPOkuz2q6/0DsDAkSBvxeMl5QKRS41MMoEmnUihH0?=
 =?us-ascii?Q?QkzfIpJi7vJXeTWn8cWSaOODEaRv/X/g2xZGoYAevZcdiFSgQbc2c0GRjXQF?=
 =?us-ascii?Q?1HBJXR3qTElNu9oW+TYr0/HxRirpyjx42WFY+sfHKoK+wbySsUNxayB2S7ez?=
 =?us-ascii?Q?XDFSh9PkMTacQ23jD5gH8kwcEeFbKSuhwplX8KllY4nQLColleBn+8HIIxSo?=
 =?us-ascii?Q?p7Upv90nwutDj3silbN3iwaOxN9ozJXUtKo2GJMWipF5ANNM6mH13OU0PQQR?=
 =?us-ascii?Q?tBljvpa2kxlzSuYW/XYL+KdrmaLgYZsiir2jRrqj9HieBCbukn4drx2KHdq5?=
 =?us-ascii?Q?cKrUr9aivPWhQYEO489FX8agfO7jbxCF3veKiYeX37sAcVerhoKORu0mByie?=
 =?us-ascii?Q?RKDlLhXGriTyAQbEhdjlQdytQFrM7iXv3E+LrMVKJliophl+AcjmAtAXh6GY?=
 =?us-ascii?Q?6spJoz6mt2WWJUTKPm33h6vm8+q93vazwYfPREQJHuJalOFKv8jKhac2Ivej?=
 =?us-ascii?Q?kgSApMI7reyQQvoNPEjvue8cRjVLAlqX98vPWhamgqaf/PXmhC5VSgLLm7JR?=
 =?us-ascii?Q?zVABYEDdhDjJZ5ByImQSaBWhnAYWICXuGHnGdardqPiKRBJkLp7IALrgPwFV?=
 =?us-ascii?Q?EuWjYDV5U96ynpVbihNVI34VMKYa0iZIFZX/qLYxs3HXH0GAh0lasatMxBQH?=
 =?us-ascii?Q?M/K/wIdTBi5fRcPMaUeRH+lI7K+a55QmwSt0CakjiCtQW23zWEbeoZpjCu1+?=
 =?us-ascii?Q?g1KTCIZPw09IetI6p8ueT/vZwRg1Sz5oc4s5pBVjwvEU65NeapJMxOFwKVor?=
 =?us-ascii?Q?FfpUDUBQidP/0L2iRwFQx9tu114RyX2gCdHPDnJLLIE6bHtTUiMcvnkJvzWd?=
 =?us-ascii?Q?U6as0resZlsw94kkyibWnXPS8mNaKaiJHfg9ZzORLvuWwxuM5FXSfPF/ZlVv?=
 =?us-ascii?Q?m3wVt/vpHLvN6OyGWvTyBAQydsDj+7kRWFh0R9Bm846SEiXfq2DVwX/LnqrO?=
X-MS-Exchange-AntiSpam-MessageData-1: EP6BNxaF2zWazRKVmhYm9QHN2F90xydZQrM=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f455715-57ba-43bb-9490-08de6d63f2b2
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 14:01:57.5630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7emy/ZH3Yr7c1ULRd/DAKUfxw8Gi7rB4qYA0PdYvZ0UEpYgYQYHjcbTyOFaKGW7WSSAw+q12uiEqFE3MYB22btqWuV3lOXu1zrCGKVJPyDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4967
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771250523; x=1802786523;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BOPnAFhXp4JEah/V0yJQ2Z2bkcX62zstOYGiQJfwQLM=;
 b=ToiCFV1sIV3cn0kVO44nZHVJc5yOvfEEbP44bs47/3OdSuq8l+b8p0Ul
 ILh+kLBLGmTJV6DIOEg+5Dk2zFVPEbFcSc+UWgeTXZRDkRx6iSeuktX65
 djOi/cDlwdlOpJle/TF2vlzRuZe37snCyk21cL2HOjd0EW9oVvze+w8wZ
 Ri8zFadSmUPj31AH1e42A9SqrbAOUEq4m8VVWQt7YAThhTMQ3wOV+ebYX
 LQEV58mfeUTKIif3cLojhDh/aEDBfQvzEYpJjA+FSxprwmMRm9vRnn4yr
 zIZBoebjImeDIwV9llDeKeL6uZ5oTMsVGidRt2EL+DdDfO92yKsgnf3IL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ToiCFV1s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 7/9] idpf: use truesize as XDP
 RxQ info frag_size
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvid
 ia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[soc-5CG4396X81.clients.intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: C603A1445FD
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 11:48:27AM +0100, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Mon, 16 Feb 2026 11:46:05 +0100
> 
> > From: Zaremba, Larysa <larysa.zaremba@intel.com>
> > Date: Thu, 12 Feb 2026 19:33:22 +0100
> > 
> >> The only user of frag_size field in XDP RxQ info is
> >> bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size instead
> >> of DMA write size. Different assumptions in idpf driver configuration lead
> >> to negative tailroom.
> >>
> >> To make it worse, buffer sizes are not actually uniform in idpf when
> >> splitq is enabled, as there are several buffer queues, so rxq->rx_buf_size
> >> is meaningless in this case.
> >>
> >> Use rxq->truesize as a frag_size for singleq and truesize of the first bufq
> >> in AF_XDP ZC, as there is only one. Disable growinf tail for regular
> >> splitq.
> >>
> >> Fixes: ac8a861f632e ("idpf: prepare structures to support XDP")
> >> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> >> ---
> >>  drivers/net/ethernet/intel/idpf/xdp.c | 8 +++++++-
> >>  drivers/net/ethernet/intel/idpf/xsk.c | 1 +
> >>  2 files changed, 8 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
> >> index 958d16f87424..a152c9a26976 100644
> >> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> >> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> >> @@ -46,11 +46,17 @@ static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
> >>  {
> >>  	const struct idpf_vport *vport = rxq->q_vector->vport;
> >>  	bool split = idpf_is_queue_model_split(vport->rxq_model);
> >> +	u32 frag_size = 0;
> >>  	int err;
> >>  
> >> +	if (idpf_queue_has(XSK, rxq) && split)
> >> +		frag_size = rxq->bufq_sets[0].bufq.truesize;
> >> +	else if (!split)
> >> +		frag_size = rxq->truesize;
> > 
> > XDP and XSk are supported only in mode splitq mode, so you can remove
> > the second condition and change the first one to just `has(XSK)`.
> >

But the function itself handles singleq case. I do not see why frag_size should 
be treated differently.

Not that I am against of removing this logic, it would look more neat without 
these conditions.

> >> +
> >>  	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
> >>  				 rxq->q_vector->napi.napi_id,
> >> -				 rxq->rx_buf_size);
> >> +				 frag_size);
> >>  	if (err)
> >>  		return err;
> >>  
> >> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
> >> index fd2cc43ab43c..febe1073b9b4 100644
> >> --- a/drivers/net/ethernet/intel/idpf/xsk.c
> >> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
> >> @@ -401,6 +401,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
> >>  	bufq->pending = fq.pending;
> >>  	bufq->thresh = fq.thresh;
> >>  	bufq->rx_buf_size = fq.buf_len;
> >> +	bufq->truesize = xsk_pool_get_rx_frag_step(fq.pool);
> 
> Better to do that in libeth_xdp rather than here?
>

Smth like that?

diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index febe1073b9b4..de87455b92d7 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.c
+++ b/drivers/net/ethernet/intel/idpf/xsk.c
@@ -401,7 +401,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
        bufq->pending = fq.pending;
        bufq->thresh = fq.thresh;
        bufq->rx_buf_size = fq.buf_len;
-       bufq->truesize = xsk_pool_get_rx_frag_step(fq.pool);
+       bufq->truesize = fq.chunk_align;

        if (!idpf_xskfq_refill(bufq))
                netdev_err(bufq->pool->netdev,
diff --git a/drivers/net/ethernet/intel/libeth/xsk.c b/drivers/net/ethernet/intel/libeth/xsk.c
index 846e902e31b6..5b298558ecfd 100644
--- a/drivers/net/ethernet/intel/libeth/xsk.c
+++ b/drivers/net/ethernet/intel/libeth/xsk.c
@@ -167,6 +167,7 @@ int libeth_xskfq_create(struct libeth_xskfq *fq)
        fq->pending = fq->count;
        fq->thresh = libeth_xdp_queue_threshold(fq->count);
        fq->buf_len = xsk_pool_get_rx_frame_size(fq->pool);
+       fq->chunk_align = xsk_pool_get_rx_frag_step(fq->pool);

        return 0;
 }
diff --git a/include/net/libeth/xsk.h b/include/net/libeth/xsk.h
index 481a7b28e6f2..a3ea90d30d17 100644
--- a/include/net/libeth/xsk.h
+++ b/include/net/libeth/xsk.h
@@ -598,6 +598,7 @@ __libeth_xsk_run_pass(struct libeth_xdp_buff *xdp,
  * @thresh: threshold below which the queue is refilled
  * @buf_len: HW-writeable length per each buffer
  * @nid: ID of the closest NUMA node with memory
+ * @chunk_align: step between consecutive buffers, 0 if none exists
  */
 struct libeth_xskfq {
        struct_group_tagged(libeth_xskfq_fp, fp,
@@ -615,6 +616,8 @@ struct libeth_xskfq {

        u32                     buf_len;
        int                     nid;
+
+       u32                     chunk_align;
 };

 int libeth_xskfq_create(struct libeth_xskfq *fq);


> >>  
> >>  	if (!idpf_xskfq_refill(bufq))
> >>  		netdev_err(bufq->pool->netdev,
> 
> Thanks,
> Olek
