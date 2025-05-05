Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 385C1AA8DAE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 09:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA03A6060B;
	Mon,  5 May 2025 07:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lbVNwh99ySY7; Mon,  5 May 2025 07:57:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A551160845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746431866;
	bh=vFPMWeYjxXGqvHBERxxgBFORkJUFkTDA9Y5Nr51RhpE=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B4Ev1ngVBoeF4C9HMuiFiqpDF00MuwvqA3DUVuGZ71UlGq7mDPMYG5MFNlVGlzkJj
	 FQLeaBIqLyp4pyfAg9ddtKE7Gg6lJDvwMuPaIuOQXVbNFemCN8KnvqxtELkkMSzuA+
	 RzIK1l+6IX49h82a1VqR2vdJaEyiUS645B7rscOiqT89g2/SiJxZNxd8jbjtB4ZEPi
	 Yo3StZdDwVU/Mhj7SuRgLk9eKwwBKzGxTmGoiNKrW9nTLpZ5n7SXo1bdSLTuo831Kk
	 arcQHG8a3U3dmu3t6EpODhQyaHtnqM21DY3QsD2HxJUjx8byXt1Ttq5vrLPKlxk2/j
	 V+PuBHxdBe1Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A551160845;
	Mon,  5 May 2025 07:57:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 35D8CEA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 07:57:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 219E1401C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 07:57:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dPJObeFVXLDv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 07:57:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 464C5401B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 464C5401B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 464C5401B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 07:57:44 +0000 (UTC)
X-CSE-ConnectionGUID: iArjk/WhRfSC6rdx7Bsedg==
X-CSE-MsgGUID: HzQp4hilRZWuQVD67Wqj9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="48037931"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="48037931"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 00:57:43 -0700
X-CSE-ConnectionGUID: HthAnBvITq+//IRZ4hUwGQ==
X-CSE-MsgGUID: knq29cpRSp+cYfbqMEX5aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="166095687"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 00:57:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 5 May 2025 00:57:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 5 May 2025 00:57:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 5 May 2025 00:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G4eiWcx2vsaHa6kKcbhJ6j8wwApAX5PXmCiVrP7aDkGOtgwXxyHg+ZpMyIKHI3bLoepWZqA7t1YN+1tgqG1KyOWegLqkk44KtVup7Egc9HYTuB3SDmebTFEiI9EX70XYvd/VpRFK9oryPk181inbnsFRYvDX0XYVOux6XVCbTFcn6frT8DOlo5JVGdJ5uH45e1se5QigMVQ/nkn2emoJeciftTTD7eqQVqcJFEtRKQhCM+eUBZt9E+d98OL2sMaHUn3l6sydG5CzbPsMAFI+dtw3ETnfHad1W2YaTxv1Wv3QaVNVOpm6j6RlGmIwikZAw4MRRHAcySeMXLJm60ajOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vFPMWeYjxXGqvHBERxxgBFORkJUFkTDA9Y5Nr51RhpE=;
 b=It/tKVwdGjMiBfKj6PIpc5HHG8ESgho1X4alObGZY1MqLwB8Fy6j9aMPRv7RYEcUEdbzj4HvpPr5yFU3oRm54aE9sdzhYbMBtvhAMb61OkshNaTQ6gXXovGBkXQlkn0wZLNsAjwWmFmPdUFYdTO4Yhca+EfQ0N1glKydi9pceHG8D+5+XBgZjEpOb09TvrNSmRIdPMjC/ii/0kgtwB6BRoHDaTXUTHvMREZMbCnCsGXMWeKl2wb5nkYSetOKWFM+x9DPipELGIAxohE7Pyqu3wTJJyU0euSekyNjQcSnzuBEDlN1dJ7qw+suI043YccsOFP2ro+Fel8zevFOUxOy2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Mon, 5 May
 2025 07:56:54 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8699.019; Mon, 5 May 2025
 07:56:54 +0000
