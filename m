Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C60D8AA3EA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E02D40883;
	Thu, 18 Apr 2024 20:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 97tRRVtrw8lu; Thu, 18 Apr 2024 20:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9E5A407DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713471147;
	bh=ZayyFnvwpCAtps4AkHr1xdu9OW58rY8Zhxcr1tgJaH4=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dAagi/6qomMQLuda6Zr+OXYflr/7tqJ0ACKub2bERO1+Y3A1EW/1rouDxoaPTILeq
	 KolTGTyxLqESqXY7wal05rm2/VT7P+QTIsR1FBFuCwOi1QJwSlJLpJI8KCYlLVEXuL
	 VFPQXcE58+sBC47YQPPGyPTwf1VVIWVOT+0P7+p2fsuBF4sqtBM1B0fUAYnW1SxyHk
	 qLDhiNlmLCntbkSGYNh93PziweXBuREkgXtigCv3GHBgnPASXWztwKoFEp1/Pykwyk
	 a8C01CEouoBQB46Ohi2yj5TFndkiCtxJfalKwK19RLM7jnLqiOsGqDKeBHAhNgyy4l
	 yo+iI931ky7qQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9E5A407DD;
	Thu, 18 Apr 2024 20:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B63A61BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A1667820C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjzaEzItePFP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 20:12:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.56;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E4AB6820B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4AB6820B7
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2056.outbound.protection.outlook.com [40.107.94.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4AB6820B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:12:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JarT9Xw3w/N825GUGu7KZCivaMuMd/JU2ZO4ftg1IHGnc5F5Jn8vGfO2oqkOy1ZKOzPT/tq70QFAwkmgRsjWGW8Qoyh4xtnL1tqdL+XgInUwO3U3inlRblLdj+jEWlidD7zRfxu+Q8IL2gh0nxabtHpMj0eyNnltvAAFc/SDkkOGiwKE1sx1I+MU8uGml6TIXBTlMyO2h/OlwT/OqUQXnsgifKAaLjF4ERJBQBO06c5dR0us4Ke5jqg0IpCjUDwQSkeeBKqJ3WvG2C04VySy2kEd8S9pgUNYCgIjs1GwrHFWMbzPzc4rV5mWmZ39rj8m79Vw58csd/dcHMQwo4BNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZayyFnvwpCAtps4AkHr1xdu9OW58rY8Zhxcr1tgJaH4=;
 b=b2PVDZk9oiLCbOA01DkPFPVC/Gi4m3PKv+63blRyB0aSXhm5Ik7lgXNrubJlMW2Wpeq2NiPT5fmH91ufn80vB0MVvnM2qhmTQ1GKRN2XsyrfvjlRz7lG5hEF0IqKqpD0glasgtuEY1lZfB4IkqPexcekcE7ZCw/eQLdDQhicn2CQCwz1MwaKHSbTuxsZaHttBe9wnRepO0i+/Nv8AvGR0PpSfarGUGCCLbSQ6t/jPZ4BDSBrZKan0DXbvxj7Av+qm91au99wtdlf5itrT5WkZfmfsgpx10nqJrvSqKl/k+xZNFwfD1ZnQwHjdsEUwRyMBdFeOPG58DjWx9MA0+12Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY8PR12MB7434.namprd12.prod.outlook.com (2603:10b6:930:52::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Thu, 18 Apr
 2024 20:12:21 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 20:12:21 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-12-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 13:08:10 -0700
In-reply-to: <20240418052500.50678-12-mateusz.polchlopek@intel.com>
Message-ID: <874jbye8gs.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0038.prod.exchangelabs.com (2603:10b6:a03:94::15)
 To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY8PR12MB7434:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ab71aec-17de-41bc-a568-08dc5fe3dabd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: leb2nPUUVnHn7aYCSLe7AtEqTZ3PKrzbtkhTu5ieIM9QExXrPsR1WE/Bc8oSWU3pshndtxlcnauPAiYUnehQD17XDzi9zaZ8aZ9aXHbq3iNOg7hMJLSFWGENV8vgYpwbhWsh/D450+Dj3Et1mFPGGBNr0neCKYhSQFwfReVYeJxNlrjfP/eL9/PgGVvl1HgeL0oOOKXc4Kb4RMD86yyuuo3nVKi2DUKBJ4XvYPNNvAOumlf9ULT+PKoUdeZ9Dc4thpDQXmU26Po9cof+IC4a4I8C/1hWVbhzZFFgdjbtcffPYd2EcyN4lhnkcMKSCwPhGoAQP8RlPOz5skNIo+7ujlXBBE8gYqevgUxjGkjA5ew7fTOSfBx9K9RQf5wAoCyJgTt746+MosURyd41h3mb6CQ0UNdU3u1+5v30JB5fDU+uFkaKU+iwAlrIUD33IMzxItLBp8p0rDFmgbEheDB/0FE0FvShWh98Bb9KaWZzY+jRUcj0IX6r8sYxV4L0SBHZ3j0kUqCzM7Prlg3auaPjPnQU5GNxPBm4Id1SGNe23Tck9E+YXeFhSveBBtMVNbAtSVaVuISCfmY3DjuUfctvwT+QGtgrs0LEqCdj21fo3pF6EWZkv2ZCfcXFUEp5zYJZAwBfKPG7M4N36Gw0WwoyOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3g5huX5fTQ5xwwcL3wyAGgtwQWSb65c4nRRt1zH3BTIv4BrZgMgg4Pa1jMHZ?=
 =?us-ascii?Q?Ir2XMS3rKqBe7VIzSP7qj7rN7QFRcCrRDeA6m3kLmdQJT6FukpiIpQBL8cJU?=
 =?us-ascii?Q?x3q0pYY5G7axPwLOWVObielYjEG/uyEBpjUISlvyz4i5SK7joSTT0OCXbcCa?=
 =?us-ascii?Q?Y5gBPdiocsWrUXjca7tj83HUG2Q6CW0e4flFDg1PYvz2X3yhrbUZtaC8KfXa?=
 =?us-ascii?Q?pCBQ1TOrVQ188Gx7rI/5V+dkmRCeR8Cz2VM9m+CF/W/InGGdHImzIvc2+8Uu?=
 =?us-ascii?Q?fomfUaVKKZLUQ2sDICtyl4GHugE9nSSNMg8+KFJe2HdN9ZTySEjo02iMe5o+?=
 =?us-ascii?Q?4iQWvBK6qONyKu2+H41n35HyaDxLYCuImygRJDibwF5Us86hZB0EdM6vdn7t?=
 =?us-ascii?Q?fB7UdYgS9Zj0Nr0pqZ0myqHDJLgyYIxUX1pJ00mf7d0B128PK9S1hzhXcJpx?=
 =?us-ascii?Q?H+gqaoohKU00khNJV4pPiFshNUf4dT5MPv7HAOdvx9CScv6IIDfCnpw0rYjj?=
 =?us-ascii?Q?8rX9MCmOjI2eHf6Nz23Panb8vSDQzGZ0qRGx2eOqKbkJlsCDfXTi+HXKsfqc?=
 =?us-ascii?Q?0EbiuXKmEefzsjnWDu8azVj/62c7zuwmiiWjuvVO1CNKQ4rChgsUcsIblINO?=
 =?us-ascii?Q?Nllj5Y75Z7UC0ob5vu75cvjaUq0ol3S0ueEyIgQaA6l8M7YSQf9JqnA6iZb6?=
 =?us-ascii?Q?LfzH1AeWPPsYg606seveWu1ODDEeH2Tt0V/8TO8173rUZelRiCe2r/08eYTI?=
 =?us-ascii?Q?1vaLaxNBoQEEAIGlPJriXhQGTDmCUYPzI4MQtyDpvHMBb1zywzMxsGaiVrSj?=
 =?us-ascii?Q?+GMr7/UxWBwF+Xlncirc23TYsDN//XBTfVpIHkFT416TwaAg0V7x7xafGdiW?=
 =?us-ascii?Q?dMP5BsNKF5AeW81FQuRlIl0KABexrlcbt+ctZ48JL5s31873bALwxEscx19z?=
 =?us-ascii?Q?+LFRbW+XgfORaK1on2Vm4PMxqRu58T94Tw8JoEQytksp2adVF1GCwdrLtzHt?=
 =?us-ascii?Q?YtO0t6P7u3wtzKFK+hAJNgIJeCW3Gi/qAQlqmDbNeIE9vYJTK+tXu8xjFzO8?=
 =?us-ascii?Q?OFninQNnqCZpuCJDZSK1WCwR/Bnf/f5CL3eORT9iqOy7wWoZz72A9cA16EEx?=
 =?us-ascii?Q?ZjuQrekkgQta8I70Mp/+dDc7S+ukucMcA3wdDYc4mvlzefH6fkFbQGbqu908?=
 =?us-ascii?Q?0sq14AYcg8XsgPwgTqV7kvxSGUafL404H+F3lbVksk3rTq6t8rznfyKPA59y?=
 =?us-ascii?Q?TO4ajtLOqQZ9rWB8cUiRGEi6DcifRbObDbdZENZ31hJkNHbK4W7S6KvoReYL?=
 =?us-ascii?Q?8L6K4ttShwhQapEy5BtMyIUNG1fDgDeBsg3Bz9kjcpThHwTbprovgJ68DrxI?=
 =?us-ascii?Q?o5Zov0/ZW7UFp9IJNTvGrK4djbWBv4brM+21tZI5+X0rNX8lNiVzZnAQquPI?=
 =?us-ascii?Q?FGa9TEVuydiq7+vPPvEeU1ZsTg3Vw4sKLVxaNx6CSzkNoYGc3/+ZJrWOaCTb?=
 =?us-ascii?Q?Pg3h+bQ0hUJeruaEIxe4G4FWZ9ZuDej4exFdA0byjv7s6ltcmxGLv+NGhKf6?=
 =?us-ascii?Q?IIlcIHLxqJiSYnk5EUbgvUr2+wiXJ5X0qLL1Q/tSJP8GTVOeXszwCEa9xAPK?=
 =?us-ascii?Q?xA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ab71aec-17de-41bc-a568-08dc5fe3dabd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:12:21.2776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xY6ECY9froE4IoL5B0v42zc1iBAXIzkVtxVNflaiaDTqqyKBCSGiy68XSRERYqcTNQndgP0/Eq2g2PZSxnOlxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7434
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZayyFnvwpCAtps4AkHr1xdu9OW58rY8Zhxcr1tgJaH4=;
 b=nSlx3qUL+YKVaz0tMif9fZ412i7j2Z5BpY9kc6fTGzhQEW76ZPVGlQmpdQCS6m3r/PF7vEXHrvbbCzWYANb06t4q08fBWlxBWw82u/7s/FlRH6uEL8YHIKgusIIhht2Wsu9aFC2rU3bZJdWZBhSAov29ITvlaktc5g6bzQh4UU+ZG/zu/WV4QAU7ylGBVnGqUearUZ2rwbiEvDpFDbH1nPpK92Tzpdo9nSBYM8/dNoLwCyue3nlpnQeCPmNYlpfyhMgT04YpQQorSm42pAb6GQQVvdPGMo8UGZ0TNofQ+17IhV3HHhapgVKyViW5ILhn7jrBgpFkgEZGtH+BbKg7RQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=nSlx3qUL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 11/12] iavf: handle
 SIOCSHWTSTAMP and SIOCGHWTSTAMP
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Apr, 2024 01:24:59 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Add handlers for the SIOCSHWTSTAMP and SIOCGHWTSTAMP ioctls which allow
> userspace to request timestamp enablement for the device. This
> support allows standard Linux applications to request the timestamping
> desired.
>
> As with other devices that support timestamping all packets, the driver
> will upgrade any request for timestamping of a specific type of packet
> to HWTSTAMP_FILTER_ALL.
>
> The current configuration is stored, so that it can be retrieved by
> SIOCGHWTSTAMP.
>
> The Tx timestamps are not implemented yet so calling SIOCSHWTSTAMP for
> Tx path will end with EOPNOTSUPP error code.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
