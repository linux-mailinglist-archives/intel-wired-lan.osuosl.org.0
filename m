Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL1JJ0r/8WmElwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 14:53:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8B3494502
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 14:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 818914224D;
	Wed, 29 Apr 2026 12:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IDhlEaseAo5v; Wed, 29 Apr 2026 12:53:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D030B4224E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777467203;
	bh=KnjBKOOuN+auyUmJPh3yy2NJy8kAv43auy7IVIu6xp4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i8X10rUGDvGxnHvRshwOwYQzMFgWAC3Zjv7kXUsMMpVyRKTg5DM/NI9jzPF4IXFoq
	 lrbSH4AdQpxKQEm2W46vwDZNSZ4kt+VIOIeaowUmXpCezzYqsbL9fJBp/3KPlSJ8eb
	 DdgfVGvt7xRctjOVgZ0Vux8gVM/uokDhwVMvljRnZQWgPXOQ/oeHtGSuITcwzFhPvI
	 /o6Cl8STmPy1NR/9CDXq5M59mnPmReDfbxrCL84wC4hk36EOAYPc2iTidWMNJh8kr+
	 0+UNZ/g10Qb1zX98EKoO0I/aAuOmEm9ZSqvPsFylpdU6MlNLr/cFWRdA3d0qqh+Dug
	 AQpz8wDzyj6QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D030B4224E;
	Wed, 29 Apr 2026 12:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C144E1B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 12:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A769442243
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 12:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TCPn5HuKGi1M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 12:53:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD54A4223E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD54A4223E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD54A4223E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 12:53:20 +0000 (UTC)
X-CSE-ConnectionGUID: Y9tgTnT7TBOqNwJXNhMzAA==
X-CSE-MsgGUID: 9TaFWdzhRiuxltFBl31P9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82000652"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="82000652"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 05:53:20 -0700
X-CSE-ConnectionGUID: UvZiRB94T+qmmdCkHw6kvg==
X-CSE-MsgGUID: xnsaQElWSA6JlHNs2f1EtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="227751568"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 05:53:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 05:53:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 05:53:19 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 05:53:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nd/vCNGogqzEVVd89/R5cF/yfYubfNRo9HWIZ12Vd1+/6tIyYKbcvj5EBxG5oNXbm+uyR9QETnuO1BzPaMKIfzuny3jGsj/LLfSuUk7DJ+qZdAZ4Hc+9jDaCMz0aw/cCf9P1+AixoAfZ3UgZ3Tfa5hCzy9yW7kacVaV/DSFuNi3OZ8Igf0U+wGqN66K0mTB3gYhmgK2CCmLeJrMU16g8HQqsXcO1mUxw5SKo/tNIabrRLg3x3jxlE88XZ+I2La6AUsSVGxf82Duu358v0FxE6RZ7E52xnbHwIRlpOt2RXyrfManfSs4I2bbCOtJR8B0yMQXBjafksQIH5XDSYLy6XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KnjBKOOuN+auyUmJPh3yy2NJy8kAv43auy7IVIu6xp4=;
 b=TUdoZwVBYcw4ap2GayLBpfKvL+dEElsQyNFFPP3erWk8bQqFiIZwEVDWYaR7wNhMIVq8+qgAdktyshIKpghKP0ecFUbaKD/qAqgeBt0byQ+yYLYgrxKHbjUrNDOEM9B+R1dr0ojp/AXPn/7q7iovmd/HpM67YhHwJFX0wO03hOpmHKWdFBJO/hjp4sqISGOqC6+elJ9yNif7CB9lM8qyDxaqAp1tyHE0faZUC93TpNb7PXpuv6iQgA2cI7KsKpOldjI7Qi/UKdQDcGbl7ccZAsJnRCzQJhUaG9kNtuF+xQ0o7+rHV6jaESGWPvJcrF0RMDoLRoET+c+ifi4ZKWlKBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYXPR11MB8754.namprd11.prod.outlook.com (2603:10b6:930:dc::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 12:53:15 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 12:53:15 +0000
Message-ID: <28fa50ea-1296-4cc0-b414-cb128e65b632@intel.com>
Date: Wed, 29 Apr 2026 14:53:09 +0200
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <aleksandr.loktionov@intel.com>,
 <jacob.e.keller@intel.com>, <horms@kernel.org>, <jesse.brandeburg@intel.com>, 
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <stable@vger.kernel.org>
References: <20260429102426.210750-1-jtornosm@redhat.com>
 <20260429102426.210750-4-jtornosm@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260429102426.210750-4-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0202CA0028.eurprd02.prod.outlook.com
 (2603:10a6:803:14::41) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYXPR11MB8754:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c33e018-b700-448a-0b0a-08dea5ee472d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: ZMNUEAHcTFxutWsD3EHMoHGJ+UW+CFuu43/I9OaYrE8F5SvreBho5YdbQFSrCp03vT7KPM4GJjRvom5ycoFvz3pNT2s2425VDGc/KMzAGPHijSNLt4lcKSb84DpdXyYwU1ZA1jopcc4jz/rPR1P5tY5x7/CVhbOtsuszf7nlvo7+Gr1LPVmorgmKntsf8CDTZvhlSijLK3kVMAb75jujO2ykseZA/5FXKAF1B1Wy+RZL/mY9J10/nDTfwK9PH1SyiKcnFvJdMAWGu34bgmOW/8v+GCSbj+oxio+xxoDQ2tz30kXYZejxalpH0aWnGApNQK2yMjeW13NPlQy+cPLYh0h17lXj0MXVZ6gITJIZg4x5Y939lxyQcvczgW+tI9eifoi/LZ44m4gtYgep/WkdbHWMX/JAcLjwZGfiMH+XaGLAwwmge1+9tk5v1/xnQ3dfJl8cfEq9J6l2bFfCJwpxOjAqIRlmcHP/lo1CvePsnUBkmmFUoZ8NU1PeZSPgze/qx2LpSoUp1BnJoUei5EJW9CBF/3quyd97TUUwS6tevXVmgB9RDjTWXsqWMNnnG5thtlPOeHucV9dDH6uSzoj+RLX4ei2+xqioAmGXUb5Z0a7WFRBBtgUUlbGhoOBEnlFhUSd7atXwg5b2Jo4c5ufozqZ7PkUQFzrWmElLFL0EFLB8p2JaK/BiFWUDegcQ8KbTGpCY4aF8ym6AnqLjWW8L9zk+A6Bs0AwCNuvGeSiqihk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmM1emR4NEdJVmZDeXpVTkN1bkJWQXVGamJSMHVMRmRSYVExVzZDYXYvUlNI?=
 =?utf-8?B?OWI1akFsTGRoR1BGVFkvQ1lxWW9EWnJuV09OdlVDUUFGVnlKMDdQMWdhVmNV?=
 =?utf-8?B?c0pDamFEdDR0NGE5Unl4a0xKeE5oaXIvWm9ELysyc2Z1NUhPOEVEazFhNkk5?=
 =?utf-8?B?NUF1aEY0MmJqbmUvdXJhZW43ek4xc1ltaXE5K1gzMGU4OVNNZTZucCthbGpP?=
 =?utf-8?B?TzhaWnNmV241THV1Tk5ZdmZHZEJlYk9qeTJlcTlKNzczby9DM0dHT1lSSmJy?=
 =?utf-8?B?UlUwZ0hsb2hEMkdQZWgyUWY1VSs2UjFOUktKTDhOV25VcEsrdFZjcG1YSG9l?=
 =?utf-8?B?cWgwYjE4N1cwNlVTNHJ1K0V0WHFEOVliSWtMMk9SY2JIK0tKbGV1Tyt5U0xC?=
 =?utf-8?B?Sit2NmQ2RFcvQXV0bm16Sy8wVVJtRFNIZ2NsbXBSYVljV2FlakRPYUIrbkdQ?=
 =?utf-8?B?OU9lUHJGTURKMFRoTFhLa3JjdVlMc3oreFBUWHV2NUdkQVVoVnRkdlU4czBn?=
 =?utf-8?B?SGlpSXkzcDZLMnRuL0E4SFF0NXVWNGJUMnJBOUd1Y1YvbWFEYWwyRHV1Vi94?=
 =?utf-8?B?eTk4K1pFMXRGaWhPY3hDMENodEoxV1RJYlkxN0x4RVJzYTNqUGU3dEFEem1L?=
 =?utf-8?B?N2JDa1IySGJHek5pb0J1TFVRNHV0WWxQNnd1ZXcyK1ZOWjF3MzZMR1ZXaEwy?=
 =?utf-8?B?M3h5ZlNRWnhiTmJZLzhvaGlnV3B1RjIzOGwrcHo5UWhaMXNUTnlMZTBwMzli?=
 =?utf-8?B?NGxUOVF5cFZzaDBFdE5YWllTZnhvQTNVWUl1Nkpnc3JkbUx5dFJBREprOWEz?=
 =?utf-8?B?b3k3dWlEZzF3Nk5ud2x5TVc2NmxXL1dWdTArbTlPWkd5cUwrbHVaZ2VqWGJH?=
 =?utf-8?B?bnJWUFFPZXNpSEhldk5wdFVYOW9mSmkyUUhWUnZ5czVRMFh2eTZyem9UenVN?=
 =?utf-8?B?V3BFZEFWUk93aTNPMUM0RW9VdGtIb05lYzlZZGJVT0U2Q2piaHF0MGJmT1Mr?=
 =?utf-8?B?TC9SalpZSUYyODlQcDRKL2FlQkZuRDNJRmdqL3B2YnBKdER3Y1NZZXJUOFF2?=
 =?utf-8?B?allrWW5PZUhtdWZxK1lTUi81WjgvOTNESW4wRGd2UFB6V2hKR3dwa1VCVkRD?=
 =?utf-8?B?Tk9DcE54OG9kbElQc0FLWDUwNURqa1lpM1BiMy9qdnM3WDExZkFiWU1xS1Vn?=
 =?utf-8?B?bEtxZjF6Yy9uSU50TFBsL2o2dGMyZFk4VVhydnBOODNpZ1dDRXNRU09Temhk?=
 =?utf-8?B?bm9SeEVzU2NVYTR2K0RUSmhPQ1lTM0w5ZC81MVRhUzdxeVBaOFJKRk51V1BB?=
 =?utf-8?B?c0ZoMFFTRU9iTDRTMFBLemZKTFhXc0h5amlMbTdvTUYzYXFvVnhHSEFKWHdu?=
 =?utf-8?B?VVFxcGo4ZWU4SVNLZEZGeG1hTEJvUkhGRm1BR3kxek1PZnV5M0pYYVVuZUdD?=
 =?utf-8?B?ZnhZQlA5Q0dsa29jMWpRbE8rVEJkZzR6RTUxOURTd0RNc2Q4bmtNK3lnWE8x?=
 =?utf-8?B?VWwzbXpaWEdDdXE5OFRMVnlUZWdNci84ZkxvYjllRk1xQlR3d0FpMDYycVVF?=
 =?utf-8?B?c1dmVDFTOGZQbjBzRk5kRnhzUzVRU21iNk04dUNIdWppMlBIT0YxUENycklt?=
 =?utf-8?B?cnFHT2JSc0JkL3dmelFrNGxsRDFyU0QyNFo5TURNYjFRaUlFU1BXc1ZRM0Vz?=
 =?utf-8?B?RGNyMDN5Tm1KYkJWbnNEYXJaclp6WWVCZWRSRWUxN09UV3EvbGhMV1k1a0pK?=
 =?utf-8?B?RHIvTCs0UGtXc3ZuMHVlNXdHSUpZQmlzbEJnMElWYjZvcldtUmVVUmdZTTkx?=
 =?utf-8?B?emVaUjlNbWxwa1FEdTNWVVdXU0xld3lOVWQxWFQ4SmZuOHJkdjV6dFZWeWVl?=
 =?utf-8?B?UjJ0U0FUYXZkSXZ3Y1hJY0lZeUxBVkttWDJUZWI4RlVOQXMvYzR0MWhSTWgr?=
 =?utf-8?B?UllOSlpXc2RQR3lqOVpob3BkZnVYbjdvRGlORWFUNDhySGk5MFhCeVBIdlIr?=
 =?utf-8?B?c09rQWZFSEpESXhrZkN0RHNOUzdKSjB2emJpS2Y2aTZXYkovN2E5cFhGRWJZ?=
 =?utf-8?B?TXNwL1d4SlpTRXFXZ1FqTFFGTlI4VXBjSE9lOHpCNTR3anBLWk1yaUtwSW56?=
 =?utf-8?B?MjVOV2dPRVk0a1N1ZWNUaWdKZStlSXZra2d0OUd1MTlUWE96czdWSWhCdExI?=
 =?utf-8?B?MVplUDVUVUpzZE5RdUZaaUNCL3RCdnNlVGJwVm5HSGlLTEtMNGRxTEgzdWtT?=
 =?utf-8?B?K3ZZTXVVZTYySEJJdFhueHVkaStLbWswelZ4UVd3OVN1TWpvdURPRHZLRExS?=
 =?utf-8?B?YWNEQzFrZ0tVUUZhK09nMjRxbC9GajkrV3JTM3lTek1LbTN4UU9abVJBVkN1?=
 =?utf-8?Q?2XVeuzkjfCMrGcnE=3D?=
X-Exchange-RoutingPolicyChecked: Ko68GY3g2eDpifo2n+LPs63x+6NCfGwrZ2s2NTvnwlucxoULv78SDXqXLbADyz8XOMqrvscMniVqeFPplf2TxtlrrZm3fIvRH/qGGz5Z3ljKWrNvIuJMGWAb48PMGy2R6PxaYIUindVjUKyUNgL9tqn+s9hoQDImzJKYuV3swmA/VpM00s7jGG1TPBUmJ5F3HbIiwQimnpDmCYRy6Sodhq9P+w58Y81k1Egm5Bd+K7XXV0H0YILm6kCRX729yuF2DjZ9eAFTO2BVAIijpzk1FwOyKXjdK43jfvm/02Z+aOoKDERW2FAXwFqcDH11fXFvfK56athtqYJAic4R3GrD8Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c33e018-b700-448a-0b0a-08dea5ee472d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 12:53:15.0161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N39wBBNTKOLqMFKmbYq9DENTMjRtLeU7nEQuqn40wlBMeFQGNuSEFTDgtcJnkQzdDLQ5WK33gXH8iLXWclAt7oR+ZFAnAhwGeqYvuC7pKOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8754
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777467201; x=1809003201;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qa3aZ8rbvlm8dZZk02gZwbHwdHp5BAqayr7YEgtK1ds=;
 b=Lj7Ny5/gWiqbkWwlXkgNF3j+0OvGVlmbCkh3Zvvv2NWvTvxfF5mkP0qD
 cYnkxEh7OlFrpM7Amu+rDiEZzy/jFYpxKwobZQ81rBSW6iXaUCgnrXfMj
 YFK8Rn3Y66kfaeUGEKTWfu80y0faMgxnO4BiKM3fL2WQ0S0kbx5ZV8thE
 O4Oj/iNescvpApwUk6Xnm/pMzYsw4eLGoVtjKQOesYq3horDXaSKsx30Y
 sPJLTG4oOpn70efST/2IbQ+Tr/vq/Q2BWzQ2O8cG0wXOvJrd5s/JpRE3Q
 NgdgLuHUtLEQiePGjYQrAEfBosWxxfyQ0VOoTYr7KkQJDcV2ljLnGpsPf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lj7Ny5/g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Queue-Id: 0B8B3494502
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

On 4/29/26 12:24, Jose Ignacio Tornos Martinez wrote:
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
> operations"), iavf_set_mac() is called with the netdev instance lock
> already held.
> 
> The function queues a MAC address change request via
> iavf_replace_primary_mac() and then waits for completion. However, in
> the current flow, the actual virtchnl message is sent by the watchdog
> task, which also needs to acquire the netdev lock to run. Additionally,
> the adminq_task which processes virtchnl responses also needs the netdev
> lock.
> 
> This creates a deadlock scenario:
> 1. iavf_set_mac() holds netdev lock and waits for MAC change
> 2. Watchdog needs netdev lock to send the request -> blocked
> 3. Even if request is sent, adminq_task needs netdev lock to process
>     PF response -> blocked
> 4. MAC change times out after 2.5 seconds
> 5. iavf_set_mac() returns -EAGAIN
> 
> This particularly affects VFs during bonding setup when multiple VFs are
> enslaved in quick succession.
> 
> Fix by implementing a synchronous MAC change operation similar to the
> approach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset handling
> in callbacks").
> 
> The solution:
> 1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog)
> 2. Poll the admin queue hardware directly for responses
> 3. Process all received messages (including non-MAC messages)
> 4. Return when MAC change completes or times out
> 
> A new generic function iavf_poll_virtchnl_response() is introduced that
> can be reused for any future synchronous virtchnl operations. It takes a
> callback to check completion, allowing flexible condition checking.
> 
> This allows the operation to complete synchronously while holding
> netdev_lock, without relying on watchdog or adminq_task. The function
> can sleep for up to 2.5 seconds polling hardware, but this is acceptable
> since netdev_lock is per-device and only serializes operations on the
> same interface.
> 
> To support this, change iavf_add_ether_addrs() to return an error code
> instead of void, allowing callers to detect failures. Additionally,
> export iavf_mac_add_reject() to enable proper rollback on local failures
> (timeouts, send errors) - PF rejections are already handled automatically
> by iavf_virtchnl_completion().
> 
> Remove vc_waitqueue entirely because iavf_set_mac was the only waiter on
> this waitqueue and after the changes it is not needed.
> 
> Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs operations")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>


thank you very much!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
