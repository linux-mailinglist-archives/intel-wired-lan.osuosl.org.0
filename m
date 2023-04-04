Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4737A6D70BF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 01:35:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2B0660AA6;
	Tue,  4 Apr 2023 23:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2B0660AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680651352;
	bh=SZAI28DrS0bmB1RBkUl52EEtNciIBLDPxHBSdkeTcIo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5rAi8mvsCrSMDMOGZW/QCmZ8ow+WRjgR2OBXsDqnnOMdfpZ1WLs5tgWhO1mfm0j81
	 psJDzNcW3SkoOqZ6kadZdnC+RZKP5uABGlE6SCAM7Oy8tanIhmIXb28RfJgrvARLYJ
	 nbiPAEEG3kmDIIn3s5KJB6nj/4LCQlNtKKtIMet2t30y1S9F385YfZMLYw2Re7MXNT
	 7nBhcfVuCWke9wv1PQ7Woh/5ZScr+SfgQrfwRbbAQRhm6o/gt/uS3sa/eKU8Pt/tTZ
	 6g4AizwblS3zVfa4N9OdAeIA3CVD9fjLKgXsJN0Q2MtyahR/LjrWHVJ+OeD3yN/FcO
	 DAt4vppsLIi9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0IzrBhaCcEwB; Tue,  4 Apr 2023 23:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F3EE6079E;
	Tue,  4 Apr 2023 23:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F3EE6079E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8070D1C2998
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 23:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27F6140568
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 23:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27F6140568
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSDqb8GJC6XR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 23:35:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 319CA4019E
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2064.outbound.protection.outlook.com [40.107.220.64])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 319CA4019E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 23:35:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X1ShrucXjOEvjw0cfpDbH4Pe/ynsCvNDYNKCDfYkykXvMDsDXSdjNaYUFl/6fKxw3peBQBmb1bFHLYqSqRtwNmAcnSkVDziiX+AYpVRqAvJc3oX3udlsKIYXNlg60FRg5aiaywdw+iqol3zkD4thLlBCWov/CyPI1fl4eGYYNhX4isqBHSVuQjX1r61ps4T1WCYfEmadf8RFGMdrafUMPpm47bQV/aGs9X5zf5r2d06KwCk1bE8+Kvtcj7cmrMHKn2aHYQ84BSl4vw8dTeakewfRITKmnxHJVcP5meDCaxF8PIZFPnYeKYtguiTeUfk8jAtuA+eNlAqjtQXtG2YrFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DXfPH2ManfCZ42cxb68nhsHfn5KT+uS1EKxS55bvBGU=;
 b=R7bPR3qcFSYg5Rg2dajyssMVIRWdQKtRAw+t9Bawj1PEc6eEzUyu9eoNT1uHmLQ7/BBwZXTZc9eF3fBk/UM93fxgOUPnVMMsYs3zMzcAKNQkjMCTR3gAvIJzEl6SrycDx4/KpUHl0hpk2hCEyUCyew2T29bHPGEFLnrSh7Zm9QfYxqsV4sQbFSBuTsbTHDupoHNn3aE7sYsQK72+s8hBMLBBMH8UHnbM3ET6i3kN2I9OB5BA/EpIHSJpZGoeKOI/ax5oUTZipVBGjFv55UtzIK28KWGzl2rfyoQG2Y7R6poGLWL+9FrW+uyC1yRGOWPKLKgpjLy1UxXeSnlhTb63Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by CY5PR12MB6249.namprd12.prod.outlook.com (2603:10b6:930:23::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 23:35:43 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::6045:ad97:10b7:62a2]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::6045:ad97:10b7:62a2%6]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 23:35:43 +0000
Date: Tue, 4 Apr 2023 20:35:40 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Orr, Michael" <michael.orr@intel.com>
Message-ID: <ZCy0TF7tbgYXZcyy@nvidia.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <ZCV6fZfuX5O8sRtA@nvidia.com> <20230330102505.6d3b88da@kernel.org>
 <ZCXVE9CuaMbY+Cdl@nvidia.com>
 <5d0439a6-8339-5bbd-c782-123a1aad71ed@intel.com>
 <ZCxTZQJ59boMFJNZ@nvidia.com>
 <DM8PR11MB5733892D5D21375332EC6855E9939@DM8PR11MB5733.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <DM8PR11MB5733892D5D21375332EC6855E9939@DM8PR11MB5733.namprd11.prod.outlook.com>
X-ClientProxiedBy: BLAPR03CA0128.namprd03.prod.outlook.com
 (2603:10b6:208:32e::13) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|CY5PR12MB6249:EE_
