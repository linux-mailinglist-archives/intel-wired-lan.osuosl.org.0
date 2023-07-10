Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9630174DA83
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BEE560F9B;
	Mon, 10 Jul 2023 15:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BEE560F9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689004455;
	bh=8EmxpSl1+eaJ54SoExWxacS2C7g91WpDhYCpSFYFEuo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EEwEXx4vzibx9GLK6kjNXOdfYPqUObDbwJaudR+TlZ5kXi0oP56AU5X4l6F98SU5t
	 OsqzLeA3qJTY7tKDY9VUeCxhIXgIcwinuro9XSqw53JIXaQZ5tFqxJftA0KuufL6PI
	 j0zTqsBpnyYtLxxNieY7NGmJxUTvMP4zYDiemQ5Cu7SQPI7jNnlM1cKFrl0SD5JYUf
	 E3ufmwUD/lVe4vXyufUO6DSp11VefFpQB3L90ziXAcjn5lClEd3apXEACcw0v5k7tj
	 8ILj3OKpivFcDTzdSiAHCigvGUAHmFbjyMuDRz6QyPKMcVaRZrHbuaPRvGnpyXRDcE
	 W2cJ6Y71lA5wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26_aV4nYlqXa; Mon, 10 Jul 2023 15:54:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E095760F76;
	Mon, 10 Jul 2023 15:54:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E095760F76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCAE01BF396
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 15:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABD2C41369
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 15:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABD2C41369
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04-X96i9hk8Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 15:54:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A26204137D
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2044.outbound.protection.outlook.com [40.107.93.44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A26204137D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 15:54:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxIZl+Gb2JlJ6TFQ1lsWbYZKREJ5ZxnicFvHWCF97fqkRJ/k/s8tyLoK7kcgEKSft1KmpufmkHuDDaSiMv5fKuWTaYobswU4BZslmNDYQMDExnPxYfdIvCOBOPWbzSacFfPTIP7H2jvJ+KKHutkbSwP5PKTP3Yno3gNc89WSFyf5g+3XM9xV+PG7Yk9QwC60H6ooRGXurooIDRLuL1Q4njBKzQvWJ/VU24XcmMwuz9A37IdzFOyT6gz5AmryjI5GQYHp1HFklGipHI+yseU5VR6UbKFRfpvuq5+PmyhBsqGmmZIipyFR0GrGMWrxdlrpixpSbvwKS1jjThDvGwshKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkxWz4BxcoPxiPPcijOSyEgYwcJAni6fuPusLIDjjKc=;
 b=imLt+movgvdjDYydkXOfTe9qDu+/G56mOUB7XZsp/pRsQRtDzOUlhd54iFoCAz8W3ZtvR/e+/IpcJmDpEO8S6UjW6RSz/8DvlpvGWKh5qGxImkHFcFh53lQmLjF9as8zovQ8S+bZyqAyp+/AZu5OT4lEYZrgTlAR4ZDXZMhClHkbVqkEVBzi0lSwq/pdvlIpd+I0cM8myES7Xm2DpHKnXpxgUBWNq5atBykjMJeR0/B5RAtHOXk16kKibUoUhPbT9anfboiLFrNj9q6j0FqSkEjaIvKSRgvkIkptbas/DRgDGEWCkCuMxTVrfd9XN2D6TSiLJbcVjcrHIG+N6HKdNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by PH0PR12MB5608.namprd12.prod.outlook.com (2603:10b6:510:143::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 15:54:04 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::98a5:ba0f:4167:8d53]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::98a5:ba0f:4167:8d53%4]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 15:54:04 +0000
Date: Mon, 10 Jul 2023 12:54:03 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Peter Xu <peterx@redhat.com>
Message-ID: <ZKwpm1k+1hjN7oyE@nvidia.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com>
 <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
 <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZKReFWNJSVcfhL6y@x1n>
