Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABD8A9DE4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5A4541577;
	Thu, 18 Apr 2024 15:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rTJJQ0mwU3m3; Thu, 18 Apr 2024 15:02:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6B0B403A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452571;
	bh=kPQBRW/WsDzpQw+Slfaat0jhR/NvAIaZJO6mvgEJkv0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=akLEnwDw7MFcYrFVaOARWV5KGTm/ROdkdDStUzJbqtQtWuTMn+uN4xIHdqGTedIEc
	 4mkihreIVl052nqiWpxIbOzRYj1kYh6CmbITnaoY5NcBxUiDPVe84qPGeVOlsI0WQr
	 lW6T0e8pZOe30dg8X9sIPKTM1kisLOJMeVwSyk6MNrheRHSzfaTCNidg4CVbN23Syf
	 MJy5VyprtgFUYbBqpokfd02HGuMXwvydisfVajc0D489c8QWGOxu/k+XArX+9bAjP4
	 4L2rSvWdeWcHHE/+bM8cVh+x8E833iXO0NPqki3TjIsijH4/V403Q2bf+wz9ZUhTSi
	 EYAFrki/JYExw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6B0B403A8;
	Thu, 18 Apr 2024 15:02:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C8731BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1425A401C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:53:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AtYu0bouyul0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 07:53:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.79;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=shayd@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 654AB40190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 654AB40190
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2079.outbound.protection.outlook.com [40.107.220.79])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 654AB40190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:53:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFpYUH0JJ9o9pVJn0BIJ5MneMLlFTWUKBf8uw+yGb0Rmc6XyTEaO7z82to+CWFRqTUO8akksRh8goKDUL+45XyA0uCNVHabtMPPuFPb6WKb50SsiibG0VSOdcYjYwmPud5XrxUPqB/5QwnYQbWLnmeMSYrgpVgqUrg8gnFFzZChvoXEbQJPiZOm2B+XjRHXaMG2+AahPC3gVJAkrk6zrgOlRyRHmKWi5lBrNpSNSunqpMImfY9odGUrM1/yQ1z4PX/oCBWtI/rAGlI0ScEzc0V5k8Soo2FgpvcjIV9tyFxVbmxvz7J+Es8i/KMokqEpCU+cabNdcmHesjeVTtNLYww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kPQBRW/WsDzpQw+Slfaat0jhR/NvAIaZJO6mvgEJkv0=;
 b=AtM8M2PK3CH5y6v13TmArLMyI5hwi0o8/ipyuVn7QJL2r/kQYW99bXSD6nofv5/TIGhN7nPloaEUOXb11t1z8NdqpNW1YOX6/eDk3eNLQMwplLvz+/kssfAZJH/HgmPveKCmwWRk6NodUp6JgpKfZG+voy5dDG4ucpB1FUzIIu3ZQMnsDXHHDhFgy2e/jHEaMGjoDCrCPRiIVY08kNDei+lJIE0s13ZroxKRnSHGqS/bFrneH4xEZtgbyieIuf1Y999o2gnfT07ovxI3lKSgebbsFgBxdjvhQcCMnIvYzLaAMJz35GAv/o/QOXKeuDNuA1flNLc0RkE36H3iZrKqnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linux.intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from DS7PR05CA0031.namprd05.prod.outlook.com (2603:10b6:8:2f::6) by
 MN2PR12MB4317.namprd12.prod.outlook.com (2603:10b6:208:1d0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.41; Thu, 18 Apr
 2024 07:53:52 +0000
Received: from DS1PEPF00017097.namprd05.prod.outlook.com
 (2603:10b6:8:2f:cafe::fd) by DS7PR05CA0031.outlook.office365.com
 (2603:10b6:8:2f::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7495.23 via Frontend
 Transport; Thu, 18 Apr 2024 07:53:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS1PEPF00017097.mail.protection.outlook.com (10.167.18.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.22 via Frontend Transport; Thu, 18 Apr 2024 07:53:51 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 00:53:34 -0700
Received: from [172.27.34.210] (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 00:53:30 -0700
Content-Type: multipart/alternative;
 boundary="------------DKkSYYaJYzac0BLTtzmbKjL5"
Message-ID: <0045c1a5-1065-40b3-ae61-1f372d4a89e5@nvidia.com>
Date: Thu, 18 Apr 2024 10:53:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-9-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Shay Drori <shayd@nvidia.com>
In-Reply-To: <20240417142028.2171-9-michal.swiatkowski@linux.intel.com>
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF00017097:EE_|MN2PR12MB4317:EE_
X-MS-Office365-Filtering-Correlation-Id: 230b361a-5d0a-4303-03d8-08dc5f7cb04e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9SEn2PwQovFnir4pCwbTsnXeycdsbFQqP6KH6kLpSlk1+afZbgDvboOwbfms/vwAgKg3Tb1UJ6QOV9IeDBJNR+s7HG4B3yW0iluowKcruzMoXb+X16kQSQP8LlFXBdkXfkgU/Gv8eeLodaTSuJWNszLeofxcx+XEufUzM42PYfygIUqWb/ZpaF1pp3Def7G6qoxOiDx7Djfc881/4r0soeGEksBe4725KKV6hP2wWt7aJbgpPlZEn/wLHlrmGeyf7ecs+UaDWgMIc1i3hcoHbWkHkRdJFDLzKQa0JPYl+xc2tOEhov0oVnoRRambgUfaexoCsPa5ICsBbLziJaROK2qSEvbg27u1bA/X4PvEXePw5BXNF9kvhxAhsTcZq9ri9cOMtEK2aaPclEp7xyb7OC+3HyC5VvzRtNHD4ilaJd8165EHymmlShV3ohTSQEwGHimhS2lFfbJNsm1NbN3Dtje+tIynlHpksVYY9w4oEgYLCbFEdHdp6f0wilN9ENjJtULutuCUG0ZRraWpPr+nyMpGHhZum2kNrt8Sw+XkTsHY61HS6E5UwkwWyeyMial8hwhFTWKocnwHA/Fl5IoJrTX3F2tVX/QZh7fyZ2ihi3oJvg5IZdBZZ7xdmt3fVrMjEj5rehda4LRnIez4mhkdNt2BpLtg7RqejQRqc7OwnIc/xzZ4eJ0zxSaYjtCWnZLKUS62Zu84vp3Z91xR36uuwpcDKBAibKySnY8DKbjoNuTqk9pgsxXaJjh+BnWifOjH
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(82310400014)(36860700004); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 07:53:51.6847 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 230b361a-5d0a-4303-03d8-08dc5f7cb04e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF00017097.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4317
X-Mailman-Approved-At: Thu, 18 Apr 2024 15:02:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kPQBRW/WsDzpQw+Slfaat0jhR/NvAIaZJO6mvgEJkv0=;
 b=VlxjiIfZ/+nqo5Rq3MjuavTd/m74e9WPYDAztvpSaeAX0DaOu/toSOPVpLfKQJ3vQNfuAxCjhM81lVLmr7DZA+Ix4fI/mUZU3JJj/rRd/0szWAC4WAhwo63VtVafT5JMe7kc0kc3F8ioek2qgN/GDGGk/XIrp3rzodSN8GN8qYFNrsRpvz7QROT/LzPSJ99tfwuTG9V+L6IxvGZ/PLmvPpTenMVrUDWeVF9zy7JWrr1fEefKtNek3irwn2/GfHvJiaJkCXC3OXngwtna9CfH6jdfWgqoDz4AVAJ7NOMDtwwzpUFI5MhE7qSEFtDB15OrUc+MolD+f8EeTaxsRJ0jPg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=VlxjiIfZ
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

--------------DKkSYYaJYzac0BLTtzmbKjL5
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 17/04/2024 17:20, Michal Swiatkowski wrote:
> +/**
> + * ice_devlink_port_fn_state_get - devlink handler for port state get
> + * @port: pointer to devlink port
> + * @state: admin configured state of the port
> + * @opstate: current port operational state
> + * @extack: extack for reporting error messages
> + *
> + * Gets port state.
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +static int
> +ice_devlink_port_fn_state_get(struct devlink_port *port,
> +			      enum devlink_port_fn_state *state,
> +			      enum devlink_port_fn_opstate *opstate,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct ice_dynamic_port *dyn_port;
> +
> +	dyn_port = ice_devlink_port_to_dyn(port);
> +
> +	if (dyn_port->active) {
> +		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
> +		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;


DEVLINK_PORT_FN_OPSTATE_ATTACHED means the SF is up/bind[1].
ice is using auxiliary bus for SFs, which means user can unbind it
via the auxiliary sysfs (/sys/bus/auxiliary/drivers/ice_sf/unbind).
In this case[2], you need to return:
*state = DEVLINK_PORT_FN_STATE_ACTIVE;
*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;


[1]
Documentation from include/uapi/linux/devlink.h:

* @DEVLINK_PORT_FN_OPSTATE_ATTACHED: Driver is attached to the function. 
<...>
* @DEVLINK_PORT_FN_OPSTATE_DETACHED: Driver is detached from the function.

> +	} else {
> +		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
> +		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
> +	}
> +
> +	return 0;
> +}
> +
--------------DKkSYYaJYzac0BLTtzmbKjL5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 17/04/2024 17:20, Michal Swiatkowski
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:20240417142028.2171-9-michal.swiatkowski@linux.intel.com">
      <pre>+/**
+ * ice_devlink_port_fn_state_get - devlink handler for port state get
+ * @port: pointer to devlink port
+ * @state: admin configured state of the port
+ * @opstate: current port operational state
+ * @extack: extack for reporting error messages
+ *
+ * Gets port state.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_fn_state_get(struct devlink_port *port,
+			      enum devlink_port_fn_state *state,
+			      enum devlink_port_fn_opstate *opstate,
+			      struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port;
+
+	dyn_port = ice_devlink_port_to_dyn(port);
+
+	if (dyn_port-&gt;active) {
+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;</pre>
    </blockquote>
    <p><br>
    </p>
    <pre>DEVLINK_PORT_FN_OPSTATE_ATTACHED means the SF is up/bind[1].
ice is using auxiliary bus for SFs, which means user can unbind it
via the auxiliary sysfs (/sys/bus/auxiliary/drivers/ice_sf/unbind).
In this case[2], you need to return:
*state = DEVLINK_PORT_FN_STATE_ACTIVE;
*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;


[1]
Documentation from include/uapi/linux/devlink.h:

<span class="cm"
style="box-sizing: inherit; vertical-align: top; color: slategray; font-style: italic;"> * @DEVLINK_PORT_FN_OPSTATE_ATTACHED: Driver is attached to the function.
&lt;...&gt;</span>
<span class="cm"
style="box-sizing: inherit; vertical-align: top; color: slategray; font-style: italic;"> * @DEVLINK_PORT_FN_OPSTATE_DETACHED: Driver is detached from the function.</span>

</pre>
    <p></p>
    <blockquote type="cite"
cite="mid:20240417142028.2171-9-michal.swiatkowski@linux.intel.com">
      <pre>
+	} else {
+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
+	}
+
+	return 0;
+}
+</pre>
    </blockquote>
  </body>
</html>

--------------DKkSYYaJYzac0BLTtzmbKjL5--
