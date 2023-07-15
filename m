Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACDF75483E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jul 2023 12:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31ED660BFE;
	Sat, 15 Jul 2023 10:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31ED660BFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689417790;
	bh=WSH+J7vsLA1LIymYRSvQi8VNAxv6dawwFMWJXpUCWkQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=90400FrWSmYiymRdGwHRSm2EqX90ajcHOJPCjFYTaI8fa16yKzIvd7DuCzeX6eM/a
	 muAIPgkWX5+6Rf0RltCEiW/zrIAhNzhEHYhBtbYfJY7WEnl1kVYFOFplgqrCy0aGLz
	 rvQg4PG77ImzdQyCqdJMG37fNQQXAb47Jgon07kEECKFdUNfQ5AJ8eWFjHB8JK93Eb
	 KraB8yRlMiYc+qZyOySOcJu3yhkh4+ZnMfSiHK38MKtEFIjR6YhLyXkSzdxJfqJFBl
	 871HX8ZAETHvZ0vbvd2h99z5+y+ORdmz7CNUlZmjhrM11e43LQnJxmX+X6H+yKvtiE
	 MMHlnDWZv2NXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEMdkE3QY-o4; Sat, 15 Jul 2023 10:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B47E60B0F;
	Sat, 15 Jul 2023 10:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B47E60B0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A81251BF301
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E9C1401CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E9C1401CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJjiSyZLa9EC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jul 2023 10:43:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 082C640126
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2136.outbound.protection.outlook.com [40.107.92.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 082C640126
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:43:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ph2148X3VsYzP62JUuijoqxLpB34hfZ6FrPmvqJZ0ovQxVZNkFpjr/dLGt8NrEIgwn5HE3MkziQtUMpQRaEqHPAVR13+zAZcgqgTQrq+IEFmbtFlR2mInOXgCw8vJjIVTT7JWpiepS58PxCa9nOgHSafOX3R2nCAkniwFdF7RHUCqPIJpVIQ9oEoMYNBGe3i1KpEEGz8zWytUeOoiSHhrQFypD4ab2jjGHmL874fC0xefdNWWET1uw313QvJaP+Q21L/AjssQWD8ZiLJwNMZ/gDvJLIPi6JH+EwZ9VEB6o5l6uu5uaePJx1MvOs3Cs/9Qv/1Y/CK91A601TXHhzgwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3NrbvjnZ09eds1Ix+BiXvxXp5KFnXuS5dKi9jQGEuHU=;
 b=aVWn+JtRuSXnxIt5hzRNZaKl0AVsHIsAAlCFyE+bfnXaI2ARqdzeTC8bcz3XzLy5S7I0Pvy6GN8TjzSnf50N1As9giUGT5bcylcNHf5q6FC/CbtM63AL+jYGO2ypH0CiuOco2hJnmzbbXq2LPu5qw7tW/0r1S4xWjg4jEFmyA2AfXHEkOfFo6RqzCQjrs2mVK7nQTwXdkPE6X8p0jkAsTSct5CPMHrkc21xpOEpesMMp5s1VBjIojvyf1Sb9nB+sz44re6+wtK5XiRyr+ZSFJVn2k4TgF2Lx3/ee5GnYsWVHyQDQ0MXmM+xeEqHF3UDu/xc0EB/o/kizfQa7KAFJ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SA1PR13MB4942.namprd13.prod.outlook.com (2603:10b6:806:1a5::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Sat, 15 Jul
 2023 10:42:57 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470%6]) with mapi id 15.20.6588.028; Sat, 15 Jul 2023
 10:42:57 +0000
