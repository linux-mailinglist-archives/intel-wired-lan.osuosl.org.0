Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD8E70BBAC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 13:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59F124101F;
	Mon, 22 May 2023 11:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59F124101F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684754586;
	bh=8eRoOh7wQz0XH7uwkPaZ+ON/AriVY8/5uflBcTOoXHY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iEAbJsFEhqv3JrEQF1KXrRTHvysQWlgmc3JUBiQycsN3aCpdVrAKFmVDyDPHWrDHP
	 54CUj+S1SJZww2P8/0xyvt6m8wzPLA8/wTZzX7P5I89VfXMLgmoR4Dicb976DTk+qw
	 Nc+AyAOPMmxwJGBspqv3BSvJUwK8EhEShK7d6M2iP3BuTJWpqyv0ea37D8aMnZQrBf
	 LwETCJ1hOr2hz5dT3v+Gu3rvCyOtUEaEHYFj3ISLlFo8MadWrk9XPx5sRjxBQG3Jaw
	 1CaVAdNSVw0H5z/9UQ1bJYZ/u2iVIeoc+gB4d1HCU1VYD4lvnv3wwx5YxiEAR68aaT
	 Vzfrp+IPi6NDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vURqmnZ3xeot; Mon, 22 May 2023 11:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 420B34057C;
	Mon, 22 May 2023 11:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 420B34057C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D20A1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54F7982ACA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54F7982ACA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNqRgvYE3k3j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 11:22:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08CE282295
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2113.outbound.protection.outlook.com [40.107.92.113])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08CE282295
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:22:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lw0gOusQltDiA78vtwIkhiwWK/wXtyCgNq9ovaWeQdH4H4Sk3+wHe5a6aHVziQ2TE51UPsFyGQlErRf7zkmW1UIvEPd3sMQfEnt5JHhL609tr1VMki31fnb9641b2tOrhvO3qaWJIcNS04UrUkhCja9D64qYttd1aXKQcdNBQZTgKaxuFmsaJKCAUBPCEzJcPiBmeMM4MT302Tjx8fbz79nBM+tpYtp3bS12jXb8NWtXQiOxYZlYRwsBg8xlPe9kj+9Bplzprzyp5IlxBubeigzxyIfHeNSYusgjkBcicr9yEg6hk9k3R9WdjSsu4DbybugYFuWz3XVej95SPL0acQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdhXRfcmHVKGQ7yW/Lza8+UXupmzSuA20nQsbWKEAco=;
 b=cqhNKLvJFg676GXW3mcqzmDNU8PS7+Oa9IdyF4TKsQ3f3vcbWrDBfH5h9FnJiRM7/T4lv1IGXlNw+zma7cqTEZpg/6W6BddyqUFSvyLFZMeTmJmt8fbtO3QySMnFYFPv1YYiOgXu4v82AdsCvGa6SCr5X6oAs8NBCDbUEaxVVGU9tBsyaquK4UG1YTbuEQRAwTQtXcXF67J5tEYKnMdhFN8hHf+X4mdI2f1ArvLu1BS0B2VDV0PzKj/3s3wyeEpN5JyhndGUSCWMk1GF7/lrbaJCeaD5pBpujIwLtJneLDIUE6KGxgK5xneS8bycj3Kcyrj16LQ+xmWAX303W8SolQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ2PR13MB6143.namprd13.prod.outlook.com (2603:10b6:a03:4f5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 11:22:51 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 11:22:51 +0000
Date: Mon, 22 May 2023 13:22:37 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZGtQffLjYdt14Lpg@corigine.com>
References: <20230522090542.45679-1-wojciech.drewek@intel.com>
 <20230522090542.45679-4-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230522090542.45679-4-wojciech.drewek@intel.com>
X-ClientProxiedBy: AS4P251CA0016.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d3::8) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ2PR13MB6143:EE_
X-MS-Office365-Filtering-Correlation-Id: a71ae47e-e342-4a79-204d-08db5ab6e14b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GcjHxB27johDUikKtcHDE9VFT9OLKv+y6zwLwiqnysmijz1CfXl4pUr/yNFVTRLPp+gljY43iZbw8pPwM3S9N11CsaLCO9buUvRUow/EyTN7CyFIEEIuHCNj60bzvVYFj83R3bVMRKSwboRGVPpaGMk4iwgiJRM3k2+5t8yT1KbmNucbywQCqtCpsgGTICAh74t+UNkGYNlKLzDKDMmGXhJ8B3ZN+EhVrtxC4kN+FAtPHE3leNtw5kafFS8ALpR5i19waa2GpDRZgCG6U8jWeNXXrC1wOi5J+Rfcobroi/Z4+Agxf1R9KSGABnToVBUSnzt5qRcFXptuKab9pPmJiZNuR4IWQDY9wS2YQoikrkTlYa1fWHNKYCGjIkQhuWx/ncYhWfhcDH6jLnfrqcLZg/kJxa99rsY71YzqpeGcY9I265D0xuWwmGeax87xgcifcplHWGfS4uu1NL73fNGIH/9lGUSRq3juqyVmdaAqhStSwPuOYduOZjSx9zyae+crqIlgcAX+HRxXlb3MX0XOVJLnc2xPErj9AV2n126VoK1goRuT9cA+Au/g0rHsULDF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(396003)(366004)(346002)(39830400003)(451199021)(2906002)(5660300002)(44832011)(7416002)(8936002)(8676002)(41300700001)(316002)(66476007)(66556008)(66946007)(478600001)(36756003)(6916009)(4326008)(6666004)(6486002)(6512007)(6506007)(38100700002)(2616005)(86362001)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q3OnXFAbyDGg9qIDavbbSSebhgWf/yLgIYy6YE1uTW5ovMFqdCd9VNgYdW0Z?=
 =?us-ascii?Q?2DNSegPEGZBQbKbyQvQALUJtmj7LIBPiN9MUIpbcNdhCP7lXOeFsGtFrWxYw?=
 =?us-ascii?Q?2GjGHt3o2rG7Zi1JX80SJkXE93ZOwhKgeT7XvOFZ/EgI1XxneLih2WKTm1Hx?=
 =?us-ascii?Q?ylToqeprC+dd41YEZHmsW1H0LwhxzgchIO6TpbGLRxVuVO/Qj9zdE2mlw4hJ?=
 =?us-ascii?Q?noC/KAYnWD6IV2HETr1jYrAuZPqw7BZfEMyQl2P0j5R5OGConLmZ/egBsrC/?=
 =?us-ascii?Q?WYJJWFgDs7WS9Oqy1gYBJxlRO+sOUZTQ4kV3M+xgDRB+AKsjRroOfthf55Hl?=
 =?us-ascii?Q?0XWoJ4JN+9tlMeXUWpiKBguPMlG5yDL9x4qjrBkTUj7ifEMG2JwLCyVz3cb9?=
 =?us-ascii?Q?j5tyFlLh0aOMNet4QfBRnVvJJCMbRwptT11MKjQJWGwwJMem14XnyMaZ5MhZ?=
 =?us-ascii?Q?dxCnJ3MVF+n0s7HZqE+mbPn6X1IHGBWflmRxiyANgM0S8Uwm6onZVoT8wgbn?=
 =?us-ascii?Q?Pzr2dKawyMaMwV/BnkZvVid7rHS2bjVtrUl9hvsKnOJVo+kCYspVnnMc5KMd?=
 =?us-ascii?Q?10q143Ex5Xm8tvdfEb9OMgCrGtWeOwm73cIgsoMyJnTJm7XsgeK4GBk51adY?=
 =?us-ascii?Q?es8eJHXJVuww1/L8L46EXTgiZtf1NrbFn+4mLb2xvXVthQo3SUprofjfV7xk?=
 =?us-ascii?Q?QlUlyWFj0U//aUM/hxFUjlfibASzXpgQ99mHULcE88BsWbW/fyy+ipf3HXwc?=
 =?us-ascii?Q?3ftEkjjP5NQ/gRmtDe3o10hOTabiiEH12funFMj/LFMHcrTrJztwD1LCqmk3?=
 =?us-ascii?Q?/ec357//mIFS1JI5/WThmiYAtbNxzOrInIDlrymk3S4C5YghvYf9bJWeVVD5?=
 =?us-ascii?Q?aYoeIki2BW0IOLV5u42ppv3njQMIX/PmJj0YJcZqCl3xv+qtP8aFqSO+Xh48?=
 =?us-ascii?Q?u2hPIzLKb4h3ymtX764XrgsQ2tGHGZalWTYUzZ+aJms3Z3URntw/jp7Ul1jU?=
 =?us-ascii?Q?QyY0uhmKbidJqnPBswmGHov34RqOTtSrGMvzvmvdunSanfFHV3guSnQVzVbx?=
 =?us-ascii?Q?WFt6T3r1X+0ZEcu/QqEvNpW21db6Z115JztufefA34CzpwQRnmzJ1bGHoocp?=
 =?us-ascii?Q?3bQhEoRkFitsnsAKxv3+udgEh0FAaWpNCvQbAk0ltJ7euoBp4b2f+uhmo0Qv?=
 =?us-ascii?Q?TeHBL4Fa+AjXSAoMGj/VoxF4LWUPgzdlKE8tM5cnefIdeddRZIxmH39tX9XK?=
 =?us-ascii?Q?xJv9yVxW+D2KR+7t5qzT2uRAMFl+D5nFltoLwjLsJouR5ENQRrjQgSySEOtV?=
 =?us-ascii?Q?HHt4vbjmKkZHkaDHQ23lpxoMpBilgw+QFW3Dd7iWOnpFw9DvKojXCH+fJBrF?=
 =?us-ascii?Q?/Fdyx+dz7Zjf9Dn+wDhI4RcXCmkk079fUpj6juQK685cKwIWKp+5REyml48B?=
 =?us-ascii?Q?p7gpd0U9h7Obx/RKK8+4JtfL46ou1P3OtJXuqTbnLMYxCS09vJYsp/tUp+4w?=
 =?us-ascii?Q?5W01wqJpkrRjky7IDEmLfBrou7BRK9Get93bD7WTOWhZwlrEjAeOh2Csc81p?=
 =?us-ascii?Q?fpJ8c3csV9JptdMfcOIfyhe5ThCeiVBB6gRrWdtWa9iwgDxgKJWcdXQnk+ZT?=
 =?us-ascii?Q?AUberYzWPKa1zMEwrQJ1dswWVv3k8ojDyCMSiQafg2hU5oP1XJ3AYBOR8teZ?=
 =?us-ascii?Q?fwtjxw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a71ae47e-e342-4a79-204d-08db5ab6e14b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 11:22:51.4650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: znTR9tvLa0QKNk7ABUqTYmnN/znPk8JlpBMhFgHVWZl95kksIQyKUQzmna50ixLSUfRoSW552ifq/Sug00iy2BeOkpXH9Ei4WscYc2xaWiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR13MB6143
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdhXRfcmHVKGQ7yW/Lza8+UXupmzSuA20nQsbWKEAco=;
 b=Uk44f6pTpZkAuj79/XqLwg7Km/O1CYD9uVaLvnjo30arxq1co3WSMSU6eDoCh7hnVo4Q/ddKDkCkhJbrDqWDeVnF3ZF0C0LNc8ej5IE9rk0xJ7KEIxR+l5PqPNtfZDt99Xsp3xnhFj5TQ/THCErFUUJw34xn57oQCxAK2h/uW98=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Uk44f6pT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 03/10] ice: Implement
 basic eswitch bridge setup
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
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+Dan Carpenter