X-MS-Office365-Filtering-Correlation-Id: cacd4b8f-4f22-413c-af19-08db35654e94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jkmqzptGmc0juAJ1QYLhNw9rjkPE864Xpsv4uF6Y8dUkkTjWk28JPqbe7Wdwa4byRJYGZC7Le0bD2Jl0WaWDCPjnCWIdqfBrmbAfFxxrzG1N7bkPBvw0ZfLP4QDZk2PpxTTykvXRUZ6EgYfp/EFKbfd4U8YFx3cuIBCVALnx+L2P4R527AvmGyEIP+vNeL+Qyxk8OZwH4/z6KGM1a+kOdwNdSTDFHfZuPdE5qARg8GIpgcX2nJ9jD9avmBxeLhQXtkzatMcvZcUlNbhWvx+aF10xjiDNAuLww8W56mLSHgdUOQ1yfCcirOnIebBybXP6Ub4B29za0N7bDABoSOAjRngXtBrd+6+RzOMrvyGf4A4LY2U1ps3e3hMcyMytzr/NJkodwxdlryWRMajsljf4tmgE2KAcmMfK8StKUlCjXB/AfF72dNmQQWODZL+IoSxH71rRdSkXslk/K/x3htS0vvtqq9CVRRc9ynQCvTmRd0/Lfpqr13eDKdmA2Pc3JxCGbpeoK8boVuKrFNQrA4ah2iwQjeggAqtOjrxaxVvdc6sWuLrJeuybEkK3s+w00cvu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(451199021)(38100700002)(5660300002)(7416002)(2616005)(6506007)(83380400001)(54906003)(316002)(6486002)(86362001)(478600001)(6512007)(186003)(26005)(36756003)(66476007)(41300700001)(4326008)(6916009)(8676002)(66556008)(66946007)(8936002)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D+oGh2qHYKoS7bZF6pk2DZuf64UUsGE94qs0Rbel4zNFI8ZanOaMAxArnlR5?=
 =?us-ascii?Q?dnzei+19YTqBpXFFqVy9NUusCkX1yXOBE6IQhC0hmLnTJV0ZaAIVtBAynuAl?=
 =?us-ascii?Q?pVezYmIFZbCh15UXFu/nasaX0+5fpIIlq2hZA3p4AJWD2nqlHJ3rXs/3hqPh?=
 =?us-ascii?Q?+76aGrGKUMfWdF+CV20i0VjMkrrHInGqfPnCpgEHA/6cU7pyZThHxtza49vM?=
 =?us-ascii?Q?d97MVXJOLU4qbFblsq7ov2WVNZbJ7HYdNRYNvqi7WIwnh6R+wkG+POgM2WvK?=
 =?us-ascii?Q?IMKDSAh47TtHPAdN8XqeBqW+b9c6g+tbw95+VXRhW6NNR7ot4dhNQkJyT0k0?=
 =?us-ascii?Q?BeYccfwZspT8NsJz4rXRMgmeydGeMY+NG4tTy9Jn2ry46eab+q96AF6DdcNJ?=
 =?us-ascii?Q?hHTqG7UoqwNLecVkhybozC/15EfHD9MTQj9h1cvyRnEYG5TeuxaMjx7k06z0?=
 =?us-ascii?Q?+Hx9vkv91x+nqveeFoYSTxPPrZwbuJjLGXSxCwU84k+UwNAS70ht3PAvPGrj?=
 =?us-ascii?Q?vgSRZy75g1DG759R5xmtl/Ldk/vgRZ12ubZkYU451MWqNj6Q+VnCenqpvznA?=
 =?us-ascii?Q?JGKkFeee0DntW+1Y/1xd1B9oOCVp3+IVAOHoFj66RaQ/lbSdIetlnqB5MGs8?=
 =?us-ascii?Q?kB5P8JjCAWZ7ILsip6FLN2X9f0A4+mFq++L7Z1674OyARb/CJjh3ASWDYzr9?=
 =?us-ascii?Q?MMt+LFizVH+SDqm4itzhxzXsG63jyHGJo6V/bOkKEZ+dAFwsSC5Wdq99IvmS?=
 =?us-ascii?Q?nit3oKAD+2RI/NDr8/PngdfE8gOkYULlNDltQJtVuSGpKHDEk8s281CBujgt?=
 =?us-ascii?Q?XNOxCpix5HApXI8tBRvf6WnPyV+ILWPa3oAbKfF/7ciz+pBx595E4Tp2hOir?=
 =?us-ascii?Q?cRJNkyvwldXBnjw1JNMw7xjdOuho409KBcZ+L/n4VZFLGMgIfR3TmIJJfn4E?=
 =?us-ascii?Q?ZB5Yqj8lBZiRzszENGTMX4vW+ky/lC0o1uAyknEvZWzmByl6DPtvUDKHVbIu?=
 =?us-ascii?Q?HVPVQ+vzkEoRMFnXGzoW3bHngu70VgyHeKo95OJN7+eB89OoI9GUiVmuQHhq?=
 =?us-ascii?Q?BLfSw3gnucJlK1J040TyRiFmzgKSmQ+M99JcFkGTiPzNZ+ZjJtv5ro5PtEwY?=
 =?us-ascii?Q?XAsTcy9m0BTxSFpg55hueSbbIqqCiKcaGwn8IAceXgCpqTyirBYUkJgJzu46?=
 =?us-ascii?Q?vGzQwVOoiv7VA5E0e2z5zYVefIN2ktV1iKhQYmxzcN9JmBRuGze11sD2oJVZ?=
 =?us-ascii?Q?AM5sIvf74r1Hkxx0lq+3P9/m3e7aiUZOAuGjoPR/svxxHNzCLNP2LBQlsTJX?=
 =?us-ascii?Q?VLWsQkRghwhlNGKkk6NjamwAFbdMtsTuzgqgYnG1lkSJLgI7NL1rOaDbOYZH?=
 =?us-ascii?Q?qxDcQYqEY4WgSKjClMU0xOl/0BW+JxYR/YtvrTOqy//y0wz0B8+IQzfSKfJt?=
 =?us-ascii?Q?JnGBfZsugkE5vOhpWhb776EotftHM2HluNDnuPbFN7i8ZEWsU77xUuvmeb8N?=
 =?us-ascii?Q?FbrjUyRb9PaV6kGMEu2fSPK987mLe6C1a3K0mGH9BCV9LfSI8Z4t2pxCCEqF?=
 =?us-ascii?Q?W6iDkYrOhGm0h6GzwaymNtBwO059QpDqBRWIWySS?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cacd4b8f-4f22-413c-af19-08db35654e94
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 23:35:43.2234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RlVwbw4LiIS4sAZETjXc6sTocg6+OEaP951kM9EjQg1sFR0aBj/riLZI5ILKx2vX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6249
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DXfPH2ManfCZ42cxb68nhsHfn5KT+uS1EKxS55bvBGU=;
 b=N8dHqM+VMl+SAo/OfS8qUjdzG3It3L2M+CCwy0b/wSKR6/1K70fFNPYPInUTRydka9/Kn9JuQhT3oEKPU0jN/i/50qR96soMW8KBgq9ye5qt4I6S2I/L4vzNvmkbQIk3tUi20tiYqQJPArJRukJGCl0r5HL98+5MqirRvOYf5d9LXN5clWzSkGOuaYhR27CoX3K+FolBYYG87C8nVbar/XKEvr/PrtKKo+SPDcb7kUSgebe56vNGkkOcnzQMpBcmQ/wtvb5as46Xj9Bog8xBvck4WdR7QZp+sSmN24GGHpH98vL+M1LbAII2wIv1tiNtQtpTmd1Zr/oouD45N04Xfw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=N8dHqM+V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: "willemb@google.com" <willemb@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, "decot@google.com" <decot@google.com>,
 "Saleem, Shiraz" <shiraz.saleem@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 04, 2023 at 07:19:54PM +0000, Orr, Michael wrote:
