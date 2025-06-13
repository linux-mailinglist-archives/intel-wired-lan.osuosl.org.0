Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 210F1AD84CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 09:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1E9F40945;
	Fri, 13 Jun 2025 07:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AEdMiplNKyQB; Fri, 13 Jun 2025 07:49:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D274A40958
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749800959;
	bh=MLGfpI1WZFJUjv32vnpZrmw0EHNCcS4DgZ+jfQcRN/Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qiljjgeddnihPiMoB/BDiSBR+6npEtxprt89HIKwfb3wYIdB0zhsk2mj5i3t8PJTZ
	 RcCQk6Wp6QiMW7Ywk3jPXOUWSDg7L1JBlMsqyZwNH8Xpl/Z1bz85/KjMnNjNGsfy3A
	 vTDxg+M3qLN4Y/pL72+Rsqzyqn7DBheRl33R34lADQfE0tmoBSBQH6KDtwElFko+bQ
	 ol/0Y6YzjI4MqPgJsCMdLvqcE0A78Tq95Kp3IX6bTg9Z+0CBh4NIoATpsOoZSKMlHR
	 mzUP8JChXgNi2IUxTmDUc611HGaXgQ8nzVRhdcJ+9tIiN+Q4fbZvffmhvGwN49ouNS
	 J/79pN+eQhvkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D274A40958;
	Fri, 13 Jun 2025 07:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C6D0A1BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B82F7401D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YZXj4wLsjGX2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 07:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C38BB40027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C38BB40027
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C38BB40027
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:49:17 +0000 (UTC)
X-CSE-ConnectionGUID: R+Cua155TgKLEzdk9n9FGw==
X-CSE-MsgGUID: iTGDJzAkQjayLgjXxSn3Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51233891"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51233891"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:49:17 -0700
X-CSE-ConnectionGUID: ZZqYMNWuRdacHfFp9AClBw==
X-CSE-MsgGUID: WNxDd3U5SemzFiNv0YVNEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="178656716"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:49:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:49:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 00:49:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:49:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sTrKGZ8+kO9N+HNN370cYrV4wXzbTYbTfzlaZKRZOXeMawdrDcqamAMWVRclSKgtkywrKfTYuwLCWwLUv+gghsnGojhwfVaFlNzaW7fr5NjSQ3j5PTrq7QdD4c6DGWvkrAZFoMgJ+Ux5JYuGaNLWN7Dz8Xo3uoZEBN45C+6WOYZlJn8cEp6iiZE6uFCWkJMmAfhUR1/t3lyG9chQjp7FTm/bHcQPaoHkBNCUFCtYqPXGVzHswqdBMP4V+ujG/bXIOa66OA8ciHwZGhD/F4k2svnEtyWePpo1p3hYe/C9mH9mN4r/8hfYfYP9LdhyybMQRKsinAQwH0qrSN08+1J0dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MLGfpI1WZFJUjv32vnpZrmw0EHNCcS4DgZ+jfQcRN/Y=;
 b=P3uVDmkxyMWbrv9h56Ltl+QVTeVxE/2tDkM9kMcfM7fK4SxKrs5wAH/Yn1cX+b3ae7NrQ7Gy1YQIcnYl46b3tjEtgXOfsHfRXe3uQP3UYOawRia/mr1kjQCIHViY6tLWTKlUO4lEKqH6qEoIT3D1UMOupc347PslEIjUkch9PdUM43nbcfpA8eXZM1UTc1TEe41Z5M4HEpPxMNFCaJdx39idfcNrHRwBogfDg0yrlJGnQlGvka9UpPDljuo2UwvA7HZ/mFmrXpShgrjsXes8hmYFanh1JXWfKSrNo7m9ZYNBdQFQDaYVY6L/GE1oYmiLtYGRdVnRH68Tmkv6qcThRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF691668CDD.namprd11.prod.outlook.com (2603:10b6:f:fc02::2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 07:49:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 13 Jun 2025
 07:49:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 5/7] eth: i40e: migrate to new
 RXFH callbacks
