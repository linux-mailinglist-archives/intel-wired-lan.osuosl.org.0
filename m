Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7D975811C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 17:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5BEF41462;
	Tue, 18 Jul 2023 15:39:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5BEF41462
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689694751;
	bh=MLduLSB5KGk0efvghBG5fAnrDwD/C+oON+D3DDtLu+c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZNx610uQVBnz6DgGYafr9DPBF2NUM/Rguhv56qBn9jtAX37dbaNUtaOQ2bZuzsCur
	 2z9VTN8Xa+iYGBw0boquoJfuIxWPKs+fRjqIz8CFhzsvU4ZFSbFtskrCUhKpc/M2Y3
	 8G287AwniTPw4TqLYbI/DPaYkaCsijMv/6L6RGhfChzS3XZG/xV8q2dy7I3BGp+sPP
	 C8ENLiq68JgukhsV0swpEDOErRFuSckcEzD9zpOty4Z0u1xAu1JculzWhNwBr5mqfy
	 Qe7BmvjG0vcCJr3aFUMDJkuP+2Jnx/UKAQa7FVBvULfTpOMravlJwzSfAF84a1eE6K
	 51hv92koL7rbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDgappzb7hLB; Tue, 18 Jul 2023 15:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE6B14144E;
	Tue, 18 Jul 2023 15:39:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE6B14144E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01A9E1BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 15:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3805409B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 15:39:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3805409B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bngjidoQUyDq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 15:39:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CFF14026F
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CFF14026F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 15:39:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k9ll+Dcp0OcgGRR+h7OUdmfiGEHExCS/LB7POfv8ghIXZyzPlFswE6WbyCgPJB/p/EqG1Ev2qC8nPXs+Vw1tx8LvMBu+LhZPZ208iV3R6e15pLvmYUAHrajrJ9LCtauWO+3Ks5WtAh/zSJsTWad1zuxx64uJ2P/QZBAXSn9DKyU1+2VFwJohS8mknRT/V4TNltaO4Qj9NUfD6pdw6ayVJtGfd5OQVQhl1wdqJOSAPFU697tx23Y/rNO9CXf0CKxAz+x1Fp2R5kvNnjMR8Tre+8KwPEO2qX26xjgJX5u8qFykG+9mPj2s3kBi9c8oD1MpoZZDflo+H545xTjiT6VOvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0S67+YZTAPQkUlk4VaVgCaJ0lVEeG85G513G1lHatKU=;
 b=JP5maobFEKsSXGid4XG3f0ab9zN/BQ2oww11cqQ+fO/hKo+TcRGd+ocRC8f0+eDpxkSH5O6z0cx1qZ5Sbbci5QE8ANPGW66go87DbBVlETP1zMBmy6w7InVsMjnCfj4w2siBvF6mC0TJ+GqzQ2CqY66z4+q3X1WW4bL6PTL8+4RKjKSpYrHyMQzcqujJk8Ebfw3N16auzvatlSKJxS/r02Gsf32O1Y9cyR7N/EodLO/YFuqwSzGCGp/J9KwZ9mXicxLFQzCG0WJLAqTEoQwFmVPrzJcmCvPkjZYof/ssbmhfMJxK9zBvIPKvcMmKXyMDSt+ufIgGmwnEPuC9+Wi/pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by DM6PR12MB4942.namprd12.prod.outlook.com (2603:10b6:5:1be::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Tue, 18 Jul
 2023 15:39:00 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::5111:16e8:5afe:1da1]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::5111:16e8:5afe:1da1%6]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 15:38:59 +0000
Date: Tue, 18 Jul 2023 12:38:58 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Peter Xu <peterx@redhat.com>
Message-ID: <ZLayEkkaFgshJuDx@nvidia.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com>
 <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
 <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZKReFWNJSVcfhL6y@x1n> <ZKwpm1k+1hjN7oyE@nvidia.com>
 <ZLW2BgWI+yx7qKaf@x1n>
