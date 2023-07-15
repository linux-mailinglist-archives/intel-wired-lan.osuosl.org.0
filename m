Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C40D1754841
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jul 2023 12:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6575D60B2E;
	Sat, 15 Jul 2023 10:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6575D60B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689417816;
	bh=Xd6cCOVJceB+spnj5JiW+0vfUy9dUEgeolgUim3lI7o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dBU6OLSQ9LTdpo38S75d3QlEltH3n6W3g6Qi8gVEVCTItaDHMMNfqVDXWuk/ReGgr
	 Z0YlZ3nCHvKGg3ZdWsIUZCTUhR2THU3WGJfV/QJyuguHl+S62xKheYIuLpnOyJAGIn
	 TDP1cCKGNeaw4U5sa/zqNwDzM1BIX4wCYcmFI62QNxz6hEfTl1ww/PDJBIsrYFSKP0
	 7nND943s6cdk1PLZOeL9I+MqbfZiz8ZTF2DQL8lL6ehlw+n0Sovd0SIcSOwskcoWQ/
	 9LdxI2Wqr988rikzJHT4TevfkOWcqeJtkRT1VtVCz2waurnOnodfVyRPP/Zj9V4HDZ
	 TtKDSxFgSvqwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwcDx0HgqmR6; Sat, 15 Jul 2023 10:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DDBB606A9;
	Sat, 15 Jul 2023 10:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DDBB606A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B30651BF301
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 980A1401CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 980A1401CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M71vJXk6bKo2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jul 2023 10:43:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D930740126
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2090.outbound.protection.outlook.com [40.107.92.90])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D930740126
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:43:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NshBX87rr7ui+Mr4VbRP8oLQQOp6ylWpWsDeqLHPr8dfY+YSrTOC3m0kdWTEmdgunE7qGipTbmecvTEzMSkHeltblGiWcnq6UQBXwAM8TayS/LmdQzBkzlhyn/GhPFSMvszKB+611Fg1MRvw3nkJ+OqYYvy91Wb2lbymwvPkQogivPC5iLAXtJyqgtKWE5/tbB6jzJgyUs8rUxqpqXWjIcsDuTZJo4lHu1J6xDitL34DhQAIxGdyYRF9fKeQx+RoH5EKemgvGhzy8AnD6LN44XweWxuYlBQpN/WBCcoNVCxPf3K+aFHWN7T7Q0pafhmFk1JNyUWX4tjkwQ2GwiBLxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wyqpeDwXxTXC7rmZQ4lq7ezcp5ckfRrAVwaX16JV1l4=;
 b=DjPqOnJ4M4GxcyJ44AQ8fPaRMeKYZ2q6mPksZt5cftluiG+z8+DlQNuCJgW4y4vsm8gPSTRDLelM6n3ysBA4H6TLUa57xg7nSGgw1+ZBQhj7eiNvQwhNpT3PsBUlm8+1c78GgTdK0RxFmvRYBTYd5zL/g0ZQ9pnyEDTdnlFYS0vHyQMWEZi+CqrYxXHrjKXMKFnsqJqWTjnv5qT9kULo6JyhYs+if9IbiZo1aedQi/yH60h3Ae1sPXhylGTp+7V7kNAYnw8WTTCLzCYm7fZ85/V6unI0/Fp4nkg0E72gLaszabAoqtkOj8klhf3ABtJPR3MjMq4hBN65LorhxhWt1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW4PR13MB5838.namprd13.prod.outlook.com (2603:10b6:303:1a6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Sat, 15 Jul
 2023 10:43:24 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470%6]) with mapi id 15.20.6588.028; Sat, 15 Jul 2023
 10:43:24 +0000
Date: Sat, 15 Jul 2023 11:43:17 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ZLJ4RQlmTvOS/9+d@corigine.com>
References: <20230713145755.1629442-1-ivecera@redhat.com>
 <20230713145755.1629442-2-ivecera@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230713145755.1629442-2-ivecera@redhat.com>