Thread-Index: AQHb2/7Fdxj3j8ZfS0+DQ9BzOtYaVbQAt0tg
Date: Fri, 13 Jun 2025 07:49:14 +0000
Message-ID: <IA3PR11MB898695B696ABDAE591799545E577A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-6-kuba@kernel.org>
In-Reply-To: <20250613010111.3548291-6-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF691668CDD:EE_
x-ms-office365-filtering-correlation-id: cae8c28e-8ef6-4337-b2e2-08ddaa4ecac6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iKVIgP/P/MXNOQFLZObRBd/KNsUhZ1zp+jFlMG3jLLbe4THZTbEmp3Lcgq85?=
 =?us-ascii?Q?eVC0339bTo9uuZIoqXnZ6gy94+a6I+//bCPQdAGLRqImV4W2rhT5xIy2n4sw?=
 =?us-ascii?Q?RnIs71OO1u5Bot4ytpACM8ufCnzjPGiy+T2QGsjKIDR+KmMOgGhPrlxvVfXy?=
 =?us-ascii?Q?+5JRU/ygtE7SlQMWyYguPBWPKYF+xaCt0BmlQBwiwqZq7cRumKGanfDf1dqb?=
 =?us-ascii?Q?vdMatnMn8IEhHgN5yFKyHfo2oTzPehB9ZJxzuvcME1hwk2/qo4Tejk9Skvd0?=
 =?us-ascii?Q?yfTN1ISlGv29kQEeQkqtCzGe4VAJl1YfZED0kX+bvbIfSNoVc8jSKdJEAyHF?=
 =?us-ascii?Q?gPloF3Ihcgm7GBgUgvIVYp+yQpkjBXL0JSS75z6PQqbttAlF+uN2Q4BLA+z+?=
 =?us-ascii?Q?QR/vhVHYbDdANyo2SfYuzBucG/K3g3KdGW1tEjvb/5JlV+4yUkaF9es2xUJ4?=
 =?us-ascii?Q?lPaxLa0zW8wny3CURXomMj+NarRjckwEs5iIxV5XTxNJCKJyhyQlpSH8Yse9?=
 =?us-ascii?Q?+SU3PM8R75gVGaTbQMrBhQW8GmOtBu9TbfuEjSg/iokFbWVskwyFFLIhZHQa?=
 =?us-ascii?Q?61zx+x8YoFTIlWvI5OXsqxrlj1PX4vMiVZzXFt/kVbpp+h/Oo4l9KcPmpolk?=
 =?us-ascii?Q?tyw4HNq4RXnrlIoVjSI6BwqcxPrGTFqGBt7H9GnX3sZtPEGylAPxm6DapP09?=
 =?us-ascii?Q?I+gSFyYhfhADhQ7XxzhELxyihoyl4LfPdtzKIO3eOZpbqZ58U7tje8DthIY2?=
 =?us-ascii?Q?eJQWNorwgxwH4q0KEInSb5OTOpbTeqo8toIpc2AJj1WqQHDcVzj7V2oLoIfX?=
 =?us-ascii?Q?/nUxllhkzQim+VlJclFASlHqwcbhRx8JxlK8QE9h4iW5+YtLGMjlhvumCWiG?=
 =?us-ascii?Q?+f3j6Oc+Vv6xZnymV3NplHpcCzN83+lWv/FrL0HHsuSsfx+y961o8Vou9gpL?=
 =?us-ascii?Q?epJxfz/f/TqMhtZbx1Q1/g2SdTRaMeRsD/K5VMb0UAWw2pbjlW1hO8eaViMV?=
 =?us-ascii?Q?u+n0PKKyiS0kXTNKiZaXo6Af5rQ0/61gOV1Mb/1+bvtNzXWKEtahOgOP9dRX?=
 =?us-ascii?Q?twZuA760KO5sxSPET+hGcI7A4NmL0ojQcoy8OZAzkqr7TEPzqk0ItroM5k9k?=
 =?us-ascii?Q?FlObkt/EHnJEVUtfE5tzBZIYjDYgfwi61VheYzl98MUOKSPxiWnAxh1VfMdJ?=
 =?us-ascii?Q?md6APWqwxFAZESbGNuWyKwEht5X9eYD7bgdzRPFtRAZ/Wa2JPa1ySQ+jzWuL?=
 =?us-ascii?Q?2eN6i9voL8Lo34FJURihz1JzT6bSaqErSf7fNgKTre7kkmjAqo4x39lunM0r?=
 =?us-ascii?Q?mcWzPyi+wOFauQOM6/YKWvSucjYh4LTvgSRzANoe2QOJZIXH6YNwHtwlFin+?=
 =?us-ascii?Q?ZDIa1tXAsoFLH7+nzKeGNO9owrYXZP/NovAbL+4OMexIa7ez7z7D1lt+NhdY?=
 =?us-ascii?Q?DQ4i+QPzDzsCX1TOhMnCCPRpAIFGaRhXhlx+xM9IC++qevfcKdEZjMnh5T1C?=
 =?us-ascii?Q?PtoSzMBhv0TYAT8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8gk6mtKJzzoxGjhdGudzyhipx+MrHtO7M5rPGaI2a7nTuGGBDH2F7XDsVzMK?=
 =?us-ascii?Q?Dod2WjVT0DKu2v53ia456QIUH3alnFHqFwZ11fW347IImSr9aAjJP6XiyJ0Q?=
 =?us-ascii?Q?8BWhaL/f2qPXhtZn5ZzU713e7btfEnL4RUDW7j8uGQtWC/u7ecNLrddHkp90?=
 =?us-ascii?Q?8746vEubKnecTkRjE8WWNXSpO68iyj6FS/Y8Fp6UU5rEkJruUu6nZe1dLQY4?=
 =?us-ascii?Q?Dmoq3aZzZypHVAeVkPzv9AQAaPBmf/VeOeqQ14Xqs80jHcz7pzSkuMvkJ1w5?=
 =?us-ascii?Q?uMK2tjhO/V3Z8HZy3x6zWci4WKdC47aBSTOrKXDmAwM0eyIJq44wXGcOnfmx?=
 =?us-ascii?Q?uOH0Z9PX6WizygtmELlW1J7vGlL8SXkee1PTMsr1BCS2PS8iArLgm71IzP9s?=
 =?us-ascii?Q?GKaBpKvWzLUmmTW/G1Hw0E3GIDDUoyuyIsB1+iq16xLdjkTbSfs0GV0yXBQ5?=
 =?us-ascii?Q?XutJu9fOFgQ71H92lbDubnWL6zPFdeyJlAe+tqWlyZKQFdznsWu+MooDWf4L?=
 =?us-ascii?Q?jI4oZfONm2ZSBITyEpNRzHi9rat6cOYR6OI1/vizDlS9R5+PSbCfxNixnh/6?=
 =?us-ascii?Q?hs5zJ5MQgB8DVsTqgICMzWdK3guPIr8ft5kxPtmz/YE9hnhFnC8+Lfjsjuuf?=
 =?us-ascii?Q?egBFGp7Z3sBDtKnmtm+mQoVkmJ/nn2AZ249lW22144+bFItUVMOIrkWetWpd?=
 =?us-ascii?Q?bqLD2x/XWf8P9JuLZf7WHr97Syz0JlgQB/1EBw3p3NSFANOfA8sa7dUu9E1/?=
 =?us-ascii?Q?c08h+90Wk8C+0GQqOJL/xD3WvPMKDM4iBSdWZjaVMSYGsgtyb4FPOKKSdOH7?=
 =?us-ascii?Q?lhE6XNlmDPSgo/WQLUG4obBTYsEP0EygjiwQUGuHAsOwJuwI79GFB70Iwpsk?=
 =?us-ascii?Q?tZX5cbZ8qf5vnvWUgw/S3hNBlHq0suRgVcXTsTxLbrRd+KZRn7dXMIi3owc0?=
 =?us-ascii?Q?lHB7KoxwqMd8ozZcn68oLKeweTt0v1KbMU8rxZQhnZp7IyKCQYa/tPQZwWqD?=
 =?us-ascii?Q?qYlbrxhdzK4+Au1Kf6JfASe0UHNRCphxfzeMKsrvRQ+N7wbEK/+HNFMM64Sq?=
 =?us-ascii?Q?jcSqlw/vmp6qCtUZsI+om/bvUePPY3s5YUCFEvqMfNaT4hbrsnmvf0tfXqVC?=
 =?us-ascii?Q?pemou+I+LawNaydkgv2q9rEN8gAPGBc/BdvY8JyYSqYG7Dqubkw3zUwy8O03?=
 =?us-ascii?Q?rGSptuirvL8ifvypauEQ/XrBn87kNXILy09fb0W1bqG3b61ZvsmJv/PN+L0H?=
 =?us-ascii?Q?fh+vyPkO/b1aIwlrXupKLHHxVH+WZAUhgMk9mhPNBYCGPzP+sbYOHqKNc+WA?=
 =?us-ascii?Q?ciWM5j5zbXOWDsX0snd2pG6ifJ3k0lF+xd0ArBGAxLQSS6IA09ezRs20Faxw?=
 =?us-ascii?Q?ffJgTjSM5mPW3psnzsalhVb8bPnxfjYinTyl4/qF+4fdvEMrsYitDufdAzwh?=
 =?us-ascii?Q?/iUBqOqXuJg7b3hDiekV6c0LGZuy7ODvB9Ytn9kQi5G5n6mHBh0FvZggHP/y?=
 =?us-ascii?Q?egZQZW9Q98/hX2igI8qlTAM94k2jSJPbYansrWOGcxADy0EbLQPExaSzzhZ9?=
 =?us-ascii?Q?nohOYRl60wLi/4DgL6yMVQgpq5zeyaM4UK3WSyEmDTyw2HsShGtovY+BIfFL?=
 =?us-ascii?Q?gg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cae8c28e-8ef6-4337-b2e2-08ddaa4ecac6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 07:49:14.2410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4GLrKJYGVB93vwWPGm3Z4GYaT0DH8IUmMy8vEbWIa68aENkWNuDo76sbclM1jAflAEV9BZLLI9c+TV2Kvp44VneoK2hji4GfCwxg6pauLYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF691668CDD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749800957; x=1781336957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gz3EQK9XxqdFFQCtcpPYEZ9ttw5+EPYAuSIxvI/sJro=;
 b=jZ/8z5jGBULzpYrEmp0KrBIWvdGRmUReRYlBEPvsaWyoPkKbD14i8ziV
 /Ox8y33MsfjvcfnNUML+EQWQDxzx88+mBOWjipZHEFZ9aIyTH08rTK5FD
 ERQ6kCl0MmNHPzfOiWScFKpGb/kq7bxsXFbTokZhwjNgp+A7ix/9Hswf1
 ijqR7h3K3fiiWAK2JQ8G674DdMUiXt+ac5ANWwXspW+IR6r91sqv+IVHJ
 1N9Nos6UN51zF7G8QIsKz2GfetYv4TOWmk2z3TB+VveYJ0egjO2nBVNEV
 fh3/KLKrQ244/O7yAOFkNeAUA+uoIfKBI9P3zyP5GhFLilFXI5WP4LLTR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jZ/8z5jG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/7] eth: i40e: migrate to
 new RXFH callbacks
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
> Of Jakub Kicinski
> Sent: Friday, June 13, 2025 3:01 AM
> To: davem@davemloft.net
> Cc: netdev@vger.kernel.org; edumazet@google.com; pabeni@redhat.com;
> andrew+netdev@lunn.ch; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; michal.swiatkowski@linux.intel.com; Jakub
> Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net-next 5/7] eth: i40e: migrate to
> new RXFH callbacks
>=20
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
>=20
> I'm deleting all the boilerplate kdoc from the affected functions.
> It is somewhere between pointless and incorrect, just a burden for
> people refactoring the code.
>=20
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 38 +++++++-----------
> -
>  1 file changed, 14 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index c7f2d85eafcd..2ff17d50135c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -3139,15 +3139,12 @@ static int i40e_set_per_queue_coalesce(struct
> net_device *netdev, u32 queue,
>  	return __i40e_set_coalesce(netdev, ec, queue);  }
>=20
> -/**
> - * i40e_get_rss_hash_opts - Get RSS hash Input Set for each flow type
> - * @pf: pointer to the physical function struct
> - * @cmd: ethtool rxnfc command
> - *
> - * Returns Success if the flow is supported, else Invalid Input.
> - **/
> -static int i40e_get_rss_hash_opts(struct i40e_pf *pf, struct
> ethtool_rxnfc *cmd)
> +static int i40e_get_rxfh_fields(struct net_device *netdev,
> +				struct ethtool_rxfh_fields *cmd)
>  {
> +	struct i40e_netdev_priv *np =3D netdev_priv(netdev);
> +	struct i40e_vsi *vsi =3D np->vsi;
> +	struct i40e_pf *pf =3D vsi->back;
>  	struct i40e_hw *hw =3D &pf->hw;
>  	u8 flow_pctype =3D 0;
>  	u64 i_set =3D 0;
> @@ -3545,9 +3542,6 @@ static int i40e_get_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd,
>  		cmd->data =3D vsi->rss_size;
>  		ret =3D 0;
>  		break;
> -	case ETHTOOL_GRXFH:
> -		ret =3D i40e_get_rss_hash_opts(pf, cmd);
> -		break;
>  	case ETHTOOL_GRXCLSRLCNT:
>  		cmd->rule_cnt =3D pf->fdir_pf_active_filters;
>  		/* report total rule count */
> @@ -3576,7 +3570,7 @@ static int i40e_get_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd,
>   * Returns value of bits to be set per user request
>   **/
>  static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
> -				  struct ethtool_rxnfc *nfc,
> +				  const struct ethtool_rxfh_fields *nfc,
>  				  u64 i_setc)
>  {
>  	u64 i_set =3D i_setc;
> @@ -3621,15 +3615,13 @@ static u64 i40e_get_rss_hash_bits(struct
> i40e_hw *hw,  }
>=20
>  #define FLOW_PCTYPES_SIZE 64
> -/**
> - * i40e_set_rss_hash_opt - Enable/Disable flow types for RSS hash
> - * @pf: pointer to the physical function struct
> - * @nfc: ethtool rxnfc command
> - *
> - * Returns Success if the flow input set is supported.
> - **/
> -static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct
> ethtool_rxnfc *nfc)
> +static int i40e_set_rxfh_fields(struct net_device *netdev,
> +				const struct ethtool_rxfh_fields *nfc,
> +				struct netlink_ext_ack *extack)
>  {
> +	struct i40e_netdev_priv *np =3D netdev_priv(netdev);
> +	struct i40e_vsi *vsi =3D np->vsi;
> +	struct i40e_pf *pf =3D vsi->back;
>  	struct i40e_hw *hw =3D &pf->hw;
>  	u64 hena =3D (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
>  		   ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
> @@ -4964,13 +4956,9 @@ static int i40e_set_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd)  {
>  	struct i40e_netdev_priv *np =3D netdev_priv(netdev);
>  	struct i40e_vsi *vsi =3D np->vsi;
> -	struct i40e_pf *pf =3D vsi->back;
>  	int ret =3D -EOPNOTSUPP;
>=20
>  	switch (cmd->cmd) {
> -	case ETHTOOL_SRXFH:
> -		ret =3D i40e_set_rss_hash_opt(pf, cmd);
> -		break;
>  	case ETHTOOL_SRXCLSRLINS:
>  		ret =3D i40e_add_fdir_ethtool(vsi, cmd);
>  		break;
> @@ -5846,6 +5834,8 @@ static const struct ethtool_ops i40e_ethtool_ops
> =3D {
>  	.get_rxfh_indir_size	=3D i40e_get_rxfh_indir_size,
>  	.get_rxfh		=3D i40e_get_rxfh,
>  	.set_rxfh		=3D i40e_set_rxfh,
> +	.get_rxfh_fields	=3D i40e_get_rxfh_fields,
> +	.set_rxfh_fields	=3D i40e_set_rxfh_fields,
>  	.get_channels		=3D i40e_get_channels,
>  	.set_channels		=3D i40e_set_channels,
>  	.get_module_info	=3D i40e_get_module_info,
> --
> 2.49.0

