Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B3E741105
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 14:39:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C166740627;
	Wed, 28 Jun 2023 12:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C166740627
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687955958;
	bh=S2ZZKkHIjnlqvg0bUQkQgm22NswDmO3O74EplhqcjE4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U5XlyBJX+sjoQC1hp6v2Z2oSHqHLBmYvR+cIqMn8OD2Dl/ZzC5+sUDZ3es787CKcu
	 CFFoIyRqU4wOpKWNmTIHSC82tiLoCrjKiopbuoYH50E3o95ghyv00IMA7GjCi6MPKa
	 izUPDxZQ+IIVdorGnGGYK1RO5uiClQpKYCeQbh2y0t9SGShvM+YniprCJus2Mpm5GU
	 ZDbpq/rBWLq8wTDHCRR9O7Kf28b0rfVeSpW7suvD+SY2VqeKMZrWa9yKO0pJZwajGc
	 lNlaGZMLOSJhXJM98dO3pKtBeQ6FlGRHJSBdnFzRkWFFFA7DENlKvOCOQSJEImqdq2
	 0awGp1xnzDVKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id enfEaTo2qV9p; Wed, 28 Jun 2023 12:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5391B40620;
	Wed, 28 Jun 2023 12:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5391B40620
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1591BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 12:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71EDC60EE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 12:39:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71EDC60EE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJw17Wyfie-k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 12:39:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4564060590
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2040.outbound.protection.outlook.com [40.107.95.40])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4564060590
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 12:39:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fALqMYHSHCnPinkXailoCOLt8N9YttamAmXdVmjzxoE0TvNVh+MVYoXoXNWzC4L8VMJqLzp4E1AaB1z4/4SMXMixLy74v3Zm5y6oU3a2wBqOecMjbmS29ZPPj2nTv0HdeEWQtqc1OoMBYlfHxGazK7tKS50awEZzLQdecJ/0HOvhtP7SiuYT6qOsxwHCEoyTNlyEaDHzvzI1Yk4N2+pr5zAqvMq3llwJZLEAJWOSJQQX94QQRHVWszEXbyyA2WrhCJ5K3I7K+xPsIW07xAz3d/gVLNg6ZQbx1cMTVUsvMbCUdMZIR0F47ZcmAc3wgWwCB9eZ8P1i44+HMB1QAOi2RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHN9WuOLIT9/JBUB3Trhwdbfmqfh2J6iUEHAVsdGhAY=;
 b=QXGsc9OtBzBCK2X23Tycw+5LVsX4eVOxQ0skoGPj0faXr9ie6+BhPKxDQGlClO0OoFGepTcXVUYOypYrC6l9DJH3Rox7VjF5R3jd2PFUCNEVkCzJEJuqXcDFSJ4oLgAm+5jQ1a41qLhZRYPkwgDnI8MN1vN4M2jwiSc5zbM0ZYQ+80e8TIwQEkNJSzAxDpiDGrLYQFQgLsTkxFFAPbdjHszT/GFtiwJPKRJKicada7cgszNs2SxE+qc3yEnz06bONDsSDyZB64DNJXCzxhC8DM1abLtEtV2H6r+wtVnwvZImzRU5UrxWpuUhB3WMBtVVztmUJoUmuVrfKqN1r/m/Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by IA0PR12MB8863.namprd12.prod.outlook.com (2603:10b6:208:488::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Wed, 28 Jun
 2023 12:39:07 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::f7a7:a561:87e9:5fab]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::f7a7:a561:87e9:5fab%7]) with mapi id 15.20.6521.024; Wed, 28 Jun 2023
 12:39:07 +0000
Date: Wed, 28 Jun 2023 09:39:06 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <ZJwp6nam6/gI7Ru1@nvidia.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com>
 <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-ClientProxiedBy: BLAPR03CA0114.namprd03.prod.outlook.com
 (2603:10b6:208:32a::29) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|IA0PR12MB8863:EE_