Content-Disposition: inline
In-Reply-To: <ZLW2BgWI+yx7qKaf@x1n>
X-ClientProxiedBy: YT4PR01CA0469.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:d6::7) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|DM6PR12MB4942:EE_
X-MS-Office365-Filtering-Correlation-Id: f7dce138-5a10-4406-ace5-08db87a51b0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4239BVp3NP4Arp4i5tjsc9uJ0LSWvZSG4z8rrq4cjGBLiHAhG/i3h0lSSSfieGBDWsR3WvfsnCkuuoc1ruFSFcGH8/GrEaZTZDm/F10JQyjEKVCEWMguPVFlRn5TX6RFmUrT37jzFEJLEPePd9P7tDHposc0ohwfIQBFdJG8ww1SI3uNdnEwUQJjlwI3jZOcqBwX5FbKYRgdKwdoivdeOxC5QqW/Y164uP3qhjrTkBnihNoCUSvHQA+E2SC6J8PJI8KFvQo0pFhgNARZ77H+1jgHAUxz6Iu/9sXg3Cjv19fm3NJ5nbvPNmdTiDP0A1oSUPu5/5RaplY+2YirzTby3QPMbHrjm1QYco7Y7ItmhWA10LFc4zx/EFphseLzGxWwTF4vq+V2/x1X2aZHMXwZQUgpE5OULIfYYekbx6w85LqiHLrlgKTvTS4SzizHdnqUK+NWO++uzm0F5/6rO3Koud4fAwkK9hwK3HHZTRKY2zWi5Z+ggZKyluC51rnLIs/Jr/8iH3sV23zvkb/uciuwriRipi11ivACDiHz7UdYTUatQW38pGW28eGZws0aIq4S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(66476007)(66556008)(54906003)(86362001)(186003)(66946007)(6916009)(4326008)(6512007)(478600001)(41300700001)(316002)(6486002)(38100700002)(8936002)(8676002)(5660300002)(26005)(6506007)(83380400001)(2906002)(36756003)(2616005)(4744005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s1lvx2/PPjNEhgRx/ffCJ2m9Go0xKuA85xFGEQOyDCQNEBjoZ+4ludbLYZsL?=
 =?us-ascii?Q?L5KBIhxKWlHH/Y6kFEBMkJGiovX9b97OIWcPBV6j70CAMbmC/Wyvuux/C63j?=
 =?us-ascii?Q?86NnrsYuAGrX2mfpCpQQFr54dpMrBWnTdPKrKwT7Fj+tjTLFKISSaEXf+gY2?=
 =?us-ascii?Q?qARp/PrVnRoYSuiqJN7YStIdRw4P7GDznzRiI5dJgBcrHe5mS/1sGAn9FSIV?=
 =?us-ascii?Q?s0yefuXOrNWdN4CuIOjMTVFdPxsiPhtKHxCfo4T5BwmS3Ow98YZsWY1GE643?=
 =?us-ascii?Q?Xmrde6zJGnOklTXvusbbXDEX6eBssua/9NPSvbzKPbH+wU7k8VxI7mCLRWcG?=
 =?us-ascii?Q?mWAjvvhzvM1QFAJjiCnxvZLHCNM7lIg3ov2/EO1QHiCLr1OKAy5ZOW/JxG5C?=
 =?us-ascii?Q?DuiN6vrbf1/fCretuk4K3f0tyu3vRYbi0WTX9Bi8NSxXxvUp3lTCBv8DX5DT?=
 =?us-ascii?Q?eYmHs2bM3zMrySKNe6SFmbYwqA4aeaZAK4QYbr9w6KhcVNC9XjcwiMMsFcwI?=
 =?us-ascii?Q?JV2rtuZc2K/qy4kjV941ECgIaZ3u6lRWmhYFD4OMUziCsQtm6IkCU/lf2ye3?=
 =?us-ascii?Q?nV1OMdyLmHakfbGvAgcfMeG3duSb7TPnCthz9vN3j7Y6ALMjA7W8puATSncy?=
 =?us-ascii?Q?kOHdhuIJz1uwhwK87agxGZ19pbitZqeYi4bdmkME/5aiS8DqjW8nU5LkDN3x?=
 =?us-ascii?Q?e+Tl2S46zL2FyvnEKw51l5sq60VS5RYoN1Nb3GIP0mDxmPT+0hU/l1dyo/Q7?=
 =?us-ascii?Q?jPQaxGDO8zmZHxluosHCrNH+Y9wxtE9bVRdqn19AJbCw+sEq3c7pLCQnukCo?=
 =?us-ascii?Q?2r6XIWkvdRLjWGot5x3zfbY5AKxnWIPo9XbO8thMKtO4WiU06UqlbPATQkJ5?=
 =?us-ascii?Q?e0hKlQ3lOaQhCOveitfbTpk9Jm9AIN1Aal1F/8u04GdqyzWWiS0748yKi4Ow?=
 =?us-ascii?Q?NiH5igAyr/bUrokZckdpqwUfwaxzt/57qifRxQi7qjuSlXgB4kEbq2CMmMqy?=
 =?us-ascii?Q?+X6tHSLrkjTibXkyrA2b8pNJRMhW4bwfLnRTRkOsTMOZ5AMwOPWVoH6F9XMU?=
 =?us-ascii?Q?L5kD7biHvPDweBr0pb3jh0zipOJup1mKnCnZgH19sXZrobkwfCRBl8p+/wW2?=
 =?us-ascii?Q?fdUJNcEAAhA1nA8OHTmGdisgpr8WB0JTiUWxazpXxg4IlPeFOPXhTamP27DG?=
 =?us-ascii?Q?HiBibbT3uOcZ+sntX3QJsr9YQvjGMJShDHqifV7a9ci8sBcwwf/LXax3bIyQ?=
 =?us-ascii?Q?Z6EbhQITdahOYDruyIihY2A4BQGDknpQZAG46u88LszqVAdz9JpCuaYZpDEs?=
 =?us-ascii?Q?jpS0IX4KhNCWF5ucFT63yY0bYodxTkz7GY1e8qDZGKZZuhtQuiugjLfUO8+8?=
 =?us-ascii?Q?cXk1EN2k6YQcbzOOuVvKNtBDs4RbpBf0w7HYxDfxvF0wbsjXAtbIAXHDNnbz?=
 =?us-ascii?Q?VRJNoItEzfpnrGjnX/1LltPxmctOeNvGomHhyo3ZpS4ybSVxXdZH0kmZw0tX?=
 =?us-ascii?Q?UeYOMKeM7gxrb22sm0ka1kYKIfAnHXCfwXZVmvzyFyyVyYdfV/TA6Chh4YTo?=
 =?us-ascii?Q?fJOrmrX/NWrZAJo4gzsCtHISna+YCXS8S3KVdL3M?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7dce138-5a10-4406-ace5-08db87a51b0a
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 15:38:59.7473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pv/n9Ed0a68ami/S0ZuWNycsNFSMIZwnFIjVHApVZR91vO02BmOSlINgrxLs1L/D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4942
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0S67+YZTAPQkUlk4VaVgCaJ0lVEeG85G513G1lHatKU=;
 b=I+xG1wBzp0ZEngWzq/ogRMBGPy3AUme2Yc1bSyLH7rtJHekC87QRicO9pY1SoS8EcFsn9KdrffEGOXMSkkJnRurkp4lz7h6fRla2X3FWM4UGNtYHvvf4efxwPUvpKzEtpKyGTVGQKPuSKAbwUJ1x2eiNLeq1SD8DRPAvtdo2WUAFKD9n/EbVZBwDSf6zlRZJkPflezW5hWNKCm+ssdADwHJuWn8x677C/A80OjZXxvFSHvmu4jPlRvimi4s3keCQnRyc/632AkuMBXO942aaK0lD8Yu5aW7kTT+W3oh6p9t8dq7rZRJv+i2ZiqG3WWUU4b6azX4tUZvXUIs9jIWZ5A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=I+xG1wBz
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

On Mon, Jul 17, 2023 at 05:43:34PM -0400, Peter Xu wrote:

> It may boil down to why we need to avoid migrating vIOMMU before other
> devices (which I am still unsure about..), and which way is easier.

The statement is just that the kernel cannot assume anything about
vIOMMU ordering and people can't make VFIO migration drivers that
assume the vIOMMU is setup before the entry to running.

That qemu enforces this ordering today for pointless reasons is
interesting, but it should not leak into becoming the ABI contract of
the kernel.

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
