Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD85A9B270
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 17:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7177342D22;
	Thu, 24 Apr 2025 15:34:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2WnP3ERgc11Y; Thu, 24 Apr 2025 15:34:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA07942D23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745508853;
	bh=TKeAMhgQWPG9K/LK8qHzfeyXpMPH6LP+Qrt5U8XJBpk=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VBuAXgqr2/hbVJvlEOuqKuj0mxNwo89bh4HNpRIEVwZw7uVi87fYjP9IEyqqloaVr
	 iGQv9Imlh7f5Au6vjrlTFpSkSfLhxsE92YzbVTmEJgzsWYkHA8D4cVtA/wTMkKQOIJ
	 kOYIC07mUxcuvcZZ4ufXaJtXB4zn70pSHOPNWOkpyF4W6+vRuV8sek9xOaJuBcYDMl
	 16hwvvV6rYJn36TfevtxAg1WxJAOh61+sD6RZcbC0NemUsFukEXlR6q5wvrjHc1WeJ
	 GdqcauQj5we7yx55T/EBU2LPlz8xCmu9WpbpBRS9Mb7ukxtKi656WrSKxDoD9agJBJ
	 ikDX2KuIz0WTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA07942D23;
	Thu, 24 Apr 2025 15:34:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A0D042A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91A5C6FCCA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bmSupTaT4A9M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 15:34:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BF6EC6FCA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF6EC6FCA9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF6EC6FCA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:34:11 +0000 (UTC)
