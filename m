Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9798A9DE7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF22C409C4;
	Thu, 18 Apr 2024 15:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mmvYzrHYoEtG; Thu, 18 Apr 2024 15:02:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E855413A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452574;
	bh=245c9aJgr7ZAq7q6OZWuHWAdLh4KfJ8t1XPnSxyq/TY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9h1umK4NMJUnNfeFHb2ylN52VAZWkwcSs65tUhBApL0zacaX7NGeKAibxT7datid8
	 sJnHEVjfZZ5wl7/egVE8cZ4TvUW8YaqRiamUF6CdKBC9b/G1RU/omUn1E5YpB+5GaX
	 m4gcyNpFXlCiAQ03UcglWfCGKG9SLYJOTHJL78dMLUT6x9gX718LI1HHLfUxs9fdNi
	 j+eVf9gucvN2476Nq3jLXjWfGAWTPOgK7x3I0RSsAHtbjESD1/AC0ej/L0pgF3MZ9E
	 Mh9iNlgMisZMjMNw7B2rypjCocGUbD0JJEwQlfESR4ZlJ8TcViBtVNPy6YWp1HTI6c
	 pks/rrk1L0ndw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E855413A3;
	Thu, 18 Apr 2024 15:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF501BF616
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 08:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A18681F30
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 08:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tqr-HOz38_ys for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 08:13:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.64;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=shayd@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ADB5B81F2D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADB5B81F2D
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2064.outbound.protection.outlook.com [40.107.94.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADB5B81F2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 08:13:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYgOudCVSvWARscTLPQdxLQtY3lq7+0peg50dsz9d3XDsRsTYgGjp0sIHU7PL400k1C4HuSMKsW376vug4OQu6nTKOmHVIlkNnZWsyQBHGyqWkP8i0LSS2v5PeFUrTM8aoRYbxfi7c/LyVHp3oCWaV9ScT1C25vcY/f5qIa7zz6N0Bz0VnTDFuN5G1VbelfUpQsvZY1ximVZEzdNEkzrkfdpmKMGkHHu9lDW8DnmYWrBFb43mTdUuseC+p543SOyGif1zfroDK2I0gytjF54bD4I/PJWJli99S/csFt8Xc+/XJB+T2BzBovoUN/Z/eYnmy8cYJN5WhIk+EPpAaxhhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=245c9aJgr7ZAq7q6OZWuHWAdLh4KfJ8t1XPnSxyq/TY=;
 b=gKV7smTI52KkO3pVMvupma2heR9mO7/k9w9cgzHPwrKZZ4z5rmnEDzY64I/ptyAvgQ37cZnl/6NGlf5CNxG+PuTJZeKxcRZx0DuZKmzB5DlBbEnktfaRf5Xykl8x2UQB6mjK+FbjgbY66MfFOtwYKYk3ooBNd2X3N64a8cCvGoCSSRQJZjnn+Z01CX87hN0BzFXz6c2UfnhWDmGD198LpkYFFkM+YpJZSXhJYZslB7K5o953QV8Lt9oXe9L6kxg0t9kcd0P3ZQMuMr5DPZzA9nRUk424gePvtIlGH8RNTFjH3XxCHmNy83wsbE2hWYY0FK0WCPF9CR02w+DhUwF1+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=linux.intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from BL1PR13CA0302.namprd13.prod.outlook.com (2603:10b6:208:2c1::7)
 by DS0PR12MB8217.namprd12.prod.outlook.com (2603:10b6:8:f1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 18 Apr
 2024 08:13:07 +0000
Received: from MN1PEPF0000ECD4.namprd02.prod.outlook.com
 (2603:10b6:208:2c1:cafe::c8) by BL1PR13CA0302.outlook.office365.com
 (2603:10b6:208:2c1::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7495.17 via Frontend
 Transport; Thu, 18 Apr 2024 08:13:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 MN1PEPF0000ECD4.mail.protection.outlook.com (10.167.242.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.22 via Frontend Transport; Thu, 18 Apr 2024 08:13:06 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 01:12:51 -0700
Received: from [172.27.34.210] (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 01:12:47 -0700
Message-ID: <1b678660-7ee7-44d0-91a7-14985d2c469e@nvidia.com>
Date: Thu, 18 Apr 2024 11:12:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Shay Drori <shayd@nvidia.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-9-michal.swiatkowski@linux.intel.com>
 <0045c1a5-1065-40b3-ae61-1f372d4a89e5@nvidia.com>
Content-Language: en-US
In-Reply-To: <0045c1a5-1065-40b3-ae61-1f372d4a89e5@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN1PEPF0000ECD4:EE_|DS0PR12MB8217:EE_
X-MS-Office365-Filtering-Correlation-Id: 9485f6d0-a0f1-451a-1686-08dc5f7f60ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PpVu4S4JL1u+cpqga5yeVyOqeMqkbyy0w9PEg9MYO19t1dxUQFK/sdIZxjF0SBifSW30+FZGECkxReyXlAqJ0gIeyvkLUOaCm1ITMrnYlf+S5sqos5DtbNWwEmb1B72D+K465CvihNLqLnjGyyNc9InjHzwc+L0nn+eWrQh5h1apDIv1Mxg3nUcBJOo+kQLh39NgjaK1kPbjIhoa5h8kKC8tyQ5zA3LraML57CIup4cmIzEUIS3275gx5CSlJEATpfrFuk3764gK58aIyha4PsBj3+Ia6C47trEPJRBMtq14Ulf3EQNMWs+h67xivMacyqoA96pU8Jix8gu8KEPG7tK4C9kVLkW54d8VX1iXnCP4JJZzP37vYZ81RqS3U5q9P7Hlnbq1FrFtu9CYXjWfAOD2EfwRXxmh4bIOlV1C4/T/hs6wjhE2EN/4WJYfJi74OknLL+ZQ4a3mO1ajazmAggaFtpl7k437ldl3djqVbaA9yQwFduZmu5OyLPPR/g9Mqr7eDPb2j6eiWoThbpinOVwdbsyOVCdmmn9J8BnP+NoYQfCR8KgD+F4UQteGPTuFKmiRFU4s7+S+hLzy7IKfjn8iGSHAQBvChSeDNb4kPW9f3785IJKcRGh/uo+ubSPsurOl2PGOCYZjbPCUo8XVmaN6HFp/YZzHFitNm0GHoRAW8cJsTppRIEGYUiCvxGWvYjPxh1HGo/8VQoRW7RKHn9T+G6H5UsauHazUYB0l5hguvF1WD4DDdqYKC+c5h6Jb
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230031)(82310400014)(1800799015)(7416005)(36860700004)(376005); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 08:13:06.5243 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9485f6d0-a0f1-451a-1686-08dc5f7f60ae
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MN1PEPF0000ECD4.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8217
X-Mailman-Approved-At: Thu, 18 Apr 2024 15:02:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=245c9aJgr7ZAq7q6OZWuHWAdLh4KfJ8t1XPnSxyq/TY=;
 b=OJkYnSHpkbUPYOxsCP5nzOWB3s9bYFsMx5HbsOXLB8JHEhS43nkJbX4YpwQLtxwjRZ0+UhcgVqS3Ttp0qiI1vLVBP1yb+2Ej7biQjDeaT5Oyp1thQ9wBdjxVIwYI7Mx7pjdLJYXAtjVcYuyWux6OBco3zLytxvkjvYq/EN4L0jbVK6f1GR97JKMvHDisfPhaPfrRzHdSsKJc0Tuvd9slpd3rSo9hIkI5YdM7BbvCp1Tvs4cfGik0dN1zotP/HTRJbo6loP+4vpGjm2B09fCowc7NnfFWnbp6HkRcqGV5+vbWJ5Dlumyi4yy+t0yJL8Q9qCht5zq2q+CgxpAtVyKV6A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=OJkYnSHp
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

resend as plain test

On 18/04/2024 10:53, Shay Drori wrote:
> On 17/04/2024 17:20, Michal Swiatkowski wrote:
>> +/**
>> + * ice_devlink_port_fn_state_get - devlink handler for port state get
>> + * @port: pointer to devlink port
>> + * @state: admin configured state of the port
>> + * @opstate: current port operational state
>> + * @extack: extack for reporting error messages
>> + *
>> + * Gets port state.
>> + *
>> + * Return: zero on success or an error code on failure.
>> + */
>> +static int
>> +ice_devlink_port_fn_state_get(struct devlink_port *port,
>> +			      enum devlink_port_fn_state *state,
>> +			      enum devlink_port_fn_opstate *opstate,
>> +			      struct netlink_ext_ack *extack)
>> +{
>> +	struct ice_dynamic_port *dyn_port;
>> +
>> +	dyn_port = ice_devlink_port_to_dyn(port);
>> +
>> +	if (dyn_port->active) {
>> +		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>> +		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
> 
> 
> DEVLINK_PORT_FN_OPSTATE_ATTACHED means the SF is up/bind[1].
> ice is using auxiliary bus for SFs, which means user can unbind it
> via the auxiliary sysfs (/sys/bus/auxiliary/drivers/ice_sf/unbind).
> In this case[2], you need to return:
> *state = DEVLINK_PORT_FN_STATE_ACTIVE;
> *opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
> 
> 
> [1]
> Documentation from include/uapi/linux/devlink.h:
> 
> * @DEVLINK_PORT_FN_OPSTATE_ATTACHED: Driver is attached to the function. 
> <...>
> * @DEVLINK_PORT_FN_OPSTATE_DETACHED: Driver is detached from the function.
> 
>> +	} else {
>> +		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
>> +		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
