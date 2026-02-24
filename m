Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE9RGDndnWmuSQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:17:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F7A18A6C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:17:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57BF740BAB;
	Tue, 24 Feb 2026 17:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLSmMIltgiI9; Tue, 24 Feb 2026 17:17:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB82540BAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771953462;
	bh=eiIS/dD7PnEaeGWHtIYF8foqWUPDGsGaY51ZMdzmPuc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RBZct68VqSdElXsEhxTlzZ9sFwKcI4FaglJITSChIyA0LhMaqdItLv1cRGjQ1dLCO
	 9P+MoqN2lLDU+8lxTDgl22fsTwlU3CluzmsqwxJ4WnkOCiDve+3QpbxML2jj7R30fx
	 1fHG6pfED0n7/Lmy/VxhGpLgt9pYVbMnLp1a8EaZTnWJrs29z7n41rclbhDHfICWWj
	 HwNWaJAwx6a9BVIhFttSRoORv84xa8yBruhB1s5+WszrJJYWfGjO70OC5XJu7R93JH
	 7S98P9vyxc8Dwz0Pzttb2x9mbsQ1UKjkWKCf5/RdASe3GHpOCUMXR/zZPj1julKUnF
	 ZFz2M2kDfqJrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB82540BAC;
	Tue, 24 Feb 2026 17:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 603D41B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45E5640B16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:17:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HrHCeV3_DZ9A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:17:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DCBB40AF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DCBB40AF8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DCBB40AF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:17:38 +0000 (UTC)
X-CSE-ConnectionGUID: wrXQhKGjS8uS6OmKiXRSsA==
X-CSE-MsgGUID: LimDkrIDSnCV4rBEqdDyKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90555691"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="90555691"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:17:37 -0800
X-CSE-ConnectionGUID: KUQhpJgNSNioB+M26gmFtg==
X-CSE-MsgGUID: InMKdIvkSjGLdt4+SCnSYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="246535344"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:17:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:17:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 09:17:37 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:17:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjgLSVo1BkmGfwa4XHgdARBQdr5aHVn+Inq939IpZEHmPC4VtmRQ8fYHDXO07i99ljPSa7CO6icKplWSWbylqIJpiHo4OYA0oK8aEmvvRq2IjzhceD4fdlAQmUws1Y2xEhd2/Br7Mxtc3sIsktUWGVPxgY7hX+euHkE+80Ok8jqkY0fX9N3+7lnHJ0tE+pny9o7PPJ3gs0ENHBrbw6WmTF9F3hUWxxfjHMv6Bz50l6SuSa9dEwFGu7a5uugXEqpXc/S8ByXTf1SHxZgWyIgA9Gj9hA5u6cpTE7IAxPS8LcLxusGAVs9gXsvdrHwQ0zp6JMZJsIo417VtCaHs9ZmgMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiIS/dD7PnEaeGWHtIYF8foqWUPDGsGaY51ZMdzmPuc=;
 b=f+utzj5CeUpixJs8pFswZiGFHnN3HC70hBLf42VPDDYWQfX2T3a2hMVQqWkAsO1QM6wkvf06Gk/3cqakZfS2z/ToAOvJDrMKl97JaKHJfRlIf2kzS553+rflNxZUPQUk0aVFrtv84VLjto2bzE2aobANgiHGhMczESHmaJTOU1s1bu1NChHufGpLxgeYQS/MsyAUk4joPwsSBV7zkteAnxC/cfbLaQQ2TEBIseaxz4W2lqHPsrcOHQ6LVw4HdUiJpupTVVUvtaH/D42VHi1JTtPi5IcP/b7bRSxaF10nipd14gQPKQhIbvZndBmcM0QsJTj1cX+NV7XMwCU7Za4DUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM3PPFE9E88246B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 24 Feb
 2026 17:17:35 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 17:17:35 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "R, Bharath" <bharath.r@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to
 create fill queues without NAPI
Thread-Index: AQHcV8kP49pzEuX4dEu1PEFOsVZfGrWSC62AgACnY0A=
Date: Tue, 24 Feb 2026 17:17:35 +0000
Message-ID: <SJ1PR11MB6297DB1A377FEFF3225909FB9B74A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-5-larysa.zaremba@intel.com>
 <PH8PR11MB7965444642E9C1EF54CBE674F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