Date: Mon, 5 May 2025 09:56:37 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: Jacob Keller <jacob.e.keller@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jonathan
 Corbet" <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Jiri Pirko" <jiri@resnulli.us>, Tatyana Nikolova
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, Michael Ellerman
 <mpe@ellerman.id.au>, "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <aBhvNfWP-Rmec3Ci@soc-5CG4396X81.clients.intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-2-larysa.zaremba@intel.com>
 <20250428161542.GD3339421@horms.kernel.org>
 <10fd9a4b-f071-47eb-bdde-13438218aee9@intel.com>
 <20250430085545.GT3339421@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250430085545.GT3339421@horms.kernel.org>
X-ClientProxiedBy: VI1PR04CA0070.eurprd04.prod.outlook.com
 (2603:10a6:802:2::41) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: 889457f6-d4e6-48d2-00bb-08dd8baa66f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1UORFBkVc2BM/Qn0+3FYMXjzabRijWg63Vas+jYP5AM1RZXqYL1fqvEBhhqB?=
 =?us-ascii?Q?ruUFFRZJgFYZfshdhyiCcBMCv+uLbpem0Zje0CmNeyp8wuTGSri3tEP35b5J?=
 =?us-ascii?Q?npLHTURcSBECn3fV88GlBc5c1ayKq9PufLv5Wf4Bfy8zpppF5UGtqzsHEOKP?=
 =?us-ascii?Q?/2POAV0IyCve8p+sBWmSTdkczHK6vM5mtC9Ey2sS4AD8Oe8RF+Gisa+2UUo6?=
 =?us-ascii?Q?/ubSCJsXLc2bl/nBgWg+tpeyZqJWL9F9aab9QCvSwgHLE1SYLpPEun3+sYMX?=
 =?us-ascii?Q?bqbjLXUGX16WPrYuyWESvNthfb58KB0TBY6Ni9WNiXTFpiHmQV6bQwAWzVRD?=
 =?us-ascii?Q?mUqZjX62BAJ2YLbZKhmwBh5Psh46oE+VJFlaypjk3SWe8ztgNKTJzztaixLy?=
 =?us-ascii?Q?fBi7xK9PKuLAdHjuzoPnOy+3FcNrH0vkjsb9kohJ8sPbKonkH4mvGrM6Qi1B?=
 =?us-ascii?Q?SPUd8amg0/gRVivOuj3tvlcxGub420C1YGvN02GPGPy20kKP5pF4CR3C5aLQ?=
 =?us-ascii?Q?1anMvlYP6/d3lsRotqh+w8ih0NrrPq8EZ8bNXpVkPLGPX7ciGD/YdDjKT7RM?=
 =?us-ascii?Q?KjNYaAsvajlrd2gzyUziYJ/0YBWMzXtSmNRrf8FKotGDMIFn8VXybHh+ZGjL?=
 =?us-ascii?Q?5mBkpjeBWqB5GbPnxc4Pkz5wywg8ERCDEfGOVgKv4d2nkr60XDqX6JaCRJhT?=
 =?us-ascii?Q?UskX5cvkKn7Uyarv7yuUMfBWN5LiG9z2aMB9gTtpn3Q9gVshlhubMSSHlKac?=
 =?us-ascii?Q?0N7tygajqoBzWDBHyI7vkOXoKgWBt4QkbR6JjaKaJKe1vuTixajIWl6GVxwJ?=
 =?us-ascii?Q?qVzjT9wml/HBSLpYQji6oecIQ7N3Ms2nQQrauEeAQ88Ii4+V+L1dBI6YVJDq?=
 =?us-ascii?Q?uwXihVmietelDBjUMcqqtXnO2RUcm/YVNDh3rgz+GqRvLuwT9IiJteXcuhz/?=
 =?us-ascii?Q?7pIC3YaFaP7Vh5cSNx+EQo4AG8WDNce4D+3v6684kScMhOMBqTG5zoVvISvt?=
 =?us-ascii?Q?zPR8tsCwaNemkGcU2u4UpdHbZvTlpJ9Pm2DvRPYv2vq45BM24AL6kyhE2hHL?=
 =?us-ascii?Q?/XmjJ0Br5EP9ne4ERmmbPJ7vEw5zDKnlcXxth0CKJZwKvKXKj6e6qp1/Scrc?=
 =?us-ascii?Q?qE2ZBeHlJo4p/m38CCFeQ9Mz6Hfvj45a7ruDU8msmLZMhRfnX244rRYE2aHn?=
 =?us-ascii?Q?FQa9h4l9UkM959AXcKqlsRNVZo+A41PtJH7GDD+xTtbN7C8nCGHmLGGtUCap?=
 =?us-ascii?Q?Zqw9dB84hRWubSq4S/4wUwoP+VSiX4ZrpLmtK/5zfXtz7jiYqP1R0064aBDM?=
 =?us-ascii?Q?/XGQGqKuNcbB533IvEF36yWdj4q3sHHwhKtIWlUPXU8vdFy4o6sqWp66kw35?=
 =?us-ascii?Q?agc4tLWg3FKVpQGE5mvu5S4WoFgFXQIpDV8bVo8Rr8hCK9k+68f2Bfhq7OHT?=
 =?us-ascii?Q?MgE6EWcusCc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(7416014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Dtv0WoyNmumAnqPzWCX7Jn8Go+gXknfAMfOLxAKH2XfZ7xislOmRRaqeq1ih?=
 =?us-ascii?Q?12xnNOJ7+hdaKxpDRcAeRRHdvW9C7ZMjcEYJVitE6StFeM+2f4Ul0cKcUKs1?=
 =?us-ascii?Q?wOibX7QA9TZTWqcvRWfN0PCiRwXL/nq/+DA3W56UKLN1yUiY10iiYBJcfhQR?=
 =?us-ascii?Q?qx9bYiPSFEzXmuMZdO9ihZNj3xtd+CpzCTVfMzMCfM2FNa0Zj81j/J4klUcj?=
 =?us-ascii?Q?eDwRWSYuwZIImv3PzVR1uFjl1tFcB5xvSZOSkktzVtztZLyVf8mv0Tu8VS2o?=
 =?us-ascii?Q?qECXWLkHX8KGlnIj75KDQoSTQJFj8UWF5h/9D6p4dWW+MqlNccZa+9pOUqGx?=
 =?us-ascii?Q?fKWjAHrs18xqQSRKAWt2RlymGw5XZBB11jLMCPaMHLpqWdrXvq8p410Bmuat?=
 =?us-ascii?Q?0lLZKjMUyFHbvRa8lRf1Ldg9tENBIi9doK7yNUn6p/iOrBSbOzL+50yUsIRg?=
 =?us-ascii?Q?n00MZsLb4oD0jRbAz10tPRHaaYGzf5/tHkVLxyZBbANzWYiX6qrRmJScUXpe?=
 =?us-ascii?Q?jjsJuQyPtVtg6aei8RLs4dOvMO/ReQ/K/f6e9TFWdwIcOiRDX95KiWiKt2Qk?=
 =?us-ascii?Q?GP6pbwEBOX1yG1JOLJd4OjJ2wl+MUakEiw6L1WU/xeWh5XY92i0BfUtQxpwg?=
 =?us-ascii?Q?S1aCLGl8mPwRbQD/eL9utWdU9M0DaI83+c1r+pMz6KzQ39DbjHgcHo9IjkqN?=
 =?us-ascii?Q?cLqg7d4n0CXhKGOmHqYL1wuiN0DGbd6QPsPxdMdPgZGDc6bnwBaiwOhv3u36?=
 =?us-ascii?Q?Cuf/CuI8KiY3sSZ4ldwp8WKsLb8vy4GzRDMdpaaEhtX4nO5/ggVpqxlANm+5?=
 =?us-ascii?Q?ENc4Dr97B4OkVoEg5jx0qMXPjXw10MUkHT3xklMr0hpAclsiBlf4npj3TDTG?=
 =?us-ascii?Q?9A5f8QTFKyXne2v2UAQQ9dqYb+tg5qyNlhhZTre8u/AmB2KJ/M0Mf3FXax8f?=
 =?us-ascii?Q?R4VWOou2dUb2+ApzYcBt8NW/86VofQX0k0bUfzkteAY2amjgrYgrogbhZNu9?=
 =?us-ascii?Q?u+M+gia6WIengnWCyMuxJslOeMpz6nOeB6QaD0Aj+DBstvh/9aySCUqFAA6d?=
 =?us-ascii?Q?gAzb3rt+8m6i8KOPXtRQnYlmxVgtw3yesS43tJgN5MWHTCEa51iXtbFCaBLH?=
 =?us-ascii?Q?sgceILV8FHBGNNARkAM9aQIC+9mvE3Wwf+2B4Oq/YdqubfaHrkeMG/5NRXCY?=
 =?us-ascii?Q?dJbo5aOJcl4nPpnmAr61dhdFMM0NLFuOr4YqbXEWYjZzzQpCEKqagEwPEE+7?=
 =?us-ascii?Q?8mquwRVVmAmKUBOjGuea0UAkcrk4HBgqcFGOnCj3h+5rbcwBD0WTXRff+y72?=
 =?us-ascii?Q?f9e14G4K2Bjw84X+0iMiccbMYjF/MkUr+9LgTzpMHpJLXOrlRLFkZCVhsDEV?=
 =?us-ascii?Q?LKPcyIY84DDsYedFfaMsWSc8cmAlaqff1TrUKO/hwP7Fb9CuXZhyDtaxioRG?=
 =?us-ascii?Q?b1+Q5r1UCg6GxYnRPTTAYql+ZhLQDvD7oIP89eSwMgTEaZNdtxPw2Zau824T?=
 =?us-ascii?Q?Ir+t/o9r2hq3NJLmaTFW/z2Xegj/NtkJRf9pptlxN2PnAGAJdu7vuPKtjJG6?=
 =?us-ascii?Q?4tUugYaBLAwP3Fe47hBR7MNTceZUh59136GfzwffdB011M9T6cE4I9BGFK/+?=
 =?us-ascii?Q?6jwOmz0EaKMTyXX9FjLylbGw00982BrqOFg9i1NS5OZeB5foYnCR4ll8aTtG?=
 =?us-ascii?Q?MX07bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 889457f6-d4e6-48d2-00bb-08dd8baa66f9
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 07:56:54.7329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1giccoXnmlwI3hy78N8tX8fhwRmqr34ZSYKOVYmSQTpseYXZl/0AUsoCW2Bry1ri0YJPgbGDA9K9ofj1vP5+rdxOtLWuQ7+R/xp/YoWWGAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746431864; x=1777967864;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p8ZCDP46p8y36meRVDzHJ/uVmBxZ8JAzsQQ/dA1KoIo=;
 b=WP9nXly6JFLIqfTnfTbAM4bw1Vrh9sKk/3KOvBE5xjdaABZ+LptPbiYP
 dkTYEWyguLcMxU19DATSDWtnaNX6yNXFZHlvZRbj61gF/ylabRkJ2Bin0
 sBzkw9nDmP3FC+TpbU9dRukT/8pamXXPlghgdke2eWR2dPveDLWi9Gg0o
 TwOlR8x3HO2IdD5SnrOFNUmKlnzwI+Vyi3AYgXsbmUOxPIYDjU/p+QNW1
 GIlylw7O0RFj7rshgLQb28U8DL7580BviH8l0c7QIa4pvxMUKvsO5Wmky
 xzpChmLVswjOII4FgUBZIY63fbAWMpq7v1q6z8ha6R6hnpPKjx+xZZDYo
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WP9nXly6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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

On Wed, Apr 30, 2025 at 09:55:45AM +0100, Simon Horman wrote:
> On Tue, Apr 29, 2025 at 11:47:58AM -0700, Jacob Keller wrote:
> > 
> > 
> > On 4/28/2025 9:15 AM, Simon Horman wrote:
> > > On Thu, Apr 24, 2025 at 01:32:24PM +0200, Larysa Zaremba wrote:
> > >> From: Victor Raj <victor.raj@intel.com>
> > >>
> > >> Move intel specific header files into new folder
> > >> include/linux/intel.
> > >>
> > >> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > >> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > >> Signed-off-by: Victor Raj <victor.raj@intel.com>
> > >> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > >> ---
> > >>  MAINTAINERS                                                 | 6 +++---
> > >>  drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
> > >>  drivers/infiniband/hw/irdma/main.h                          | 2 +-
> > >>  drivers/infiniband/hw/irdma/osdep.h                         | 2 +-
> > >>  drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
> > >>  drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
> > >>  drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
> > >>  drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
> > >>  drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 2 +-
> > >>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
> > >>  drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
> > >>  drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
> > >>  drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
> > >>  drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
> > >>  drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
> > >>  drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
> > >>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
> > >>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
> > >>  drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
> > >>  drivers/net/ethernet/intel/ice/ice_idc_int.h                | 2 +-
> > >>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
> > >>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
> > >>  drivers/net/ethernet/intel/ice/ice_virtchnl.h               | 2 +-
> > >>  drivers/net/ethernet/intel/idpf/idpf.h                      | 2 +-
> > >>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
> > >>  drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
> > >>  include/linux/{net => }/intel/i40e_client.h                 | 0
> > >>  include/linux/{net => }/intel/iidc.h                        | 0
> > >>  include/linux/{net => }/intel/libie/rx.h                    | 0
> > >>  include/linux/{avf => intel}/virtchnl.h                     | 0
> > >>  .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h | 0
> > >>  .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h | 0
> > >>  32 files changed, 29 insertions(+), 31 deletions(-)
> > >>  rename include/linux/{net => }/intel/i40e_client.h (100%)
> > >>  rename include/linux/{net => }/intel/iidc.h (100%)
> > >>  rename include/linux/{net => }/intel/libie/rx.h (100%)
> > >>  rename include/linux/{avf => intel}/virtchnl.h (100%)
> > >>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
> > >>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)
> > >>
> > >> diff --git a/MAINTAINERS b/MAINTAINERS
> > >> index 657a67f9031e..2e2a57dfea8f 100644
> > >> --- a/MAINTAINERS
> > >> +++ b/MAINTAINERS
> > >> @@ -11884,8 +11884,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
> > >>  F:	Documentation/networking/device_drivers/ethernet/intel/
> > >>  F:	drivers/net/ethernet/intel/
> > >>  F:	drivers/net/ethernet/intel/*/
> > >> -F:	include/linux/avf/virtchnl.h
> > >> -F:	include/linux/net/intel/iidc.h
> > >> +F:	include/linux/intel/iidc.h
> > >> +F:	include/linux/intel/virtchnl.h
> > > 
> > > I'm not sure that I understand the motivation for moving files out of
> > > include/linux/net, but I guess the answer is that my suggestion, which
> > > would be to move files into include/linux/net, is somehow less good.
> > > 
> > > But if file are moving out of include/linux/net then I think it would
> > > make sense to make a corresponding update to NETWORKING DRIVERS.
> > > 
> > > Also, include/linux/intel, does feel a bit too general. These files
> > > seem to relate to NICs (of some sort of flavour or another). But Intel
> > > does a lot more than make NICs.
> > > 
> > 
> > 'include/linux/net/intel' seems fine to me. I agree with moving
> > virtchnl.h there since it is quite clear that any historical ambitions
> > about AVF being vendor agnostic are long dead, so having it in its own
> > 'non-intel' folder is silly.
> > 
> > Strictly speaking, I think the goal of moving the files is due to the
> > fact that a lot of the core ixd code is not really network layer but
> > instead PCI layer.
> 
> Sure. I was more thinking out loud in my previous email than requesting any
> action. Thanks for filling in my understanding of the situation.
>

Olek suggested this because intel was the only resident in include/linux/net and 
include/linux/intel was vacant.
 
> But could we please consider updating NETWORKING DRIVERS so
> that get_maintainers.pl can help people to CC netdev and it's maintainers
> as appropriate?

I am not sure what kind of update do you mean, include/linux/net directory was 
not under any maintainer. include/linux/mlx5 and include/linux/mlx4 are only 
under vendor maintainers.

For sure I should add include/linux/intel/* under Tony.
Do you think it also should be added to general networking maintainers?
