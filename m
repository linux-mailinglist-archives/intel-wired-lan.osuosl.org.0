Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 302C378E59B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 07:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C41FF60C20;
	Thu, 31 Aug 2023 05:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C41FF60C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693459109;
	bh=WQJMHaabIOGxmwMQpE3ysuz74+/17zIjEtvPUalYJMM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8IUyYhJLAr0rp7iWGBOJdBd2qvZ+w5UXLnVFx2BU1K2gkdNf2dAI5WQ32WdSiUx0o
	 RrZpRn124qBLJt333HskCKHccqOm5GElNAVtkNDzR2zLxmTpVOMenUVRP7aGnSKZb7
	 zEwb2wVVMU12SD7gqEiKVelHmNv7aRew16UmKivAJbbMETu4gDFYLcjz0e5d4d0BKp
	 XRJoVNjgF0il9AQ/NCGKlLITGeK5Pv1N1zwawSneVNl03+0H6Z7bqpgY4AEWfT4t+M
	 eti/FEfi8AAML+AQerUQQAsy8sqgvA/esb1UeYLnAfOlWUBGG+79BomwzIl0HS+7ec
	 wQuOONP7uvn1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 156eZNrQqBar; Thu, 31 Aug 2023 05:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1A8560BC3;
	Thu, 31 Aug 2023 05:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1A8560BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A69841BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 05:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88B284013B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 05:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88B284013B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZk8VuO6SzTj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 05:18:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 135CC400E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 05:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 135CC400E7
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="379565657"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="379565657"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 22:18:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="768664280"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="768664280"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 30 Aug 2023 22:18:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 22:18:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 22:18:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 22:18:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 22:18:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OyJ2xbwK9YXinFwrvqW7V+WZwqZsJqX3Cm1KRZ94Aw5ml+19vlNCcC0bkRiNEDl5dJw8wAVn59PY4iSku5/L78XjU77P0iiAkCkOTl0gsksrS9z5NSjtuaYeyY1LYZHREyWxnt/RyaGBVAPXaEF9zZW117jvRuZpCENj62Ri7k9AnsO/mK1lPpmAd4pgH+LMn6JITS69DChjzhii/0JlV0RiQ4tUBkAOjLpUivzxqXUY9dqjteIZx8nqEKGnYx7pwAOig2l7knFgGYpdbbUZOSpUbZkBTG5/HGASDX8quyTZDRrVRGQizcKT8R5e5YVbrRDL6M7za1xtTzP3pzd2MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QH7GOIdexB/PAVjKLsad9NTrmoEDWJmItZi4YPE9ebo=;
 b=R753Ow3LIfAiG2KC/j0fYXF1H0lP1Gt8NvdKuhw7cnET/RvfYrAKCO+vO7+/s5ZU6fec9rd4DR6qOPYDl74mDo1a1d6vV/Z+0KZ+7idGUy6uwkr/88KDsq6CfGk1t5iSn8JvbfZnEW0OiaA7ev9uDuBU6O3wtvsuOnhFqsl7FidM3Rb3jZakyTepT+ADem9Arp3hRWbIFZsMVyJJ2MOdHu6oin7UfTR0s2+J5WLloyB6IPwCUpVcKvSNIKbs3ZL7p5ttUDpzF+k0aan1fwC1VzK1JTQyC8SXWNyg0L1XMJ+ppTrFgx1EHXbl9Sbeu//t+P7E4Dg/CiNAeIzr8n2Z1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 05:18:15 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d%4]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 05:18:15 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, "Alexander
 Duyck" <alexander.duyck@gmail.com>, "Rustad, Mark D"
 <mark.d.rustad@intel.com>, Darin Miller <darin.j.miller@intel.com>, "Jeff
 Kirsher" <jeffrey.t.kirsher@intel.com>, Richard Cochran
 <richardcochran@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp configuration
 code