> The Driver being published now is an Intel driver, under Intel
> directory, and using the Intel Device ID - because it is NOT the
> IDPF standard.  It is a Vendor driver.

This series literally said in patch 1 that it is implementing
"virtchnl version 2" and links directly to unapproved OASIS documents
as "the specification for reference".

What you are saying may be the case, but it does not match what was
submitted for review.

Send a v2 with the references to OASIS scrubbed out of the series, and
explain what you explained here in the cover letter - that this Intel
IDPF is not derived from the other OASIS IDPF.

Then you are fine.

> I am not planning to say any of these.
> 1. This driver has not reached "OASIS Standards Draft Deliverable" -
> in fact, I have no idea what this term means - it is not in the TC's
> milestones, and if this term has any legal/IPR significance, I do
> not know it.

It is a defined term in the OASIS IPR you linked to:

19. OASIS Standards Draft Deliverable - an OASIS Deliverable
 that has been designated and approved by a Technical Committee as an
 OASIS Standards Draft Deliverable and which is enumerated in and
 developed in accordance with the OASIS Technical Committee Process.

IPR Section 6:

 ... a limited covenant not to assert any Essential Claims required to
     implement such OASIS Standards Draft Deliverable ...

IPR Section 10.3 describes how the "non-assertion mode TC" works, and
that the non-assertion covenant comes into full effect for a "OASIS
Standards Final Deliverable" [defined term #20].

The OASIS document "TC Process" explains what steps a TC must do to
achieve these milestones defined in the IPR.

Achieving the milestones defined in the IPR unambiguously triggers the
non-assertion convents and then we know the IP is safe to incorporate
into Linux.

As I've said a few times now, Linux requires submissions to be
properly licensed and have IP rights compatible with the GPL.

IPR is complicated, the knee jerk reaction should be to reject any
patches implementing in-progress works from standards bodies.

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
