Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 356C572179E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 16:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE7AE60E77;
	Sun,  4 Jun 2023 14:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE7AE60E77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685888281;
	bh=+RKZob7MxmplU5mMnl02InR/6ffGOQiRbK3PKM+vbpE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qYFLxFg51zXThDmAXs++DYcF1sEJgJeNrN1KVGPeG81kyKciMPbJEn5mRlk/k99RI
	 J+H/p6nXlrMkz333qBBKL7BTCf3SlerIBbQycFFjivODb9nr3Gx9kOCZbdTCjrENlH
	 6HNwDqVX1vOoMIAJdy8TEUbc0KSrKDBogHr4fOYh+eswXhxAluCoFjV6RVRVGecABQ
	 6aNPXb9K+cqGCap2ZI5OQovNV+F46rZvnYuyvPIlkrFq0xeKYB01uZsqQ8ExSs2z65
	 rEsHn7jmlU6ud5A2ew25D0VIV540ATeHTm82ESl9rjtWDnkfJIBkQUqNxZJW4CM0Cf
	 jCgpmiKbmDZBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oL8NGRbBod3c; Sun,  4 Jun 2023 14:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CB5360E35;
	Sun,  4 Jun 2023 14:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CB5360E35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A7CA1BF577
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3152D838CC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3152D838CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5y5xZKum2SSD for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 14:17:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5029E838AB
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5029E838AB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:17:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T0wJB+fIKUUoEi+P6WHtDkpWzlyAXQTl2nj+H0i211YNE1hHxvDQw0by8x8j9h/hpVkfUwcfIQLjz4InypsU495c75MPHiBQjlWp+8WH8dfPilXhH3NYWBzYwWTPS5ur+Eyi0YGlLoxZanJFPnsghJlUBEKYTWMAW4YD9+yX1PX9FtyKgP7MFV1iByYlwmB80Kcr+n62dbaNZ3X8Htj4aUgKCbndUsuDpdPF6yze7JRrbPHqCUz7ITMSrqmkT4sFgVtMQXpUmYbpTrIOgNlgxwvMYyugDLfwtMlyizRMY+vSBJpY+eJ7eeGYco2e991ZOU1bPfzEwUZqIG9nPBqVMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=blY9DWT8/ISsBgjUpqbaPOXcsFTMTSSNMAxP5Lo+JQk=;
 b=Isy29EvnrE7rDxR4HUIZIf+TIQs92xhcA4r9WbRNnPOiECven5BRyDc1Pbq8oPHqybdG82PQ3cbZjaCtbLZves+jckkBTp+Wztcb1Vm8HLIR1DRkKeCZ4nCKLp8hZ3GIZ2CwdJsekIe+JyohocbLKLFm0voHCHiL/9SDO8qzzmmmBFcOcjv3P8EQsPBZTimVAwPnzE69ByvOuy7anf6b0q525Nmeh7aZZ3BOEDpMw09lwcna81ufYpVTNstgNxnMRoZSkF9enY3bj8Wi5oCOIxLsetuE3RvHzIWjaRxXiSUkLwQWAFkmFOp2QWp26MnuDIerqezwln0KsgornPVy9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BN0PR13MB5232.namprd13.prod.outlook.com (2603:10b6:408:15b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.31; Sun, 4 Jun
 2023 14:17:52 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 14:17:52 +0000
Date: Sun, 4 Jun 2023 16:17:44 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHydCI08zJip88rj@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-8-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-8-wojciech.drewek@intel.com>
X-ClientProxiedBy: AS4PR09CA0009.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::12) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BN0PR13MB5232:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fb9481a-9176-4bfa-1efc-08db65067b64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VttrC72k96uHgVO8xjPKvOxO3TjLSrdRpUyRUUCTwPyj6FYFmNzTbjkNaHgivzXvBRn21VLPpwnB+dz6BK+xcew/DGVQmJpa9wxF4DVZtf+CQSZGmaUrbaN+Xa5psycFzPNsVnP8VQQBBlEuxXxvo2Eq/bROD7ntwt9x9Fs8uTij8PTlBwc5eMbMUwLo9uPAcXq8Y1s89MySUH4SFK/+m+kppP4cszVtKqhummAQ3iDtemy6X5bvyeuoTNsC41xPfsZ8FwqVpTeOcQPqZOAmXlm381oFftDF4eF38BpBSGEEW5X10UvFAbomujQB7Cya5483Ucu4ewtxKLyI4xPVjGNgm87vt3JTS4pSvo/zHvl1LjKpLYjt9oVaz5XmFixQlc2TLHcpM1M6yJQyRK8/iE3D8E8Z3EukpPmTOmE6tQZNkJ5AhwilxIDCKS09yMwSTIXRuRz7mY2MlWbYodVbi0MSZWNSBBRozF3jUJgxC1uT+38EeaTzUpIuu7K8Sit4t+4ZgzFf5wkGVdPXeGIBNuBzZXvckQI05sNjVVFaS955gMEex/GB6ytlsxSCdI8j
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(366004)(39830400003)(376002)(396003)(451199021)(2616005)(6506007)(6512007)(44832011)(316002)(83380400001)(6916009)(66556008)(4326008)(66946007)(66476007)(6486002)(6666004)(186003)(478600001)(54906003)(36756003)(66899021)(2906002)(5660300002)(8936002)(8676002)(86362001)(7416002)(41300700001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vhuwu3lCH1akpi2iWrBmcpSL46MwmeAdzYZn4EKSwEqrJQPnhJr8YvbO1W0o?=
 =?us-ascii?Q?3bQwJzrzE/jHkoUZ4LTbCSjSlmeiH1oBrY82WcnD3OQ1Iajj8OfUGQR+kiAY?=
 =?us-ascii?Q?eVSMzp6tbOFu3Z6hTbL4UbPbTiOpAflLImx7IBebg7IwgoepZsKBxxIbc6yO?=
 =?us-ascii?Q?bGYx3PJtovnsSnynLs5LNL/GEJkWrZw6fQ+gkVq2FjbwQZhuzyZo19dERggN?=
 =?us-ascii?Q?LkUYprjYDhn4YgC5f1xYQWYIeiM8PKFQ20GS5BQhpkCFq8TUNHxiNrRDAQpN?=
 =?us-ascii?Q?xsrVPyIzohPuVsAxVukr7Xr2VPnJpM85XEleAASzp7sA8z318ojT2fik2JIA?=
 =?us-ascii?Q?3bjFeUH2dZfa2zTIQaDBT+qWuvGdTWy8VixeAmFpWEuFrB9joxdBVd1WRvno?=
 =?us-ascii?Q?gMo/27m38UhdbyuykR78Y4Imc94tkxZnNbEwr/voIuMoKAKF2eueOZMMzK8B?=
 =?us-ascii?Q?w2U6Mfp3jfduADPwiJmkBj+tAB5LS3RsaOW998MUJR9X0JzSbpSO2mBfrLM/?=
 =?us-ascii?Q?3Ml0gQeq402ygccpgCZvQiZlkL791fGi43eOmLAwi78U/bh8+ZnaBkbSgpZY?=
 =?us-ascii?Q?tohfSgPwrozm23cEg75Ivy4HzKCblKJnTUcqHh7Wlu7RMbMvTHtIBW/tLz4y?=
 =?us-ascii?Q?EBtsejt90m5CRxY3UCOreyeK1EEw1KCn/Tmjy+SBeXIBMHUZR1z7FcwwuwI5?=
 =?us-ascii?Q?8/aVCCbbCBrEEn72eL1MoSbFU4h1FqXSzMpKV/lsbsW6fBXitoXHDhL/gmNX?=
 =?us-ascii?Q?rCACtJQzx8CHUCiaLvD0dqBfnkYpYQTAhM0bnvfhWtGpTCujrTSpdx6s+68Y?=
 =?us-ascii?Q?b9nPvUasUo4qZgj4R0320GYK1Zxzb5Ryf5WGFOxlfeB6J2deFSeY+KK9YiUb?=
 =?us-ascii?Q?+q/a2Z3Ly4CQ30rJyOlTJUAjGm0421cWcbzcPd3rkj0YKqRawtq+kktmbsn9?=
 =?us-ascii?Q?MGe0Z/kTgNrQq2O7eKiqQGxJjjLCs+SX1FmOylqBBd2S8Uw+SqHd2e7BhYPy?=
 =?us-ascii?Q?ZwB+ZcvMW42UsBcdjQJ4XeOw3biBMfr3ZPOcVzgJJ1rCZulYmlCPrmChBzca?=
 =?us-ascii?Q?n4x1Qbbe+qFJyZG3vvdbmD6EHoDamnpgxXSyTjVJU3IcAvCwOTFEqtvx0YSu?=
 =?us-ascii?Q?vNqDgrW5SXwYoBK1pBf4xB/I1yBdXR1ZFHgJK/nw3PEpgocKtFiz8ry7GVjx?=
 =?us-ascii?Q?Isaasn7ajelPbYUW5GHyChUVVENhZSSpv+BKi0MQuOA34FJrZIzrYhuRtmRC?=
 =?us-ascii?Q?qs/5zYoUKilXZVpBBA+Yob0+cvjHc6oaQOqnCi5mLFEUIFkqrwjgg0qdny79?=
 =?us-ascii?Q?wyg7WcIOZVhEBLQqXajxiCWH2I6KnFGSW0DFA81vAt4LMS3l/PB0HfzFe9Rt?=
 =?us-ascii?Q?YgZR1LtIT/ygCbPadc6i1gZ3wxCYsE0nn/Ty7kQ1FsAzme9KN1ix8HGWDrjQ?=
 =?us-ascii?Q?rYxHnkce8ngTfCMy1n2M/DMsD+eV4Y8dPZ0hrX+tH9y2BNx3azmljfZLQp05?=
 =?us-ascii?Q?e2yMrMoxzDdbq8GqQxKOlq5blmgm5NM93rsmyibKuJZDeOlUSs/aMiK2ub9o?=
 =?us-ascii?Q?pa5uEID+Wzvj0Lzj5LHgL93kAENOOv9YJA543i0QgWialD5YLa4C37GFUqHg?=
 =?us-ascii?Q?JLVw+b7qXNUZXFOBBUV4gMd2BQWaKSTSHyklGLIxNu2kMcyuZOW3qMczynvi?=
 =?us-ascii?Q?I+tNrQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fb9481a-9176-4bfa-1efc-08db65067b64
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 14:17:52.1432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vyn9Woa8MplRbwN1o889FEUxMp7u3bTEA38wQXQzNNj+CJbsDW8eHS5VRtixYjLfWKxLcRLhP2gYihuwRnn8XdFIl5jF7+zktgkGhkov4nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR13MB5232
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=blY9DWT8/ISsBgjUpqbaPOXcsFTMTSSNMAxP5Lo+JQk=;
 b=GGQpxFuzUjIcGLCqTCtWdrwQlx6ea32Huprb8nkOsRi6RCZff6pGY2tbbLotjOkNcvSTAXhPDQU3mdl30OymC4I+Pdto8GOVhEviuvtRjn2S2ccY5TTn/86RDJQ4VLx/O9CozeQMzFt10m1yxrFdnIUJ5vAjkA44TNhY5cr2aIg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=GGQpxFuz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 07/13] ice: Switchdev FDB
 events support
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Jakub, Eric

