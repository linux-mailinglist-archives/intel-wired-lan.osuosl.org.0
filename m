Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMt1Lx1QnWkBOgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:15:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 278C9182DBB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F8D982969;
	Tue, 24 Feb 2026 07:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q6UjifyicOqd; Tue, 24 Feb 2026 07:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF35084022
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771917339;
	bh=kzT3w/LI+lAIjHmph4iFtWQtkcMenQVSBkP31oHWpn8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NyGJVwEUQk+Fz9//tr3tQvsHyGlfWcEJVLlz7IY9qGn4HTpe8bEsDWniKwZPi/Ztq
	 6E8EcbOYZB0jj/KCNCjyIqyFscNJFItsKUD/6OMeY6phnyciMw5SNGtotcpMgzhzSv
	 rPeH2VcvtAFx0wx70ZQqaT6ZE2S76/zTN3I5HX5n20qMS9p017JcHzlhVd2OjUYnFu
	 h/DlxkbD8UBK4M61WY2kUdltSAzsuzeccdhDiwgCHERSja7IZeU8jLdCFaxbTZXHMC
	 zYkXPKHLv9XRW/U2zBqA05hQRbzFwAZqpjBk6uJ/pTAmIAQm17WvS/MpTT0D06Q+Dd
	 gD9m7HXn0miJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF35084022;
	Tue, 24 Feb 2026 07:15:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B7EC2249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A932D404B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:15:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x8Ylg26OdcPJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 07:15:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 726A141FFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 726A141FFB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 726A141FFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:15:35 +0000 (UTC)
X-CSE-ConnectionGUID: PM0V3cuORF2SsWd1PqnrCg==
X-CSE-MsgGUID: LSFDW9LFRauWSYmLM3Ut+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72835799"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72835799"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:15:35 -0800
X-CSE-ConnectionGUID: vpLpbA+wTSGJ7wnRFYZVww==
X-CSE-MsgGUID: m6zk52IsSSGEf8+lw1tWDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="238793926"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:15:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:15:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:15:34 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:15:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZJJq6tfTyo8tXg/ZtnlIkaHLdvedpo1keA5j23blOfKTUE8pUs6F42l8wwJepesXlyQ/atz0mFTNZ04ZZoSUap/W24pHJGZDs0bxk5FrKR+JbeXq+cR5dH8fYAnhXzsiGb/kj+rnwQo4hXOy8Q7LdgLWSlCB3YR7S7dP02AfcFdExm6x8za5aOK6Ezoi9dMgElnu16WwNUqDD5AwIy8XSXLdREsn0z6CEN8CWZ38g7ONxgXhp4nVzJ23DHziievrZMHfYanDGVtylyRVzT1B6uAbOImxyfoi271JpjDH7tHjuhhPLstGObknv5IipzOA/jblqtjmY89GVHuLLquVIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kzT3w/LI+lAIjHmph4iFtWQtkcMenQVSBkP31oHWpn8=;
 b=l6SsgqWpTtTZKAJVZbJH4HE8TTDVILsKaUzETGCspq4eJ37xLQOhLYoI2HePju3WB48HkmIN4LYsXEl1SaPlNbER3+5e+LbNeCnHynNY80ePVFTk/J8zx/rMlCXGFQl1yC/PnAV0RGZRwdhLz5tIc4fCt8nO3mEE/7hsr4msFOUZEYUtKHPTKQaduEct3wcfuQRQknk58I4WR3aQJn61sIJPmBFl1hJq5OtW8rxhf45lk2beALLUgP7QLDflb28HSfSAeL+8YmHd1E93TBzltfXT3vtlLZhUrbIwYikUcKM1LqkX/6yLj55jVVMf48V6OkHEFfw37yj8J17Q/ZnvAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7368.namprd11.prod.outlook.com (2603:10b6:208:420::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 07:15:26 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:15:26 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 05/15] libie: add control
 queue support