Content-Disposition: inline
In-Reply-To: <ZKReFWNJSVcfhL6y@x1n>
X-ClientProxiedBy: BL0PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:208:2d::31) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|PH0PR12MB5608:EE_
X-MS-Office365-Filtering-Correlation-Id: df1e677a-af9d-48da-60ac-08db815de31d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XRUEhFL08I/fl/TTnT669AsDlzNeIpuVGASAouxfgh8if+iHPD5V7yt3SLrZIxe7atv5aiSEiIoMCwFMsyM7JsVuScyH/X/qgWg8npwY8gEiIvUtfaFyO/G8zVw+Wx52qZBY0j/u2jQLZN13yR4Fu5Dc/0Ee6CHR+/TstmVgmGfQ/nPdns7Vq+I6OXYFzGAlLAO34AcUVoeF+oGHkFq4cG6qJuumBlyZ02kkWhja2Hr/au7Owq5zMFeC3kZV2ms8WkHew0prfqfbLw2JAt72SqN7nItxSHfzirSrJXJpn5qTFkT/bGBNsnTuKwza0itNB7j/1U6DG16SzG1yhMjKmWfpfEdKsnhA98YJfL/+ACpb7b+JWGS0YQncavuQ5M5laNPKkUVz3LdLLQbefCeUlCfQnLNBdKZYUOB/OKj5ixJLM7uaE7mVauCFzNdLtH2OLwlUltFGc1m4GaTQ2WMCYkwXxxgAcur8Awa2H9Ty+dkOJgZ4tiF7IyaMcth5X+ySk8RLkU2iHFj+9CSlf6Q118vcPhIZvZGoB+aBSuIU74qAIK3OO536RGsm9NxeljB0N21wxb0wBuKnX24b+Y1FlnVyiYKfl/3qqVf952/8eBs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199021)(478600001)(6486002)(54906003)(26005)(6506007)(6512007)(186003)(66946007)(2906002)(66556008)(66476007)(41300700001)(6916009)(4326008)(5660300002)(316002)(8936002)(38100700002)(8676002)(86362001)(36756003)(83380400001)(2616005)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Dbwgg1tr6EEyugJiKaHSiN+ZECQLx/9GWRZ8nHuE2ewlOzeb+abdYwqR9fQ1?=
 =?us-ascii?Q?Ljazc0yQzjSDSfmeFYaGAMyV9jj7rH68j92lx8Z8urQh2Pjw9GQ1hl/XLg4u?=
 =?us-ascii?Q?qV229g9w8BjOlhXuamP0b8wlaHG90rzmnl2VS4G0e2r9Q9UWEDelJfuK/sIs?=
 =?us-ascii?Q?dGzv350Pl41CyynCHh/QdeX5G0JxJs9ZZg3PKNK0r8/WVKp55OrUdH+SilBI?=
 =?us-ascii?Q?Y410LwY7JlVtMU1wEQZjwT2o/sp4Wh2DFmM3j1rM3auj19uE2ucY4FmsooM5?=
 =?us-ascii?Q?2PDNsz08g2+ANlx/n7oNwuG0AA2WvLt2ATlIkngUbn7tUF7hYW4bhPSvPBql?=
 =?us-ascii?Q?FeFkInbxXp845hbbf/+3u2uxPjhmEw92cawUtwfFHfcX9GaTMiV0Jop5AGY7?=
 =?us-ascii?Q?Rr5xrgMfqZW+07H74vcM99cKF0cPCYq+Ts7IpTfqHYeYAJ7id6ut0c+CQAl4?=
 =?us-ascii?Q?M2GnY35s4zG4IP6Vd9FyWHWSmeKtcuoZRJCkxGiuvZWC8Zw37lekHER+REm6?=
 =?us-ascii?Q?9tldphlxBUa7plBqY90Jl9SqEBmvJ7FEhtzuGn/1h4QyMfqpJa4A/qLqkJBm?=
 =?us-ascii?Q?qW2zGACT/B1xbESf7vRGRJg0rPXyUrC8o5d11zUYmm/46f+zsLqtpzypdRXw?=
 =?us-ascii?Q?R2mEBDKQCz1zcst+4DVWlXs8xfu9DyllGOMPLF4XhB/PpdkwXqZU3PRSaKoZ?=
 =?us-ascii?Q?cSRPWs4JXVVquRcmb7HSobHvEhV3CQeBgEV0MFB2UlOE/86Lsk8c4Wt1ckCc?=
 =?us-ascii?Q?rUM+t3tEuTBrTvxYq8L+rwlLZ9do1+JW/3D5PVIpK9fZNf/G7LgV53DZf0Jh?=
 =?us-ascii?Q?8y3z1YP6xm0hkBRXT34KSq6cgesTr8XZ+Dd7iP8aQ+UfsG9uIompKBaix8cf?=
 =?us-ascii?Q?M3LLW2qWTEfa0rRwpl7RI0fyhcVsJh/Jaki5rFupRzrAxC4huqXOyWCbOIWZ?=
 =?us-ascii?Q?IgSj+NyeRd2ptmkGh+9K/Jq8AENshfq9KzB2Qq8RZS7NiFJ2rLyucE0RTans?=
 =?us-ascii?Q?erNgw2Leu4qbeQql9QzDnYxMacv3d+VKZ5EGM5Yc0p7HC8jWZUDZ1YPn5SLr?=
 =?us-ascii?Q?oZXp9Eef3obFCtdzKvZE8PeTLFENJ3GbGfPY3bc0QG+LhEVDubjn/kAdGp/F?=
 =?us-ascii?Q?SPKzwPmbbLozycPTniePUtX11asgukfjJ/uy3P4Eg+9Z4UC2gGSXr8QqAN6S?=
 =?us-ascii?Q?8BSfEcZYkUsKFV0cru5opkEQiWDHgToTD/zbFHzihkd49qbbe3o8/12S05Mx?=
 =?us-ascii?Q?Fth5RWTuQ3ot7T7Aj7dFGjf4QILKZI92kplGeNUe/IHvUVTUOR1+8wKW4pi/?=
 =?us-ascii?Q?z7wJdJL3qMNFV0BAJfQ7KTDPHUFu3tz7RVuAkjt12ZJxSPai7Tx7uZIcLt5w?=
 =?us-ascii?Q?LIUQjeowF7tHK5CGRbFNahNu76BmeesbyZxUMWPPTcKyVHiG/zXywkCEFPRD?=
 =?us-ascii?Q?2UZK499F01YdC3a94Mkt0LwBm3WHAo7fAOXiFkqRcCaXtWW2DoJkh3OvgJ1m?=
 =?us-ascii?Q?7pnxdXjbu8hINvCJ0/o7cUqTDCDfyi+KM2LkCsW3jQ5GESeatLLcxPQgo9pY?=
 =?us-ascii?Q?l238e0JEUpx3xxkbLo9LbpyXENRTCYXodpIw+77b?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df1e677a-af9d-48da-60ac-08db815de31d
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 15:54:04.7746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rjTmXf6iEl5l+rFtHV2UjL4N3GS49hM4XcA8xg/ZPy1pe66xmTNCjI1Rqi5+wn5y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5608
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QkxWz4BxcoPxiPPcijOSyEgYwcJAni6fuPusLIDjjKc=;
 b=ZSNAm+IVZ+68pWH0cIPCNis8bMHJTXzI/5UmTpe1IkpaQAvMbQztXomyphex+Gg+8oBp+9a5ZvtOUmftxEWW5mKgoBK98SI5Mx2vTHx4kqYCUniNrUuvmtIGyEv8O23KUq/oDBRaDphKhav493MeCiizRDKdNTaASLA+amrObIIQ+hHYLXmoT5J7mz37xypWTnMJ6BzISYF5bVEvPKcSatlMrBbkYc4jEaUCI/BrYGraexg29yCb2FG98gCoABUdiAaVp2MSAENKsd+3J9KSnGOpapgymTYURS41OijoQ4oWVnzqq07gIXTNuqqvgrd03cH7DtO/JMEr5ZaJyRXWIg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=ZSNAm+IV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
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
Cc: "Tian, Kevin" <kevin.tian@intel.com>, "Liu, Yi L" <yi.l.liu@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 04, 2023 at 01:59:49PM -0400, Peter Xu wrote:

> > This sounds counter-intuitive even for emulated devices. vIOMMU is
> > involved only when the device wants to access guest memory. But
> > by definition the RESUMING path should just restore the device to
> > the point where it is stopped. Why would such restore create a
> > dependency on vIOMMU state?
> 
> For why QEMU migrates vIOMMU earlier than PCI generic devices, I can try to
> repeat here: IIRC it's because some device needs dma translations during
> post_load(), I forgot which device and why, but it can make some sense to
> me if recovering states of the pci device may need help from a translation.

Well, it has nothing to do with VFIO given the timeframe, and if
internal qemu devices are doing weird things like this it also
suggests they have problems with P2P as well.

The VFIO definition we have is that a device may not do any DMA while in
resuming/resuming_p2p, it is only allowed to initiate DMA once it
fully reaches running.

Obviously we have to setup the vIOMMU before going to running.

The internal qemu devices must follow this definition as well or they
are not P2P compatible.

About the only exception I could think is if some internal devices was
caching translations for some purpose, but it really should setup that
caching at entry to running..

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