On Wed, May 24, 2023 at 02:21:15PM +0200, Wojciech Drewek wrote:
> Listen for SWITCHDEV_FDB_{ADD|DEL}_TO_DEVICE events while in switchdev
> mode. Accept these events on both uplink and VF PR ports. Add HW
> rules in newly created workqueue. FDB entries are stored in rhashtable
> for lookup when removing the entry and in the list for cleanup
> purpose. Direction of the HW rule depends on the type of the ports
> on which the FDB event was received:
> 
> ICE_ESWITCH_BR_UPLINK_PORT:
> TX rule that forwards the packet to the LAN (egress).
> 
> ICE_ESWITCH_BR_VF_REPR_PORT:
> RX rule that forwards the packet to the VF associated
> with the port representor.
> 
> In both cases the rule matches on the dst mac address.
> All the FDB entries are stored in the bridge structure.
> When the port is removed all the FDB entries associated with
> this port are removed as well. This is achieved thanks to the reference
> to the port that FDB entry holds.
> 
> In the fwd rule we use only one lookup type (MAC address)
> but lkups_cnt variable is already introduced because
> we will have more lookups in the subsequent patches.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

...

> +static void
> +ice_eswitch_br_fdb_event_work(struct work_struct *work)
> +{
> +	struct ice_esw_br_fdb_work *fdb_work = ice_work_to_fdb_work(work);
> +	bool added_by_user = fdb_work->fdb_info.added_by_user;
> +	struct ice_esw_br_port *br_port = fdb_work->br_port;
> +	const unsigned char *mac = fdb_work->fdb_info.addr;
> +	u16 vid = fdb_work->fdb_info.vid;
> +
> +	rtnl_lock();
> +
> +	if (!br_port || !br_port->bridge)
> +		goto err_exit;
> +
> +	switch (fdb_work->event) {
> +	case SWITCHDEV_FDB_ADD_TO_DEVICE:
> +		ice_eswitch_br_fdb_entry_create(fdb_work->dev, br_port,
> +						added_by_user, mac, vid);
> +		break;
> +	case SWITCHDEV_FDB_DEL_TO_DEVICE:
> +		ice_eswitch_br_fdb_entry_find_and_delete(br_port->bridge,
> +							 mac, vid);
> +		break;
> +	default:
> +		goto err_exit;
> +	}
> +
> +err_exit:
> +	rtnl_unlock();
> +	dev_put(fdb_work->dev);

Hi Wojciech,

I notice that the CI flags this as use of a deprecated API.
So I'm wondering if it would be better written using netdev_put()
And likewise, I'm wondering if other users in the ice driver should be
updated.

> +	ice_eswitch_br_fdb_work_dealloc(fdb_work);
> +}