X-CSE-ConnectionGUID: YOZIyy7nTQ6nQ38D+WreVw==
X-CSE-MsgGUID: 4PM3fBswTs2X79VxTZUY2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="34773237"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="34773237"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 08:34:11 -0700
X-CSE-ConnectionGUID: oI885D1cQ6yqWX1aCGkQtQ==
X-CSE-MsgGUID: ccXbu+fmTZ6WaBhyfWiXkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="133611885"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 08:34:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 08:34:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 08:34:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 08:34:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oAdxX9yBlLAkIh/pHpTCYuRKC5sRGfLh8A/4ubTvSvk9EYmDNhi5RtpcI1Sy6R5Q1dmP9cyF8wq6jzhawKHDXspJHyCsLI+AMUulPrG/1EKeDHuOznCea72/0rCjM0WmKn8/M5fBdgAdz/tynu01CFqsGd/ceEF8+U55ssqEPLFUHzSK29Rrlvzy2fp7+ETrOpea7NUEy0uBmPyNuqtNjfiYpxOBK57skQ/8GeF0AqwR9iqTsp0ydLkAd4vO6qOM6GLjvr41WozA2H51/xpjfiqw3HvvgYDbalShp9LNmMb9xr3CzpENe/8+Qf2BCqs2xyXD0OqHgNuGoMQa3coILw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TKeAMhgQWPG9K/LK8qHzfeyXpMPH6LP+Qrt5U8XJBpk=;
 b=wNXxdC1dmCytLGD+HOmzaOr1HBtA71E1xG2O7gmgBRliphpvqtbNE6p7LAX0NgNy7UhAMEZIKat59Ar0SMC1s0qd/NlzmJiPiqZUhkSjBURA6OnOvQxklpqdIErW8dnQKPWuR1HPXuEWrjFVW+5ceXlngXJweub+rSWkImfO5wy3OAEuZUpi6+oVxyLQoifgUadoyBHvVCdt99AIaFf2v4VMDR2OvejuHMPQK+u6OUcZrTigRzIUDuQLRE+W3c6kFe+wPEbb9AUnvIg06r0vET2+uA8KqEA+MJJgjt/kHJqOr0K2CUz0dmPbb4ngK1qHWYJXYrpTYJO/NpoG5y+XGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ2PR11MB8537.namprd11.prod.outlook.com (2603:10b6:a03:56f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.24; Thu, 24 Apr 2025 15:34:06 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.8678.025; Thu, 24 Apr 2025
 15:34:06 +0000
Date: Thu, 24 Apr 2025 17:33:59 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Message-ID: <aApZ55JEtybm32eZ@boxer>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
 <20250415172825.3731091-8-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250415172825.3731091-8-aleksander.lobakin@intel.com>
X-ClientProxiedBy: DU2P250CA0013.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::18) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ2PR11MB8537:EE_
X-MS-Office365-Filtering-Correlation-Id: 08e1754c-b13f-43ab-6d34-08dd834572c0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6sv99BjTBMKiuLYrry/jFgaApPM4TavddrhmaCUO9IU1BB8RXU8PNM7LAv5Y?=
 =?us-ascii?Q?eiUzotXC2Tjn8qLz2p1Bipvds8JSK+v5UzCiR0BHdjZNOD6QJ2KaB+Cs0nb5?=
 =?us-ascii?Q?4X6wbRBGW98wfvcOQtUiywO7D7lRcIAZtgmTKMSGgPQwaLYdRwrBjvW8EmKw?=
 =?us-ascii?Q?gsUkH4sfAwBYL6/hy0Q1wrdN9Q2er+vcWbTzYqBZlnf2Wn8a47YXGSBD1I0T?=
 =?us-ascii?Q?WH+ngGI1IlgKCyq/aa5cIbqB11CdYtco5k3ttmS4JAqBmQvVVX6bb9d42HmN?=
 =?us-ascii?Q?mMmbORmTf9+2929lmv9gi3pR7yyGK2cnUC4HuE9i5sIYJl6X9A6l8RXxkF/2?=
 =?us-ascii?Q?+hKsOHzlkjZqoWOQvmIzVBsPEPYes2yR7TjPB2c6qY1GKbFyaw1UydyzFCpW?=
 =?us-ascii?Q?hxV3Egt+Pr1y3nBJrwYQ/9UrigdhazXfo0YGf3v6r3yFPAoIBwm9vgnbkT6I?=
 =?us-ascii?Q?43OTPNYN2EEo9tqs/rKlCfojTKyfKwqWVQ0aB+8IaL25fHIjwhBAdEYCAZMN?=
 =?us-ascii?Q?1kBo76zWlGuDLe3CS2tV7XcqYZPp2QcDSb67gJAhibldbHmUEKPk9NreDDoU?=
 =?us-ascii?Q?rwwKOF5xHzaBMPRGVQmY+z+SxKMNh6pFzl9UReRyF0ZGgcmpSu6nqE22r+Kx?=
 =?us-ascii?Q?oqnk45yipuxFzPHHurKcXruhpO+tNynxS2aczkEzRZvYIyE7eilYsHagCvfz?=
 =?us-ascii?Q?4zxuQTBQGc/QuJP4FBsnXthOW5UFo6TRxnK0ECcKoAaxi0+p7z7LTU0rMb+C?=
 =?us-ascii?Q?fMMvX/e3AUdS4HJpep7R72cV9wvrFpd4bKvexJc16wKEy9aB58vEbvcSw6Ku?=
 =?us-ascii?Q?uUBKo4Q8rFeesjOrMdcWosebH/GjJ3YZNgSPHa/ZVgOAsTUl0R4ueRP0zJxM?=
 =?us-ascii?Q?FgX34obhWM3NT9OXgowB0AsDQT21cShCzjsf6jFgVTLVG3XXOuP8GSUmduSg?=
 =?us-ascii?Q?bBObsEQrLoVatgNfToxokpysMH7TkloGR+g9qL63RwlD5cLu36CbAZLCXVUO?=
 =?us-ascii?Q?ELvtvpQqYsf6EpsfsKk47KQiXcAGZiVD9hG/+b9nI+uMcC4ISvkRkmUGleCZ?=
 =?us-ascii?Q?1xUEqakcPZ56xQRJ6ICS3tMPOjtdQ3HHWLqbaAGyP/OVyCLlD1+CMDdbGi7r?=
 =?us-ascii?Q?RtwR02UqjQ60zGHL0B8LQumpZXyV/DU+X11KTOnWnC0QUmzfFCTBQwDQMX9H?=
 =?us-ascii?Q?sAwQs2yy9pG9XVqkRkIRzol0sT/X801oB/P2jzWz+8sxhkowUzq+l7VGQp92?=
 =?us-ascii?Q?tUlNi5QGY5XuNl2GcpXRge4QiTxV26BwNJW/LI1t3LkL93Y8y8MXnFeWvbLp?=
 =?us-ascii?Q?VX9+5aBXoQYPz92CINl8iqtcU3eV1ApRff7fDnAX0QsYoiqvKRgFfwi8MQQ7?=
 =?us-ascii?Q?3/J7cCivtP0qxen8DVg5tuk9sUXGeNyBgI1o4p/x+XcndCHPyw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ixBNcUKwDEdtsMz2Q1FdaIwdQUFMqi+0QJtsz3WmcETRUOatez3KeNKXF1RI?=
 =?us-ascii?Q?mmpmnlQg/r681XQgzXBUGSHm8VcSEczcwJtzl5xj265LFNLv1KMsdlJHM9+F?=
 =?us-ascii?Q?HqKqD8ADcqVtL80E2Qg4jbJ2a3S8B/XLKe4MSyZdVacu6gdaFEacHiJjdoxr?=
 =?us-ascii?Q?AJhXcZEGMa7+SBRJ8cfdTaADJbwl9Pz2jdAynCuOkp/5oBvY/y3+hzqAsm6/?=
 =?us-ascii?Q?JQhFlefRrgr84XVvVnN/JojF4bQxnJUch7gQdaWrTlaMaNtWYCZ/MXiya3f/?=
 =?us-ascii?Q?yHURHMr88lSLBH+UfykOFrg3VnBIk+v2HLWCOtrBPp/FW1dUqF+ZPaZb+sjD?=
 =?us-ascii?Q?d0mqMsrsZjRELmO5KiOmBDGIrW3OKH60DF6k20TTT8cr7UirO5dAYixF4YbN?=
 =?us-ascii?Q?2cfs+pt+swengBRW+WT0TN3VEUpNelc927m8xhWhZzwuWu3TAVQy3KoqOTOz?=
 =?us-ascii?Q?ozhv46qjJWdFN2S1lj75Sla5rE9VdTbv6Z6bcQosG5ppie9+NtarRq5Ne+tP?=
 =?us-ascii?Q?DaHk0zZIiNY+E8DvRTic7lbk9djpo3RJwrX7xSbIyjMTqtPbavYV4jBddngC?=
 =?us-ascii?Q?9WwRaF4kpCTx+CJalbETQbBXDrjIyVlbcDnpClTvzHaaAO9I1KJtO58QSfsc?=
 =?us-ascii?Q?2UAvw1chP7BT9tS7eYeUy6mtqUhntP8U1guCbK+U3DkreIk9A9OLN+55M1wh?=
 =?us-ascii?Q?tej2i9cVMdcMsqRqP9cDVVcYv0aOvTHLuoKDl9CxZCEs3cG+M6KtbMpvAvbQ?=
 =?us-ascii?Q?vIlKDtenIuPkB5iU//KOJcU3UJ6oUQ8Oa/P5eOWi3NkivseJmIKxW5FMZi75?=
 =?us-ascii?Q?BbsG8zkt4vUERMhJ3tnM1ZTRC1SA+e4wayrwCXBvjCN3K9/rTHh+nPRxfCmZ?=
 =?us-ascii?Q?KLGkyQa2pzv5MxLmb1Ur/ULEnDtL4CT5BslADdvScZBPpJ8zl7KfjaIo+99u?=
 =?us-ascii?Q?7G4+4YtjiU56rPQVm1uwmKF8mMp6sdPqD/5KsZFPlhg3I4HZ3MThLCEcMlSH?=
 =?us-ascii?Q?DM0X7y1UPNOcJKtaUhB5DGnZI3jlSVymNl9b5QRPZIVk4wcwp03FZ0Qlcjqd?=
 =?us-ascii?Q?XkY3tie5zL78dDMUpex6tjIGumqw2FElcLOOKxUqoeJWWKoVAcqTZoCZRfx3?=
 =?us-ascii?Q?LTC4vwECCpBx0BVr4FVp17DzP/htG7QzCAIsEKTVGywnbxpxeziVhfOWIqKX?=
 =?us-ascii?Q?qw4kzrKAJJwVPHLMARTCPAsEmCswnMmDl8LNFUOHjI+zY2Qkt31/d6WxeiDO?=
 =?us-ascii?Q?TFpO+22X+0wFn8eFm0MOrMhl/tVP/sSS2sIoyu5qskJCJxidjtYg8hHnowcf?=
 =?us-ascii?Q?QGlBJoj7R/QWLl2FVVcZS6D7xRWI9ekWW3giyISd/qDDMpPgwwB3JtlWeHTE?=
 =?us-ascii?Q?zWDBIA/wSwSylBhRpLBYMymnTXXWkrHaFil6zBoRY+PDNSr5/nuH4gL0a1Lk?=
 =?us-ascii?Q?ar7ySQ0PDTqsYj+rTnVQZcMepvT5gsS30bUdyRDK+/Sz5NQQPw7YQyRd/3y2?=
 =?us-ascii?Q?zK1d1S8xw3+lCyItq/6BiWegMDq6hoeTlS0MpoVnzIpyvxgVDbRpWSqbW0hQ?=
 =?us-ascii?Q?1rEktVC0du0E+uT4bDJjfXc2f1g8jUGEYlZJXRVykSAuquSbBKJqcj6SwDS9?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08e1754c-b13f-43ab-6d34-08dd834572c0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 15:34:05.9428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sv10d46DYxXC7eCG7i0TUZQZfOKHt7fHfHEVXMg68teM2iTS7526y3/KVUlbiehxEBDYE+I2qKowXviqzlK9QZoibhgKXMQGqCYR5y2l+bM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8537
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745508851; x=1777044851;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9YSd8j/+pq54i55IwunFmzvHN/1FdebSKC0L/gTkgTE=;
 b=cI2YNBgYRfbPSn+e88dkbvK+we2Eapb+ZNbPBS38fsri4TPfwNp7F9Yo
 OXpIjUlaVbRRhQFeE4Rjo0WRQ6xzTX1KgU1s18PLp2ndsoe6XYs4Gc81p
 23sWd8vPHF4wISc7jmMFAbWkuF9wiMKr5PBhyRcbuGHNbPQf4rEyUxkP9
 /M0thS7gmd8IbPP5ReKeiRuxadaBu2CYWOpEhbPq/lBV0WgeyndwXqaq/
 DhnSbhCZv3oTgnAuKCwoSWHXSvz7NA31iZuR4ClG1tJK8yJtcUfxwfPSt
 BeTRmFMwTV615dzpJoP1nrTtAvX8VwukpKTULs7y8WOfKlJt+9ObsKi5k
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cI2YNBgY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 07/16] libeth: xdp: add XDPSQ
 cleanup timers
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

On Tue, Apr 15, 2025 at 07:28:16PM +0200, Alexander Lobakin wrote:
> When XDP Tx queues are not interrupt-driven but use lazy cleaning,
> i.e. only when there are less than `threshold` free descriptors left,
> we also need cleanup timers to avoid &xdp_buff and &xdp_frame stall
> for too long, especially with Page Pool (it warns every about inflight
> pages every 60 second).
> Let's say we sent 256 frames and don't need to send more, but we clean
> only when the number of pending items >= 384. In that case, those 256
> will stall until 128 more are sent. For this, add simple helpers to
> run a timer which will clean the queue regardless, after 1 second of
> the last send.
> The timer is triggered when finalizing the queue. As long as there is
> regular active traffic, the timer doesn't fire.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
