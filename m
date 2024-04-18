Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E558A9DEA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:03:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA20441558;
	Thu, 18 Apr 2024 15:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TiSqZ6pguiN9; Thu, 18 Apr 2024 15:03:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0A6E41560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452578;
	bh=Hrn7Ts24ohSJPQg8shYa4zxh6pzBk7Dd54n3Eshd74Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8qCXa8AScX92H9WvvatVK9lUDTlOob1GTRAykA530zFHD8Z6M9pa72zXYtRgRBna8
	 8T7J8kvUjlEEr7vd9pWCjKQD/yWKJVcRjhmgbCN3lUOdhDPgbMlHlh9TpgzwY6I/9c
	 piYY+G0J+76wwfVYZCvYTi/7Ipc1QNyvZZbtqza7KgYmT9OdVCVv9Fn4zzLvkTRySr
	 RSbLZJavN/PXnGetmpDx05pfLzy2AByZXu0R0hZURtUVR/0YHVG7ZcpNenEFVTf/Bo
	 gLcbZHTrxhwx0DyaoFz0HPLjJoTQ3rJtDJww5y6hd4HZ/GNikKAFJQ+80PbRtxMFgH
	 QbywNyF5Br2LQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0A6E41560;
	Thu, 18 Apr 2024 15:02:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4ED91BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B43A8400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:21:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORqmLpI-o1tL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 12:21:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.81;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=shayd@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 229F640017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 229F640017
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2081.outbound.protection.outlook.com [40.107.92.81])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 229F640017
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:21:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxvBslA2FK8b9na59zuayabcTPvvXMilJdKrNFV4y97UXdF6U4ZJrRqWA9DOIoI3kJb2nYYj4QEGENRcIQbtKXhQvmd5VuNYHIxyRUJnZNuqhTRDkyj+zfSWUclzEtFlaDWFCpoK6G68fpWey4Bw2Vgpmlbr9zxj8eFNVH/7naQ3awWfIdHNnorPJq9CFxAMhTPcwnKhuMeigxsp0S94+r6U1O15Xyqn7xqOsWXqh4CphLXfOAIpTlvXFurXmpc+52S9xx9eya+gWYMVX63UPgWUsaeD7K2dirXtB2inKOg3I7366ctz7FW+hSolc+I5SStoVBNd4u0RgECpeodCAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hrn7Ts24ohSJPQg8shYa4zxh6pzBk7Dd54n3Eshd74Y=;
 b=h122ru7gVZDs7J1BfR3PyoDUA5A07bFzvnxw36mihmfNtV63SXyTzHbW+fi++P72QO37nQjXNHot2VAGev1G0ykzEtThBHtwb8+TKi8LeIXFxrISDHqoVkhMSm7Tq2JwaoclmkOsglanVYQrzwawaJByMigBv+DK1fpQ4a1AiQbd7aYLjV5RSR7kTpzaD+cjhf2yZugQc6IimvDL9dwdaIWjY/QXkQk1JbVz5TcDP4DozoZ28huA8F+oNwdtj2LeQisVLojdPNbyFP8mi42teFfyp7cs+YrX8qpzAKyFfuZkp555TeWDp7PwtksJqpiaDiicJrEv12kpFh+q5tD5Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=linux.intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from SA1P222CA0050.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:2d0::25)
 by DS0PR12MB9273.namprd12.prod.outlook.com (2603:10b6:8:193::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 18 Apr
 2024 12:21:00 +0000
Received: from SA2PEPF000015CD.namprd03.prod.outlook.com
 (2603:10b6:806:2d0:cafe::ed) by SA1P222CA0050.outlook.office365.com
 (2603:10b6:806:2d0::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7495.28 via Frontend
 Transport; Thu, 18 Apr 2024 12:21:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 SA2PEPF000015CD.mail.protection.outlook.com (10.167.241.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.22 via Frontend Transport; Thu, 18 Apr 2024 12:20:59 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 05:20:44 -0700
Received: from [172.27.34.210] (10.126.230.35) by drhqmail201.nvidia.com
 (10.126.190.180) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 05:20:39 -0700
Message-ID: <f5d2db9d-9992-4cb6-9ac2-456369df4366@nvidia.com>
Date: Thu, 18 Apr 2024 15:20:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-9-michal.swiatkowski@linux.intel.com>
 <0045c1a5-1065-40b3-ae61-1f372d4a89e5@nvidia.com>
 <1b678660-7ee7-44d0-91a7-14985d2c469e@nvidia.com> <ZiEKF8Hm+ccuVedQ@mev-dev>
Content-Language: en-US
From: Shay Drori <shayd@nvidia.com>
In-Reply-To: <ZiEKF8Hm+ccuVedQ@mev-dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 drhqmail201.nvidia.com (10.126.190.180)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF000015CD:EE_|DS0PR12MB9273:EE_
X-MS-Office365-Filtering-Correlation-Id: a3081842-aba5-49af-578f-08dc5fa201cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CxPAKqzdPiSCSb3GFr/fMAd/qvnIp82EzcJNBOzDsNG3ewpXu5IriET/0sUsYrkXmmsnw94IF0fojv5GUCsa+V8ugQQ7ZWItKP0yyfWFm3EquKK2I5hqYrNHGL6GAzX43f/RdqZ7eVGs45nzEIeG03fKdXjq21P44c4xP2ADzN/bpUmU3C1IHdEkMQXWghQaXyjKRf0ju36FVtb8uBFidSg9iS1hMEtMWyfK6J5vmY6pmRiIHrfOR7Cgyv7tL4AF0+gdKq0MpCSti1GJoqmr2JtblSpummLom3uNB1gYiTjH1TvMFgqHuUYLQeGrQddhthtuNB1x01DrRCJR3Qx2zG6z4n11X8CW70pkln+kaiq7f8bj+YItksSb0KJB0ElCWPQm/Jrtnl7cDgja/nCJrl59Eko/i9Rpw+IQ3nOmm5BSfD5D0ipogGaTm/c9F0FGT5ghED4Ih2QeZhqFUGYq6DI/T1ZnI2j+c9xG0jJ00Wb9p6BMUNxdvfsMHlgDFUeig+H0z2ptqkB7TYoN+mli4xxC3qOHIdvPy2ftsc7tDajvt9obDDH+/OCSZh2Vnv+35ijGe7ojXWLjDgEAdrcfrwnOrTUDvOi4Y6T1aUf02008sk5igJbCiktN8kBUyWerHdynofTaMJK/Q+XrnIu5/CWFIQCJHjqQuE6V+rn8Hsno0KVyeLEto49GlPFaKYQ3PO3gOoq8lZiyu1voE/IYNi34DQOJ9mZYH37JpUbVA/QCBCci7WV2yHzmG59YQvct
X-Forefront-Antispam-Report: CIP:216.228.118.233; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc7edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(36860700004)(7416005)(1800799015)(82310400014)(376005); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 12:20:59.8093 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3081842-aba5-49af-578f-08dc5fa201cd
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.118.233];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF000015CD.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB9273
X-Mailman-Approved-At: Thu, 18 Apr 2024 15:02:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hrn7Ts24ohSJPQg8shYa4zxh6pzBk7Dd54n3Eshd74Y=;
 b=OeWI6NeEPCVIN1Vw7tui00lbcOgcAgfKgBx9HqaWlgsvS9XWJ7udDTdHblsNbYL33bPSVJmBJsiB9rmMkr/MH4wPmp7pKuaaNCohPmLh3uLWhLgKaSvDM3J5qZ+dhyvLT6rnSReaEYPGBOycgZeTCP9M34GIdyx4WVcyZsuZdVnQoru7e7VIIzCe38S1uilsoIBbcFuomI03q1RhS46wX8N+GEItFslM+tc1cAhf91QXUDH645zEhkkViEsuF5Wyv7Wu8gNdiU6E2l0rdTNeHDfqtuNc+Cp+9EfXOQDg0ruTkW3BdBJcYkOTsxRnCsfjw8DMYJ9/scc+rww5zYPyUQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=OeWI6NeE
Subject: Re: [Intel-wired-lan] [iwl-next v4 8/8] ice: allow to activate and
 deactivate subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 18/04/2024 14:55, Michal Swiatkowski wrote:
> External email: Use caution opening links or attachments
> 
> 
> On Thu, Apr 18, 2024 at 11:12:47AM +0300, Shay Drori wrote:
>> resend as plain test
>>
>> On 18/04/2024 10:53, Shay Drori wrote:
>>> On 17/04/2024 17:20, Michal Swiatkowski wrote:
>>>> +/**
>>>> + * ice_devlink_port_fn_state_get - devlink handler for port state get
>>>> + * @port: pointer to devlink port
>>>> + * @state: admin configured state of the port
>>>> + * @opstate: current port operational state
>>>> + * @extack: extack for reporting error messages
>>>> + *
>>>> + * Gets port state.
>>>> + *
>>>> + * Return: zero on success or an error code on failure.
>>>> + */
>>>> +static int
>>>> +ice_devlink_port_fn_state_get(struct devlink_port *port,
>>>> +                       enum devlink_port_fn_state *state,
>>>> +                       enum devlink_port_fn_opstate *opstate,
>>>> +                       struct netlink_ext_ack *extack)
>>>> +{
>>>> + struct ice_dynamic_port *dyn_port;
>>>> +
>>>> + dyn_port = ice_devlink_port_to_dyn(port);
>>>> +
>>>> + if (dyn_port->active) {
>>>> +         *state = DEVLINK_PORT_FN_STATE_ACTIVE;
>>>> +         *opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
>>>
>>>
>>> DEVLINK_PORT_FN_OPSTATE_ATTACHED means the SF is up/bind[1].
>>> ice is using auxiliary bus for SFs, which means user can unbind it
>>> via the auxiliary sysfs (/sys/bus/auxiliary/drivers/ice_sf/unbind).
>>> In this case[2], you need to return:
>>> *state = DEVLINK_PORT_FN_STATE_ACTIVE;
>>> *opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>>>
> 
> Thanks, I didn't think about unbinding/binding the aux driver via sysfs. >
> To be sure:
> - user create the subfunction:
> INACTIVE, DETACHED
> - user activate it:
> ACTIVE, ATTACHED
> - user unbind driver:
> ACTIVE, DETACHED
> - user can bind it again as long as subfunction port is ACTIVE
> is it right?


yes.


> 
> I will fix the comment from previous patch and add state tracking for
> ATTACHED/DETACHED.
> 
> Thanks,
> Michal
> 
>>>
>>> [1]
>>> Documentation from include/uapi/linux/devlink.h:
>>>
>>> * @DEVLINK_PORT_FN_OPSTATE_ATTACHED: Driver is attached to the function.
>>> <...>
>>> * @DEVLINK_PORT_FN_OPSTATE_DETACHED: Driver is detached from the function.
>>>
>>>> + } else {
>>>> +         *state = DEVLINK_PORT_FN_STATE_INACTIVE;
>>>> +         *opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>>>> + }
>>>> +
>>>> + return 0;
>>>> +}
>>>> +