Date: Sat, 15 Jul 2023 11:42:51 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ZLJ4K8tRdvwR4aAc@corigine.com>
References: <20230713145755.1629442-1-ivecera@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230713145755.1629442-1-ivecera@redhat.com>
X-ClientProxiedBy: LO2P265CA0419.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::23) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SA1PR13MB4942:EE_
X-MS-Office365-Filtering-Correlation-Id: 173f4147-9f67-42c4-8b96-08db8520409f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iSJ6/HiDkU8K3bkDMEj/O/DVDP+UNi+CG44BDsvz6o6nmGLVipl0KplyY/ZXbzbBiY//TUrScTQD0u+zY5IxsQ/m4wczZ4m439LpiVFLnxCzCBilAq2N7BD9L2adz2P+nRHkDkHop07zOjS/ynaHkd4/mKznCup38P4eAJcmMhKtraZ46y06Kfoa/8KZij2gAL69poMQIXUChebGxXGprnxrmyBkuoCCeQ/J7V0FY03pVgIpLQUxhxJp1yZvO/02rDQPCAp0xQuNZ+YEgNiCNgX+Pd8yECx8lu+NRdIYD3duulkouGVvu8yIbDvT6QzZflGbsxCqUitXZ7zOrEBCR/ohv6Klmkbx4E1g94SqB3ONiz3OCOBNPEzBihd9be/zSyLR6Jm0hn9hPTuxLrImwTdJQ78DoUZOjzgUNMykJztniJaKbwmhMsVTeqNnT22hZytSGRGUzb4r5Bw6u2JtnUzo9dDF4odZtteSePFosdp2EgiH/UFS5vcnHCm9YRKVcU5nTUSiZhxDSjGyoB9j+fWaruJlV/F/8GPsBAyD6yBWq5yQ3kHvlW5Cv4m3ln3T6tjhqhJXhKbFcCG5DFWsnBNTEM5J9tjqSoXns3JmBsU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(366004)(39830400003)(376002)(136003)(346002)(451199021)(38100700002)(86362001)(36756003)(6666004)(6512007)(6486002)(4744005)(478600001)(2906002)(26005)(6506007)(316002)(5660300002)(8676002)(8936002)(44832011)(54906003)(6916009)(4326008)(41300700001)(66476007)(66556008)(2616005)(7416002)(66946007)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UaWA+XFXuElvca5OKRY7olpyElI5+he7ba0yNGUSxtGnEq13ihpyDUi771C0?=
 =?us-ascii?Q?9iSlOLqQq/Xm6LasItqKWpeFQHyFrQkqnn1CinYTZ/6gFIpdeeAEUX/xWoLa?=
 =?us-ascii?Q?DLkJSuG5YwMxVYUDmiK7wadszWR4nBzrP/+qmJeawxBqLTYI3+bk7A8YJ804?=
 =?us-ascii?Q?gF3B04NXpoIYiD/4NIEj4viGchSQw935cuLUafOJ2X2RIk4dcVNTpDNx3v4G?=
 =?us-ascii?Q?ZU1nMMncjJSjHcCYrAGok3fF377DBje88mRdGDkFHl1N1Lz+5iyeQjCzo6b4?=
 =?us-ascii?Q?itxda9CUGAqRjB9L7gdBG8QFdHh2/16/qRhf1T/evtHLZj/O3gveWL1Sfo0Z?=
 =?us-ascii?Q?DLz4fOddAEIkJuQ6T8SUT+iHtEZxdjKKwq5BCFsA5TdwgRxxJCe37tBgonYB?=
 =?us-ascii?Q?MUo4mqm75eqRZEnq8wNpCVQeZIqzBKvDY4rwYFZ5105brI+ILb45qomj65TC?=
 =?us-ascii?Q?E00uKV9VhI4YmThiq4o77Fnr4IRQv/PfQenoutABheDBUGgZcG9zfCIJg8xC?=
 =?us-ascii?Q?TEsAcB+SKyHXFq1+IRveI1jbKOlbROKybOcjRsbeVMdPpZ7c0mDHQ6dmhch+?=
 =?us-ascii?Q?t110guAO1fBYZgb0cUISKainbcpZ/xf4dEPoXgohiIi4DduwgKNzCbO6+Lzi?=
 =?us-ascii?Q?cSCtRMEAiqrDo+Di+BmU/t8ypiEfK+W9WSTuv82WzDVyJsg5WTX7k4YleiYs?=
 =?us-ascii?Q?pcMkcYq3zaYj/LZOA97hH9Vrvwd6ZKlYoXFCUdqeJtWvUj323LRREu6xtZYi?=
 =?us-ascii?Q?gtfNwd0Z8EX8nMnP9vfGCcANHdvXErT531hZES5jPSsrrhqVhHVr1pMl4nyv?=
 =?us-ascii?Q?PgB0fx3saIQIkUdXg6SCRbott0Yq3/1o4Z6DDfW3zlWVDRzBfwHDfiEkZxcx?=
 =?us-ascii?Q?Bqb31oZk1QNfyu0J8ckwH68/TsRdNag5zvAZGdrCUIoq7MV4a04C3aQglbaC?=
 =?us-ascii?Q?wi+sE+s19UiQ6L2jguElh5btqmryc1C8vpgp+/tuCbVrXCxSzZa4yZLNxkgr?=
 =?us-ascii?Q?o3cqU9m1bbHE3aT8klcaHDzvOvxIryxAHnqWav9NU4ZKRQL20sB12wBPHZ+C?=
 =?us-ascii?Q?l4hiFqnfdRLPX6l5BiCjggMRtm5QMvgbYrF4xfrXzP22vJrc3rAa8YGKHPfm?=
 =?us-ascii?Q?nicnzUn8r+/eiG6C53IrHAfBsLckE0994pWHTeLi9EDdO3IAhnmVoFOB4nAK?=
 =?us-ascii?Q?Ow0ZYkb+ArUWGIHTNyX/Ld9Jzf+fcrNSoRvcIdgbIyu4oRiu22Qo22sGupJf?=
 =?us-ascii?Q?/LQ9RC+fDrTxWg+R2+PN57blam2nscg8hS4uVBuozdY5mFLveXOrqcdB+IDL?=
 =?us-ascii?Q?tl+FYywF2KCx4L1ZtwBTXL/Nm89yRf+nXOH3mzgE8c7+8S/V6JuSc1gLhK7E?=
 =?us-ascii?Q?3nDw7UySsYaWrkefFer3Ry/AXGh2fKhPS1AD9eO179EpGOB+VeonypANhI8k?=
 =?us-ascii?Q?txi8/WUfeT3YousmIW4/9Qd1hZ+b8jS8GgdVEpqY6Z5gNA4phZ4EQSVZkuLj?=
 =?us-ascii?Q?miT04oN4SVOQ19ZV5nDPq21JQSWIPXQc/NiuClW6DKf5Hu5qEFdsS3VZ0Q5l?=
 =?us-ascii?Q?UhrjrS6fHB8ny0uHDl+Z2tRNYp6tGiz6n70p+SBArBs1gu3PrvUkbZJniolY?=
 =?us-ascii?Q?qg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 173f4147-9f67-42c4-8b96-08db8520409f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2023 10:42:57.4032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oq4kEdcQut20Bi6XGilN0qc3CFC1tIhpiZs8QdfbhTt0xJa6vZXcvc2d2jGom/GC/TkmS0hv2MSMfxfuTsjkqn4cKBjWBKb4yTWE+RxjkGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR13MB4942
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3NrbvjnZ09eds1Ix+BiXvxXp5KFnXuS5dKi9jQGEuHU=;
 b=CtQr/ex+AxlYxKB9ZuyKS23sbGYfejVGKEWvITIX9K4fIHPhjyGjZOgR9VoCRWU6+l6xp9xJQF2MzFv4ULuz5ORd1KKDWDGjIhK7jQMUlb3p1iHBH4QTR4tiofM5sQ47Xe7TXCTRRlaGqOAthgbTgADuYnb1rF+aC3A3omDaDeg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=CtQr/ex+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] i40e: Add helper for
 VF inited state check with timeout
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
Cc: Ma Yuying <yuma@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 13, 2023 at 04:57:54PM +0200, Ivan Vecera wrote:
> Move the check for VF inited state (with optional up-to 300ms
> timeout to separate helper i40e_check_vf_init_timeout() that
> will be used in the following commit.
> 
> Tested-by: Ma Yuying <yuma@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