X-ClientProxiedBy: LO4P123CA0675.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:351::19) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW4PR13MB5838:EE_
X-MS-Office365-Filtering-Correlation-Id: ba53bf20-1cab-452b-c46b-08db852050aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2x6MdjYWyNXmRqUED9tO99orf45ovJrQVuCHy2qzR5Zi5DNp3mAkXg7ZPqAMzFmS9L/JxsrYuJXnZFYmQFnRYqPzn+VZyaRIq6VCY0tlsZOzpr88jH8VNs37FcyOotB81OxJBOG1a+K5I9/baeUxu6zV0Bd1Av23RxNGe0e3fsbh+EdgG+ZknQYFDrWpblFIC6PbcuHYg2abhZiTVZBkHqX0ACE4FspQRGzpZgr9de22CWHy3tgzktsx+YMoAg8KmPo6ziXDFRGrbgz2uAa9il++BhKHUoBWdmSrNEJUwgowjgFkAaXMxRJftAnW3vldlqt44m0pkDXO9W4C5xljSyEmE98+CyNaP8pu8TWpH+ftlzPBiIfSpBEVhOXcEBP3S7z4LEfF9Z9lI09a1hLbshzs8BfBvykAHa56AtHBLbVFlW+MCVq2ufR+0y8JL80nMC5WveWPTHRhCUwcIpRMTTCHTRHQz0rOosO6+Je2/ZtjcxpGl9CXB52EvG6tZDHi018nLo8ltQTdtH2KENnjwUy3I09d6FvX4qvpGCjIghZVzcabMyo+uEVb4OARekhRb+lzDxbDQwF9ut/77Jq7pqBGKDVunm5QUdP6OZzqbdo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(396003)(136003)(39840400004)(376002)(451199021)(2906002)(2616005)(86362001)(36756003)(38100700002)(186003)(26005)(6506007)(41300700001)(6486002)(5660300002)(6512007)(6666004)(66476007)(66946007)(66556008)(6916009)(316002)(4326008)(8676002)(7416002)(8936002)(478600001)(44832011)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oKfYEmG0YZXYboczMPI6Er1jAJV09yxbjrpIuKruYMr1B3pREt5fr/lMQwih?=
 =?us-ascii?Q?so+03moSZNcRdWfWDnBgvxS/2qYBjS3v0llqAbZ3maZAdrKvzzJn+D10Pv6a?=
 =?us-ascii?Q?BT1zxPpIS+9Vi5THT+dWN1XUFC8GpCx8ObaHoTVTt0eUU4cl6ujUrpaWnglz?=
 =?us-ascii?Q?Gzca8eTYNMDFLb2q+y3mfOLWkpEo4K7UYuFV2yLf5mY6pEmd2giSa6PIsobT?=
 =?us-ascii?Q?nEwWbA94D/EkovKyv0XM6Ofw9vxgRaKbQTfebqii0BOVIQqh5q6dBIYyxtYS?=
 =?us-ascii?Q?7GOOnIRJ3FEwpQ58hc7hmndHzqfruTl1XTRkrpH37KjoKUl01GAKVm/aaJpY?=
 =?us-ascii?Q?AqbWMjAuVMcZzy1+cCS9iF85DazI0nggJk1+G05gT5x0En4OxBKDtvg+kTUj?=
 =?us-ascii?Q?gSml9KcalSP+NnEkUWgehwID61n4GNnDJaGa6Ct4hLmUJB1v/R7R9YwqQA+u?=
 =?us-ascii?Q?gtTOwKiYGAlMFVbieiwDLBdckhoHCY/9P/UDZw2fuygmuvaqw/bYVrEmz00+?=
 =?us-ascii?Q?WRPIjEpgv8WOgbDumi9mg4PekhN+7tZWH4TF/a9tZ6rbYeNxjYgvcgymiPms?=
 =?us-ascii?Q?Th3daEl3tIvXdfbgSl1JuHQdmOryxWEi2VZ1+VG6QE9z9qdsrVfllGop/w6N?=
 =?us-ascii?Q?kmr+ps1GwQKBko3Qxzx3hVhGwkRLLhWuh47nwdC7ETfaAelHXab7Fg03J2+P?=
 =?us-ascii?Q?jBm1huDy1zfV1TCyADGSt1b9rKCBFZzrceCzIh9a3Byo7Z6BrwGxoN1oHrsL?=
 =?us-ascii?Q?SHlFF3d75950sJbQ8panogaPHJjx67wCmxd9lN6+TNoOFdEc/zEIxHxHOf+k?=
 =?us-ascii?Q?3uCtM8K8I8QnFA3gr8pl20AuqfywmrwFc0RCqa4YIxOmx45D0LC+VeEh4aqN?=
 =?us-ascii?Q?7btv1nwp866I8I/C8yurSAZD3DrD5tMZHCtOLApDJLw60hKhntnbHnZf782L?=
 =?us-ascii?Q?7W1ELXgQYlugf74EU78u2qoqRiE1mvIx5vTES7cM12VT6KScnK4LCn/J2Zvs?=
 =?us-ascii?Q?FkPhkPpQcOoTWMhHyAkEruwaO1/3ffmxXq8OSwuWoE4lWqqg6qlIEh5sBEdG?=
 =?us-ascii?Q?ywKXuf51Wq7LVeulQ0KUzRoIF2iHx0cm7YW9iom46JTtkNvD323GYXN9zApZ?=
 =?us-ascii?Q?GDTo2oob3Bg8JqAN0J7tv+2GUkCf1h8ub8wN5ni78k4HX+nZ/OW8d8pPSldY?=
 =?us-ascii?Q?ks9IQZDk8GMmYoDaW45nCbRmyeY5aiOyfvffTy9ptOy5pPtbdOsY4FciLEAm?=
 =?us-ascii?Q?uPVAGxmPmHmfbe/JoE3qHSYrelQY9FSxknDZu8MY7O/TNEZk1KSpmLYQP8iX?=
 =?us-ascii?Q?n8jCVBzuV7LIBbnDn42Ff1na6VrPFzLcQtL/Nkr+TJsnxTbut7vWbsU0+agW?=
 =?us-ascii?Q?RcGTnJk/Ktwn2aa3pERcIDgjnf+JjND4bpjYAdK+cyzNY79ONL5kAHK6vdTa?=
 =?us-ascii?Q?5yfjc4DPDNVtSZBQsm1FIC82sF/eOGNzSjZHz0ujjXmqkvFjdYPWAOU3NOqI?=
 =?us-ascii?Q?B0Kji0G6HXZ13POAIEbRWo2upEvOUAPavkP9+URz/dMYkUyvGODZssT4ecZJ?=
 =?us-ascii?Q?3BCWIi9bIXBGm+Q/AOzxr/E7Smgz2CGvc46Sc/cKSkC4vJmgbskQFHXv8sdE?=
 =?us-ascii?Q?rQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba53bf20-1cab-452b-c46b-08db852050aa
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2023 10:43:24.4512 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IheBml3MqURAgReKqNj/qc0qj+6n3HViV+oR3NeRlkgSZ0dO1uhy/OhRg8jB9qVJtaF3ajPpLtjYilNiIxEyUUbrYADhpWQNoff5NdsPKEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR13MB5838
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wyqpeDwXxTXC7rmZQ4lq7ezcp5ckfRrAVwaX16JV1l4=;
 b=GWVOX8DaudvqBuqUPbM0ZzG2dngvhxEn5Ik4cI3zFA1xNClF6afgaFTFmrycpLgO85aSbbdSGCyrJh1HwFdtL4kw059kvIXv7m9pmy3vTn2keHM6X0Ss1pRCji6qP9GX6BiA1GH0R9x3Y+cNBthjZ03QuvaF6mQ+mVA/iITgr+g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=GWVOX8Da
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] i40e: Wait for
 pending VF reset in VF set callbacks
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

