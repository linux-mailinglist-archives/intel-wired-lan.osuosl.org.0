Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C64AB5142
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C5FB40595;
	Tue, 13 May 2025 10:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBh2urPxKUhp; Tue, 13 May 2025 10:12:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62D7F40543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747131120;
	bh=uj85kHzkLTrfNfs0Z7nvQmdmZ0KYcCopj5U3Lva5CNU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tfOpNk56YJznZER4IS+U63mPUPFmmjPZ8q2EJZndGa4gUcx891TWXGYORhXNsC+Kb
	 zKbuH2x2eeS1Y5wCz/ZjSj/FUEia+dZRb1+W/nkH+rDBgqp/EwX2x4XQhPv2f85Vha
	 2MrzxzmmPI+DakkhXShYywAbB7IPeOPrTHCXCvnbox1Eo/zouvo+xIY70CM2FJfrYF
	 oh4NSTNcG8hRWwezEhCVN468LMxQGkfbZDwnPAfwP9lQWWs6tAaRA+FHZkDJVi9D3L
	 gQGE3O/E/kNU+8ZnkF0j1450qsCTM6W5D8LTyKK4Rp3iAOeMuDlKcSmOFc+bGc/Fdn
	 3B0ZrbX78ynbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62D7F40543;
	Tue, 13 May 2025 10:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 69DD912A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 664C440525
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8R-hcW0oCrji for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:11:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.21.73;
 helo=eur05-vi1-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8603D40543
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8603D40543
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2073.outbound.protection.outlook.com [40.107.21.73])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8603D40543
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O3Gy+DyRjxlAW0U5Tnb36TSlBsRofz/dVvz0QmkbH8TpsBpngGQphA+FnbGuzT+G1pnw0CfrClDfOeXkA8wKmhZQO0lSHc63aBrLi0Dz95rHMkK36o4cjIsbjERCmUM6rsxpPStfZSJS4amGA5N4fZuNSeopn5ou2qBe056M4lkmsuBsdHfygGvs6MuTwINtD6L3eF/EMO9DQ1qE/Dmjou+8fsMRZyqngGkVqfr1MhBx00hU3EiR3iim4ZiauMUm3dC6WBb6uPm3sTuySjQv0jWAf95VztMfc9y347Ypxz2abyphCjmc0gVOFNIWLYNV1HDa5tTule68d2RXdbrGEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uj85kHzkLTrfNfs0Z7nvQmdmZ0KYcCopj5U3Lva5CNU=;
 b=WyHTXeTwLnskMxIZ4kdWUupAaSQfsKFksN+dHRrkWB/vsaQ+5Oft7Rb5mR9ZIQZNylViPAK2ofQ3JRK6bzohcRmVM+KJEQMfjFtaArQGtdLZ0ewYpD2KYFlSpYVU7nzndLyLJJj9VKyFFNkytPAeRoUv3n1n4Uiu6BCPWgwNXD5+7HxHQonU0H6crmLGUeVKsshooFkzVuxImvr9bkDFewiCmyzQ75MiL5sMu1l59ArfZQoYDzjo1djc6ueTY2IgfaTfDp5D71MNYUpE0LeoOxjYUzyD/h86aDTyA8xRjkwIu7Rxmo6NLKWlvykpH/zLf/XhOVh++pOOAFSgnDU7ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VE1PR04MB7342.eurprd04.prod.outlook.com (2603:10a6:800:1a0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Tue, 13 May
 2025 10:11:51 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 10:11:51 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Date: Tue, 13 May 2025 13:11:29 +0300
Message-ID: <20250513101132.328235-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513101132.328235-1-vladimir.oltean@nxp.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0502CA0019.eurprd05.prod.outlook.com
 (2603:10a6:803:1::32) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VE1PR04MB7342:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e4376dd-250d-4306-f50c-08dd9206949f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|52116014|366016|1800799024|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TskG6zy3GQRfCThVW4tckx3RKtghQ7F3kR7PzhaVe8faNDArZk4ikU/4Wrif?=
 =?us-ascii?Q?JUEwAmD29mW4/qA5mlwe7lXLXFIw7eowq/IgunqYHzUT74LLE8P5VTzn1JCa?=
 =?us-ascii?Q?aG/AA8eObI5Y4bcTyH0kZxUqG0fFTRihNaz/ehDi+4GbNW8sIsd2KFfitTMT?=
 =?us-ascii?Q?M35JsSDEya8+tiZXAe3axvCzd2EQ/v9wADufZvYD44xpCkmuNAzFZMwIF5IC?=
 =?us-ascii?Q?5LPoKMK6LsISdVqwzKasiV+wFIai5REkQ8x5fyETprSw405BXqAY2NKV50om?=
 =?us-ascii?Q?J3HBYNnd05xJHGk/LVxnevmhwuuGqIzSx5K5axyBhq4t4a4gcQ2ajt1CJGVi?=
 =?us-ascii?Q?Unwl7+kiCHi6qc8H5JxWWFASqnXpg5b1gnDfUF4PqO7gskHQzIrQ/TKiMrir?=
 =?us-ascii?Q?5kCacbCtlz8Y9ujUi+hn5jJqFs2HHpszc1KCTrpU97SkbQyHdzilFcBIAxik?=
 =?us-ascii?Q?ROh8j1Du4RAZTdEIanybZaYxpFjsbMgnWz0qyab7HxFwxFDfym1MLpzQ8ErJ?=
 =?us-ascii?Q?LMrcZ9i0Ru5qbwK+AnA0sf0h9J9QCLtJTnVEtTasbOA0zjmdFy+dlZW+Pfaq?=
 =?us-ascii?Q?jM8FQGUjUzDrwwhAqECy5vO9z4Zkc2aSUkw/pfoJht/xZwJ/1MwowUulV9eF?=
 =?us-ascii?Q?aa310RtbokwfqFRlbGFDX/q/ZZOlie+vtHqXt6AaWdEO4h3gUICf1embdbcK?=
 =?us-ascii?Q?owEGLgNbWGBFA+eA9ysAlk9tcA/d11e7kaMxUa/oCks1QO5zFdfdhA0Jx95s?=
 =?us-ascii?Q?IOq2Ogxz6nnruu8TFqJQSLKld1GaF9fng7aGO40Y2P4+De8S/tkPNErwOfA5?=
 =?us-ascii?Q?EGZ2mSBTVA8KshXJR2m1Nqsdpfyd03pAcrDdwgg36BCCo6Xi85Em4T3R/Yrk?=
 =?us-ascii?Q?ioD9tnKDCZ4UPLeJcO8ad03Ibhufm2ZTDmGpS91EfeHiHfxNw8zaT/ZhXXMt?=
 =?us-ascii?Q?xP8olNUUCQsNKhK9vg3gQAy8aWOUy39KRsrGUYOJfOtW0cfN98puB6/ToM4C?=
 =?us-ascii?Q?p4OM8t2SxXOM0vBcohkiDBvhJNLvD5Cc03pPVpWPyH8CULQSLNcTRO6Ov0wa?=
 =?us-ascii?Q?moYIbXhYDe4Ut1LkwyDFMTV6W1lDh2EZiLAAdXUi/ns2KXVJ1XN3iBuy8ECq?=
 =?us-ascii?Q?ClqNy43o1y1xlrKCmmhOkvDJ3XbWwaal+WwRBlkTR9OGm+IHkgkLOGlRkYS2?=
 =?us-ascii?Q?j4PS+25k0VxgH0PpTqhppRgrnCPmQrmCA+SW0zYiEOBhqCjGlP9/xguj3seN?=
 =?us-ascii?Q?hL5f5rdxyHEDkG+nbsv0n13/zrvm7znleZYV+iTDUOIClNwnywQRRqQDgpd0?=
 =?us-ascii?Q?qINGs+Yb5XmWJqKEarfOLkM2SOdfGJRpr4tYMxz80WIxhvAzg1hI8UIWW5s7?=
 =?us-ascii?Q?IgU+AKNZAPF3FeQFUGCb2xgZKyzMoaMY4BaXrpgVTDMUJy4UCwrknZMFgQ/k?=
 =?us-ascii?Q?H24l5dJsHoCRrgy6H684HU8xgn/9Bw7QpakU+2fCCrN29MkCNqgjdg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AeyMYO+MdlX9kekplWnFyAcid52VzsGK5s3HVDqJ2TiNdKLhaSkZldURPgUZ?=
 =?us-ascii?Q?F1DFlDNRN4uD1A4NvjiKJDNYv3s8FyuTDfum2QFv6FsAgEebQpNyKTKWma13?=
 =?us-ascii?Q?h00dPkMQ3HwiqOKuZpBR8BUePBRK6nhj0O6lI2PZV8SaTUV4s/KE4aTng6GY?=
 =?us-ascii?Q?fpWEW5Fy5a4oNwgJSkYfrBiVNHhfMrw1B7h+LNtyqBAjtshbvJnQmX1ppPiv?=
 =?us-ascii?Q?nZ/zs29LMLQEkbHDCpYWOzuolf1MweTL6XPw2FfmVfzHRgrYZXFReyAJYyVP?=
 =?us-ascii?Q?0d8CLD/IL6iM/Chn+687IWang2L+CeNBrHCrcR2VnO/ihlvoF+cemhSCfdDA?=
 =?us-ascii?Q?912naJASQYKiKT3Ptfi8GgtQEWx7WRdayqjpRxo3FN5xRKPGDzVidpSDtpuB?=
 =?us-ascii?Q?lrG+9Ed/biKMvgNL6mgd2YNgNwxGR7a/1S4nU2WH1DlGtO0/Hr5p7s+epA2r?=
 =?us-ascii?Q?+iK6ZYKovlXeDUAoitTKIqdurZoczg48+9q+JzrnKzAlmUEgZA6WEz/Ep2la?=
 =?us-ascii?Q?9HTYO0E9q98cYDGiC0fIxt/sQm2NDsF6k6DTv+D8hzIxKHN/9thufmzhvSHP?=
 =?us-ascii?Q?xObQ33i6m2SysRiiaGeg4EWOLhTfgAAfu1qwgnNf1V6C7H+DiONbL5o6WQcC?=
 =?us-ascii?Q?ltrCL1jd6blFRsS5D1qC5EXPM6ZvJ9AHgAqEf1pgbORY/sNykGCn5tPYXatI?=
 =?us-ascii?Q?qpcZtM5a+jJikWE/gEpFyxub+ulbBRSDhQp9y6qSbRMcGMk7vDQIaXFcW2If?=
 =?us-ascii?Q?Z9yZMzswpUlmJ7daRw/TMoiEtzvBI4LNd8EDoNpeUSVjPXUBw0EItGOgKVJW?=
 =?us-ascii?Q?7fRGkCe+YEcxlWKSWWI4d/3gX7dpnwQqHrbvVe2qjtEuewx7oMSjP8mF3cx5?=
 =?us-ascii?Q?+hFQENLZ0VNaAEdtFccbKgR+pnH4mOf6dMA3400rv8IArrHH3r55ZsK0jQvT?=
 =?us-ascii?Q?6kMic0X6acOTeLNPPDscptT+g5Pvb22JxpKBaJNVpP7obuZS/S8dRrsxTOm8?=
 =?us-ascii?Q?B1EkT1Tm/3Wv1PJAuf/q8uTIljJ9iWrNCCc+fJwTYSuacikmxctRN1zZfPn7?=
 =?us-ascii?Q?V3K1g9KjTO+2oTF9pRJgZfxpZOD45/owyD5KO8Ck98kZhxTvCtBQexWSULz7?=
 =?us-ascii?Q?fgkflvlI5wfqPeDb0oH7d2gEJNSMm0cpggaCNM0ROppwu9TbRC0hp3x2bRiR?=
 =?us-ascii?Q?5cai83Z8Hv9TmrF+hHmzj5oDxkjVQmErATI9Yu8+zWxJxrgXo1bbOc+x8cbF?=
 =?us-ascii?Q?tKAIvlfXcOsdQBINIkiaGkIQ9FYeXK1+5ZmvIbfKwSRYkK6HZXclnVXXEEj7?=
 =?us-ascii?Q?UDNVPMTCQLNdbEzqUGjans571DnV4vuJ33Sbt0+XMoag4hJ1XS2hDQA6H1/e?=
 =?us-ascii?Q?zaRRIWXQFGZ0kfsYojMdYRy1UU0Elp+ty0aCsFZPPxK0gTvtN6K1KWr1xWMX?=
 =?us-ascii?Q?xy29+UBMKAgjiy9ZNlMuHoPS6JrB1fmeKInWUX1Aj2LVSkrTzk+lUww3MwR7?=
 =?us-ascii?Q?kPIPpNbHGKfDalsgNt4khHFIRPHLfQP8bJDnd0IrugR4+wYpKtrJYdYfYNee?=
 =?us-ascii?Q?TTL7DmshN1fytGkfAK/RucoKestB9LM2mVbGufyB7M8i4dYogoWTPgVPYhct?=
 =?us-ascii?Q?nw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e4376dd-250d-4306-f50c-08dd9206949f
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 10:11:51.8868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0JiCcSw8Hd7N3WdE31CT+jIAS80nDxvf4z8sv2gWmVmIR4UPPPhdzWYx4ql/XAXK008TMRGWDCvU65C7RFxelg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7342
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uj85kHzkLTrfNfs0Z7nvQmdmZ0KYcCopj5U3Lva5CNU=;
 b=MgPQ6qXthlGqR709t98ic8sM//FtFY1Wof/rfoFcz/flYcHYO5yt1TDrd8Hw4ZTIRc8Np0w4nt/kiO+6swQyiJ1su3iS638HA3hJc1iRGJYkqYX6ssUOJ0Sb6WQlqeiGik/NOq318L6/doyavkaRvUQRJ/N6mw3jEXuY/VQPVu2GQYtjIOMYUlJxAVlvEjXuJldmxLXE5GbR/X4teTPmIUgWPtchx+CputGT5q5TLqLPCN6gDFSy257vRjskEX3ZzNs4FGr4jBxE1XUi9sTtGoq9XmfQoLz4j6WoiiuX/eTUhq0kTV8Z5cV/klQrNUR00q9VyFp3K/EDLyrBo85S5w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=MgPQ6qXt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH iwl-next 2/5] igc: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

New timestamping API was introduced in commit 66f7223039c0 ("net: add
NDOs for configuring hardware timestamping") from kernel v6.6.

It is time to convert the Intel igc driver to the new API, so that
timestamping configuration can be removed from the ndo_eth_ioctl() path
completely.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  9 ++++--
 drivers/net/ethernet/intel/igc/igc_main.c | 21 ++-----------
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 36 +++++++++++------------
 3 files changed, 25 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 859a15e4ccba..3b61b3447c52 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -313,7 +313,7 @@ struct igc_adapter {
 	 */
 	spinlock_t ptp_tx_lock;
 	struct igc_tx_timestamp_request tx_tstamp[IGC_MAX_TX_TSTAMP_REGS];
-	struct hwtstamp_config tstamp_config;
+	struct kernel_hwtstamp_config tstamp_config;
 	unsigned int ptp_flags;
 	/* System time value lock */
 	spinlock_t tmreg_lock;
@@ -752,8 +752,11 @@ void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
 void igc_ptp_stop(struct igc_adapter *adapter);
 ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, __le32 *buf);
-int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
-int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
+int igc_ptp_hwtstamp_get(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config);
+int igc_ptp_hwtstamp_set(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config,
+			 struct netlink_ext_ack *extack);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
 void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
 void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27575a1e1777..698d5ca64a33 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6294,24 +6294,6 @@ int igc_close(struct net_device *netdev)
 	return 0;
 }
 
-/**
- * igc_ioctl - Access the hwtstamp interface
- * @netdev: network interface device structure
- * @ifr: interface request data
- * @cmd: ioctl command
- **/
-static int igc_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
-{
-	switch (cmd) {
-	case SIOCGHWTSTAMP:
-		return igc_ptp_get_ts_config(netdev, ifr);
-	case SIOCSHWTSTAMP:
-		return igc_ptp_set_ts_config(netdev, ifr);
-	default:
-		return -EOPNOTSUPP;
-	}
-}
-
 static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 				      bool enable)
 {
@@ -6940,12 +6922,13 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_fix_features	= igc_fix_features,
 	.ndo_set_features	= igc_set_features,
 	.ndo_features_check	= igc_features_check,
-	.ndo_eth_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
 	.ndo_bpf		= igc_bpf,
 	.ndo_xdp_xmit		= igc_xdp_xmit,
 	.ndo_xsk_wakeup		= igc_xsk_wakeup,
 	.ndo_get_tstamp		= igc_get_tstamp,
+	.ndo_hwtstamp_get	= igc_ptp_hwtstamp_get,
+	.ndo_hwtstamp_set	= igc_ptp_hwtstamp_set,
 };
 
 u32 igc_rd32(struct igc_hw *hw, u32 reg)
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index f4f5c28615d3..b7b46d863bee 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -626,7 +626,7 @@ static void igc_ptp_enable_tx_timestamp(struct igc_adapter *adapter)
  * Return: 0 in case of success, negative errno code otherwise.
  */
 static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
