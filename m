Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF23729407
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 11:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 367E584198;
	Fri,  9 Jun 2023 09:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 367E584198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686301323;
	bh=7iQmi/aBnHVMKbcLZOyT4Z8tHsNBcxDOfnLxTWornv0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zg7rm3fLIC+LuSVY0KnOdfn3UYMabzadXxg8RGD0uGk4PXBHMBjJpLUJ34ilK/p9X
	 TR1qEKD3D15EeL1OPa5TE7VLwY+bbzVtocv6wsF3QdMu0AnGNq8bWeKQ3Com2CLWMY
	 MIHGTtAesFsSFL78EssoyAWOOUGXv1CXoHnwoyTy/arnL8MaE0ZZ4xxcMJy6rmkg3a
	 VwuCLLvS0DMz/FkDB6MNdRFi+V8aBraY638nUWeF4jyKJyMPzb7VTWmg7nD5DhUNzS
	 NNcvJYnp3HwibsPLPVc4PhHZc5n0WLu07rqEyoip/JnIGLPDYukfalvXQGDvvaoKUi
	 t3tmcWt8bzraA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T9vNCUQHZjw1; Fri,  9 Jun 2023 09:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A6B683D39;
	Fri,  9 Jun 2023 09:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A6B683D39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 848491BF388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 09:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B6F04016F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 09:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B6F04016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tz_lKYzfxb-I for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 09:01:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 866D44015E
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2100.outbound.protection.outlook.com [40.107.100.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 866D44015E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 09:01:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TiuzoYg1zBi7r1syuCrf42AynHHPv6umgYloCdhzZoBIfH7ua66t2M0t+0Yj/MZt/2odkkYOPwXYBOSYxY704E3kwT4ZxC6BcuuYW1VhJJJR/AP0vuGhKh9Lk0TrmKr9C0WKHDmqDyYY7olSQEIMGMcgpjegpav60emkP2+gQZSJiSSYflWAhy+65KZfEnBXI4GRu4fxjns87qwBgcGIwyGkmetYcHtWN0LdqVE6NJrIwkOGS80AFLkSSwH5dSqC6lnY297I9m2lBgfc4gRu/wDkD6IELX3d2P1jTlFcflSB71wn7P7o7SdmzDz/QOV8ruVN+f2LTzyDDJdBxPjbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R6LS8hV/QoQhSG+OxWZABgG1PLN+jjho6tKjMhpZ36o=;
 b=GXyWSNK6S5ejPBaSZC98q3m/NMEvrY8Kj1u4LuKERcXRzqYeCOPkHQSNdlvq8kOci8ipl3okTY+RJyq3yvgaQxB6CwAtopvwu7Ry3jlZ/jR52tApe46d518iBoYyJm709qQF3Qn2gSnn0EvAOsBOhEAu6VeDkhBfeCAb4+SIGvaPcAyPKujOjbrshJqtP0RemQnr0t7oCMgep85Qk7skJoEEBKf/eOnESjT9Ha2jOsJncD7EPRr+2WrrwIEfLjd+Shhh3meGNwudCKIP5AlKdIKynA9odE4YNp3BF6YxRJLpFdweoaTtQbOqmnEnNhB/c69icw8qd8Vjdsdxkfy7hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MN2PR13MB4135.namprd13.prod.outlook.com (2603:10b6:208:260::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.27; Fri, 9 Jun
 2023 09:01:47 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 09:01:46 +0000
Date: Fri, 9 Jun 2023 11:01:19 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <ZILqX7x7RP/cN5+0@corigine.com>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-7-david.m.ertman@intel.com>
Content-Disposition: inline
In-Reply-To: <20230608180618.574171-7-david.m.ertman@intel.com>
X-ClientProxiedBy: AM0PR04CA0028.eurprd04.prod.outlook.com
 (2603:10a6:208:122::41) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MN2PR13MB4135:EE_
X-MS-Office365-Filtering-Correlation-Id: 286db36e-6e94-402c-2693-08db68c82721
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kh8DdgcGaIKtrWDnLEzMqHKzBGsovnOXJ5Bu5oBEPfckHnoEoosAXp5x5NvtQLKMCOaZA3u7BoP6RUWHZ7vWaCtKHuhX7d+V86Nc0NhqhqKiBYCGmvQ32IxAQ5b2c6Q0k+wU0V2VgcK1wOJwK06UEFF1Kk7R5rR0QYvnYt2HZankmRGx5hewlCl9UVDq7poOa6D8sbZbb4BMxdneJgBmOlLGnKnW2UxKyLZtMGr+SyVqeRUEgd+wlrp3KjjpUeIgNYm9zBAbFZAbUj4YNMe0j+e3V97/6cXoTGvPGBkhhmYpYnvIc9fCVO8svfEb3FKQfZ3k4+0cSEuknKMUIZ/wUOjZ3Jl4YbB4IrQGq9uwKGpyBOcX9IvUCFxks+WoTGeUW7r8r9g0Mr6X9U4DuPBVdeVIXuDnkoctaxMTF958fb6LSQDlLSmcsJFiZ38HDtBSduwh7/2Y7XDqn9pPLlWYngN7lyMQ0+3uYb0ihzkluDx55hrO5AdhSmBjS9lXXsjvM+T07Syepvz70KYRtAmuypf3kz8SUr8RQZ2ewbfh8PCk+L0F0LL7NxBIQQqbhsNu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(136003)(396003)(346002)(39840400004)(366004)(451199021)(6512007)(6506007)(38100700002)(41300700001)(6486002)(83380400001)(186003)(2616005)(478600001)(6666004)(4326008)(6916009)(66476007)(66556008)(66946007)(316002)(44832011)(8676002)(8936002)(5660300002)(86362001)(2906002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kezds9Z5tVyOKo+Njik7GzTnWR2pOvD+0931uFyCPxEKmvPeyB6hXuTz46ve?=
 =?us-ascii?Q?1xQvg8M6PPi890S+TaL6SHxayXY7qH6qCpvoZI12woefAsnMXHnE3y6+hxJ5?=
 =?us-ascii?Q?8mIKJNYzrOjOV1qn9Yrz3WnHBpZ2/PC9Nh0dT2SlMEZxMKK6GHjfaqCqDYjZ?=
 =?us-ascii?Q?K51wRlAS1ZEHO4G+iF2s4Ayg0qQzBJOg0xcaLUPI/dOO7LVBnu1coIS7eVOZ?=
 =?us-ascii?Q?BGfoVlTk4skXVM7ecfpL1O42AC0z01SzrANfi+a/zSlTFy84f46WDx3pVNmX?=
 =?us-ascii?Q?5BO4xWBKElPWgO+W/bo9DQS3cAXgvPV/QJm+g//x5mTQQi4b/5vfRYXa7fWo?=
 =?us-ascii?Q?e8jr/7cInE7znRyTloBAjQFwEIl4nlrSeb9PRMZ4qep5PdV1Ro4Bul0hqXAO?=
 =?us-ascii?Q?f07/sWM6oi9gmgvDZ8xpgDC7CtPiF5mXDDPQUJ2qsUqnQfgymnbHZwCnILiU?=
 =?us-ascii?Q?na3NpyX96pCH4717cq9voOd6QYRempx0xB/Gmrc8DCfDb183yNvydqh6eFXw?=
 =?us-ascii?Q?LhccQmrDmvPCk1S0aed6pq9DjUr/ng4BXUHkR93vnsVU0xuiEO/VOC4tMfVG?=
 =?us-ascii?Q?UtBdv7OWHTYMj7hTYhk37GQgJ8X07yF2cEL5wGUlaHZAZGU/tLcbFxufskfW?=
 =?us-ascii?Q?/aOIr7c1lT5VxS4Je/PsdeffS1/njA+G57pdirlWeJFLKXlex0/CnhLnZGaW?=
 =?us-ascii?Q?h9S9JaojYFXUIM37P/TfqZGoEw7fPb2ujt1SlP4kEvCCOI60hNZRlxYuSzFE?=
 =?us-ascii?Q?v+VZYNm+R0HrxmdaWb4Ztfqif54QCJQcwe+Bzcm20YdFUWWyjbZuBxTUr2mS?=
 =?us-ascii?Q?rVPwxhtky9DVhZfwSh/qwTpupQkcB/8HBFDhNnUmuy+9bQQssatdj+8ZV7qO?=
 =?us-ascii?Q?Xfofz29YF52DUYGkvn6Lq1yVtinjvuhwX8LxRseXekBwpQKdg7zz2xDxBY/M?=
 =?us-ascii?Q?+UhdNyngagBmGnujonryIRoG6pz64qrW3bbPcjqtWG1t/9D6tiuFkkjfC/oq?=
 =?us-ascii?Q?cj93WM1jh9BoPpAqCFwU5IXXqkzTgW4QZCR3UHeZUyyo12A9VdBmXQ09+Soe?=
 =?us-ascii?Q?TBhZ/IQ1FWysJkGVSD77bPXNLTrQAx6pQJm1w4pvp/TZcOOedRr8398GdQ3h?=
 =?us-ascii?Q?Kzpu3t0zwCwnsyVeygkeJtWL4KAQ6UhticAO56ecOnbZTaWdE+yIeuOKfmYV?=
 =?us-ascii?Q?1SAiF4XpWdpGAHaDYi9Ay0UXPD1sIsoBiCfZ798tfhuFBePWpDdOtJB83cYe?=
 =?us-ascii?Q?DMCVuEiNSPYcK2fF/7AVEZ+LuqZsmxQU6clDAjX93R2yJ5WO9zCiUMPxrO+P?=
 =?us-ascii?Q?zegPcY2tlJ3GvmvVom8CICAjwzlaRI1Zku4dNTl83VO2yZ+wl/uhYU9t60+p?=
 =?us-ascii?Q?iVkoyNdAdHLU6TjBTyIwvteShmlgN9StnM4buuTT5Cv0cPhMtgcWMTFlLZAw?=
 =?us-ascii?Q?aSxRmwa+tuzDgPX6gPyxLIbExQPObIh1wyetJ+Z+C9ky/IOIVxrV/rqES+S1?=
 =?us-ascii?Q?eL0lC6kCG5ZwnExvoGPpxXLHc2nBcjeif4oYRpt5naLizQCWTFj7OElu42to?=
 =?us-ascii?Q?Jxurd235CMWp40+Qc3GA0ogRxTLfFaPnueq5/G0OFp9y0y9dYtW6H76+74Ed?=
 =?us-ascii?Q?Ph3dIbZKPLnmDBWA8ypJzK6tAOo7LyuO6iSQnIutEtajdgs9/7NCGjuz+KRH?=
 =?us-ascii?Q?KRXuGw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 286db36e-6e94-402c-2693-08db68c82721
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2023 09:01:46.4919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WW4KQMM2t3pUUJjW4H2weAIiy/Z3c0FQQlT2Z0X9DYdsUOlU5DoHpv9ehrp3xj6N3b6RTDqdtY0JhNIjuygjC8idzRUeons8mMuYRGO0NgY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB4135
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R6LS8hV/QoQhSG+OxWZABgG1PLN+jjho6tKjMhpZ36o=;
 b=oKQZb+iR5T9kaiWDS7XiB4Ct4/QFW3KFUeha4p41o9HvibOcm1I4Y/+9s5iFypXxsQMn8vMAQS6LJhbVMrGFSc+KeRt486nqGdg+QWryv5reMTxSo2xmVwMwu8u2MQ+Pi1UPC7swpOoqha1KEOoy5YFXJdiiBeOWseLi+H4VUTc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=oKQZb+iR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 daniel.machon@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 08, 2023 at 11:06:14AM -0700, Dave Ertman wrote:

...

> @@ -245,6 +353,167 @@ static void
>  ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
>  			u16 vsi_num, u8 tc)
>  {
> +	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
> +	struct ice_sched_node *n_prt, *tc_node, *aggnode;
> +	u16 numq, valq, buf_size, num_moved, qbuf_size;
> +	struct device *dev = ice_pf_to_dev(lag->pf);
> +	struct ice_aqc_cfg_txqs_buf *qbuf;
> +	struct ice_aqc_move_elem *buf;
> +	struct ice_hw *new_hw = NULL;
> +	struct ice_port_info *pi;
> +	__le32 teid, parent_teid;
> +	struct ice_vsi_ctx *ctx;
> +	u8 aggl, vsil;
> +	u32 tmp_teid;
> +	int n;
> +
> +	ctx = ice_get_vsi_ctx(&lag->pf->hw, vsi_num);
> +	if (!ctx) {
> +		dev_warn(dev, "Unable to locate VSI context for LAG failover\n");
> +		return;
> +	}
> +
> +	/* check to see if this VF is enabled on this TC */
> +	if (!ctx->sched.vsi_node[tc])
> +		return;
> +
> +	/* locate HW struct for destination port */
> +	new_hw = ice_lag_find_hw_by_lport(lag, newport);
> +	if (!new_hw) {
> +		dev_warn(dev, "Unable to locate HW struct for LAG node destination\n");
> +		return;
> +	}
> +
> +	pi = new_hw->port_info;
> +
> +	numq = ctx->num_lan_q_entries[tc];
> +	teid = ctx->sched.vsi_node[tc]->info.node_teid;
> +	tmp_teid = le32_to_cpu(teid);
> +	parent_teid = ctx->sched.vsi_node[tc]->info.parent_teid;
> +	/* if no teid assigned or numq == 0, then this TC is not active */
> +	if (!tmp_teid || !numq)
> +		return;
> +
> +	/* suspend VSI subtree for Traffic Class "tc" on
> +	 * this VF's VSI
> +	 */
> +	if (ice_sched_suspend_resume_elems(&lag->pf->hw, 1, &tmp_teid, true))
> +		dev_dbg(dev, "Problem suspending traffic for LAG node move\n");
> +
> +	/* reconfigure all VF's queues on this Traffic Class
> +	 * to new port
> +	 */
> +	qbuf_size = struct_size(qbuf, queue_info, numq);
> +	qbuf = kzalloc(qbuf_size, GFP_KERNEL);
> +	if (!qbuf) {
> +		dev_warn(dev, "Failure allocating memory for VF queue recfg buffer\n");
> +		goto resume_traffic;
> +	}
> +
> +	/* add the per queue info for the reconfigure command buffer */
> +	valq = ice_lag_qbuf_recfg(&lag->pf->hw, qbuf, vsi_num, numq, tc);
> +	if (!valq) {
> +		dev_dbg(dev, "No valid queues found for LAG failover\n");
> +		goto qbuf_none;
> +	}
> +
> +	if (ice_aq_cfg_lan_txq(&lag->pf->hw, qbuf, qbuf_size, valq, oldport,
> +			       newport, NULL)) {
> +		dev_warn(dev, "Failure to configure queues for LAG failover\n");
> +		goto qbuf_err;
> +	}
> +
> +qbuf_none:
> +	kfree(qbuf);
> +
> +	/* find new parent in destination port's tree for VF VSI node on this
> +	 * Traffic Class
> +	 */
> +	tc_node = ice_sched_get_tc_node(pi, tc);
> +	if (!tc_node) {
> +		dev_warn(dev, "Failure to find TC node in failover tree\n");
> +		goto resume_traffic;
> +	}
> +
> +	aggnode = ice_sched_get_agg_node(pi, tc_node,
> +					 ICE_DFLT_AGG_ID);
> +	if (!aggnode) {
> +		dev_warn(dev, "Failure to find aggregate node in failover tree\n");
> +		goto resume_traffic;
> +	}
> +
> +	aggl = ice_sched_get_agg_layer(new_hw);
> +	vsil = ice_sched_get_vsi_layer(new_hw);
> +
> +	for (n = aggl + 1; n < vsil; n++)
> +		num_nodes[n] = 1;
> +
> +	for (n = 0; n < aggnode->num_children; n++) {
> +		n_prt = ice_sched_get_free_vsi_parent(new_hw,
> +						      aggnode->children[n],
> +						      num_nodes);
> +		if (n_prt)
> +			break;
> +	}
> +
> +	/* add parent if none were free */
> +	if (!n_prt) {

Hi Dave,

I suppose this can't happen.
But if aggnode->num_children is 0 then n_prt will be uninitialised here.

> +		u16 num_nodes_added;
> +		u32 first_teid;
> +		int status;
> +
> +		n_prt = aggnode;
> +		for (n = aggl + 1; n < vsil; n++) {
> +			status = ice_sched_add_nodes_to_layer(pi, tc_node,
> +							      n_prt, n,
> +							      num_nodes[n],
> +							      &first_teid,
> +							      &num_nodes_added);
> +			if (status || num_nodes[n] != num_nodes_added)
> +				goto resume_traffic;
> +
> +			if (num_nodes_added)
> +				n_prt = ice_sched_find_node_by_teid(tc_node,
> +								    first_teid);
> +			else
> +				n_prt = n_prt->children[0];
> +			if (!n_prt) {
> +				dev_warn(dev, "Failure to add new parent for LAG node\n");
> +				goto resume_traffic;
> +			}
> +		}
> +	}
> +
> +	/* Move Vf's VSI node for this TC to newport's scheduler tree */
> +	buf_size = struct_size(buf, teid, 1);
> +	buf = kzalloc(buf_size, GFP_KERNEL);
> +	if (!buf) {
> +		dev_warn(dev, "Failure to alloc memory for VF node failover\n");
> +		goto resume_traffic;
> +	}
> +
> +	buf->hdr.src_parent_teid = parent_teid;
> +	buf->hdr.dest_parent_teid = n_prt->info.node_teid;
> +	buf->hdr.num_elems = cpu_to_le16(1);
> +	buf->hdr.mode = ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN;
> +	buf->teid[0] = teid;
> +
> +	if (ice_aq_move_sched_elems(&lag->pf->hw, 1, buf, buf_size, &num_moved,
> +				    NULL))
> +		dev_warn(dev, "Failure to move VF nodes for failover\n");
> +	else
> +		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
> +
> +	kfree(buf);
> +	goto resume_traffic;
> +
> +qbuf_err:
> +	kfree(qbuf);
> +
> +resume_traffic:
> +	/* restart traffic for VSI node */
> +	if (ice_sched_suspend_resume_elems(&lag->pf->hw, 1, &tmp_teid, false))
> +		dev_dbg(dev, "Problem restarting traffic for LAG node move\n");
>  }

...

> @@ -362,6 +735,155 @@ static void
>  ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
>  		      u8 tc)
>  {
> +	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
> +	struct ice_sched_node *n_prt, *tc_node, *aggnode;
> +	u16 numq, valq, buf_size, num_moved, qbuf_size;
> +	struct device *dev = ice_pf_to_dev(lag->pf);
> +	struct ice_aqc_cfg_txqs_buf *qbuf;
> +	struct ice_aqc_move_elem *buf;
> +	struct ice_port_info *pi;
> +	__le32 teid, parent_teid;
> +	struct ice_vsi_ctx *ctx;
> +	struct ice_hw *hw;
> +	u8 aggl, vsil;
> +	u32 tmp_teid;
> +	int n;
> +
> +	hw = &lag->pf->hw;
> +	ctx = ice_get_vsi_ctx(hw, vsi_num);
> +	if (!ctx) {
> +		dev_warn(dev, "Unable to locate VSI context for LAG reclaim\n");
> +		return;
> +	}
> +
> +	/* check to see if this VF is enabled on this TC */
> +	if (!ctx->sched.vsi_node[tc])
> +		return;
> +
> +	numq = ctx->num_lan_q_entries[tc];
> +	teid = ctx->sched.vsi_node[tc]->info.node_teid;
> +	tmp_teid = le32_to_cpu(teid);
> +	parent_teid = ctx->sched.vsi_node[tc]->info.parent_teid;
> +
> +	/* if !teid or !numq, then this TC is not active */
> +	if (!tmp_teid || !numq)
> +		return;
> +
> +	/* suspend traffic */
> +	if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, true))
> +		dev_dbg(dev, "Problem suspending traffic for LAG node move\n");
> +
> +	/* reconfig queues for new port */
> +	qbuf_size = struct_size(qbuf, queue_info, numq);
> +	qbuf = kzalloc(qbuf_size, GFP_KERNEL);
> +	if (!qbuf) {
> +		dev_warn(dev, "Failure allocating memory for VF queue recfg buffer\n");
> +		goto resume_reclaim;
> +	}
> +
> +	/* add the per queue info for the reconfigure command buffer */
> +	valq = ice_lag_qbuf_recfg(hw, qbuf, vsi_num, numq, tc);
> +	if (!valq) {
> +		dev_dbg(dev, "No valid queues found for LAG reclaim\n");
> +		goto reclaim_none;
> +	}
> +
> +	if (ice_aq_cfg_lan_txq(hw, qbuf, qbuf_size, numq,
> +			       src_hw->port_info->lport, hw->port_info->lport,
> +			       NULL)) {
> +		dev_warn(dev, "Failure to configure queues for LAG failover\n");
> +		goto reclaim_qerr;
> +	}
> +
> +reclaim_none:
> +	kfree(qbuf);
> +
> +	/* find parent in primary tree */
> +	pi = hw->port_info;
> +	tc_node = ice_sched_get_tc_node(pi, tc);
> +	if (!tc_node) {
> +		dev_warn(dev, "Failure to find TC node in failover tree\n");
> +		goto resume_reclaim;
> +	}
> +
> +	aggnode = ice_sched_get_agg_node(pi, tc_node, ICE_DFLT_AGG_ID);
> +	if (!aggnode) {
> +		dev_warn(dev, "Failure to find aggreagte node in failover tree\n");
> +		goto resume_reclaim;
> +	}
> +
> +	aggl = ice_sched_get_agg_layer(hw);
> +	vsil = ice_sched_get_vsi_layer(hw);
> +
> +	for (n = aggl + 1; n < vsil; n++)
> +		num_nodes[n] = 1;
> +
> +	for (n = 0; n < aggnode->num_children; n++) {
> +		n_prt = ice_sched_get_free_vsi_parent(hw, aggnode->children[n],
> +						      num_nodes);
> +		if (n_prt)
> +			break;
> +	}
> +
> +	/* if no free parent found - add one */
> +	if (!n_prt) {

Likewise, here too.

> +		u16 num_nodes_added;
> +		u32 first_teid;
> +		int status;
> +
> +		n_prt = aggnode;
> +		for (n = aggl + 1; n < vsil; n++) {
> +			status = ice_sched_add_nodes_to_layer(pi, tc_node,
> +							      n_prt, n,
> +							      num_nodes[n],
> +							      &first_teid,
> +							      &num_nodes_added);
> +			if (status || num_nodes[n] != num_nodes_added)
> +				goto resume_reclaim;
> +
> +			if (num_nodes_added)
> +				n_prt = ice_sched_find_node_by_teid(tc_node,
> +								    first_teid);
> +			else
> +				n_prt = n_prt->children[0];
> +
> +			if (!n_prt) {
> +				dev_warn(dev, "Failure to add new parent for LAG node\n");
> +				goto resume_reclaim;
> +			}
> +		}
> +	}
> +
> +	/* Move node to new parent */
> +	buf_size = struct_size(buf, teid, 1);
> +	buf = kzalloc(buf_size, GFP_KERNEL);
> +	if (!buf) {
> +		dev_warn(dev, "Failure to alloc memory for VF node failover\n");
> +		goto resume_reclaim;
> +	}
> +
> +	buf->hdr.src_parent_teid = parent_teid;
> +	buf->hdr.dest_parent_teid = n_prt->info.node_teid;
> +	buf->hdr.num_elems = cpu_to_le16(1);
> +	buf->hdr.mode = ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN;
> +	buf->teid[0] = teid;
> +
> +	if (ice_aq_move_sched_elems(&lag->pf->hw, 1, buf, buf_size, &num_moved,
> +				    NULL))
> +		dev_warn(dev, "Failure to move VF nodes for LAG reclaim\n");
> +	else
> +		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
> +
> +	kfree(buf);
> +	goto resume_reclaim;
> +
> +reclaim_qerr:
> +	kfree(qbuf);
> +
> +resume_reclaim:
> +	/* restart traffic */
> +	if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, false))
> +		dev_warn(dev, "Problem restarting traffic for LAG node reclaim\n");
>  }

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
