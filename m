Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D427A72F7CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 10:26:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E73780B22;
	Wed, 14 Jun 2023 08:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E73780B22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686731206;
	bh=IItk5hHc969QAHO0f7jTs09IZwX/4vhw1fGAmhE+I3c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x7I7KLn0FOTCjbumJ6tR/NDLnJ+GmVKgyl/YybjaAr2+AYG4YJkvw7fwYFoUCaMtS
	 CxXWiCeYZrGwRaXQ6mt1b1aSNLLISLlSi6tjQxz4ZPScOixZ1YwM+Df9QA2pDcjPQB
	 o542cu+d1Hko2EU59VMBwdqsmB5lfR+SxqGSQ0Zlu3XSvHjvlNfaCc/Vu1ZvYKZMGQ
	 Vx1Ool4IwXva39jAxJiTrOAtwHhmkPXE6HjvQuNSdK1Hhpy934jzZR7wV3UohmU4PK
	 0h/yZ+Leqjb9YyPCgzqm/TAU4xy92P2SfLo3Xx4UrAI01ZjdwhmgsYUN71ddqfB5ap
	 8scdCqwMGl4Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0y0XloVSZAx7; Wed, 14 Jun 2023 08:26:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34B8380A61;
	Wed, 14 Jun 2023 08:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34B8380A61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BEB31BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72CA080A61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72CA080A61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ayPKBHhH3MJM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 08:26:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF8D98002E
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2095.outbound.protection.outlook.com [40.107.223.95])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF8D98002E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:26:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JiBeS9rZdW75o+3ywMh8k8leHb9S1V0Arus27Rw8tnBnA22MS/bpf0rsnl6vmk7oHqITPciDyZzdl16t2l0mWXNahEIcJdEGv0fD2zyeRJSnWorZE3dNvKIp7m/kDdCmVIDMBekdIq6vGJQrGT2FlAVoTxqWSauoX2NQSq7Zoy+7XBa18SB+C8aBBfIqe4BQaIDK0dTSHiYtULLJJCvUVJjH+YlrAhQkYCSQU8kSdUpbDbi8Wqn7iqp/Fri2CaORf8WXL8ceVU6uFA7GMdVEti02vSdTatHn6rVHs+S+P63v8WMMcWa6ilHsLNiXA8wxvnj3CaiCAN4D/VzznvFwYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pCKKjil58r0DFz2SbcSdYj2POnI55cwqCqmPRPzFl0c=;
 b=EXNnGcCN/YBkMzMY/ZVQbFmFQXRIfOLSrg0ggMKI2hsVQDGdWvoUE7j7g76L0sRk6ekFgmMDahhhH4eU4LYQS+oA5Qte7hGYijHHLaZ9TyE9+G7DR3vlehChrArlmAFL4NGGZ4QQozsuPPntirbxnWH9Ln5n0ZGrYTEDheYQT2J4cPQ3nAC8z8x6d1rrhnaVKG33q7Y/gMFkeJKstj8KFlPXQbu9sBwkNpNB222HdqV2vUvI6mH8FPe85ME3AtMxQWLMhXu17MHWRV4OyqIy9TZQf8zWIxBj1atyuluXkaPH6jS5P6IWqw/Fm7VeCGezKyWkBaDUm4x0GjgHd3YWxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by LV8PR13MB6350.namprd13.prod.outlook.com (2603:10b6:408:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Wed, 14 Jun
 2023 08:26:38 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 08:26:38 +0000
Date: Wed, 14 Jun 2023 10:26:31 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ZIl5t3x3/BDdHyhr@corigine.com>
References: <20230613121610.137654-1-ivecera@redhat.com>
 <20230613121610.137654-2-ivecera@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230613121610.137654-2-ivecera@redhat.com>
X-ClientProxiedBy: AM3PR03CA0060.eurprd03.prod.outlook.com
 (2603:10a6:207:5::18) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|LV8PR13MB6350:EE_
X-MS-Office365-Filtering-Correlation-Id: 73183385-f8a5-40e9-36d5-08db6cb11286
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 30eBGmSK42y5nLq5jK/gMBAWMid3W7a3YJdiNKByfrPxUMrqTVaj0vX9fDSHbN5+VXWGlroOzwO+l16pZJTnAWBDkJxzYHcg2x8AU80yt7Nhc9jliiUG+fNVs81lO4BnmDoOsWOCP5tfuVCp6LhSocYXqfSE0BOexBpgGyudQL5pCweXYvTr5Mt8QmrJ2px+nWN7m3BqRtb8LBBfYdP/c6oO374MHn/U84ZkKCYhsRuPVgC7L1MuT0s5BMyHj89JXSC4ABSHgfFEtG3G9KLU9PgkVdjwlOkXLotzWZ+WtCcmbHLUx6AbjOaB91n4cUYVdDDy9ocTsAjYCMfNcBsqR+rfLsfhGIy3HL0BB7yzgK8/8Oc/toH80I/juhIBIXs0bHDhqsD2qhj2WuaIiIgRzKxtBv2uxE0hpSdptHTAaxaEr2YkmrENvF3TulBXQRieHy+G+YQQxMF0kVSHD9pyuw9NKT/+NrUkesTOoR5MpSNtTSWQkyFlX1ZhrlOfR4ZmZ6v5fwHSG8mAMpyj8Cd3cunKOlGUrRp4UZKAB/TUf+1hyV4Z8fPXaU2Xoudb/yAU7Sutobhp1Kv/7gyFfqUdLXxRS2IqKbKdKm1VWqMXIv4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(396003)(39840400004)(366004)(346002)(136003)(451199021)(36756003)(2906002)(86362001)(44832011)(7416002)(6666004)(6486002)(186003)(6512007)(6506007)(5660300002)(478600001)(54906003)(66946007)(6916009)(66556008)(66476007)(4326008)(2616005)(316002)(38100700002)(8936002)(8676002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H5LyY2chuz1ZDb/+p33IYg5WO12IPhl82Q+i8vYdMHQ3c2MhkR9MkQyYfpwQ?=
 =?us-ascii?Q?Zz7bHM1vwWMOac0bfNkZ82kAdxRdiRQkSYaevpI+IpCCdswTwIeSsnJNiU1f?=
 =?us-ascii?Q?JlKv8uqRa9msn3XemPOdG9maCffEIpJ7ThfrFk+rD/cQthLbcy9IbgOpMZGz?=
 =?us-ascii?Q?Qzenw2ssGVQXIA1vt+ZvOjT+KMAdHwFos4UrsfYNRc1NrCQYi9Cfk0/zpouw?=
 =?us-ascii?Q?5WWG7799wYmJlkViJlhEHBbFEbSzaAbu8hjX4cNWeEW7wVwYUdZL6sXqNMG+?=
 =?us-ascii?Q?pQDn2k4TNNUb6IQ9BzcPkqzBCwLK62czQUamRxXkXRug1etbhZJoxnkpVaN2?=
 =?us-ascii?Q?6lq1I7Nln/tOWuTuiNVhuHSjolsqULlpDfIvV/o2XHsJsYU0a2axHsdLAOtF?=
 =?us-ascii?Q?OysW10BjZL3qubIzBxkqH56qeTu9c09mvZfYWhDJSrT1RCRrtCwoHhzHKF2M?=
 =?us-ascii?Q?0ntWOPjRV87rEgYwqhuDjNZgC1cT/ng6apDZVABcPUh/5jw3eI5nQlsNfw1W?=
 =?us-ascii?Q?yLqHGSDDqnGvdTL53/pfe9ldEiUAgeYZhLllBkf0yWSdNBvcDccce1xBBjie?=
 =?us-ascii?Q?6ROceP15AuToAWjZLcZNX1wnq63Sh7zskEJxypljhnroT5YQo3y+l39zagBv?=
 =?us-ascii?Q?SHJAAPv8pUI1YNB3iHNXlZePK6fH3lf70q2FL9RkfiJUeljUmphw1aO50lBd?=
 =?us-ascii?Q?UnwoBRZZ5EDgUpWhIws7O85VLlvq5wQrmRar8kg6NoRkrFnR6WjUDqlZafPe?=
 =?us-ascii?Q?cg8jeJtbCdPzH4qnyA/wgEkNQU0CXw6eh+Ej0rSj4J4wK6nPg2kYxqG0+auq?=
 =?us-ascii?Q?VclCLXcpJMWDAhLGPsyWcFQ5ckIYf1sOyMAVuZyH69JC7bJQRL5T0ijN6ums?=
 =?us-ascii?Q?XT52ukOQ3xPRce8y2w2nPSOobWDVAA6Ao9wH2dK1hSItg1Tf8rqMEo/1PSXW?=
 =?us-ascii?Q?OlfmcEhkLX4PXT2rBRK3HiNwVubDHT/C9XFFx6KOmcpv5JvltUZIrGe2f4h/?=
 =?us-ascii?Q?x7WjNBHl5mUlUHMKoePhy6x2HszLbkdfj8oVDKWt0YOUc1VF21VirpBltkuG?=
 =?us-ascii?Q?zqOMOTVhPrrUoER9n4xc1CKw6+c2opCN1iZJ+NMZFekT3ilnhdiqnprWsg3E?=
 =?us-ascii?Q?H1CyId2IOIRsxVdO+gwa6q1mz4hgk/ApEiq0OJVmHGfyZq3NtkZxdmHOZmKP?=
 =?us-ascii?Q?WreYXkkrCtYhshrs5/chEpX0Juz41zOGeqO3/cxnr4CRsQ9NGtUbFSWpEtfV?=
 =?us-ascii?Q?0qcrf8Pls2KB/13i6kA9ZwfSvvo7zVrDXUsUmBrj75K41lBYgxYvURkxieSn?=
 =?us-ascii?Q?x4gtGFCfLCttg89pJ2aQg1weG5K8JEebwtG7LZPkSCoKVz61wPjZK/tjWIdf?=
 =?us-ascii?Q?wLHXCbAMA82O6EARRXkIOa+AslLwb9XVyvXL/O8Z+loEMtganNBSmolvT+8t?=
 =?us-ascii?Q?v2EgKJC320GplCRRFqE3MBcbpQzeFhHQwBeR1osJMu9CTobeF1VuzGT6DR3b?=
 =?us-ascii?Q?oRjDwNwx96NX2V0nzTbtsgcbyl8cf3McFkAq6CM90+qr8SUuoI/0CqgPsBUU?=
 =?us-ascii?Q?vNuUX9sc3tM5WvMbXuFa7K+4vYPHXYWKtyrXX7ZF2pU0nAlKN9emZMYoG09p?=
 =?us-ascii?Q?M4LzB5SuN2q7fJfb3z6Z4OhTif+OTfslyyM9WUh9EIwqH+1dndPzE2o+DWZJ?=
 =?us-ascii?Q?viuHxQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73183385-f8a5-40e9-36d5-08db6cb11286
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 08:26:38.1101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 12bCrNKcIeB5Jd04yrELmpgrc2hoq2uGPlrrjGYWIEdL4I+thbS5WH6HWTYZHxoF/h0i1eJDwN0UkPqCQCcZCaHhF/EnGIyhUHdBsgzJ+uU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR13MB6350
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pCKKjil58r0DFz2SbcSdYj2POnI55cwqCqmPRPzFl0c=;
 b=or371LSx0Cjubrcv1aQQQfT89LcI5oGmmc+XAMEI7N2aL5fGGqDiKfzrbH8unpLgmcTIb/qkxEX4BDwsMlsJ8sLxeJWCXzx9JQiNsQPDE+tDY4hxluAv55l3Z/vbUcVB30R9L26rUwvvU/kiWp/inirvyJm2Q4/TiCzqPfqjCfQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=or371LSx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Wait for pending
 VF reset in VF set callbacks
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
Cc: Ma Yuying <yuma@redhat.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 13, 2023 at 02:16:10PM +0200, Ivan Vecera wrote:
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