-				      struct hwtstamp_config *config)
+				      struct kernel_hwtstamp_config *config)
 {
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
@@ -853,48 +853,46 @@ void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter)
 }
 
 /**
- * igc_ptp_set_ts_config - set hardware time stamping config
+ * igc_ptp_hwtstamp_set - set hardware time stamping config
  * @netdev: network interface device structure
- * @ifr: interface request data
+ * @config: timestamping configuration structure
+ * @extack: netlink extended ack structure for error reporting
  *
  **/
-int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr)
+int igc_ptp_hwtstamp_set(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config,
+			 struct netlink_ext_ack *extack)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
-	struct hwtstamp_config config;
 	int err;
 
-	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
-		return -EFAULT;
-
-	err = igc_ptp_set_timestamp_mode(adapter, &config);
+	err = igc_ptp_set_timestamp_mode(adapter, config);
 	if (err)
 		return err;
 
 	/* save these settings for future reference */
-	memcpy(&adapter->tstamp_config, &config,
-	       sizeof(adapter->tstamp_config));
+	adapter->tstamp_config = *config;
 
-	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
-		-EFAULT : 0;
+	return 0;
 }
 
 /**
- * igc_ptp_get_ts_config - get hardware time stamping config
+ * igc_ptp_hwtstamp_get - get hardware time stamping config
  * @netdev: network interface device structure
- * @ifr: interface request data
+ * @config: timestamping configuration structure
  *
  * Get the hwtstamp_config settings to return to the user. Rather than attempt
  * to deconstruct the settings from the registers, just return a shadow copy
  * of the last known settings.
  **/
-int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
+int igc_ptp_hwtstamp_get(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
-	struct hwtstamp_config *config = &adapter->tstamp_config;
 
-	return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
-		-EFAULT : 0;
+	*config = adapter->tstamp_config;
+
+	return 0;
 }
 
 /* The two conditions below must be met for cross timestamping via
-- 
2.43.0

