Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2926971588F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 10:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FA4560F7F;
	Tue, 30 May 2023 08:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FA4560F7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685435530;
	bh=piUhwEa3144+LnWzdF/2oypXq+EWB+JRWe0QrNNKMvM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FzOp8jRvrZ8oWdj90xfsTx6S/pNJ8gByxt41eSWTYNwIt5OgIdZf36SfJrMmbb+8R
	 UUStG9T5pu9QIXpiPy0GOgL1/4pU0iEvYEBZzYNRLZb7AwJCUMMptE2gnZrUuROAci
	 thZgGO4/ahzaBeqzCvrqbK4Iqamfw+GeNwHZzCpgLNuefAbuJ0aN6HG6AzKyejmY/f
	 BZ/ndvgJNa+RbDUb4pmrwm/PQSG90ArvVmfRK8hJ2mQVlJdWaNb87kLyOfhxiSzWN0
	 d74EEebQxzHlyEnSL9ck1O3orqGGl3LJ8rS4IqLqjV1uajpoacHDU6w4zEagIN+ycE
	 G9ycAIX9eSHSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HK08XLVdyvDG; Tue, 30 May 2023 08:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C3EC60C1C;
	Tue, 30 May 2023 08:32:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C3EC60C1C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECBE71BF357
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 08:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B769260C1C
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 08:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B769260C1C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6y6dc47OuAj for <intel-wired-lan@osuosl.org>;
 Tue, 30 May 2023 08:32:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C807A60B90
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2084.outbound.protection.outlook.com [40.107.20.84])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C807A60B90
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 08:32:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=blcfdzKCUR3jJduOtNHo5+Jqj9M6QCuKWDYbV8KxV3jrQtGHkEbjtEBct/5tQ9ICnA+obPeTN9wZKlC0XRJHZD7Tm6vwOKqoQc5/rcBlwfBamavZu//Cl57Bjs19M6DY7IZ3eJfpXrlJeGAzYuEcDrr0wcij9385bm+3A/h1X9isMvXwjn5dSSjL6UVIQcyuIOtYAHxLFwOBm1Lk+9IPOWGGMdcn5ms46TL2muBmMRHYq6UfEVxUkNnn49Og3DIfV8mqrZOhvAlsQz6Avu1N6j141cQ4Vu9ThWm/Pmw/D4PEEtgMg+uqwALbLos4w19nD2UA6IXWdc88LEP0tNjKLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nRtHm5tfZJA3T/OXfWTL89QNVRJ29WtdJ5usaHcG0KU=;
 b=bRGdckpvk86cDOhNr6E2NTjRqekYKhUn5DnD0u9Gd+3Z/+t4BtCHfhz+U96Oq8ZQ0v2jz5jsYnW+9zs62J+junoUaCYhL0LtK6xEN63u+EB2ZvD+9JxuECvjw8tROf9Cgf9RJ4whj6FodNW2aauQusVbgDL6P5ryORKXjNQHl9+2ey6yWwPnFlweIpz3wx0yDeJv/anFucyGhVWumIaTWe5axe0iVmdnY4Xe/DSS4bqHHQrW5rv3S+0a6cvxLbXa3U6kbY0SjmmDZwim1OwGzH7zDDCqL8sbKedcMhWyrHUgOxuiOs9pjnJ7LFiSdfKgfo1RTSGhiaVN00lOPfBfSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VE1PR04MB7358.eurprd04.prod.outlook.com (2603:10a6:800:1a5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 08:31:59 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 08:31:59 +0000
Date: Tue, 30 May 2023 11:31:55 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230530083155.6kcgwqiljyxd3hhq@skbuf>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230502082734.0f2f88b1@kernel.org>
 <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230529135949.wfrcll3t7nkgna45@skbuf>
 <20230529173357.jpqun5o2z7lebreb@skbuf>
 <SJ1PR11MB618021DE0462B2DC7BD207ADB84B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB618021DE0462B2DC7BD207ADB84B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::13) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VE1PR04MB7358:EE_