On Thu, Jul 13, 2023 at 04:57:55PM +0200, Ivan Vecera wrote:
> Commit 028daf80117376 ("i40e: Fix attach VF to VM issue") fixed
> a race between i40e_ndo_set_vf_mac() and i40e_reset_vf() during
> an attachment of VF device to VM. This issue is not related to
> setting MAC address only but also VLAN assignment to particular
> VF because the newer libvirt sets configured MAC address as well
> as an optional VLAN. The same behavior is also for i40e's
> .ndo_set_vf_rate and .ndo_set_vf_spoofchk where the callbacks
> just check if the VF was initialized but not wait for the finish
> of pending reset.
> 
> Reproducer:
> [root@host ~]# virsh attach-interface guest hostdev --managed 0000:02:02.0 --mac 52:54:00:b4:aa:bb
> error: Failed to attach interface
> error: Cannot set interface MAC/vlanid to 52:54:00:b4:aa:bb/0 for ifname enp2s0f0 vf 0: Resource temporarily unavailable
> 
> Fix this issue by using i40e_check_vf_init_timeout() helper to check
> whether a reset of particular VF was finished in i40e's
> .ndo_set_vf_vlan, .ndo_set_vf_rate and .ndo_set_vf_spoofchk callbacks.
> 
> Tested-by: Ma Yuying <yuma@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