In-Reply-To: <PH8PR11MB7965444642E9C1EF54CBE674F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM3PPFE9E88246B:EE_
x-ms-office365-filtering-correlation-id: 1727c8b9-14c4-4904-4839-08de73c89a30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aTyjeKSqObtOaYKmnXq5+XmyCMmM6CWqBvqtXFVjCjZP1JqAKtiFOIUKU/I7?=
 =?us-ascii?Q?1Gj1KowzVJNgwSu0krYBloIxD12CBISS37pB2y0Yu4dNFH3y/ryXyiBfrddb?=
 =?us-ascii?Q?Kk2AiCrkzyKIbXfRJwz83Ct4utmajZxLEZPds7c9ckdmQtC7LurbtELPSQba?=
 =?us-ascii?Q?zZlj7ByFwpN42D9STjcjMPMywuHSRmQ3aSmIO3pGs0vtPH8PsHQZB7orj0AZ?=
 =?us-ascii?Q?Yl2Zh1Jco7b3x9BUmf/hdc2mpEgFDSxSQ/sRM/EOxyZ1VaSCqihqA8KKwAHW?=
 =?us-ascii?Q?ORQ6TeOGrsD+OfTOKrmz7RRfeK8sN843btSt6CDOWfeWIdsUjfVIHztVBA57?=
 =?us-ascii?Q?hxwx3oCyKOubWVnbdeDiZzOmLsbvw+SRfM1OwNI30XC3+K5khyTs20wOSGHe?=
 =?us-ascii?Q?DSCCxwBOPfNjTlCGIyVn5/7z0QOGOthVctbHNvru6lmASRE1pFIlQElaDqBe?=
 =?us-ascii?Q?nEvDX3W6bX/45l+4JNPPxFZZcthQ7083wuar7VozC/POqVMIwzQBowEStkux?=
 =?us-ascii?Q?ySt7GRtGjY+mN/9c7jKyhscn7jY8+CMIpS5h47TIjRxdnt7uU7PrVWYO3QZ2?=
 =?us-ascii?Q?l7TCM8z/6L/PswFWuuDmGIHa2OzNCFWQ/urJF5k/DQWHx9VuOk7Ntcv1QUGD?=
 =?us-ascii?Q?8u5nf6E8RovHvCcmVqj39gz/yZDiP0qADo/iKnV5mvkbEnbceGY7utd+UPXk?=
 =?us-ascii?Q?jn2DGjyDVOiPVq5db41IrTl49iXaQ1Z9pYfBEHUa8A4Z56JbbbIKO+5p8cJf?=
 =?us-ascii?Q?bUVRx9fxqH8y15i22wvN60ZBwp0t/Jurtj2izXNQNlUz9iLCmHBkjoNwVy6I?=
 =?us-ascii?Q?otL2i6uS8NUHDay71Oxj9vVVLt3i//DLmR5VptrlklAYB1SUZtaO5slBSRbX?=
 =?us-ascii?Q?9spaG/UZyC/74uyUHb+xss0uL+mNGXcb8nZNWGafcr2tdpg5oWiPdhS++AIR?=
 =?us-ascii?Q?De0jh+q6cB7OfbEJNDTv4Io3qaTHr4zc3ZWIsGWNQOLtwimV1YKiSHLSE4Tj?=
 =?us-ascii?Q?Ap0+r4rNmmRwY8v2LHi6R6h4RlAsvxWOe1iq7jPBHqpmuGF2b03lzmSlyuDL?=
 =?us-ascii?Q?KkPgU+sil8QdiXLwlQUf9PIqg6EMiit1qGm7H4Maij5PEEooSQiP4YBY/QYY?=
 =?us-ascii?Q?CTfRbKYVnqgWm1K1GKAfSFl0UdGIR8Pzoug0ldv3EXnqHN6KB32LQPSktAL4?=
 =?us-ascii?Q?YrKj1epLTpIxJ6oNdMJARML9XOiD/fmd42tWy3FrQ2p/2tC2DWs9lrgfSDuB?=
 =?us-ascii?Q?0y407qW4pDqQlVzqjECFwc56zQRjLxG7qCR7d3VMomenekdX0U0c8nDvqx2q?=
 =?us-ascii?Q?zEkCxSTJCwhzF5TbhTjIvNzx7KZJga09P5CK0exHUqlNN3qQA2MzpYl7D/yy?=
 =?us-ascii?Q?uFlpL7in73qj1FB/7p/teGgXo39b6fdq2AbMGtWKQpOJnGzdZDgUwf2d8Rja?=
 =?us-ascii?Q?FFEsSAOIxKC4zev94JJnEVXZ2fChY+35w8l8QYLahm/ta9A5EZh+KCmmYpr+?=
 =?us-ascii?Q?kiIfdaSIiN7LyH2SS2n4un38Xfcfc/pmoJagr0r66wVw6ZOSrtXnDZqFlHIk?=
 =?us-ascii?Q?SlCYBwW1pmhWcJMjHILHPSeomdIY4VC3cZJvAdyy3ejZ/spMirONcsx5NH7C?=
 =?us-ascii?Q?rCLEHT1EMTQg4FLrhHV8Ftc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i4Pn+IrmJr2vOaeQufz0Q+GafJppHR36FnRUDplAjSutDzDJmqP6wVofFSWL?=
 =?us-ascii?Q?NPGX8DPJaacOW8pMlibDFeDQ6YInlwxVh+9MIIJ63+BYZWkwXu2QDXjBgBTO?=
 =?us-ascii?Q?d5tt4U/RMQeCsCJ24mGfedaOrx9x9+8fOp2uPBm7zVN55Ab88OpO3kuiar8+?=
 =?us-ascii?Q?j/TBj6V4sE5bLgDXG+dIUmgHl7eIR3ecUHVIvnYI2rqJAq9T27tiImcLL2jx?=
 =?us-ascii?Q?TdgVIX+VKzhjl7s4d4xBD1LXtjAq85Oxxo/ObdYa/627o9MKS9d5lWHMyRpN?=
 =?us-ascii?Q?w1nSje5c0LS5ZK4D7bG8NFEQFRHZ0TFfPDcaa9i+y+Im0yn1QAtHdQUz3GPg?=
 =?us-ascii?Q?LVKAMp6B6D/Wa+5gwXcj8lfH92BpgVaGHQSpiuBJWbmMP23R/61N26+EXCVc?=
 =?us-ascii?Q?LPVcvzJ08WpfHDRXibT7MtS4Tr6o7UBANWamMZA/xOCBiMW/XC9vNkRED2Ii?=
 =?us-ascii?Q?85BcRqjUoBGIgYOfGBfQt+UJAyAva9YXSjg2zbN8yb844r5olOkEdm204ohz?=
 =?us-ascii?Q?/xLaBAcMbwIIhu4XkIte9TTkf+mtnlZo1JD06aYLZvi0oVvmsoZnkm4GO1O2?=
 =?us-ascii?Q?gRbtKW5MqE/Ns7G50l1BECAKgXKD9f/0+Cmu2vA4qpB8howA43SEdqTMXfgJ?=
 =?us-ascii?Q?GA71DmZSImXzlMT+PuGgCIOG48jKYsagIYMNluaupBS+5B1WhIdrOZzxWxE8?=
 =?us-ascii?Q?vOQQdlPsBhwgP9c8NBgzFtCOd8b6YXpzwPks3nQTSxjvVaVgK31ebzRf3WdE?=
 =?us-ascii?Q?LdQkqpRI2exX3xhsVzEQTM4TvcSHRAxIVitrTSwKQBxUWiU2E5Vq/dMUp51f?=
 =?us-ascii?Q?a2NBmpn/EfeWXeisVZo4M7hTOQ0uslhG1hXmDDDmG017vugGyo7xfrmjeO8Y?=
 =?us-ascii?Q?26L4D6fxIhMhQYgRCRoeyBy6jfrX7bMUQqCBBHTa5Oe+ZJ30gheABA+ueJar?=
 =?us-ascii?Q?xreSZFrOr7dcsERUMDOISTC69R+tpqoBrZA6Xdx2ecJrXd6BP69ePIC1xxm5?=
 =?us-ascii?Q?CJgmiqR5zxkk+vfyxzBADGiigC++18E/nfR9+MzzGyXiW+PSR/JEGst9GE+6?=
 =?us-ascii?Q?8OWxLaHN/7GJQGm7EeYvYj/QVZVrBkKlJqnJPX8YSM12ucmnASflL2s77vKS?=
 =?us-ascii?Q?AwglT+lXmAcOsYJJC47RBkDJDJTyXIOfaKp2dJoxkMbMl9TdvSWOV5uWlqLj?=
 =?us-ascii?Q?ZtoS7vEwCAK5dqnG4poOLOoL4Pb57pMmBEmsQATe7DTZynJg+o1pGbSxZjtH?=
 =?us-ascii?Q?gdscqF70v3pHteKg9LjXLAYQrpalNU5RArc/mdVKEv6lVE6NywI1mu8q+uqp?=
 =?us-ascii?Q?F9KG3mqhII1M9nWJhttAwOwCC85m0uw85f47+rtw8ID3tQW5jfpquhuYwxhQ?=
 =?us-ascii?Q?oNAcdpMpu1Q709x8Rr+fcIDFbWrSPOywg308VOXITPX5DYvPLRWZzzqipLtb?=
 =?us-ascii?Q?p7mGDGq+kT+xcIC+Hxf4PZ91U6pZOEHFJBUs4rqPp2CjWGbN0b3PrtbSzR1Y?=
 =?us-ascii?Q?AQt8cQ4ABEBCGaKFggYcZqx1SzBX9ORUlBHEppt5Q/OqEX2hr16YhErUq6rD?=
 =?us-ascii?Q?zldIsomz5n+WKQnDI0HJHbPyk1EAEUcuSl6cDX3sSFWxIeRVDgE/nU96/00w?=
 =?us-ascii?Q?NWR8RWYpsiJxNhLJpnRA1oaiu4HJUxmqaIDKlrh+e0+S7XR3a31N2hFuSt7s?=
 =?us-ascii?Q?xk5EJklkhlHbRc+1DaWIi6J9F0b1g94bSC/aekexcMzrIXtmeUoHy081DLqs?=
 =?us-ascii?Q?b5WAat8/8Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1727c8b9-14c4-4904-4839-08de73c89a30
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 17:17:35.0186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BgRub07ovRodS2NdvlK3KetwSzfq2KhVHv+3Ec8r37BTCK3CjcckBxVckK2a7AHH7sTtkcstAXMjAvb8hcjVFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE9E88246B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771953458; x=1803489458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oGRvKffUJvxbTeegC0N7N2tEbPLCLDspVMzFHdKI9Zg=;
 b=Au87kIOREFb3S9cA0KzxKRAWfNjQ+7m2SW9oo6sneU3jrmHWhtVdQlrh
 Mp5+raQB5Fn7uzsKxidq173Q3V8s33+i9bk2Z8whmnhEPKXJ5R0vfNFmK
 toaA7w3u+G4a+PS4JX4kfYgPbJ2b8Mw20KnrPsm3HnolrTkNCX7BfwNnh
 RERUyeQb3uEHL/JbHdRiw2kLvTRdKtaGDjJB0ULTB/Ih1Z8tf0ID7hxR3
 C7x34f5QO3K6UPoAuVlPCeLxPTjh8J10A66oQtH3iOSWzAR8GBiuEKKWa
 d7srZxg23JzPGZrHjY/8mXIMNMg76jvMzegIXbhtRv8itkdq4i1NYoVYF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Au87kIOR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to
 create fill queues without NAPI
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bharath.r@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: A1F7A18A6C1
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of R=
,
> Bharath
> Sent: Monday, February 23, 2026 11:17 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to=
 create
> fill queues without NAPI
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Larysa Zaremba
> > Sent: 17 November 2025 19:19
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > <jayaprakash.shanmugam@intel.com>;
> > Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> > <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo
> > Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> Jonathan
> > Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to
> > create fill queues without NAPI
> >
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> >
> > Control queues can utilize libeth_rx fill queues, despite working
> > outside of NAPI context. The only problem is standard fill queues
> > requiring NAPI that provides them with the device pointer.
> >
> > Introduce a way to provide the device directly without using NAPI.
> >
> > Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/libeth/rx.c | 9 +++++----
> >  include/net/libeth/rx.h                | 4 +++-
> >  2 files changed, 8 insertions(+), 5 deletions(-)
> >
>=20
> Tested-by: Bharath R <Bharath.r@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