On Mon, May 22, 2023 at 11:05:35AM +0200, Wojciech Drewek wrote:
> With this patch, ice driver is able to track if the port
> representors or uplink port were added to the linux bridge in
> switchdev mode. Listen for NETDEV_CHANGEUPPER events in order to
> detect this. ice_esw_br data structure reflects the linux bridge
> and stores all the ports of the bridge (ice_esw_br_port) in
> xarray, it's created when the first port is added to the bridge and
> freed once the last port is removed. Note that only one bridge is
> supported per eswitch.
> 
> Bridge port (ice_esw_br_port) can be either a VF port representor
> port or uplink port (ice_esw_br_port_type). In both cases bridge port
> holds a reference to the VSI, VF's VSI in case of the PR and uplink
> VSI in case of the uplink. VSI's index is used as an index to the
> xarray in which ports are stored.
> 
> Add a check which prevents configuring switchdev mode if uplink is
> already added to any bridge. This is needed because we need to listen
> for NETDEV_CHANGEUPPER events to record if the uplink was added to
> the bridge. Netdevice notifier is registered after eswitch mode
> is changed top switchdev.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

...

> +static void
> +ice_eswitch_br_port_deinit(struct ice_esw_br *bridge,
> +			   struct ice_esw_br_port *br_port)
> +{
> +	struct ice_vsi *vsi = br_port->vsi;
> +
> +	if (br_port->type == ICE_ESWITCH_BR_UPLINK_PORT && vsi->back)
> +		vsi->back->br_port = NULL;
> +	else if (vsi->vf)
> +		vsi->vf->repr->br_port = NULL;
> +
> +	xa_erase(&bridge->ports, br_port->vsi_idx);
> +	kfree(br_port);
> +}

...

> +static int
> +ice_eswitch_br_port_unlink(struct ice_esw_br_offloads *br_offloads,
> +			   struct net_device *dev, int ifindex,
> +			   struct netlink_ext_ack *extack)
> +{
> +	struct ice_esw_br_port *br_port = ice_eswitch_br_netdev_to_port(dev);
> +
> +	if (!br_port) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Port representor is not attached to any bridge");
> +		return -EINVAL;
> +	}
> +
> +	if (br_port->bridge->ifindex != ifindex) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Port representor is attached to another bridge");
> +		return -EINVAL;
> +	}
> +
> +	ice_eswitch_br_port_deinit(br_port->bridge, br_port);

Hi Wojciech,

According to Smatch, ice_eswitch_br_port_deinit() will free br_port.

> +	ice_eswitch_br_verify_deinit(br_offloads, br_port->bridge);

But br_port is dereferenced here.

.../ice_eswitch_br.c:207 ice_eswitch_br_port_unlink() error: dereferencing freed memory 'br_port'

> +
> +	return 0;
> +}

...

--
pw-bot: cr

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
