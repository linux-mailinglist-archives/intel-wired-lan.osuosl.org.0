Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 230396DD5F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 10:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21360419C3;
	Tue, 11 Apr 2023 08:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21360419C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681203096;
	bh=c91hnr36U27xVE5ycGFufrgye2bKYnrT0t73s9VBt6I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UN80hUBHB8fmSYg1TPUIvV3VxaGjtq3Tt9gYKCi6TtgLzExp3r6b2/sdHBoLvRb8h
	 PY4vFUaVKqSJ7qREazfkvIGVlBBnvlF1ydH1U7wBk4T4nJ9PyGK2HKv/r6sVFvttdu
	 Ip4Vzx2k4h6WctYng8hSk7xcaf7ChZMaVW7ukpiqGcJaml8LO1QBktSuDvHtYkawKB
	 SvmMskSDVuEsZ+qQBGaDm7wuMC9SEBxIG04YWQ33xv5RgVvtj3UuFrDwrsKpAsjMWe
	 MgoCc32Z1n7EDXXvDnYQsRlIxMa9P1kgUz9jj36z8A5apIQHNSq8LXwa3Js1kS/TG/
	 nMzJq0POpewXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2_AMuU0Z9W1; Tue, 11 Apr 2023 08:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B376341953;
	Tue, 11 Apr 2023 08:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B376341953
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 02A061C3BDD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 08:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB51A41989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 08:51:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB51A41989
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpn3de_kCsUB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 08:51:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADE1841953
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2107.outbound.protection.outlook.com [40.107.244.107])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ADE1841953
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 08:51:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLvqrfGl9zIQ40XR/0FI2Cpmz335QLE36a/1ocsxjzkoAfNqrQC+TA23FK8fR7+AZm49BvtYl8VLCPzZez+v0ChzRS0Wk65XxuDPUii/1TdZAr1aqNBJSk3N4kTgENR0jB2TGz/1MUd3PMhNqjN4phuM4qfUgicBI3FWw6Scobz0tY0EpE1VJi7/9Q7ITkW0wjWDMMfmTiX6b7HKqm/h98YdsJTExhwHAuqbmJjwwzpW+1P/JVlf3olFVnRDi9u0EB3uaLGwHDcvOGPgTau4rUveTD01zvwDxHH2xh8OyNE/0Po5JXasu34V7KHGFHaYrfvSZLlkmVyxt4kjTCO+3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mAWRbM1V6GpXrkXTuLN9N+EdSDcf9jb+l7Xq+QKPUlc=;
 b=XmCtyRDPs9rEG7hnBEl2/7/zGd5Zp29UCaCn6JaysljIcTFKq3eUQbYxy+F/204FQJgwmpR+vreBfPwro7o3DkZ2qnaeetAGllptu6KquVpmbqGDx1yrcNzaFu+a2xd6hI2UwsWlWpqELnhCAAFk+btWCAtLdvciHDy9SPTAptp4Qqp+razJIjjbH6bonkQtkFBUfdazWZ7btXDLr5xuoirnWFrpRnJJqDUfRMwvfQIco2ckhXRRmYaNKPqqSgi+Dkr90rQn5p7avLMqZtkRxqpgswQN/rj1aKDWFJF3Tzwp7aQ8ZW6vPycjSJQtRfTgtV2H98BQ+lOubGxE+WXHIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB5525.namprd13.prod.outlook.com (2603:10b6:510:138::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Tue, 11 Apr
 2023 08:51:25 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 08:51:25 +0000
Date: Tue, 11 Apr 2023 10:51:18 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZDUfhqA41BZOP9PW@corigine.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-2-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230411011354.2619359-2-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AM4PR0101CA0075.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::43) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB5525:EE_
X-MS-Office365-Filtering-Correlation-Id: ec10ed6f-7fc9-4471-71ca-08db3a69ee5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LMpyGW5hTriniubGv/HhgsDVIJAyj8iRHs0IKW344DjGxrLPMrGyvSbFc76l4kChlAk7bcuoNGxgj6YEQj/aWp0WlUFiEPeIq89hhoyvKb8IaWfc8J3lNBcVlM5lw660ToJH4akZvC8HbvL4sq0BhCnPytM6p5z4gcYs7eeXGTaxg3U4pDSm3bwYoJvjiyvUryOPPf9iohS7pVA2lpl5KXEZ7kM6w3ZDsaKpX2WCY+mQao5fk4nlewUQamjP9NdtnsJa7NX6IU6ZKXcYH7OPiMeTlSFkkDZF8ubtXtFHVKYMS+9UIdoedWU5+RjdgCMBk/1lDz0+LbPA0Gwx+zyMXjcON+71Gk46gqu7K+pm7mFQaCi99tqnmoasdYgC58+jgmpBPz/X4IO3Gcn2vS88dIihpqDiCYr8bRRVtdvbyW9C5/peF42BMW3IlMTbRS/S5J5Ly0SYpWBkLAJSKRZXjCxf/9L9h6a+ORBrx61nSFcN9Ysm7D7vliwMvQcPp37nUjMG8Oux7thSAw5VsuqKdgjiK3CXWit+AUSMeDvVDas7QS/Cg8Q/yQzKAKW0YqFK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(376002)(346002)(366004)(39850400004)(136003)(451199021)(478600001)(6512007)(316002)(6506007)(186003)(44832011)(54906003)(6486002)(2906002)(5660300002)(4326008)(66946007)(41300700001)(8676002)(6916009)(66476007)(7416002)(6666004)(8936002)(66556008)(38100700002)(86362001)(83380400001)(36756003)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ak9Qn4aVtXrnCKvKOYuT3sOmRECV8uU7ZoyCHNZE7bKduKp42pmAIU6/5GG/?=
 =?us-ascii?Q?TiL/ZqwR1ZGH9TD8NzTSZqbyxiF1B1twPittBzkKv/GMUayjqQjuGCAMql9A?=
 =?us-ascii?Q?8ss2FK46LU9Duaa0xLtgwi9ELCFCusbj8NPwSnkF6lX+BEalD789pM0I3WFo?=
 =?us-ascii?Q?SaFrXC49g5OzGHKTXjKGW3Nxl8Rmx1p4c83j+0SQbGWepzz2Vp6Incq20T7h?=
 =?us-ascii?Q?Ii9D1Viso4ySsB8mRI1J+vbqepDes7AwcJlc6VV+YE7C4EkFj3BshwTw0rx2?=
 =?us-ascii?Q?nv1O1bW+5rXkvsd8VbCdrqvLcgTHj2waZnp52Q7z1+7ZN+oZPLvHioKoyfo9?=
 =?us-ascii?Q?RqwisaMw/8i/hhe/FJ0arW0UmXKlCQfqqfGiGvySPhJsDf23A8NWA3vB9YGd?=
 =?us-ascii?Q?Hca2UaFVcJz2R082lhUrruhHM+LGe+4QoOLQUwKiCoUeFQAuP0ZmWdQO3Afq?=
 =?us-ascii?Q?PhQROokIxhNLQBCQ/Q/fJlPCtb6FhHcyWNjVnHMvZOooa5LjiJZQuxHg73JV?=
 =?us-ascii?Q?HZQuuiXJQmYdW+NvRqJzfjla6meC07yBsrvGKuZJyBPeBHuscX0BV9C3X9uu?=
 =?us-ascii?Q?+QvyXutAHg8x5Jb4poUp14/zD2ZVmHy1zT/t16vDhjgueZUiusUKjr5YIJsl?=
 =?us-ascii?Q?DJFfDTc+1zEFSaIyyDz4sU/IWumZCrxwhpq9z+UGnfx7pQ+SDgy20kLLMNZD?=
 =?us-ascii?Q?f9fWX67o6asOgMgcIuVICdDEEBoqhz8ueEOhC0fPucfEZqP9tcwKFzXcgBdu?=
 =?us-ascii?Q?uHSxAHeOlcAz65kK4ZizgTmGd/aK49cpZ9jJnKiCDItPvp17rrBUNE2RCOO0?=
 =?us-ascii?Q?JQb1rlSjKlIX9OIGbd6AdwoQ7OqMJE913AZ1eaXDD7t59eiQ3Qt9klfVAZm3?=
 =?us-ascii?Q?SdWLUuLmY5mmaWYZcXw+72FWd52ViG1D58YRJKBS9tUyDzBBwU8qHJY5fzze?=
 =?us-ascii?Q?9Pfw/0JiiU+iJsstbQsOfU6GP5lVAghiDIQRO1cCdUy+ZWLdgfiTDbnPwleu?=
 =?us-ascii?Q?mdjKYsWjcFhdfg1Qgk7f3rH7s4LuMPfNOps3t3RB/74JJ/AMYjU1ba0iEVZ6?=
 =?us-ascii?Q?/Og2SUzYlrK0sj66vEMlgxUs0GeX3UdG/V9UUO9OtEp/Ai5Lg7i/lbmawkBi?=
 =?us-ascii?Q?Tu2oK4rMK1xgwcHk6X0ykWqY4gTdQlaLlEFlKr5iewXlIZKWnmMuO/FK2Eol?=
 =?us-ascii?Q?TyxeP1F57pEDgG4HMw3cgOKkxMuFF50NoNg0FaPod9+WhndCkYSa7WrhVA0I?=
 =?us-ascii?Q?2gr7BOp1VcxX56thDlT0Yq3gxRy2TQl3WGrQkD69wVX2tb1vb/yYFTdVIy7D?=
 =?us-ascii?Q?ezAnGfA5gLoNPYymwDsS8YteU8EzWeeGktguPbHQNVecUalsd6ZI4pRITuom?=
 =?us-ascii?Q?V0j3uHq83D7Ax8NRukpwvs7ys/VvBWw5KK6eedtNROSKloGoEQ5sl04f6Vj5?=
 =?us-ascii?Q?W3i08ORuz63TsKENeGHTiR1bB6Ds0WSiTa42IYtNMeKdRBUj4xChMmZme41s?=
 =?us-ascii?Q?I7wtMO6t7Rq9dI54JMWJYZoAbRVpQxi0kfsEu800lRG+UKUKzQKhXdJydZTv?=
 =?us-ascii?Q?is73gJMRAJZUv+JN7RgvCXSBcfmetosY6Ax0mtNMcN68+upb1mMF+IacPQ22?=
 =?us-ascii?Q?rD7XhpeX5yyjd8WaK9aTDEKU/VTK8EXaRTXeQw8kCiDx5Lya4vxU67kan6h3?=
 =?us-ascii?Q?saFp/Q=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec10ed6f-7fc9-4471-71ca-08db3a69ee5f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 08:51:25.1476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l+Nx0RvE4uc6bcAWl5wcABtIobqTh8K0XdMPjNu+qZ1QjC3ZOx2eQNX0aR2R+DEkQkHB7rOoPAmp4rihOqgpkYDZYYTO7ocPVn/Exbzxc2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB5525
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mAWRbM1V6GpXrkXTuLN9N+EdSDcf9jb+l7Xq+QKPUlc=;
 b=fAdEm/47/7OprNuMrYBe/Oomd1X48Ac87/MEOv+xr0d//1++MUlJjqDWC6CBfMUNumpzNRwPONix21FQQ8tqKwVnQ/vafyKjLHPBf69t/aZg1tIqyYASII0B6oqJjsyHXDEfHcsgHb8EkOJ82kGXMCUsGnGJ1+K7WimsTNUSXwI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=fAdEm/47
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/15] virtchnl: add
 virtchnl version 2 ops
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 10, 2023 at 06:13:40PM -0700, Pavan Kumar Linga wrote:
> Virtchnl version 1 is an interface used by the current generation of
> foundational NICs to negotiate the capabilities and configure the
> HW resources such as queues, vectors, RSS LUT, etc between the PF
> and VF drivers. It is not extensible to enable new features supported
> in the next generation of NICs/IPUs and to negotiate descriptor types,
> packet types and register offsets.
> 
> To overcome the limitations of the existing interface, introduce
> the virtchnl version 2 and add the necessary opcodes, structures,
> definitions, and descriptor formats. The driver also learns the
> data queue and other register offsets to use instead of hardcoding
> them. The advantage of this approach is that it gives the flexibility
> to modify the register offsets if needed, restrict the use of
> certain descriptor types and negotiate the supported packet types.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1201 +++++++++++++++++
>  .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  666 +++++++++
>  2 files changed, 1867 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> 
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h

...

> +/**
> + * This macro is used to generate compilation errors if a structure
> + * is not exactly the correct length.
> + */

Hi Pavan,

./scripts/kernel-doc -none drivers/net/ethernet/intel/idpf/virtchnl2.h
reports that the comment above starts with '/**' but is not a kernel-doc
comment. Which seems to be correct. It also flags many other similar issues.

Please consider running kernel-doc and resolving the issues it flags.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
