Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A36CE7306
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 16:19:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D95C060823;
	Mon, 29 Dec 2025 15:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id op5nbgjstAaw; Mon, 29 Dec 2025 15:19:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2812F60832
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767021587;
	bh=URGT8fqr+5XGik+XH7efmB80NfxrXfEKCzf7+i8kv2I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ixu0xxzKJq3CAJB3Ca3m+vCHpLCYnEESHj00oYbF/kF0++cihOxQ1J9MXHyz3REAW
	 mzAD3RNIiwhbpLyMrJdpWGiLIBNkkagRf6HCPVmtcCPIC0xVepAqauc62vJwi3bKRB
	 9Oo7r7k32/I1Lm8IGBfxw3286X8KuMEbY8jLRqOZWJLCwwkOfdTNBqsjQoreX15go5
	 XARPhQeHz0rKZ1qGLlShz4p9Qnw6fEfWLZZl+/ci0pUVgQ4vfJg+gi4sKyKnfSG8Aq
	 PrJZzloIVGqRF4STao1OkTU0z1ORrl3rYLDJQJblmb6gIskm9CE1V1EZ712h+p/918
	 7I6X6TMSDcLXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2812F60832;
	Mon, 29 Dec 2025 15:19:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 16917D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1E1A40766
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:19:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5CgfpOAZzh7O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 15:19:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 35DE640764
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35DE640764
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35DE640764
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:19:44 +0000 (UTC)
X-CSE-ConnectionGUID: 7k2kJAsYTtaiDIHwSluHfg==
X-CSE-MsgGUID: VO15IKaSScCH1RQKHLYDuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="91285171"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="91285171"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:19:44 -0800
X-CSE-ConnectionGUID: 292N6x8CRMukN+9G3fayvg==
X-CSE-MsgGUID: l85HxJ/oSSq10KcoJU9Zbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="224430749"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:19:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:19:43 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 07:19:43 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:19:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yDGsVNi6XZ7O9wCearqf5a5rIGjG+ccO7IiCYk6rlqjWt2PxnKt8Cqo1GcaNgHJjVUDv+cVBTuz6zUS4ROWHHn+jxsz1MgAzf5LE3JGDc84x1FwYYR4/dRmTaKq7ad7lSmCDVMyWxXNLUDaVbTAQj1AEwo6aAXB85mwbJFJo1gVo5pBpcGboMGjrCqA5OnZuELtdV3FK2fDqyUZYBI8s2FrINVlf7GP/3SEooj9zN2bGn4wHqUVDDKIxIgwg/oGs51Yi2PQRtws20ScmJLxhkVJV1XBEx/g4r9JHlVfmNpJRaqJhtacxDHg9oeZ3BJ/fOg84k/8f5mrnCGi/HziiIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=URGT8fqr+5XGik+XH7efmB80NfxrXfEKCzf7+i8kv2I=;
 b=TXHnMUS8rMfBfpo7KV6956r2UmmOLYrxtpVm4C9uT7wJDgDFkRcPh/GpZX0logbVVzq0ezF3XuLHhFdMdqh2IJVzW4NZAUn+mSfr5UiEF2RaYET8ZkuUYJFx8Mf2HxONHw9xLx+UDS2u2ZnwQvZu0AsR7Ylocr8hnQeP/mtvrHD6Kr55/IDD4GNIJdHFI+baHuRNY1jnV8V4Zz63uC2U0v5TiffnY/nA4Hlsv00OpTZv8kB6kMHd2ns5xPCpsLv/YcldK1XXQ9AJ6jiBm+ZATzpXMDlbIJVjoEK4WGV+CoHsFg1b094XoRm2oCAHSu3hcwj9E8inVMP6UtSkHwch7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA4PR11MB8963.namprd11.prod.outlook.com (2603:10b6:208:55c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 15:19:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 15:19:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Aaron, Ma" <aaron.ma@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 2/2] ice: recap the VSI and QoS info
 after rebuild
Thread-Index: AQHcdWbMdTjEAav1K0mmoZuREVG4x7U4wgGQ
Date: Mon, 29 Dec 2025 15:19:39 +0000
Message-ID: <IA3PR11MB898653652ECD9A017C6F00F3E5BFA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251225062122.736308-1-aaron.ma@canonical.com>
 <20251225062122.736308-2-aaron.ma@canonical.com>
In-Reply-To: <20251225062122.736308-2-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA4PR11MB8963:EE_
x-ms-office365-filtering-correlation-id: 2f257762-6f2a-41a6-5d8c-08de46edaf6b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zI2HiwCyBzsNahsjKC1DJjwprUlThCq8CZdQSUnFSZKdPz5EEPzkYnGw3oH5?=
 =?us-ascii?Q?6LW7eRdJ0Zn0MRKGv3yu/I3gcB5qvx0qEUda+U6RA6TefonUT2bAez60ntA0?=
 =?us-ascii?Q?8G1pykrIuUepy4bjzXSA9Mf4++6jJbWYlNhY0YCDdfC+SlREAFSr94+B5WEx?=
 =?us-ascii?Q?s7q3S3Q4ruTyBftqlQFBm+u8z9tyfqQv+2PxAoOt3y9sfhNN2V6xZ4hHVtNF?=
 =?us-ascii?Q?VBZCkoF/orW2YhIaZvXCnZA6N/mWO7h23faOK4pUXtCvttEw/nYaZVoycSU2?=
 =?us-ascii?Q?bR249ltG0we3gegk7gZ8jzCEeSySXlXiMaQptdvq7sIikGA7tk6ff8RWUJ1R?=
 =?us-ascii?Q?fnoDUdUYb9xcTcxvjFg/ENSl1AywE2YC0/HcgPYC/3e8sSggKReq0n0J/0HL?=
 =?us-ascii?Q?Eb3cN210nqoSOHdhePaYm++jiF3mVusFkxXxcoAw1p+jhzM88k2lFKauR1oX?=
 =?us-ascii?Q?AtqoT3CM6IH1EiCZ40GFeRrTDbfb67qzH7IxkKBSZZXYT/TJ0TdmMqwm+Ady?=
 =?us-ascii?Q?1N+7a5UddrYY5b8D49zdzNCX6sewv9Pgm7LDnWVwJvHJ2AYvoj4T75lScnOV?=
 =?us-ascii?Q?QMCOVWRGwcKMsPQGM0pimtCGurNoOCENqG3AsG1OVQ6vt/xhDqK2FVZhKkS8?=
 =?us-ascii?Q?Bwt9TLqh7YX/3DgL/Fqbsz1ynnV/tkt1hYOCDe7oo7Q8tf4rXdltMcjAUBgs?=
 =?us-ascii?Q?h+Xn/ZeSV4zT6P7t7NB8CfJPHxgAIDGk9lUdFteJVn58Pcue6/fKIW+W8CmM?=
 =?us-ascii?Q?4IXpqhptKM84InAQEdiVrygAOkdMvdP7F7vFqZxoW90RL+6wGjcQJ53C/oRG?=
 =?us-ascii?Q?nZ0AtR5d0sCFW7LOhr3bh+039qLmMYb6Q2R+1jSVNWLliTKD1GY0E2phz3RE?=
 =?us-ascii?Q?4J5j4dC/b/B1fGr33cR0defZcMnK/iKXe54jxBtZ0hiDzx0nYMdxhqNEUFnD?=
 =?us-ascii?Q?70pCHpX83Kc+OzuuQG1LIvpNTVNtgDq2yYX6pdYgy0M8LlJBxsUwPTsV6mas?=
 =?us-ascii?Q?xYOzPglq1VwntlPtqxNHfGWxjfz/LkD39O5nKjc9go8fbaIFYn/ZnRudqBuZ?=
 =?us-ascii?Q?XLbWRl2lL4Rp1ZhLrSUktUkVV1iH7wvztd272eYCC251a0gjdMW/hMzQQDSN?=
 =?us-ascii?Q?XIQ31XMlfEe8kKo6Bx9J6zRDYLmsCM/PgzCfrcSJPxVzCxYcYHUPXVLHDfE7?=
 =?us-ascii?Q?lagzZEVG0RH00ah6mKIB/OdtiBAlxupuJLPOO8xCCRH3PSW+sT742hEzabq0?=
 =?us-ascii?Q?eFrqT1Z9wRa9WJZikDEqEWgAwyRfrjwxDJO5jJvg2uflfUc1OrbhO0XvVIZQ?=
 =?us-ascii?Q?+LbT0bM1UjmG9Z6ByCLkcWsAKDmGPKtve2HeLQqcmglwA5uzDurxaJ4NAgiE?=
 =?us-ascii?Q?wNik/S6Y7LzXED8sr/B7LYlsv6FY04SUkqOIdsP5zxLYzkW7wW+2kJUpdPGa?=
 =?us-ascii?Q?jU/bnyReY2phCY6VTkXUWgzT/LHNLC17e+SQRcwde9m0uw/0y0kHfovUoDgC?=
 =?us-ascii?Q?46ViL4P+KAIqPVgEKcl9x6BlqJ9iyIKGW/tn6MOTmrjdOk3Bsi2XH+wRDw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ASlh1L92a8j9IebrdK6u8BhHq0d2Qg3tLHtiLhaiKsu4LYN9pndqx//s7LAZ?=
 =?us-ascii?Q?o0DMsC5Xxd9h6Hoo7olXn55HUZm8xg8VcP1Ev8PLP4Gn7pQW90wqoWT/RAGe?=
 =?us-ascii?Q?okURGQxLSvWaoX46PkObIOlygQAinvZiEWvQhkS12YgiqnihJcjEmla+Vbnk?=
 =?us-ascii?Q?ddGE5pytgtAOXJSFIpK72n6Apz1rzou25TbEMWWFzYJTQ6GR8SWvpreNUGKD?=
 =?us-ascii?Q?QtKXGtXLuG+fGzqBFAqf5CXDFOHsRyNJRXLARI1niD5HYazzoj//UZI+WHPH?=
 =?us-ascii?Q?0Kf8o+ErBA6ScBrSWTZ5KxFaXa2koc0E2dQYeGHG30oNhVgwXuxUcpf4OcaU?=
 =?us-ascii?Q?/rgjV80ZaASuJPFcnzM514/XzB1tMwIi3wZj4O+X1Ow/IQVt7uo4TircO/0k?=
 =?us-ascii?Q?Gj7ufwI458YlFtqY2074MtDwf5edETekTg2lvdLoSMYdhj7Qkv15CrC0hVWs?=
 =?us-ascii?Q?cyU5XUbUa4nzTIY1TgG/3REaUbfpdP0icllnQLvp2lbCNlkrqHSFog2U0Avq?=
 =?us-ascii?Q?163Iq6bUAcqQGH3viS+UU/gIiz0YLOBhwfj0OaXsnyl7k1lBecGErXn4pkdd?=
 =?us-ascii?Q?oTbXQls1oIaS81IP0l+vEmToP9eMFqEgsz9l2eP9KVGaKhAHo43eJpgrmDHP?=
 =?us-ascii?Q?CkYczAmyoKnLxBGe7x84lSYGVGVgipDtlXeNJh+Mit+GYXTctEjc86VZvlCW?=
 =?us-ascii?Q?d/OW8AVIvmnUVNJuEkeVvWH+3JDGDkAGlyxXFY+K4H4KjzwTibaL+0VpT0ry?=
 =?us-ascii?Q?PJmipzRJba/OjnW3Q21+KyacEMonzFSezxqroK4rkfJpZt1uNK1PCZiCFgog?=
 =?us-ascii?Q?GmRNpX5d2x/hZh1KS5ZZ0vT86CQ2m8egaI9lcu3sZiWgjQ/omUwuiNGdRclB?=
 =?us-ascii?Q?Ls5Ae1RXlgd3tGT++zybjWfmok78uXX7Fb1UzUmPyzdJDQssBV4Zmi4uTv4t?=
 =?us-ascii?Q?lZzWatd+AXZT5XvNh+yJEdGkXS2jBRf3etmy8/kNiQkcsGtw33G5QL9+/ku5?=
 =?us-ascii?Q?oQKE0E4cxboXEZRfRs+gdTmat6jwjYVYBwwc5AJEUS84cIwo3RQDQDVEiabq?=
 =?us-ascii?Q?xLvN6Pe0tQlfj1v2qrut+zwrvGdz0dhrJBYF8erzs8V0mOWXJs3GaWZEvgRO?=
 =?us-ascii?Q?ycNlEPV+0DsbZRTS/iV4AgByB3ldHGv1HMTImJLZjjvWwt2FCFUQwWQkcDZ5?=
 =?us-ascii?Q?smrZUIfLlfiddfsx9WGMJ4cTlZ3HKkrPV75u/57cmDYoZtGCzGBnFhzh2BUV?=
 =?us-ascii?Q?7ujhpTrOYDOz4qz5wjjceXPR7aPLSZSkN57Pi1/yNZOdZNBY8hR3QwJewFzX?=
 =?us-ascii?Q?dPwA/dl6XaBRCh8T9G34jNokIqC05yUShf1DHOzpK2metAcN9CzpQjhNLt+5?=
 =?us-ascii?Q?KRD1BRaIcueWa7kUXRM/UCGDuKmHXHLCdbYmr9vqp0dPz/EdDCvVHjFw3qDI?=
 =?us-ascii?Q?UfoFyl+6LS4mcuLPd0/V0etW7CCVPZJsOQnQ7eFMSn8xG/lzNcsER3Voj1Vg?=
 =?us-ascii?Q?03m/q6E6aGke45kVQRbqSxII2CKmPJ5tzow6dmKf3Md5zA1t15kHrC6vRzoc?=
 =?us-ascii?Q?wG3j2VFFTiJDLaF4s2l/0/s+Zft4Po7fyG47Fam+20C+cu3kbggtjzlviXpL?=
 =?us-ascii?Q?dVgWPdOg08i20BHoEMp0w2e2fGWzWme0bFwcMnPY8YEJ8AARXY9NaTJ2u82S?=
 =?us-ascii?Q?nXG7/jnsBK2SnKRD4mYR3O+6rWvEQWI8mkNqOrsxX8phFV1Xy6GTv2Ia9zUK?=
 =?us-ascii?Q?Nr+bq1i0HafF242G+W+XGszmoQFknSM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f257762-6f2a-41a6-5d8c-08de46edaf6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2025 15:19:39.7135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bSaGJsHne5NGzwqabgcBg/jHRabVI/rIgINmZHcET609jHia+IvX5R2l4fM4dMfluQuf6smnSHEDvYJmE8zwmTjVhGd5zZIMsUkavIRJnQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8963
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767021585; x=1798557585;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wup/Rl5173v/icn4tEbh9KNZJk2cQmuAIUgyh4pQZ7A=;
 b=fdIYy4dIL/UMiwIyO81K9e0fxlkZXG1lcC6PmXBWmNsrDF0X+lzhn8G8
 Ap7bowC4JT+KLtBwZ6sj1oOQJ4429FWanFU9eF2ni69Rxv43YP0i/YCv0
 dm2fdnbofCGr4GbY5pelnvVSC8Jc7aYvl+1BNaJ2SN8Kx+Ix790tuduiy
 sXNdlkiEbxex10wA2VG/pp1ggIu00q28TvHTA0csOZzhLa59pSzXnze99
 ZSeM8IyK766TKJtSXYVV/BxgohrWUTgArzPGci+GYY5WB/7JQBtg9ZzEd
 KmoF6e2kOqcBTWnxoHMAe7B0eaE7jS6EbcEbP96UAr5yho0wTWOE6TCQ8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fdIYy4dI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] ice: recap the VSI and QoS
 info after rebuild
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Aaron Ma via Intel-wired-lan
> Sent: Thursday, December 25, 2025 7:21 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v3 2/2] ice: recap the VSI and QoS
> info after rebuild
>=20
> Fix IRDMA hardware initialization timeout (-110) after resume by
> separating VSI-dependent configuration from RDMA resource allocation,
> ensuring VSI is rebuilt before IRDMA accesses it.
>=20
> After resume from suspend, IRDMA hardware initialization fails:
>   ice: IRDMA hardware initialization FAILED init_state=3D4 status=3D-110
>=20
> Separate RDMA initialization into two phases:
> 1. ice_init_rdma() - Allocate resources only (no VSI/QoS access, no
> plug) 2. ice_rdma_finalize_setup() - Assign VSI/QoS info and plug
> device
>=20
> This allows:
> - ice_init_rdma() to stay in ice_resume() (mirrors ice_deinit_rdma()
>   in ice_suspend()
> - VSI assignment deferred until after ice_vsi_rebuild() completes
> - QoS info updated after ice_dcb_rebuild() completes
> - Device plugged only when control queues, VSI, and DCB are all ready
>=20
> Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on
> ACPI S3 resume")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> V1 -> V2: no changes.
> V2 -> V3:
> - mirrors init_rdma in resume as Tony Nguyen suggested to fix the
> memleak and move ice_plug_aux_dev/ice_unplug_aux_dev out of
> init/deinit rdma.
> - ensure the correct VSI/QoS info is loaded after rebuild.
>=20
>  drivers/net/ethernet/intel/ice/ice.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_idc.c  | 41 +++++++++++++++++-----
> -  drivers/net/ethernet/intel/ice/ice_main.c |  7 +++-
>  3 files changed, 38 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 147aaee192a79..6463c1fea7871 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -989,6 +989,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum
> ice_reset_req reset);  void ice_print_link_msg(struct ice_vsi *vsi,
> bool isup);  int ice_plug_aux_dev(struct ice_pf *pf);  void
> ice_unplug_aux_dev(struct ice_pf *pf);
> +void ice_rdma_finalize_setup(struct ice_pf *pf);
>  int ice_init_rdma(struct ice_pf *pf);
>  void ice_deinit_rdma(struct ice_pf *pf);  bool
> ice_is_wol_supported(struct ice_hw *hw); diff --git
> a/drivers/net/ethernet/intel/ice/ice_idc.c
> b/drivers/net/ethernet/intel/ice/ice_idc.c
> index 420d45c2558b6..b6079a6cb7736 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -360,6 +360,35 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
>  	auxiliary_device_uninit(adev);
>  }
>=20
> +/**
> + * ice_rdma_finalize_setup - Complete RDMA setup after VSI is ready
> + * @pf: ptr to ice_pf
> + *
> + * Sets VSI-dependent information and plugs aux device.
> + * Must be called after ice_init_rdma(), ice_vsi_rebuild(), and
> + * ice_dcb_rebuild() complete.
> + */
> +void ice_rdma_finalize_setup(struct ice_pf *pf) {
> +	struct iidc_rdma_priv_dev_info *privd;
> +
> +	if (!ice_is_rdma_ena(pf) || !pf->cdev_info)
> +		return;
> +
> +	privd =3D pf->cdev_info->iidc_priv;
> +	if (!privd || !pf->vsi[0] || !pf->vsi[0]->netdev)
> +		return;
> +
> +	/* Assign VSI info now that VSI is valid */
> +	privd->netdev =3D pf->vsi[0]->netdev;
> +	privd->vport_id =3D pf->vsi[0]->vsi_num;
> +
> +	/* Update QoS info after DCB has been rebuilt */
> +	ice_setup_dcb_qos_info(pf, &privd->qos_info);
> +
> +	ice_plug_aux_dev(pf);
The ice_plug_aux_dev()  returns error code, but it's  being ignored.
Can you add logging or comment the reason in the code why?
Thank you

> +}
> +
>  /**
>   * ice_init_rdma - initializes PF for RDMA use
>   * @pf: ptr to ice_pf
> @@ -398,23 +427,16 @@ int ice_init_rdma(struct ice_pf *pf)
>  	}
>=20
>  	cdev->iidc_priv =3D privd;
> -	privd->netdev =3D pf->vsi[0]->netdev;
>=20
>  	privd->hw_addr =3D (u8 __iomem *)pf->hw.hw_addr;
>  	cdev->pdev =3D pf->pdev;
> -	privd->vport_id =3D pf->vsi[0]->vsi_num;
>=20
>  	pf->cdev_info->rdma_protocol |=3D IIDC_RDMA_PROTOCOL_ROCEV2;
> -	ice_setup_dcb_qos_info(pf, &privd->qos_info);
> -	ret =3D ice_plug_aux_dev(pf);
> -	if (ret)
> -		goto err_plug_aux_dev;
> +
>  	return 0;
>=20
> -err_plug_aux_dev:
> -	pf->cdev_info->adev =3D NULL;
> -	xa_erase(&ice_aux_id, pf->aux_idx);
>  err_alloc_xa:
> +	xa_erase(&ice_aux_id, pf->aux_idx);
>  	kfree(privd);
>  err_privd_alloc:
>  	kfree(cdev);
> @@ -432,7 +454,6 @@ void ice_deinit_rdma(struct ice_pf *pf)
>  	if (!ice_is_rdma_ena(pf))
>  		return;
>=20
> -	ice_unplug_aux_dev(pf);
>  	xa_erase(&ice_aux_id, pf->aux_idx);
>  	kfree(pf->cdev_info->iidc_priv);
>  	kfree(pf->cdev_info);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 4bb68e7a00f5f..1851e9932cefe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5135,6 +5135,9 @@ int ice_load(struct ice_pf *pf)
>  	if (err)
>  		goto err_init_rdma;
>=20
> +	/* Finalize RDMA: VSI already created, assign info and plug
> device */
> +	ice_rdma_finalize_setup(pf);
> +
>  	ice_service_task_restart(pf);
>=20
>  	clear_bit(ICE_DOWN, pf->state);
> @@ -5166,6 +5169,7 @@ void ice_unload(struct ice_pf *pf)
>=20
>  	devl_assert_locked(priv_to_devlink(pf));
>=20
> +	ice_unplug_aux_dev(pf);
>  	ice_deinit_rdma(pf);
>  	ice_deinit_features(pf);
>  	ice_tc_indir_block_unregister(vsi);
> @@ -5594,6 +5598,7 @@ static int ice_suspend(struct device *dev)
>  	 */
>  	disabled =3D ice_service_task_stop(pf);
>=20
> +	ice_unplug_aux_dev(pf);
>  	ice_deinit_rdma(pf);
>=20
>  	/* Already suspended?, then there is nothing to do */ @@ -
> 7803,7 +7808,7 @@ static void ice_rebuild(struct ice_pf *pf, enum
> ice_reset_req reset_type)
>=20
>  	ice_health_clear(pf);
>=20
> -	ice_plug_aux_dev(pf);
> +	ice_rdma_finalize_setup(pf);
>  	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
>  		ice_lag_rebuild(pf);
>=20
> --
> 2.43.0

