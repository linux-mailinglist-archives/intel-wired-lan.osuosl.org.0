Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIZ2MPXjpGnDuwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 02:12:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E841D240F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 02:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8089082919;
	Mon,  2 Mar 2026 01:12:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASslkFE9kMg9; Mon,  2 Mar 2026 01:12:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 055D182AA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772413938;
	bh=TPEG8iv7klqOYCNyfrqicCXKjFtnwwmoDBZiODYwc8o=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=60l5ePxSTdVyKb2KdWmT6RGI7A9a4Rud7wmadnf+h2qz7fAb6pjqGEyn6N0gAv4AV
	 4zLGFRW7xWWt7WbbBioCqIPxEG8Egt/j8K/l0RMq9eIiYEG6nc5VxgHBg2uUNYDVdH
	 huRugCFjuGN2Nhe9jspX/giJe+AKpfU/FgOWXDKf8EXVFAdsINbLfC6jY/eoNmLMpM
	 qVS7BtVBSD8OHSC2HgrpFCom8mp2I/2E+HyXEAGIWYPKk8TYjBFffslo9cGckLdrVz
	 TdUe3QEGilpWV6QYkv7I5qgnS6xRltXHnOZxDn+ULHChFBf9R9huiecMwz0Z9MYmSF
	 vKtiArFY11ZhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 055D182AA2;
	Mon,  2 Mar 2026 01:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 74365231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 01:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6644060AE2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 01:12:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ro5GpjHvc-4V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 01:12:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.61.32;
 helo=dm1pr04cu001.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F02D60A95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F02D60A95
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11010032.outbound.protection.outlook.com [52.101.61.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F02D60A95
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 01:12:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aOUcT6ay0zZmoikQM0nSEVhaagaUSijmOAU7wp/2V9+tFpGezdSJUZqxBOhdjK5MBDJTFzsxvzZvzP2n/u4tVjdv5/jc4w7hjF278esdNjHK9mYeEVOV6ED9WZ6VFUVN3vAyJCMA38ps+6nhw30t0RyK3TeQIgYDGYek0kCP6ej/JGgfITuXVkgrRg3liCGxs6AKefb69VWeeJ/3FyjBFPlI0qS7ZbTparDc3X0tuiBAPVab1yNG8FK51NG1UHBU9hggXTBdYqsTFmgJzhBpJhpzz6DnJHswoiOlkbvPx0+6UUa6yzpmhsYHN+sKWw2+V+kvJNrUg511m3Rzv1Bq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPEG8iv7klqOYCNyfrqicCXKjFtnwwmoDBZiODYwc8o=;
 b=AVIVx61pTqXCIFJW15o/yWrIh7VDqJx1WJB5XHS3+GVtRvyg2YOaB9Yq/83K5FsckQCqPTIRT5sPzswf1dGc3+1UrG7rL4JIabxGVcEOndMEEImRgad73GupapqaOVWBroNrRGiMMxbOB6H/irawv3tDMhTaZsJWL7h1VE/FJQTxm3mzh4oTHeODOs0nR4SdWzZqityjKQoMsegTR6bzmRkR+2PVhcfFxj6b0sqHeL+QBftnIEJEtdUmgEkVLF4AdWIaSZMe0rH/3Uxd7zartM0njSva0Xpt6MCrt6B7/lj9Oj/J+RJ31HAJRio+rJ2KuiPYM1t+SIzf1P3lkJ9ZSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by PH8PR12MB7184.namprd12.prod.outlook.com (2603:10b6:510:227::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Mon, 2 Mar
 2026 01:12:12 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 01:12:12 +0000
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Airlie <airlied@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: Yury Norov <ynorov@nvidia.com>, Simon Horman <horms@kernel.org>,
 David Laight <david.laight.linux@gmail.com>
Date: Sun,  1 Mar 2026 20:11:58 -0500
Message-ID: <20260302011159.61778-5-ynorov@nvidia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260302011159.61778-1-ynorov@nvidia.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN0PR08CA0030.namprd08.prod.outlook.com
 (2603:10b6:408:142::9) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|PH8PR12MB7184:EE_
X-MS-Office365-Filtering-Correlation-Id: 602cc5b0-638f-4f06-698a-08de77f8bbee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7416014|921020; 
X-Microsoft-Antispam-Message-Info: Yr+uVYL7aR5hoozdQonGJz7pegC8qNcXYLHVYUScsoIiqa9/Jnsj2oG/MV3KB/dP39+CZNF2ml0DfU0I833nc7VAiMxUKmuIBEOBhgPzjh1t5gz6wmINCfXeGJiePEXJ41D6lGIY6nBAAyfRgVxkjpR9vI1mUKQASy+tszKW89j0hwXFF3eqvMJGX1rQt49tY4VhN9wnLwMptjIcsm81w7PSRQiyUyL3irKmCIt98OyUMkY0TTpWALebHH7/Gho+VzSDocwEFtY0ZolOPtPcVUDC0ZWJk04nEvVwaXsbtJMO7XbG8lv3yg0DWZuS2p1XHldfsQ+cCrxxuAxEPqecfJYPp34jHukEVdHWU4WgVV/2xvrUSAWUBB5xF/deQStyjcwyF2duvYhLhRlvRaqQWowiY1bHTnfTs1ZfdyvpwPUOhcnqcYdvcygKAAoNkvt7CPxtByorPrpzNRJ6kAr8/t17G2sl9Xi1UtaAnRmX7HNfInZ8twaXQmeyZtjRHu5Py51AQVA03oR0ouOzRDFKuN/+5ty5DPthW+BaKI8/hPpBRa/YXWj/yZIuNmt4qebbqvhJOvxF81b0HXqjmvKRMb1BE+KrW1wdNEOFrdhTSW45uJ1qgf+i0E9Xn4axOju401jUbRMYx+/DWc2Fesoy5m9iXqSy00vL5hs5T6xord/PU/vTZa6eT04umZvr8ZzAaVy3VILL2UfljioPal8HGeybc5m275OETz/QNbFTq3EaUd/NdDsPTf/gGxGX1p4QQwvjs9TBhO7Dv5G8oPrhFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7416014)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M6ORRpl9RB8yrtcPG2+pUQYAxw8doqxl32P5gQCapIV7Rq6N3JLprm/fcDP/?=
 =?us-ascii?Q?F09pLOAToB1ttatchSMIKhb2j0W0I9Jny9GeauxOU8riMEeGhoI/oR5gE7xH?=
 =?us-ascii?Q?aqhfQo3xzolTHUKRKfYhIssVEh75lDoYO8pP7P6qPqBw5bdjHLWJXwewn6YK?=
 =?us-ascii?Q?Nnu9IUwhApZHHcUpPPL7vP7Cmg5UDuV0U1ypK6ZrrAB0r50fwU3u4PX1kxiY?=
 =?us-ascii?Q?ApxuEr41AuOA9dbAfRv60frbriRNQrS56QwLBhTQnCUt+KPcQSlyURUyMHfA?=
 =?us-ascii?Q?Yh0pXa9zZlvJFkbGk4F865CzMm8TlqRhYbhzP0yUx86dz3AJpONVztzTH7zG?=
 =?us-ascii?Q?JJRKT2mQH9jhoRU1h7bZ4LSBy24GFN7vrXYN+5Y3FQgTU78epApoZEW4Hftj?=
 =?us-ascii?Q?lE0KfUCw71zUSK9pEKzIE7k3ulo7JstwiQqKpT+u01rNbaeq6OW55foGUKjZ?=
 =?us-ascii?Q?hrqv5Sm+hwMHgW31KBlPffhTv2Kri7uEqeVFLYQHgD33g/KclgTp5fMYR9q2?=
 =?us-ascii?Q?psGfsZucv4pPjkqRhP4FPm9HnHJ3cr2rDSbWRqce7Z2kM/CB4rOG8/ifxmde?=
 =?us-ascii?Q?EU3WlUs5mybewR7l+MNepUdlCiIf95480bbGvU8dBUvcDhRDFO0iMn3K/gLB?=
 =?us-ascii?Q?iZn0KFGDs+bdQdHSsbtLvqy6gR84sMDe+9PbrDMXRCEZOrFQgSyy1deUJsiH?=
 =?us-ascii?Q?kvw0MHPwA08X+DVfqPyFR8wn9mVsVTdyw40vOffdUgWUQiOdWaeGvoGUr7Sk?=
 =?us-ascii?Q?sVxXamXRV8R97FPAJicCh1X8aDdiDAI0sk9pT4/2FG78BoGj6J2t5eAjA2mb?=
 =?us-ascii?Q?83hvbjAooFZ2MhaJaw7OjGEN8y9l4voU1I7GsvF47qwgMCBPZ42HazLbBYT2?=
 =?us-ascii?Q?3q3XRLxbaerAEKWnKlcgdmvi8OAOXkK/Yr1OpWsuWh0oiosYGhcJ56AlR7JO?=
 =?us-ascii?Q?3QkGQOVrZyLGu197V/diHhdLQAnsrOBnG94oYHhay2Job3BdfvztKx5tVRB3?=
 =?us-ascii?Q?Ge1E3/uI0J1op415uhkWnuG0p87B1Zv2MElUI8nUFzb5tjptDpg4zZkQbfN4?=
 =?us-ascii?Q?KSF4W8bEpx7If7DJyqKbhQASjV/m6gmIL5+9U1C+VaXvr+0BYbJCrNkwCMH0?=
 =?us-ascii?Q?3pYQ14RJKxj9g3elsn8AbZy6BWHDl1fMhHVCwjKjw15nEsNsWMU7wsXYDHvZ?=
 =?us-ascii?Q?vvttzzUe2bZFOYkz95QeKB1BAlrFErQ1g1WlVhOGSgX2bXEyCSC3jXHfQaAg?=
 =?us-ascii?Q?eKgUyfgHKCKB8oE6HdmvnqMuswY95pSkiKNzfrNdfwQcBhamz3XLTNQsOZrP?=
 =?us-ascii?Q?8iwDD4r+UKEc2fiNdX1T62G7zeVijmSV5b+vh8YKkK6Uu1CsR+mwYWQBhG07?=
 =?us-ascii?Q?wXBT/5bVW31X6Fup+LxLBf8kNGG+3G7NsgdCLcZ9Rc9fUphcRrcw7OwPZmDE?=
 =?us-ascii?Q?gPoWOxWMhejgxOmyWpgtj2shGeun7cxqKeMI49GVvKGJaub+FzUv8E5hO7my?=
 =?us-ascii?Q?c/DV1lQtvAXffKsyeB++Jdvu5RfZSyG3OVA6ml25NgTY9V6jAvfjipaFE99X?=
 =?us-ascii?Q?IFr7SLbGnrf2589JhkYkUy57OflePB77oBo8Zq7TWFLBWbP80dYATegbLEY8?=
 =?us-ascii?Q?5Wn3IIk/vyY4cmd7g1sDLiQLIkMD4IT19AwToPGuUbN9Wv/Gzs0JPhwLZsIP?=
 =?us-ascii?Q?5ojphlC9ZzOj5LO7Q4D6EHusbEo2i8cgYuieDd77klogu4nlICbuyVGXsjzL?=
 =?us-ascii?Q?PWx9zQEHeYe+qPNfk3V61cRTxQCp3lnaGFOOKWGEFaIj20D1CMGy?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 602cc5b0-638f-4f06-698a-08de77f8bbee
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 01:12:12.2742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RkDlIQ5Tlc5t6wGlP05wcR1WQDHH6vFOmTZq9u8KwMrt3ItQBhTfJe7ZP22+LakE09AAN716YTO1OQ1DaBX0mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7184
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TPEG8iv7klqOYCNyfrqicCXKjFtnwwmoDBZiODYwc8o=;
 b=giAMZpApaiW5ixXaUdxJXj9mIquIkS5ns/mKDWQGCuzCsALLON2tScNOrE2JDi5ZRNtpZextwP4690InIIhIyadhRW3NWTgc9q1Pm2fqTRLiSKfyp41RFIHQ5xX/oWYf8zFYZmj9tY22RxHPk1UN0Bf0INcUKCH9NDa1Ysqqb6NEHXfwYKb8kJcw5Dt/0qzyEqiSgvtFp/l1zkWiosZQ/F+RTAIVM7Jnsp5RXRQiqAIvh+FqbedjSi4ckCYHSs7xcpDeLu5odXDSEG0PqOHaMqPaMxmHyEP7EJKljzV0G3TAiP1sGmZ887gj9GdKeRS3uMnTQrVVZbxkEZPEK8dEjg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=giAMZpAp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: [Intel-wired-lan] [PATCH v2 4/4] drm/xe: switch
 xe_pagefault_queue_init() to using bitmap_weighted_or()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
From: Yury Norov via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Yury Norov <ynorov@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:ynorov@nvidia.com,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,nvidia.com:mid,nvidia.com:email,nvidia.com:replyto];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[nvidia.com,kernel.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 60E841D240F
X-Rspamd-Action: no action

The function calls bitmap_or() immediately followed by bitmap_weight().
Switch to using the dedicated bitmap_weighted_or() and save one bitmap
traverse.

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/gpu/drm/xe/xe_pagefault.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
index 6bee53d6ffc3..c4ce3cfe2164 100644
--- a/drivers/gpu/drm/xe/xe_pagefault.c
+++ b/drivers/gpu/drm/xe/xe_pagefault.c
@@ -285,10 +285,9 @@ static int xe_pagefault_queue_init(struct xe_device *xe,
 		xe_dss_mask_t all_dss;
 		int num_dss, num_eus;
 
-		bitmap_or(all_dss, gt->fuse_topo.g_dss_mask,
+		num_dss = bitmap_weighted_or(all_dss, gt->fuse_topo.g_dss_mask,
 			  gt->fuse_topo.c_dss_mask, XE_MAX_DSS_FUSE_BITS);
 
-		num_dss = bitmap_weight(all_dss, XE_MAX_DSS_FUSE_BITS);
 		num_eus = bitmap_weight(gt->fuse_topo.eu_mask_per_dss,
 					XE_MAX_EU_FUSE_BITS) * num_dss;
 
-- 
2.43.0

