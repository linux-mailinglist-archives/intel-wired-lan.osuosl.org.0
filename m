Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E85AE7510B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 20:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B48F1612F7;
	Wed, 12 Jul 2023 18:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B48F1612F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689187447;
	bh=Iv0ZF6kDScpc0UgCxjThwvgyQBTTsuElcNsmm5/46YM=;
	h=References:From:To:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9EH4B7Pg51RSdcDO7CBDuJkGXGNVCRuHH88CDBa9PO35bsXVzePVVuckSgqgMRgWO
	 XiMKppRh4hdKBXnHwh+KqiR8AxDDCTZFmsxm4R6tQe1xWn+IURsaRD9xfTUmsHYNu9
	 1XSPtLkza6QGYNlTrvfNS00ibNFw3z6sM2XbnlRk9WUwnNy0TL3ebxQhs3UY8N4V9Z
	 5c64aJR31ew2kMjYefkzeUXGGhrkSomL/vMP1E4DSoCk9KCqaOYotbNNQOlEIUQvhU
	 5bZqlDqvC/1CBQcGPdwO7o3ekrTPwwxtu3ltvyknML4KtX7kh5kl6iqtJaq8eXif4P
	 KjA8qOkZ/JsCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EKQHkbabnEJ; Wed, 12 Jul 2023 18:44:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AC67605AC;
	Wed, 12 Jul 2023 18:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AC67605AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 646D51BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 16:48:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C1F160BF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 16:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C1F160BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hcPS3Wrwfgtv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 16:48:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27FC3605E8
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2086.outbound.protection.outlook.com [40.107.244.86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27FC3605E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 16:48:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5DtEqumCyL/liyPykia51yyb1zljREf7ZgXVhBGsJmeRxXzuCaXZnNRo5yK17OQpeLeb8DS8CQAn4aMF8ysoZxpJRJsvw0CqDuzkhmnpTRe3SNPMeZX04Z8zJT6PJN5QuBdmWaTECYu4ihrfMYyt01aSltgH1EGwppW00e3auL1Vsw/zctfKam4OSOCKwWuBQObjsOMwxGI+kytyjH2KzxTwjUiprNJFufVIiapsjsF6CDmemh5HDSOxta3M9ivo6k/jfdMV4CTPjFNTK6sbCXshKkwdNxahtBA92z2WwtYgLMBb/AwF4gxFKBBwAM94y5Vj/81H23HVah3X58bHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqwnyC7jYKTBKxKOpPh/jbclLW01K8nWsiY0w8fup38=;
 b=D2DdreaGr24vhmJM0oOm2ba2w0ho5vj5qzvF4pznunYqwHTul70oxyPFygozfqald6vo6CZYstrDQBMTDIwts5rV6LjmvL6bfaqVAe2w47+syf3fg5+cVPifgouRIkUOL64YTw1o2BNKi5yzisCcdtCEhgJgZxKsJYQ9jgN/ZXTNsQ0w6kqeKyF84nqppJBNdhQewihyfAmSmdFiVlb2afq3stwQt2otfeOj65WjnFi0wdBUALgRtfvW2v+mpuQNjsr+f6PDSa21sTaiqRFmuiDtB6psBLJzqnr7avjB2r6vLflGaRhpufumMnfb805nNsze1Kf8clR6lx5l5GXP4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linaro.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from MW4PR04CA0157.namprd04.prod.outlook.com (2603:10b6:303:85::12)
 by BY5PR12MB4227.namprd12.prod.outlook.com (2603:10b6:a03:206::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 16:48:27 +0000
Received: from CO1NAM11FT050.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:85:cafe::7c) by MW4PR04CA0157.outlook.office365.com
 (2603:10b6:303:85::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32 via Frontend
 Transport; Wed, 12 Jul 2023 16:48:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CO1NAM11FT050.mail.protection.outlook.com (10.13.174.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.22 via Frontend Transport; Wed, 12 Jul 2023 16:48:26 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Wed, 12 Jul 2023
 09:48:12 -0700
Received: from fedora.nvidia.com (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.37; Wed, 12 Jul
 2023 09:48:09 -0700
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
User-agent: mu4e 1.8.11; emacs 28.2
From: Vlad Buslov <vladbu@nvidia.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 12 Jul 2023 19:47:05 +0300
In-Reply-To: <20230712110337.8030-1-wojciech.drewek@intel.com>
Message-ID: <87wmz5t6t4.fsf@nvidia.com>
MIME-Version: 1.0
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT050:EE_|BY5PR12MB4227:EE_
X-MS-Office365-Filtering-Correlation-Id: 13ec8505-abed-4b5b-0a8a-08db82f7d07f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nub2yWSEsgoGTTL37NodLxO0YHVTavocBw3HN3/5OgaIDSU+K8c5ABYJG4GpG+DhlzsidQoxv+mmgxZJE+Rv+ottZyhGAgafvs+wy8+KktQYMwsC0BJLlxpxkp7LMIqK7Yrd8LBuRE+pViCRV4sS25vsdHMLM5GlZB6zxFVCqQEnyab28n31ToqV6X1NykWlaMsXRdnpBx68shL1IQlAeqKyv72ejYdMdYmxn90fwlrddEqckb2Tj8yICg2njn1vkPUkfhQDofQby2NLsLm/IZsuhT7fAx9RxNkC64gWMZuMm8iI12x7qCTtIvWU2EQSXiRCGnTsrUoVV0cdXh6rLk0uxps62Wg+4lRH9A36dKHxdYuHNQjD1YEoEMf5ofvQx5H5FoV9PADqk5srwFT+6Zt3YTgEwc2LS6AED4ghyLFTqQMxqOFeNcYTWFMfkUbR/CT8/XTSsQSp9c47dWKv636tmySjuAQt9B219HRgMPdrgf419nZV3IAI5ulBzlSezkS+npvJ+SxNpMLaw4URpZnFWdZL4ldOBlsQFyxutH31GvlJKToNqZSdoI8QKdNogJKedNhPA38lUPLd1vVCLQimAyuLUehO+R6/iz5ZmFJKLjoxWKJpJ/EpqCRl6I621kUO2jLUa8deZk4ftNLC4QM/Uuoi6DSC7/OCPF025QUQtnOhwMAV1yQo5DK8zYozN343kFfoaSURoNJPbp6gTkogHQq1ISOYcfKQ2SsNVEeTPlBB3DSsqGpedk4/+25sDqx4gQw40IYwGb3jLqTKBZu/9TVjZqhggudQ1imL5e4=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39860400002)(136003)(346002)(396003)(451199021)(46966006)(40470700004)(36840700001)(86362001)(40460700003)(82310400005)(8676002)(8936002)(186003)(16526019)(36756003)(36860700001)(426003)(336012)(47076005)(2616005)(2906002)(5660300002)(7416002)(26005)(40480700001)(82740400003)(6666004)(7636003)(54906003)(356005)(70206006)(70586007)(83380400001)(6916009)(7696005)(4326008)(478600001)(316002)(41300700001)(966005);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 16:48:26.8639 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ec8505-abed-4b5b-0a8a-08db82f7d07f
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT050.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4227
X-Mailman-Approved-At: Wed, 12 Jul 2023 18:44:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqwnyC7jYKTBKxKOpPh/jbclLW01K8nWsiY0w8fup38=;
 b=LbXyavmK4cler/vJ0aKUk3GLUOjjmkZsFB23g3T2aXmsTf3ADvyFfdanpl7XyvjDhkLj1Zqvqk5DSiE2NMKBh6mSJi7kgdU2Eq6KF9NAhxMQ8KBS2SzZedDLx5Ek1F3X8/z4S1clNnzyIVDJpcOCFH0a013NfuVcrWg7wB8Rht+3pc54iVdiOMB2RxZX9X0Rx/nvQCK0BA2VLK2c0orDyiQQHnWRDrAh0pDEkPCWBQgUa6gd4KqqOgnRiriEdUeGX6Acve2jsekWg/X3A2cJN0DISHNNsdscIh193m8spKXXh6ljs4vnbJ8e428NxkfAAYE000j/w1eEN17q4xzNHA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=LbXyavmK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 00/12] ice: switchdev
 bridge offload
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Wed 12 Jul 2023 at 13:03, Wojciech Drewek <wojciech.drewek@intel.com> wrote:
> Linux bridge provides ability to learn MAC addresses and vlans
> detected on bridge's ports. As a result of this, FDB (forward data base)
> entries are created and they can be offloaded to the HW. By adding
> VF's port representors to the bridge together with the uplink netdev,
> we can learn VF's and link partner's MAC addresses. This is achieved
> by slow/exception-path, where packets that do not match any filters
> (FDB entries in this case) are send to the bridge ports.
>
> Driver keeps track of the netdevs added to the bridge
> by listening for NETDEV_CHANGEUPPER event. We distinguish two types
> of bridge ports: uplink port and VF's representor port. Linux
> bridge always learns src MAC of the packet on rx path. With the
> current slow-path implementation, it means that we will learn
> VF's MAC on port repr (when the VF transmits the packet) and
> link partner's MAC on uplink (when we receive it on uplink from LAN).
>
> The driver is notified about learning of the MAC/VLAN by
> SWITCHDEV_FDB_{ADD|DEL}_TO_DEVICE events. This is followed by creation
> of the HW filter. The direction of the filter is based on port
> type (uplink or VF repr). In case of the uplink, rule forwards
> the packets to the LAN (matching on link partner's MAC). When the
> notification is received on VF repr then the rule forwards the
> packets to the associated VF (matching on VF's MAC).
>
> This approach would not work on its own however. This is because if
> one of the directions is offloaded, then the bridge would not be able
> to learn the other one. If the egress rule is added (learned on uplink)
> then the response from the VF will be sent directly to the LAN.
> The packet will not got through slow-path, it would not be seen on
> VF's port repr. Because of that, the bridge would not learn VF's MAC.
>
> This is solved by introducing guard rule. It prevents forward rule from
> working until the opposite direction is offloaded.
>
> Aging is not fully supported yet, aging time is static for now. The
> follow up submissions will introduce counters that will allow us to
> keep track if the rule is actually being used or not.
>
> A few fixes/changes are needed for this feature to work with ice driver.
> These are introduced in first 5 patches.
> ---
> v2: two patches were droped from the series:
>     - "ice: Remove exclusion code for RDMA+SRIOV" was sent as separate
>       patch: https://lore.kernel.org/netdev/20230516113055.7336-1-wojciech.drewek@intel.com/
>     - "ice: Ethtool fdb_cnt stats" was dropped because of the comments
>       suggesting that ethtool is not a good option for such statistic.
>       An alternative will be send as a separate patch.
> v3: small changes in patch 5, 7 and 8 including kdoc, style fixes.
> v4: split 1st patch in the series into 4 as Paul suggested
> v5: drop "ice: Accept LAG netdevs in bridge offloads" patch,
>     it will go with LAG patchset, I kept dev_hold and dev_put since the
>     discussion was not resolved
> v6: resolve Vlad's comments: delete FDB entries associated with
>     deleted vlan, add missing vlan_ops calls when clearing pvid
>
> Marcin Szycik (2):
>   ice: Add guard rule when creating FDB in switchdev
>   ice: Add VLAN FDB support in switchdev mode
>
> Michal Swiatkowski (2):
>   ice: implement bridge port vlan
>   ice: implement static version of ageing
>
> Pawel Chmielewski (1):
>   ice: add tracepoints for the switchdev bridge
>
> Wojciech Drewek (7):
>   ice: Skip adv rules removal upon switchdev release
>   ice: Prohibit rx mode change in switchdev mode
>   ice: Don't tx before switchdev is fully configured
>   ice: Disable vlan pruning for uplink VSI
>   ice: Unset src prune on uplink VSI
>   ice: Implement basic eswitch bridge setup
>   ice: Switchdev FDB events support
>
>  drivers/net/ethernet/intel/ice/Makefile       |    2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |    5 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   46 +-
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 1308 +++++++++++++++++
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |  120 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   25 +
>  drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |    4 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c     |    2 +-
>  drivers/net/ethernet/intel/ice/ice_repr.h     |    3 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  150 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |    6 +-
>  drivers/net/ethernet/intel/ice/ice_trace.h    |   90 ++
>  drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  186 +--
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |    4 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |   84 +-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |    8 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |    1 +
>  19 files changed, 1860 insertions(+), 186 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.h

Reviewed-by: Vlad Buslov <vladbu@nvidia.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