Thread-Index: AQHcV8kO7vlLhHfFC0OI7Y6ZJ8SOnbWSCrqQ
Date: Tue, 24 Feb 2026 07:15:26 +0000
Message-ID: <PH8PR11MB7965291BE16CC4F1EA7E4E7FF774A@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-6-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-6-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7368:EE_
x-ms-office365-filtering-correlation-id: f09e47de-ee08-4912-f803-08de73747bff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kP5SH59uc5SS+dS5/GHe2+uienzuLLZJBS2CDUzbi9ykXftVSYTyNeMsEY1v?=
 =?us-ascii?Q?m5mLEPBLARUYwWQf/v77U1CX3MCuC4mxm8MOSRReogvF1TiN3xL1yZ9HJg8m?=
 =?us-ascii?Q?SyLd1FhCcwWSyiunZ1kqEcdZH85xIFJbyPtCFSNBHZJxdAoQBoMvTczobga+?=
 =?us-ascii?Q?J6N5fCu++NVBsXHVm3ojdVpIVx3B8xsmMhKOcooG+g16MifB300sxNJZkbTO?=
 =?us-ascii?Q?EqN79ZiOIJJIOLhXjKp+P2vZicWLl78vd7ohmXLnP8JS+apFiGHiFQQCw0Ac?=
 =?us-ascii?Q?gdXI1fLhfL3VXxzaTqCxr5uxfbrvFTQTEg6qgkkVGo1SI4phO4kkAR3MN4nr?=
 =?us-ascii?Q?R2xlkDtKZoyKCPHTJGfWp0SQ54ZnHDeMVlhjqG8QlGXSRgssF5Q4AXxi5v8y?=
 =?us-ascii?Q?b51YHm2hD8lZra4XHG0+Gacc/kE1s6OX8x+YbJ4BVRuj46dtBWbFXUMmMt1P?=
 =?us-ascii?Q?nfAZyxGFKniE3XR5mtMDlvm8hTVcGMuRP2vjfKanvpPXz67J0qf/wYJS0sxX?=
 =?us-ascii?Q?BxGINaUuxRXglqO+1Y2i9+5l26pp0lJ9AB8SE7l4XSrY+XfORHZzQ6rABFBc?=
 =?us-ascii?Q?k2d5qthh29gwh5JhWvQRLQF1ssZYlGHDw4/LOd7YYlCgvlFDY1zyiB1bqcXz?=
 =?us-ascii?Q?QHKdSuYHjYLU7LAlgbbIAMO6PDOmCLyTiWEYTDnX8s/Wlzqo3ZYZlAVKdcBT?=
 =?us-ascii?Q?25+OdWhTwpq5211skKpI7IOn2kYJKskwG4kcn75eNQL1+f9DNOrxTWcNfp5w?=
 =?us-ascii?Q?YQPBNQZA/bFT2U9l1MTpQxtI77uCWCpjvI1CWXryPoOZIslBFbCnJUWPbaAi?=
 =?us-ascii?Q?FIhcDTq40O+BEkPT4eHolnton16Jwxy/ZHCIyHaXpjjT174XYEym0YIGTWN4?=
 =?us-ascii?Q?quxZdnykhaR9XsV6d1TYi2k0iduSohFrjqq3O9/oQfpz5XNz7eesjcBDQeFJ?=
 =?us-ascii?Q?ahLXT+XSvXBZ9Cn9OnEYJnrulyUg8jeIXE+LltNhfQm8IrKilweSu6JMPQk/?=
 =?us-ascii?Q?a/1Wc4s9ipim3YQ6c9SUm6AR74zuiFQBAK76yA3h/89T9mNeEWZp2O0SamTq?=
 =?us-ascii?Q?m9Knis5uIrgmQioBuHTvqMFGMMAK48F9JyMFdi7+gwz0QSna3qJQs9xsmSnE?=
 =?us-ascii?Q?0z+d+qeDrh4aorfS7E3TIyNvjs4X4haLq8vfnTOBd2malAMF8H3LDWRvCaCN?=
 =?us-ascii?Q?qYh0iTwlD/Y2hQbJGTs+hQwH8lodtZyrb6wwhAbvWgt7tqLK23vR09LKBJK+?=
 =?us-ascii?Q?ouoGjDy6nnXS79Meu+xkXS3uLqZCerTXC6z7VCPaJHCG1Zb4A2M+FeVOCMqW?=
 =?us-ascii?Q?lN8gQ/VxQUtm1hgnc9/FuOf/s2YEuEBnf2M4BHPIKMsn9nxN69uLbULFK7Jn?=
 =?us-ascii?Q?nJbzL0waCVxwbljrbaZ7uDGGxijFfX1eOjD7N48e5AbySrCoT/OIQkoZlfOa?=
 =?us-ascii?Q?/xpYt2Sna9OC3kB5oxcY2WhXStF+fdYD3leU6/bDDfWTgk0YfVDoMlJtV1Ko?=
 =?us-ascii?Q?dogr8kfiStpHe6VzG48P8JMaoctKxeh0wexeZfenKCMeK/cjaxaqO94bIrlZ?=
 =?us-ascii?Q?/Z+Gv0bUnQToqDpF27UL0tmo0gq6xNS4jrKI2kFj8FHOZ67zDiMaw8erJMcC?=
 =?us-ascii?Q?zAj4z+gmU8U6h5tIykYRMbM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r2Y5AK9pfup4h2Ps9Fm1S8ZK/dsK3Mb5MqsteGul+KLlqrF720w/7byqfLUg?=
 =?us-ascii?Q?5pzjOV1StFLCiKStBeH2DAMYlnq40Jhq3+4uAHNN/S6LeQVvzQK9GlwLPNmh?=
 =?us-ascii?Q?o2mPpbY7SihSi2N9qr0NdKDwRuCZG8EADUV99VESxtavyy13CXPJOYCZFKdj?=
 =?us-ascii?Q?VNkp+jp4jz/ajteXy0xmrI6lWat2elhbN8ZdUq7pMPSIGt2x/pGS0HIBS+cs?=
 =?us-ascii?Q?Z17M/23e0Jpx36cvCAyUFAHj9w/3VhOfESefr8PLBLhGzvPUuH2Bh5mbpUcq?=
 =?us-ascii?Q?nzS04BA5GD8BPIfhqApIqq01Sn/9ii74MX0R2RcniPQA9jhjFT4fsK0B16Jp?=
 =?us-ascii?Q?tuJJ9s73hj4s7LwIKQgtMhX7V1TmQdRyvyYAuT3HoeDgdEkbSxP1OfFFNIBA?=
 =?us-ascii?Q?fGlkJqC7P3PFZPbxnDgCirqDT6Wtd0IdGfEHXgsKgAb4lVNOXu/VEb/Lt5iD?=
 =?us-ascii?Q?m/Pqmt/ELISQr6DLB1Ki1r6mYC0IWnU+KBTvVLtzZXkp2PTS1Xtacy+DAhsW?=
 =?us-ascii?Q?8/I/NguMWGQMmiX8I1oyHlSq616dcMJPa0wQXJZJXOEYaIg+yCJssKQTbXrb?=
 =?us-ascii?Q?06Jo68/V1CzGDnLUNwXAJGEeVXX2sJWtVl9/3e1S5OOwoJ4vRAhJftVISdtX?=
 =?us-ascii?Q?uOCOdVym45g5R6wWp76BuQaGbhfqw+6B/agewZ/M8IXlVDmNFixDge3649Mc?=
 =?us-ascii?Q?QJ0RGz8YrY1+rz8Qv5geZtUHFzv7GSWZpT/0XhvLJ8cg1isebsFLXX7eePaP?=
 =?us-ascii?Q?qVewUcXg9atKe17+zgMHfVA5Udc5m1pvSepIP8SF3Je9SvjwcdgXNbKUjBwZ?=
 =?us-ascii?Q?cJRGWg5qxgeuEB/45TAVu4E+yenoeYkrQdSvA1ilyIaad81pQio5z6+xJTSF?=
 =?us-ascii?Q?8Gidnq9OqsxcfNAh6H8UGcznTG52nlxI3y5cdKDPcW7KSa43OuKpTBOKx+gO?=
 =?us-ascii?Q?kRIag7pPDod9Rx2FZa1zoM4myc6sOn8oUly/XfAADhXQx2Zd/X+uFNLKf0Sy?=
 =?us-ascii?Q?w5C7gf6tEc4+kxoc6OesBWL+u4TgBi8sywYFH32qzEx+16xDWXjkhzszcnO7?=
 =?us-ascii?Q?pC2xEw9GvE/IcIRf+JTXyMNnjqL+9BszoH7O/rIl+W1nJHEfqIQ52G4sa0Kn?=
 =?us-ascii?Q?kvv+u/UheBc8GMtaBSeHitamt9wbb7igNrmpCUcSdWUm1SuJU1vy4Xbn3rOc?=
 =?us-ascii?Q?PWteLU9xS97rtGSMbC/vMY9tvUSrXqTGU/mxR0pHSyqWEfzXEYOzuRzqGCo7?=
 =?us-ascii?Q?H//wwWI3flWBwlFEaX0i/q+LmPi1RLhXnydUoRzaqb/W3buHWjzX2NWwB2Lu?=
 =?us-ascii?Q?yrmgpjixac0iNE4kUwAEsjCxSJCVEYgKrNWsuTnrX6RcCQOwc10NIu/73fgs?=
 =?us-ascii?Q?9EFSAoXp+T/M6u8ylx+jpjsjyDdRDlUIrGmXyop+h8rpYE8JCKqlS/wxjXeH?=
 =?us-ascii?Q?MmEFSzSlnxQARdOR8tz6rOQap/djnDxBR0+Z/ZdmQ/73VBCtqwtoQNML28UC?=
 =?us-ascii?Q?JdvB3QB4A3nGR2apO7+5hDFOFgVJyHheFSN+dYhx9Dxx2OP/2JFIpej3MzOF?=
 =?us-ascii?Q?JVioqKnSkcyotRXW8wWD4itWu3MoKJMT4mFRA7+36lKpzdRtXYpX6GVbp6an?=
 =?us-ascii?Q?Gz9/HKVyr+DSCDkdNTvENVJdt6j375FR4l7R7w1Eh3GGPai/U0lPpsZ23u6v?=
 =?us-ascii?Q?TUpu2fcDo8iuqObukY2QklxuSoS7hf2+Z5BByC5thhZi14oY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f09e47de-ee08-4912-f803-08de73747bff
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 07:15:26.6858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: erTqJZQidimy4T2Krd6ewIwGwUvS65IbBuJNx1qXnjbsmbme4JYP5Pcf+II6HvTVxu8ziWRdFUGMIwYDkQB05Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7368
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771917336; x=1803453336;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/LYSnZc5gJW7t/4vr74UGAH1OuhTOt/XPWSPbBKuCzo=;
 b=Zpl7P/CD9lk9zxeeuWJIQSl/8Ojp0UiSUyVRFvjuMri8JokeoW/mmXIk
 NtAJNsmGuAimiEFkCU/D81psW+OTQyp+R6fjeyRol/NmHNV73sXLlX50I
 MbjeIt2pHTfjT0F0lemqvuHx4L+j35dLWnRXFK2uXUVnkICiIUVmZwFuD
 A/5dZUu5B04Ui1enrgt9GhbDzv/nb/Kxeo9sc3qMYWFD1omwbCsgjiSsl
 II7q7tVma/RJryD0sysH7th7l2Ch7yY4QUDEmhNVq4ZZjTjjpudy4BmBh
 evhp6xxVOCSE9Vs4wwmPAVB3I96iybpOEjUg40pYx5AL1qwl+2Klg0z8J
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zpl7P/CD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/15] libie: add control
 queue support
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phani.r.burra@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 278C9182DBB
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
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
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> <phani.r.burra@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 05/15] libie: add control q=
ueue
> support
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> Libie will now support control queue setup and configuration APIs. These =
are
> mainly used for mailbox communication between drivers and control plane.
>=20
> Make use of the libeth_rx page pool support for managing controlq buffers=
.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/Kconfig    |   8 +
>  drivers/net/ethernet/intel/libie/Makefile   |   4 +
>  drivers/net/ethernet/intel/libie/controlq.c | 607 ++++++++++++++++++++
>  include/linux/intel/libie/controlq.h        | 249 ++++++++
>  4 files changed, 868 insertions(+)

Tested-by: Bharath R <Bharath.r@intel.com>