Thread-Index: AQHZ1g+ASmiBu+CN/kawX/lH5NF/RrAD4lwQ
Date: Thu, 31 Aug 2023 05:18:15 +0000
Message-ID: <BL0PR11MB3122FF925838E8F850787467BDE5A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230823221537.816541-1-vadim.fedorenko@linux.dev>
In-Reply-To: <20230823221537.816541-1-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MW4PR11MB6740:EE_
x-ms-office365-filtering-correlation-id: b06b61c7-4617-4123-3010-08dba9e1ae03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G+RR5IBEFIp0PG8FTKpKmzVwrXFGXkD0XVTINKaRBBsPkwYFUCcQ00wA0EbAUbYIDR89KUicM6iDmbdBJsuXzG3s8qUnqHOUqFB3dmALhmcylZIYuvVO59G2wvAWJMpqhJKwfodnvEyS+l6NmACIRp4E7qWnKyFjwjrphR2xTwrJ0VlNHG8Ov38eHNn5PIsHHdFO1vn6nOYsZ3N4mPcEyz4/QE5YW+Je04BRyP2oy1yC5sW83QB/ECugnXXBkJPVr/921RtBZ0CTRLLyt8ze1LkYMa5uzpqgEJazn+/HEzgDGQ2TIMJGQaan7hXijcyxmkh9H22lVyDDpFXy2V2diZ9IGGx52ykut6U2Qc4JJIse6r9O8IquKAeD6LtSt4M50mbc/U8wFHTI3q5n3Ql9VQDluczC+3K+TJm6D8y5d6IF5JdpgvqqTq6qxc+HHZUC9CjzRptOTDd/kFth+IoGZ6G7AQcdvIws6CxQS2QFUm3JU5Lru16Id5uAlnoiw96fFM/MX3zx5Zu2iBnYpWB+9U6T70RQA73Cc9wbOn4f/hta34GOiyIY4VGLQ+HQWOkGpHxYExoFyNX4StKpsC+mQyYnwzd7wHpLifzuBFpLX+gFnsqkms8gx98xpZql1jz3yOgo+caW3qVy2uJz/DEXog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(136003)(39860400002)(366004)(186009)(451199024)(1800799009)(921005)(8936002)(122000001)(110136005)(478600001)(53546011)(76116006)(7696005)(66476007)(6506007)(71200400001)(66556008)(54906003)(66946007)(64756008)(66446008)(38070700005)(316002)(38100700002)(41300700001)(82960400001)(9686003)(5660300002)(8676002)(55016003)(52536014)(86362001)(26005)(83380400001)(2906002)(33656002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o2AK/iJfeAjs2b4lnjgwq+D6ggMaVT9CA47BN06sH34/2IOVIRUMfOQHQo4r?=
 =?us-ascii?Q?V7nwJgMfZnLA1RwI6ZPvYUZvcP/jeoGn+iW0Q+d7/yuUdUfhHT3raMNPPAv6?=
 =?us-ascii?Q?H/nQppr4vOrsWEvJTyYsN+koH3XITPDb3At2feOrnbQk3Dcw3ipZo1jsm0mt?=
 =?us-ascii?Q?GWpy2c3NWcxt8UC9pcOTVGGUE/Cmpm4EnXwSBh4bZVqVERItKDgEPc2tG6YN?=
 =?us-ascii?Q?5Fn3ckfK/+QGe3haw/9n6h8iNvINscwTqRp6AyC8f3S0dXlw8VwFFG/ZAeJK?=
 =?us-ascii?Q?FNH0KgfDNCC8xXUpz3hiB8JXEFaQK8HA1Aa7kwdfrLspe+MtVKjwlKK0ohGc?=
 =?us-ascii?Q?Gq0mPvRFBj9fK8TygfYPB+I77MEcavUhxSliuwnE0rTda4y9Z2JDPKXoNrYn?=
 =?us-ascii?Q?CMLSGIxvFGJG1PESqJKT0BHxlSwbYv+4WUvf5MnU90v7RnMKjkNbJYdzPKNn?=
 =?us-ascii?Q?aQyAZg9k9RBsZ6S0tvizxICyuqzKgq4vnLSkXnlgR2478JMC/BfDxv3I8ocv?=
 =?us-ascii?Q?OjSJxeoh6db9oaGJKWbDvi9tECllZPgO3ypQaeuLOx+8nJrogNJyp8Fs+BPI?=
 =?us-ascii?Q?fn/FEaRjOLnGvpcgl2pg615rPFXXj1vBzeFZxikiS5s8CBi5epWcBFzIPbjc?=
 =?us-ascii?Q?xBnU9tX+A4aszROFdeJrKpavZwb0dF/9j6knMldzlq70tL5mz0pKa4HhmsWZ?=
 =?us-ascii?Q?7FlCP68Rlf61O3ZryGxcKHZrwWw7ZeWTewonAd2wSZCcDczPfBwJSXN9QzXG?=
 =?us-ascii?Q?LOpzXJefvdzgcMif0S1Trn0oWuQ6Xtz4qwIT+gl6mVjndSwhAHVK10YvplA5?=
 =?us-ascii?Q?fd0ppTGUObBKlTm25HfNTI6PYiw6htBGBif6yfsOhUcwukOWaD9jm1++S4BB?=
 =?us-ascii?Q?ykqEdl9kkEb/UUfbj8RwId1xSHBUWTPntpkaehXehq5XgzTVW1ywm576wZ/D?=
 =?us-ascii?Q?guzU7KD9RWPx3O6oJMQLMbb4jXo+6/V1irgkCbZSVt54nVvw+BAraOCw1/sR?=
 =?us-ascii?Q?FaFpZv6rtL4LhWIgFNdj5ckUEmaZ8m5HTrkgakVTTTjAZXrFPUUbmVMdbmJi?=
 =?us-ascii?Q?Y19Hsf87wPwuK4g+8ClQbZb4FMYqX8xogu5cy2+pgeEtuX5bJ6MeWsoVZQUa?=
 =?us-ascii?Q?L484eGFJ1mP4pHZtP2Iavqs//+W3XFMiptOmN2ym6Wx6LBMwlxnFed5RuOh+?=
 =?us-ascii?Q?HXSe7D7HQkMpuvEa3PY23+5N4pybMzbUuCWqXyRA89iWEaop3WSENVOv5o//?=
 =?us-ascii?Q?d1RLWd7ZQuZdvf9+46wmR6YSymuB4GqsmcQZlDPtzblCp5GmktJPXfNZwpIC?=
 =?us-ascii?Q?aoIzCGNN40DGXvy5kx2KW2pA01tV32dPpxTzKCcEitBE996j4XMJcacVh7DU?=
 =?us-ascii?Q?7IgZD+IfXNwNcDa7DZX6NcOXjLKYPMBAVrcX5ThzmrX+tjYSQwofEEajEZx8?=
 =?us-ascii?Q?cKKVQexL9xLE5H6DWT+hwCaFiX2OL2bXnzya1kUSOluYG8SOMnBpbmS9RaRh?=
 =?us-ascii?Q?rVoOJQWmzoKQGZC5idpmrTH42aoycui5cMEgtmcSIbF6Eus/PZScqyLfgyF3?=
 =?us-ascii?Q?IfoWZsj1kqDA2llrmckHhTslfSemjeAlWF59e/Bkk5ILcRLnoHf43ambd5KQ?=
 =?us-ascii?Q?aA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b06b61c7-4617-4123-3010-08dba9e1ae03
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 05:18:15.4666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sqaiWydbV9NrjJ2McClUlI7vqhL3hT+thKifANu4IcdtmHptRv9PlbF/mWOlYbW/fEnzi0HTCl1CV704ueeh01dshg5LPIdUxYdc0BabhD1SrdpLytVhkOz/y9gJbdKx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693459101; x=1724995101;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=seyLhPF7coOHVjrYCUsYlWNzVufKHd84IH33Lko6oIk=;
 b=UEbxzYqJXwavy82bWMcDNX6lUKxyatMAy415YnU/0fCuM7tYxn6eLbVI
 zE+hdiqz8LcehUxw9M/dfz1/p+G0VlCOaUSGJGfoB4Mi16d/VZL+XG0Ah
 Deoy8BAcqt7p0KbKEMxVYvyiPOjLVOmPokduDb0hYkL9k3Z5cFy9Kewy0
 g+U8lGpYxrS4PcYqr4tgta+sX3z1vemHr3pUwFkpVLXEgUi3LXTDs7Vkx
 tun0CATAAXDBvWIhhMUu/ECam49uB2Z5voDd79QyKbf2ZEDZ7iR9v5HBK
 Wmov9GYknYLC7ZvrCYnFdO9LzZ/xDz8R9O1myyXLg0cn/i6/b5XC/MuJF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UEbxzYqJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp
 configuration code
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vadim Fedorenko
> Sent: Thursday, August 24, 2023 3:46 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>; Alexander Duyck <alexander.duyck@gmail.com>; Rustad, Mark D <mark.d.rustad@intel.com>; Darin Miller <darin.j.miller@intel.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Richard Cochran <richardcochran@gmail.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp configuration code
>
> The commit in fixes introduced flags to control the status of hardware
> configuration while processing packets. At the same time another structure
> is used to provide configuration of timestamper to user-space applications.
> The way it was coded makes this structures go out of sync easily. The
> repro is easy for 82599 chips:
>
> [root@hostname ~]# hwstamp_ctl -i eth0 -r 12 -t 1
> current settings:
> tx_type 0
> rx_filter 0
> new settings:
> tx_type 1
> rx_filter 12
>
> The eth0 device is properly configured to timestamp any PTPv2 events.
> 
> [root@hostname ~]# hwstamp_ctl -i eth0 -r 1 -t 1
> current settings:
> tx_type 1
> rx_filter 12
> SIOCSHWTSTAMP failed: Numerical result out of range
> The requested time stamping mode is not supported by the hardware.
>
> The error is properly returned because HW doesn't support all packets
> timestamping. But the adapter->flags is cleared of timestamp flags
> even though no HW configuration was done. From that point no RX timestamps
> are received by user-space application. But configuration shows good
> values:
>
> [root@hostname ~]# hwstamp_ctl -i eth0
> current settings:
> tx_type 1
> rx_filter 12
>
> Fix the issue by applying new flags only when the HW was actually
> configured.
>
> Fixes: a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x devices")
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 28 +++++++++++---------
>  1 file changed, 15 insertions(+), 13 deletions(-)
>

Hi,
With patch also we are observing same issue.

# ./hwstamp_ctl -i eth10
current settings:
tx_type 1
rx_filter 12
# ./hwstamp_ctl -i eth10 -r 1 -t 1
current settings:
tx_type 1
rx_filter 12
SIOCSHWTSTAMP failed: Numerical result out of range
The requested time stamping mode is not supported by the hardware.

Adapter details: Niantic (Spring Fountain)

SUT info:
H/W:
  Manufacturer: Intel Corporation
  Product Name: S2600STQ
  RAM: [62G/8G/49G]
  CPU: Intel(R) Xeon(R) Platinum 8180 CPU @ 2.50GHz [112/112]
  PF bus-info: 0000:d8:00.1 0x8086:0x10fb 0x8086 0x000c (0x01)
S/W:
  OS: "Red Hat Enterprise Linux 8.6 (Ootpa)" 6.5.0-rc7_next-queue_28-Aug-2023-01755-g938672aefaeb
  CMD: BOOT_IMAGE=(hd0,msdos2)/vmlinuz-6.5.0-rc7_next-queue_28-Aug-2023-01755-g938672aefaeb root=/dev/mapper/rhel_os--delivery-root ro crashkernel=1G-4G:192M,4G-64G:256M,64G-:512M resume=/dev/mapper/rhel_os--delivery-swap rd.lvm.lv=rhel_os-delivery/root rd.lvm.lv=rhel_os-delivery/swap selinux=0 biosdevname=0 net.ifnames=0 rhgb quiet
  FW firmware-version: 0x000161bf
  PF version: 6.5.0-rc7_next-queue_28-Aug-202


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