X-MS-Office365-Filtering-Correlation-Id: 32081720-521c-4e11-2b3f-08db77d4a9e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qcJGBil+wJ4yzBYDBZxKZ5XKxNDAqRAKdKBBszue2BHQNP9MDt4akahh+X+fnTdf8aCWoXXgz33UCvPJI3RB5iUb6o4cqIFjcyPFMD2D3pbUaSuq74mqw3YzTqnJ9UW8mp/xy/XIhuvI9A5kB+gDrcV5CA8dmxgQNZNk+AmKQf9enSGlMkwle8if414G+HKHBaG8owdfm60sa+WV20xCcKd3Fal3UL5El4R9X8ZZX/jVUQp4N9Eb14gHWwptujgJKHF9ZTEc1pLXZTqrdh2r8bpISsbu++F4g2jXB6HWN7eKBRfrVlmluT0uSJUMra5LuvUgaA56VnypZGqfxes78zzVbNvAdCgeaaJTAXqImIwWJGR0ab+Yx7sC7zNdrucG/7A7TAZOFOc/IO6y/0Pz3CKSY/jOykU66HYOjtvGuA6hTWqM/U1OaxLesYA09TeEatQS1fzk8KjzVrPAOK5aaLRUVewgm6J2sCjTWAvB4zXZsf/CZWhPdJghTP1Jr/68Rocvh6gTZg3iivaRLdn3vGO3SeT831cnKh9lllkzMSDbmFWIaLFhYby42Q/1zJv8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(39860400002)(136003)(376002)(366004)(346002)(451199021)(5660300002)(66946007)(66556008)(4326008)(66476007)(6916009)(478600001)(36756003)(316002)(8936002)(8676002)(4744005)(2906002)(54906003)(41300700001)(6486002)(186003)(86362001)(26005)(6506007)(6512007)(2616005)(38100700002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pAr1qGzTJBGIIfQHsCgjm0uFobgLEzIPfaxIKnumDAaSERC6t6kyoQO4E94x?=
 =?us-ascii?Q?mIR1wlAVHwtAbUMV4tvNslg7BvOaj06soMzTLguLzmNLJsf53fm2QN9YBgFp?=
 =?us-ascii?Q?G9lcIIKGm05f3D3HLKOhndg1zk9dT1KMKiZ4sM2pJl9aTPaLM2a7Ejv6D0yJ?=
 =?us-ascii?Q?mWPELP6/y2ba20NlleHb6w3VMEH89yWihqIBeNwiYnfwZ7UoZACBsoWavEFH?=
 =?us-ascii?Q?oxKG1z7NCfWP50Bz1iXNl4YNhqSCNngivt/NGBEgXD8jc/0qoSq2VoHSva+r?=
 =?us-ascii?Q?b7p2b3B/24jm34EgILaujaEvK6b+QWQBIfFpJDAXUdF58Qae6gnhYDLw17fV?=
 =?us-ascii?Q?yyp96mJyk5M5W5ZbWeohdYNZGxEv7Y5CtTPiRZh3wDAavhVumk8pJwqux4NF?=
 =?us-ascii?Q?qGLHtTZeP2GyfENMOlWVXNCtkqWhf0yOXAja5tm5ZfStqtXYD4c1ClIqnK94?=
 =?us-ascii?Q?SbBqFIGuuFofbqnf9P1DPRcHG+fQteZgAp5tJyTOr7ynmP+Vynsv0v7U4VNE?=
 =?us-ascii?Q?2lMBY0RYO0gXAK6VDp5Hv88DvaHnMwgR0O4M588THC6MDLoTbKStCkGEwngO?=
 =?us-ascii?Q?IgYKHw/Fmk2mIg/joiL9YzJMWYikY30A6coMWu0OAmwtI6dtVIrIivldg5Nt?=
 =?us-ascii?Q?bWhzBW1uacXaXhTIdM2GDY13Ftcg3H/sVaeWRIkXCQW4XQrU5TmHw43IYp0C?=
 =?us-ascii?Q?CF1LC4YU9pcLrWzLXVXCYHvIgJPIl3jEzCRHY9swc3gHwjWGEZSr5X9g9sc9?=
 =?us-ascii?Q?u61laiAv28ZN5d4kWe4a/GdrCYOaY1zT8ETe6KN6mU93m3p5cbFBsRsBU5iX?=
 =?us-ascii?Q?Qb3OltLQ+3Ag1n4Z849NU95oY7J5R03L6ta5dYvQhccILETRmYAX7GK/nJVH?=
 =?us-ascii?Q?zKPh9RsUUHmfNJThUpseHK59jpDR6+OdaHXaJMkwvf9aISQTSbMRGIK+hnRj?=
 =?us-ascii?Q?xLXc6Tkp4+nB8uu7oCT87aBaIuj3XMQs0LEFGdZDK76U2Tk4FQo11+Dfm9dd?=
 =?us-ascii?Q?hxFbB2SwsLe4dBmeh1F16O43zYl1myGUfRlt0cbFI6aoLSvqtShslCrN0/co?=
 =?us-ascii?Q?ynNjAuly1VD2oqk5eVMUUKWkS++xi1ZKkwDblByrmPHiurPQlKP8iyifPhvP?=
 =?us-ascii?Q?+peDjdin5bl4j6D2tjO47dvX3IvxZMNhegFlb2y+t4jTWPtti/sKkl2QSlud?=
 =?us-ascii?Q?F91vG2mPAAk57Xm+q6pht7Nk6KbRD/ywFlfVBoWtlLKSiLgHk9NdgAcN96y8?=
 =?us-ascii?Q?ZLKU0U4B8ANrVaOIha1G3RZGRplFKqrIF0TwSC/nzMPU9l1Gbdz8REhsib35?=
 =?us-ascii?Q?HyMP2buqdyYv8nfndkVCfNrsF14BdtoV7JWGMsAiC1I1/6D9hiCW36dNIShG?=
 =?us-ascii?Q?834CfOqRghS7Z1a8PhP07W/lhjEx1QJUxnBW1ZN00U9li/GB7CKjGcnaukc1?=
 =?us-ascii?Q?0MQxNlbtk+tzTBNYyWtgwSm/9FaoHOxhsaTWHGPptAvHQXjqapJdgnaamisa?=
 =?us-ascii?Q?ZH2NP0KyYP8XjpJY9sntsqMNXuADwNGBiCuFDhVcJmOB3FYaXYcnjlKQk16+?=
 =?us-ascii?Q?4SZr5Ma9nC0X51Xpv9s7W6F6wAm7eeTVBb4qZ66c?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32081720-521c-4e11-2b3f-08db77d4a9e7
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2023 12:39:07.1640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W6wsPKEJ5DBGoseQTvJPpuK4OZCv3ELsW9jnUP+0nl7UiBPe/+f26jk+53nES11D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8863
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bHN9WuOLIT9/JBUB3Trhwdbfmqfh2J6iUEHAVsdGhAY=;
 b=ocCkFVmrQfvzx13YhZ9mun6Laj242Pj9N7JWTmaoKNKEZRgSYjjOXuBypdTZVRFTrrA+D7cp+M0bnAe2/3xhZgw1L136ifM23mIl/AG6aiWaoQhwRbKlio1NgQ6dNTF4pY5fef8m+QYflHwpjiXckihd4xnBdKGUcb297oZJgA90NSD0SP21dKDulcC1I4jxywVcmT7gzg/wWwkIgbG1TZ6zdaM8Yw+TjinovL8kGGHJcS6tDhY2yXoXmlxZTRUa0s5LMi0QawUrGn9KW4OaBEq8Ys/+dNuO8Zqplp2OGCzDoNSsG+HxxLjpZQRju38T9Rgdwdv+aWvrmdh0ihfgCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=ocCkFVmr
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
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 28, 2023 at 08:11:07AM +0000, Liu, Yi L wrote:

> > You can't call VFIO functions from a netdev driver. All this code
> > needs to be moved into the varient driver.
> > 
> > This design seems pretty wild to me, it doesn't seem too robust
> > against a hostile VM - eg these DMAs can all fail under guest control,
> > and then what?
> > 
> > We also don't have any guarentees defined for the VFIO protocol about
> > what state the vIOMMU will be in prior to reaching RUNNING.
> 
> For QEMU, vIOMMU is supposed to be restored prior to devices per
> the below patch. But indeed, there is no guarantee that all VMMs
> will do the same as QEMU does.

That doesn't seem consistent with how the kernel interface is defined
to work, I wonder why it was done?

Since it is 2017, I suppose it has to do with internal qemu devices?

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