...

> +static int
> +ice_eswitch_br_switchdev_event(struct notifier_block *nb,
> +			       unsigned long event, void *ptr)
> +{
> +	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
> +	struct switchdev_notifier_fdb_info *fdb_info;
> +	struct switchdev_notifier_info *info = ptr;
> +	struct ice_esw_br_offloads *br_offloads;
> +	struct ice_esw_br_fdb_work *work;
> +	struct ice_esw_br_port *br_port;
> +	struct netlink_ext_ack *extack;
> +	struct net_device *upper;
> +
> +	br_offloads = ice_nb_to_br_offloads(nb, switchdev_nb);
> +	extack = switchdev_notifier_info_to_extack(ptr);
> +
> +	upper = netdev_master_upper_dev_get_rcu(dev);
> +	if (!upper)
> +		return NOTIFY_DONE;
> +
> +	if (!netif_is_bridge_master(upper))
> +		return NOTIFY_DONE;
> +
> +	if (!ice_eswitch_br_is_dev_valid(dev))
> +		return NOTIFY_DONE;
> +
> +	br_port = ice_eswitch_br_netdev_to_port(dev);
> +	if (!br_port)
> +		return NOTIFY_DONE;
> +
> +	switch (event) {
> +	case SWITCHDEV_FDB_ADD_TO_DEVICE:
> +	case SWITCHDEV_FDB_DEL_TO_DEVICE:
> +		fdb_info = container_of(info, typeof(*fdb_info), info);
> +
> +		work = ice_eswitch_br_fdb_work_alloc(fdb_info, br_port, dev,
> +						     event);
> +		if (IS_ERR(work)) {
> +			NL_SET_ERR_MSG_MOD(extack, "Failed to init switchdev fdb work");
> +			return notifier_from_errno(PTR_ERR(work));
> +		}
> +		dev_hold(dev);

Likewise, I'm wondering if this should be netdev_hold().

> +
> +		queue_work(br_offloads->wq, &work->work);
> +		break;
> +	default:
> +		break;
> +	}
> +	return NOTIFY_DONE;
> +}
> +

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