X-MS-Office365-Filtering-Correlation-Id: df823a2a-7320-4558-7a9e-08db60e855a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 79nXiVt6oS0k/zU0s/ZkpgENLvvdBHh+5o+VnPf3BwAU/945v899HkBNBFvbQ655xogSU578rNbRZNqyvd4I//5BfyODynan8ES/bfkHzeZKiZcFr0HwW+dhkzvWJ73DG4FqxMeuvTBHPvx4uW2jcjaV9yRJ9l7tPVsKN4ERQtllsWL7MNKgR/SOU+QQvGCYcJZaRZj1nHRu3Wy5UURVT7KuOns87uOMsGkK6DZWjd7wnW3qyNYwdHtwsWDBV2UcnRuKnsrr2ZZuGWlVo9MTAOqG9CRFZoF3WHHVI2RVXr5pL43ScKBHFbBN2dWDHVriv/1PqHZdYJiVLRjYzXF8S3em2qDQ+IJ+IgOujXObEmiwBhfMHVMw1iHZMg8NF13nWVHkG44NDGf/krOJfj2QSFpeT9W8ZP9fCVw0l3A/7iagY8U4oIm2y+Ct0cJJYYRrJL/f4ExA3gPr/sS+XShWxFgme5TwAqnzzQi1iGBUhd9mqmnbdASUUji7BCoGNVfXJk0n3DDVJ8cKVVmwN5JwQJB6N9jG+6lPC7dh/FchYbDnsbQHw9xRCvg321DJpdsB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(39860400002)(396003)(346002)(376002)(366004)(136003)(451199021)(478600001)(54906003)(8676002)(8936002)(44832011)(5660300002)(2906002)(4744005)(86362001)(33716001)(4326008)(6916009)(66556008)(66476007)(66946007)(316002)(38100700002)(41300700001)(186003)(6506007)(6512007)(9686003)(1076003)(26005)(6486002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1aefnPvtYyOQaKWR9p0rn8qCOyye4sbufcqK3iW2F9h+VxUgK02HbORgBp3M?=
 =?us-ascii?Q?GpapVKJZHEMWNtFXSx16I6E/n7qtKjs1T5jsalvgCJ+qHHdMJ+/8e67imZij?=
 =?us-ascii?Q?fU+E2ZIuTQ1XujTC/XTORJEwdsu7JcwMXNdV55FDXlZRHPhQYtB99G8FVdFr?=
 =?us-ascii?Q?x65VXsidCcuYSpRD0GMHE97TUBfDGav96C2wHMgDJEb0hweJNpR3DPGXZ04B?=
 =?us-ascii?Q?lZfrlhjKzXTtF8JoJmUMmyTJMNuRXXzqwBvjOAT1EU8HodJuLpg0eS6bethH?=
 =?us-ascii?Q?LpilemJcf5mHzcOgaxxDThV2Us9G0+jLEnkdyJjq/DluLXdU/OzOfal752NR?=
 =?us-ascii?Q?zm/ixNqYPXiwM+oj18JxH8Ydxgy4OI9fHZCXu42h1YnmqF545z+HmxtSAxzQ?=
 =?us-ascii?Q?B15FJFF33HzLSmKLxC7Rd5J3Bi2BSm0Kcz5d38nBkD6j49/CEpd6j2l1rJ82?=
 =?us-ascii?Q?3p6Asqm5o0OjCh0MyNXxLurwt5n+tPUimE9hJwTSiuqKZqXf6vzHr6wc1py3?=
 =?us-ascii?Q?QvpR8VZhJ6PGvX8y4o0CmbnPqx2LxwXz7hO/Wvo9IPEZEWj5PkXRZVizeayg?=
 =?us-ascii?Q?o2mA0/fxiB9p1ZanPhomsOgu9kGTV9b2LspzY3G/iW2iwhPLBfYefFgZC4Wr?=
 =?us-ascii?Q?o5fUSoZipmDqKEp8VOgTcEXTD6Sm5G3ijE2OMrqQ/VdbT3tx0kKJE32tZZry?=
 =?us-ascii?Q?mG/oR307fsLUJEUl4BYcXOq5XMj3qQXeVJX4+fg+KEUmKm1lDzYi1sKL4CJO?=
 =?us-ascii?Q?+yxts8X7kR++1JsTc3MhQzqQt6gr+5kZK6DtbpRF527Twpk25Q7QenzbIkDn?=
 =?us-ascii?Q?Mj0SbanMqsiJ4eKhTglbwMt03ewg9DCU5PugvyCg0w+H8IxKQicIhQ4lDEUI?=
 =?us-ascii?Q?bYzTpKAB8JrUKpo1d5NHyupJHsGxZJ0hy9LUKfYcQ1UxDnoTj7gQn1sGRDpu?=
 =?us-ascii?Q?6d6RP4a3M0+fF5OrGjsqgRSjBLNoKjvOp9KFmYgWuYYz9Bw3vcv+oWaUUscs?=
 =?us-ascii?Q?J52QIjtbRu9PbE2VGp3aFe+jECpISlTMXwXI5YvlVphtQfSa5MLpxN0kGQow?=
 =?us-ascii?Q?A7ws/2PkvLBiylLaapoMBbD3LAtZjkQrWIznTySfACjt74LHg+O+XwPEZplY?=
 =?us-ascii?Q?7wR6Kdyk5geBBzLtdsUe0Il6LL72RrB+8+QqI9Pf/46Xpedz2g/StFF/BEQN?=
 =?us-ascii?Q?3ZAOfLlmNa0ut3kb1ENBnPvxZXvu6pTXcfq8KNKuoAaL/pM3uRDeZIXUoGc+?=
 =?us-ascii?Q?1owdKopzaLJ5sqOAP6C+UJQIljjWnS9T2+OJQTjXBjYsUqV4dcXD5ymK9JsH?=
 =?us-ascii?Q?0B3bcSOTzXwZctR0NNM0PkdvFlA35Cwmm46pUSW2H+gNJHSEJhojcLVZApJH?=
 =?us-ascii?Q?gZ8dsG6cRM02QNvpYnQvoZ6/Tudr6hqoNs+3spZDArfV9eB1StYHg8wNeACT?=
 =?us-ascii?Q?AYt+932G6NTmyRqkthGt3AJs5DqNSLL7cM5tN9ppecXLCl5VpJOnS7MBgGBR?=
 =?us-ascii?Q?ylgfq9KXNiWlh5gOBYzVzWQxAf+HM4se8NtdsBT27BFwM/n1kyPpj4RvKykP?=
 =?us-ascii?Q?tIjrA2tvZF2rIgA0Y/1J58XDqJu7lq7kbUs46Vf6799/i8tnmdjKwDRYO+GQ?=
 =?us-ascii?Q?zw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df823a2a-7320-4558-7a9e-08db60e855a6
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 08:31:59.0865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MnyZadUKgvT8EfcB6+Ti94maKzH12Qd/dmErCGxErknD5V30Bj1SEi+NolHVWUCJmDMaYLmT2DdLkVYsdZYfUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7358
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nRtHm5tfZJA3T/OXfWTL89QNVRJ29WtdJ5usaHcG0KU=;
 b=BAk0fWtLACAAf9x9ITw1VvY1WkfqHq07oYdaKWMTcvuvb+oUr8PSW2zsnjAh+4Bqj1vAvFNFKkw2Z+PFyHiJKucAZh060CYMPaKOprEOtpzuWHs9ft8QBLBjwydy02vtMUGcepkxkI4YZYVZQZsMJ8SjGNprz1Sjdfx0nYPTre8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=BAk0fWtL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 30, 2023 at 02:56:30AM +0000, Zulkifli, Muhammad Husaini wrote:
> Vladimir.. That was a very quick and great idea :)
> Yes, it appears that exposing counters to the Qdisc layer is a good idea.
> Could you kindly include(cc) me in the patch series if you decide to upstream 
> this approach later? On top of that, I'll add my own changes.

Ok, I'll send the patch set to net-next now.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
